--
-- PostgreSQL database dump
--

\restrict lgtmlsmJ6Nx7sZDjyYjRGcZn9xopQZ6D4drCbFH30QTjf90WBMIqjqQ3pAdKZIa

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: carreras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carreras (
    id integer NOT NULL,
    nombre character varying(300) NOT NULL,
    codigo_demre character varying(10),
    duracion character varying(50),
    vacantes integer,
    arancel integer,
    universidad_id integer NOT NULL
);


ALTER TABLE public.carreras OWNER TO postgres;

--
-- Name: carreras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carreras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.carreras_id_seq OWNER TO postgres;

--
-- Name: carreras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carreras_id_seq OWNED BY public.carreras.id;


--
-- Name: ponderaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ponderaciones (
    id integer NOT NULL,
    carrera_id integer NOT NULL,
    w_lenguaje numeric(5,2) DEFAULT 0 NOT NULL,
    w_matematicas numeric(5,2) DEFAULT 0 NOT NULL,
    w_matematicas2 numeric(5,2) DEFAULT 0 NOT NULL,
    w_ciencias numeric(5,2) DEFAULT 0 NOT NULL,
    w_historia numeric(5,2) DEFAULT 0 NOT NULL,
    w_nem numeric(5,2) DEFAULT 0 NOT NULL,
    w_ranking numeric(5,2) DEFAULT 0 NOT NULL
);


ALTER TABLE public.ponderaciones OWNER TO postgres;

--
-- Name: ponderaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ponderaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ponderaciones_id_seq OWNER TO postgres;

--
-- Name: ponderaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ponderaciones_id_seq OWNED BY public.ponderaciones.id;


--
-- Name: puntajes_corte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.puntajes_corte (
    id integer NOT NULL,
    carrera_id integer NOT NULL,
    puntaje_minimo numeric(6,2) NOT NULL,
    ano integer NOT NULL
);


ALTER TABLE public.puntajes_corte OWNER TO postgres;

--
-- Name: puntajes_corte_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.puntajes_corte_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.puntajes_corte_id_seq OWNER TO postgres;

--
-- Name: puntajes_corte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.puntajes_corte_id_seq OWNED BY public.puntajes_corte.id;


