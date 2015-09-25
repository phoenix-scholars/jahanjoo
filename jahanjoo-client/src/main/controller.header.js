'use strict';
/**
 * کنترل نوار پایین صفحه
 */
app
/**
 * 
 */
.controller('HeaderController', function($scope, $window, $menu, $notify) {

  /**
   * صفحه راهنما را با توجه به نام صفحه باز می‌کند.
   */
  $scope.openHelp = function(pageName) {
    if (pageName) {
      return $window.location.href = '/page/help.html#/app/page/' + pageName;
    } else {
      return $window.location.href = '/page/help.html#/app/welcome';
    }
  }
  
  $menu.menu('main').then(function(menu){
    $scope.navbar = menu;
  });
  $menu.menu('sidebar').then(function(menu){
    $scope.sidebar = menu;
  });
  
});