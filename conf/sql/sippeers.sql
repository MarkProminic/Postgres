/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Interface Production Postgres
 Source Server Version : 90601
 Source Host           : 172.16.90.251
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90601
 File Encoding         : utf-8

 Date: 10/01/2018 11:18:07 AM
*/

-- ----------------------------
--  Table structure for sippeers
-- ----------------------------
\connect asteriskdb asterisk_role

CREATE SEQUENCE sippeers_id_seq INCREMENT 1 START WITH 1;

CREATE TABLE "public"."sippeers" (
	"id" int8 NOT NULL DEFAULT nextval('sippeers_id_seq'::regclass),
	"macaddress" varchar(255) COLLATE "default",
	"accountcode" varchar(255) COLLATE "default",
	"allow" varchar(255) COLLATE "default",
	"allowoverlap" varchar(3) NOT NULL COLLATE "default",
	"allowsubscribe" varchar(3) NOT NULL COLLATE "default",
	"amaflags" varchar(255) COLLATE "default",
	"auth" varchar(255) COLLATE "default",
	"busylevel" varchar(255) COLLATE "default",
	"callbackextension" varchar(255) COLLATE "default",
	"callerid" varchar(255) COLLATE "default",
	"callgroup" varchar(255) COLLATE "default",
	"callingpres" varchar(21) NOT NULL COLLATE "default",
	"cid_number" varchar(255) COLLATE "default",
	"contactdeny" varchar(255) COLLATE "default",
	"contactpermit" varchar(255) COLLATE "default",
	"context" varchar(255) COLLATE "default",
	"defaultip" varchar(255) COLLATE "default",
	"defaultuser" varchar(255) COLLATE "default",
	"deny" varchar(255) COLLATE "default",
	"directmedia" varchar(255) COLLATE "default",
	"disallow" varchar(255) COLLATE "default",
	"dtmfmode" varchar(9) NOT NULL COLLATE "default",
	"fromdomain" varchar(255) COLLATE "default",
	"fromuser" varchar(255) COLLATE "default",
	"fullcontact" varchar(255) COLLATE "default",
	"fullname" varchar(255) COLLATE "default",
	"host" varchar(255) COLLATE "default",
	"insecure" varchar(11) NOT NULL COLLATE "default",
	"ipaddr" varchar(255) COLLATE "default",
	"language" varchar(255) COLLATE "default",
	"lastms" varchar(255) COLLATE "default",
	"mailbox" varchar(255) COLLATE "default",
	"mask" varchar(255) COLLATE "default",
	"maxcallbitrate" varchar(255) COLLATE "default",
	"md5secret" varchar(255) COLLATE "default",
	"mohinterpret" varchar(255) COLLATE "default",
	"mohsuggest" varchar(255) COLLATE "default",
	"name" varchar(255) NOT NULL COLLATE "default",
	"nat" varchar(255) COLLATE "default",
	"outboundproxy" varchar(255) COLLATE "default",
	"path" varchar(255) COLLATE "default",
	"permit" varchar(255) COLLATE "default",
	"pickupgroup" varchar(255) COLLATE "default",
	"port" varchar(255) COLLATE "default",
	"progressinband" varchar(5) NOT NULL COLLATE "default",
	"promiscredir" varchar(3) NOT NULL COLLATE "default",
	"qualify" varchar(255) COLLATE "default",
	"regexten" varchar(255) COLLATE "default",
	"regseconds" varchar(255) COLLATE "default",
	"regserver" varchar(255) COLLATE "default",
	"remotesecret" varchar(255) COLLATE "default",
	"rtpholdtimeout" varchar(255) COLLATE "default",
	"rtpkeepalive" varchar(255) COLLATE "default",
	"rtptimeout" varchar(255) COLLATE "default",
	"secret" varchar(255) COLLATE "default",
	"sendrpid" varchar(3) NOT NULL COLLATE "default",
	"session-expires" varchar(255) NOT NULL COLLATE "default",
	"setvar" varchar(255) COLLATE "default",
	"subscribemwi" varchar(3) NOT NULL COLLATE "default",
	"t38pt_usertpsource" varchar(255) COLLATE "default",
	"trunkname" varchar(255) COLLATE "default",
	"trustrpid" varchar(3) NOT NULL COLLATE "default",
	"type" varchar(6) NOT NULL COLLATE "default",
	"useclientcode" varchar(3) NOT NULL COLLATE "default",
	"useragent" varchar(255) COLLATE "default",
	"usereqphone" varchar(3) NOT NULL COLLATE "default",
	"videosupport" varchar(3) NOT NULL COLLATE "default",
	"vmexten" varchar(255) COLLATE "default",
	"description" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."sippeers" OWNER TO "asterisk_role";

ALTER SEQUENCE sippeers_id_seq OWNED BY sippeers.id;
-- ----------------------------
--  Primary key structure for table sippeers
-- ----------------------------
ALTER TABLE "public"."sippeers" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Uniques structure for table sippeers
-- ----------------------------
ALTER TABLE "public"."sippeers" ADD CONSTRAINT "uk_toj6evk1hlbr3lssxntyqu751" UNIQUE ("name") NOT DEFERRABLE INITIALLY IMMEDIATE;

