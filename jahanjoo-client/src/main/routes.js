'use strict';

app.config(function($stateProvider, $urlRouterProvider) {
  $urlRouterProvider.otherwise('/app/welcome');
  $stateProvider.state('app', {
    url: '/app',
    views: {
      'Header': {
        templateUrl: '/main/view.header.html',
        controller : 'HeaderController'
      },
      'Body': {
        templateUrl: '/main/view.app.html',
        controller : 'ApplicationController'
      },
    }
  }).state('app.welcome', {
    url: '/welcome',
    templateUrl: '/main/view.body.html',
  }).state('app.explorer', {
    url: '/explorer',
    templateUrl: '/main/view.explorer.html',
    controller: 'ExplorerController'
  }).state('app.gs', {
    url: '/gs',
    templateUrl: '/main/view.gettingstart.html',
  });
});
