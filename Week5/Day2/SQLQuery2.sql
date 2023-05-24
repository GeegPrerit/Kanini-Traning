alter table onlineorder drop FK__onlineorder__cid__4D94879B;

alter table onlineorder drop FK__onlineorder__pid__4E88ABD4;

delete from product where pid=902;

delete from customer where cid=2;

select * from customer;
select * from onlineorder;
select * from product;

alter table onlineorder drop constraint fk_cid FOREIGN key (cid) references customer(cid) on delete cascade on update cascade;
alter table onlineorder drop fk_cid

delete from customer where cid=3

update customer set cid=404 where cid=4