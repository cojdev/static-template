const path = require('path');

const src = './src/js';
const dist = './public/js';

module.exports = {
  entry: `${src}/index.js`,

  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, dist),
    publicPath: dist,
  },

  devtool: 'source-map',

  module: {
    rules: [{
      test: /\.jsx?$/,
      exclude: /node_modules/,
      use: {
        loader: 'babel-loader',
      },
    }],
  },

  resolve: {
    extensions: ['.js', '.jsx'],
  },
};
