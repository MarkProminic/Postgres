/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/01/2018 11:19:47 AM
*/

-- ----------------------------
--  Table structure for followme_numbers
-- ----------------------------
\connect asteriskdb asterisk_role
 
CREATE TABLE "public"."followme_numbers" (
	"id" int8 NOT NULL,
	"name" varchar(255) NOT NULL COLLATE "default",
	"ordinal" varchar(10) NOT NULL COLLATE "default",
	"phonenumber" varchar(255) NOT NULL COLLATE "default",
	"timeout" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."followme_numbers" OWNER TO "asterisk_role";

-- ----------------------------
--  Primary key structure for table followme_numbers
-- ----------------------------
ALTER TABLE "public"."followme_numbers" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Uniques structure for table followme_numbers
-- ----------------------------
ALTER TABLE "public"."followme_numbers" ADD CONSTRAINT "uk2633a2cbdb2e0f84ac518e501504" UNIQUE ("name","ordinal") NOT DEFERRABLE INITIALLY IMMEDIATE;

