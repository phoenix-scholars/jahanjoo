app
/**
 * 
 */
.config(function($stateProvider, $urlRouterProvider) {
  $urlRouterProvider.otherwise('/app/account');
  $stateProvider.state('app', {
    url: '/app',
    views: {
      "Header": {
        templateUrl: '/main/view.header.html',
        controller: 'HeaderController'
      },
      "Body" : {
        templateUrl: '/profile/view.app.html',
        controller: 'ApplicationController',
      }
    }
  }).state('app.account', {
    url: '/account',
    templateUrl: '/profile/view.account.html',
    controller: 'AccountController'
  }).state('app.profile', {
    url: '/profile',
    templateUrl: '/profile/view.profile.html',
    controller: 'ProfileController'
  }).state('app.apps', {
    url: '/apps',
    templateUrl: '/profile/view.apps.html',
    controller: 'AppsController'
  }).state('app.credential', {
    url: '/credential',
    templateUrl: '/profile/view.credential.html',
    controller: 'CredentialController'
  });
});
