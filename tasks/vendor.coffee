gulp = require 'gulp'
gutil = require 'gulp-util'
concat = require 'gulp-concat'

gulp.task 'vendor', (done) ->
  gulp.src [
    'bower_components/angular/angular.min.js'
    'bower_components/angular-resource/angular-resource.min.js'
    'bower_components/angular-ui-router/release/angular-ui-router.min.js'
    'bower_components/angular-translate/angular-translate.min.js'
    'bower_components/angular-translate-loader-static-files/angular-translate-loader-static-files.min.js'
    'bower_components/angular-ui-bootstrap-bower/ui-bootstrap-tpls.min.js'
    'bower_components/angular-parse/angular-parse.js'
    'bower_components/angulartics/src/angulartics.js'
    'bower_components/angulartics/src/angulartics-ga.js'
    'bower_components/moment/moment.js'
    'bower_components/lodash/dist/lodash.js'
  ]
  .pipe(concat('vendor.js'))
  .on 'error', gutil.log
  .pipe gulp.dest('public/js')
  .on 'end', done
  return
