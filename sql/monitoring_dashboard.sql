SELECT 
    (SELECT COUNT(*) FROM users) AS total_users,
    (SELECT COUNT(*) FROM audit_logs) AS total_logs,
    (SELECT active_connections FROM performance_metrics ORDER BY recorded_at DESC LIMIT 1) AS current_connections,
    (SELECT cpu_usage FROM performance_metrics ORDER BY recorded_at DESC LIMIT 1) AS current_cpu,
    (SELECT memory_usage FROM performance_metrics ORDER BY recorded_at DESC LIMIT 1) AS current_memory;