--
-- Name: simulaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.simulaciones (
    id integer NOT NULL,
    carrera_id integer,
    puntaje_lenguaje numeric(6,2),
    puntaje_matematicas numeric(6,2),
    puntaje_matematicas2 numeric(6,2),
    puntaje_ciencias numeric(6,2),
    puntaje_historia numeric(6,2),
    puntaje_nem numeric(6,2),
    puntaje_ranking numeric(6,2),
    puntaje_total numeric(7,2) NOT NULL,
    fecha_simulacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.simulaciones OWNER TO postgres;

--
-- Name: simulaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.simulaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.simulaciones_id_seq OWNER TO postgres;

--
-- Name: simulaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.simulaciones_id_seq OWNED BY public.simulaciones.id;


--
-- Name: universidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.universidades (
    id integer NOT NULL,
    nombre character varying(200) NOT NULL,
    acreditacion integer,
    sitio_web character varying(255),
    direccion character varying(255),
    latitud numeric(10,7),
    longitud numeric(10,7)
);


ALTER TABLE public.universidades OWNER TO postgres;

--
-- Name: universidades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.universidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.universidades_id_seq OWNER TO postgres;

--
-- Name: universidades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.universidades_id_seq OWNED BY public.universidades.id;


--
-- Name: vista_carreras_completa; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vista_carreras_completa AS
 SELECT u.nombre AS universidad,
    c.nombre AS carrera,
    c.codigo_demre,
    c.vacantes,
    c.arancel,
    c.duracion,
    p.w_lenguaje,
    p.w_matematicas,
    p.w_matematicas2,
    p.w_ciencias,
    p.w_historia,
    p.w_nem,
    p.w_ranking,
    pc.puntaje_minimo,
    pc.ano
   FROM (((public.carreras c
     LEFT JOIN public.universidades u ON ((u.id = c.universidad_id)))
     LEFT JOIN public.ponderaciones p ON ((p.carrera_id = c.id)))
     LEFT JOIN public.puntajes_corte pc ON ((pc.carrera_id = c.id)));


ALTER VIEW public.vista_carreras_completa OWNER TO postgres;

--
-- Name: carreras id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carreras ALTER COLUMN id SET DEFAULT nextval('public.carreras_id_seq'::regclass);


--
-- Name: ponderaciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ponderaciones ALTER COLUMN id SET DEFAULT nextval('public.ponderaciones_id_seq'::regclass);


--
-- Name: puntajes_corte id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puntajes_corte ALTER COLUMN id SET DEFAULT nextval('public.puntajes_corte_id_seq'::regclass);


--
-- Name: simulaciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.simulaciones ALTER COLUMN id SET DEFAULT nextval('public.simulaciones_id_seq'::regclass);


--
-- Name: universidades id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universidades ALTER COLUMN id SET DEFAULT nextval('public.universidades_id_seq'::regclass);


--
-- Data for Name: carreras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) FROM stdin;
1	ARQUITECTURA	11001	\N	125	\N	1
2	ACTUACI├ôN TEATRAL	11003	\N	25	\N	1
3	DISE├æO TEATRAL	11004	\N	25	\N	1
4	DISE├æO	11005	\N	65	\N	1
5	ARTES VISUALES, LIC. EN ARTES CON MENCI├ôN EN	11011	\N	90	\N	1
6	TEOR├ìA E HISTORIA DEL ARTE, LIC. EN ARTES CON MENCI├ôN EN	11016	\N	35	\N	1
7	TEOR├ìA DE LA M├ÜSICA	11017	\N	20	\N	1
8	INGENIER├ìA AGRON├ôMICA	11020	\N	130	\N	1
9	INGENIER├ìA FORESTAL	11021	\N	60	\N	1
10	MEDICINA VETERINARIA	11022	\N	180	\N	1
11	INGENIER├ìA EN RECURSOS NATURALES RENOVABLES	11024	\N	70	\N	1
12	CONTADOR AUDITOR	11026	\N	72	\N	1
13	INGENIER├ìA EN INFORMACI├ôN Y CONTROL DE GESTI├ôN	11027	\N	143	\N	1
14	PEDAGOG├ìA EN EDUCACI├ôN MEDIA EN MATEM├üTICA Y F├ìSICA	11028	\N	45	\N	1
15	ARQUITECTURA	12004	\N	66	\N	2
16	DISE├æO	12006	\N	90	\N	2
17	LETRAS HISP├üNICAS	12008	\N	60	\N	2
18	BIOLOG├ìA	12011	\N	60	\N	2
19	INGENIER├ìA	12039	\N	650	\N	2
20	DERECHO	12021	\N	325	\N	2
21	INGENIER├ìA COMERCIAL	12014	\N	418	\N	2
22	PEDAGOG├ìA EN EDUCACI├ôN PARVULARIA	12025	\N	80	\N	2
23	PEDAGOG├ìA EN EDUCACI├ôN MEDIA EN MATEM├üTICA	12043	\N	40	\N	2
24	MEDICINA	12058	\N	82	\N	2
25	ENFERMER├ìA	12057	\N	120	\N	2
26	ODONTOLOG├ìA	12056	\N	60	\N	2
27	KINESIOLOG├ìA	12061	\N	75	\N	2
28	NUTRICI├ôN Y DIET├ëTICA	12060	\N	58	\N	2
29	PSICOLOG├ìA	12017	\N	120	\N	2
30	ARTES VISUALES	13054	\N	50	\N	3
31	ASTRONOM├ìA	13055	\N	35	\N	3
32	GEOF├ìSICA	13056	\N	35	\N	3
33	PEDAGOG├ìA EN INGL├ëS	13057	\N	55	\N	3
34	TRADUCCI├ôN/INTERPRETACI├ôN EN IDIOMAS EXTRANJEROS	13058	\N	73	\N	3
35	LICENCIATURA EN HISTORIA	13059	\N	30	\N	3
36	TEATRO	13060	\N	40	\N	3
37	INGENIER├ìA AMBIENTAL	13061	\N	55	\N	3
38	INGENIER├ìA CIVIL BIOM├ëDICA	13062	\N	58	\N	3
39	INGENIER├ìA CIVIL DE MATERIALES	13063	\N	45	\N	3
40	INGENIER├ìA CIVIL EN TELECOMUNICACIONES	13064	\N	50	\N	3
41	INGENIER├ìA ESTAD├ìSTICA	13065	\N	25	\N	3
42	INGENIER├ìA CIVIL AEROESPACIAL	13066	\N	18	\N	3
43	PSICOLOG├ìA	13067	\N	59	\N	3
44	INGENIER├ìA CIVIL, PRIMER A├æO COM├ÜN	13068	\N	150	\N	3
45	INGENIER├ìA CIVIL	13069	\N	98	\N	3
46	ARQUITECTURA	14001	\N	120	\N	4
47	ARTE	14002	\N	55	\N	4
48	DISE├æO	14003	\N	70	\N	4
49	DERECHO	14004	\N	240	\N	4
50	INGENIER├ìA CIVIL	14005	\N	150	\N	4
51	INGENIER├ìA CIVIL EL├ëCTRICA	14006	\N	100	\N	4
52	INGENIER├ìA CIVIL INFORM├üTICA	14007	\N	110	\N	4
53	INGENIER├ìA CIVIL MEC├üNICA	14008	\N	120	\N	4
54	PEDAGOG├ìA EN EDUCACI├ôN PARVULARIA	14009	\N	90	\N	4
55	PEDAGOG├ìA EN EDUCACI├ôN B├üSICA	14010	\N	95	\N	4
56	PEDAGOG├ìA EN EDUCACI├ôN MEDIA EN MATEM├üTICA Y F├ìSICA	14011	\N	45	\N	4
57	INGENIER├ìA COMERCIAL	14012	\N	200	\N	4
58	PSICOLOG├ìA	14013	\N	90	\N	4
59	TRABAJO SOCIAL	14014	\N	80	\N	4
60	PERIODISMO	14015	\N	70	\N	4
61	INGENIER├ìA CIVIL	15001	\N	400	\N	5
62	INGENIER├ìA CIVIL EL├ëCTRICA	15002	\N	120	\N	5
63	INGENIER├ìA CIVIL ELECTR├ôNICA	15003	\N	130	\N	5
64	INGENIER├ìA CIVIL INFORM├üTICA	15004	\N	110	\N	5
65	INGENIER├ìA CIVIL MEC├üNICA	15005	\N	115	\N	5
66	INGENIER├ìA CIVIL QU├ìMICA	15006	\N	90	\N	5
67	INGENIER├ìA CIVIL INDUSTRIAL	15007	\N	150	\N	5
68	INGENIER├ìA CIVIL EN MINAS	15008	\N	80	\N	5
69	INGENIER├ìA CIVIL AMBIENTAL	15009	\N	85	\N	5
70	CONSTRUCCI├ôN CIVIL	15010	\N	95	\N	5
71	ARQUITECTURA	15011	\N	80	\N	5
72	LICENCIATURA EN F├ìSICA	15012	\N	45	\N	5
73	LICENCIATURA EN MATEM├üTICA	15013	\N	45	\N	5
74	QU├ìMICA	15014	\N	50	\N	5
75	INGENIER├ìA EN ROB├ôTICA	15015	\N	50	\N	5
76	ARQUITECTURA	16001	\N	100	\N	6
77	DERECHO	16002	\N	300	\N	6
78	INGENIER├ìA CIVIL INDUSTRIAL	16003	\N	220	\N	6
79	INGENIER├ìA CIVIL EL├ëCTRICA	16004	\N	150	\N	6
80	INGENIER├ìA CIVIL INFORM├üTICA	16005	\N	140	\N	6
81	INGENIER├ìA CIVIL MEC├üNICA	16006	\N	130	\N	6
82	INGENIER├ìA CIVIL EN MINAS	16007	\N	100	\N	6
83	PSICOLOG├ìA	16008	\N	120	\N	6
84	PERIODISMO	16009	\N	80	\N	6
85	TRABAJO SOCIAL	16010	\N	90	\N	6
86	PEDAGOG├ìA EN EDUCACI├ôN B├üSICA	16011	\N	95	\N	6
87	PEDAGOG├ìA EN EDUCACI├ôN MEDIA EN MATEM├üTICA Y F├ìSICA	16012	\N	70	\N	6
88	PEDAGOG├ìA EN EDUCACI├ôN PARVULARIA	16013	\N	90	\N	6
89	QU├ìMICA	16014	\N	60	\N	6
90	BIOLOG├ìA	16015	\N	60	\N	6
91	ARQUITECTURA	17001	\N	80	\N	7
92	DERECHO	17002	\N	200	\N	7
93	MEDICINA	17003	\N	80	\N	7
94	ENFERMER├ìA	17004	\N	90	\N	7
95	ODONTOLOG├ìA	17005	\N	80	\N	7
96	PSICOLOG├ìA	17006	\N	100	\N	7
97	KINESIOLOG├ìA	17007	\N	90	\N	7
98	NUTRICI├ôN Y DIET├ëTICA	17008	\N	60	\N	7
99	BIOLOG├ìA MARINA	17009	\N	70	\N	7
100	INGENIER├ìA CIVIL	17010	\N	150	\N	7
101	INGENIER├ìA CIVIL EL├ëCTRICA	17011	\N	90	\N	7
102	INGENIER├ìA CIVIL INDUSTRIAL	17012	\N	100	\N	7
103	PEDAGOG├ìA EN EDUCACI├ôN MEDIA EN CIENCIAS NATURALES	17013	\N	70	\N	7
104	PEDAGOG├ìA EN EDUCACI├ôN PARVULARIA	17014	\N	70	\N	7
105	VETERINARIA	17015	\N	100	\N	7
106	ARQUITECTURA	18001	\N	80	\N	8
107	DISE├æO	18002	\N	80	\N	8
108	ARTE	18003	\N	60	\N	8
109	DERECHO	18004	\N	250	\N	8
110	PSICOLOG├ìA	18005	\N	120	\N	8
111	TRABAJO SOCIAL	18006	\N	90	\N	8
112	PERIODISMO	18007	\N	70	\N	8
113	PEDAGOG├ìA EN EDUCACI├ôN PARVULARIA	18008	\N	80	\N	8
114	PEDAGOG├ìA EN EDUCACI├ôN B├üSICA	18009	\N	80	\N	8
115	PEDAGOG├ìA EN EDUCACI├ôN MEDIA EN MATEM├üTICA Y F├ìSICA	18010	\N	60	\N	8
116	ENFERMER├ìA	18011	\N	120	\N	8
117	MEDICINA	18012	\N	80	\N	8
118	ODONTOLOG├ìA	18013	\N	70	\N	8
119	KINESIOLOG├ìA	18014	\N	90	\N	8
120	FONOAUDIOLOG├ìA	18015	\N	75	\N	8
\.


