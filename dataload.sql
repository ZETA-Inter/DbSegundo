--------------------------------------------------
 --                SEGMENTS
--------------------------------------------------
INSERT INTO segments (name) VALUES
('Bovino'),
('Suíno'),
('Aves');

--------------------------------------------------
--                 COMPANIES
--------------------------------------------------
INSERT INTO companies (name, email) VALUES
('AgroSul Alimentos', 'contato@agrosul.com.br'),
('Granjas do Vale', 'administrativo@granjasdovale.com.br'),
('Fazenda Santa Luzia', 'santaluzia@fazendasluzia.com'),
('Bovinos União', 'contato@bovinosuniao.com'),
('Avícola Primavera', 'comercial@avicolaprimavera.com.br'),
('Suínos do Cerrado', 'suporte@suinosdocerrado.com.br'),
('AgroVita Produções', 'contato@agrovita.com.br'),
('Campo Forte Alimentos', 'vendas@campo-forte.com'),
('EcoAgro Sustentável', 'atendimento@ecoagro.com'),
('Fazenda Boa Esperança', 'boaesperanca@fazendas.com'),
('AgroVale Exportações', 'export@agrovale.com'),
('Granja Horizonte', 'horizonte@granjas.com.br'),
('AgroCampo Brasil', 'agrocampo@brasil.com'),
('SuínoTech', 'contato@suinotech.com.br'),
('AgroPasto Integrado', 'geral@agropasto.com.br');

--------------------------------------------------
 --                  PLANS
--------------------------------------------------
INSERT INTO plans (name, value)
VALUES
('Zeta Basic', 0),
('Zeta +', 180),
('Zeta Premium', 250),
('Zeta Fornecedor', 300);

--------------------------------------------------
--                 WORKERS
--------------------------------------------------
-- WORKER com COMPANY
INSERT INTO workers (email, name, company_id) VALUES
('gabriel.claro@agrosul.com.br', 'Gabriel Claro Ferreiro', 1),
('ana.clara@agrosul.com.br', 'Ana Clara Moreira', 1),
('joao.pedro@agrosul.com.br', 'João Pedro Alves', 1),
('maria.luiza@agrosul.com.br', 'Maria Luiza Ferreira', 1),
('carlos.eduardo@agrosul.com.br', 'Carlos Eduardo Pinto', 1),
('beatriz.souza@agrosul.com.br', 'Beatriz Souza Lima', 1),
('felipe.martins@agrosul.com.br', 'Felipe Martins Souza', 1),
('aline.castro@agrosul.com.br', 'Aline Castro Ribeiro', 1),

('rafael.lima@granjasdovale.com.br', 'Rafael Lima Torres', 2),
('juliana.mendes@granjasdovale.com.br', 'Juliana Mendes Costa', 2),
('lucas.silva@granjasdovale.com.br', 'Lucas da Silva Santos', 2),
('amanda.rocha@granjasdovale.com.br', 'Amanda Rocha Oliveira', 2),

('mariana.ramos@santaluzia.com', 'Mariana Ramos Nogueira', 3),
('bruno.teixeira@santaluzia.com', 'Bruno Teixeira Barros', 3),
('isabela.freitas@santaluzia.com', 'Isabela Freitas Carvalho', 3),
('rodrigo.azevedo@santaluzia.com', 'Rodrigo Azevedo Lima', 3),
('tania.machado@santaluzia.com', 'Tânia Machado Silva', 3),
('heitor.souza@santaluzia.com', 'Heitor Souza Barbosa', 3),

('renato.pires@bovinosuniao.com', 'Renato Pires Andrade', 4),
('carla.santos@bovinosuniao.com', 'Carla Santos Moreira', 4),

('daniel.oliveira@avicolaprimavera.com.br', 'Daniel Oliveira Ramos', 5),
('leticia.almeida@avicolaprimavera.com.br', 'Letícia Almeida Souza', 5),
('thiago.barros@avicolaprimavera.com.br', 'Thiago Barros Rocha', 5),
('camila.martins@avicolaprimavera.com.br', 'Camila Martins Freire', 5),

('priscila.dias@suinosdocerrado.com.br', 'Priscila Dias Ferreira', 6),
('andre.luiz@suinosdocerrado.com.br', 'André Luiz Campos', 6),
('ricardo.costa@suinosdocerrado.com.br', 'Ricardo Costa Menezes', 6),

