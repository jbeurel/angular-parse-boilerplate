gulp = require 'gulp'
gutil = require 'gulp-util'
concat = require 'gulp-concat'
coffee = require 'gulp-coffee'

gulp.task 'coffee', (done) ->
  gulp.src 'src/**/*.coffee'
  .pipe coffee
    bare: true
  .pipe concat 'app.js'
  .on 'error', gutil.log
  .pipe gulp.dest 'public/js/'
  .on 'end', done
  return
