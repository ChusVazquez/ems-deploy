--Usuario por defecto
INSERT INTO `ems-bd`.users
(email, password, username)
VALUES('ems-admin@ems.edu', '$2a$10$vJqKYI75XHHty0xLOK4bQODGzQOBbLC54PeVcQJ.qm8YxsNGrDuZK', 'ems-admin');

--Roles por defecto
INSERT INTO `ems-bd`.`roles` (`id`, `nombre`) VALUES ('1', 'ROLE_ADMIN');
INSERT INTO `ems-bd`.`roles` (`id`, `nombre`) VALUES ('2', 'ROLE_USER');

--Asignación de los roles por defecto al usuario por defecto
INSERT INTO `ems-bd`.`usuarios_roles` (`usuario_id`, `rol_id`) VALUES ('1', '1');
INSERT INTO `ems-bd`.`usuarios_roles` (`usuario_id`, `rol_id`) VALUES ('1', '2');