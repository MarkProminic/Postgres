/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/01/2018 11:19:10 AM
*/

-- ----------------------------
--  Table structure for queue_log
-- ----------------------------
\connect asteriskdb asterisk_role

CREATE TABLE "public"."queue_log" (
	"time" varchar(128) NOT NULL COLLATE "default",
	"data1" varchar(20) COLLATE "default",
	"data2" varchar(20) COLLATE "default",
	"data3" varchar(20) COLLATE "default",
	"data4" varchar(20) COLLATE "default",
	"data5" varchar(20) COLLATE "default",
	"event" varchar(128) COLLATE "default",
	"agent" varchar(128) COLLATE "default",
	"queuename" varchar(128) COLLATE "default",
	"callid" varchar(128) COLLATE "default",
	"data" varchar(128) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."queue_log" OWNER TO "asterisk_role";

-- ----------------------------
--  Primary key structure for table queue_log
-- ----------------------------
ALTER TABLE "public"."queue_log" ADD PRIMARY KEY ("time") NOT DEFERRABLE INITIALLY IMMEDIATE;

