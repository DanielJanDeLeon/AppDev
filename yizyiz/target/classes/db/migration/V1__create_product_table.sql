CREATE TABLE tasks (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    completed BOOLEAN NOT NULL DEFAULT false
);

CREATE INDEX idx_tasks_title ON tasks(title);


INSERT INTO tasks (title, description, completed) VALUES
    ('Complete project documentation', 'Write documentation for the Spring Boot API', false),
    ('Deploy application to Docker', 'Build and deploy the Spring Boot application', false);
