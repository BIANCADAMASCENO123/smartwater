-- ====================================================================
-- SCRIPT DE POPULAÇÃO DE DADOS FICTÍCIOS (SEED) - PROJETO SMART WATER
-- ====================================================================

-- 1. Inserindo Usuários de Teste (Senhas fictícias simulando hashes)
INSERT INTO usuarios (nome, cpf, email, telefone, senha, perfil, condominio, bloco, apto, avatar_emoji, meta_mensal)
VALUES 
('Carlos Silva', '11122233344', 'carlos.morador@email.com', '(16) 99999-1111', '$2b$10$abcdefghijklmnopqrstuv', 'morador', 'Residencial Primavera', 'Bloco A', 'Apto 102', '💧', 4000.00),
('Ana Beatriz', '55566677788', 'ana.sindico@email.com', '(16) 99999-2222', '$2b$10$xyzdefghijklmnopqrstuv', 'sindico', 'Residencial Primavera', 'Bloco B', 'Apto 204', '🏢', 5000.00);

-- 2. Inserindo Preferências de Alerta para os usuários criados
INSERT INTO preferencias_alerta (usuario_id, vazamento, consumo_excessivo, meta_mensal_alerta, relatorio_semanal, dicas, horario_silencio, silencio_inicio, silencio_fim)
VALUES 
(1, 1, 1, 1, 1, 1, 0, '22:00', '07:00'),
(2, 1, 1, 1, 1, 0, 1, '23:00', '06:00');

-- 3. Inserindo Sensores de Água instalados
INSERT INTO sensores (nome, localizacao, status)
VALUES 
('Sensor Entrada Geral', 'Cavalete principal de entrada do condomínio', 'Ativo'),
('Sensor Bloco A', 'Tubulação principal de alimentação do Bloco A', 'Ativo'),
('Sensor Bloco B', 'Tubulação principal de alimentação do Bloco B', 'Ativo'),
('Sensor Área Comum', 'Medidor da piscina e irrigação dos jardins', 'Ativo'),
('Sensor Caixa d''Água', 'Saída reservatório superior', 'Inativo');

-- 4. Inserindo Leituras Fictícias (Simulando consumo em litros/minuto)
INSERT INTO leituras (sensor_id, valor_vazao, data_hora)
VALUES 
(1, 150.50, NOW() - INTERVAL '4 hours'),
(2, 45.20,  NOW() - INTERVAL '4 hours'),
(3, 55.10,  NOW() - INTERVAL '4 hours'),
(4, 50.20,  NOW() - INTERVAL '4 hours'),

(1, 180.00, NOW() - INTERVAL '3 hours'),
(2, 60.00,  NOW() - INTERVAL '3 hours'),
(3, 70.80,  NOW() - INTERVAL '3 hours'),
(4, 49.20,  NOW() - INTERVAL '3 hours'),

(1, 310.25, NOW() - INTERVAL '2 hours'),
(2, 195.00, NOW() - INTERVAL '2 hours'), 
(3, 65.25,  NOW() - INTERVAL '2 hours'),
(4, 50.00,  NOW() - INTERVAL '2 hours'),

(1, 145.10, NOW() - INTERVAL '1 hour'),
(2, 42.00,  NOW() - INTERVAL '1 hour'),
(3, 53.10,  NOW() - INTERVAL '1 hour'),
(4, 50.00,  NOW() - INTERVAL '1 hour');

-- 5. Inserindo Histórico de Notificações enviadas pelo sistema
INSERT INTO notificacoes (usuario_id, nivel, titulo, descricao, icone, lido)
VALUES 
(1, 'info', 'Bem-vindo ao Smart Water', 'Seu cadastro foi realizado com sucesso. Monitore seu consumo de água por aqui.', '🎉', 1),
(1, 'alerta', 'Consumo Elevado Detectado', 'O consumo no Bloco A subiu 40% acima da média na última hora. Verifique se há torneiras abertas.', '⚠️', 0),
(2, 'critico', 'Suspeita de Vazamento', 'O Sensor Entrada Geral detectou fluxo contínuo de água durante a madrugada (horário de silêncio).', '🚨', 0),
(2, 'ok', 'Meta Mensal Atingida', 'Parabéns! O condomínio fechou a semana dentro da meta estipulada de economia.', '✅', 1);
