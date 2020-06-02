/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/01/2018 11:20:02 AM
*/

-- ----------------------------
--  Table structure for meetme
-- ----------------------------
\connect asteriskdb asterisk_role

CREATE SEQUENCE meetme_bookid_seq INCREMENT 1 START WITH 1;
CREATE TABLE "public"."meetme" (
	"bookid" int4 NOT NULL DEFAULT nextval('meetme_bookid_seq'::regclass),
	"confno" varchar(80) NOT NULL COLLATE "default",
	"starttime" timestamp(6) NULL,
	"endtime" timestamp(6) NULL,
	"pin" varchar(20) COLLATE "default",
	"adminpin" varchar(20) COLLATE "default",
	"opts" varchar(20) COLLATE "default",
	"adminopts" varchar(20) COLLATE "default",
	"recordingfilename" varchar(80) COLLATE "default",
	"recordingformat" varchar(10) COLLATE "default",
	"maxusers" int4,
	"members" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."meetme" OWNER TO "asterisk_role";

-- ----------------------------
--  Primary key structure for table meetme
-- ----------------------------
ALTER TABLE "public"."meetme" ADD PRIMARY KEY ("bookid") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table meetme
-- ----------------------------
CREATE INDEX  "meetme_confno_start_end" ON "public"."meetme" USING btree(confno COLLATE "default" "pg_catalog"."text_ops" ASC NULLS LAST, starttime "pg_catalog"."timestamp_ops" ASC NULLS LAST, endtime "pg_catalog"."timestamp_ops" ASC NULLS LAST);

