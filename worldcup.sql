--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(30) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 'Final', 97, 98, 4, 2, 1);
INSERT INTO public.games VALUES (2018, 'Third Place', 99, 100, 2, 0, 2);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 98, 100, 2, 1, 3);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 97, 99, 1, 0, 4);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 98, 101, 3, 2, 5);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 100, 102, 2, 0, 6);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 99, 103, 2, 1, 7);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 97, 104, 2, 0, 8);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 100, 105, 2, 1, 9);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 102, 106, 1, 0, 10);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 99, 107, 3, 2, 11);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 103, 108, 2, 0, 12);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 98, 109, 2, 1, 13);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 101, 110, 2, 1, 14);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 104, 111, 2, 1, 15);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 97, 112, 4, 3, 16);
INSERT INTO public.games VALUES (2014, 'Final', 113, 112, 1, 0, 17);
INSERT INTO public.games VALUES (2014, 'Third Place', 114, 103, 3, 0, 18);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 112, 114, 1, 0, 19);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 113, 103, 7, 1, 20);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 114, 115, 1, 0, 21);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 112, 99, 1, 0, 22);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 103, 105, 2, 1, 23);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 113, 97, 1, 0, 24);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 103, 116, 2, 1, 25);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 105, 104, 2, 0, 26);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 97, 117, 2, 0, 27);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 113, 118, 2, 1, 28);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 114, 108, 2, 1, 29);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 115, 119, 2, 1, 30);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 112, 106, 1, 0, 31);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 99, 120, 2, 1, 32);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 97);
INSERT INTO public.teams VALUES ('Croatia', 98);
INSERT INTO public.teams VALUES ('Belgium', 99);
INSERT INTO public.teams VALUES ('England', 100);
INSERT INTO public.teams VALUES ('Russia', 101);
INSERT INTO public.teams VALUES ('Sweden', 102);
INSERT INTO public.teams VALUES ('Brazil', 103);
INSERT INTO public.teams VALUES ('Uruguay', 104);
INSERT INTO public.teams VALUES ('Colombia', 105);
INSERT INTO public.teams VALUES ('Switzerland', 106);
INSERT INTO public.teams VALUES ('Japan', 107);
INSERT INTO public.teams VALUES ('Mexico', 108);
INSERT INTO public.teams VALUES ('Denmark', 109);
INSERT INTO public.teams VALUES ('Spain', 110);
INSERT INTO public.teams VALUES ('Portugal', 111);
INSERT INTO public.teams VALUES ('Argentina', 112);
INSERT INTO public.teams VALUES ('Germany', 113);
INSERT INTO public.teams VALUES ('Netherlands', 114);
INSERT INTO public.teams VALUES ('Costa Rica', 115);
INSERT INTO public.teams VALUES ('Chile', 116);
INSERT INTO public.teams VALUES ('Nigeria', 117);
INSERT INTO public.teams VALUES ('Algeria', 118);
INSERT INTO public.teams VALUES ('Greece', 119);
INSERT INTO public.teams VALUES ('United States', 120);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 120, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

