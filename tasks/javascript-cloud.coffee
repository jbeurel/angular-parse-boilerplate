gulp = require 'gulp'
gutil = require 'gulp-util'

gulp.task 'javascript-cloud', (done) ->
  gulp.src 'src-cloud/*.js'
  .on 'error', gutil.log
  .pipe gulp.dest 'cloud'
  .on 'end', done
  return
