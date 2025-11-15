DELIMITER $$
CREATE PROCEDURE log_action(IN uid INT, IN act VARCHAR(255))
BEGIN
    INSERT INTO audit_logs(user_id, action) VALUES (uid, act);
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE insert_performance(IN cpu FLOAT, IN mem FLOAT, IN conn INT)
BEGIN
    INSERT INTO performance_metrics(cpu_usage, memory_usage, active_connections)
    VALUES (cpu, mem, conn);
END$$
DELIMITER ;
