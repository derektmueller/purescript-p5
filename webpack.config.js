const path = require('path');

const webpack = require('webpack');

const isWebpackDevServer = process.argv.some(a => path.basename(a) === 'webpack-dev-server');

const isWatch = process.argv.some(a => a === '--watch');

const plugins =
  isWebpackDevServer || !isWatch ? [] : [
    function(){
      this.plugin('done', function(stats){
        process.stderr.write(stats.toString('errors-only'));
      });
    }
  ]
;

const devServerPort = 4008;

module.exports = {
  devtool: 'cheap-module-inline-source-map',

  devServer: {
    contentBase: '.',
    port: devServerPort,
    stats: 'errors-only',
    hot: true,
    hotOnly: true
  },

  entry: {
    basic: './examples/basic/index.js',
    "structure-width-and-height": 
      './examples/structure-width-and-height/index.js',
    "hello-p5-simple-shapes": 
      './examples/hello-p5-simple-shapes/index.js',
    "l-systems": 
      './examples/l-systems/index.js',
    "frame-count": 
      './examples/frame-count/index.js'
  },

  output: {
    path: path.resolve(__dirname, 'dist'),
    pathinfo: true,
    filename: '[name].js',
    publicPath: `http://localhost:${devServerPort}/`,
  },

  module: {
    rules: [
      {
        test: /\.purs$/,
        use: [
          {
            loader: 'purs-loader',
            options: {
              src: [
                'bower_components/purescript-*/src/**/*.purs',
                'src/**/*.purs',
                'examples/**/*.purs',
              ],
              bundle: false,
              psc: 'psa',
              watch: isWebpackDevServer || isWatch,
              pscIde: true
            }
          }
        ]
      },
    ]
  },

  resolve: {
    modules: [ 'node_modules', 'bower_components' ],
    extensions: [ '.purs', '.js']
  },

  plugins: [
    new webpack.LoaderOptionsPlugin({
      debug: true
    }),
    new webpack.DllReferencePlugin({
      context: __dirname,
      manifest: require('./vendor-manifest.json')
    }),
    new webpack.HotModuleReplacementPlugin()
  ].concat(plugins)
};
