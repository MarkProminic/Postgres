--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

-- Started on 2018-10-01 10:19:54 CDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = pg_catalog;

CREATE DATABASE asteriskdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE asteriskdb OWNER TO asterisk_role;

\connect asteriskdb asterisk_role

--
-- TOC entry 212 (class 1259 OID 17955)
-- Name: asterisk_config; Type: TABLE; Schema: public; Owner: asterisk_role
--

CREATE SEQUENCE asterisk_config_id_seq INCREMENT 1 START WITH 1;

CREATE TABLE asterisk_config (
    id integer DEFAULT nextval('asterisk_config_id_seq'::regclass) NOT NULL,
    category character varying(128),
    var_name character varying(128),
    var_val character varying(128),
    cat_metric character varying(128),
    filename character varying(128),
    commented numeric(4,0) DEFAULT 0,
    var_metric character varying(128)
);


ALTER TABLE asterisk_config OWNER TO asterisk_role;

--
-- TOC entry 213 (class 1259 OID 17963)
-- Name: cli_aliases_config; Type: TABLE; Schema: public; Owner: asterisk_role
--

CREATE SEQUENCE cli_aliases_config_id_seq INCREMENT 1 START WITH 1;

CREATE TABLE cli_aliases_config (
    id integer DEFAULT nextval('cli_aliases_config_id_seq'::regclass) NOT NULL,
    category character varying(128),
    var_name character varying(128),
    var_val character varying(128),
    cat_metric character varying(128),
    filename character varying(128),
    commented numeric(4,0),
    var_metric character varying(128)
);


ALTER TABLE cli_aliases_config OWNER TO asterisk_role;

--
-- TOC entry 221 (class 1259 OID 18055)
-- Name: codec_config; Type: TABLE; Schema: public; Owner: asterisk_role
--

CREATE SEQUENCE codec_config_id_seq INCREMENT 1 START WITH 1;

CREATE TABLE codec_config (
    id integer DEFAULT nextval('codec_config_id_seq'::regclass) NOT NULL,
    category character varying(128),
    var_name character varying(128),
    var_val character varying(128),
    cat_metric character varying(128),
    filename character varying(128),
    commented numeric(4,0),
    var_metric character varying(128)
);


ALTER TABLE codec_config OWNER TO asterisk_role;

--
-- TOC entry 214 (class 1259 OID 17970)
-- Name: conference_config; Type: TABLE; Schema: public; Owner: asterisk_role
--

CREATE SEQUENCE conference_config_id_seq INCREMENT 1 START WITH 1;

CREATE TABLE conference_config (
    id integer DEFAULT nextval('conference_config_id_seq'::regclass) NOT NULL,
    category character varying(128),
    var_name character varying(128),
    var_val character varying(128),
    cat_metric character varying(128),
    filename character varying(128),
    commented numeric(4,0),
    var_metric character varying(128)
);


ALTER TABLE conference_config OWNER TO asterisk_role;

--
-- TOC entry 215 (class 1259 OID 17977)
-- Name: followme_config; Type: TABLE; Schema: public; Owner: asterisk_role
--

CREATE SEQUENCE followme_config_id_seq INCREMENT 1 START WITH 1;

CREATE TABLE followme_config (
    id integer DEFAULT nextval('followme_config_id_seq'::regclass) NOT NULL,
    category character varying(128),
    var_name character varying(128),
    var_val character varying(128),
    cat_metric character varying(128),
    filename character varying(128),
    commented numeric(4,0),
    var_metric character varying(128)
);


ALTER TABLE followme_config OWNER TO asterisk_role;

--
-- TOC entry 268 (class 1259 OID 28039)
-- Name: interface_config; Type: TABLE; Schema: public; Owner: asterisk_role
--

CREATE SEQUENCE interface_config_id_seq INCREMENT 1 START WITH 24;

CREATE TABLE interface_config (
    id integer DEFAULT nextval('interface_config_id_seq'::regclass) NOT NULL,
    category character varying(255),
    property character varying(255),
    value character varying(255)
);


ALTER TABLE interface_config OWNER TO asterisk_role;

--
-- TOC entry 260 (class 1259 OID 27718)
-- Name: ps_config; Type: TABLE; Schema: public; Owner: asterisk_role
--

CREATE TABLE ps_config (
    id integer NOT NULL,
    category character varying(128),
    var_name character varying(128),
    var_value character varying(128),
    cat_metric character varying(128),
    filename character varying(128),
    commented numeric(4,0),
    var_metric character varying(128)
);


ALTER TABLE ps_config OWNER TO asterisk_role;

--
-- TOC entry 259 (class 1259 OID 27716)
-- Name: ps_config_id_seq; Type: SEQUENCE; Schema: public; Owner: asterisk_role
--

CREATE SEQUENCE ps_config_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ps_config_id_seq OWNER TO asterisk_role;

--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 259
-- Name: ps_config_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asterisk_role
--

ALTER SEQUENCE ps_config_id_seq OWNED BY ps_config.id;


--
-- TOC entry 218 (class 1259 OID 17996)
-- Name: say_config; Type: TABLE; Schema: public; Owner: asterisk_role
--

CREATE SEQUENCE say_config_id_seq INCREMENT 1 START WITH 1;

CREATE TABLE say_config (
    id integer DEFAULT nextval('say_config_id_seq'::regclass) NOT NULL,
    category character varying(128),
    var_name character varying(128),
    var_val character varying(128),
    cat_metric character varying(128),
    filename character varying(128) DEFAULT 'say.conf'::character varying,
    commented numeric(4,0),
    var_metric character varying(128)
);


ALTER TABLE say_config OWNER TO asterisk_role;

--
-- TOC entry 219 (class 1259 OID 18004)
-- Name: sip_config; Type: TABLE; Schema: public; Owner: asterisk_role
--

CREATE SEQUENCE sip_config_id_seq INCREMENT 1 START WITH 1;

