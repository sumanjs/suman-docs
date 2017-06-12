
//core
let path = require('path');

let typedoc = require('gulp-typedoc');
let gulp = require('gulp');

let sumanRoot = path.resolve(__dirname + '/../suman');

gulp.task('typedoc', function() {
  return gulp
  .src(['src/**/*.ts'])
  .pipe(typedoc({
    module: 'commonjs',
    target: 'es5',
    out: 'docs/',
    name: 'My project title'
  }));
});
