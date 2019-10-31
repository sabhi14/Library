use truyum;
insert into menu_item values(1,'Sandwich',99.00,'Yes','2017-03-15','Main Course','Yes','https://media.gettyimages.com/photos/ham-swiss-and-arugula-sandwich-picture-id846067582?s=2048x2048'),
	(2,'Burger',129.00,'Yes','2017-12-27','Main Course','No','https://media.gettyimages.com/photos/lamb-greek-burger-picture-id637790866?s=2048x2048'),
	(3,'Pizza', 149.00, 'Yes', '2018-08-21', 'Main Course', 'No','https://media.gettyimages.com/photos/whats-on-your-pizza-picture-id839988946?s=2048x2048'),
	(4,'French Fries', 57.00, 'No', '2017-07-02', 'Starters', 'Yes','https://media.gettyimages.com/photos/basket-of-french-fries-picture-id614420426?s=2048x2048'),
	(5,'Chocolate Brownie', 32.00, 'Yes', '2022-11-02', 'Dessert', 'Yes','https://media.gettyimages.com/photos/homemade-chocolate-brownies-shot-from-above-picture-id1130692246?s=2048x2048');


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
