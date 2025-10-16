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
('gabriel.claro@agrosul.com.br', 'Gabriel Claro Ferreiro', 1)
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
INSERT INTO programs (name, description, segment_id, program_type_id) VALUES
('Base Legal e Boas Práticas Agropecuárias', 
 'Capacitação voltada para o entendimento da legislação vigente e aplicação das boas práticas no manejo diário de animais de produção, com foco na conformidade sanitária e bem-estar.', 
 1, 1),

('Manejo de Bezerros ao Nascimento', 
 'Treinamento sobre cuidados neonatais, colostragem, alojamento e primeiros manejos, assegurando o desenvolvimento saudável dos bezerros desde o nascimento.', 
 2, 2),

('Identificação de Bovinos', 
 'Programa voltado à correta identificação individual e rastreabilidade dos animais, incluindo técnicas de marcação, brincos eletrônicos e registros oficiais.', 
 3, 1),

('Vacinação', 
 'Curso prático sobre imunização do rebanho, abordando protocolos vacinais, armazenamento e aplicação correta das vacinas, conforme normas sanitárias.', 
 1, 2),

('Transporte e Embarque', 
 'Capacitação sobre boas práticas no transporte de animais, garantindo segurança, redução de estresse e cumprimento das legislações de bem-estar animal.', 
 3, 2),

('Ordenha Sustentável', 
 'Programa que ensina técnicas de ordenha higiênica, manutenção dos equipamentos e manejo do gado leiteiro, promovendo qualidade do leite e produtividade sustentável.', 
 2, 3),

('Controle de Carrapatos', 
 'Treinamento sobre identificação, controle integrado e uso racional de produtos antiparasitários, reduzindo perdas e prevenindo resistência dos parasitas.', 
 3, 3),

('Prevenção de Desastres em Propriedades Rurais', 
 'Capacitação que aborda planos de contingência e medidas preventivas contra incêndios, enchentes e outras emergências que possam comprometer o bem-estar animal.', 
 1, 4);

--------------------------------------------------
--              WORKER_PROGRAMS
--------------------------------------------------
INSERT INTO worker_programs (worker_id, program_id, grade) VALUES
(1, 1, 92),
(1, 2, 88),
(2, 1, 75),
(2, 3, 81),
(3, 4, 94),
(4, 1, 69),
(5, 5, 83),
(6, 1, 91),
(6, 7, 87),
(7, 2, 90),
(8, 3, 76),
(9, 3, 68),
(10, 8, 85),
(11, 2, 89),
(11, 6, 93),
(12, 4, 72),
(13, 1, 88),
(14, 5, 95),
(15, 8, 80),
(16, 1, 78),
(17, 7, 84),
(18, 3, 92),
(19, 6, 74),
(20, 2, 86),
(21, 3, 77),
(21, 8, 82),
(22, 4, 89),
(23, 5, 70),
(24, 7, 96),
(25, 6, 83),
(26, 8, 79),
(27, 2, 91),
(28, 4, 68),
(29, 3, 88),
(30, 5, 94),
(31, 1, 73),
(32, 6, 97),
(33, 7, 80),
(34, 3, 84),
(35, 4, 90),
(36, 2, 75),
(37, 1, 82),
(38, 8, 87),
(39, 5, 79),
(40, 4, 93),
(41, 3, 85),
(42, 7, 71),
(43, 6, 92),
(44, 1, 90),
(45, 8, 88),
(46, 4, 77),
(47, 2, 95),
(48, 5, 73),
(49, 6, 89),
(50, 8, 86),
(51, 1, 84),
(52, 3, 92),
(53, 5, 80),
(54, 7, 83),
(55, 4, 97),
(56, 6, 72),
(57, 1, 85),
(58, 8, 90),
(59, 3, 81),
(60, 5, 87),
(61, 2, 89),
(62, 1, 91),
(63, 4, 76),
(64, 7, 93),
(65, 8, 88),
(66, 5, 79),
(67, 2, 95),
(68, 6, 82),
(69, 3, 84),
(70, 1, 90),
(71, 7, 78),
(72, 4, 86),
(73, 8, 88),
(74, 3, 92),
(75, 5, 80),
(76, 2, 74),
(77, 6, 91),
(78, 1, 83),
(79, 8, 89),
(80, 4, 77);

