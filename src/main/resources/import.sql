INSERT INTO categorias (descricao) VALUES ('Curso');
INSERT INTO categorias (descricao) VALUES ('Oficina');

INSERT INTO atividades (nome, descricao, preco, categoria_id) VALUES ('Curso de HTML', 'Aprenda HTML de forma prática', 80.00, 1);
INSERT INTO atividades (nome, descricao, preco, categoria_id) VALUES ('Oficina de Github', 'Controle de versões de seus projetos', 50.00, 2);

--  OBS: TIVE PROBLEMAS NO H2 PARA REGISTRAR CORRETAMENTE OS HORÁRIOS PORTANTO ALTEREI "TIMESTAMP WITH TIME ZONE" PARA "TIMESTAMP"
--       ASSIM TIVE OS HORÁRIOS DE INÍCIO E TÉRMINO CORRETAMENTE GRAVADOS SEM FUSO HORÁRIO CONFORME INFORMADOS NO INSERT.
INSERT INTO blocos (inicio, fim, atividade_id) VALUES (TIMESTAMP '2017-09-25T08:00:00', TIMESTAMP '2017-09-25T11:00:00', 1);
INSERT INTO blocos (inicio, fim, atividade_id) VALUES (TIMESTAMP '2017-09-25T14:00:00', TIMESTAMP '2017-09-25T18:00:00', 2);
INSERT INTO blocos (inicio, fim, atividade_id) VALUES (TIMESTAMP '2017-09-26T08:00:00', TIMESTAMP '2017-09-26T11:00:00', 2);

INSERT INTO participantes (nome, email) VALUES ('José Silva', 'jose@gmail.com');
INSERT INTO participantes (nome, email) VALUES ('Tiago Faria', 'tiago@gmail.com');
INSERT INTO participantes (nome, email) VALUES ('Maria do Rosário', 'maria@gmail.com');
INSERT INTO participantes (nome, email) VALUES ('Teresa Silva', 'teresa@gmail.com');

INSERT INTO atividades_participantes (atividade_id, participante_id) VALUES (1, 1);
INSERT INTO atividades_participantes (atividade_id, participante_id) VALUES (1, 2);
INSERT INTO atividades_participantes (atividade_id, participante_id) VALUES (1, 3);
INSERT INTO atividades_participantes (atividade_id, participante_id) VALUES (2, 1);
INSERT INTO atividades_participantes (atividade_id, participante_id) VALUES (2, 3);
INSERT INTO atividades_participantes (atividade_id, participante_id) VALUES (2, 4);