--
-- Data for Name: ponderaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) FROM stdin;
1	1	0.20	0.30	0.10	0.10	0.10	0.10	0.20
2	2	0.10	0.10	0.00	0.00	0.10	0.10	0.10
3	3	0.25	0.20	0.00	0.00	0.25	0.10	0.20
4	4	0.25	0.25	0.00	0.10	0.10	0.10	0.30
5	5	0.35	0.10	0.00	0.00	0.25	0.10	0.20
6	6	0.35	0.10	0.00	0.00	0.25	0.10	0.20
7	7	0.30	0.15	0.00	0.00	0.25	0.10	0.20
8	8	0.10	0.25	0.00	0.10	0.10	0.20	0.35
9	9	0.10	0.25	0.00	0.20	0.20	0.10	0.35
10	10	0.20	0.35	0.00	0.15	0.00	0.10	0.20
11	11	0.10	0.20	0.05	0.10	0.10	0.20	0.35
12	12	0.10	0.35	0.15	0.10	0.10	0.10	0.20
13	13	0.10	0.35	0.15	0.10	0.10	0.10	0.20
14	14	0.10	0.20	0.10	0.30	0.00	0.10	0.20
15	15	0.15	0.35	0.00	0.10	0.10	0.20	0.20
16	16	0.20	0.20	0.00	0.00	0.10	0.25	0.25
17	17	0.25	0.15	0.00	0.00	0.10	0.25	0.25
18	18	0.10	0.25	0.00	0.25	0.00	0.20	0.20
19	19	0.10	0.40	0.00	0.10	0.00	0.20	0.20
20	20	0.20	0.20	0.00	0.00	0.15	0.20	0.25
21	21	0.10	0.35	0.00	0.15	0.00	0.20	0.20
22	22	0.20	0.15	0.00	0.00	0.15	0.20	0.30
23	23	0.10	0.35	0.00	0.15	0.00	0.20	0.20
24	24	0.20	0.20	0.00	0.00	0.10	0.25	0.25
25	25	0.10	0.35	0.00	0.15	0.00	0.20	0.20
26	26	0.10	0.35	0.00	0.15	0.00	0.20	0.20
27	27	0.10	0.20	0.00	0.25	0.00	0.20	0.25
28	28	0.10	0.20	0.00	0.25	0.00	0.20	0.25
29	29	0.20	0.20	0.00	0.00	0.10	0.25	0.25
30	30	0.25	0.30	0.10	0.20	0.00	0.15	0.25
31	31	0.20	0.20	0.10	0.10	0.00	0.15	0.25
32	32	0.15	0.25	0.10	0.10	0.00	0.15	0.25
33	33	0.25	0.25	0.00	0.00	0.10	0.15	0.25
34	34	0.25	0.25	0.00	0.00	0.10	0.15	0.25
35	35	0.20	0.10	0.00	0.00	0.30	0.15	0.25
36	36	0.25	0.15	0.00	0.00	0.20	0.15	0.25
37	37	0.15	0.25	0.10	0.10	0.00	0.15	0.25
38	38	0.15	0.25	0.15	0.10	0.00	0.20	0.15
39	39	0.15	0.25	0.15	0.10	0.00	0.20	0.15
40	40	0.15	0.25	0.15	0.10	0.00	0.20	0.15
41	41	0.15	0.25	0.10	0.10	0.00	0.15	0.25
42	42	0.15	0.25	0.15	0.10	0.00	0.20	0.15
43	43	0.20	0.30	0.00	0.10	0.10	0.15	0.25
44	44	0.15	0.25	0.15	0.10	0.00	0.20	0.15
45	45	0.15	0.25	0.15	0.10	0.00	0.20	0.15
46	46	0.20	0.25	0.00	0.00	0.10	0.20	0.25
47	47	0.25	0.20	0.00	0.00	0.10	0.20	0.25
48	48	0.25	0.15	0.00	0.00	0.10	0.25	0.25
49	49	0.15	0.25	0.00	0.10	0.10	0.20	0.20
50	50	0.10	0.35	0.00	0.15	0.00	0.20	0.20
51	51	0.10	0.40	0.00	0.10	0.00	0.20	0.20
52	52	0.10	0.35	0.05	0.10	0.00	0.20	0.20
53	53	0.10	0.35	0.05	0.10	0.00	0.20	0.20
54	54	0.20	0.15	0.00	0.00	0.15	0.25	0.25
55	55	0.20	0.20	0.00	0.00	0.10	0.25	0.25
56	56	0.15	0.30	0.00	0.00	0.15	0.20	0.20
57	57	0.10	0.35	0.00	0.15	0.00	0.20	0.20
58	58	0.20	0.20	0.00	0.00	0.10	0.25	0.25
59	59	0.20	0.20	0.00	0.00	0.15	0.20	0.25
60	60	0.20	0.25	0.00	0.00	0.10	0.20	0.25
61	61	0.10	0.45	0.05	0.05	0.00	0.15	0.20
62	62	0.10	0.45	0.05	0.05	0.00	0.15	0.20
63	63	0.10	0.45	0.05	0.05	0.00	0.15	0.20
64	64	0.10	0.45	0.05	0.05	0.00	0.15	0.20
65	65	0.10	0.45	0.05	0.05	0.00	0.15	0.20
66	66	0.10	0.45	0.05	0.05	0.00	0.15	0.20
67	67	0.10	0.45	0.05	0.05	0.00	0.15	0.20
68	68	0.10	0.45	0.05	0.05	0.00	0.15	0.20
69	69	0.10	0.45	0.05	0.05	0.00	0.15	0.20
70	70	0.10	0.45	0.05	0.05	0.00	0.15	0.20
71	71	0.20	0.25	0.00	0.00	0.10	0.20	0.25
72	72	0.15	0.25	0.10	0.10	0.00	0.15	0.25
73	73	0.15	0.25	0.10	0.10	0.00	0.15	0.25
74	74	0.15	0.25	0.10	0.10	0.00	0.15	0.25
75	75	0.15	0.25	0.10	0.10	0.00	0.15	0.25
\.


