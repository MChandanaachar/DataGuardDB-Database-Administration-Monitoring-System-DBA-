DataGuardDB – Database Administration & Monitoring System

A mini Database Administration (DBA) project built using MySQL Workbench and MySQL Server 8.0, designed to showcase skills in:

User & Role Management
Performance Monitoring
Audit Logging
Stored Procedures
Views & DMV-like monitoring
Backup & Restore Strategy

This project is ideal for SQL roles, DBA roles, Support Engineer roles, and backend roles.

🚀 Project Features

1. User & Role Management System
Roles table: DB_ADMIN, READ_ONLY, BACKUP_OPERATOR
Users table: hashed passwords for security
Mapping: users ↔ roles
View: user_role_mapping

2. Audit Logging System
Tracks database action:
Field	Description
user_id	User performing the action
action	What was done
action_time	Timestamp of the action
Stored Procedure: log_action(uid, action)

3. Performance Monitoring System
Tracks:
CPU usage
Memory usage
Active database connections
Stored Procedure: insert_performance(cpu, mem, conn)

5. DBA Views (DMV-like Monitoring)
View Name	Purpose
active_sessions	Shows current queries & connections
db_storage_usage	Shows database size usage
user_role_mapping	Shows users with their assigned roles

7. Backup & Restore Strategy
Script: /backup/dataguard_backup.sh
Example:
mysqldump -u root -p DataGuardDB > C:/database_backups/DataGuardDB_backup.sql

📂 SQL Files Included
File	Description
01_create_database.sql	Creates the database
02_create_tables.sql	Creates tables (users, roles, audit_logs, performance_metrics)
03_insert_data.sql	Inserts sample data
04_create_views.sql	Creates views for monitoring
05_stored_procedures.sql	Stored procedures for logging & performance metrics
06_sample_metrics.sql	Inserts sample performance data
07_dashboard_query.sql	Dashboard query to show metrics
📊 DBA Dashboard Query

Real-time monitoring dashboard example:

SELECT 
    (SELECT COUNT(*) FROM users) AS total_users,
    (SELECT COUNT(*) FROM audit_logs) AS total_logs,
    (SELECT active_connections FROM performance_metrics ORDER BY recorded_at DESC LIMIT 1) AS current_connections,
    (SELECT cpu_usage FROM performance_metrics ORDER BY recorded_at DESC LIMIT 1) AS current_cpu,
    (SELECT memory_usage FROM performance_metrics ORDER BY recorded_at DESC LIMIT 1) AS current_memory;

💡 How to Use

Run 01_create_database.sql to create the database.

Run 02_create_tables.sql to create all tables.

Run 03_insert_data.sql to populate sample data.

Run 04_create_views.sql to set up views.

Run 05_stored_procedures.sql to create logging & monitoring procedures.

Run 06_sample_metrics.sql for sample performance metrics.

Run 07_dashboard_query.sql to view dashboard output.

Use /backup/dataguard_backup.sh for backup operations.

📁 Optional Files
/docs/architecture_diagram.png → project diagram (visual overview)
/screenshots/ → screenshots of your SQL outputs, dashboards, or queries

🎯 Skills Demonstrated
SQL Table Design & Relationships
Views & Performance Monitoring
Stored Procedures & Automation
Backup & Restore Management
Audit Logging Implementation
Real-time Metrics & Dashboard Creation

======================================================================================

M Chandana
