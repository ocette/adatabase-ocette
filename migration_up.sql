CREATE TABLE themes (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description VARCHAR(255),
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

CREATE TYPE resource_type AS ENUM ('guide', 'video', 'exercice', 'projet');

CREATE TABLE resources (
  id SERIAL PRIMARY KEY,
  type resource_type,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  url TEXT NOT NULL,
  is_ada BOOLEAN,
  theme_id INTEGER REFERENCES themes(id),
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

CREATE TABLE skills(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE resources_skills(
  resources_id INTEGER REFERENCES resources(id),
  skill_id INTEGER REFERENCES skills(id)
);






