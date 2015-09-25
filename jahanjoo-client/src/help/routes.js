'use strict';

app.config(function($stateProvider, $urlRouterProvider) {
  $urlRouterProvider.otherwise('/app/welcome');
  $stateProvider.state('app', {
    url: '/app',
    views: {
      "Header": {
        templateUrl: '/main/view.header.html',
        controller: 'HeaderController'
      },
      "Body": {
        templateUrl: '/help/view.app.html',
        controller: 'ApplicationController',
      }
    }
  }).state('app.welcome', {
    url: '/welcome',
    templateUrl: '/help/view.welcome.html',
    controller: 'WikiController'
  }).state('app.page', {
    url: '/page/{name}',
    templateUrl: '/help/view.page.html',
    controller: 'WikiController'
  });
});