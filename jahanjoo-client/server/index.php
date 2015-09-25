<?php
$path_to_pluf = '/home/phoenix1/pluf';
$path_to_app = dirname(__FILE__);
set_include_path(
	$path_to_pluf.PATH_SEPARATOR.
	get_include_path().PATH_SEPARATOR);

// Load Pluf
require 'Pluf.php';
Pluf::start(dirname(__FILE__).'/config.php');
Pluf_Dispatcher::loadControllers(dirname(__FILE__).'/urls.php');
Pluf_Dispatcher::dispatch(Pluf_HTTP_URL::getAction());
