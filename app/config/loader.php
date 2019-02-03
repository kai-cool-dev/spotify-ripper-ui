<?php

use Phalcon\Loader;

$loader = new Loader();

/**
 * We're a registering a set of directories taken from the configuration file
 */
$loader->registerNamespaces([
    'ripper\Models'      => $config->application->modelsDir,
    'ripper\Controllers' => $config->application->controllersDir,
    'ripper\Forms'       => $config->application->formsDir,
    'ripper'             => $config->application->libraryDir
]);

$loader->register();

// Use composer autoloader to load vendor classes
require_once BASE_PATH . '/vendor/autoload.php';