('guilherme.araujo@agrovita.com.br', 'Guilherme Araújo Nunes', 7),
('natalia.pinto@agrovita.com.br', 'Natália Pinto Ribeiro', 7),
('henrique.castro@agrovita.com.br', 'Henrique Castro Luz', 7),
('bianca.lima@agrovita.com.br', 'Bianca Lima Rezende', 7),
('rodrigo.melo@agrovita.com.br', 'Rodrigo Melo Fernandes', 7),

('tatiane.souza@campo-forte.com', 'Tatiane Souza Diniz', 8),
('vitor.machado@campo-forte.com', 'Vitor Machado Teixeira', 8),

('leandro.moraes@ecoagro.com', 'Leandro Moraes Silva', 9),
('patricia.goncalves@ecoagro.com', 'Patrícia Gonçalves Lima', 9),
('igor.santos@ecoagro.com', 'Igor Santos Ribeiro', 9),
('luana.freitas@ecoagro.com', 'Luana Freitas Nogueira', 9),

('marcelo.azevedo@fazendas.com', 'Marcelo Azevedo Cardoso', 10),
('caroline.mendes@fazendas.com', 'Caroline Mendes Rocha', 10),
('alexandre.rodrigues@fazendas.com', 'Alexandre Rodrigues Lima', 10),
('debora.mattos@fazendas.com', 'Débora Mattos Vieira', 10),

('roberto.costa@agrovale.com', 'Roberto Costa Nascimento', 11),
('thais.pereira@agrovale.com', 'Thaís Pereira Souza', 11),
('caio.almeida@agrovale.com', 'Caio Almeida Martins', 11),
('livia.oliveira@agrovale.com', 'Lívia Oliveira Santos', 11),

('renata.melo@granjas.com.br', 'Renata Melo Figueira', 12),
('felipe.barbosa@granjas.com.br', 'Felipe Barbosa Cunha', 12),
('tatiane.rocha@granjas.com.br', 'Tatiane Rocha Dias', 12),

('fabiana.ferreira@agrocampo.com', 'Fabiana Ferreira Mendes', 13),
('vinicius.souza@agrocampo.com', 'Vinícius Souza Rocha', 13),

('claudia.alves@suinotech.com.br', 'Cláudia Alves Moreira', 14),
('marcio.silva@suinotech.com.br', 'Márcio Silva Duarte', 14),
('ana.paula@suinotech.com.br', 'Ana Paula Gomes', 14),
('rodrigo.freitas@suinotech.com.br', 'Rodrigo Freitas Melo', 14),
('cintia.moura@suinotech.com.br', 'Cíntia Moura Almeida', 14),
('lucas.mendes@suinotech.com.br', 'Lucas Mendes Ribeiro', 14),

('felipe.martins@agropasto.com.br', 'Felipe Martins Ribeiro', 15),
('bruna.lopes@agropasto.com.br', 'Bruna Lopes Ferreira', 15),
('thiago.ramos@agropasto.com.br', 'Thiago Ramos Costa', 15),
('elisa.campos@agropasto.com.br', 'Elisa Campos Nunes', 15),
('rafael.silveira@agropasto.com.br', 'Rafael Silveira Andrade', 15),
('juliana.moura@agropasto.com.br', 'Juliana Moura Teles', 15),
('eduardo.lima@agropasto.com.br', 'Eduardo Lima Castro', 15),
('mariana.pires@agropasto.com.br', 'Mariana Pires Gouveia', 15),
('luciana.torres@agropasto.com.br', 'Luciana Torres Mendes', 15);

