const path = require('path');

module.exports = {
    mode: "development",
    entry: './src/main.ts',
    devtool: 'inline-source-map',
    module: {
	rules: [
	    {
		test: /\.tsx?$/,
		use: 'ts-loader',
		exclude: /node_modules/
	    },
	    {
		test: /\.scss?$/,
		use: [
                    "style-loader",
                    "css-loader",
                    "sass-loader"
		]
            }
	]
    },
    resolve: {
	extensions: [ '.tsx', '.ts', '.js', '.scss' ]
    },
    output: {
	filename: 'index.js',
	path: path.resolve(__dirname, 'dist')
    }
};
