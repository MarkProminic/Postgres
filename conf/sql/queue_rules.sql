/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/01/2018 11:18:57 AM
*/

-- ----------------------------
--  Table structure for queue_rules
-- ----------------------------
\connect asteriskdb asterisk_role

CREATE TABLE "public"."queue_rules" (
	"rule_name" varchar(80) NOT NULL COLLATE "default",
	"time" varchar(32) NOT NULL COLLATE "default",
	"min_penalty" varchar(32) NOT NULL COLLATE "default",
	"max_penalty" varchar(32) NOT NULL COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."queue_rules" OWNER TO "asterisk_role";

