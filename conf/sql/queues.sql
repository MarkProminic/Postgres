/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/01/2018 11:18:28 AM
*/

-- ----------------------------
--  Table structure for queues
-- ----------------------------
\connect asteriskdb asterisk_role

CREATE TABLE "public"."queues" (
	"name" varchar(255) NOT NULL COLLATE "default",
	"announce" varchar(255) COLLATE "default",
	"announce_frequency" int4,
	"announce_holdtime" varchar(255) COLLATE "default",
	"announce_position" varchar(255) COLLATE "default",
	"announce_position_limit" int4,
	"announce_round_seconds" int4,
	"announce_to_first_user" varchar(3) NOT NULL COLLATE "default",
	"autofill" varchar(3) NOT NULL COLLATE "default",
	"autopause" varchar(3) NOT NULL COLLATE "default",
	"autopausebusy" varchar(3) NOT NULL COLLATE "default",
	"autopausedelay" int4,
	"autopauseunavail" varchar(3) NOT NULL COLLATE "default",
	"check_state_unkown" varchar(3) NOT NULL COLLATE "default",
	"context" varchar(255) COLLATE "default",
	"defaultrule" varchar(255) COLLATE "default",
	"eventmemberstatus" varchar(3) NOT NULL COLLATE "default",
	"eventwhencalled" varchar(4) NOT NULL COLLATE "default",
	"joinempty" varchar(255) COLLATE "default",
	"leavewhenempty" varchar(255) COLLATE "default",
	"log_membername_as_agent" varchar(3) NOT NULL COLLATE "default",
	"maxlen" int4,
	"memberdelay" int4,
	"membergosub" varchar(255) COLLATE "default",
	"membermacro" varchar(255) COLLATE "default",
	"min_announce_frequency" int4,
	"monitor_format" varchar(255) NOT NULL COLLATE "default",
	"monitor_type" varchar(255) COLLATE "default",
	"musiconhold" varchar(255) COLLATE "default",
	"penaltymemberslimit" int4,
	"periodic_announce" varchar(255) COLLATE "default",
	"periodic_announce_frequency" int4,
	"queue_callerannounce" varchar(255) COLLATE "default",
	"queue_callswaiting" varchar(255) COLLATE "default",
	"queue_holdtime" varchar(255) COLLATE "default",
	"queue_minutes" varchar(255) COLLATE "default",
	"queue_quantity1" varchar(255) COLLATE "default",
	"queue_quantity2" varchar(255) COLLATE "default",
	"queue_reporthold" varchar(255) COLLATE "default",
	"queue_seconds" varchar(255) COLLATE "default",
	"queue_thankyou" varchar(255) COLLATE "default",
	"queue_thereare" varchar(255) COLLATE "default",
	"queue_youarenext" varchar(255) COLLATE "default",
	"random_periodic_announce" varchar(3) NOT NULL COLLATE "default",
	"relative_periodic_announce" varchar(3) NOT NULL COLLATE "default",
	"reportholdtime" varchar(3) NOT NULL COLLATE "default",
	"retry" int4,
	"ringinuse" varchar(3) NOT NULL COLLATE "default",
	"servicelevel" int4,
	"setinterfacevar" varchar(3) NOT NULL COLLATE "default",
	"setqueueentryvar" varchar(3) NOT NULL COLLATE "default",
	"setqueuevar" varchar(3) NOT NULL COLLATE "default",
	"shared_lastcall" varchar(3) NOT NULL COLLATE "default",
	"strategy" varchar(11) NOT NULL COLLATE "default",
	"timeout" int4,
	"timeoutpriority" varchar(255) COLLATE "default",
	"timeoutrestart" varchar(3) NOT NULL COLLATE "default",
	"weight" int4,
	"wrapuptime" int4,
	"updatecdr" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."queues" OWNER TO "asterisk_role";

-- ----------------------------
--  Primary key structure for table queues
-- ----------------------------
ALTER TABLE "public"."queues" ADD PRIMARY KEY ("name") NOT DEFERRABLE INITIALLY IMMEDIATE;

