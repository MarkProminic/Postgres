/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/01/2018 11:18:43 AM
*/

-- ----------------------------
--  Table structure for queue_members
-- ----------------------------
\connect asteriskdb asterisk_role

CREATE TABLE "public"."queue_members" (
	"uniqueid" int4 NOT NULL,
	"interface" varchar(255) NOT NULL COLLATE "default",
	"membername" varchar(255) COLLATE "default",
	"paused" int4,
	"penalty" int4,
	"queue_name" varchar(255) NOT NULL COLLATE "default",
	"ringinuse" varchar(3) NOT NULL COLLATE "default",
	"state_interface" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."queue_members" OWNER TO "asterisk_role";

-- ----------------------------
--  Primary key structure for table queue_members
-- ----------------------------
ALTER TABLE "public"."queue_members" ADD PRIMARY KEY ("uniqueid") NOT DEFERRABLE INITIALLY IMMEDIATE;

