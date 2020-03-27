INSERT INTO categories(title, alias)
values 
	('Доски и лыжи', 'boards'),
    ('Крепления', 'attachment'),
    ('Ботинки', 'boots'),
    ('Одежда', 'clothing'),
    ('Инструменты', 'tools'),
    ('Разное', 'other');

INSERT INTO users(email, username, password)
values
	('volod9@gmail.com', 'Володя', 'volod9navsegda'),
	('ignat1337@mail.ru', 'Игнат', 'qwerty'),
	('naruto@inbox.ru', 'Наруто', 'saskevernisvkanohu');

INSERT INTO lots(date_create,name,opisanie,Image_url, start_price,date_end, steps_lots, user_id, id_winner, category_id, bet_price)
values 
    ('2020-03-24 13:55:03','2014 Rossingnol District Snowboard', 'Описание временно отсутствует', 'img/lot-1.jpg',10999,'2020-03-26 13:55:03',500,2,2,1, 10999),
    ('2020-03-24 13:55:03','DC Ply Mens 2016/2017 Snowboard', 'Легкий маневренный сноуборд, готовый дать жару в любом парке, растопив снег мощным щелчком и четкими дугами. 
	Стекловолокно Bi-Ax, уложенное в двух направлениях, наделяет этот снаряд отличной гибкостью и отзывчивостью, а симметричная геометрия в сочетании с классическим прогибом кэмбер позволит уверенно держать высокие скорости. 
	А если к концу катального дня сил совсем не останется, просто посмотрите на Вашу доску и улыбнитесь, крутая графика от Шона Кливера еще никого не оставляла равнодушным. ', 'img/lot-2.jpg',15999,'2020-03-26 13:55:03',500,2,2,1, 15999),
    ('2020-03-25 13:55:03','Крепления Union Contact Pro 2015 года размер L/XL', 'Описание временно отсутствует', 'img/lot-3.jpg',8000,'2020-03-27 13:55:03',500,1,1,2, 8000),
    ('2020-03-24 13:55:03','Ботинки для сноуборда DC Mutiny Charocal', 'Описание временно отсутствует', 'img/lot-4.jpg',10999,'2020-03-26 13:55:03',500,1,1,3, 10999),
    ('2020-03-24 13:55:03','Куртка для сноуборда DC Mutiny Charocal', 'Описание временно отсутствует', 'img/lot-5.jpg',7500,'2020-03-26 13:55:03',500,1,1,4, 7500),
    ('2020-03-27 13:55:03','Маска Oakley Canopy', 'Описание временно отсутствует', 'img/lot-6.jpg',5400,'2020-03-29 13:55:03',500,3,3,6, 5400);

INSERT INTO bets(bet_date, bet_price, user_id, lots_id)
values
	('2020-03-25 13:55:05','8600', '2', '3'),
	('2020-03-25 14:49:12','9400', '3', '3');
	
	
--получить список из всех категорий
SELECT * FROM categories;

--получить самые новые, открытые лоты
SELECT * FROM lots WHERE date_end>NOW() AND date_create>=SUBDATE(NOW(), 1);

--Получите также название категории, к которой принадлежит лот
SELECT *, title FROM lots INNER JOIN categories
ON lots.category_id=categories.category_id
WHERE lots_id=2;

--обновить название лота по его идентификатору
UPDATE lots SET name='Изменение' WHERE lots_id=2;

--получить список самых свежих ставок для лота по его идентификатору
SELECT * FROM bets WHERE bet_date>=SUBDATE(NOW(), 1) and lots_id=3;