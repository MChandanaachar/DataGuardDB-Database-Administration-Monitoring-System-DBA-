INSERT INTO roles (role_name)
VALUES ('DB_ADMIN'), ('READ_ONLY'), ('BACKUP_OPERATOR');

INSERT INTO users (username, password_hash, role_id)
VALUES 
('admin_chandu', 'hashed_password_123', 1),
('viewer_micky', 'hashed_password_568', 2);
