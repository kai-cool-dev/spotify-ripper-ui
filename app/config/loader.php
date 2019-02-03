<?php

use Phalcon\Loader;

$loader = new Loader();

/**
 * We're a registering a set of directories taken from the configuration file
 */
$loader->registerNamespaces([
    'kDNS\Models'      => $config->application->modelsDir,
    'kDNS\Controllers' => $config->application->controllersDir,
    'kDNS\Forms'       => $config->application->formsDir,
    'kDNS'             => $config->application->libraryDir
]);

$loader->register();

// Use composer autoloader to load vendor classes
require_once BASE_PATH . '/vendor/autoload.php';