CREATE TABLE sip_config (
    id integer DEFAULT nextval('sip_config_id_seq'::regclass) NOT NULL,
    category character varying(128),
    var_name character varying(128),
    var_val character varying(128),
    cat_metric character varying(128),
    filename character varying(128) DEFAULT 'sip.conf'::character varying,
    commented numeric(4,0) DEFAULT 0,
    var_metric character varying(128)
);


ALTER TABLE sip_config OWNER TO asterisk_role;

--
-- TOC entry 220 (class 1259 OID 18019)
-- Name: voicemail_config; Type: TABLE; Schema: public; Owner: asterisk_role
--

CREATE SEQUENCE voicemail_config_id_seq INCREMENT 1 START WITH 1;

CREATE TABLE voicemail_config (
    id integer DEFAULT nextval('voicemail_config_id_seq'::regclass) NOT NULL,
    category character varying(128),
    var_name character varying(128),
    var_val character varying(128),
    cat_metric character varying(128),
    filename character varying(128) DEFAULT 'voicemail.conf'::character varying,
    commented numeric(4,0) DEFAULT 0,
    var_metric character varying(128)
);


ALTER TABLE voicemail_config OWNER TO asterisk_role;

--
-- TOC entry 3414 (class 0 OID 17955)
-- Dependencies: 212
-- Data for Name: asterisk_config; Type: TABLE DATA; Schema: public; Owner: asterisk_role
--

