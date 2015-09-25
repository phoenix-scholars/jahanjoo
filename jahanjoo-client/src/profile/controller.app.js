/**
 * کنترل اصلی سیستم
 */
app
/**
 * 
 */
.controller(
        'ApplicationController',
        function($scope, $window, $translate, $notify, $act, $usr,
                $menu) {
          /**
           * عملیات مورد نیاز برای ورود به سیستم را پیاده سازی می‌کند. برای
           * استفاده از این تابع باید مادال ورود را به نمایش اضافه کنید.
           */
          var actionLogin = {
            label: 'login',
            description: 'user login action',
            helpId: 'user.login',
            visible: function() {
              return $usr.isAnonymous();
            },
            action: function() {
              $('#loginModal').openModal();
            }
          };
          /*
           * اضافه کردن به منو بقل
           */
          $menu.add('sidebar', actionLogin).add('sidebar', {
            command: 'pluf.user.logout'
          }).add('sidebar',{
            label : 'help',
            command: 'pluf.saas.app.goto',
            params :['page/help'],
          });

          /*
           * اضافه کردن به منو اصلی
           */
          $menu.add('main', actionLogin).add('main', {
            command: 'pluf.user.logout'
          });

          // FIXME: maso, 2015: تمام سیستم‌های تولید گزارش به کاربر باید
          // در این قسمت اضافه شود.
          $notify.onError(function(msg, e) {
            // TODO
            $translate(msg).then(function(text) {
              Materialize.toast(text, 5000);
            }, function() {
              Materialize.toast(msg, 5000);
            });
          }).onWarning(function(msg) {
            // TODO
          }).onDebug(function() {
            console.debug(arguments);
          }).onInfo(function(msg) {
            $translate(msg).then(function(text) {
              Materialize.toast(text, 5000);
            }, function() {
              Materialize.toast(msg, 5000);
            });
          });
        })

/**
 * پایگاه داده مربوط به ترجمه را ایجاد می‌کند.
 */
/*
 * TODO:maso 1394: استفاده از کش سیستم.
 * 
 * این قسمت باید به صورت مستقل در یک پرونده ایجاد شود تا در نسخه نهای سمت کاربر
 * کش شود.
 */
.config(function($translateProvider) {
  // Our translations will go in here
  $translateProvider.translations('fa', {
    'register': 'ثبت نام',
    'login': 'ورود',
    'logout': 'خروج',
    'help' : 'راهنما',
    'profile': 'پروفایل',
  });
  $translateProvider.preferredLanguage('fa');
});