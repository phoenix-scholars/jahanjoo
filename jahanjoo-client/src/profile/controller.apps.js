app
/**
 * 
 */
.controller('AppsController', function($scope, $tenant,
        PaginatorParameter) {
  /*
   * جستجو در نرم افزارهای را انجام می‌دهد.
   */
  $scope.search = function(searchText) {
    $scope.apps.status = 0;
    var $pag = new PaginatorParameter();
    $pag.setSize($scope.pageSize).setPage($scope.pageCurrent);
    if (searchText) $pag.setQuery(searchText);
    SaaSManager.searchUserApplication($pag).then(function(page) {
      $scope.pagination = page;
      $scope.apps.status = 1;
    }, function(error) {
      $scope.apps.status = 3;
      PNotify.error('fail to load user apps', error);
    });
  }

  $scope.changePage = function(page) {
    $scope.pageCurrent = page;
    $scope.search($scope.searchText);
  };

  // شنود آماده بودن نرم‌افزار
  $scope.$on('UserManager.User.Changed', function(event) {
    $scope.search();
  });
  
  $scope.loadAppsController = function(){
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
    
    // زمانی که نرم‌افزار آماده بود.
    if ($scope.isReady()) {
      $scope.search();
    }
  }

  //$scope.loadAppsController(); 
});
