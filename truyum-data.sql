use truyum;
insert into menu_item values('Sandwich',99.00,'Yes','2017-03-15','Main Course','Yes'),
	('Burger',129.00,'Yes','2017-12-27','Main Course','No'),
	('Pizza', 149.00, 'Yes', '2018-08-21', 'Main Course', 'No'),
	('French Fries', 57.00, 'No', '2017-07-02', 'Starters', 'Yes'),
	('Chocolate Brownie', 32.00, 'Yes', '2022-11-02', 'Dessert', 'Yes');


SELECT mi.me_name,mi.me_price,mi.me_active,mi.me_date_of_launch,mi.me_category,mi.me_free_delivery FROM menu_item as mi;

SELECT mi.me_name,mi.me_price,mi.me_active,mi.me_date_of_launch,mi.me_category,mi.me_free_delivery FROM menu_item as mi  where me_active='yes' and me_date_of_launch<=curdate();

select mi.me_name,mi.me_price,mi.me_active,mi.me_date_of_launch,mi.me_category,mi.me_free_delivery from menu_item as mi where me_id=1;

UPDATE menu_item SET me_active='No', me_category='Starters' WHERE me_id='1';


INSERT INTO user VALUES ('USER1');
INSERT INTO user VALUES ('USER2');


INSERT INTO cart VALUES (1,1),(1,2),(1,3);


select m.me_name,m.me_free_delivery,m.me_price from menu_item as m,cart as c where c.ct_us_id=1 and m.me_id=c.ct_pr_id;

select sum(m.me_price) as Total from menu_item as m,cart as c where c.ct_us_id=1 and m.me_id=c.ct_pr_id;

delete from cart where ct_us_id=1 AND ct_pr_id=1;
