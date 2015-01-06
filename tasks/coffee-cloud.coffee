gulp = require 'gulp'
gutil = require 'gulp-util'
coffee = require 'gulp-coffee'

gulp.task 'coffee-cloud', (done) ->
  gulp.src 'src-cloud/*.coffee'
  .pipe coffee
    bare: true
  .on 'error', gutil.log
  .pipe gulp.dest 'cloud'
  .on 'end', done
  return