COPY asterisk_config (id, category, var_name, var_val, cat_metric, filename, commented, var_metric) FROM stdin;
1029	general	enabled	yes	\N	ari.conf	0	\N
1030	switchboard	type	user	\N	ari.conf	0	\N
1031	switchboard	read_only	no	\N	ari.conf	0	\N
1	general	enabled	yes	\N	http.conf	0	\N
3	general	bindaddr	0.0.0.0	\N	http.conf	0	\N
4	general	bindport	8088	\N	http.conf	0	\N
5	general	enable	yes	\N	cdr.conf	0	\N
6	general	unanswered	yes	\N	cdr.conf	0	\N
7	general	batch	yes	\N	cdr.conf	0	\N
8	general	size	10	\N	cdr.conf	0	\N
9	general	time	60	\N	cdr.conf	0	\N
10	general	rtpstart	10000	\N	rtp.conf	0	\N
11	general	rtpend	20000	\N	rtp.conf	0	\N
12	general	strictrtp	yes	\N	rtp.conf	0	\N
13	general	enabled	yes	\N	manager.conf	0	\N
14	general	port	5038	\N	manager.conf	0	\N
15	general	bindaddr	0.0.0.0	\N	manager.conf	0	\N
17	switchboard	password	\N	manager.conf	0	\N
18	switchboard	deny	0.0.0.0/0.0.0.0	\N	manager.conf	0	\N
19	switchboard	permit	0.0.0.0/0.0.0.0	\N	manager.conf	0	\N
20	switchboard	read	system,call,log,verbose,command,agent,user,config,dtmf,reporting,cdr,dialplan,originate	\N	manager.conf	0	\N
22	switchboard	writetimeout	100	\N	manager.conf	0	\N
23	intro	alignment	center	\N	adsi.conf	0	\N
24	intro	greeting	welcome to the	\N	adsi.conf	0	\N
25	intro	greeting	Asterisk	\N	adsi.conf	0	\N
26	intro	greeting	Open Source PBX	\N	adsi.conf	0	\N
27	general	timestampformat	%a %b %d, %Y @ %H:%M:%S %Z	\N	alarmreceiver.conf	0	\N
28	general	eventspooldir	/tmp	\N	alarmreceiver.conf	0	\N
29	general	logindividualevents	no	\N	alarmreceiver.conf	0	\N
30	general	fdtimeout	2000	\N	alarmreceiver.conf	0	\N
31	general	sdtimeout	200	\N	alarmreceiver.conf	0	\N
32	general	answait	1250	\N	alarmreceiver.conf	0	\N
33	general	loudness	8192	\N	alarmreceiver.conf	0	\N
1091	general	host	localhost	\N	festival.conf	0	\N
1092	general	port	1314	\N	festival.conf	0	\N
1093	general	festivalcommand	(tts_textasterisk "%s" file)(quit)\\n	\N	festival.conf	0	\N
37	general	total_analysis_time	5000	\N	amd.conf	0	\N
38	general	silence_threshold	256	\N	amd.conf	0	\N
39	general	initial_silence	2500	\N	amd.conf	0	\N
40	general	after_greeting_silence	800	\N	amd.conf	0	\N
41	general	greeting	1500	\N	amd.conf	0	\N
42	general	min_word_length	100	\N	amd.conf	0	\N
43	general	maximum_word_length	5000	\N	amd.conf	0	\N
44	general	between_words_silence	50	\N	amd.conf	0	\N
45	general	maximum_number_of_words	3	\N	amd.conf	0	\N
21	switchboard	write	all	\N	manager.conf	0	\N
68	general	enable	yes	\N	cel.conf	0	\N
69	general	apps	confbridge,meetme,mixmonitor,queue,stopmixmonitor,voicemail,voicemailmain,dial,park	\N	cel.conf	0	\N
70	general	events	all	\N	cel.conf	0	\N
71	general	dateformat	%F %T	\N	cel.conf	0	\N
72	manager	enabled	yes	\N	cel.conf	0	\N
73	manager	show_user_defined	yes	\N	cel.conf	0	\N
1085	general	webenabled	yes	\N	manager.conf	0	\N
1084	general	channelvars	originatedCalleeName,originatedCalleeNumber,originatedOwnerName	\N	manager.conf	0	\N
1086	general	localextenlength	3	\N	users.conf	0	\N
1087	general	vmexten	*71	\N	users.conf	0	\N
1101	switchboard-dialer	write	originate	\N	manager.conf	0	\N
1102	switchboard-dialer	secret	password	\N	manager.conf	0	\N
1103	switchboard-dialer	deny	0.0.0.0/0.0.0.0	\N	manager.conf	0	\N
1104	switchboard-dialer	permit	0.0.0.0/0.0.0.0	\N	manager.conf	0	\N
1105	switchboard-dialer	read	originate	\N	manager.conf	0	\N
1106	switchboard-dialer	writetimeout	100	\N	manager.conf	0	\N
221	general	default_perm	permit	\N	cli_permissions.conf	0	\N
1089	default	directory	moh	\N	musiconhold.conf	0	\N
1090	default	mode	files	\N	musiconhold.conf	0	\N
319	default	input_device	default	\N	console.conf	0	\N
320	default	output_device	default	\N	console.conf	0	\N
321	default	autoanswer	no	\N	console.conf	0	\N
322	default	context	default	\N	console.conf	0	\N
323	default	extension	s	\N	console.conf	0	\N
324	default	callerid	MyName Here <(256) 428-6000>	\N	console.conf	0	\N
325	default	language	en	\N	console.conf	0	\N
326	default	overridecontext	no	\N	console.conf	0	\N
327	default	mohinterpret	default	\N	console.conf	0	\N
328	default	active	yes	\N	console.conf	0	\N
330	general	h323driver	H323	\N	enum.conf	0	\N
776	us	description	United States / North America	\N	indications.conf	0	\N
777	us	ringcadence	2000,4000	\N	indications.conf	0	\N
778	us	dial	350+440	\N	indications.conf	0	\N
779	us	busy	480+620/500,0/500	\N	indications.conf	0	\N
780	us	ring	440+480/2000,0/4000	\N	indications.conf	0	\N
781	us	congestion	480+620/250,0/250	\N	indications.conf	0	\N
782	us	callwaiting	440/300,0/10000	\N	indications.conf	0	\N
783	us	dialrecall	!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440	\N	indications.conf	0	\N
784	us	record	1400/500,0/15000	\N	indications.conf	0	\N
785	us	info	!950/330,!1400/330,!1800/330,0	\N	indications.conf	0	\N
2	general	servername	localhost	\N	http.conf	0	\N
786	us	stutter	!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440	\N	indications.conf	0	\N
894	Prominic	mode	files	\N	musiconhold.conf	0	\N
895	Prominic	directory	moh/Prominic	\N	musiconhold.conf	0	\N
899	general	persistentmembers	yes	\N	queues.conf	0	\N
900	general	monitor-type	MixMonitor	\N	queues.conf	0	\N
906	test_sorcery_section	test	memory	\N	sorcery.conf	0	\N
907	test_sorcery_cache	test/cache	test	\N	sorcery.conf	0	\N
908	test_sorcery_cache	test	memory	\N	sorcery.conf	0	\N
904	default	parkpos	701-720	\N	res_parking.conf	0	\N
905	default	context	parkedcalls	\N	res_parking.conf	0	\N
1003	general	parkeddynamic	false	\N	res_parking.conf	0	\N
1012	default	courtesytone	beep	\N	res_parking.conf	0	\N
1018	featuremap	blindxfer	##	\N	features.conf	0	\N
1019	featuremap	atxfer	*2	\N	features.conf	0	\N
1020	featuremap	automon	*1	\N	features.conf	0	\N
1021	featuremap	disconnect	**	\N	features.conf	0	\N
329	general	search	e164.arpa	\N	enum.conf	0	\N
1006	default	parkext_exclusive	yes	\N	res_parking.conf	0	\N
1022	default	deny	0.0.0.0/0.0.0.0	\N	acl.conf	0	\N
1023	default	allow	0.0.0.0/0.0.0.0	\N	acl.conf	0	\N
1081	general	realtime_rules	yes	\N	queuerules.conf	0	\N
1045	res_pjsip_endpoint_identifier_ip	identify	realtime,ps_endpoint_id_ips	\N	sorcery.conf	0	\N
1026	general	tlsenable	true	\N	http.conf	0	\N
1028	general	tlscertfile	/etc/asterisk/keys/asterisk.pem	\N	http.conf	0	\N
1027	general	tlsbindaddr	0.0.0.0:8089	\N	http.conf	0	\N
1034	general	allowed_origins	*	\N	ari.conf	0	\N
1035	general	pretty	yes	\N	ari.conf	0	\N
1037	featuremap	parkcall	#75	\N	features.conf	0	\N
1015	default	parkedcallreparking	caller	\N	res_parking.conf	0	\N
1013	default	parkedplay	both	\N	res_parking.conf	0	\N
1014	default	parkedcalltransfers	caller	\N	res_parking.conf	0	\N
1010	default	parkedmusicclass	Prominic	\N	res_parking.conf	0	\N
1008	default	parkinghints	yes	\N	res_parking.conf	0	\N
1038	default	parkext	700	\N	res_parking.conf	0	\N
1016	default	findslot	first	\N	res_parking.conf	0	\N
1039	res_pjsip	endpoint	realtime,ps_endpoints	\N	sorcery.conf	0	\N
1040	res_pjsip	auth	realtime,ps_auths	\N	sorcery.conf	0	\N
1043	res_pjsip	aor	realtime,ps_aors	\N	sorcery.conf	0	\N
1044	res_pjsip	domain_alias	realtime,ps_domain_aliases	\N	sorcery.conf	0	\N
1046	transport-udp	type	transport	\N	pjsip.conf	0	\N
1047	transport-udp	protocol	udp	\N	pjsip.conf	0	\N
1048	transport-udp	bind	0.0.0.0:5061	\N	pjsip.conf	0	\N
1069	general	enabled	no	\N	statsd.conf	0	\N
16	general	debug	yes	\N	manager.conf	0	\N
1009	default	parkingtime	600	\N	res_parking.conf	0	\N
1011	default	comebacktoorigin	yes	\N	res_parking.conf	0	\N
\.


--
-- TOC entry 3415 (class 0 OID 17963)
-- Dependencies: 213
-- Data for Name: cli_aliases_config; Type: TABLE DATA; Schema: public; Owner: asterisk_role
--

