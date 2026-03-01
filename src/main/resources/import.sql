INSERT INTO tb_category (name) VALUES ('Livros');
INSERT INTO tb_category (name) VALUES ('Eletronicos');

INSERT INTO tb_product (name, description, price, img_url) VALUES ('Livro Java Basico', 'Guia introdutorio de Java', 89.90, 'https://picsum.photos/seed/livro-java/600/400');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Livro Spring Boot', 'Desenvolvimento de APIs com Spring Boot', 119.90, 'https://picsum.photos/seed/livro-spring/600/400');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Livro SQL Pratico', 'Consultas e modelagem de banco de dados', 79.90, 'https://picsum.photos/seed/livro-sql/600/400');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Livro Clean Code', 'Boas praticas de programacao', 99.90, 'https://picsum.photos/seed/livro-clean-code/600/400');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Livro Algoritmos', 'Estruturas de dados e algoritmos', 109.90, 'https://picsum.photos/seed/livro-algoritmos/600/400');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Notebook i7', 'Notebook com 16GB RAM e SSD 512GB', 5499.90, 'https://picsum.photos/seed/notebook-i7/600/400');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Smartphone 256GB', 'Tela AMOLED e camera tripla', 2999.00, 'https://picsum.photos/seed/smartphone-256/600/400');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Fone Bluetooth ANC', 'Cancelamento de ruido ativo', 499.90, 'https://picsum.photos/seed/fone-anc/600/400');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Mouse Gamer RGB', 'Mouse com sensor de alta precisao', 199.90, 'https://picsum.photos/seed/mouse-rgb/600/400');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Teclado Mecanico', 'Teclado mecanico ABNT2 com RGB', 349.90, 'https://picsum.photos/seed/teclado-mecanico/600/400');

INSERT INTO tb_product_category (product_id, category_id) VALUES (1, 1);
INSERT INTO tb_product_category (product_id, category_id) VALUES (2, 1);
INSERT INTO tb_product_category (product_id, category_id) VALUES (3, 1);
INSERT INTO tb_product_category (product_id, category_id) VALUES (4, 1);
INSERT INTO tb_product_category (product_id, category_id) VALUES (5, 1);
INSERT INTO tb_product_category (product_id, category_id) VALUES (6, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (7, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (8, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (9, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (10, 2);

INSERT INTO tb_user (name, email, phone, birth_date, password) VALUES ('Ana Souza', 'ana@dscommerce.com', '11999990001', '1995-03-10', '123456');
INSERT INTO tb_user (name, email, phone, birth_date, password) VALUES ('Bruno Lima', 'bruno@dscommerce.com', '11999990002', '1990-07-22', '123456');
INSERT INTO tb_user (name, email, phone, birth_date, password) VALUES ('Carla Mendes', 'carla@dscommerce.com', '11999990003', '1988-11-05', '123456');
INSERT INTO tb_user (name, email, phone, birth_date, password) VALUES ('Diego Alves', 'diego@dscommerce.com', '11999990004', '2000-01-15', '123456');

INSERT INTO tb_order (moment, status, client_id) VALUES (TIMESTAMP WITH TIME ZONE '2026-03-01T10:15:00Z', 0, 1);
INSERT INTO tb_order (moment, status, client_id) VALUES (TIMESTAMP WITH TIME ZONE '2026-03-01T10:30:00Z', 0, 2);
INSERT INTO tb_order (moment, status, client_id) VALUES (TIMESTAMP WITH TIME ZONE '2026-03-01T11:00:00Z', 0, 3);
INSERT INTO tb_order (moment, status, client_id) VALUES (TIMESTAMP WITH TIME ZONE '2026-03-01T11:20:00Z', 0, 4);

INSERT INTO tb_payment (order_id, moment) VALUES (2, TIMESTAMP WITH TIME ZONE '2026-03-01T10:35:00Z');
INSERT INTO tb_payment (order_id, moment) VALUES (3, TIMESTAMP WITH TIME ZONE '2026-03-01T11:05:00Z');
INSERT INTO tb_payment (order_id, moment) VALUES (4, TIMESTAMP WITH TIME ZONE '2026-03-01T11:25:00Z');

INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (1, 1, 1, 89.90);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (1, 3, 2, 79.90);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (2, 6, 1, 5499.90);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (2, 8, 1, 499.90);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (3, 7, 1, 2999.00);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (3, 9, 1, 199.90);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (4, 10, 1, 349.90);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (4, 5, 1, 109.90);
