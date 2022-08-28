INSERT INTO tb_role (authority) VALUES ('ROLE_VISITOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_MEMBER');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ana', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_genre (name) VALUES ('Ação');
INSERT INTO tb_genre (name) VALUES ('Comédia');
INSERT INTO tb_genre (name) VALUES ('Ficção Científica');
INSERT INTO tb_genre (name) VALUES ('Terror');

INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis, genre_id) VALUES ('Nosferatu', 'Lorem ipsum tellus', 1922, 'https://live.staticflickr.com/3941/15079541204_a26ca63f02_c.jpg', 'O corretor de imóveis Hutter precisa vender um castelo cujo proprietário é o excêntrico conde Graf Orlock. O conde, na verdade, é um vampiro milenar que espalha o terror na região de Bremen, na Alemanha e se interessa por Ellen, a mulher de Hutte', 4);
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis, genre_id) VALUES ('Viagem à Lua', 'Lorem ipsum tellus', 1902, 'https://1.bp.blogspot.com/_pLgWnIv5qPw/TUxI1v1cdKI/AAAAAAAAAuw/ktWznbeZscQ/w1200-h630-p-k-no-nu/lua.jpg', 'Um grupo de homens viaja à Lua, sendo levados por uma cápsula lançada de um canhão gigante, mas acabam sendo capturados por homens-lua ', 3);
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis, genre_id) VALUES ('O Grande Ditador', 'Lorem ipsum tellus', 1940, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/The_Great_Dictator_%281940%29_poster.jpg/233px-The_Great_Dictator_%281940%29_poster.jpg', 'Um barbeiro judeu passa anos em um hospital do exército se recuperando de suas feridas após ter servido na guerra, sem saber do crescimento de poder do ditador fascista Adenóide Hynkel e suas políticas antissemitas. Quando o barbeiro retorna ao seu bairro tranquilo, ele fica atordoado com as mudanças brutais e, de forma imprudente, se une a uma menina bonita e seus vizinhos para se rebelar', 2);
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis, genre_id) VALUES ('A Furia do Dragão', 'Lorem ipsum tellus', 1971, 'https://br.web.img3.acsta.net/pictures/16/02/29/19/42/438278.jpg', 'Chen Chen retorna à sua escola em Xangai quando descobre que seu amado professor foi assassinado. Enquanto investiga sua morte, descobre que uma escola japonesa rival tem uma operação de tráfico de drogas. Para se vingar, ele acaba com os assassinos', 1);

INSERT INTO tb_review (text, user_id, movie_id) VALUES ('Excelente filme com muitas cenas de luta', 2, 4);