COPY cli_aliases_config (id, category, var_name, var_val, cat_metric, filename, commented, var_metric) FROM stdin;
1	asterisk_11_tpl(!)	features reload	module reload features	\N	cli_aliases.conf	0	\N
2	general	template	friendly	\N	cli_aliases.conf	0	\N
3	friendly	hangup request	channel request hangup	\N	cli_aliases.conf	0	\N
4	friendly	originate	channel originate	\N	cli_aliases.conf	0	\N
5	friendly	help	core show help	\N	cli_aliases.conf	0	\N
6	friendly	pri intense debug span	pri set debug intense span	\N	cli_aliases.conf	0	\N
7	friendly	reload	module reload	\N	cli_aliases.conf	0	\N
8	asterisk_1dot2_tpl(!)	show channeltypes	core show channeltypes	\N	cli_aliases.conf	0	\N
9	asterisk_1dot2_tpl(!)	show channeltype	core show channeltype	\N	cli_aliases.conf	0	\N
10	asterisk_1dot2_tpl(!)	show manager command	manager show command	\N	cli_aliases.conf	0	\N
11	asterisk_1dot2_tpl(!)	show manager commands	manager show commands	\N	cli_aliases.conf	0	\N
12	asterisk_1dot2_tpl(!)	show manager connected	manager show connected	\N	cli_aliases.conf	0	\N
13	asterisk_1dot2_tpl(!)	show manager eventq	manager show eventq	\N	cli_aliases.conf	0	\N
14	asterisk_1dot2_tpl(!)	rtp no debug	rtp set debug off	\N	cli_aliases.conf	0	\N
15	asterisk_1dot2_tpl(!)	rtp rtcp debug ip	rtcp debug ip	\N	cli_aliases.conf	0	\N
16	asterisk_1dot2_tpl(!)	rtp rtcp debug	rtcp debug	\N	cli_aliases.conf	0	\N
17	asterisk_1dot2_tpl(!)	rtp rtcp no debug	rtcp debug off	\N	cli_aliases.conf	0	\N
18	asterisk_1dot2_tpl(!)	rtp rtcp stats	rtcp stats	\N	cli_aliases.conf	0	\N
19	asterisk_1dot2_tpl(!)	rtp rtcp no stats	rtcp stats off	\N	cli_aliases.conf	0	\N
20	asterisk_1dot2_tpl(!)	stun no debug	stun debug off	\N	cli_aliases.conf	0	\N
21	asterisk_1dot2_tpl(!)	udptl no debug	udptl debug off	\N	cli_aliases.conf	0	\N
22	asterisk_1dot2_tpl(!)	show image formats	core show image formats	\N	cli_aliases.conf	0	\N
23	asterisk_1dot2_tpl(!)	show file formats	core show file formats	\N	cli_aliases.conf	0	\N
24	asterisk_1dot2_tpl(!)	show applications	core show applications	\N	cli_aliases.conf	0	\N
25	asterisk_1dot2_tpl(!)	show functions	core show functions	\N	cli_aliases.conf	0	\N
26	asterisk_1dot2_tpl(!)	show switches	core show switches	\N	cli_aliases.conf	0	\N
27	asterisk_1dot2_tpl(!)	show hints	core show hints	\N	cli_aliases.conf	0	\N
28	asterisk_1dot2_tpl(!)	show globals	core show globals	\N	cli_aliases.conf	0	\N
29	asterisk_1dot2_tpl(!)	show function	core show function	\N	cli_aliases.conf	0	\N
30	asterisk_1dot2_tpl(!)	show application	core show application	\N	cli_aliases.conf	0	\N
31	asterisk_1dot2_tpl(!)	set global	core set global	\N	cli_aliases.conf	0	\N
32	asterisk_1dot2_tpl(!)	show dialplan	dialplan show	\N	cli_aliases.conf	0	\N
33	asterisk_1dot2_tpl(!)	show codecs	core show codecs	\N	cli_aliases.conf	0	\N
34	asterisk_1dot2_tpl(!)	show audio codecs	core show audio codecs	\N	cli_aliases.conf	0	\N
35	asterisk_1dot2_tpl(!)	show video codecs	core show video codecs	\N	cli_aliases.conf	0	\N
36	asterisk_1dot2_tpl(!)	show image codecs	core show image codecs	\N	cli_aliases.conf	0	\N
37	asterisk_1dot2_tpl(!)	show codec	core show codec	\N	cli_aliases.conf	0	\N
38	asterisk_1dot2_tpl(!)	moh classes show	moh show classes	\N	cli_aliases.conf	0	\N
39	asterisk_1dot2_tpl(!)	moh files show	moh show files	\N	cli_aliases.conf	0	\N
40	asterisk_1dot2_tpl(!)	agi no debug	agi debug off	\N	cli_aliases.conf	0	\N
41	asterisk_1dot2_tpl(!)	show agi	agi show	\N	cli_aliases.conf	0	\N
42	asterisk_1dot2_tpl(!)	dump agihtml	agi dumphtml	\N	cli_aliases.conf	0	\N
43	asterisk_1dot2_tpl(!)	show features	feature show	\N	cli_aliases.conf	0	\N
44	asterisk_1dot2_tpl(!)	show indications	indication show	\N	cli_aliases.conf	0	\N
45	asterisk_1dot2_tpl(!)	answer	console answer	\N	cli_aliases.conf	0	\N
46	asterisk_1dot2_tpl(!)	hangup	console hangup	\N	cli_aliases.conf	0	\N
47	asterisk_1dot2_tpl(!)	flash	console flash	\N	cli_aliases.conf	0	\N
48	asterisk_1dot2_tpl(!)	dial	console dial	\N	cli_aliases.conf	0	\N
49	asterisk_1dot2_tpl(!)	mute	console mute	\N	cli_aliases.conf	0	\N
50	asterisk_1dot2_tpl(!)	unmute	console unmute	\N	cli_aliases.conf	0	\N
51	asterisk_1dot2_tpl(!)	transfer	console transfer	\N	cli_aliases.conf	0	\N
52	asterisk_1dot2_tpl(!)	send text	console send text	\N	cli_aliases.conf	0	\N
53	asterisk_1dot2_tpl(!)	autoanswer	console autoanswer	\N	cli_aliases.conf	0	\N
54	asterisk_1dot2_tpl(!)	oss boost	console boost	\N	cli_aliases.conf	0	\N
55	asterisk_1dot2_tpl(!)	console	console active	\N	cli_aliases.conf	0	\N
56	asterisk_1dot2_tpl(!)	save dialplan	dialplan save	\N	cli_aliases.conf	0	\N
57	asterisk_1dot2_tpl(!)	add extension	dialplan add extension	\N	cli_aliases.conf	0	\N
58	asterisk_1dot2_tpl(!)	remove extension	dialplan remove extension	\N	cli_aliases.conf	0	\N
59	asterisk_1dot2_tpl(!)	add ignorepat	dialplan add ignorepat	\N	cli_aliases.conf	0	\N
60	asterisk_1dot2_tpl(!)	remove ignorepat	dialplan remove ignorepat	\N	cli_aliases.conf	0	\N
61	asterisk_1dot2_tpl(!)	include context	dialplan add include	\N	cli_aliases.conf	0	\N
62	asterisk_1dot2_tpl(!)	dont include	dialplan remove include	\N	cli_aliases.conf	0	\N
63	asterisk_1dot2_tpl(!)	extensions reload	dialplan reload	\N	cli_aliases.conf	0	\N
64	asterisk_1dot2_tpl(!)	show translation	core show translation	\N	cli_aliases.conf	0	\N
65	asterisk_1dot2_tpl(!)	convert	file convert	\N	cli_aliases.conf	0	\N
66	asterisk_1dot2_tpl(!)	show queue	queue show	\N	cli_aliases.conf	0	\N
67	asterisk_1dot2_tpl(!)	add queue member	queue add member	\N	cli_aliases.conf	0	\N
68	asterisk_1dot2_tpl(!)	remove queue member	queue remove member	\N	cli_aliases.conf	0	\N
69	asterisk_1dot2_tpl(!)	ael no debug	ael nodebug	\N	cli_aliases.conf	0	\N
70	asterisk_1dot2_tpl(!)	sip debug	sip set debug	\N	cli_aliases.conf	0	\N
71	asterisk_1dot2_tpl(!)	sip no debug	sip set debug off	\N	cli_aliases.conf	0	\N
72	asterisk_1dot2_tpl(!)	show voicemail users	voicemail show users	\N	cli_aliases.conf	0	\N
73	asterisk_1dot2_tpl(!)	show voicemail zones	voicemail show zones	\N	cli_aliases.conf	0	\N
74	asterisk_1dot2_tpl(!)	show version files	core show file version	\N	cli_aliases.conf	0	\N
75	asterisk_1dot2_tpl(!)	show profile	core show profile	\N	cli_aliases.conf	0	\N
76	asterisk_1dot2_tpl(!)	clear profile	core clear profile	\N	cli_aliases.conf	0	\N
77	asterisk_1dot2_tpl(!)	soft hangup	channel request hangup	\N	cli_aliases.conf	0	\N
78	asterisk_1dot4_tpl(!)	cdr status	cdr show status	\N	cli_aliases.conf	0	\N
79	asterisk_1dot4_tpl(!)	rtp debug	rtp set debug on	\N	cli_aliases.conf	0	\N
80	asterisk_1dot4_tpl(!)	rtcp debug	rtcp set debug on	\N	cli_aliases.conf	0	\N
81	asterisk_1dot4_tpl(!)	rtcp stats	rtcp set stats on	\N	cli_aliases.conf	0	\N
82	asterisk_1dot4_tpl(!)	stun debug	stun set debug on	\N	cli_aliases.conf	0	\N
83	asterisk_1dot4_tpl(!)	core show globals	dialplan show globals	\N	cli_aliases.conf	0	\N
84	asterisk_1dot4_tpl(!)	core set global	dialplan set global	\N	cli_aliases.conf	0	\N
85	asterisk_1dot4_tpl(!)	core set chanvar	dialplan set chanvar	\N	cli_aliases.conf	0	\N
86	asterisk_1dot4_tpl(!)	agi dumphtml	agi dump html	\N	cli_aliases.conf	0	\N
87	asterisk_1dot4_tpl(!)	funcdevstate list	devstate list	\N	cli_aliases.conf	0	\N
88	asterisk_1dot4_tpl(!)	sip history	sip set history on	\N	cli_aliases.conf	0	\N
89	asterisk_1dot4_tpl(!)	skinny debug	skinny set debug on	\N	cli_aliases.conf	0	\N
90	asterisk_1dot4_tpl(!)	mgcp set debug	mgcp set debug on	\N	cli_aliases.conf	0	\N
91	asterisk_1dot4_tpl(!)	abort shutdown	core abort shutdown	\N	cli_aliases.conf	0	\N
92	asterisk_1dot4_tpl(!)	stop now	core stop now	\N	cli_aliases.conf	0	\N
93	asterisk_1dot4_tpl(!)	stop gracefully	core stop gracefully	\N	cli_aliases.conf	0	\N
94	asterisk_1dot4_tpl(!)	stop when convenient	core stop when convenient	\N	cli_aliases.conf	0	\N
96	asterisk_1dot4_tpl(!)	restart gracefully	core restart gracefully	\N	cli_aliases.conf	0	\N
97	asterisk_1dot4_tpl(!)	restart when convenient	core restart when convenient	\N	cli_aliases.conf	0	\N
98	asterisk_1dot4_tpl(!)	soft hangup	channel request hangup	\N	cli_aliases.conf	0	\N
95	friendly	restart now	core restart now	\N	cli_aliases.conf	0	\N
\.


