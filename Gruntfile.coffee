module.exports = (grunt) ->

  grunt.initConfig
    clean:
      js: ['lib/**/*.js', '!lib/roll.pegjs']
      server: 'server.js'

    coffee:
      app:
        expand: true
        flatten: false
        cwd: 'src'
        src: ['**/*.coffee']
        dest: 'lib'
        ext: '.js'
    move:
      server:
        src: 'lib/server.js'
        dest: 'server.js'

  grunt.registerMultiTask 'move', 'Move File', ->
    mv = require 'mv'
    mv @data.src, @data.dest, (err)->
      console.log err

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-clean'

  grunt.registerTask 'default', ['clean', 'coffee', 'move']