--WORKER sem COMPANY
INSERT INTO workers (email, name) VALUES
('camila.dias@gmail.com', 'Camila Dias Ferreira'),
('ricardo.monteiro@hotmail.com', 'Ricardo Monteiro Alves'),
('fernanda.ribeiro@yahoo.com', 'Fernanda Ribeiro Tavares'),
('gustavo.campos@gmail.com', 'Gustavo Campos Nogueira'),
('larissa.martins@gmail.com', 'Larissa Martins Souza'),
('danilo.souza@hotmail.com', 'Danilo Souza Teixeira'),
('patricia.melo@gmail.com', 'Patrícia Melo Fernandes'),
('julio.cesar@gmail.com', 'Júlio César Rodrigues'),
('aline.freitas@yahoo.com', 'Aline Freitas Rocha'),
('vinicius.santos@gmail.com', 'Vinícius Santos Moreira'),
('marina.almeida@gmail.com', 'Marina Almeida Castro'),
('felipe.pereira@hotmail.com', 'Felipe Pereira Gomes'),
('tatiane.rodrigues@gmail.com', 'Tatiane Rodrigues Silva'),
('eduardo.costa@gmail.com', 'Eduardo Costa Ramos'),
('natalia.mendes@gmail.com', 'Natália Mendes Pires'),
('leandro.lima@hotmail.com', 'Leandro Lima Cardoso'),
('isabela.teixeira@gmail.com', 'Isabela Teixeira Moura'),
('rodrigo.silva@gmail.com', 'Rodrigo Silva Barbosa'),
('priscila.oliveira@gmail.com', 'Priscila Oliveira Cunha'),
('rafael.dias@hotmail.com', 'Rafael Dias Ferreira'),
('caroline.azevedo@gmail.com', 'Caroline Azevedo Matos'),
('thiago.moraes@gmail.com', 'Thiago Moraes Nascimento'),
('luana.goncalves@gmail.com', 'Luana Gonçalves Duarte'),
('gabriel.nunes@gmail.com', 'Gabriel Nunes Machado'),
('amanda.vieira@gmail.com', 'Amanda Vieira Lopes'),
('marcelo.souza@hotmail.com', 'Marcelo Souza Ribeiro'),
('bianca.costa@gmail.com', 'Bianca Costa Fernandes'),
('andre.rocha@gmail.com', 'André Rocha Lima');

--------------------------------------------------
 --               PROGRAM TYPES
--------------------------------------------------
INSERT INTO program_types (name) VALUES
('Frigoríficos'),
('Abate'),
('Processamento'),
('Venda ao Consumidor');

--------------------------------------------------
 --                USER_SEGMENTS
--------------------------------------------------
INSERT INTO user_segments (segment_id, company_id, worker_id) VALUES
-- Bovino
(1, 1, 1),
(1, 4, 4),
(1, 7, 7),
(1, 10, 10),
(1, 13, 13),
(1, 1, 14),
(1, 4, 15),
(1, 7, 16),
(1, 10, 17),
(1, 13, 18),

-- Suíno
(2, 2, 2),
(2, 5, 5),
(2, 8, 8),
(2, 11, 11),
(2, 14, 14),
(2, 2, 19),
(2, 5, 20),
(2, 8, 21),
(2, 11, 22),
(2, 14, 23),

-- Aves
(3, 3, 3),
(3, 6, 6),
(3, 9, 9),
(3, 12, 12),
(3, 15, 15),
(3, 3, 24),
(3, 6, 25),
(3, 9, 26),
(3, 12, 27),
(3, 15, 28),

-- Mistos Bovino/Suíno
(1, 2, 29),
(1, 5, 30),
(1, 8, 31),
(1, 11, 32),
(1, 14, 33),

-- Mistos Suíno/Aves
(2, 3, 34),
(2, 6, 35),
(2, 9, 36),
(2, 12, 37),
(2, 15, 38),

-- Mistos Aves/Bovino
(3, 1, 39),
(3, 4, 40),
(3, 7, 41),
(3, 10, 42),
(3, 13, 43),

-- Aleatórios
(1, 2, 44),
(2, 5, 45),
(3, 8, 46),
(1, 11, 47),
(2, 14, 48),
(3, 1, 49),
(1, 4, 50);

--------------------------------------------------
 --                 PROGRAMS
--------------------------------------------------
INSERT INTO programs (id, name, description, segment_id, program_type_id) VALUES
(24,
'Base Legal e Boas Práticas Agropecuárias', 
 'Capacitação voltada para o entendimento da legislação vigente e aplicação das boas práticas no manejo diário de animais de produção, com foco na conformidade sanitária e bem-estar.', 
 1, 1),

(25,
'Manejo de Bezerros ao Nascimento', 
 'Treinamento sobre cuidados neonatais, colostragem, alojamento e primeiros manejos, assegurando o desenvolvimento saudável dos bezerros desde o nascimento.', 
 2, 2),

(26,
'Identificação de Bovinos', 
 'Programa voltado à correta identificação individual e rastreabilidade dos animais, incluindo técnicas de marcação, brincos eletrônicos e registros oficiais.', 
 3, 1),

(27,
'Vacinação', 
 'Curso prático sobre imunização do rebanho, abordando protocolos vacinais, armazenamento e aplicação correta das vacinas, conforme normas sanitárias.', 
 1, 2),

(28,
'Transporte e Embarque', 
 'Capacitação sobre boas práticas no transporte de animais, garantindo segurança, redução de estresse e cumprimento das legislações de bem-estar animal.', 
 3, 2),

