<?php
require 'Slim/Slim.php';
require 'vendor/php-activerecord/ActiveRecord.php';
require 'app/libs/S.php';

\Slim\Slim::registerAutoloader();

$app = new S();

$app->hook('slim.before', function () use ($app) {
    $app->conn = ActiveRecord\Config::instance();
    $app->conn->set_model_directory('app/models');
    $app->conn->set_connections(
      array(
        'development' => 'mysql://training:admin1234@localhost/training_development',
        'test' => 'mysql://training:admin1234@localhost/training_test',
        'production' => 'mysql://training:admin1234@localhost/training_production'
      )
    );
    header("Access-Control-Allow-Origin: *");
    $app->response->header("Content-Type", "application/json; charset=utf-8");
});

$app->hook('slim.after', function () use ($app) {
    $app->output();
});

$app->get('/', function () use ($app) {
    $app->contents['messages'] = 'Welcome to S Web Services. Please provide application token to use the API.';
});

require 'app/routes.php';

$app->run();