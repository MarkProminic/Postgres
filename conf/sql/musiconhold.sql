/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/01/2018 11:20:14 AM
*/

-- ----------------------------
--  Table structure for musiconhold
-- ----------------------------
\connect asteriskdb asterisk_role

CREATE TYPE moh_mode_values AS ENUM ('files', 'mp3nb', 'quietmp3nb', 'quietmp3');
ALTER TYPE moh_mode_values OWNER TO asterisk_role;

CREATE TABLE "public"."musiconhold" (
	"name" varchar(80) NOT NULL COLLATE "default",
	"mode" "public"."moh_mode_values",
	"directory" varchar(255) COLLATE "default",
	"application" varchar(255) COLLATE "default",
	"digit" varchar(1) COLLATE "default",
	"sort" varchar(10) COLLATE "default",
	"format" varchar(10) COLLATE "default",
	"stamp" timestamp(6) NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."musiconhold" OWNER TO "asterisk_role";

-- ----------------------------
--  Primary key structure for table musiconhold
-- ----------------------------
ALTER TABLE "public"."musiconhold" ADD PRIMARY KEY ("name") NOT DEFERRABLE INITIALLY IMMEDIATE;

