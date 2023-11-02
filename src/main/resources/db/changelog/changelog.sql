-- changeset Valera_Cidik:1.create_user_table
CREATE TABLE users (
                    id SERIAL PRIMARY KEY,
                    first_name VARCHAR(50) NOT NULL,
                    last_name VARCHAR(50) NOT NULL
);

-- changeset Valera_Cidik:2.create_roles_table
CREATE TABLE roles (
                    id INTEGER PRIMARY KEY,
                    title VARCHAR(100) NOT NULL UNIQUE
);

-- changeset Valera_Cidik:3.create_users_credentials_table
CREATE TABLE users_credentials (
                    user_id INTEGER PRIMARY KEY,
                    email VARCHAR(100) NOT NULL UNIQUE,
                    password VARCHAR(100) NOT NULL,
                    creation_date DATE NOT NULL,
                    role_id INTEGER,

                    FOREIGN KEY (user_id) REFERENCES users(id),
                    FOREIGN KEY (role_id) REFERENCES roles(id)
);