--
-- TOC entry 3421 (class 0 OID 18055)
-- Dependencies: 221
-- Data for Name: codec_config; Type: TABLE DATA; Schema: public; Owner: asterisk_role
--

COPY codec_config (id, category, var_name, var_val, cat_metric, filename, commented, var_metric) FROM stdin;
1	silk24	fec	true	\N	codecs.conf	0	\N
2	speex	complexity	2	\N	codecs.conf	0	\N
3	speex	enhancement	true	\N	codecs.conf	0	\N
4	speex	vad	true	\N	codecs.conf	0	\N
5	speex	vbr	true	\N	codecs.conf	0	\N
6	speex	abr	0	\N	codecs.conf	0	\N
7	speex	vbr_quality	4	\N	codecs.conf	0	\N
8	speex	dtx	false	\N	codecs.conf	0	\N
9	speex	preprocess	false	\N	codecs.conf	0	\N
10	silk8	type	silk	\N	codecs.conf	0	\N
11	silk8	samprate	8000	\N	codecs.conf	0	\N
12	silk8	fec	true	\N	codecs.conf	0	\N
13	silk8	packetloss_percentage	10	\N	codecs.conf	0	\N
14	silk8	maxbitrate	10000	\N	codecs.conf	0	\N
15	silk12	type	silk	\N	codecs.conf	0	\N
16	silk12	samprate	12000	\N	codecs.conf	0	\N
17	silk12	maxbitrate	12000	\N	codecs.conf	0	\N
18	silk12	fec	true	\N	codecs.conf	0	\N
19	silk12	packetloss_percentage	10	\N	codecs.conf	0	\N
20	silk16	type	silk	\N	codecs.conf	0	\N
21	silk16	samprate	16000	\N	codecs.conf	0	\N
22	silk16	maxbitrate	20000	\N	codecs.conf	0	\N
23	silk16	fec	true	\N	codecs.conf	0	\N
24	silk16	packetloss_percentage	10	\N	codecs.conf	0	\N
25	silk24	type	silk	\N	codecs.conf	0	\N
26	silk24	samprate	24000	\N	codecs.conf	0	\N
27	silk24	maxbitrate	30000	\N	codecs.conf	0	\N
28	silk24	packetloss_percentage	10	\N	codecs.conf	0	\N
29	speex	pp_agc	false	\N	codecs.conf	0	\N
30	speex	pp_agc_level	8000	\N	codecs.conf	0	\N
31	speex	pp_denoise	false	\N	codecs.conf	0	\N
32	speex	pp_dereverb	false	\N	codecs.conf	0	\N
33	speex	pp_dereverb_decay	0.4	\N	codecs.conf	0	\N
34	speex	pp_dereverb_level	0.3	\N	codecs.conf	0	\N
35	plc	genericplc	true	\N	codecs.conf	0	\N
36	speex	quality	3	\N	codecs.conf	0	\N
37	speex	pp_vad	false	\N	codecs.conf	0	\N
\.


