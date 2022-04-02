--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(50) NOT NULL,
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

INSERT INTO public.games VALUES (2018, 'Final', 51, 52, 4, 2, 1);
INSERT INTO public.games VALUES (2018, 'Third Place', 53, 54, 2, 0, 2);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 52, 54, 2, 1, 3);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 51, 53, 1, 0, 4);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 52, 55, 3, 2, 5);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 54, 56, 2, 0, 6);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 53, 57, 2, 1, 7);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 51, 58, 2, 0, 8);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 54, 59, 2, 1, 9);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 56, 60, 1, 0, 10);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 53, 61, 3, 2, 11);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 57, 62, 2, 0, 12);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 52, 63, 2, 1, 13);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 55, 64, 2, 1, 14);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 58, 65, 2, 1, 15);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 51, 66, 4, 3, 16);
INSERT INTO public.games VALUES (2014, 'Final', 67, 66, 1, 0, 17);
INSERT INTO public.games VALUES (2014, 'Third Place', 68, 57, 3, 0, 18);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 66, 68, 1, 0, 19);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 67, 57, 7, 1, 20);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 68, 69, 1, 0, 21);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 66, 53, 1, 0, 22);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 57, 59, 2, 1, 23);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 67, 51, 1, 0, 24);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 57, 70, 2, 1, 25);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 59, 58, 2, 0, 26);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 51, 71, 2, 0, 27);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 67, 72, 2, 1, 28);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 68, 62, 2, 1, 29);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 69, 73, 2, 1, 30);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 66, 60, 1, 0, 31);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 53, 74, 2, 1, 32);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 51);
INSERT INTO public.teams VALUES ('Croatia', 52);
INSERT INTO public.teams VALUES ('Belgium', 53);
INSERT INTO public.teams VALUES ('England', 54);
INSERT INTO public.teams VALUES ('Russia', 55);
INSERT INTO public.teams VALUES ('Sweden', 56);
INSERT INTO public.teams VALUES ('Brazil', 57);
INSERT INTO public.teams VALUES ('Uruguay', 58);
INSERT INTO public.teams VALUES ('Colombia', 59);
INSERT INTO public.teams VALUES ('Switzerland', 60);
INSERT INTO public.teams VALUES ('Japan', 61);
INSERT INTO public.teams VALUES ('Mexico', 62);
INSERT INTO public.teams VALUES ('Denmark', 63);
INSERT INTO public.teams VALUES ('Spain', 64);
INSERT INTO public.teams VALUES ('Portugal', 65);
INSERT INTO public.teams VALUES ('Argentina', 66);
INSERT INTO public.teams VALUES ('Germany', 67);
INSERT INTO public.teams VALUES ('Netherlands', 68);
INSERT INTO public.teams VALUES ('Costa Rica', 69);
INSERT INTO public.teams VALUES ('Chile', 70);
INSERT INTO public.teams VALUES ('Nigeria', 71);
INSERT INTO public.teams VALUES ('Algeria', 72);
INSERT INTO public.teams VALUES ('Greece', 73);
INSERT INTO public.teams VALUES ('United States', 74);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 74, true);


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

