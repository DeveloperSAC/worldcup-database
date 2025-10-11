--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

<<<<<<< HEAD
DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

=======
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
SET default_tablespace = '';

SET default_table_access_method = heap;

--
<<<<<<< HEAD
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
=======
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


<<<<<<< HEAD
ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
=======
ALTER TABLE public.games OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


<<<<<<< HEAD
ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
=======
ALTER TABLE public.games_game_id_seq OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
<<<<<<< HEAD
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
=======
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


<<<<<<< HEAD
ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
=======
ALTER TABLE public.teams OWNER TO postgres;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


<<<<<<< HEAD
ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
=======
ALTER TABLE public.teams_team_id_seq OWNER TO postgres;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
<<<<<<< HEAD
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
=======
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
<<<<<<< HEAD
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
=======
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
<<<<<<< HEAD
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 1, 2, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 3, 4, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 2, 4, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 1, 3, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 2, 5, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 4, 6, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 3, 7, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 1, 8, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 4, 9, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 6, 10, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 3, 11, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 7, 12, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 2, 13, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 5, 14, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 8, 15, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 1, 16, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 17, 16, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 18, 7, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 16, 18, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 17, 7, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 18, 19, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 16, 3, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 7, 9, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 17, 1, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 7, 20, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 9, 8, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 1, 21, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 17, 22, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 18, 12, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 19, 23, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 16, 10, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 3, 24, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Croatia');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'England');
INSERT INTO public.teams VALUES (5, 'Russia');
INSERT INTO public.teams VALUES (6, 'Sweden');
INSERT INTO public.teams VALUES (7, 'Brazil');
INSERT INTO public.teams VALUES (8, 'Uruguay');
INSERT INTO public.teams VALUES (9, 'Colombia');
INSERT INTO public.teams VALUES (10, 'Switzerland');
INSERT INTO public.teams VALUES (11, 'Japan');
INSERT INTO public.teams VALUES (12, 'Mexico');
INSERT INTO public.teams VALUES (13, 'Denmark');
INSERT INTO public.teams VALUES (14, 'Spain');
INSERT INTO public.teams VALUES (15, 'Portugal');
INSERT INTO public.teams VALUES (16, 'Argentina');
INSERT INTO public.teams VALUES (17, 'Germany');
INSERT INTO public.teams VALUES (18, 'Netherlands');
INSERT INTO public.teams VALUES (19, 'Costa Rica');
INSERT INTO public.teams VALUES (20, 'Chile');
INSERT INTO public.teams VALUES (21, 'Nigeria');
INSERT INTO public.teams VALUES (22, 'Algeria');
INSERT INTO public.teams VALUES (23, 'Greece');
INSERT INTO public.teams VALUES (24, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
=======
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) FROM stdin;
1	2018	Final	1	2	4	2
2	2018	Third Place	3	4	2	0
3	2018	Semi-Final	1	3	1	0
4	2018	Semi-Final	2	4	2	1
5	2018	Quarter-Final	1	10	2	0
6	2018	Quarter-Final	3	12	2	1
7	2018	Quarter-Final	2	14	3	2
8	2018	Quarter-Final	4	16	2	0
9	2018	Eighth-Final	1	18	4	3
10	2018	Eighth-Final	10	20	2	1
11	2018	Eighth-Final	3	22	3	2
12	2018	Eighth-Final	12	24	2	0
13	2018	Eighth-Final	2	26	2	1
14	2018	Eighth-Final	14	28	2	1
15	2018	Eighth-Final	4	30	2	1
16	2018	Eighth-Final	16	32	1	0
17	2014	Final	33	18	1	0
18	2014	Third Place	35	12	3	0
19	2014	Semi-Final	33	12	7	1
20	2014	Semi-Final	18	35	1	0
21	2014	Quarter-Final	33	1	1	0
22	2014	Quarter-Final	12	30	2	1
23	2014	Quarter-Final	18	3	1	0
24	2014	Quarter-Final	35	48	1	0
25	2014	Eighth-Final	33	50	2	1
26	2014	Eighth-Final	1	52	2	0
27	2014	Eighth-Final	12	54	2	1
28	2014	Eighth-Final	30	10	2	0
29	2014	Eighth-Final	18	32	1	0
30	2014	Eighth-Final	3	60	2	1
31	2014	Eighth-Final	35	24	2	1
32	2014	Eighth-Final	48	64	2	1
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (team_id, name) FROM stdin;
1	France
2	Croatia
3	Belgium
4	England
10	Uruguay
12	Brazil
14	Russia
16	Sweden
18	Argentina
20	Portugal
22	Japan
24	Mexico
26	Denmark
28	Spain
30	Colombia
32	Switzerland
33	Germany
35	Netherlands
48	Costa Rica
50	Algeria
52	Nigeria
54	Chile
60	United States
64	Greece
\.


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
<<<<<<< HEAD
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
=======
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 64, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
<<<<<<< HEAD
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
=======
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
<<<<<<< HEAD
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
=======
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
<<<<<<< HEAD
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
=======
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
<<<<<<< HEAD
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
=======
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
<<<<<<< HEAD
=======
-- Name: TABLE games; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.games TO freecodecamp;


--
-- Name: SEQUENCE games_game_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.games_game_id_seq TO freecodecamp;


--
-- Name: TABLE teams; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.teams TO freecodecamp;


--
-- Name: SEQUENCE teams_team_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.teams_team_id_seq TO freecodecamp;


--
>>>>>>> 54cd244c8a391328b74459bf407d899990c53b46
-- PostgreSQL database dump complete
--

