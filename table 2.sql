CREATE TABLE IF NOT EXISTS departaments(
departament_id SERIAL PRIMARY KEY,
name_dep VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS bosses(
boss_id SERIAL PRIMARY KEY,
name_boss VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS employees(
employee_id SERIAL PRIMARY KEY,
name_emp VARCHAR(50) NOT NULL
departament_id INT REFERENCES departaments(departament_id),
boss_id INT REFERENCES bosses(boss_id)
);