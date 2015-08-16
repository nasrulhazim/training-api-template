<?php
require 'Slim/Slim.php';
require 'app/libs/S.php';

\Slim\Slim::registerAutoloader();

$app = new S();

$app->hook('slim.before', function () use ($app) {
    $app->response->header("Content-Type", "application/json; charset=utf-8");
});

$app->hook('slim.after', function () use ($app) {
    $app->output();
});

$app->get('/', function () use ($app) {
    $app->contents['messages'] = 'Welcome to S Web Services. Please provide application token to use the API.';
});

$app->run();
