--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-08-15 17:30:42

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
-- TOC entry 201 (class 1259 OID 24783)
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    id_author bigint NOT NULL,
    birth timestamp without time zone,
    death timestamp without time zone,
    firstname character varying(255),
    name character varying(255)
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 24781)
-- Name: authors_id_author_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authors_id_author_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_author_seq OWNER TO postgres;

--
-- TOC entry 3066 (class 0 OID 0)
-- Dependencies: 200
-- Name: authors_id_author_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authors_id_author_seq OWNED BY public.authors.id_author;


--
-- TOC entry 203 (class 1259 OID 24794)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id_book bigint NOT NULL,
    publication_date timestamp without time zone,
    summary character varying(255),
    title character varying(255),
    id_author bigint,
    id_category integer
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24792)
-- Name: books_id_book_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_id_book_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_book_seq OWNER TO postgres;

--
-- TOC entry 3067 (class 0 OID 0)
-- Dependencies: 202
-- Name: books_id_book_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_id_book_seq OWNED BY public.books.id_book;


--
-- TOC entry 205 (class 1259 OID 24805)
-- Name: borrowings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.borrowings (
    id_borrowing bigint NOT NULL,
    borrowing_date timestamp without time zone,
    borrowing_limit_date timestamp without time zone,
    renewal boolean,
    returned boolean,
    id_copy bigint,
    id_user bigint
);


ALTER TABLE public.borrowings OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24803)
-- Name: borrowings_id_borrowing_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.borrowings_id_borrowing_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.borrowings_id_borrowing_seq OWNER TO postgres;

--
-- TOC entry 3068 (class 0 OID 0)
-- Dependencies: 204
-- Name: borrowings_id_borrowing_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.borrowings_id_borrowing_seq OWNED BY public.borrowings.id_borrowing;


--
-- TOC entry 207 (class 1259 OID 24813)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id_category integer NOT NULL,
    description character varying(255),
    name character varying(255)
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24811)
-- Name: categories_id_category_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_category_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_category_seq OWNER TO postgres;

--
-- TOC entry 3069 (class 0 OID 0)
-- Dependencies: 206
-- Name: categories_id_category_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_category_seq OWNED BY public.categories.id_category;


--
-- TOC entry 209 (class 1259 OID 24824)
-- Name: copies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.copies (
    id_copy bigint NOT NULL,
    available boolean,
    id_book bigint,
    id_library bigint
);


ALTER TABLE public.copies OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24822)
-- Name: copies_id_copy_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.copies_id_copy_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.copies_id_copy_seq OWNER TO postgres;

--
-- TOC entry 3070 (class 0 OID 0)
-- Dependencies: 208
-- Name: copies_id_copy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.copies_id_copy_seq OWNED BY public.copies.id_copy;


--
-- TOC entry 211 (class 1259 OID 24832)
-- Name: libraries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libraries (
    id_library bigint NOT NULL,
    address character varying(255),
    email character varying(255),
    phone character varying(255)
);


ALTER TABLE public.libraries OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24830)
-- Name: libraries_id_library_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libraries_id_library_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libraries_id_library_seq OWNER TO postgres;

--
-- TOC entry 3071 (class 0 OID 0)
-- Dependencies: 210
-- Name: libraries_id_library_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libraries_id_library_seq OWNED BY public.libraries.id_library;


--
-- TOC entry 213 (class 1259 OID 24843)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id_role integer NOT NULL,
    designation character varying(255)
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24841)
-- Name: roles_id_role_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_role_seq OWNER TO postgres;

--
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 212
-- Name: roles_id_role_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_role_seq OWNED BY public.roles.id_role;


--
-- TOC entry 215 (class 1259 OID 24851)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id_user bigint NOT NULL,
    email character varying(255),
    firstname character varying(255),
    name character varying(255),
    password character varying(255),
    id_library bigint,
    id_role integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24849)
-- Name: users_id_user_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_user_seq OWNER TO postgres;

--
-- TOC entry 3073 (class 0 OID 0)
-- Dependencies: 214
-- Name: users_id_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_user_seq OWNED BY public.users.id_user;


--
-- TOC entry 2897 (class 2604 OID 24786)
-- Name: authors id_author; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors ALTER COLUMN id_author SET DEFAULT nextval('public.authors_id_author_seq'::regclass);


--
-- TOC entry 2898 (class 2604 OID 24797)
-- Name: books id_book; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN id_book SET DEFAULT nextval('public.books_id_book_seq'::regclass);


--
-- TOC entry 2899 (class 2604 OID 24808)
-- Name: borrowings id_borrowing; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowings ALTER COLUMN id_borrowing SET DEFAULT nextval('public.borrowings_id_borrowing_seq'::regclass);