--------------------------------------------------
 --                PROGRESSES
--------------------------------------------------
INSERT INTO progresses (date, points, progress_percentage, worker_program_id) VALUES
('2025-10-01', 20, 25, 1),
('2025-10-02', 35, 40, 2),
('2025-10-02', 50, 55, 3),
('2025-10-03', 30, 35, 4),
('2025-10-03', 45, 50, 5),
('2025-10-04', 60, 65, 6),
('2025-10-04', 25, 30, 7),
('2025-10-05', 40, 45, 8),
('2025-10-05', 55, 60, 9),
('2025-10-06', 30, 35, 10),
('2025-10-06', 50, 55, 11),
('2025-10-07', 35, 40, 12),
('2025-10-07', 45, 50, 13),
('2025-10-08', 60, 65, 14),
('2025-10-08', 25, 30, 15),
('2025-10-09', 40, 45, 16),
('2025-10-09', 55, 60, 17),
('2025-10-10', 30, 35, 18),
('2025-10-10', 50, 55, 19),
('2025-10-11', 35, 40, 20),
('2025-10-11', 45, 50, 21),
('2025-10-12', 60, 65, 22),
('2025-10-12', 25, 30, 23),
('2025-10-13', 40, 45, 24),
('2025-10-13', 55, 60, 25),
('2025-10-14', 30, 35, 26),
('2025-10-14', 50, 55, 27),
('2025-10-15', 35, 40, 28),
('2025-10-15', 45, 50, 29),
('2025-10-16', 60, 65, 30),
('2025-10-16', 25, 30, 31),
('2025-10-17', 40, 45, 32),
('2025-10-17', 55, 60, 33),
('2025-10-18', 30, 35, 34),
('2025-10-18', 50, 55, 35),
('2025-10-19', 35, 40, 36),
('2025-10-19', 45, 50, 37),
('2025-10-20', 60, 65, 38),
('2025-10-20', 25, 30, 39),
('2025-10-21', 40, 45, 40),
('2025-10-21', 55, 60, 41),
('2025-10-22', 30, 35, 42),
('2025-10-22', 50, 55, 43),
('2025-10-23', 35, 40, 44),
('2025-10-23', 45, 50, 45),
('2025-10-24', 60, 65, 46),
('2025-10-24', 25, 30, 47),
('2025-10-25', 40, 45, 48),
('2025-10-25', 55, 60, 49),
('2025-10-26', 50, 55, 50);

--------------------------------------------------
 --                RESPONSIBLES
--------------------------------------------------
INSERT INTO responsibles (first_name, last_name, email, company_id) VALUES
('Carla', 'Ferreira', 'carla.ferreira@agrosul.com.br', 1),
('Eduardo', 'Nascimento', 'eduardo.nascimento@agrosul.com.br', 1),

('Renata', 'Pereira', 'renata.pereira@granjasdovale.com.br', 2),
('André', 'Lima', 'andre.lima@granjasdovale.com.br', 2),

('Tatiane', 'Souza', 'tatiane.souza@santaluzia.com', 3),

('Rogério', 'Campos', 'rogerio.campos@bovinosuniao.com', 4),
('Helena', 'Ramos', 'helena.ramos@bovinosuniao.com', 4),

('Felipe', 'Gonçalves', 'felipe.goncalves@avicolaprimavera.com.br', 5),
('Juliana', 'Alves', 'juliana.alves@avicolaprimavera.com.br', 5),
('Mauro', 'Teixeira', 'mauro.teixeira@avicolaprimavera.com.br', 5),

('Patrícia', 'Mendes', 'patricia.mendes@suinosdocerrado.com.br', 6),

('Gustavo', 'Ferraz', 'gustavo.ferraz@agrovita.com.br', 7),
('Lívia', 'Carvalho', 'livia.carvalho@agrovita.com.br', 7),

