'use strict';

/**
 * تمام کارهایی که توی نرم‌افزار ساختمان مورد نیاز است رو با این ماژول
 * انجام می‌دیم.
 */
angular.module('pluf.hm', ['pluf'])
/**
 * واحد‌های یک ساختمان را با استفاده از این ساختار داده‌ای تعریف می‌کنیم. این
 * واحد امکانات متفاوتی مانند پرداخت‌ها و یا اطلاعات واحد را در اختیار می‌گذارد.
 */
.factory('HMPart', function(PObject, PExcetion){
  var hmPart = function() {
    hmPart.apply(this, arguments);
  };
  hmPart.prototype = new PObject();
  return hmPart;
})
/**
 * پرداخت عبارت است از یک هزینه که باید توسط هر واحد انجام شود. این پرداخت‌ها
 * موجودیت‌هایی برای مدیریت هزینه‌ها هستند
 */
.factory('HMPayment', function(PObject, PExcetion){
  var hmPayment = function() {
    hmPayment.apply(this, arguments);
  };
  hmPayment.prototype = new PObject();
  return hmPayment;
})
/**
 * پیام‌هایی که در برد هر ساختمان ایجاد می‌شود با استفاده از این ساختار داده‌ای
 * ایجاد و مدیریت می‌شوند. هر ساختمان یک فهرست از این پیام‌ها را دارد
 */
.factory('HMMessage', function(PObject, PExcetion){
  var hmMessage = function() {
    hmMessage.apply(this, arguments);
  };
  hmMessage.prototype = new PObject();
  return hmMessage;
})
/**
 * در این نرم افزار هر حوزه به عنوان یک ساختمان در نظر گرفته می‌شود که در آن
 * موجودیت‌هایی مانند واحد، پیام‌های روی برد پرداخت‌ها و مدیریت تعریف شده است.
 */
.factory('HMTenant', function(PTenant){
  var hmTenant = function() {
    hmTenant.apply(this, arguments);
  };
  hmTenant.prototype = new PObject();
  return hmTenant;
})
/**
 * این سرویس دسترسی‌های پایه به آپارتمان‌ها را فراهم می‌کند و امکانات اولیه
 * برای ایجاد و جستجوی آنها را در اختیار می‌گذارد.
 */
.service('$hm', function($tenant){
  angular.extends(this, $tenant);
  /**
   * ساختمان جاری را بازیابی کرده و آن را در اختیار کاربران قرار می‌دهد.
   */
  this.session = function(){
    
  }
});



