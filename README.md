# purescript-p5

p5.js bindings for PureScript

*Disclaimer: This project has just been started and the API is still very unstable.*

## Documentation

Module documentation is [published on Pursuit](https://pursuit.purescript.org/packages/purescript-p5).

purescript-p5 implements a subset of the p5.js API (see [Project Status](#project-status)).

## Installation

```
bower install purescript-p5
```

This library depends on p5.js. This dependency may be satisfied by installing the NPM [p5.js package](https://www.npmjs.com/package/p5).

```
npm install p5 --save
```

## Running the examples

The examples use the webpack DLLPlugin to improve build performance. To run the examples, first build the dll bundle with:

```
npm run webpack:dll
```

This creates a separate webpack bundle for dependencies so that they don't need to be regenerated each time the app is changed.

To start webpack dev server, run:

```
npm run webpack:server
```

With webpack dev server running, examples can be viewed in a browser by visiting ```localhost:4008/examples/path-to-example```.

## Project Status

Completed:
  * wrappers for most methods defined on the p5 class

TODO:
  * generate methods for classes other than p5 (e.g. p5.Vector, p5.Image)
  * create easier-to-use interfaces for functions with numeric suffixes
  * use Reader monad to implicitly pass the p5 argument

## References

Many of the examples are based on the p5.js examples on the [p5.js reference site](https://p5js.org/examples/), and are licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).

