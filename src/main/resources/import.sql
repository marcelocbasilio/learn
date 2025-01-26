INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@email.com', '123456');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@email.com', '123456');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@email.com', '123456');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Texto', TIMESTAMP WITH TIME ZONE '2025-01-25T20:00:00.12345Z', false, 'Rota', 1);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'path_img.png', 'path_img_gray.png');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2025-01-25T20:00:00.12345Z', TIMESTAMP WITH TIME ZONE '2026-01-25T20:00:00.12345Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2025-12-25T20:00:00.12345Z', TIMESTAMP WITH TIME ZONE '2026-12-25T20:00:00.12345Z', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'path_img.png', 1, 'link externo', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Fórum', 'Tire suas dúvidas', 2, 'path_img.png', 2, 'link externo', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Lives', 'Lives exclusivas para turma', 3, 'path_img.png', 0, 'link externo', 1);