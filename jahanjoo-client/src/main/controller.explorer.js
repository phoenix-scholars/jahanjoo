'use strict';
/**
 * کنترل نوار پایین صفحه
 */
app
/**
 * 
 */
.controller('ExplorerController', function($scope, $jlocation, $notify, $usr,
        PaginatorParameter) {

  $scope.pageSize = 10;
  $scope.config = {
    userLocation: false,
    locationDetail: false,
    locationOperator: false
  }
  // 0- ready
  // 1- loading
  // 2- error
  $scope.pageState = 1;
  $scope.pagination = {
    'page_number': 1,
    'current_page': 1
  };
  $scope.searchText = '';
  $usr.session().then(function(user) {
    $scope.user = user;
    $scope.newSearch();
  }, function() {
    $scope.pageState = 2;
  });

  $scope.doSearch = function(pagParam) {
    $scope.pageState = 1;
    if ($scope.config.userLocation == true) {
      pagParam.setFilter('reporter', $scope.user.id);
    }
    $jlocation.locations(pagParam).then(function($page) {
      $scope.pagination = $page;
      $scope.pageState = 0;
    }, function() {
      $scope.pageState = 2;
    });
  }
  /*
   * جستجو بر اساس یک متن وارد شده را انجام می‌دهد.
   */
  $scope.search = function(size, page, searchText) {
    var param = new PaginatorParameter();
    param.setSize(size).setPage(page).setQuery(searchText);
    $scope.doSearch(param);
  };
  /**
   * یک جستجوی جدید انجام می‌دهد.
   */
  $scope.newSearch = function(searchText) {
    var param = new PaginatorParameter({});
    param.setSize($scope.pageSize).setPage(1).setQuery(searchText);
    $scope.doSearch(param);
  }
  /*
   * صفحه جاری را تغییر می‌دهد
   */
  $scope.changePage = function(page) {
    $scope.search($scope.pageSize, page, $scope.searchText);
  }

  $scope.removeLocation = function(location) {
    location.remove().then(function() {
      $notify.info('the location is removed');
      $scope.newSearch($scope.searchTest);
    }, function() {
      $notify.error('fail to remove the location');
    });
  }

  $scope.addLocation = function(location_title, location_description,
          location_longitude, location_latitude) {
    $jlocation.add({
      name: location_title,
      description: location_description,
      latitude: location_longitude,
      longitude: location_latitude
    }).then(function() {
      $notify.info('the location is added');
      $scope.newSearch($scope.searchTest);
    }, function() {
      $notify.error('fail to add the location');
    });
  }
});