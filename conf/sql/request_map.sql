/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Asterisk-001 Database
 Source Server Version : 90400
 Source Host           : 172.16.90.20
 Source Database       : asteriskdb
 Source Schema         : public

 Target Server Version : 90400
 File Encoding         : utf-8

 Date: 07/01/2019 15:21:50 PM
*/

\connect asteriskdb asterisk_role

CREATE SEQUENCE request_map_id_seq INCREMENT 1 START WITH 1;

-- ----------------------------
--  Table structure for request_map
-- ----------------------------
CREATE TABLE "public"."request_map" (
	"id" int8 NOT NULL DEFAULT nextval('request_map_id_seq'::regclass),
	"config_attribute" varchar(255) NOT NULL COLLATE "default",
	"http_method" varchar(255) COLLATE "default",
	"url" varchar(255) NOT NULL COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."request_map" OWNER TO "asterisk_role";

-- ----------------------------
--  Records of request_map
-- ----------------------------
BEGIN;
INSERT INTO "public"."request_map" VALUES ('1', 'permitAll', null, '/error');
INSERT INTO "public"."request_map" VALUES ('2', 'permitAll', null, '/index');
INSERT INTO "public"."request_map" VALUES ('3', 'permitAll', null, '/index.gsp');
INSERT INTO "public"."request_map" VALUES ('4', 'permitAll', null, '/**/favicon.ico');
INSERT INTO "public"."request_map" VALUES ('5', 'permitAll', null, '/shutdown');
INSERT INTO "public"."request_map" VALUES ('6', 'permitAll', null, '/assets/**');
INSERT INTO "public"."request_map" VALUES ('7', 'permitAll', null, '/**/js/**');
INSERT INTO "public"."request_map" VALUES ('8', 'permitAll', null, '/**/css/**');
INSERT INTO "public"."request_map" VALUES ('9', 'permitAll', null, '/**/images/**');
INSERT INTO "public"."request_map" VALUES ('10', 'permitAll', null, '/login');
INSERT INTO "public"."request_map" VALUES ('11', 'permitAll', null, '/login.*');
INSERT INTO "public"."request_map" VALUES ('12', 'permitAll', null, '/login/*');
INSERT INTO "public"."request_map" VALUES ('13', 'permitAll', null, '/logout');
INSERT INTO "public"."request_map" VALUES ('14', 'permitAll', null, '/logout.*');
INSERT INTO "public"."request_map" VALUES ('15', 'permitAll', null, '/logout/*');
INSERT INTO "public"."request_map" VALUES ('16', 'ROLE_USER', null, '/');
INSERT INTO "public"."request_map" VALUES ('17', 'ROLE_ADMIN', null, '/admin/**');
INSERT INTO "public"."request_map" VALUES ('18', 'ROLE_USER', null, '/queue/**');
INSERT INTO "public"."request_map" VALUES ('19', 'ROLE_USER', null, '/queueMember/**');
INSERT INTO "public"."request_map" VALUES ('20', 'ROLE_USER', null, '/agent/**');
INSERT INTO "public"."request_map" VALUES ('21', 'ROLE_USER', null, '/extension/**');
INSERT INTO "public"."request_map" VALUES ('22', 'ROLE_USER', null, '/remotePeer/**');
INSERT INTO "public"."request_map" VALUES ('23', 'ROLE_USER', null, '/inboundRoute/**');
INSERT INTO "public"."request_map" VALUES ('24', 'ROLE_USER', null, '/asteriskCall/**');
INSERT INTO "public"."request_map" VALUES ('25', 'ROLE_USER', null, '/topic/**');
INSERT INTO "public"."request_map" VALUES ('26', 'ROLE_USER', null, '/queue/**');
INSERT INTO "public"."request_map" VALUES ('27', 'ROLE_USER', null, '/app/**');
INSERT INTO "public"."request_map" VALUES ('28', 'permitAll', null, '/agentList/**');
INSERT INTO "public"."request_map" VALUES ('29', 'ROLE_USER', null, '/stomp/**');
INSERT INTO "public"."request_map" VALUES ('30', 'ROLE_USER', null, '/conferenceRoom/**');
INSERT INTO "public"."request_map" VALUES ('31', 'ROLE_USER', null, '/voicemail/**');
INSERT INTO "public"."request_map" VALUES ('32', 'ROLE_USER', null, '/contact/**');
INSERT INTO "public"."request_map" VALUES ('33', 'permitAll', null, '/agent/passwordExpired');
INSERT INTO "public"."request_map" VALUES ('34', 'permitAll', null, '/CRMDialer');
INSERT INTO "public"."request_map" VALUES ('35', 'ROLE_USER', null, '/followme/**');
INSERT INTO "public"."request_map" VALUES ('36', 'ROLE_USER', null, '/ringGroup/**');
INSERT INTO "public"."request_map" VALUES ('37', 'ROLE_USER', null, '/api/**');
INSERT INTO "public"."request_map" VALUES ('38', 'ROLE_ADMIN', null, '/api/**');
INSERT INTO "public"."request_map" VALUES ('39', 'permitAll', null, '/api/login');
INSERT INTO "public"."request_map" VALUES ('40', 'permitAll', null, '/api/logoff');
INSERT INTO "public"."request_map" VALUES ('41', 'ROLE_USER', null, '/recording/**');
INSERT INTO "public"."request_map" VALUES ('42', 'ROLE_USER', null, '/voicemails/**');
INSERT INTO "public"."request_map" VALUES ('43', 'ROLE_USER', null, '/recordings/**');
INSERT INTO "public"."request_map" VALUES ('2315', 'ROLE_USER', null, '/callRecord/**');
INSERT INTO "public"."request_map" VALUES ('2585', 'ROLE_USER', null, '/configLine/**');
INSERT INTO "public"."request_map" VALUES ('45', 'ROLE_USER', null, '/extensionLocation/**');
INSERT INTO "public"."request_map" VALUES ('46', 'permitAll', null, '/hello');
INSERT INTO "public"."request_map" VALUES ('2746', 'ROLE_USER', null, '/user/**');
INSERT INTO "public"."request_map" VALUES ('47', 'ROLE_USER', null, '/user/**');
COMMIT;

-- ----------------------------
--  Primary key structure for table request_map
-- ----------------------------
ALTER TABLE "public"."request_map" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Uniques structure for table request_map
-- ----------------------------
ALTER TABLE "public"."request_map" ADD CONSTRAINT "ukf721bf1f2340334e273dd57aedcb" UNIQUE ("http_method","url") NOT DEFERRABLE INITIALLY IMMEDIATE;

