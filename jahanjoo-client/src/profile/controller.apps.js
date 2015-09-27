'use strict';

app.controller('AppsController', function($scope, $tenant, $usr, $notify,
        PaginatorParameter) {

  
    $scope.pageSize = 10;
    /**
     * <ul>
     * <li>0- loading</li>
     * <li>1- loaded</li>
     * <li>2- offline</li>
     * <li>3- error</li>
     * <li>4- warning</li>
     * </ul>
     */
    $scope.apps = {
      status: 0
    }

    $usr.session().then(function(){
      if($usr.isAnonymous()){
        $scope.status = 3;
        $scope.errorMessage = 'login to see applications';
        $notify.error($scope.errorMessage);
        return;
      }
      $scope.search();
    },function(e){
        $scope.status = 3;
        $scope.errorMessage = 'fail to get user info';
        $notify.error($scope.errorMessage, e);
    });
  /*
   * جستجو در نرم افزارهای را انجام می‌دهد.
   */
  $scope.search = function(searchText) {
    $scope.apps.status = 0;
    var $pag = new PaginatorParameter();
    $pag.setSize($scope.pageSize).setPage($scope.pageCurrent);
    if (searchText) $pag.setQuery(searchText);
    $tenant.list($pag).then(function(page) {
      $scope.pagination = page;
      $scope.apps.status = 1;
    }, function(e) {
      $scope.apps.status = 3;
      $scope.errorMessage = 'fail to load user apps'
      $notify.error($scope.errorMessag, e);
    });
  }

  $scope.changePage = function(page) {
    $scope.pageCurrent = page;
    $scope.search($scope.searchText);
  };
});
