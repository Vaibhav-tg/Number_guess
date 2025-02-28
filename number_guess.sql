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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 14, 2);
INSERT INTO public.games VALUES (2, 338, 3);
INSERT INTO public.games VALUES (3, 826, 3);
INSERT INTO public.games VALUES (4, 462, 4);
INSERT INTO public.games VALUES (5, 76, 4);
INSERT INTO public.games VALUES (6, 565, 3);
INSERT INTO public.games VALUES (7, 582, 3);
INSERT INTO public.games VALUES (8, 153, 3);
INSERT INTO public.games VALUES (9, 506, 5);
INSERT INTO public.games VALUES (10, 720, 5);
INSERT INTO public.games VALUES (11, 52, 6);
INSERT INTO public.games VALUES (12, 301, 6);
INSERT INTO public.games VALUES (13, 780, 5);
INSERT INTO public.games VALUES (14, 742, 5);
INSERT INTO public.games VALUES (15, 926, 5);
INSERT INTO public.games VALUES (16, 51, 7);
INSERT INTO public.games VALUES (17, 11, 7);
INSERT INTO public.games VALUES (18, 687, 8);
INSERT INTO public.games VALUES (19, 878, 8);
INSERT INTO public.games VALUES (20, 585, 7);
INSERT INTO public.games VALUES (21, 531, 7);
INSERT INTO public.games VALUES (22, 159, 7);
INSERT INTO public.games VALUES (23, 299, 9);
INSERT INTO public.games VALUES (24, 871, 9);
INSERT INTO public.games VALUES (25, 691, 10);
INSERT INTO public.games VALUES (26, 897, 10);
INSERT INTO public.games VALUES (27, 571, 9);
INSERT INTO public.games VALUES (28, 708, 9);
INSERT INTO public.games VALUES (29, 667, 9);
INSERT INTO public.games VALUES (30, 354, 11);
INSERT INTO public.games VALUES (31, 583, 11);
INSERT INTO public.games VALUES (32, 820, 12);
INSERT INTO public.games VALUES (33, 2, 12);
INSERT INTO public.games VALUES (34, 645, 11);
INSERT INTO public.games VALUES (35, 683, 11);
INSERT INTO public.games VALUES (36, 561, 11);
INSERT INTO public.games VALUES (37, 757, 13);
INSERT INTO public.games VALUES (38, 704, 13);
INSERT INTO public.games VALUES (39, 101, 14);
INSERT INTO public.games VALUES (40, 557, 14);
INSERT INTO public.games VALUES (41, 39, 13);
INSERT INTO public.games VALUES (42, 241, 13);
INSERT INTO public.games VALUES (43, 375, 13);
INSERT INTO public.games VALUES (44, 19, 15);
INSERT INTO public.games VALUES (45, 308, 15);
INSERT INTO public.games VALUES (46, 152, 16);
INSERT INTO public.games VALUES (47, 633, 16);
INSERT INTO public.games VALUES (48, 968, 15);
INSERT INTO public.games VALUES (49, 378, 15);
INSERT INTO public.games VALUES (50, 398, 15);
INSERT INTO public.games VALUES (51, 477, 17);
INSERT INTO public.games VALUES (52, 526, 17);
INSERT INTO public.games VALUES (53, 961, 18);
INSERT INTO public.games VALUES (54, 779, 18);
INSERT INTO public.games VALUES (55, 730, 17);
INSERT INTO public.games VALUES (56, 315, 17);
INSERT INTO public.games VALUES (57, 343, 17);
INSERT INTO public.games VALUES (58, 852, 19);
INSERT INTO public.games VALUES (59, 508, 19);
INSERT INTO public.games VALUES (60, 36, 20);
INSERT INTO public.games VALUES (61, 750, 20);
INSERT INTO public.games VALUES (62, 259, 19);
INSERT INTO public.games VALUES (63, 579, 19);
INSERT INTO public.games VALUES (64, 239, 19);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '');
INSERT INTO public.users VALUES (2, 'w');
INSERT INTO public.users VALUES (3, 'user_1740741888239');
INSERT INTO public.users VALUES (4, 'user_1740741888238');
INSERT INTO public.users VALUES (5, 'user_1740742027398');
INSERT INTO public.users VALUES (6, 'user_1740742027397');
INSERT INTO public.users VALUES (7, 'user_1740742154227');
INSERT INTO public.users VALUES (8, 'user_1740742154226');
INSERT INTO public.users VALUES (9, 'user_1740742194885');
INSERT INTO public.users VALUES (10, 'user_1740742194884');
INSERT INTO public.users VALUES (11, 'user_1740742371211');
INSERT INTO public.users VALUES (12, 'user_1740742371210');
INSERT INTO public.users VALUES (13, 'user_1740742444735');
INSERT INTO public.users VALUES (14, 'user_1740742444734');
INSERT INTO public.users VALUES (15, 'user_1740742470265');
INSERT INTO public.users VALUES (16, 'user_1740742470264');
INSERT INTO public.users VALUES (17, 'user_1740742534247');
INSERT INTO public.users VALUES (18, 'user_1740742534246');
INSERT INTO public.users VALUES (19, 'user_1740742581337');
INSERT INTO public.users VALUES (20, 'user_1740742581336');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);


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

