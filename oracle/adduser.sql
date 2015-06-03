CREATE TABLESPACE mengdetrening DATAFILE 'mengdetrening.dbf' SIZE 50M;
CREATE USER mengdetrening IDENTIFIED BY mengdetrening DEFAULT TABLESPACE mengdetrening;
GRANT CREATE SESSION, RESOURCE TO mengdetrening;
GRANT CREATE VIEW TO mengdetrening;
GRANT CREATE PROCEDURE TO mengdetrening;
--GRANT CONNECT TO mengdetrening;
--GRANT ALL PRIVILEGES TO mengdetrening;
