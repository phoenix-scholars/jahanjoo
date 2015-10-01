'use strict';

/**
 * کنترل اصلی سیستم
 */
app
/**
 * 
 */
.controller('ApplicationController',
        function($scope, $window, $translate, $notify, $act, $usr, $menu, $state) {
          /**
           * عملیات مورد نیاز برای ورود به سیستم را پیاده سازی می‌کند. برای
           * استفاده از این تابع باید مادال ورود را به نمایش اضافه کنید.
           */
          var actionLogin = {
            priority: 1,
            label: 'login',
            description: 'user login action',
            helpId: 'user.login',
            visible: function() {
              return $usr.isAnonymous();
            },
            action: function() {
              $('#loginModal').openModal();
            },
          };
          /*
           * اضافه کردن به منو بقل
           */
          $menu.add('sidebar', actionLogin).add('sidebar', {
            priority: 3,
            command: 'pluf.user.logout',
            priority: 2
          }).add('sidebar', {
            command: 'pluf.user.profile',
          }).add('sidebar', {
            priority: 4,
            label: 'profile',
            command: 'pluf.saas.app.goto',
            params: ['user'],
            visible: function() {
              return !$usr.isAnonymous();
            },
          }).add('sidebar', {
            priority: 6,
            label: 'help',
            command: 'pluf.saas.app.goto',
            params: ['page/help'],
          }).add('sidebar', {
            priority: 4,
            label: 'location explorer',
            visible: function() {
              return !$usr.isAnonymous();
            },
            action: function() {
              $state.go('app.explorer');
            },
          });

          /*
           * اضافه کردن به منو اصلی
           */
          $menu.add('main', actionLogin).add('main', {
            command: 'pluf.user.logout'
          });

          /**
           * تعیین می‌کند که آیا سیستم بار گذاری شده است.
           */
          $scope.isReady = function() {
            return $scope.app.state == 1;
          }

          /**
           * صفحه اصلی نرم‌افزار تعیین شده را باز می‌کند.
           */
          $scope.openApplication = function(appId) {
            return $window.location.href = '/' + appId;
          }

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
    'jahanjoo': 'جهانجو',
    'login': 'ورود',
    'logout': 'خروج',
    'profile': 'پروفایل',
    'help': 'راهنما',
    'register': 'ثبت نام',
    'location explorer' : 'آخرین مکان‌ها',
  });
  $translateProvider.preferredLanguage('fa');
});