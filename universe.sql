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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: ether; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ether (
    ether_id integer NOT NULL,
    ether_area character varying(30),
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.ether OWNER TO freecodecamp;

--
-- Name: ether_ether_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ether_ether_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ether_ether_id_seq OWNER TO freecodecamp;

--
-- Name: ether_ether_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ether_ether_id_seq OWNED BY public.ether.ether_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    is_interesting boolean,
    is_dangerous boolean,
    is_inhabited boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(60) NOT NULL,
    moon_id integer NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_km numeric,
    description text,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(60) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    is_interesting boolean,
    is_bright boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: ether ether_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ether ALTER COLUMN ether_id SET DEFAULT nextval('public.ether_ether_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: ether; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ether VALUES (1, 'Area1', 1, 'Ether1');
INSERT INTO public.ether VALUES (2, 'Area2', 2, 'Ether2');
INSERT INTO public.ether VALUES (3, 'Area3', 3, 'Ether3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, true, true, true);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, true, true, true);
INSERT INTO public.galaxy VALUES ('Galaxy3', 3, true, true, true);
INSERT INTO public.galaxy VALUES ('Galaxy4', 4, false, false, false);
INSERT INTO public.galaxy VALUES ('Galaxy5', 5, false, false, false);
INSERT INTO public.galaxy VALUES ('Galaxy6', 6, false, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 1, true, 1);
INSERT INTO public.moon VALUES ('Moon2', 2, 1, true, 2);
INSERT INTO public.moon VALUES ('Moon3', 3, 1, true, 3);
INSERT INTO public.moon VALUES ('Moon4', 4, 1, true, 4);
INSERT INTO public.moon VALUES ('Moon5', 5, 1, true, 5);
INSERT INTO public.moon VALUES ('Moon6', 6, 1, true, 6);
INSERT INTO public.moon VALUES ('Moon7', 7, 1, true, 7);
INSERT INTO public.moon VALUES ('Moon8', 8, 1, true, 8);
INSERT INTO public.moon VALUES ('Moon9', 9, 1, true, 9);
INSERT INTO public.moon VALUES ('Moon10', 10, 1, true, 10);
INSERT INTO public.moon VALUES ('Moon11', 11, 1, true, 11);
INSERT INTO public.moon VALUES ('Moon12', 12, 1, true, 12);
INSERT INTO public.moon VALUES ('Moon13', 13, 1, true, 12);
INSERT INTO public.moon VALUES ('Moon14', 14, 1, true, 12);
INSERT INTO public.moon VALUES ('Moon15', 15, 1, true, 12);
INSERT INTO public.moon VALUES ('Moon16', 16, 1, true, 12);
INSERT INTO public.moon VALUES ('Moon17', 17, 1, true, 12);
INSERT INTO public.moon VALUES ('Moon18', 18, 1, true, 12);
INSERT INTO public.moon VALUES ('Moon19', 19, 1, true, 12);
INSERT INTO public.moon VALUES ('Moon20', 20, 1, true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 1, 1, 'Rocky', true, 1);
INSERT INTO public.planet VALUES ('Mars', 2, 2, 2, 'Hot', false, 1);
INSERT INTO public.planet VALUES ('Jupiter', 3, 3, 3, 'Jupitery', false, 1);
INSERT INTO public.planet VALUES ('Neptune', 4, 4, 4, 'Wet', true, 1);
INSERT INTO public.planet VALUES ('Uranus', 5, 5, 5, 'Woah', true, 2);
INSERT INTO public.planet VALUES ('Saturn', 6, 6, 6, 'Ringy', true, 5);
INSERT INTO public.planet VALUES ('Venus', 7, 7, 7, 'Venusy', false, 3);
INSERT INTO public.planet VALUES ('Pluto', 8, 8, 8, 'Tiny', true, 2);
INSERT INTO public.planet VALUES ('Mercury', 9, 9, 9, 'Weird', false, 1);
INSERT INTO public.planet VALUES ('Planet10', 10, 10, 10, 'Planet10ey', true, 6);
INSERT INTO public.planet VALUES ('Planet11', 11, 11, 11, 'Planet11ey', false, 5);
INSERT INTO public.planet VALUES ('Planet12', 12, 12, 12, 'Planet12ey', true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 1, true, true);
INSERT INTO public.star VALUES ('Star2', 2, 2, true, true);
INSERT INTO public.star VALUES ('Star3', 3, 3, true, true);
INSERT INTO public.star VALUES ('Star4', 4, 4, false, false);
INSERT INTO public.star VALUES ('Star5', 5, 5, false, false);
INSERT INTO public.star VALUES ('Star6', 6, 6, false, false);


--
-- Name: ether_ether_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ether_ether_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: ether ether_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ether
    ADD CONSTRAINT ether_name_key UNIQUE (name);


--
-- Name: ether ether_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ether
    ADD CONSTRAINT ether_pkey PRIMARY KEY (ether_id);


--
-- Name: galaxy g_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT g_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon m_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT m_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star s_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT s_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: ether ether_galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ether
    ADD CONSTRAINT ether_galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

