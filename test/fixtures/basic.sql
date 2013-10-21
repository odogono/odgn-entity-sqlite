DROP TABLE IF EXISTS "tbl_component_def";
CREATE TABLE tbl_component_def( id INTEGER PRIMARY KEY, uri STRING UNIQUE, schema STRING, status INTEGER, type INTEGER, created_at DATETIME DEFAULT CURRENT_TIMESTAMP, created_by INTEGER, updated_at DATETIME DEFAULT CURRENT_TIMESTAMP, updated_by INTEGER);
INSERT INTO "tbl_component_def" VALUES(1,'/component/password','{"id":"/component/password","properties":{"password":{"type":"string"},"salt":{"type":"string"},"iterations":{"type":"integer"}}}',0,0,NULL,NULL,NULL,NULL);
INSERT INTO "tbl_component_def" VALUES(2,'/component/email','{"id":"/component/email","properties":{"email":{"type":"string","format":"email"},"type":{"type":"string","description":"type of email address (home, work,etc)"},"verified_at":{"type":"string","format":"date-time"}}}',0,0,NULL,NULL,NULL,NULL);
INSERT INTO "tbl_component_def" VALUES(3,'/component/human_name','{"id":"/component/human_name","properties":{"first_name":{"type":"string"},"last_name":{"type":"string"}},"additionalProperties":true}',0,0,NULL,NULL,NULL,NULL);
DROP TABLE IF EXISTS "tbl_component_email";
CREATE TABLE tbl_component_email( id INTEGER PRIMARY KEY, entity_id INTEGER, email STRING, verified_at DATETIME DEFAULT CURRENT_TIMESTAMP, type STRING, _additional STRING, _status INTEGER, _created_at DATETIME DEFAULT CURRENT_TIMESTAMP, _created_by INTEGER, _updated_at DATETIME DEFAULT CURRENT_TIMESTAMP, _updated_by INTEGER);
INSERT INTO "tbl_component_email" VALUES(1,1,'test@odgn.com','2013-10-06T11:36:16.858Z',NULL,'{}',0,'2013-10-08T11:48:47.910Z',0,'2013-10-08T11:48:47.910Z',0);
DROP TABLE IF EXISTS "tbl_component_human_name";
CREATE TABLE tbl_component_human_name( id INTEGER PRIMARY KEY, entity_id INTEGER, first_name STRING, last_name STRING, _additional STRING, _status INTEGER, _created_at DATETIME DEFAULT CURRENT_TIMESTAMP, _created_by INTEGER, _updated_at DATETIME DEFAULT CURRENT_TIMESTAMP, _updated_by INTEGER);
INSERT INTO "tbl_component_human_name" VALUES(1,1,'charlie','fixture','{"location":"flatland"}',0,'2013-10-08T11:48:47.917Z',0,'2013-10-08T11:48:47.917Z',0);
DROP TABLE IF EXISTS "tbl_component_password";
CREATE TABLE tbl_component_password( id INTEGER PRIMARY KEY, entity_id INTEGER, password STRING, iterations INTEGER, salt STRING, _additional STRING, _status INTEGER, _created_at DATETIME DEFAULT CURRENT_TIMESTAMP, _created_by INTEGER, _updated_at DATETIME DEFAULT CURRENT_TIMESTAMP, _updated_by INTEGER);
INSERT INTO "tbl_component_password" VALUES(1,1,'DEADBEEF',500,'CAFEBABE','{}',0,'2013-10-08T11:48:47.914Z',0,'2013-10-08T11:48:47.914Z',0);
DROP TABLE IF EXISTS "tbl_entity";
CREATE TABLE tbl_entity( id INTEGER PRIMARY KEY, status INTEGER, component_bf STRING, created_at DATETIME DEFAULT CURRENT_TIMESTAMP, created_by INTEGER, updated_at DATETIME DEFAULT CURRENT_TIMESTAMP, updated_by INTEGER);
INSERT INTO "tbl_entity" VALUES(1,0,0,'2013-10-08T11:48:47.906Z',0,'2013-10-08T11:48:47.906Z',0);