--
-- Data for Name: puntajes_corte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) FROM stdin;
1	1	458.00	2024
2	2	458.00	2024
3	3	458.00	2024
4	4	458.00	2024
5	5	458.00	2024
6	6	458.00	2024
7	7	458.00	2024
8	8	458.00	2024
9	9	458.00	2024
10	10	458.00	2024
11	11	458.00	2024
12	12	458.00	2024
13	13	458.00	2024
14	14	458.00	2024
15	15	485.00	2024
16	16	485.00	2024
17	17	485.00	2024
18	18	485.00	2024
19	19	485.00	2024
20	20	485.00	2024
21	21	485.00	2024
22	22	485.00	2024
23	23	485.00	2024
24	24	485.00	2024
25	25	485.00	2024
26	26	485.00	2024
27	27	485.00	2024
28	28	485.00	2024
29	29	485.00	2024
30	30	485.00	2024
31	31	485.00	2024
32	32	485.00	2024
33	33	500.00	2024
34	34	485.00	2024
35	35	485.00	2024
36	36	485.00	2024
37	37	485.00	2024
38	38	485.00	2024
39	39	485.00	2024
40	40	485.00	2024
41	41	485.00	2024
42	42	485.00	2024
43	43	485.00	2024
44	44	485.00	2024
45	45	485.00	2024
46	46	480.00	2024
47	47	480.00	2024
48	48	480.00	2024
49	49	480.00	2024
50	50	480.00	2024
51	51	480.00	2024
52	52	480.00	2024
53	53	480.00	2024
54	54	480.00	2024
55	55	480.00	2024
56	56	480.00	2024
57	57	480.00	2024
58	58	480.00	2024
59	59	480.00	2024
60	60	480.00	2024
61	61	475.00	2024
62	62	475.00	2024
63	63	475.00	2024
64	64	475.00	2024
65	65	475.00	2024
66	66	475.00	2024
67	67	475.00	2024
68	68	475.00	2024
69	69	475.00	2024
70	70	475.00	2024
71	71	475.00	2024
72	72	475.00	2024
73	73	475.00	2024
74	74	475.00	2024
75	75	475.00	2024
76	76	470.00	2024
77	77	470.00	2024
78	78	470.00	2024
79	79	470.00	2024
80	80	470.00	2024
81	81	470.00	2024
82	82	470.00	2024
83	83	470.00	2024
84	84	470.00	2024
85	85	470.00	2024
86	86	470.00	2024
87	87	470.00	2024
88	88	470.00	2024
89	89	470.00	2024
90	90	470.00	2024
91	91	460.00	2024
92	92	460.00	2024
93	93	460.00	2024
94	94	460.00	2024
95	95	460.00	2024
96	96	460.00	2024
97	97	460.00	2024
98	98	460.00	2024
99	99	460.00	2024
100	100	460.00	2024
101	101	460.00	2024
102	102	460.00	2024
103	103	460.00	2024
104	104	460.00	2024
105	105	460.00	2024
106	106	455.00	2024
107	107	455.00	2024
108	108	455.00	2024
109	109	455.00	2024
110	110	455.00	2024
111	111	455.00	2024
112	112	455.00	2024
113	113	455.00	2024
114	114	455.00	2024
115	115	455.00	2024
116	116	455.00	2024
117	117	455.00	2024
118	118	455.00	2024
119	119	455.00	2024
120	120	455.00	2024
\.