('Raul', 'Silveira', 'raul.silveira@campo-forte.com', 8),

('Caroline', 'Santos', 'caroline.santos@ecoagro.com', 9),
('Lucas', 'Machado', 'lucas.machado@ecoagro.com', 9),

('Marcela', 'Tavares', 'marcela.tavares@fazendas.com', 10),

('Vinícius', 'Borges', 'vinicius.borges@agrovale.com', 11),

('Joana', 'Freire', 'joana.freire@granjas.com.br', 12),
('Pedro', 'Costa', 'pedro.costa@granjas.com.br', 12),

('Camila', 'Ribeiro', 'camila.ribeiro@agrocampo.com', 13),

('Rodrigo', 'Martins', 'rodrigo.martins@suinotech.com.br', 14),
('Fernanda', 'Pinto', 'fernanda.pinto@suinotech.com.br', 14),

('Paulo', 'Andrade', 'paulo.andrade@agropasto.com.br', 15);

--------------------------------------------------
 --                GOALS
--------------------------------------------------
INSERT INTO goals (description, program_id, company_id) VALUES
('Reduzir o índice de mortalidade de bezerros em 20% até o próximo trimestre', 2, 3),
('Implementar 100% das boas práticas agropecuárias nas propriedades parceiras', 1, 1),
('Treinar todos os funcionários envolvidos na vacinação até o fim do semestre', 4, 2),
('Melhorar a eficiência do embarque de bovinos reduzindo o tempo médio em 15%', 5, 4),
('Garantir identificação completa de todo o rebanho até dezembro', 3, 6),
('Aumentar a produtividade na ordenha em 10% com foco em práticas sustentáveis', 6, 9),
('Reduzir o uso de produtos químicos no controle de carrapatos em 30%', 7, 7),
('Capacitar motoristas e operadores para transporte seguro de animais', 5, 5),
('Implementar um plano de prevenção de desastres em todas as fazendas da empresa', 8, 10),
('Treinar líderes rurais para disseminar boas práticas agropecuárias', 1, 8),
('Auditar os protocolos de vacinação e corrigir falhas operacionais', 4, 11),
('Desenvolver uma campanha interna sobre sustentabilidade na produção de leite', 6, 12),
('Aplicar tecnologias de rastreabilidade em todos os bovinos comercializados', 3, 13),
('Diminuir as perdas no abate em 12% até o próximo ciclo de produção', 2, 14),
('Garantir certificação sanitária em 100% das unidades de abate', 2, 15),

('Fortalecer a parceria com fornecedores locais de ração animal', NULL, 1),
('Expandir a área de atuação para novos estados do Sudeste', NULL, 2),
('Digitalizar os registros de controle sanitário', NULL, 3),
('Criar um programa de bem-estar animal em conjunto com o setor de RH', NULL, 4),
('Adotar um sistema automatizado de gestão de estoque', NULL, 5),

('Capacitar 50 novos técnicos agrícolas para acompanhamento de campo', 1, NULL),
('Implementar piloto de fazenda modelo com certificação ambiental', 8, NULL),
('Criar manual interno de identificação de bovinos', 3, NULL),
('Desenvolver módulo online de manejo sustentável', 6, NULL),
('Treinar multiplicadores de conhecimento sobre prevenção de desastres', 8, NULL),

('Aumentar a rentabilidade das operações frigoríficas em 8%', NULL, 6),
('Obter reconhecimento do Ministério da Agricultura por boas práticas', NULL, 7),
('Reduzir o consumo de água nas operações industriais', NULL, 9),
('Realizar campanhas de conscientização sobre transporte responsável', NULL, 10),
('Melhorar a comunicação entre as equipes técnicas e administrativas', NULL, 11),

('Criar núcleo de inovação voltado à pecuária de precisão', NULL, 12),
('Alcançar padrão internacional de rastreabilidade', NULL, 13),
('Consolidar o programa de controle de carrapatos nas fazendas piloto', 7, NULL),
('Implantar certificação de qualidade em produtos processados', 8, NULL),
('Padronizar relatórios de desempenho entre unidades regionais', NULL, 15);

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