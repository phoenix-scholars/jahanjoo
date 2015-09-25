app
/**
 * 
 */
.controller('AccountController', function($scope, $usr, $notify) {
  $scope.user = $usr.data;

  $scope.updateAccount = function(user, key, value) {
    $usr.update(key, value).then(function($user) {
      $notify.info('user property is updated.');
    }, function(error) {
      $notify.error('fail to change user property.')
    });
  };

  $scope.changePassword = function(user, user_password) {
    $usr.update('password', user_password).then(function($user) {
      // $scope.user[key] = value;
    });
  }
});
