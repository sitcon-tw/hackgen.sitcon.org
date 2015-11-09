
var gulp = require('gulp');
var browsersSync = require('browser-sync');

var config = require('./_config.js')

gulp.task('debug' , ['default'] , function(){
	var reload = browsersSync.reload;
	browsersSync({
		server: {
      	baseDir: './build/'
      }
	});

	gulp.watch( config.sass.watch ,['scss-debug',reload]);
	gulp.watch( config.image.watch ,['image',reload]);
	gulp.watch( config.js.watch ,['js',reload]);
	gulp.watch( config.html.watch ,['html',reload] );
});
