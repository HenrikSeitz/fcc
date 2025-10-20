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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    name character varying(255) NOT NULL,
    is_dwarf boolean,
    observation_year integer,
    observer character varying(255)
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(250) NOT NULL,
    age integer,
    category integer,
    observation_year integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(250) NOT NULL,
    is_dwarf boolean,
    planet_id integer,
    observation_year integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(250) NOT NULL,
    is_dwarf boolean,
    star_id integer,
    observation_year integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(250) NOT NULL,
    age numeric,
    description text,
    is_dwarf boolean,
    galaxy_id integer,
    observation_year integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 'Saggitarius A*', false, NULL, NULL);
INSERT INTO public.black_holes VALUES (2, 'Saggitarius A*', false, NULL, NULL);
INSERT INTO public.black_holes VALUES (3, 'Saggitarius A*', false, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MilkyWay', 1, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'MilkyWay', 1, 1, NULL);
INSERT INTO public.galaxy VALUES (3, 'MilkyWay', 1, 1, NULL);
INSERT INTO public.galaxy VALUES (4, 'MilkyWay', 1, 1, NULL);
INSERT INTO public.galaxy VALUES (5, 'MilkyWay', 1, 1, NULL);
INSERT INTO public.galaxy VALUES (6, 'MilkyWay', 1, 1, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (3, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (4, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (5, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (6, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (7, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (8, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (9, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (10, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (11, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (12, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (13, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (14, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (15, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (16, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (17, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (18, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (19, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (20, 'Moon', false, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Earth', false, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star1', 2, 'TEXT', false, 1, NULL);
INSERT INTO public.star VALUES (2, 'Star1', 2, 'TEXT', false, 1, NULL);
INSERT INTO public.star VALUES (3, 'Star1', 2, 'TEXT', false, 1, NULL);
INSERT INTO public.star VALUES (4, 'Star1', 2, 'TEXT', false, 1, NULL);
INSERT INTO public.star VALUES (5, 'Star1', 2, 'TEXT', false, 1, NULL);
INSERT INTO public.star VALUES (6, 'Star1', 2, 'TEXT', false, 1, NULL);


--
-- Name: black_holes black_holes_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_id_key UNIQUE (black_holes_id);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