--
-- Data for Name: simulaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.simulaciones (id, carrera_id, puntaje_lenguaje, puntaje_matematicas, puntaje_matematicas2, puntaje_ciencias, puntaje_historia, puntaje_nem, puntaje_ranking, puntaje_total, fecha_simulacion) FROM stdin;
\.


--
-- Data for Name: universidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.universidades (id, nombre, acreditacion, sitio_web, direccion, latitud, longitud) FROM stdin;
1	UNIVERSIDAD DE CHILE	7	https://www.uchile.cl	Santiago	\N	\N
2	PONTIFICIA UNIVERSIDAD CAT├ôLICA DE CHILE	7	https://www.uc.cl	Santiago	\N	\N
3	UNIVERSIDAD DE CONCEPCI├ôN	7	https://www.udec.cl	Concepci├│n	\N	\N
4	PONTIFICIA UNIVERSIDAD CAT├ôLICA DE VALPARA├ìSO	7	https://www.pucv.cl	Valpara├¡so	\N	\N
5	UNIVERSIDAD T├ëCNICA FEDERICO SANTA MAR├ìA	7	https://www.usm.cl	Valpara├¡so	\N	\N
6	UNIVERSIDAD DE SANTIAGO DE CHILE	7	https://www.usach.cl	Santiago	\N	\N
7	UNIVERSIDAD AUSTRAL DE CHILE	6	https://www.uach.cl	Valdivia	\N	\N
8	UNIVERSIDAD DE VALPARA├ìSO	6	https://www.uv.cl	Valpara├¡so	\N	\N
\.


