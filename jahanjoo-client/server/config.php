<?php
$path_to_tmp = '/home/phoenix1/tmp';

$cfg = array ();
// ----------------------------------------------------------------------------
// Basic Configuration
// ----------------------------------------------------------------------------
$cfg ['installed_apps'] = array (
		'Pluf',
		'User',
		'Wiki',
		'HM' 
);
$cfg ['middleware_classes'] = array (
		// 'Pluf_Middleware_Csrf',
		'Pluf_Middleware_Session',
		'Pluf_Middleware_Translation',
		'HM_Middleware_Apartment' 
);

// ---------------------------------------------------------------------------- 
// Security section 
// ---------------------------------------------------------------------------- 
$cfg ['secret_key'] = 'mdf5efe6^%$58dsfe';
$cfg ['user_profile_class'] = 'HM_Models_Apartment';
$cfg ['user_profile_form'] = 'HM_Form_Apartment';
$cfg ['user_signup_active'] = true;
$cfg ['auth_backends'] = array (
		'Pluf_Auth_ModelBackend' 
);

// ---------------------------------------------------------------------------- 
// Debug/API section
// ---------------------------------------------------------------------------- 
$cfg ['debug'] = false;
$cfg ['rest'] = true;

// ---------------------------------------------------------------------------- 
// Path section 
// ---------------------------------------------------------------------------- 
$cfg ['tmp_folder'] = $path_to_tmp . '/eparteman.ir/';
$cfg ['pear_path'] = '/home/phoenix1/php';
$cfg ['media_path'] = '/home/phoenix1/tmp/eparteman.ir/media';
$cfg ['upload_path'] = '/home/phoenix1/tmp/eparteman.ir/media/upload';
$cfg ['upload_address'] = '/home/phoenix1/tmp/eparteman.ir/media/upload';

// ---------------------------------------------------------------------------- 
// Data Base section 
// ---------------------------------------------------------------------------- 
$cfg ['db_login'] = 'phoenix1_epart';
$cfg ['db_password'] = 'e1p2a3r4';
$cfg ['db_server'] = 'localhost';
$cfg ['db_database'] = 'phoenix1_epart';
$cfg ['db_version'] = '5.5.33';
$cfg ['db_engine'] = 'MySQL';

// ---------------------------------------------------------------------------- 
// EMail section 
// ---------------------------------------------------------------------------- 
$cfg ['from_email'] = 'info@dpq.co.ir';

// ---------------------------------------------------------------------------- 
// Storage section 
// ---------------------------------------------------------------------------- 
$cfg ['storage_path'] = '/home/phoenix1/tmp/eparteman.ir/media';
$cfg ['storage_temp_path'] = '/home/phoenix1/tmp/eparteman.ir/media/tmp';
$cfg ['storage_temp_url'] = '/media/tmp';

// ---------------------------------------------------------------------------- 
// Template Section 
// ---------------------------------------------------------------------------- 
$cfg ['template_folders'] = array (
		dirname ( __FILE__ ) . '/templates' 
);
$cfg ['template'] = 'classic';
$cfg ['languages'] = array (
		'fa',
		'en' 
);

$cfg ['template_tags'] = array ();

// ---------------------------------------------------------------------------- 
// URL section 
// ---------------------------------------------------------------------------- 
$cfg ['url_base'] = 'http://epartment.ir';
$cfg ['url_media'] = '/media';
$cfg ['url_upload'] = 'http://epartment.ir/media/upload';

// ---------------------------------------------------------------------------- 
// Wiki
// ---------------------------------------------------------------------------- 
$cfg ['wiki_repositories'] = array(
		dirname ( __FILE__ ).'/wiki'
);
return $cfg;

