var jahanjooModule = angular.module('pluf.jahanjoo', ['pluf']);

/**
 * امکانات اولیه برای مکان‌یابی را در اختیار کاربران قرار می‌دهد.
 */
jahanjooModule
/**
 * 
 */
.factory('$jlocation', function($rootScope, $http, $q, $window, User,
        PaginatorPage, PException) {
  var manager = {
    /**
     * فهرستی از تمام مکان‌های اضافه شده در سیستم.
     */
    locations: function(paginatorParam) {
      return $http({
        method: 'GET',
        url: '/api/jayab/location/list',
        params: paginatorParam.getParameter(),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded'
        }
      }).then(function(res) {
        var page = new PaginatorPage(res.data);
        return page;
      }, function(res) {
        throw new PException('fail to sarch locations.', res.data);
      });
    },
    addLocation: function(title, description, lat, long) {
      return $http({
        method: 'POST',
        url: '/api/jayab/location/create',
        params: {
          name: title,
          description: description,
          latitude: lat,
          longitude: long,
        },
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded'
        }
      }).then(function(res) {
        return res.data;
      }, function(res) {
        throw new PException('fail to add location.', res.data);
      });
    },
    removeLocation: function(locationId) {
      return $http({
        method: 'DELETE',
        url: '/api/jayab/location/' + locationId,
      }).then(function(res) {
        deferred.resolve(res.data);
      }, function(res) {
        throw new PException('fail to delete location.', res.data);
      });
    }
  };
  return manager;
});
