/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/01/2018 11:19:30 AM
*/

-- ----------------------------
--  Table structure for followme
-- ----------------------------
\connect asteriskdb asterisk_role

CREATE TABLE "public"."followme" (
	"id" int8 NOT NULL,
	"call_from_prompt" varchar(255) COLLATE "default",
	"context" varchar(255) COLLATE "default",
	"declinecall" varchar(1) COLLATE "default",
	"hold_prompt" varchar(255) COLLATE "default",
	"musiconhold" varchar(255) COLLATE "default",
	"name" varchar(255) NOT NULL COLLATE "default",
	"norecording_prompt" varchar(255) COLLATE "default",
	"options_prompt" varchar(255) COLLATE "default",
	"sorry_prompt" varchar(255) COLLATE "default",
	"status_prompt" varchar(255) COLLATE "default",
	"takecall" varchar(1) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."followme" OWNER TO "asterisk_role";

-- ----------------------------
--  Primary key structure for table followme
-- ----------------------------
ALTER TABLE "public"."followme" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Uniques structure for table followme
-- ----------------------------
ALTER TABLE "public"."followme" ADD CONSTRAINT "uk_3eklpocmbit1f1bpkx4asp2yt" UNIQUE ("name") NOT DEFERRABLE INITIALLY IMMEDIATE;

