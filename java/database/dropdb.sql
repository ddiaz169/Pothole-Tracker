-- **************************************************************
-- This script destroys the database and associated users
-- **************************************************************

-- The following line terminates any active connections to the database so that it can be destroyed
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'pothole_db';

DROP DATABASE pothole_db;

DROP USER pothole_db_owner;
DROP USER pothole_db_app_user;