(29,
'Ordenha Sustentável', 
 'Programa que ensina técnicas de ordenha higiênica, manutenção dos equipamentos e manejo do gado leiteiro, promovendo qualidade do leite e produtividade sustentável.', 
 2, 3),

(30,
'Controle de Carrapatos', 
 'Treinamento sobre identificação, controle integrado e uso racional de produtos antiparasitários, reduzindo perdas e prevenindo resistência dos parasitas.', 
 3, 3),

(31,
'Prevenção de Desastres em Propriedades Rurais', 
 'Capacitação que aborda planos de contingência e medidas preventivas contra incêndios, enchentes e outras emergências que possam comprometer o bem-estar animal.', 
 1, 4),
(32, 
'Fundamentos do Bem-Estar', 
'Programa introdutório que abrange os princípios básicos do bem-estar animal, as Cinco Liberdades, e a importância de um ambiente adequado e manejo respeitoso para a saúde física e mental dos animais.', 
1, 3),
(33, 
'Sistemas de Produção', 
'Módulo detalhado sobre os diferentes sistemas de produção agropecuária (extensivo, intensivo, orgânico, etc.), analisando seu impacto no bem-estar animal e na sustentabilidade da fazenda.', 
1, 3),
(34, 
'Menejo de Galinhas', 
'Treinamento focado nas práticas de manejo diário, alojamento, enriquecimento ambiental e cuidados sanitários essenciais para o bem-estar de galinhas de corte e poedeiras.', 
3, 3),
(35, 
'Transporte e Abarte Humanitário', 
'Curso voltado para as diretrizes e técnicas que minimizam o estresse dos animais durante o transporte e o abate, abordando o manejo pré-abate, métodos de insensibilização e legislação específica.', 
1, 2),
(36, 
'Introdução ao Bem-Estar Suíno', 
'Visão geral sobre as necessidades comportamentais e fisiológicas dos suínos, focando em temas como nutrição, ambiência e manejo adequado para garantir o bem-estar em todas as fases da vida.', 
2, 3),
(37, 
'Sistemas de Gestação e Alojamento', 
'Capacitação sobre a concepção e gestão de sistemas de alojamento para animais em fase de gestação, com ênfase em espaços que permitam o comportamento natural e o conforto das matrizes.', 
1, 3),
(38, 
'Manejo e Bem-Estar na Granja', 
'Conjunto de práticas operacionais para otimizar o manejo de rotina, prevenir lesões, monitorar a saúde e aplicar as melhores práticas de bem-estar animal dentro do ambiente da granja.', 
3, 3),
(39, 
'Transporte e Abate Humanitário', 
'Curso voltado para as diretrizes e técnicas que minimizam o estresse dos animais durante o transporte e o abate, abordando o manejo pré-abate, métodos de insensibilização e legislação específica.', 
1, 2);

--------------------------------------------------
--              WORKER_PROGRAMS
--------------------------------------------------
INSERT INTO worker_programs (id, worker_id, program_id, grade) VALUES
(1, 1, 24, 92),
(2, 1, 25, 88),
(3, 2, 24, 75),
(4, 2, 26, 81),
(5, 3, 27, 94),
(6, 4, 24, 69),
(7, 5, 28, 83),
(8, 6, 24, 91),
(9, 6, 30, 87),
(10, 7, 25, 90),
(11, 8, 26, 76),
(12, 9, 26, 68),
(13, 10, 31, 85),
(14, 11, 25, 89),
(15, 11, 29, 93),
(16, 12, 27, 72),
(17, 13, 24, 88),
(18, 14, 28, 95),
(19, 15, 31, 80),
(20, 16, 24, 78),
(21, 17, 30, 84),
(22, 18, 26, 92),
(23, 19, 29, 74),
(24, 20, 25, 86),
(25, 21, 26, 77),
(26, 21, 31, 82),
(27, 22, 27, 89),
(28, 23, 28, 70),
(29, 24, 30, 96),
(30, 25, 29, 83),
(31, 26, 31, 79),
(32, 27, 25, 91),
(33, 28, 27, 68),
(34, 29, 26, 88),
(35, 30, 28, 94),
(36, 31, 24, 73),
(37, 32, 29, 97),
(38, 33, 30, 80),
(39, 34, 26, 84),
(40, 35, 27, 90),
(41, 36, 25, 75),
(42, 37, 24, 82),
(43, 38, 31, 87),
(44, 39, 28, 79),
(45, 40, 27, 93),
(46, 41, 26, 85),
(47, 42, 30, 71),
(48, 43, 29, 92),
(49, 44, 24, 90),
(50, 45, 31, 88),
(51, 46, 27, 77),
(52, 47, 25, 95),
(53, 48, 28, 73),
(54, 49, 29, 89),
(55, 50, 31, 86),
(56, 51, 24, 84),
(57, 52, 26, 92),
(58, 53, 28, 80),
(59, 54, 30, 83),
(60, 55, 27, 97),
(61, 56, 29, 72),
(62, 57, 24, 85),
(63, 58, 31, 90),
(64, 59, 26, 81),
(65, 60, 28, 87),
(66, 61, 25, 89),
(67, 62, 24, 91),
(68, 63, 27, 76),
(69, 64, 30, 93),
(70, 65, 31, 88),
(71, 66, 28, 79),
(72, 67, 25, 95),
(73, 68, 29, 82),
(74, 69, 26, 84),
(75, 70, 24, 90),
(76, 71, 30, 78),
(77, 72, 27, 86),
(78, 73, 31, 88),
(79, 74, 26, 92),
(80, 75, 28, 80),
(81, 76, 25, 74),
(82, 77, 29, 91),
(83, 78, 24, 83),
(84, 79, 31, 89),
(85, 80, 27, 77);

