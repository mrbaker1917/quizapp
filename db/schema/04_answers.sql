-- Drop and recreate Widgets table (Example)

DROP TABLE IF EXISTS answers CASCADE;
CREATE TABLE answers (
  id SERIAL PRIMARY KEY NOT NULL,
  question_id INTEGER REFERENCES questions(id) ON DELETE CASCADE,
  answer TEXT NOT NULL,
  isCorrect BOOLEAN NOT NULL DEFAULT FALSE
);
