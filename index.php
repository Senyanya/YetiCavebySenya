<?php

include 'functions.php';
$title_name="Главная";
$page_content = include_template('index.php', array(
    'Items' => $Items,
    'Category' => $Category
));
$layout_content = include_template('layout.php', array(
    'Category' => $Сategory,
    'user_avatar' => $user_avatar,
    'is_auth' => $is_auth,
    'user_name' => $user_name,
	'content' => $page_content
));

print ($layout_content);
?>

