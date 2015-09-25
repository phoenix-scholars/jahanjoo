'use strict';
/**
 * کنترل نوار پایین صفحه
 */
app
/**
 * 
 */
.controller('HeaderController', function($scope, $window, $menu, $notify) {

  $menu.menu('main').then(function(menu){
    $scope.navbar = menu;
  });
  $menu.menu('sidebar').then(function(menu){
    $scope.sidebar = menu;
  });
  
});