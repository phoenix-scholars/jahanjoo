# کارساز جهانجو (جایاب)
برنامه کارساز از دو بخش اصلی تشکیل شده:
- کتابخانه pluf 
- برنامه اصلی کارساز

 کتابخانه‌های pluf بین همه کارسازهای ما مشترک هست وبخش‌هایی از آن به صورت متن‌باز توسعه داده می‌شه.
 
 ## نصب 
 برای نصب این کتابخانه باید کد مربوطه را در مسیری روی سیستم کپی کنید. از این مسیر در تنظیمات مربوط به سایت‌هایی که از این کتابخانه استفاده می‌کنند استفاده خواهد
 شد (مثلا مسیر /usr/bin/pluf) سپس باید کد مربوط به سایت از مخزن git دریافت شود. آدرسش این مخزن به صورت زیر است:

	https://github.com/phoenix-scholars/jahanjoo

از اینجا به بعد فقط تنظیمات داریم. اول خود سایت باید تنظیم شود. 
برنامه مربوط به سایت در پروژه دریافت شده و در مسیر زیر قرار دارد:

	jahanjoo-client/src

تنظیمات مهم در دو فایل زیر به صورت پیش فرض وجود دارد که باید این فایل‌ها با توجه به سیستم در حال نصب
ویرایش شوند:

- config.php.default
- index.php.default

یک کپی از این دو فایل ایجاد کرده و پسوند .default را از آن‌ها حذف کنید. یعنی دو فایل زیر باید ایجاد شوند:

- config.php
- index.php

اول از index.php شروع می‌کنیم. تقریبا خط اول این فایل مسیری که کدهای pluf در آن قرار گرفته‌اند را باید تعیین کرد.
سایر تنظیمات در این فایل تنظیم‌هایی هستند که مربوط به همه ماژول‌ها بوده و البته ممکن است دسته‌ای از آن‌ها در هیچ ماژولی استفاده نشوند. بهتر است تغییرها با دقت انجام شوند.
اولین کار تنظیم مسیر داده‌های موقت هست. این مسیرها با متغیرهای زیر تعریف می‌شوند:

	$cfg ['tmp_folder'] = '/usr/var/jayab';

این مسیر باید بر اساس محیط در حال نصب تنظیم شود. باید پوشه‌ای ساخته شود و دسترسی نوشتن در این پوشه به کاربری که برنامه آپاچی را اجرا می‌کند داده شود

در مرحله بعد باید تنظیمات مربوط به پایگاه داده انجام شود:

	$cfg ['db_login'] = 'root';
	$cfg ['db_password'] = '';
	$cfg ['db_server'] = 'localhost';
	$cfg ['db_database'] = 'jayab';

برنامه MySql را اجرا کرده و پایگاه داده را ایجاد کنید (در اینجا نام پایگاه داده jayab در نظر گرفته شده است).
پس از ایجاد پایگاه داده، در برنامه MySql دستور زیر را اجرا کنید تا پایگاه داده جاری انتخاب شود:

	use jayab;

در پوشه jahanjoo-client/server فایلی با نام db.dump.sql وجود دارد که دستورات مربوط به ایجاد جدول‌ها و ارتباط بین جدول‌های پایگاه داده jayab در آن نوشته شده است. برای ایجاد جدول‌های مربوط به پایگاه داده از روی این فایل، دستور زیر را در محیط MySql اجرا کنید. دقت شود که باید پایگاه داده jayab انتخاب شده باشد.

	source <path_to_file>

دقت شود که کلیه دستورات موجود در فایل با موفقیت اجرا شده باشند.

در مرحله بعد باید تنظیمات مربوط به apache را انجام دهیم. برای این کار باید متن زیر را برای ایجاد virtual host‌ها، با توجه به سیستم در حال نصب، ویرایش کنید و در فایل /etc/apache2/vhosts.d/ip-based_vhosts.conf کپی کنید.
‍‍
	<VirtualHost *:1396>
		 DocumentRoot /usr/jahanjoo/jahanjoo-client/src/
		 ServerName jayab.dpq.co.ir
		 ServerAdmin info@dpq.co.ir
		 <Directory /usr/jahanjoo/jahanjoo-client/src/>
			 AllowOverride All
			 Order allow,deny
			 Allow from all
			 Options +FollowSymLinks
			 Require all granted
			 RewriteEngine On
			 RewriteCond %{REQUEST_FILENAME} !-f
			 RewriteRule ^(.*) /index.php/$1
		 </Directory>
	</VirtualHost>
	
در انتها نیز باید HTTP Server را تنظیم کنید تا به پورت‌های استفاده شده در تنظیمات بالا گوش کند. 