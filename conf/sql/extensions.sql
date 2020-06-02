/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/09/2018 10:09:27 AM
*/

-- ----------------------------
--  Table structure for extensions
-- ----------------------------
\connect asteriskdb asterisk_role

CREATE SEQUENCE extensions_id_seq INCREMENT 1 START WITH 1;
CREATE TABLE "public"."extensions" (
	"id" int8 NOT NULL DEFAULT nextval('extensions_id_seq'::regclass),
	"context" varchar(40) NOT NULL COLLATE "default",
	"exten" varchar(40) NOT NULL COLLATE "default",
	"priority" varchar NOT NULL COLLATE "default",
	"app" varchar(40) NOT NULL COLLATE "default",
	"appdata" varchar(256) NOT NULL COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."extensions" OWNER TO "asterisk_role";
ALTER SEQUENCE extensions_id_seq OWNED BY extensions.id;
-- ----------------------------
--  Primary key structure for table extensions
-- ----------------------------
ALTER TABLE "public"."extensions" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Uniques structure for table extensions
-- ----------------------------
ALTER TABLE "public"."extensions" ADD CONSTRAINT "extensions_context_exten_priority_key" UNIQUE ("context","exten","priority") NOT DEFERRABLE INITIALLY IMMEDIATE;

