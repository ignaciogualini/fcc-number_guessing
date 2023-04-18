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
    result integer
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
-- Name: games_test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games_test (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    result integer NOT NULL
);


ALTER TABLE public.games_test OWNER TO freecodecamp;

--
-- Name: games_test_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_test_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_test_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_test_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_test_game_id_seq OWNED BY public.games_test.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users_test (
    name character varying(22),
    user_id integer NOT NULL
);


ALTER TABLE public.users_test OWNER TO freecodecamp;

--
-- Name: users_test_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_test_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_test_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_test_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_test_user_id_seq OWNED BY public.users_test.user_id;


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
-- Name: games_test game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_test ALTER COLUMN game_id SET DEFAULT nextval('public.games_test_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_test user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users_test ALTER COLUMN user_id SET DEFAULT nextval('public.users_test_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 9, 118);
INSERT INTO public.games VALUES (2, 9, 191);
INSERT INTO public.games VALUES (3, 9, 194);
INSERT INTO public.games VALUES (4, 11, 665);
INSERT INTO public.games VALUES (5, 12, 62);
INSERT INTO public.games VALUES (6, 12, 272);
INSERT INTO public.games VALUES (7, 11, 676);
INSERT INTO public.games VALUES (8, 11, 102);
INSERT INTO public.games VALUES (9, 11, 13);
INSERT INTO public.games VALUES (10, 13, 729);
INSERT INTO public.games VALUES (11, 14, 124);
INSERT INTO public.games VALUES (12, 13, 595);
INSERT INTO public.games VALUES (13, 13, 476);
INSERT INTO public.games VALUES (14, 13, 239);
INSERT INTO public.games VALUES (15, 15, 10);
INSERT INTO public.games VALUES (16, 16, 102);
INSERT INTO public.games VALUES (17, 17, 69);
INSERT INTO public.games VALUES (18, 16, 516);
INSERT INTO public.games VALUES (19, 16, 675);
INSERT INTO public.games VALUES (20, 18, 707);
INSERT INTO public.games VALUES (21, 19, 149);
INSERT INTO public.games VALUES (22, 18, 665);
INSERT INTO public.games VALUES (23, 18, 113);
INSERT INTO public.games VALUES (24, 15, 12);
INSERT INTO public.games VALUES (25, 21, 159);
INSERT INTO public.games VALUES (26, 20, 277);
INSERT INTO public.games VALUES (27, 20, 296);
INSERT INTO public.games VALUES (28, 20, 628);
INSERT INTO public.games VALUES (29, 22, 544);
INSERT INTO public.games VALUES (30, 24, 14);
INSERT INTO public.games VALUES (31, 25, 1);
INSERT INTO public.games VALUES (32, 25, 430);
INSERT INTO public.games VALUES (33, 26, 1);
INSERT INTO public.games VALUES (34, 26, 372);
INSERT INTO public.games VALUES (35, 25, 334);
INSERT INTO public.games VALUES (36, 25, 573);
INSERT INTO public.games VALUES (37, 25, 653);
INSERT INTO public.games VALUES (38, 27, 1);
INSERT INTO public.games VALUES (39, 27, 1);
INSERT INTO public.games VALUES (40, 28, 1);
INSERT INTO public.games VALUES (41, 28, 1);
INSERT INTO public.games VALUES (42, 27, 1);
INSERT INTO public.games VALUES (43, 27, 1);
INSERT INTO public.games VALUES (44, 27, 1);
INSERT INTO public.games VALUES (45, 29, 142);
INSERT INTO public.games VALUES (46, 30, 889);
INSERT INTO public.games VALUES (47, 30, 899);
INSERT INTO public.games VALUES (48, 29, 172);
INSERT INTO public.games VALUES (49, 29, 454);
INSERT INTO public.games VALUES (50, 29, 385);
INSERT INTO public.games VALUES (51, 31, 4);
INSERT INTO public.games VALUES (52, 31, 332);
INSERT INTO public.games VALUES (53, 32, 490);
INSERT INTO public.games VALUES (54, 32, 296);
INSERT INTO public.games VALUES (55, 31, 78);
INSERT INTO public.games VALUES (56, 31, 156);
INSERT INTO public.games VALUES (57, 31, 956);
INSERT INTO public.games VALUES (58, 33, 69);
INSERT INTO public.games VALUES (59, 34, 201);
INSERT INTO public.games VALUES (60, 34, 967);
INSERT INTO public.games VALUES (61, 33, 358);
INSERT INTO public.games VALUES (62, 33, 834);
INSERT INTO public.games VALUES (63, 33, 8);
INSERT INTO public.games VALUES (64, 35, 385);
INSERT INTO public.games VALUES (65, 35, 285);
INSERT INTO public.games VALUES (66, 36, 283);
INSERT INTO public.games VALUES (67, 36, 112);
INSERT INTO public.games VALUES (68, 35, 512);
INSERT INTO public.games VALUES (69, 35, 584);
INSERT INTO public.games VALUES (70, 35, 658);
INSERT INTO public.games VALUES (71, 37, 844);
INSERT INTO public.games VALUES (72, 37, 43);
INSERT INTO public.games VALUES (73, 38, 103);
INSERT INTO public.games VALUES (74, 38, 643);
INSERT INTO public.games VALUES (75, 37, 907);
INSERT INTO public.games VALUES (76, 37, 410);
INSERT INTO public.games VALUES (77, 37, 834);


