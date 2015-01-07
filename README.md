Angularjs Parse.com Boilerplate  [ ![Codeship Status for jbeurel/rider-ranking](https://codeship.com/projects/353a5570-49bb-0132-890d-62ad83b9cfff/status?branch=master)](https://codeship.com/projects/55198)
===============================

[Demo :-)](http://ng-parse-boilerplate.parseapp.com)

![Demo Screenshot](./doc/angular-parse-boilerplate.png)

# Technologies

## Languages
- [Coffeescript](http://coffeescript.org/)
- [Jade](http://jade-lang.com/)
- [Less](http://www.lesscss.org/)

## Framework|Tools
- [AngularJS](http://angularjs.org/)
- [Bootstrap3](http://getbootstrap.com/)
- [Gulp](http://gulpjs.com/)
- Livereload

# Requirements

- [NodeJS](http://nodejs.org/)

# Installation

  `npm install`

# Configuration

Edit the [config/global.json](./config/global.json) file to write the configuration of your Parse.com project in order to use the Parse's CLI.
Edit the [public-src/app.coffee](./public-src/app.coffee) file to replace the ParseProvider keys.

Enjoy!

# Development server

  `npm run-script watch`

Access to the application at this address: http://127.0.0.1:8008
The livereload update your browser each time you change source files.

The Frontend source files are into the [src-public](./src-public) directory and compile to the public directory.
The Backend source files are into the [src-cloud](./src-cloud) directory and compile to the cloud directory.

# Deploy on Parse Cloud

  `npm run-script deploy-parse`

# Deploy on Github Pages (alternative)

You can also deploy the frontend on the Github Pages of your repo by launching this command:

  `npm run-script deploy-github`
