<?php
$is_auth = rand(0, 1);

$user_name = 'Senya'; // укажите здесь ваше имя

$Category=array("boards"=>"Доски и лыжи",
"attachment"=>"Крепления",
"boots"=>"Ботинки",
"clothing"=>"Одежда",
"tools"=>"Инструменты",
"other"=>"Разное");
$Items= array( 
	array("Название"=>"2014 Rossingnol District Snowboard", "Категория"=>"Доски и лыжи", "Цена"=>"10999", "URL картинки"=>"img/lot-1.jpg"),
	array("Название"=>"DC Ply Mens 2016/2017 Snowboard", "Категория"=>"Доски и лыжи", "Цена"=>"159999", "URL картинки"=>"img/lot-2.jpg"),
	array("Название"=>"Крепления Union Contact Pro 2015 года размер L/XL", "Категория"=>"Крепления", "Цена"=>"8000", "URL картинки"=>"img/lot-3.jpg"),
	array("Название"=>"Ботинки для сноуборда DC Mutiny Charocal", "Категория"=>"Ботинки", "Цена"=>"10999", "URL картинки"=>"img/lot-4.jpg"),
	array("Название"=>"Куртка для сноуборда DC Mutiny Charocal", "Категория"=>"Одежда", "Цена"=>"7500", "URL картинки"=>"img/lot-5.jpg"),
	array("Название"=>"Маска Oakley Canopy", "Категория"=>"Разное", "Цена"=>"5400", "URL картинки"=>"img/lot-6.jpg"));

function myPrice($price,$bool ){
	$price = ceil($price);
	if($price<1000){
		return $price;
	}
	else{
		$price=number_format($price,0," ", " ");
		
	}
	if($bool==true){
	return $price . "<b class='rub'>p</b>";
	}
	else{
		return $price;
	}
}

function include_template($name, $data) {
    $name = 'templates/' . $name;
    $result = '';

    if (!file_exists($name)) {
        return $result;
    }

    ob_start();
    extract($data);
    require $name;

    $result = ob_get_clean();

    return $result;
};
?>