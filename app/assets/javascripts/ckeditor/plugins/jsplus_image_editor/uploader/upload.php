<?php

    $FILES_DIR = dirname(__FILE__).'/../files/';
    $FILES_URL = preg_replace('/(uploader\/upload\.php.*)/', 'files/', $_SERVER['PHP_SELF']);

    //header("Access-Control-Allow-Origin: *");

    function checkAccess() {
        // Insert your own rules here if you want to check access
        // Return `true` if user has access to uploading an image to server and `false` otherwise
        return true;
    }

    if (!checkAccess())
        die("!Access denied.");

    $src = $_POST['src'];
    $url = $_POST['url'];

    $path = pathinfo($url);
    $file_ext = $path['extension'];
    $path2 = pathinfo($src);
    $file_name = $path2['filename'];

    $n = 0;
    $dst_file = $file_name . '.' . $file_ext;
    $exists = true;

    do {
        if (file_exists($FILES_DIR . $dst_file)) {
            $n++;
            $dst_file = $file_name . '_' . $n . '.' . $file_ext;
        } else {
            $exists = false;
        }
    } while ($exists);

    file_put_contents($FILES_DIR . $dst_file, file_get_contents($url));
    die($FILES_URL . $dst_file);

?>