--
-- TOC entry 2900 (class 2604 OID 24816)
-- Name: categories id_category; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id_category SET DEFAULT nextval('public.categories_id_category_seq'::regclass);


--
-- TOC entry 2901 (class 2604 OID 24827)
-- Name: copies id_copy; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.copies ALTER COLUMN id_copy SET DEFAULT nextval('public.copies_id_copy_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 24835)
-- Name: libraries id_library; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraries ALTER COLUMN id_library SET DEFAULT nextval('public.libraries_id_library_seq'::regclass);


--
-- TOC entry 2903 (class 2604 OID 24846)
-- Name: roles id_role; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id_role SET DEFAULT nextval('public.roles_id_role_seq'::regclass);


--
-- TOC entry 2904 (class 2604 OID 24854)
-- Name: users id_user; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id_user SET DEFAULT nextval('public.users_id_user_seq'::regclass);


--
-- TOC entry 2906 (class 2606 OID 24791)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id_author);


--
-- TOC entry 2908 (class 2606 OID 24802)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id_book);


--
-- TOC entry 2910 (class 2606 OID 24810)
-- Name: borrowings borrowings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowings
    ADD CONSTRAINT borrowings_pkey PRIMARY KEY (id_borrowing);


--
-- TOC entry 2912 (class 2606 OID 24821)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id_category);


--
-- TOC entry 2914 (class 2606 OID 24829)
-- Name: copies copies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.copies
    ADD CONSTRAINT copies_pkey PRIMARY KEY (id_copy);


--
-- TOC entry 2916 (class 2606 OID 24840)
-- Name: libraries libraries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraries
    ADD CONSTRAINT libraries_pkey PRIMARY KEY (id_library);


--
-- TOC entry 2918 (class 2606 OID 24848)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_role);


--
-- TOC entry 2920 (class 2606 OID 24861)
-- Name: users uk8wvx4alwsy6c9ey1xp1bj574m; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk8wvx4alwsy6c9ey1xp1bj574m UNIQUE (id_user, email);


--
-- TOC entry 2922 (class 2606 OID 24859)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_user);


--
-- TOC entry 2923 (class 2606 OID 24862)
-- Name: books fk4ih38omjrl63dv9509hddgyia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT fk4ih38omjrl63dv9509hddgyia FOREIGN KEY (id_author) REFERENCES public.authors(id_author);


--
-- TOC entry 2929 (class 2606 OID 24892)
-- Name: users fkdsov17rd9ogrx4ewtmm2ssk4q; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkdsov17rd9ogrx4ewtmm2ssk4q FOREIGN KEY (id_library) REFERENCES public.libraries(id_library);


--
-- TOC entry 2926 (class 2606 OID 24877)
-- Name: borrowings fkdupfo0f3bqsc4icg5hfawbouu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowings
    ADD CONSTRAINT fkdupfo0f3bqsc4icg5hfawbouu FOREIGN KEY (id_user) REFERENCES public.users(id_user);


--
-- TOC entry 2928 (class 2606 OID 24887)
-- Name: copies fkepdf07tsab8844haelg37jh4h; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.copies
    ADD CONSTRAINT fkepdf07tsab8844haelg37jh4h FOREIGN KEY (id_library) REFERENCES public.libraries(id_library);


--
-- TOC entry 2924 (class 2606 OID 24867)
-- Name: books fknevkwrmsbx9bo45gpkelttn3c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT fknevkwrmsbx9bo45gpkelttn3c FOREIGN KEY (id_category) REFERENCES public.categories(id_category);


--
-- TOC entry 2927 (class 2606 OID 24882)
-- Name: copies fkqy3l3u8h0tsx5i02uv64kj765; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.copies
    ADD CONSTRAINT fkqy3l3u8h0tsx5i02uv64kj765 FOREIGN KEY (id_book) REFERENCES public.books(id_book);


--
-- TOC entry 2930 (class 2606 OID 24897)
-- Name: users fkt92dgi4412ywy3u8tm9jwdya5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkt92dgi4412ywy3u8tm9jwdya5 FOREIGN KEY (id_role) REFERENCES public.roles(id_role);


--
-- TOC entry 2925 (class 2606 OID 24872)
-- Name: borrowings fktr72lc3i6abctw2hvkolvslhw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowings
    ADD CONSTRAINT fktr72lc3i6abctw2hvkolvslhw FOREIGN KEY (id_copy) REFERENCES public.copies(id_copy);


-- Completed on 2021-08-15 17:30:42

--
-- PostgreSQL database dump complete
--

