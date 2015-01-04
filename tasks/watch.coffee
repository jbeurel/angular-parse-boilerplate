gulp = require 'gulp'
webserver = require 'gulp-webserver'
runSequence = require 'run-sequence'

gulp.task 'webserver', ['build'], ->
  gulp.src 'public'
  .pipe webserver
      livereload: true
      fallback: 'index.html'
      host: '127.0.0.1'
      port: 8008

gulp.task 'watch', ->
  runSequence 'webserver', ->
    gulp.watch 'src/assets/**/*', ['assets']
    gulp.watch 'src/**/*.coffee', ['coffee']
    gulp.watch 'src/index.jade', ['jade-index']
    gulp.watch 'src/**/*.jade', ['jade']
    gulp.watch 'src/styles/*.less', ['less']
    gulp.watch 'src/translations/*.yml', ['translations']
    gulp.watch 'vendor', ['vendor']
