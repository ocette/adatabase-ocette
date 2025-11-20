INSERT INTO themes (name, description, created_at, updated_at)
VALUES
('Frontend', 'L"interface avec laquelle l"utilisateur peut interagir.', '2025-06-30 12:34:56', '2025-06-30 22:44:56'),
('Backend', 'Constitué des données et de l"infrastructure qui font fonctionner l"application.', '2025-06-30 12:34:56', '2025-06-30 22:44:56'),
('Base de données', 'Ensemble d"informations qui est organisé de manière à être facilement accessible, géré et mis à jour', '2025-06-30 12:34:56', '2025-06-30 22:44:56'),
('DevOps', 'collaboration entre tous les rôles impliqués dans le développement et la maintenance des logiciels', '2025-06-30 12:34:56', '2025-06-30 22:44:56');


INSERT INTO resources (title, type, description, url, is_ada, theme_id, created_at, updated_at)
VALUES
('Introduction à React', 'guide', 'Guide officiel React', 'https://react.dev', false, 1, '2024-06-24 12:34:56', '2024-06-24 22:44:56'),
('SQL pour débutants', 'video','Cours SQL complet', 'https://example.com/sql', true, 3, '2024-06-25 11:34:56', '2024-06-25 15:15:16'),
('Exercices JavaScript', 'exercice', 'Pratique JS', 'https://example.com/js', false, 1, '2024-06-27 11:34:56', '2024-06-27 13:19:36'),
('Créer une API en node', 'projet' ,'Projet node', 'https://example.com/node', true, 2, '2024-06-28 09:34:56', '2024-06-28 16:55:26');


INSERT INTO skills (name)
VALUES
('JavaScript'),
('React'),
('SQL'),
('PostgreSQL'),
('Node.js');

INSERT INTO resources_skills(resources_id, skill_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 1),
(4, 1),
(4, 5);

