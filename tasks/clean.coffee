gulp = require 'gulp'
gutil = require 'gulp-util'
clean = require 'gulp-clean'

gulp.task 'clean', (done) ->
  gulp.src ['public', 'cloud'], read: false
    .pipe clean()
    .on 'error', gutil.log
    .on 'end', done
  return
