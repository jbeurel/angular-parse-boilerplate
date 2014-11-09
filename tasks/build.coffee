gulp = require 'gulp'
runSequence = require 'run-sequence'

gulp.task 'default', ['build']

gulp.task 'build', (done) ->
  runSequence 'clean', 'compile', done
