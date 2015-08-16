<?php

// Get all users
$app->get('/users', function() use ($app) {
    $users = User::find('all');

    if($users) {
    	$data = [];
    	foreach ($users as $key => $value) {
    		$data[] = $value->to_array();
    	}
    	$app->data($data);	
    } else {
    	$app->error('No record found');
    }
    
});

// Create new user
$app->post('/users', function() use ($app) {
	$user = User::create($app->request->post());
	$app->data($user->to_array());
});

// Get user by id
$app->get('/users/:id', function($id) use ($app) {
	$user = User::find($id);
	$app->data($user->to_array());
});

// Update user based on id given
$app->put('/users/:id', function($id) use ($app) {
	$post = $app->request->post();
	$user = User::find($id);
	foreach ($post as $key => $value) {
		if($key != '_METHOD') {
			$user->{$key} = $value;
		}
	}
	if($user->save()) {
		$app->data($user->to_array());
		$app->message('User details updated');
	} else {
		$app->error('Unable to update user details');
	}
});

// Delete a user based on id given
$app->delete('/users/:id', function($id) use ($app) {
	$user = User::find($id);
	if($user->delete()) {
		$app->message('Successfully remove the user');
	} else {
		$app->message('Unable to remove the user');
	}
});