const path = require('path');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');

// https://webpack.js.org/configuration/
module.exports = {
    entry: {
        main: path.join(__dirname, 'js', 'main'),
    },
    output: {
        path: path.resolve(__dirname, '_site', 'js'),
        filename: '[name]-bundle.js',
    },
    resolve: {
        extensions: ['.json', '.js', '.jsx'],
        modules: ['node_modules'],
    },
    optimization: {
        minimizer: [
            new UglifyJsPlugin({
                cache: true,
                parallel: true,
                sourceMap: true, // set to true if you want JS source maps
            }),
        ],
    },
    module: {
        rules: [
            { test: /\.js$/, exclude: /node_modules/, loader: 'babel-loader' },
            {
                test: /\.scss$/,
                use: [
                    {
                        loader: 'css-loader',
                        options: {
                            importLoaders: 1, // https://webpack.js.org/loaders/postcss-loader/
                        },
                    },
                    {
                        loader: require.resolve('postcss-loader'),
                        options: {
                            postcssOptions: {
                                plugins: () => [
                                    resolve('cssnano')(), // https://cssnano.co/
                                ]
                            },
                        },
                    },
                    {
                        loader: 'sass-loader',
                        options: {},
                    },
                ],
            },
        ],
    },
};