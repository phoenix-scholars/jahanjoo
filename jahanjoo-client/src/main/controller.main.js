/*
 * 
 */
app
/**
 * 
 */
.controller('MainController', function($scope, $tenant, $usr, $notify, $act) {
  /**
   * تنظیم تعیین شده را بر اساس نرم افزاری جاری تعیین می‌کند. در صورتی که خطای
   * روی دهد و یا اینکه نرم افزار اصلی تعیین نشده باشد مقدار پیش فرض به عنوان
   * نتیجه برگردانده می‌شود.
   */
  $scope.config = function($key, $default) {
    return $default;
  };

  /**
   * دستور فراخوانی شده را در سیستم اجرا می‌کند. علاوه بر دستور می‌توان
   * پارامترهای مورد نیاز برای اجرای دستور را نیز به این فراخوانی ارسال کرد.
   */
  $scope.exec = function(command) {
    var args = Array.prototype.slice.call(arguments);
    args[0] = command.id;
    $act.execute.apply($act, args).then(function() {

    }, function(ex) {
      $notify.error('fail to execute command', ex);
    });
  }

  /*
   * بارگذاری نرم‌افزار
   */
  $scope.app = {
    /**
     * حالتهای متفاوتی که نرم افزار داره رو تعیین می‌کنه. این حالت‌های می‌تونه
     * یکی از مقدارهای زیر باشه:
     * <ul>
     * <li>0- loading</li>
     * <li>1- loaded</li>
     * <li>2- offline</li>
     * <li>3- error</li>
     * <li>4- warning</li>
     * </ul>
     */
    state: 0,
    preloading: {
      progress: 0,
      title: 'main controller',
      message: 'loading main controller.'
    }
  };
  // 1- load user and application
  $usr.session().then(function() {
    $scope.app.preloading = {
      progress: 30,
      title: 'loading user date',
      message: 'try to get user data from the server'
    }
    return $tenant.session();
  }, function(error) {
    // fail to load the user
  }).then(function() {
    $scope.app.preloading = {
      progress: 70,
      title: 'loading saas application',
      message: 'try to get default saas application data'
    }
  }, function(error) {
    // fail to load the application
  }).finally(function(){
    $scope.app.state = 1;
  });
});