--
-- TOC entry 3416 (class 0 OID 17970)
-- Dependencies: 214
-- Data for Name: conference_config; Type: TABLE DATA; Schema: public; Owner: asterisk_role
--

COPY conference_config (id, category, var_name, var_val, cat_metric, filename, commented, var_metric) FROM stdin;
1	admin_menu	6	increase_listening_volume	\N	confbridge.conf	0	\N
2	admin_menu	type	menu	\N	confbridge.conf	0	\N
3	user_menu	type	menu	\N	confbridge.conf	0	\N
4	user_menu	*	playback_and_continue(conf-usermenu)	\N	confbridge.conf	0	\N
5	user_menu	*1	toggle_mute	\N	confbridge.conf	0	\N
6	user_menu	1	toggle_mute	\N	confbridge.conf	0	\N
7	user_menu	*4	decrease_listening_volume	\N	confbridge.conf	0	\N
8	user_menu	4	decrease_listening_volume	\N	confbridge.conf	0	\N
9	user_menu	*6	increase_listening_volume	\N	confbridge.conf	0	\N
10	user_menu	6	increase_listening_volume	\N	confbridge.conf	0	\N
11	user_menu	*7	decrease_talking_volume	\N	confbridge.conf	0	\N
12	user_menu	7	decrease_talking_volume	\N	confbridge.conf	0	\N
13	user_menu	*8	leave_conference	\N	confbridge.conf	0	\N
14	user_menu	8	leave_conference	\N	confbridge.conf	0	\N
15	user_menu	*9	increase_talking_volume	\N	confbridge.conf	0	\N
16	user_menu	9	increase_talking_volume	\N	confbridge.conf	0	\N
17	admin_menu	*6	increase_listening_volume	\N	confbridge.conf	0	\N
18	admin_menu	4	decrease_listening_volume	\N	confbridge.conf	0	\N
19	admin_menu	*4	decrease_listening_volume	\N	confbridge.conf	0	\N
20	admin_menu	3	admin_kick_last	\N	confbridge.conf	0	\N
21	admin_menu	*3	admin_kick_last	\N	confbridge.conf	0	\N
22	admin_menu	2	admin_toggle_conference_lock	\N	confbridge.conf	0	\N
23	admin_menu	*2	admin_toggle_conference_lock	\N	confbridge.conf	0	\N
24	admin_menu	1	toggle_mute	\N	confbridge.conf	0	\N
25	admin_menu	*1	toggle_mute	\N	confbridge.conf	0	\N
26	admin_menu	*	playback_and_continue(conf-adminmenu)	\N	confbridge.conf	0	\N
27	default_bridge	type	bridge	\N	confbridge.conf	0	\N
28	default_user	type	user	\N	confbridge.conf	0	\N
29	admin_menu	9	increase_talking_volume	\N	confbridge.conf	0	\N
30	admin_menu	*9	increase_talking_volume	\N	confbridge.conf	0	\N
31	admin_menu	8	no_op	\N	confbridge.conf	0	\N
32	admin_menu	*8	no_op	\N	confbridge.conf	0	\N
33	admin_menu	7	decrease_talking_volume	\N	confbridge.conf	0	\N
34	admin_menu	*7	decrease_talking_volume	\N	confbridge.conf	0	\N
36	general	sound_only_person	\N	\N	confbridge.conf	0	\N
\.


--
-- TOC entry 3417 (class 0 OID 17977)
-- Dependencies: 215
-- Data for Name: followme_config; Type: TABLE DATA; Schema: public; Owner: asterisk_role
--

