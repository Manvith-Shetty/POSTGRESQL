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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL,
    games_played character varying(50),
    best_game character varying(50)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1712733362569', NULL, NULL);
INSERT INTO public.users VALUES (2, 'user_1712733362568', NULL, NULL);
INSERT INTO public.users VALUES (3, 'user_1712733410063', NULL, NULL);
INSERT INTO public.users VALUES (4, 'user_1712733410062', NULL, NULL);
INSERT INTO public.users VALUES (5, 'user_1712733431752', NULL, NULL);
INSERT INTO public.users VALUES (6, 'user_1712733431751', NULL, NULL);
INSERT INTO public.users VALUES (7, 'user_1712733569909', NULL, NULL);
INSERT INTO public.users VALUES (8, 'user_1712733569908', NULL, NULL);
INSERT INTO public.users VALUES (9, 'Manvith', '2', NULL);
INSERT INTO public.users VALUES (11, 'user_1712733683828', '2', '92');
INSERT INTO public.users VALUES (10, 'user_1712733683829', '5', '225');
INSERT INTO public.users VALUES (32, 'user_1712734151176', '2', '264');
INSERT INTO public.users VALUES (13, 'user_1712733712401', '2', '107');
INSERT INTO public.users VALUES (31, 'user_1712734151177', '5', '346');
INSERT INTO public.users VALUES (12, 'user_1712733712402', '5', '81');
INSERT INTO public.users VALUES (14, 'Subhash', '1', '8');
INSERT INTO public.users VALUES (16, 'user_1712733750471', '2', '432');
INSERT INTO public.users VALUES (15, 'user_1712733750472', '5', '88');
INSERT INTO public.users VALUES (34, 'user_1712734169546', '2', '52');
INSERT INTO public.users VALUES (18, 'user_1712733818338', '2', '518');
INSERT INTO public.users VALUES (33, 'user_1712734169547', '5', '74');
INSERT INTO public.users VALUES (17, 'user_1712733818339', '5', '259');
INSERT INTO public.users VALUES (20, 'user_1712733844435', '2', '296');
INSERT INTO public.users VALUES (19, 'user_1712733844436', '5', '44');
INSERT INTO public.users VALUES (22, 'user_1712733880867', '2', '171');
INSERT INTO public.users VALUES (21, 'user_1712733880868', '5', '399');
INSERT INTO public.users VALUES (24, 'user_1712733916800', '2', '602');
INSERT INTO public.users VALUES (23, 'user_1712733916801', '5', '7');
INSERT INTO public.users VALUES (26, 'user_1712733950960', '2', '588');
INSERT INTO public.users VALUES (25, 'user_1712733950961', '5', '81');
INSERT INTO public.users VALUES (27, 'user_1712733978583', NULL, NULL);
INSERT INTO public.users VALUES (28, 'user_1712733978582', NULL, NULL);
INSERT INTO public.users VALUES (30, 'user_1712733987497', '2', '447');
INSERT INTO public.users VALUES (29, 'user_1712733987498', '5', '163');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 34, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

