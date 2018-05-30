
//core
let path = require('path');

let typedoc = require('gulp-typedoc');
let gulp = require('gulp');

let sumanRoot = path.resolve(__dirname + '/../suman');

gulp.task('typedoc', function() {
  return gulp
  .src([path.resolve(`${sumanRoot}/**/*.ts`)])
  .pipe(typedoc({
    module: 'commonjs',
    target: 'es5',
    ignore: '**/node_modules/**',
    exclude: '**/node_modules/**',
    out: 'typedocs/',
    ignoreCompilerErrors: true,
    version: true,
    name: 'The SumanJS Documentation'
  }));
});
