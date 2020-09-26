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

--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: mushroom_cap_color; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_cap_color AS ENUM (
    'n',
    'b',
    'c',
    'g',
    'r',
    'p',
    'u',
    'e',
    'w',
    'y'
);


--
-- Name: mushroom_cap_shape; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_cap_shape AS ENUM (
    'b',
    'c',
    'x',
    'f',
    'k',
    's'
);


--
-- Name: mushroom_cap_surface; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_cap_surface AS ENUM (
    'f',
    'g',
    'y',
    's'
);


--
-- Name: mushroom_gill_attachment; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_gill_attachment AS ENUM (
    'a',
    'd',
    'f',
    'n'
);


--
-- Name: mushroom_gill_color; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_gill_color AS ENUM (
    'k',
    'n',
    'b',
    'h',
    'g',
    'r',
    'o',
    'p',
    'u',
    'e',
    'w',
    'y'
);


--
-- Name: mushroom_gill_size; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_gill_size AS ENUM (
    'b',
    'n'
);


--
-- Name: mushroom_gill_spacing; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_gill_spacing AS ENUM (
    'c',
    'w',
    'd'
);


--
-- Name: mushroom_habitat; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_habitat AS ENUM (
    'g',
    'l',
    'm',
    'p',
    'u',
    'w',
    'd'
);


--
-- Name: mushroom_odor; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_odor AS ENUM (
    'a',
    'l',
    'c',
    'y',
    'f',
    'm',
    'n',
    'p',
    's'
);


--
-- Name: mushroom_population; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_population AS ENUM (
    'a',
    'c',
    'n',
    's',
    'v',
    'y'
);


--
-- Name: mushroom_ring_number; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_ring_number AS ENUM (
    'n',
    'o',
    't'
);


--
-- Name: mushroom_ring_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_ring_type AS ENUM (
    'c',
    'e',
    'f',
    'l',
    'n',
    'p',
    's',
    'z'
);


--
-- Name: mushroom_spore_print_color; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_spore_print_color AS ENUM (
    'k',
    'n',
    'b',
    'h',
    'r',
    'o',
    'u',
    'w',
    'y'
);


--
-- Name: mushroom_stalk_color_above_ring; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_stalk_color_above_ring AS ENUM (
    'n',
    'b',
    'c',
    'g',
    'o',
    'p',
    'e',
    'w',
    'y'
);


--
-- Name: mushroom_stalk_color_below_ring; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_stalk_color_below_ring AS ENUM (
    'n',
    'b',
    'c',
    'g',
    'o',
    'p',
    'e',
    'w',
    'y'
);


--
-- Name: mushroom_stalk_root; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_stalk_root AS ENUM (
    'b',
    'c',
    'u',
    'e',
    'z',
    'r',
    '?'
);


--
-- Name: mushroom_stalk_shape; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_stalk_shape AS ENUM (
    'e',
    't'
);


--
-- Name: mushroom_stalk_surface_above_ring; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_stalk_surface_above_ring AS ENUM (
    'f',
    'y',
    'k',
    's'
);


--
-- Name: mushroom_stalk_surface_below_ring; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_stalk_surface_below_ring AS ENUM (
    'f',
    'y',
    'k',
    's'
);


--
-- Name: mushroom_veil_color; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_veil_color AS ENUM (
    'n',
    'o',
    'w',
    'y'
);


--
-- Name: mushroom_veil_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mushroom_veil_type AS ENUM (
    'p',
    'u'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: mushrooms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mushrooms (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    brushes boolean,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cap_shape public.mushroom_cap_shape,
    cap_surface public.mushroom_cap_surface,
    cap_color public.mushroom_cap_color,
    odor public.mushroom_odor,
    gill_attachment public.mushroom_gill_attachment,
    gill_spacing public.mushroom_gill_spacing,
    gill_size public.mushroom_gill_size,
    gill_color public.mushroom_gill_color,
    stalk_shape public.mushroom_stalk_shape,
    stalk_root public.mushroom_stalk_root,
    stalk_surface_above_ring public.mushroom_stalk_surface_above_ring,
    stalk_surface_below_ring public.mushroom_stalk_surface_below_ring,
    stalk_color_above_ring public.mushroom_stalk_color_above_ring,
    stalk_color_below_ring public.mushroom_stalk_color_below_ring,
    veil_type public.mushroom_veil_type,
    veil_color public.mushroom_veil_color,
    ring_number public.mushroom_ring_number,
    ring_type public.mushroom_ring_type,
    spore_print_color public.mushroom_spore_print_color,
    population public.mushroom_population,
    habitat public.mushroom_habitat
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: mushrooms mushrooms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mushrooms
    ADD CONSTRAINT mushrooms_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_mushrooms_on_cap_color; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_cap_color ON public.mushrooms USING btree (cap_color);


--
-- Name: index_mushrooms_on_cap_shape; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_cap_shape ON public.mushrooms USING btree (cap_shape);


--
-- Name: index_mushrooms_on_cap_surface; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_cap_surface ON public.mushrooms USING btree (cap_surface);


--
-- Name: index_mushrooms_on_gill_attachment; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_gill_attachment ON public.mushrooms USING btree (gill_attachment);


--
-- Name: index_mushrooms_on_gill_color; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_gill_color ON public.mushrooms USING btree (gill_color);


--
-- Name: index_mushrooms_on_gill_size; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_gill_size ON public.mushrooms USING btree (gill_size);


--
-- Name: index_mushrooms_on_gill_spacing; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_gill_spacing ON public.mushrooms USING btree (gill_spacing);


--
-- Name: index_mushrooms_on_habitat; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_habitat ON public.mushrooms USING btree (habitat);


--
-- Name: index_mushrooms_on_odor; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_odor ON public.mushrooms USING btree (odor);


--
-- Name: index_mushrooms_on_population; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_population ON public.mushrooms USING btree (population);


--
-- Name: index_mushrooms_on_ring_number; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_ring_number ON public.mushrooms USING btree (ring_number);


--
-- Name: index_mushrooms_on_ring_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_ring_type ON public.mushrooms USING btree (ring_type);


--
-- Name: index_mushrooms_on_spore_print_color; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_spore_print_color ON public.mushrooms USING btree (spore_print_color);


--
-- Name: index_mushrooms_on_stalk_color_above_ring; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_stalk_color_above_ring ON public.mushrooms USING btree (stalk_color_above_ring);


--
-- Name: index_mushrooms_on_stalk_color_below_ring; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_stalk_color_below_ring ON public.mushrooms USING btree (stalk_color_below_ring);


--
-- Name: index_mushrooms_on_stalk_root; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_stalk_root ON public.mushrooms USING btree (stalk_root);


--
-- Name: index_mushrooms_on_stalk_shape; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_stalk_shape ON public.mushrooms USING btree (stalk_shape);


--
-- Name: index_mushrooms_on_stalk_surface_above_ring; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_stalk_surface_above_ring ON public.mushrooms USING btree (stalk_surface_above_ring);


--
-- Name: index_mushrooms_on_stalk_surface_below_ring; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_stalk_surface_below_ring ON public.mushrooms USING btree (stalk_surface_below_ring);


--
-- Name: index_mushrooms_on_veil_color; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_veil_color ON public.mushrooms USING btree (veil_color);


--
-- Name: index_mushrooms_on_veil_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mushrooms_on_veil_type ON public.mushrooms USING btree (veil_type);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20200925175804'),
('20200925180229');


