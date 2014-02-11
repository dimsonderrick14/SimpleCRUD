
INSERT INTO `address`
(`ID`, `CITY`, `COUNTRY`, `STREET`,`SUBURB`)
VALUES
('1', 'city', 'country', 'street', 'suburb'),
('2', 'city', 'country', 'street', 'suburb'),
('3', 'city', 'country', 'street', 'suburb'),
('4', 'city', 'country', 'street', 'suburb'),
('5', 'city', 'country', 'street', 'suburb'),
('6', 'city', 'country', 'street', 'suburb'),
('7', 'city', 'country', 'street', 'suburb'),
('8', 'city', 'country', 'street', 'suburb'),
('9', 'city', 'country', 'street', 'suburb'),
('10', 'city', 'country', 'street', 'suburb'),
('11', 'city', 'country', 'street', 'suburb'),
('12', 'city', 'country', 'street', 'suburb'),
('13', 'city', 'country', 'street', 'suburb');

INSERT INTO `role`
(`ID`, `ROLEDESC`, `ROLENAME`)
VALUES
('1', 'Administrator', 'Administrators'),
('2', 'Manager', 'Managers'),
('3', 'User', 'Users');

INSERT INTO `user`
(`ID`, `EMAIL`, `FIRSTNAME`, `LASTNAME`, `PASSWORD`, `USERNAME`, `ADDRESS_ID`)
VALUES
('1', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'admin', '1'),
('2', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user1', '2'),
('3', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user2', '3'),
('4', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user3', '4'),
('5', 'e-mail', 'name', 'surnamer', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user4', '5'),
('6', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user5', '6'),
('7', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user6', '7'),
('8', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user7', '8'),
('9', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user8', '9'),
('10', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user9', '10'),
('11', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user10', '11'),
('12', 'e-mail', 'name', 'surname', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user11', '12'),
('13', 'e-mail', 'name', 'surname', '8cc7a4de25920211fb328c8b3e3f7ccadeff4a2073ba8a093ebf3a06ab828774', 'user12', '13');

# for test : usr : admin pwd : 1234

INSERT INTO `user_roles`
(`Role_roleid`, `User_userid`)
VALUES
('1', '1'),
('3', '2'),
('3', '3'),
('3', '4'),
('3', '5'),
('3', '6'),
('3', '7'),
('3', '8'),
('3', '9'),
('3', '10'),
('3', '11'),
('3', '12'),
('3', '13');


CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `user_role_view` 
AS select `user`.`USERNAME` 
AS `username`,`user`.`PASSWORD` 
AS `password`,`role`.`ROLENAME` 
AS `rolename` 
from ((`user_roles` 
join `user` on((`user_roles`.`User_userid` = `user`.`ID`))) 
join `role` on((`user_roles`.`Role_roleid` = `role`.`ID`)))


CREATE ALGORITHM = UNDEFINED DEFINER =  `root`@`localhost` SQL SECURITY DEFINER VIEW  `user_role_view` AS SELECT  `USER`.`USERNAME` AS  `username` ,  `USER`.`PASSWORD` AS  `password` ,  `ROLE`.`ROLENAME` AS  `rolename`
FROM (
(
`user_roles`
JOIN  `USER` ON ( (
`user_roles`.`User_userid` =  `USER`.`ID`
) )
)
JOIN  `ROLE` ON ( (
`user_roles`.`Role_roleid` =  `ROLE`.`ID`
) )
)


log mysql on connecting
SELECT password FROM user_role_view WHERE username = 'admin'
SELECT rolename FROM user_role_view WHERE username = 'admin'