--
-- Name: carreras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carreras_id_seq', 120, true);


--
-- Name: ponderaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ponderaciones_id_seq', 75, true);


--
-- Name: puntajes_corte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.puntajes_corte_id_seq', 120, true);


--
-- Name: simulaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.simulaciones_id_seq', 1, false);


--
-- Name: universidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.universidades_id_seq', 8, true);


--
-- Name: carreras carreras_codigo_demre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT carreras_codigo_demre_key UNIQUE (codigo_demre);


--
-- Name: carreras carreras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT carreras_pkey PRIMARY KEY (id);


--
-- Name: ponderaciones ponderaciones_carrera_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ponderaciones
    ADD CONSTRAINT ponderaciones_carrera_id_key UNIQUE (carrera_id);


--
-- Name: ponderaciones ponderaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ponderaciones
    ADD CONSTRAINT ponderaciones_pkey PRIMARY KEY (id);


--
-- Name: puntajes_corte puntajes_corte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puntajes_corte
    ADD CONSTRAINT puntajes_corte_pkey PRIMARY KEY (id);


--
-- Name: simulaciones simulaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.simulaciones
    ADD CONSTRAINT simulaciones_pkey PRIMARY KEY (id);


--
-- Name: universidades universidades_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universidades
    ADD CONSTRAINT universidades_nombre_key UNIQUE (nombre);


