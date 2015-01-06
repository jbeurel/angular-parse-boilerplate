less = require('gulp-less');
concat = require 'gulp-concat'

gulp.task 'less', (done) ->
  gulp.src 'src-public/styles/*.less'
  .pipe less()
  .pipe concat 'app.css'
  .pipe gulp.dest 'public/css'
  .on 'end', done
  return