--------------------------------------------------
 --                PROGRESSES
--------------------------------------------------
INSERT INTO progresses (id, date, points, progress_percentage, worker_program_id) VALUES
(1, '2025-10-01', 20, 25, 1),
(2, '2025-10-02', 35, 40, 2),
(3, '2025-10-02', 50, 55, 3),
(4, '2025-10-03', 30, 35, 4),
(5, '2025-10-03', 45, 50, 5),
(6, '2025-10-04', 60, 65, 6),
(7, '2025-10-04', 25, 30, 7),
(8, '2025-10-05', 40, 45, 8),
(9, '2025-10-05', 55, 60, 9),
(10, '2025-10-06', 30, 35, 10),
(11, '2025-10-06', 50, 55, 11),
(12, '2025-10-07', 35, 40, 12),
(13, '2025-10-07', 45, 50, 13),
(14, '2025-10-08', 60, 65, 14),
(15, '2025-10-08', 25, 30, 15),
(16, '2025-10-09', 40, 45, 16),
(17, '2025-10-09', 55, 60, 17),
(18, '2025-10-10', 30, 35, 18),
(19, '2025-10-10', 50, 55, 19),
(20, '2025-10-11', 35, 40, 20),
(21, '2025-10-11', 45, 50, 21),
(22, '2025-10-12', 60, 65, 22),
(23, '2025-10-12', 25, 30, 23),
(24, '2025-10-13', 40, 45, 24),
(25, '2025-10-13', 55, 60, 25),
(26, '2025-10-14', 30, 35, 26),
(27, '2025-10-14', 50, 55, 27),
(28, '2025-10-15', 35, 40, 28),
(29, '2025-10-15', 45, 50, 29),
(30, '2025-10-16', 60, 65, 30),
(31, '2025-10-16', 25, 30, 31),
(32, '2025-10-17', 40, 45, 32),
(33, '2025-10-17', 55, 60, 33),
(34, '2025-10-18', 30, 35, 34),
(35, '2025-10-18', 50, 55, 35),
(36, '2025-10-19', 35, 40, 36),
(37, '2025-10-19', 45, 50, 37),
(38, '2025-10-20', 60, 65, 38),
(39, '2025-10-20', 25, 30, 39),
(40, '2025-10-21', 40, 45, 40),
(41, '2025-10-21', 55, 60, 41),
(42, '2025-10-22', 30, 35, 42),
(43, '2025-10-22', 50, 55, 43),
(44, '2025-10-23', 35, 40, 44),
(45, '2025-10-23', 45, 50, 45),
(46, '2025-10-24', 60, 65, 46),
(47, '2025-10-24', 25, 30, 47),
(48, '2025-10-25', 40, 45, 48),
(49, '2025-10-25', 55, 60, 49),
(50, '2025-10-26', 50, 55, 50),
(51, '2025-10-24', 57, 34, 1),
(52, '2025-01-18', 23, 67, 2),
(53, '2025-02-27', 89, 80, 3),
(54, '2025-03-24', 78, 56, 4),
(55, '2025-04-01', 45, 67, 5),
(56, '2025-05-30', 56, 98, 6),
(57, '2025-06-05', 79, 99, 7),
(58, '2025-07-10', 46, 87, 8),
(59, '2025-08-08', 87, 45, 9),
(60, '2025-09-22', 56, 100, 10);