--
-- Name: universidades universidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universidades
    ADD CONSTRAINT universidades_pkey PRIMARY KEY (id);


--
-- Name: carreras ux_carrera_univ; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT ux_carrera_univ UNIQUE (universidad_id, nombre);


--
-- Name: puntajes_corte ux_pc_carrera_ano; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puntajes_corte
    ADD CONSTRAINT ux_pc_carrera_ano UNIQUE (carrera_id, ano);


--
-- Name: carreras fk_carrera_univ; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT fk_carrera_univ FOREIGN KEY (universidad_id) REFERENCES public.universidades(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: puntajes_corte fk_pc_carrera; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puntajes_corte
    ADD CONSTRAINT fk_pc_carrera FOREIGN KEY (carrera_id) REFERENCES public.carreras(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ponderaciones fk_ponderacion_carrera; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ponderaciones
    ADD CONSTRAINT fk_ponderacion_carrera FOREIGN KEY (carrera_id) REFERENCES public.carreras(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: simulaciones fk_sim_carrera; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.simulaciones
    ADD CONSTRAINT fk_sim_carrera FOREIGN KEY (carrera_id) REFERENCES public.carreras(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict lgtmlsmJ6Nx7sZDjyYjRGcZn9xopQZ6D4drCbFH30QTjf90WBMIqjqQ3pAdKZIa


