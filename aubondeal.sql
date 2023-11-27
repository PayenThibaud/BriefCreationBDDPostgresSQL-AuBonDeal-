--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)

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
-- Name: deal; Type: SCHEMA; Schema: -; Owner: utilisateur1
--

CREATE SCHEMA deal;


ALTER SCHEMA deal OWNER TO utilisateur1;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: belong; Type: TABLE; Schema: deal; Owner: thibaud
--

CREATE TABLE deal.belong (
    product_uuid uuid NOT NULL,
    order_number integer NOT NULL
);


ALTER TABLE deal.belong OWNER TO thibaud;

--
-- Name: orders; Type: TABLE; Schema: deal; Owner: thibaud
--

CREATE TABLE deal.orders (
    order_number integer NOT NULL,
    order_total_cost_ht numeric(8,2) NOT NULL,
    order_total_quantity integer NOT NULL,
    created_at date NOT NULL,
    deliver_at timestamp without time zone NOT NULL,
    user_uuid uuid NOT NULL,
    CONSTRAINT orders_order_number_check CHECK ((order_number >= 0)),
    CONSTRAINT orders_order_total_cost_ht_check CHECK ((order_total_cost_ht >= (0)::numeric)),
    CONSTRAINT orders_order_total_quantity_check CHECK ((order_total_quantity >= 0))
);


ALTER TABLE deal.orders OWNER TO thibaud;

--
-- Name: products; Type: TABLE; Schema: deal; Owner: thibaud
--

CREATE TABLE deal.products (
    product_uuid uuid NOT NULL,
    product_name character varying(20) NOT NULL,
    product_description character varying(150) NOT NULL,
    product_price numeric(7,2) NOT NULL,
    product_quantity integer NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    CONSTRAINT products_product_name_check CHECK (((product_name)::text <> ''::text)),
    CONSTRAINT products_product_price_check CHECK ((product_price >= (0)::numeric)),
    CONSTRAINT products_product_quantity_check CHECK ((product_quantity >= 0))
);


ALTER TABLE deal.products OWNER TO thibaud;

--
-- Name: users; Type: TABLE; Schema: deal; Owner: thibaud
--

CREATE TABLE deal.users (
    user_uuid uuid NOT NULL,
    user_pseudo character varying(20) NOT NULL,
    username character varying(20) NOT NULL,
    user_password character varying(64) NOT NULL,
    created_at date NOT NULL,
    CONSTRAINT users_user_password_check CHECK (((user_password)::text <> ''::text)),
    CONSTRAINT users_user_pseudo_check CHECK (((user_pseudo)::text <> ''::text)),
    CONSTRAINT users_username_check CHECK (((username)::text <> ''::text))
);


ALTER TABLE deal.users OWNER TO thibaud;

--
-- Name: test; Type: TABLE; Schema: public; Owner: thibaud
--

CREATE TABLE public.test (
    test1 integer
);


ALTER TABLE public.test OWNER TO thibaud;

--
-- Data for Name: belong; Type: TABLE DATA; Schema: deal; Owner: thibaud
--

COPY deal.belong (product_uuid, order_number) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: deal; Owner: thibaud
--

COPY deal.orders (order_number, order_total_cost_ht, order_total_quantity, created_at, deliver_at, user_uuid) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: deal; Owner: thibaud
--

COPY deal.products (product_uuid, product_name, product_description, product_price, product_quantity, created_at, updated_at) FROM stdin;
1124d9e8-6266-4bcf-8035-37a02ba75c69	Marice	MacCague	11.00	21	2023-05-27	2023-11-24
1124d9e8-6266-4bcf-8035-37a02ba75c68	chocolat	MacCague2	9.00	21	2023-05-27	2023-11-24
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: deal; Owner: thibaud
--

COPY deal.users (user_uuid, user_pseudo, username, user_password, created_at) FROM stdin;
\.


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: thibaud
--

COPY public.test (test1) FROM stdin;
\.


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: deal; Owner: thibaud
--

ALTER TABLE ONLY deal.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_number);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: deal; Owner: thibaud
--

ALTER TABLE ONLY deal.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_uuid);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: deal; Owner: thibaud
--

ALTER TABLE ONLY deal.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_uuid);


--
-- Name: belong belong_order_number_fkey; Type: FK CONSTRAINT; Schema: deal; Owner: thibaud
--

ALTER TABLE ONLY deal.belong
    ADD CONSTRAINT belong_order_number_fkey FOREIGN KEY (order_number) REFERENCES deal.orders(order_number);


--
-- Name: belong belong_product_uuid_fkey; Type: FK CONSTRAINT; Schema: deal; Owner: thibaud
--

ALTER TABLE ONLY deal.belong
    ADD CONSTRAINT belong_product_uuid_fkey FOREIGN KEY (product_uuid) REFERENCES deal.products(product_uuid);


--
-- Name: orders orders_user_uuid_fkey; Type: FK CONSTRAINT; Schema: deal; Owner: thibaud
--

ALTER TABLE ONLY deal.orders
    ADD CONSTRAINT orders_user_uuid_fkey FOREIGN KEY (user_uuid) REFERENCES deal.users(user_uuid);


--
-- Name: TABLE belong; Type: ACL; Schema: deal; Owner: thibaud
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE deal.belong TO utilisateur1;


--
-- Name: TABLE orders; Type: ACL; Schema: deal; Owner: thibaud
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE deal.orders TO utilisateur1;


--
-- Name: TABLE products; Type: ACL; Schema: deal; Owner: thibaud
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE deal.products TO utilisateur1;


--
-- Name: TABLE users; Type: ACL; Schema: deal; Owner: thibaud
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE deal.users TO utilisateur1;


--
-- PostgreSQL database dump complete
--

