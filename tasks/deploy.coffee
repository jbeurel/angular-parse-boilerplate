gulp = require 'gulp'
deploy = require 'gulp-gh-pages'

gulp.task 'deploy', (done) ->
  gulp.src './dist/**/*'
  .pipe deploy()
  .on 'end', done
  return