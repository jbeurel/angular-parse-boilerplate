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
    gulp.watch 'src-public/assets/**/*', ['assets']
    gulp.watch 'src-public/**/*.coffee', ['coffee-public']
    gulp.watch 'src-cloud/**/*.coffee', ['coffee-cloud']
    gulp.watch 'src-public/index.jade', ['jade-index']
    gulp.watch 'src-public/**/*.jade', ['jade']
    gulp.watch 'src-public/styles/*.less', ['less']
    gulp.watch 'src-public/translations/*.yml', ['translations']
    gulp.watch 'vendor', ['vendor']
