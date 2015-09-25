app
/**
 * 
 */
.controller('ProfileController', function($scope, $usr, $notify) {
  
  /**
   * Gets user account data and user profile
   */
  $usr.session().then(function(){
    return $usr.$profile.session()
  }, function(res){
    $notify.error('user ins not login.',res);
  }).then(function(){
    $scope.profile = $usr.$profile.data;
  }, function(res){
    $notify.error('fail to get user profile.',res);
  });

  /**
   * update profile attributes
   */
  $scope.updateProfile = function(key, value) {
    $usr.$profile.update(key, value).then(function(profile) {
      $notify.info('user profile updated.');
    }, function(res){
      $notify.info('fail to update user profile.', res);
    });
  }
});
