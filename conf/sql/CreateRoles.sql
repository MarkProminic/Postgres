CREATE ROLE asterisk_role WITH ENCRYPTED PASSWORD 'password';
ALTER ROLE asterisk_role WITH CREATEDB;
ALTER ROLE asterisk_role WITH LOGIN;
CREATE ROLE phone WITH ENCRYPTED PASSWORD 'password';
ALTER ROLE phone WITH CREATEDB;
ALTER ROLE phone WITH LOGIN;