--------------------------------------------------
 --                GOALS
--------------------------------------------------
INSERT INTO goals (id, description, program_id, company_id, name) VALUES
(1, 'Reduzir o índice de mortalidade de bezerros em 20% até o próximo trimestre', 25, 3, 'Meta sem Nome'),
(2, 'Implementar 100% das boas práticas agropecuárias nas propriedades parceiras', 24, 1, 'Meta sem Nome'),
(3, 'Treinar todos os funcionários envolvidos na vacinação até o fim do semestre', 27, 2, 'Meta sem Nome'),
(4, 'Melhorar a eficiência do embarque de bovinos reduzindo o tempo médio em 15%', 28, 4, 'Meta sem Nome'),
(5, 'Garantir identificação completa de todo o rebanho até dezembro', 26, 6, 'Meta sem Nome'),
(6, 'Aumentar a produtividade na ordenha em 10% com foco em práticas sustentáveis', 29, 9, 'Meta sem Nome'),
(7, 'Reduzir o uso de produtos químicos no controle de carrapatos em 30%', 30, 7, 'Meta sem Nome'),
(8, 'Capacitar motoristas e operadores para transporte seguro de animais', 28, 5, 'Meta sem Nome'),
(9, 'Implementar um plano de prevenção de desastres em todas as fazendas da empresa', 31, 10, 'Meta sem Nome'),
(10, 'Treinar líderes rurais para disseminar boas práticas agropecuárias', 24, 8, 'Meta sem Nome'),
(11, 'Auditar os protocolos de vacinação e corrigir falhas operacionais', 27, 11, 'Meta sem Nome'),
(12, 'Desenvolver uma campanha interna sobre sustentabilidade na produção de leite', 29, 12, 'Meta sem Nome'),
(13, 'Aplicar tecnologias de rastreabilidade em todos os bovinos comercializados', 26, 13, 'Meta sem Nome'),
(14, 'Diminuir as perdas no abate em 12% até o próximo ciclo de produção', 25, 14, 'Meta sem Nome'),
(15, 'Garantir certificação sanitária em 100% das unidades de abate', 25, 15, 'Meta sem Nome'),
(16, 'Fortalecer a parceria com fornecedores locais de ração animal', NULL, 1, 'Meta sem Nome'),
(17, 'Expandir a área de atuação para novos estados do Sudeste', NULL, 2, 'Meta sem Nome'),
(18, 'Digitalizar os registros de controle sanitário', NULL, 3, 'Meta sem Nome'),
(19, 'Criar um programa de bem-estar animal em conjunto com o setor de RH', NULL, 4, 'Meta sem Nome'),
(20, 'Adotar um sistema automatizado de gestão de estoque', NULL, 5, 'Meta sem Nome'),
(21, 'Capacitar 50 novos técnicos agrícolas para acompanhamento de campo', 24, NULL, 'Meta sem Nome'),
(22, 'Implementar piloto de fazenda modelo com certificação ambiental', 31, NULL, 'Meta sem Nome'),
(23, 'Criar manual interno de identificação de bovinos', 26, NULL, 'Meta sem Nome'),
(24, 'Desenvolver módulo online de manejo sustentável', 29, NULL, 'Meta sem Nome'),
(25, 'Treinar multiplicadores de conhecimento sobre prevenção de desastres', 31, NULL, 'Meta sem Nome'),
(26, 'Aumentar a rentabilidade das operações frigoríficas em 8%', NULL, 6, 'Meta sem Nome'),
(27, 'Obter reconhecimento do Ministério da Agricultura por boas práticas', NULL, 7, 'Meta sem Nome'),
(28, 'Reduzir o consumo de água nas operações industriais', NULL, 9, 'Meta sem Nome'),
(29, 'Realizar campanhas de conscientização sobre transporte responsável', NULL, 10, 'Meta sem Nome'),
(30, 'Melhorar a comunicação entre as equipes técnicas e administrativas', NULL, 11, 'Meta sem Nome'),
(31, 'Criar núcleo de inovação voltado à pecuária de precisão', NULL, 12, 'Meta sem Nome'),
(32, 'Alcançar padrão internacional de rastreabilidade', NULL, 13, 'Meta sem Nome'),
(33, 'Consolidar o programa de controle de carrapatos nas fazendas piloto', 30, NULL, 'Meta sem Nome'),
(34, 'Implantar certificação de qualidade em produtos processados', 31, NULL, 'Meta sem Nome'),
(35, 'Padronizar relatórios de desempenho entre unidades regionais', NULL, 15, 'Meta sem Nome'),
(38, 'Terminar todas as etapas desse curso sobre controle de Carrapatos', 30, 1, 'Terminar Curso de Controle de Carrapatos');
 