--
-- Data for Name: games_test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games_test VALUES (1, 12, 3);
INSERT INTO public.games_test VALUES (2, 12, 1);
INSERT INTO public.games_test VALUES (3, 13, 568);
INSERT INTO public.games_test VALUES (4, 13, 464);
INSERT INTO public.games_test VALUES (5, 14, 1000);
INSERT INTO public.games_test VALUES (6, 14, 333);
INSERT INTO public.games_test VALUES (7, 13, 970);
INSERT INTO public.games_test VALUES (8, 13, 307);
INSERT INTO public.games_test VALUES (9, 15, 2);
INSERT INTO public.games_test VALUES (10, 15, 892);
INSERT INTO public.games_test VALUES (11, 16, 2);
INSERT INTO public.games_test VALUES (12, 16, 138);
INSERT INTO public.games_test VALUES (13, 15, 525);
INSERT INTO public.games_test VALUES (14, 15, 671);
INSERT INTO public.games_test VALUES (15, 17, 12);
INSERT INTO public.games_test VALUES (16, 18, 756);
INSERT INTO public.games_test VALUES (17, 18, 210);
INSERT INTO public.games_test VALUES (18, 19, 61);
INSERT INTO public.games_test VALUES (19, 19, 557);
INSERT INTO public.games_test VALUES (20, 18, 583);
INSERT INTO public.games_test VALUES (21, 18, 280);
INSERT INTO public.games_test VALUES (22, 21, 14);
INSERT INTO public.games_test VALUES (23, 22, 5);
INSERT INTO public.games_test VALUES (24, 23, 1);
INSERT INTO public.games_test VALUES (25, 23, 4);
INSERT INTO public.games_test VALUES (26, 23, 3);
INSERT INTO public.games_test VALUES (27, 23, 3);
INSERT INTO public.games_test VALUES (28, 24, 4);
INSERT INTO public.games_test VALUES (29, 25, 4);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1681775955761');
INSERT INTO public.users VALUES (2, 'user_1681775955760');
INSERT INTO public.users VALUES (3, 'user_1681776070734');
INSERT INTO public.users VALUES (4, 'user_1681776070733');
INSERT INTO public.users VALUES (5, 'user_1681776125018');
INSERT INTO public.users VALUES (6, 'user_1681776125017');
INSERT INTO public.users VALUES (7, 'user_1681776818185');
INSERT INTO public.users VALUES (8, 'user_1681776818184');
INSERT INTO public.users VALUES (9, 'user_1681781835221');
INSERT INTO public.users VALUES (10, 'user_1681781835220');
INSERT INTO public.users VALUES (11, 'user_1681781933657');
INSERT INTO public.users VALUES (12, 'user_1681781933656');
INSERT INTO public.users VALUES (13, 'user_1681781961007');
INSERT INTO public.users VALUES (14, 'user_1681781961006');
INSERT INTO public.users VALUES (15, 'Nacho');
INSERT INTO public.users VALUES (16, 'user_1681782086202');
INSERT INTO public.users VALUES (17, 'user_1681782086201');
INSERT INTO public.users VALUES (18, 'user_1681782173840');
INSERT INTO public.users VALUES (19, 'user_1681782173839');
INSERT INTO public.users VALUES (20, 'user_1681782249231');
INSERT INTO public.users VALUES (21, 'user_1681782249230');
INSERT INTO public.users VALUES (22, 'user_1681782335831');
INSERT INTO public.users VALUES (23, 'user_1681782335830');
INSERT INTO public.users VALUES (24, 'Pilar');
INSERT INTO public.users VALUES (25, 'user_1681844219774');
INSERT INTO public.users VALUES (26, 'user_1681844219773');
INSERT INTO public.users VALUES (27, 'user_1681844368559');
INSERT INTO public.users VALUES (28, 'user_1681844368558');
INSERT INTO public.users VALUES (29, 'user_1681844405392');
INSERT INTO public.users VALUES (30, 'user_1681844405391');
INSERT INTO public.users VALUES (31, 'user_1681844467342');
INSERT INTO public.users VALUES (32, 'user_1681844467341');
INSERT INTO public.users VALUES (33, 'user_1681844537553');
INSERT INTO public.users VALUES (34, 'user_1681844537552');
INSERT INTO public.users VALUES (35, 'user_1681844554619');
INSERT INTO public.users VALUES (36, 'user_1681844554618');
INSERT INTO public.users VALUES (37, 'user_1681844569812');
INSERT INTO public.users VALUES (38, 'user_1681844569811');


--
-- Data for Name: users_test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users_test VALUES ('Nacho Gualini', 10);
INSERT INTO public.users_test VALUES ('Mary', 11);
INSERT INTO public.users_test VALUES ('Pilar', 12);
INSERT INTO public.users_test VALUES ('user_1681779082322', 13);
INSERT INTO public.users_test VALUES ('user_1681779082321', 14);
INSERT INTO public.users_test VALUES ('user_1681779156138', 15);
INSERT INTO public.users_test VALUES ('user_1681779156137', 16);
INSERT INTO public.users_test VALUES ('Fernando', 17);
INSERT INTO public.users_test VALUES ('user_1681779368186', 18);
INSERT INTO public.users_test VALUES ('user_1681779368185', 19);
INSERT INTO public.users_test VALUES ('Nacho', 20);
INSERT INTO public.users_test VALUES ('Malta', 21);
INSERT INTO public.users_test VALUES ('Nahco', 22);
INSERT INTO public.users_test VALUES ('Dani', 23);
INSERT INTO public.users_test VALUES ('Igor', 24);
INSERT INTO public.users_test VALUES ('Igorito igorito', 25);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 77, true);


--
-- Name: games_test_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_test_game_id_seq', 29, true);


--
-- Name: users_test_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_test_user_id_seq', 25, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: games_test games_test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_test
    ADD CONSTRAINT games_test_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users_test users_test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users_test
    ADD CONSTRAINT users_test_pkey PRIMARY KEY (user_id);


--
-- Name: games_test games_test_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_test
    ADD CONSTRAINT games_test_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users_test(user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

