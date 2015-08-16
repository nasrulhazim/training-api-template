<?php

class S extends \Slim\Slim {

    public $contents = [
        'status' => true,
        'message' => '',
        'data' => null
    ];

    public $conn;
    
    public function data($value, $key = 'data') {
        $this->contents[$key] = $value;
    }

    public function error($message = 'Error occured') {
        $this->contents['status'] = false;
        $this->contents['message'] = $message;
        return false;
    }

    public function message($value) {
        $this->contents['message'] = $value;
    }

    public function output() {
        echo json_encode($this->contents);
    }
}