COPY followme_config (id, category, var_name, var_val, cat_metric, filename, commented, var_metric) FROM stdin;
1	default	number	>01233456,25	\N	followme.conf	0	\N
2	general	takecall	1	\N	followme.conf	0	\N
3	general	declinecall	2	\N	followme.conf	0	\N
4	general	call_from_prompt	followme/call-from	\N	followme.conf	0	\N
5	general	norecording_prompt	followme/no-recording	\N	followme.conf	0	\N
6	general	options_prompt	followme/options	\N	followme.conf	0	\N
7	general	pls_hold_prompt	followme/pls-hold-while-try	\N	followme.conf	0	\N
8	general	status_prompt	followme/status	\N	followme.conf	0	\N
9	general	sorry_prompt	followme/sorry	\N	followme.conf	0	\N
10	default	musicclass	default	\N	followme.conf	0	\N
11	default	context	default	\N	followme.conf	0	\N
12	default	takecall	1	\N	followme.conf	0	\N
13	default	declinecall	2	\N	followme.conf	0	\N
14	default	call_from_prompt	followme/call-from	\N	followme.conf	0	\N
15	default	norecording_prompt	followme/no-recording	\N	followme.conf	0	\N
16	default	options_prompt	followme/options	\N	followme.conf	0	\N
17	default	pls_hold_prompt	followme/pls-hold-while-try	\N	followme.conf	0	\N
18	default	status_prompt	followme/status	\N	followme.conf	0	\N
19	default	sorry_prompt	followme/sorry	\N	followme.conf	0	\N
20	general	featuredigittimeout	5000	\N	followme.conf	0	\N
\.


--
-- TOC entry 3424 (class 0 OID 28039)
-- Dependencies: 268
-- Data for Name: interface_config; Type: TABLE DATA; Schema: public; Owner: asterisk_role
--

BEGIN;
INSERT INTO "public"."interface_config" VALUES ('1', 'voicemail', 'base_directory', '/switchboard/voicemail');
INSERT INTO "public"."interface_config" VALUES ('2', 'recording', 'base_directory', '/switchboard/recordings');
INSERT INTO "public"."interface_config" VALUES ('3', 'dialer', 'international_dial_out_code', '011');
INSERT INTO "public"."interface_config" VALUES ('4', 'dialplan', 'internal_context', 'agents');
INSERT INTO "public"."interface_config" VALUES ('5', 'dialplan', 'trunk_context', 'from-peer');
INSERT INTO "public"."interface_config" VALUES ('6', 'dialplan', 'agent_dest_appdata', 'agents,AGENTID,1');
INSERT INTO "public"."interface_config" VALUES ('7', 'dialplan', 'queue_dest_appdata', 'queues,QUEUENAME,1');
INSERT INTO "public"."interface_config" VALUES ('8', 'voicemail', 'folders', 'INBOX,Old,DELETED');
INSERT INTO "public"."interface_config" VALUES ('9', 'voicemail', 'display_folders', 'INBOX,Old');
INSERT INTO "public"."interface_config" VALUES ('10', 'voicemail', 'email_host', 'MISSING_VALUE');
INSERT INTO "public"."interface_config" VALUES ('11', 'mail', 'outbound_mail_host', 'MISSING_VALUE');
INSERT INTO "public"."interface_config" VALUES ('12', 'mail', 'from_address', 'MISSING_VALUE');
INSERT INTO "public"."interface_config" VALUES ('13', 'mail', 'call_record_report_receipients', 'MISSING_VALUE');
INSERT INTO "public"."interface_config" VALUES ('14', 'dialer', 'dial_out_trunk', 'impact-25');
INSERT INTO "public"."interface_config" VALUES ('15', 'call_record', 'ignore_list', '');
INSERT INTO "public"."interface_config" VALUES ('16', 'contacts', 'failover_import', '5940');
INSERT INTO "public"."interface_config" VALUES ('17', 'general', 'asterisk_host', 'vagrant.asterisk');
INSERT INTO "public"."interface_config" VALUES ('18', 'manager', 'username', 'switchboard');
INSERT INTO "public"."interface_config" VALUES ('19', 'manager', 'password', 'password');
COMMIT;

--
-- TOC entry 3423 (class 0 OID 27718)
-- Dependencies: 260
-- Data for Name: ps_config; Type: TABLE DATA; Schema: public; Owner: asterisk_role
--

COPY ps_config (id, category, var_name, var_value, cat_metric, filename, commented, var_metric) FROM stdin;
\.


--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 259
-- Name: ps_config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: asterisk_role
--

SELECT pg_catalog.setval('ps_config_id_seq', 1, false);


--
-- TOC entry 3418 (class 0 OID 17996)
-- Dependencies: 218
-- Data for Name: say_config; Type: TABLE DATA; Schema: public; Owner: asterisk_role
--

COPY say_config (id, category, var_name, var_val, cat_metric, filename, commented, var_metric) FROM stdin;
1	general	mode	new	\N	say.conf	\N	\N
2	digit-base	_digit:[0-9]	digits/${SAY}	\N	say.conf	\N	\N
3	digit-base	_digit:[-]	letters/dash	\N	say.conf	\N	\N
4	digit-base	_digit:[*]	letters/star	\N	say.conf	\N	\N
5	digit-base	_digit:[@]	letters/at	\N	say.conf	\N	\N
6	digit-base	_digit:[0-9].	digit:${SAY:0:1}, digit:${SAY:1}	\N	say.conf	\N	\N
\.


--
-- TOC entry 3419 (class 0 OID 18004)
-- Dependencies: 219
-- Data for Name: sip_config; Type: TABLE DATA; Schema: public; Owner: asterisk_role
--

