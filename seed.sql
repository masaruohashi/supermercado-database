USE supermercado;

INSERT INTO clients (name, cpf, address) VALUES ("Cleidison", "111.111.111-x", "Rua das ruas, 507");
INSERT INTO clients (name, cpf, address) VALUES ("Valter", "000.000.000-0", "Rua Heisenberg, 508");
INSERT INTO clients (name, cpf, address) VALUES ("Gustavo", "444.444.444-3", "Rua dos vilão, 207");
INSERT INTO clients (name, cpf, address) VALUES ("Trendeu", "222.222.222-2", "Rua vazia, 1");
INSERT INTO clients (name, cpf, address) VALUES ("Bla", "999.999.999-9", "Rua void, 404");

INSERT INTO sellers (name, cpf) VALUES ("Isaac", "123.456.789-0");
INSERT INTO sellers (name, cpf) VALUES ("Magdalene", "894.579.321-6");
INSERT INTO sellers (name, cpf) VALUES ("Cain", "123.456.159-3");
INSERT INTO sellers (name, cpf) VALUES ("Judas", "123.852.789-5");
INSERT INTO sellers (name, cpf) VALUES ("Samson", "365.456.789-1");

INSERT INTO stores (name, address) VALUES ("stores 1", "ENDERECO1");
INSERT INTO stores (name, address) VALUES ("stores 2", "ENDERECO2");
INSERT INTO stores (name, address) VALUES ("stores 3", "ENDERECO3");
INSERT INTO stores (name, address) VALUES ("stores 4", "ENDERECO4");
INSERT INTO stores (name, address) VALUES ("stores 5", "ENDERECO5");

INSERT INTO providers (name, address) VALUES ("FORNECEDOR1", "ENDERECO1");
INSERT INTO providers (name, address) VALUES ("FORNECEDOR2", "ENDERECO2");
INSERT INTO providers (name, address) VALUES ("FORNECEDOR3", "ENDERECO3");
INSERT INTO providers (name, address) VALUES ("FORNECEDOR4", "ENDERECO4");
INSERT INTO providers (name, address) VALUES ("FORNECEDOR5", "ENDERECO5");

INSERT INTO categories (name) VALUES ("Alimento");
INSERT INTO categories (name) VALUES ("Limpeza");
INSERT INTO categories (name) VALUES ("Higiene");
INSERT INTO categories (name) VALUES ("Bebida");

INSERT INTO products (name, price, provider_id, category_id) VALUES ("Papinha", 2.99, 1, 1);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Milho Verde", 1.29, 1, 1);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Pipoca", 2.99, 2, 1);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Água sem gás", 0.99, 2, 4);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Refrigerante", 2.72, 3, 4);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Leite", 1.73, 1, 4);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Detergente", 1.39, 1, 2);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Sabão em pó", 12.90, 1, 2);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Amaciante", 5.99, 1, 2);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Sabonete", 1.89, 1, 3);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Creme Dental", 1.75, 1, 3);
INSERT INTO products (name, price, provider_id, category_id) VALUES ("Cotonete", 2.95, 1, 3);
