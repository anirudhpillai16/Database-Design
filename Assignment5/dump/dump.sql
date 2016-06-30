--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: Cricket; Type: SCHEMA; Schema: -; Owner: aanirudh
--

CREATE SCHEMA "Cricket";


ALTER SCHEMA "Cricket" OWNER TO aanirudh;

--
-- Name: SCHEMA "Cricket"; Type: COMMENT; Schema: -; Owner: aanirudh
--

COMMENT ON SCHEMA "Cricket" IS 'Assignment 5';


SET search_path = "Cricket", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: batsman; Type: TABLE; Schema: Cricket; Owner: aanirudh; Tablespace: 
--

CREATE TABLE batsman (
    name character varying(255),
    type character varying(255),
    ratings integer
);


ALTER TABLE "Cricket".batsman OWNER TO aanirudh;

--
-- Name: bowler; Type: TABLE; Schema: Cricket; Owner: aanirudh; Tablespace: 
--

CREATE TABLE bowler (
    name character varying(255),
    type character varying(255),
    ratings integer
);


ALTER TABLE "Cricket".bowler OWNER TO aanirudh;

--
-- Name: continent; Type: TABLE; Schema: Cricket; Owner: aanirudh; Tablespace: 
--

CREATE TABLE continent (
    country character varying(255),
    capital character varying(255),
    continent character varying(255)
);


ALTER TABLE "Cricket".continent OWNER TO aanirudh;

--
-- Name: nations; Type: TABLE; Schema: Cricket; Owner: aanirudh; Tablespace: 
--

CREATE TABLE nations (
    country character varying(255),
    rank integer,
    matches integer,
    points integer,
    ratings integer
);


ALTER TABLE "Cricket".nations OWNER TO aanirudh;

--
-- Data for Name: batsman; Type: TABLE DATA; Schema: Cricket; Owner: aanirudh
--

COPY batsman (name, type, ratings) FROM stdin;
Steve Smith	Right Hand Batsman	112
Joe Root	Right Hand Batsman	102
Kane Williamson	Right Hand Batsman	96
Hashim Amla	Right Hand Batsman	109
Younus Khan	Right Hand Batsman	106
AB de Villiers	Right Hand Batsman	109
Adam Vogues	Right Hand Batsman	112
Angelo Matthews	Right Hand Batsman	89
David Warner	Left Hand Batsman	112
Misbah ul Haq	Right Hand Batsman	106
\.


--
-- Data for Name: bowler; Type: TABLE DATA; Schema: Cricket; Owner: aanirudh
--

COPY bowler (name, type, ratings) FROM stdin;
Stuart Broad	Right Arm Fast	102
R Ashwin	Right Arm Off Spin	110
Yasir Shah	Right Arm Fast	106
Dale Steyn	Right Arm Fast	109
James Anderson	Right Arm Fast	102
Ravindra Jadeja	Left Arm Off Spin	110
Trent Boult	Left Arm Fast	96
JR Hazelwood	Right Arm Fast	112
Morne Morkel	Right Arm Fast	109
Vernon Philander	Right Arm Fast	109
\.


--
-- Data for Name: continent; Type: TABLE DATA; Schema: Cricket; Owner: aanirudh
--

COPY continent (country, capital, continent) FROM stdin;
Australia	Canberra	Australian Continent
Bangladesh	Dhaka	Asia
England	London	Europe
India	New Delhi	Asia
New Zealand	Wellington	Australian Continent
Pakistan	Islamabad	Asia
South Africa	Cape Town	Africa
Srilanka	Colombo	Asia
West Indies	Trinidad	North America
Zimbabwe	Harare	Africa
\.


--
-- Data for Name: nations; Type: TABLE DATA; Schema: Cricket; Owner: aanirudh
--

COPY nations (country, rank, matches, points, ratings) FROM stdin;
Australia	1	43	4823	112
India	2	32	3535	110
South Africa	3	34	3703	109
Pakistan	4	28	2977	106
England	5	45	4610	102
New Zealand	6	39	3755	96
Srilanka	7	35	3123	89
West Indies	8	33	2504	76
Bangladesh	9	22	1026	47
Zimbabwe	10	10	53	5
\.


--
-- PostgreSQL database dump complete
--