COPY sip_config (id, category, var_name, var_val, cat_metric, filename, commented, var_metric) FROM stdin;
2	general	allowoverlap	yes	\N	sip.conf	0	\N
3	general	udpbindaddr	0.0.0.0:5060	\N	sip.conf	0	\N
4	general	tcpenable	yes	\N	sip.conf	0	\N
5	general	tcpbindaddr	0.0.0.0:5060	\N	sip.conf	0	\N
9	general	srvlookup	no	\N	sip.conf	0	\N
10	general	vmexten	asterisk	\N	sip.conf	0	\N
11	general	authfailureevents	yes	\N	sip.conf	0	\N
14	general	rtptimeout	30	\N	sip.conf	0	\N
15	general	rtpholdtimeout	300	\N	sip.conf	0	\N
17	general	rtsavesysname	yes	\N	sip.conf	0	\N
18	general	rtupdate	yes	\N	sip.conf	0	\N
33	general	localnet	172.16.90.0/24	\N	sip.conf	0	\N
34	general	localnet	10.0.0.0/8	\N	sip.conf	0	\N
16	general	rtcachefriends	yes	\N	sip.conf	0	\N
35	general	rtautoclear	yes	\N	sip.conf	0	\N
36	general	qualify	yes	\N	sip.conf	0	\N
37	general	videosupport	yes	\N	sip.conf	0	\N
38	general	callevents	yes	\N	sip.conf	0	\N
39	general	rtpkeepalive	5	\N	sip.conf	0	\N
1	general	context	from-peer	\N	sip.conf	0	\N
41	general	callcounter	yes	\N	sip.conf	0	\N
42	general	language	en	\N	sip.conf	0	\N
43	general	callerid	"Prominic.NET" <2173562888>	\N	sip.conf	0	\N
44	general	notifyhold	yes	\N	sip.conf	0	\N
40	general	allow	g722,ulaw,alaw,h263	\N	sip.conf	0	\N
8	general	transport	udp,tcp	\N	sip.conf	0	\N
45	general	faxdetect	yes	\N	sip.conf	0	\N
\.


--
-- TOC entry 3420 (class 0 OID 18019)
-- Dependencies: 220
-- Data for Name: voicemail_config; Type: TABLE DATA; Schema: public; Owner: asterisk_role
--

COPY voicemail_config (id, category, var_name, var_val, cat_metric, filename, commented, var_metric) FROM stdin;
3	zonemessages	central	America/Chicago|'vm-received' Q 'digits/at' IMp	\N	voicemail.conf	0	\N
4	zonemessages	central24	America/Chicago|'vm-received' q 'digits/at' H N 'hours'	\N	voicemail.conf	0	\N
5	zonemessages	military	Zulu|'vm-received' q 'digits/at' H N 'hours' 'phonetic/z_p'	\N	voicemail.conf	0	\N
7	zonemessages	european	Europe/Copenhagen|'vm-received' a d b 'digits/at' HM	\N	voicemail.conf	0	\N
10	general	attach	yes	\N	voicemail.conf	0	\N
11	general	skipms	3000	\N	voicemail.conf	0	\N
14	general	emaildateformat	%A, %B %d, %Y at %r	\N	voicemail.conf	0	\N
15	general	pagerdateformat	%A, %B %d, %Y at %r	\N	voicemail.conf	0	\N
16	general	sendvoicemail	yes	\N	voicemail.conf	0	\N
17	zonemessages	eastern	America/New_York|'vm-received' Q 'digits/at' IMp	\N	voicemail.conf	0	\N
18	general	usedirectory	yes	\N	voicemail.conf	0	\N
20	general	maxlogins	3	\N	voicemail.conf	0	\N
29	general	odbctable	voicemail_messages	\N	voicemail.conf	0	\N
28	general	odbcstorage	asterisk	\N	voicemail.conf	0	\N
9	general	maxsecs	240	\N	voicemail.conf	0	\N
53	general	cidinternalcontexts	agents	\N	voicemail.conf	0	\N
54	general	saycid	yes	\N	voicemail.conf	0	\N
55	general	pbxskip	yes	\N	voicemail.conf	0	\N
57	general	nextaftercmd	yes	\N	voicemail.conf	0	\N
21	general	maxgreet	20	\N	voicemail.conf	0	\N
19	general	silencethreshold	10	\N	voicemail.conf	0	\N
12	general	maxsilence	8	\N	voicemail.conf	0	\N
2	general	format	wav	\N	voicemail.conf	0	\N
8	general	minsecs	2	\N	voicemail.conf	0	\N
\.


--
-- TOC entry 3275 (class 2606 OID 18029)
-- Name: asterisk_config asterisk_config_pkey; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY asterisk_config
    ADD CONSTRAINT asterisk_config_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 18031)
-- Name: cli_aliases_config cli_aliases_config_pkey; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY cli_aliases_config
    ADD CONSTRAINT cli_aliases_config_pkey PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 18063)
-- Name: codec_config codec_config_pkey; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY codec_config
    ADD CONSTRAINT codec_config_pkey PRIMARY KEY (id);


--
-- TOC entry 3279 (class 2606 OID 18033)
-- Name: conference_config conference_config_pkey; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY conference_config
    ADD CONSTRAINT conference_config_pkey PRIMARY KEY (id);


--
-- TOC entry 3281 (class 2606 OID 18035)
-- Name: followme_config followme_config_pkey; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY followme_config
    ADD CONSTRAINT followme_config_pkey PRIMARY KEY (id);


--
-- TOC entry 3293 (class 2606 OID 28046)
-- Name: interface_config interface_config_pkey; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY interface_config
    ADD CONSTRAINT interface_config_pkey PRIMARY KEY (id);


--
-- TOC entry 3291 (class 2606 OID 27726)
-- Name: ps_config ps_config_pkey; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY ps_config
    ADD CONSTRAINT ps_config_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 18039)
-- Name: say_config say_config_pkey; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY say_config
    ADD CONSTRAINT say_config_pkey PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 18041)
-- Name: sip_config sip_config_pkey; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY sip_config
    ADD CONSTRAINT sip_config_pkey PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 28048)
-- Name: interface_config uk48340da5bce7fbd94d3b9a4a702f; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY interface_config
    ADD CONSTRAINT uk48340da5bce7fbd94d3b9a4a702f UNIQUE (category, property);


--
-- TOC entry 3287 (class 2606 OID 18047)
-- Name: voicemail_config voicemail_config_pkey; Type: CONSTRAINT; Schema: public; Owner: asterisk_role
--

ALTER TABLE ONLY voicemail_config
    ADD CONSTRAINT voicemail_config_pkey PRIMARY KEY (id);

-- Completed on 2018-10-01 10:19:55 CDT

--
-- PostgreSQL database dump complete
--