--------------------------------------------------
 --                FUNCTIONALITIES
--------------------------------------------------
INSERT INTO functionalities (name) VALUES
-- Funcionalidades do Produtor
('Home do Produtor - dashboards de progresso e treinamentos'),
('Perfil do Produtor - informações pessoais, cursos e feedback em estrelas'),
('Atividades - formações, conteúdos, questões avaliativas e busca'),
('Chatbot Educacional - suporte e dúvidas sobre treinamentos'),
('Metas - desafios com fotos, pontos e recompensas'),
('Ranking - posição e pontuação dos produtores afiliados'),

-- Funcionalidades do Fornecedor
('Criação de Conta do Produtor - cadastro e envio de dados de login'),
('Home do Fornecedor - dashboards de desempenho e filtros personalizados'),
('Perfil do Fornecedor - dados da empresa e foto'),
('Gestão de Produtores - lista, avaliação e especialização dos afiliados'),

-- Funcionalidades gerais e complementares (para enriquecer integração com planos e outras tabelas)
('Notificações - alertas de progresso, novas metas e prazos'),
('Relatórios de Desempenho - exportação de dados e métricas'),
('Suporte Técnico - contato direto com equipe ZETA'),
('Configurações - personalização de idioma, tema e preferências'),
('Histórico de Atividades - registro das ações do usuário'),
('Certificados Digitais - emissão e validação automática'),
('Feedback Geral - avaliação de cursos e da plataforma'),
('Integração com API do Fornecedor'),
('Controle de Acesso e Permissões'),
('Sistema de Pontuação e Recompensas');

--------------------------------------------------
 --                PLAN_FUNCIONALITIES
--------------------------------------------------
INSERT INTO plan_functionalities (plan_id, functionality_id) VALUES
-- Zeta Basic: acesso inicial com recursos essenciais ao produtor
(1, 1),  -- Home do Produtor
(1, 2),  -- Perfil do Produtor
(1, 3),  -- Atividades
(1, 4),  -- Chatbot Educacional
(1, 5),  -- Metas
(1, 11), -- Notificações
(1, 14), -- Configurações

-- Zeta +: versão intermediária com ferramentas de engajamento e controle
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),  -- Ranking
(2, 11),
(2, 12), -- Relatórios de Desempenho
(2, 14),
(2, 15), -- Histórico de Atividades
(2, 17), -- Feedback Geral
(2, 20), -- Sistema de Pontuação e Recompensas

-- Zeta Premium: versão completa para produtores com todas as funções de aprendizado e gestão
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 11),
(3, 12),
(3, 13), -- Suporte Técnico
(3, 14),
(3, 15),
(3, 16), -- Certificados Digitais
(3, 17),
(3, 18), -- Integração com API do Fornecedor
(3, 19), -- Controle de Acesso e Permissões
(3, 20),

-- Zeta Fornecedor: recursos específicos para empresas e controle sobre produtores
(4, 7),  -- Criação de Conta do Produtor
(4, 8),  -- Home do Fornecedor
(4, 9),  -- Perfil do Fornecedor
(4, 10), -- Gestão de Produtores
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 17),
(4, 18),
(4, 19),
(4, 20);

--------------------------------------------------
 --                   PAYMENTS
