
const fs = require('fs');
const filename = process.argv[2];

let contents = fs.readFileSync(filename).toString();

try {

const effects = contents
  .split('\n')
  .filter(l => l.match(/=|::/))
  .filter(l => !l.match(/foreign/))
  .reduce((acc, l) => {
    if(!acc[acc.length - 1]) {
      acc.push([]);
    } else if(acc[acc.length - 1].length < 2) {
      acc[acc.length - 1].push(l);
    } else {
      acc.push([l]);
    }

    return acc;
  }, [])
  .filter(([signature, body]) => 
    signature.match(/Effect Unit\)$/))
  .map(([signature, body]) => {
    const fnName = signature.match(/(\w+) ::/)[1];

    return [
      fnName,
      new RegExp(
        signature.replace(/\(/g, '\\(').replace(/\)/g, '\\)'), 'g'),
      new RegExp(
        body.replace(/\(/g, '\\(').replace(/\)/g, '\\)'), 'g'),
      signature
        .replace(/\(Effect Unit\)$/, 'P5M Unit')
        .replace(/:: P5 ->/, '::'),
      body
        .replace(new RegExp(`${fnName} p5`), fnName)
        .replace(/= /, '= do \n  p5 <- ask\n  ')
    ];
  });

effects.forEach(([, signature, body, newSignature, newBody]) => {
  contents = contents.replace(signature, newSignature);
  contents = contents.replace(body, newBody);
});

console.log(contents);

} catch(e) {
  console.log(`error parsing ${filename}`);
}
