CREATE VIEW active_sessions AS
SELECT * FROM information_schema.processlist;

CREATE VIEW db_storage_usage AS
SELECT 
    table_schema,
    SUM(data_length + index_length)/1024/1024 AS size_mb
FROM information_schema.tables
GROUP BY table_schema;

CREATE VIEW user_role_mapping AS
SELECT u.username, r.role_name, u.created_at
FROM users u
JOIN roles r ON u.role_id = r.role_id;
