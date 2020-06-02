/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/12/2018 10:37:52 AM
*/

-- ----------------------------
--  Table structure for call_record
-- ----------------------------
CREATE TABLE "public"."call_record" (
	"unique_id" varchar(255) NOT NULL COLLATE "default",
	"billable_duration" int4,
	"callee_name" varchar(255) COLLATE "default",
	"callee_number" varchar(255) COLLATE "default",
	"caller_name" varchar(255) COLLATE "default",
	"caller_number" varchar(255) COLLATE "default",
	"contact_id" varchar(255) COLLATE "default",
	"customer_id" varchar(255) COLLATE "default",
	"customer_satisfaction" varchar(255) COLLATE "default",
	"dialed_number" varchar(255) COLLATE "default",
	"direction" varchar(255) COLLATE "default",
	"duration" int4,
	"notes" text COLLATE "default",
	"queue_retries" int4,
	"recording_file_name" varchar(255) COLLATE "default",
	"report_submitted" int8,
	"start_time" int8,
	"status" varchar(255) COLLATE "default",
	"report_completed" bool,
	"contact_name" varchar(255) COLLATE "default",
	"customer_account_name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."call_record" OWNER TO "asterisk_role";

-- ----------------------------
--  Primary key structure for table call_record
-- ----------------------------
ALTER TABLE "public"."call_record" ADD PRIMARY KEY ("unique_id") NOT DEFERRABLE INITIALLY IMMEDIATE;