--------------------------------------------------
INSERT INTO payments (worker_id, company_id, plan_id, amount, paid_date, frequency) VALUES
(1, 1, 2, 350.00, '2025-10-01', 'Mensal'),
(2, 1, 1, 200.00, '2025-10-01', 'Mensal'),
(3, 2, 3, 500.00, '2025-10-02', 'Mensal'),
(4, 3, 2, 350.00, '2025-10-02', 'Mensal'),
(5, 1, 1, 200.00, '2025-10-03', 'Mensal'),
(6, 1, 3, 500.00, '2025-10-03', 'Mensal'),
(7, 2, 2, 350.00, '2025-10-04', 'Mensal'),
(8, 2, 1, 200.00, '2025-10-04', 'Mensal'),
(9, 3, 2, 350.00, '2025-10-05', 'Mensal'),
(10, 4, 4, 700.00, '2025-10-05', 'Anual'),
(11, 5, 3, 500.00, '2025-10-06', 'Mensal'),
(12, 6, 2, 350.00, '2025-10-06', 'Mensal'),
(13, 7, 1, 200.00, '2025-10-07', 'Mensal'),
(14, 8, 2, 350.00, '2025-10-07', 'Mensal'),
(15, 9, 3, 500.00, '2025-10-08', 'Mensal'),
(16, 10, 4, 700.00, '2025-10-08', 'Anual'),
(17, 11, 2, 350.00, '2025-10-09', 'Mensal'),
(18, 12, 1, 200.00, '2025-10-09', 'Mensal'),
(19, 13, 3, 500.00, '2025-10-10', 'Mensal'),
(20, 14, 4, 700.00, '2025-10-10', 'Anual'),
(21, 15, 2, 350.00, '2025-10-11', 'Mensal'),
(22, 1, 3, 500.00, '2025-10-11', 'Mensal'),
(23, 2, 1, 200.00, '2025-10-12', 'Mensal'),
(24, 3, 2, 350.00, '2025-10-12', 'Mensal'),
(25, 4, 3, 500.00, '2025-10-13', 'Mensal'),
(26, 5, 4, 700.00, '2025-10-13', 'Anual'),
(27, 6, 2, 350.00, '2025-10-14', 'Mensal'),
(28, 7, 1, 200.00, '2025-10-14', 'Mensal'),
(29, 8, 3, 500.00, '2025-10-15', 'Mensal'),
(30, 9, 4, 700.00, '2025-10-15', 'Anual'),
(31, 10, 2, 350.00, '2025-10-16', 'Mensal'),
(32, 11, 3, 500.00, '2025-10-16', 'Mensal'),
(33, 12, 1, 200.00, '2025-10-17', 'Mensal'),
(34, 13, 2, 350.00, '2025-10-17', 'Mensal'),
(35, 14, 3, 500.00, '2025-10-18', 'Mensal'),
(36, 15, 4, 700.00, '2025-10-18', 'Anual'),
(37, 1, 2, 350.00, '2025-10-19', 'Mensal'),
(38, 2, 3, 500.00, '2025-10-19', 'Mensal'),
(39, 3, 1, 200.00, '2025-10-20', 'Mensal'),
(40, 4, 2, 350.00, '2025-10-20', 'Mensal');


--------------------------------------------------
 --                WORKER_GOALS
-------------------------------------------------
INSERT INTO worker_goals (worker_id, goal_id, completed) VALUES
(1, 1, TRUE),
(1, 2, FALSE),
(2, 1, TRUE),
(2, 3, TRUE),
(3, 4, FALSE),
(4, 2, TRUE),
(4, 5, FALSE),
(5, 3, TRUE),
(5, 6, TRUE),
(6, 1, TRUE),
(6, 7, FALSE),
(7, 2, TRUE),
(8, 4, FALSE),
(8, 8, TRUE),
(9, 5, TRUE),
(10, 6, FALSE),
(10, 3, TRUE),
(11, 7, TRUE),
(12, 8, FALSE),
(13, 1, TRUE),
(14, 2, TRUE),
(15, 4, FALSE),
(16, 5, TRUE),
(16, 6, TRUE),
(17, 3, FALSE),
(18, 7, TRUE),
(19, 8, FALSE),
(20, 1, TRUE),
(21, 2, TRUE),
(21, 5, FALSE),
(22, 3, TRUE),
(23, 6, FALSE),
(24, 7, TRUE),
(25, 4, TRUE),
(26, 8, FALSE),
(27, 1, TRUE),
(28, 2, FALSE),
(29, 3, TRUE),
(30, 4, TRUE),
(31, 5, FALSE),
(32, 6, TRUE),
(33, 7, TRUE),
(34, 1, FALSE),
(35, 2, TRUE),
(36, 8, FALSE),
(37, 3, TRUE),
(38, 4, TRUE),
(39, 5, FALSE),
(40, 6, TRUE),
(41, 7, TRUE),
(42, 8, FALSE),
(43, 1, TRUE),
(44, 2, TRUE),
(45, 3, FALSE),
(46, 4, TRUE),
(47, 5, TRUE),
(48, 6, FALSE),
(49, 7, TRUE),
(50, 8, TRUE),
(51, 1, TRUE),
(52, 2, FALSE),
(53, 3, TRUE),
(54, 4, TRUE),
(55, 5, FALSE),
(56, 6, TRUE),
(57, 7, TRUE),
(58, 8, FALSE),
(59, 1, TRUE),
(60, 2, TRUE);
