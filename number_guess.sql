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
DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--
CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
ALTER DATABASE number_guess OWNER TO freecodecamp;
\ connect number_guess
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
    number_guesses integer NOT NULL,
    user_id integer
);
ALTER TABLE public.games OWNER TO freecodecamp;
--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.games_game_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
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
    username character varying(20) NOT NULL
);
ALTER TABLE public.users OWNER TO freecodecamp;
--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.users_user_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;
--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.games
ALTER COLUMN game_id
SET DEFAULT nextval('public.games_game_id_seq'::regclass);
--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.users
ALTER COLUMN user_id
SET DEFAULT nextval('public.users_user_id_seq'::regclass);
--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.games
VALUES (1, 458, 5);
INSERT INTO public.games
VALUES (2, 761, 5);
INSERT INTO public.games
VALUES (3, 666, 6);
INSERT INTO public.games
VALUES (4, 7, 6);
INSERT INTO public.games
VALUES (5, 157, 5);
INSERT INTO public.games
VALUES (6, 170, 5);
INSERT INTO public.games
VALUES (7, 212, 5);
INSERT INTO public.games
VALUES (8, 15, 7);
INSERT INTO public.games
VALUES (9, 724, 7);
INSERT INTO public.games
VALUES (10, 614, 8);
INSERT INTO public.games
VALUES (11, 889, 8);
INSERT INTO public.games
VALUES (12, 825, 7);
INSERT INTO public.games
VALUES (13, 981, 7);
INSERT INTO public.games
VALUES (14, 229, 7);
INSERT INTO public.games
VALUES (15, 573, 9);
INSERT INTO public.games
VALUES (16, 382, 9);
INSERT INTO public.games
VALUES (17, 728, 10);
INSERT INTO public.games
VALUES (18, 21, 10);
INSERT INTO public.games
VALUES (19, 690, 9);
INSERT INTO public.games
VALUES (20, 574, 9);
INSERT INTO public.games
VALUES (21, 215, 9);
INSERT INTO public.games
VALUES (22, 320, 11);
INSERT INTO public.games
VALUES (23, 433, 11);
INSERT INTO public.games
VALUES (24, 60, 12);
INSERT INTO public.games
VALUES (25, 337, 12);
INSERT INTO public.games
VALUES (26, 148, 11);
INSERT INTO public.games
VALUES (27, 360, 11);
INSERT INTO public.games
VALUES (28, 651, 11);
INSERT INTO public.games
VALUES (29, 474, 13);
INSERT INTO public.games
VALUES (30, 329, 13);
INSERT INTO public.games
VALUES (31, 309, 14);
INSERT INTO public.games
VALUES (32, 707, 14);
INSERT INTO public.games
VALUES (33, 472, 13);
INSERT INTO public.games
VALUES (34, 317, 13);
INSERT INTO public.games
VALUES (35, 752, 13);
--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.users
VALUES (1, 'mauro');
INSERT INTO public.users
VALUES (2, 'aaa');
INSERT INTO public.users
VALUES (3, 'aaaa');
INSERT INTO public.users
VALUES (4, 'a');
INSERT INTO public.users
VALUES (5, 'user_1687017509652');
INSERT INTO public.users
VALUES (6, 'user_1687017509651');
INSERT INTO public.users
VALUES (7, 'user_1687017551409');
INSERT INTO public.users
VALUES (8, 'user_1687017551408');
INSERT INTO public.users
VALUES (9, 'user_1687017676935');
INSERT INTO public.users
VALUES (10, 'user_1687017676934');
INSERT INTO public.users
VALUES (11, 'user_1687017990268');
INSERT INTO public.users
VALUES (12, 'user_1687017990267');
INSERT INTO public.users
VALUES (13, 'user_1687018065833');
INSERT INTO public.users
VALUES (14, 'user_1687018065832');
--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);
--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);
--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.games
ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);
--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.users
ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.users
ADD CONSTRAINT users_username_key UNIQUE (username);
--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.games
ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
--
-- PostgreSQL database dump complete
--