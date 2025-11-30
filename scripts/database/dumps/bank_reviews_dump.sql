--
-- PostgreSQL database dump
--

\restrict stzka7W1mzX8J8N8dVytciSzrLM7Fye9S2srSyIXJcbFJFwlO7vKuwU7QldHU0t

-- Dumped from database version 14.12 (Homebrew)
-- Dumped by pg_dump version 14.20 (Homebrew)

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
-- Name: banks; Type: TABLE; Schema: public; Owner: elshaday
--

CREATE TABLE public.banks (
    bank_id integer NOT NULL,
    bank_name text NOT NULL,
    app_name text NOT NULL
);


ALTER TABLE public.banks OWNER TO elshaday;

--
-- Name: banks_bank_id_seq; Type: SEQUENCE; Schema: public; Owner: elshaday
--

CREATE SEQUENCE public.banks_bank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banks_bank_id_seq OWNER TO elshaday;

--
-- Name: banks_bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elshaday
--

ALTER SEQUENCE public.banks_bank_id_seq OWNED BY public.banks.bank_id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: elshaday
--

CREATE TABLE public.reviews (
    review_id text NOT NULL,
    bank_id integer,
    review_text text,
    rating integer,
    review_date date,
    vader_sentiment_label text,
    vader_sentiment_score double precision,
    textblob_sentiment_label text,
    textblob_sentiment_score double precision,
    source text
);


ALTER TABLE public.reviews OWNER TO elshaday;

--
-- Name: banks bank_id; Type: DEFAULT; Schema: public; Owner: elshaday
--

ALTER TABLE ONLY public.banks ALTER COLUMN bank_id SET DEFAULT nextval('public.banks_bank_id_seq'::regclass);


--
-- Data for Name: banks; Type: TABLE DATA; Schema: public; Owner: elshaday
--

COPY public.banks (bank_id, bank_name, app_name) FROM stdin;
1	cbe	com.combanketh.mobilebanking
2	boa	com.boa.boaMobileBanking
3	dashen	com.dashen.dashensuperapp
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: elshaday
--

COPY public.reviews (review_id, bank_id, review_text, rating, review_date, vader_sentiment_label, vader_sentiment_score, textblob_sentiment_label, textblob_sentiment_score, source) FROM stdin;
0d6ae179-04ce-4b0c-900b-409198970d7a	2	ok	1	2024-06-24	positive	0.296	positive	0.5	google_play
2b2ff6dc-5482-4582-98ba-2ed17547e409	2	open open service	5	2024-06-26	neutral	0	neutral	0	google_play
f0fe277f-65c1-461c-afad-8cd40c6ab368	2	two month cannot transaction using really disappointing using bank abyssinia currently nearest bank work place bank turning worst bank country day day always respond customer updating system year long think train customer service operator	1	2024-06-26	negative	-0.8221	negative	-0.4125	google_play
829d9bb9-e4bc-4e04-90c2-867460eab574	2	demand disable developer option	1	2024-06-27	negative	-0.128	neutral	0	google_play
d7273bdf-94a5-4b02-89ec-4a863195ea29	2	underrated ever seen ur banking system soo idiocracy	1	2024-06-27	neutral	0	neutral	0	google_play
dc201a15-30b2-4d8b-8754-0ecc2db8130b	2	used run fine take like forever even open main dashboard sometimes crash guy gotta step need way faster	1	2024-06-27	positive	0.1531	positive	0.1944444444444444	google_play
9d5f10f6-476f-4b3d-85f9-7ea5e52bdad7	2	excellent	5	2024-06-29	positive	0.5719	positive	1	google_play
c47517ad-7dbb-46ed-864d-4b898aff2b23	2	doe not work	1	2024-06-30	neutral	0	neutral	0	google_play
764b8c59-0297-4141-a7c7-89ed28801671	2	best	5	2024-07-01	positive	0.6369	positive	1	google_play
3c94365a-df7a-44a6-a947-4e40d575efdc	2	please recover thank	5	2024-07-02	positive	0.5859	neutral	0	google_play
f402174e-b7fe-45b9-9140-7648c19fdd33	2	please make functional	5	2024-07-03	positive	0.3182	neutral	0	google_play
196ffa19-91c5-4f11-9427-cff840f683e1	2	best not working poor connection area	5	2024-07-03	positive	0.7753	positive	0.3	google_play
61368724-0edf-4e9e-89fa-24210bf530ad	2	even working day please check	1	2024-07-04	positive	0.3182	neutral	0	google_play
1bdac495-0844-4896-b693-213485aad561	2	not believe day age one major bank country not seem understand working mobile payment option must survive decided move account cbe awash not bothered useless	1	2024-07-04	positive	0.5096	negative	-0.21875	google_play
53214d92-a487-43cb-b69d-b65294b40823	2	essentially unusable asks disable developer mode even already disabled crash sometimes work wifi sometimes data crash	1	2024-07-04	negative	-0.6597	negative	-0.1	google_play
39fe53b7-1d77-4649-a19d-5e925f804a5b	2	NaN	5	2024-07-05	neutral	0	neutral	0	google_play
e4760475-c6dd-4530-8aea-beeef1371e3f	2	miliyone	5	2024-07-05	neutral	0	neutral	0	google_play
6d67dca3-b643-462f-bfac-f49811eb1473	2	usually crash unable process also request developer option	1	2024-07-05	negative	-0.4019	negative	-0.375	google_play
eb3fc431-4145-4276-990f-496c764b7ea7	2	never going use trash no one care bank rate	1	2024-07-06	positive	0.25	neutral	0	google_play
402ea96f-df73-4dab-a929-4c66f64adce7	2	bad doe not work	1	2024-07-06	negative	-0.5423	negative	-0.6999999999999998	google_play
ecca0ed7-ddf3-4dbe-ba38-145eca8dea76	2	good	5	2024-07-07	positive	0.4404	positive	0.7	google_play
5921455b-b0e2-4cc1-90a3-92ff67166c47	2	good slow	1	2024-07-08	positive	0.4404	positive	0.1999999999999999	google_play
986b160c-cade-4ae5-918e-eddd2802d4d8	2	doe not work well	2	2024-07-09	negative	-0.2057	neutral	0	google_play
9d157253-6414-46f1-a2f3-0867fbd3f25d	2	pretty good banking still lack thing ui speed overall good application thank	5	2024-07-09	positive	0.8481	positive	0.4125	google_play
8056e337-2fa8-44c9-9017-083b0009d534	2	no work	5	2024-07-10	negative	-0.296	neutral	0	google_play
999a858d-cb31-4660-aba7-ccda89f5e06a	2	late	1	2024-07-10	neutral	0	negative	-0.3	google_play
94d435e8-8e1a-43e6-8a3c-bd755d66064e	2	keep crashing stop responding using trying open go bank person banking activity short worst mobile banking system ethiopia	1	2024-07-11	negative	-0.743	negative	-0.3333333333333333	google_play
9585bf0d-1dbb-4890-bd88-51cd6f86b0ba	2	useless	1	2024-07-11	negative	-0.4215	negative	-0.5	google_play
440848a3-ad5c-43fc-b4ae-bc29e26e322a	2	ok	5	2024-07-11	positive	0.296	positive	0.5	google_play
0c83e05b-6fa5-425f-9f09-a30947722360	2	not fast	3	2024-07-11	neutral	0	negative	-0.1	google_play
7bc823fa-4a5e-449b-a505-235522c4c501	2	worst mobile banking	1	2024-07-11	negative	-0.6249	negative	-1	google_play
56e691a9-fdd9-469b-a8b0-d495312cda48	2	good sometimes not work probably	5	2024-07-12	positive	0.4404	positive	0.7	google_play
db0f8d24-804c-4cf2-8a36-f1f68b6bd616	2	stupid seen would turn developer mode not make secure clearly indicates ha poor implementation unskilled developer lot people need developer option different reason please sake bank fix thing even secure international banking not require not mention lag crash	1	2024-07-12	negative	-0.5908	neutral	-0.0428571428571428	google_play
e303c5a5-ecd1-4f13-b38c-4b9523bbf321	2	doe not work	1	2024-07-12	neutral	0	neutral	0	google_play
e498340e-1663-4ced-83b2-cc2cd8e4e595	2	good	5	2024-07-13	positive	0.4404	positive	0.7	google_play
afb20187-3e85-43d7-b7d1-c5d36e0e7309	2	boa	5	2024-07-13	neutral	0	neutral	0	google_play
3af6db50-c93f-4916-bc9b-8ce248f59a4e	2	not believe abyssinia develop kind trash lot issue	1	2024-07-13	positive	0.5267	positive	0.6	google_play
59b9ec93-50cb-45b3-81bf-5dcea550374e	2	boa	5	2024-07-13	neutral	0	neutral	0	google_play
3cc9d24d-ace9-45a4-a843-7750c0babd8d	2	not functional keep saying error unable activate	1	2024-07-13	negative	-0.4019	negative	-0.5	google_play
b9471f3a-2e46-4397-a4df-f466c05a21cc	2	poor always cresh not compatible	2	2024-07-13	negative	-0.4767	negative	-0.4	google_play
3a262ba3-fdc7-4f08-92a4-93b0a862ec2f	2	experienced	5	2024-07-14	neutral	0	positive	0.8	google_play
421ae4df-7a88-426e-b355-1a437f7f8f3f	2	worst banking	1	2024-07-15	negative	-0.6249	negative	-1	google_play
a98b2177-e8cf-4818-aa1b-82a1e80df07b	2	constantly crashing freezing send boa customer account	1	2024-07-15	negative	-0.1027	neutral	0	google_play
1aceb68b-cadd-4081-83f2-6e22ac4b3049	2	😡😡😡😡😡😡😡	1	2024-07-15	neutral	0	neutral	0	google_play
e5d0a231-52e9-4fba-8173-ca61c25de63b	2	ok stop sundenly	5	2024-07-15	neutral	0	positive	0.5	google_play
59929eca-9200-491e-8cb3-6caabe85c697	2	NaN	3	2024-07-15	neutral	0	neutral	0	google_play
b56a3452-b7ca-4299-a268-8bb9e84fb3c5	2	no work	5	2024-07-15	negative	-0.296	neutral	0	google_play
e40abcb7-e431-4333-92ad-ef90b6cb11cb	2	NaN	1	2024-07-16	neutral	0	neutral	0	google_play
4a6a938a-e74a-4e00-81f8-76c8b093f4d3	2	wow	5	2024-07-16	positive	0.5859	positive	0.1	google_play
95a7177d-a323-4a17-98ad-9f94ea147686	2	poorest mobile banking survice ever error report frequently	1	2024-07-16	negative	-0.7351	positive	0.1	google_play
37ed81e2-a945-49be-b1fb-0527a4f8a21d	2	excellent	5	2024-07-16	positive	0.5719	positive	1	google_play
b1ec9a7a-5962-45c7-ac3a-0043f8a96f9e	2	not working	1	2024-07-16	neutral	0	neutral	0	google_play
f7d047c8-6354-4ab4-8960-83463815f833	2	mal	5	2024-07-16	neutral	0	neutral	0	google_play
29aa3b3c-e4c7-41c7-bbb1-5d514633c307	2	worst wise invest money make like cbe even incon ha no image ha ui please invest hire professional developer company improve	1	2024-07-18	positive	0.8074	negative	-0.0666666666666666	google_play
d7ee5d77-4c89-4e81-a79d-000f5e23c3ac	2	previous application much one	1	2024-07-18	neutral	0	neutral	0.0166666666666666	google_play
0b4b949e-9c50-4262-9b4a-fcdd563921ea	2	not working one apollo u make pls gonne stop using bank mobile banking	1	2024-07-19	negative	-0.2263	neutral	0	google_play
e090fd59-6274-4827-8c79-644c6a1f5c73	2	experiance	5	2024-07-19	neutral	0	neutral	0	google_play
2a2d15cb-06ba-425c-a417-2f020e552505	2	crash frequently not stable overall need improvement huge bank need current one	1	2024-07-19	positive	0.1808	positive	0.0875	google_play
847c4660-1018-4794-9e36-4b361438b6fd	2	wow	5	2024-07-19	positive	0.5859	positive	0.1	google_play
481a1e89-df8b-43d4-9bf7-aa4a5cd196f5	2	not working android show error notification forcefully close must fixed asap	1	2024-07-19	negative	-0.4019	positive	0.1	google_play
55a9b559-0322-409d-9973-ebd1f7b5595b	2	ahmed mohammed husen	3	2024-07-21	neutral	0	neutral	0	google_play
ac10c99a-bbe4-4a0c-92c3-14e312356969	2	naziriet measho	1	2024-07-22	neutral	0	neutral	0	google_play
01c3d316-3dbc-4e5c-9a71-8ed4fecc7233	2	screenshot not working please modify	2	2024-07-22	negative	-0.2411	neutral	0	google_play
3c4112db-f5c6-4d6c-9df2-de29043c5c14	2	want international mobile banking	1	2024-07-22	positive	0.0772	neutral	0	google_play
d013e7a7-f3ca-47ec-a3e9-84c741e47b7a	2	fix apollo guy best	1	2024-07-23	positive	0.6369	positive	1	google_play
ec8fcf0d-19d7-446f-bd1e-907f91a67b49	2	difficult use user one dawenload user not operate well no one help	1	2024-07-23	positive	0.0706	negative	-0.5	google_play
d3a4d1b9-9b82-4760-bd5d-ae4fd3232750	2	always slow doe not work weekend rush merchant not	1	2024-07-23	neutral	0	negative	-0.3	google_play
22a3c388-07da-4c4b-bfb4-4cfc882733f0	2	okay	5	2024-07-23	positive	0.2263	positive	0.5	google_play
b6e1b58d-d5d6-4134-b837-32c4833850ae	2	usually crash reason give problem internet connection although internet wa fine	1	2024-07-23	negative	-0.5574	positive	0.0833333333333333	google_play
f9d522b2-ef61-43ea-bdff-9ccf70b88498	2	poor application turned	1	2024-07-23	negative	-0.4767	negative	-0.4	google_play
a8eadd54-7005-491c-ae8a-126d371abc3b	2	nice	5	2024-07-24	positive	0.4215	positive	0.6	google_play
1920d8a2-4e03-4818-8a69-7c17c565ae75	2	try use application say developer setting setting play still doe not work	3	2024-07-24	positive	0.34	neutral	0	google_play
39a442aa-c19f-46d0-96f4-fa8efcc622a2	2	good	1	2024-07-24	positive	0.4404	positive	0.7	google_play
b209e7d6-5e6b-41ca-9658-be1a2a635ccc	2	corrupted poor	1	2024-07-24	negative	-0.4767	negative	-0.4	google_play
06f1e24f-10fc-461b-862c-180fb9acf4f4	2	not work version still not compatible samsung v funny	1	2024-07-25	negative	-0.3412	positive	0.25	google_play
c8c1d8d1-5304-4e81-a052-f7437a7b341e	2	fake try not working say please try later unable make transaction purpose not working delete	1	2024-07-25	negative	-0.6202	negative	-0.3333333333333333	google_play
a185087f-8a27-444a-8646-23f7ab69b205	2	uselss dont download	1	2024-07-26	neutral	0	neutral	0	google_play
5b46e22e-c7a6-4a66-bd2c-5976bd9a46f9	2	get good quality	5	2024-07-27	positive	0.4404	positive	0.7	google_play
76284991-7522-4b59-8bec-ac7afb9b54f0	2	not active	1	2024-07-27	negative	-0.3089	positive	0.0666666666666666	google_play
e960ae7a-6e14-47e3-83d2-2d9b3f666a01	2	not even open display error message	1	2024-07-27	negative	-0.4019	neutral	0	google_play
3caf7a29-584d-4d26-b615-ed88a0be9da6	2	worst	1	2024-07-28	negative	-0.6249	negative	-1	google_play
afb68110-3c87-47e8-9fa4-f6cff18e67ea	2	nay	5	2024-07-28	neutral	0	neutral	0	google_play
771835f0-e14b-4290-a792-8c579399faee	2	ok	5	2024-07-29	positive	0.296	positive	0.5	google_play
14bb95be-0bf2-43a7-8757-a4a82eeddd80	2	disappointing	1	2024-07-31	negative	-0.4939	negative	-0.6	google_play
758affdf-42d5-466d-a18e-4c4bbeb738fd	2	ha become troubling every day doe not work love bank hate	1	2024-07-31	negative	-0.8469	negative	-0.15	google_play
be349d45-280d-4ecf-8d23-71c407bd38c6	2	not working totally useless	1	2024-07-31	positive	0.3713	negative	-0.5	google_play
1d426479-7c59-42d4-b349-7bc3afaf374e	2	doe not open sometimes say coonection issue dont open ha bug using not smooth work please improve	1	2024-07-31	neutral	-0.0253	negative	-0.0666666666666666	google_play
03bcdbc8-adcf-4f5d-b155-1001f6debab5	2	not yet completely working not know working properly sad	1	2024-07-31	negative	-0.4767	negative	-0.2	google_play
2bf2f6fe-c408-4a46-9ca9-809df277d9e8	2	poor network	1	2024-08-01	negative	-0.4767	negative	-0.4	google_play
95b8d5aa-aa79-40a8-b250-6bf68f7b9782	2	not working wa much need improve wa best not anymore	2	2024-08-01	positive	0.7964	positive	0.6	google_play
9813a786-cefe-4a1b-932e-e920944fadec	2	useless	1	2024-08-02	negative	-0.4215	negative	-0.5	google_play
2cd82ede-9672-47f0-a5a3-e6be8ff6272b	2	ok	5	2024-08-03	positive	0.296	positive	0.5	google_play
b42ad5f5-049c-49dc-a13c-39b7414793d0	2	not know wrong boa bank general going backwards since last year disaster use every possible way not stable log slow perform transaction could not take screenshot not even find picture even using save screenshot option time fails perform transaction simply worst	1	2024-08-03	negative	-0.7983	negative	-0.3214285714285714	google_play
612a0e01-ba70-498b-a331-e93ce6adfce0	2	take note cbe mobile banking best banking currently take note improve ur sometimes u learn best	1	2024-08-03	positive	0.9062	positive	0.6666666666666666	google_play
7ba41a81-13df-47f6-b720-cb60da94d7e2	2	nice	5	2024-08-03	positive	0.4215	positive	0.6	google_play
82ae5caf-3c2c-4de2-81fa-6753f32c22a6	2	great	5	2024-08-03	positive	0.6249	positive	0.8	google_play
d65cb095-4aad-44b5-ace2-de0e6be51444	2	previous version doe not work	1	2024-08-04	neutral	0	negative	-0.1666666666666666	google_play
5af4e484-25a8-4612-a21f-78d14133c52d	2	necessary switch developer option every time use mobile banking 😡😡😡	1	2024-08-04	neutral	0	neutral	0	google_play
5744dc68-9598-4762-9c1f-60d273f69ac1	2	NaN	1	2024-08-06	neutral	0	neutral	0	google_play
ff078b88-0b15-49b1-8222-9d9d6125bb1b	2	ok	5	2024-08-06	positive	0.296	positive	0.5	google_play
65f4e3f7-9ce6-409d-8f06-4479c3418d3f	2	goood	4	2024-08-06	neutral	0	neutral	0	google_play
61776f16-8a06-4dee-bac3-c902ab447b13	2	review	5	2024-08-06	neutral	0	neutral	0	google_play
c22c687c-b43d-418d-bd9a-c534c12bdee4	2	mean could big financial company like much irresponsible release ashamed	1	2024-08-06	negative	-0.5423	neutral	-0.0281249999999999	google_play
45b0b82d-0f4e-423c-b3d2-6241e89b24bb	2	bad	1	2024-08-06	negative	-0.5423	negative	-0.6999999999999998	google_play
9151c064-a00f-4efc-ad7a-1f632401b194	2	take long time opened even not working simply bank application doe not give digital invoice even not able find screeshot kept transaction please developer fix	1	2024-08-07	positive	0.3182	negative	-0.075	google_play
0ca7af9c-8acd-4e40-a06e-c6e886e84b41	2	good job	5	2024-08-07	positive	0.4404	positive	0.7	google_play
85a692a1-c9ed-4525-a373-8756f3b9724a	2	worst ever not user friendly even doe not serve basic functionality correctly take much time login navigate expected bank	1	2024-08-07	negative	-0.7736	negative	-0.105	google_play
03da81fe-f882-4c5f-ab9a-6fe98ff580c7	2	good	5	2024-08-07	positive	0.4404	positive	0.7	google_play
a675a95c-617f-4cb3-9fe2-2ee0721daa04	2	good	3	2024-08-07	positive	0.4404	positive	0.7	google_play
56402226-89f9-4f56-9761-e0dfeed5718b	2	poor use not start open	1	2024-08-08	negative	-0.4767	negative	-0.2	google_play
7e4a7ccf-64df-4cbe-9a5b-f92e188de048	2	gamebela	1	2024-08-08	neutral	0	neutral	0	google_play
98b97eb6-5299-43f7-a372-45b0a486318b	2	total disaster always offline never work embarassing lost hope taken business competitor	1	2024-08-08	negative	-0.1872	neutral	0	google_play
88e2b5f6-040e-452a-9bad-a98caa89cd95	2	harun tamam galanaa	3	2024-08-09	neutral	0	neutral	0	google_play
ba879c5c-680b-4f62-867c-3f7e8fd1e694	2	gooood dear	5	2024-08-10	positive	0.3818	neutral	0	google_play
0f22d859-973b-46a7-bf95-4e8e14affd35	2	best	5	2024-08-11	positive	0.6369	positive	1	google_play
501db4c8-f14f-4810-9590-d4ab79be84a2	2	wedi tekle	5	2024-08-11	neutral	0	neutral	0	google_play
0893e704-f5b8-49d8-b12d-dd7e8924daa6	2	dura nan fayyadaman ture amma garuu naaf hojjechaa hin jiru maaf	5	2024-08-11	neutral	0	neutral	0	google_play
91b3d4e5-b3c9-4de6-8bbd-99cfec87e3d0	2	bad	1	2024-08-11	negative	-0.5423	negative	-0.6999999999999998	google_play
a7f22b9a-35a4-4bb9-ba49-badf18ba0243	2	nice appp	5	2024-08-11	positive	0.4215	positive	0.6	google_play
a2b03cf9-f97f-487c-b55b-58acfe13b6ac	2	best	1	2024-08-12	positive	0.6369	positive	1	google_play
68af9c89-56b9-4059-8112-23e5a03a7648	2	ok	5	2024-08-12	positive	0.296	positive	0.5	google_play
f3cb13b7-59a4-4910-8373-e7a7f3f9d1e9	2	poor b c highly slow open	1	2024-08-12	negative	-0.4767	negative	-0.2333333333333333	google_play
f2eec1d7-ae40-470e-b9f3-bd992ae32037	2	thank	3	2024-08-12	positive	0.3612	neutral	0	google_play
6e039674-a668-43a6-8d89-201a4c32000e	2	despite enhanced technology application doe not work properly asks developer option turned fix	3	2024-08-12	neutral	0	neutral	0	google_play
05a7adf0-3cd0-4f89-86da-35c241d648a4	2	awesome	5	2024-08-12	positive	0.6249	positive	1	google_play
6dbac161-ee8d-451c-8474-f79f10705e4a	2	good	5	2024-08-13	positive	0.4404	positive	0.7	google_play
b9ddd42d-164a-41e5-b5cd-55dd14cfbd8c	2	mostly not working	1	2024-08-14	neutral	0	negative	-0.25	google_play
dd890ab7-af02-4efa-8e9e-33316a7160bd	2	horrible	1	2024-08-14	negative	-0.5423	negative	-1	google_play
bd90f06d-8e5d-498a-b0be-de5110c3c700	2	not open use application please help	5	2024-08-15	positive	0.6124	neutral	0	google_play
fd6fe106-f83e-4e61-8f27-3555b7e5a227	2	not trust bank service	1	2024-08-16	negative	-0.4023	neutral	0	google_play
7172704c-d6ab-4ee6-8c06-7e540a7d5fc7	2	far good always lug	3	2024-08-17	positive	0.4404	positive	0.3999999999999999	google_play
e8af57ac-dc4a-452b-9bc5-4787b61f6f04	2	best	5	2024-08-18	positive	0.6369	positive	1	google_play
e7724869-421f-4e36-be90-104ea76feb33	2	not working	1	2024-08-18	neutral	0	neutral	0	google_play
8a23ca3d-01db-4da4-b5ad-6e6b510ca564	2	gio	4	2024-08-19	neutral	0	neutral	0	google_play
13cb3aad-a536-447c-8e30-2d7eaedcf5e4	2	application used work well not able use forgot password feature blocking accessing whole	1	2024-08-20	negative	-0.128	neutral	-0.0249999999999999	google_play
1b043c6b-bf34-4b3b-a43b-a35d2613fb26	2	excellent	5	2024-08-21	positive	0.5719	positive	1	google_play
73bf10cd-963e-4696-879a-442ec5a4081a	2	good	5	2024-08-22	positive	0.4404	positive	0.7	google_play
9fa13def-7ef1-4e33-bbd4-24d4a4c2c1b0	2	dont recommand one	1	2024-08-23	neutral	0	neutral	0	google_play
51aba586-a360-476f-8523-7772f8f56827	2	betanya gebre	3	2024-08-23	neutral	0	neutral	0	google_play
8f57afa4-5ed4-4db7-ab84-7b52045fa94e	2	sick tiered enabling disabling developer option everytime use maybe know maybe dont fix please anoying	1	2024-08-26	negative	-0.8106	negative	-0.7142857142857143	google_play
41bb6fe1-d75c-4f69-908e-cd1000cb6b98	2	good	5	2024-08-26	positive	0.4404	positive	0.7	google_play
a5c6ec4a-ac4e-4ab7-83dd-271c28d11492	2	worst ever	1	2024-08-26	negative	-0.6249	negative	-1	google_play
a3d2eb8a-821b-4e7a-8811-13e76f876378	2	not work device	5	2024-08-27	neutral	0	neutral	0	google_play
8d23e22a-989a-44bb-81bf-3f34c868d3de	2	hi problem boa mobile not know wrong many time download sam doe not work sam like way customer know account checking save book no not enough alone	1	2024-08-28	positive	0.124	neutral	0	google_play
fbda0e53-962d-4824-a8f5-849c6d8f3d7e	2	good	3	2024-08-28	positive	0.4404	positive	0.7	google_play
b15b04c0-0c95-4ef7-bf69-1a458114f5db	2	hussenaliumar	5	2024-08-29	neutral	0	neutral	0	google_play
9ecfe32c-ca36-4390-b7c5-73b509e9eb02	2	worst experience ever	1	2024-08-29	negative	-0.6249	negative	-1	google_play
f1e5d348-ac0a-4b00-8bbf-9c71151e4b32	2	apollo	1	2024-08-29	neutral	0	neutral	0	google_play
b154b824-bad2-4f80-8a15-979f76b46075	2	good	5	2024-08-30	positive	0.4404	positive	0.7	google_play
861dcf64-11ac-4109-9416-dca7c303cdf9	2	plz fix screenshot lovation hide glarey share botten not work	1	2024-08-30	positive	0.2023	neutral	0	google_play
2e1591df-5f9d-40b1-a355-a88a45119960	2	ok	5	2024-09-01	positive	0.296	positive	0.5	google_play
2518f2a5-fdbb-4ed2-bcc6-3c294e555e9d	2	good	5	2024-09-01	positive	0.4404	positive	0.7	google_play
2d922abd-f8f3-4666-8a3f-d83060bb7b5d	2	worest mb ever	1	2024-09-02	neutral	0	neutral	0	google_play
ed313595-7211-44a8-9b42-defd7503aebc	2	nice looking terrible user experience	1	2024-09-03	negative	-0.0772	negative	-0.2	google_play
625e7055-7dac-4aa3-809b-de7ef171fb92	2	fast one	3	2024-09-04	neutral	0	positive	0.2	google_play
9815fc5f-16d3-4d71-bbd2-2e2712064003	2	good	5	2024-09-05	positive	0.4404	positive	0.7	google_play
3283f02f-0474-44ec-b7d6-5e90c94d88d4	2	awesome application lately crashing everytime opened	4	2024-09-05	positive	0.6249	positive	0.35	google_play
a2fb35e2-3828-4626-bddb-7443e04bf770	2	crash frequently launch android not think actually work version less not available download device begin like many finance not wa much three month ago upgrade	1	2024-09-06	negative	-0.0516	positive	0.0722222222222222	google_play
83311c04-cd01-496c-b382-2caaa5132819	2	shockingly bad even decides work painfully slow frustrating shame ha become stain extraordinary bank	1	2024-09-06	negative	-0.9042	negative	-0.2666666666666666	google_play
07b686cc-bf94-4164-a731-684fa29cfb83	2	not appropriate not know boa develops not expect much crazy un confortable form boa soory	1	2024-09-07	positive	0.2584	negative	-0.425	google_play
0b18f9f3-e411-4e7c-96fe-40fef1a63e98	2	ok	5	2024-09-07	positive	0.296	positive	0.5	google_play
d6d25233-fa63-4817-a558-29517149d2ff	2	yegema tish	1	2024-09-08	neutral	0	neutral	0	google_play
156a8b49-e33e-4088-85d6-879c49082f30	2	smart technology	5	2024-09-10	positive	0.4019	positive	0.2142857142857142	google_play
4efeb787-8699-49a8-a40a-03e5692a2596	2	good	5	2024-09-10	positive	0.4404	positive	0.7	google_play
1e10c54c-f676-477c-9a7b-bb0aba1aeb9e	2	say request wa not successful please check device connectivity try one bank manager told phone android version ridiculous disappointing	1	2024-09-11	negative	-0.8669	negative	-0.436111111111111	google_play
f736ba52-844f-46ef-9164-1803171f7177	2	download screenshot payment receipt kinda worst ever	1	2024-09-11	negative	-0.5868	negative	-1	google_play
6bd7e86b-f9b2-4204-925d-33082e883d64	2	doe not work	1	2024-09-12	neutral	0	neutral	0	google_play
8f298344-5e64-4ebe-bbcc-c24b6909b563	2	freindly	5	2024-09-13	neutral	0	neutral	0	google_play
a597b94a-ed3c-4fa9-a749-a23d54faa49c	2	mobile turn developer option every time wanna use annoying	1	2024-09-13	negative	-0.4019	negative	-0.8	google_play
15bcf00e-6cb4-4e13-9ded-9b6a1cce2bd8	2	aimohon joel good conversation time	3	2024-09-14	positive	0.4404	positive	0.7	google_play
7f00e003-f4e4-49e1-bdd1-16c71454d8ea	2	not working need big not quickly	1	2024-09-14	neutral	0	negative	-0.0833333333333333	google_play
a8423c57-d734-4ebf-9dda-4f4dd43091ec	2	boa unreasonably holding delaying transaction day even transaction within bank huge gap observed boa mobile banking not experience kind challenge transaction bank mobile banking platform waiting long called customer support team response gave wa wa system hold transaction released working day not totally fair	1	2024-09-15	neutral	-0.0456	positive	0.15	google_play
c33b61e9-53db-4349-9ffb-a0d8a5a59051	2	many hour wait transferring money telebirr please something transfer delay issue need money ever	1	2024-09-15	neutral	0	positive	0.5	google_play
451914ac-f6a0-4733-9e25-494bcb7a28c7	2	good	5	2024-09-16	positive	0.4404	positive	0.7	google_play
100f95da-d8b6-4b6c-b634-51d211b33af5	2	like	5	2024-09-16	positive	0.3612	neutral	0	google_play
889a96ef-4854-4b7c-a3f5-a666fb79307a	2	good application	5	2024-09-16	positive	0.4404	positive	0.7	google_play
432b754e-574b-4686-8f97-7a8f80f3a39d	2	worest ever made would not recommende no one	1	2024-09-16	positive	0.2235	neutral	0	google_play
7ca610e2-15b8-4a7c-8ce2-f59bb9e86c63	2	shameful	1	2024-09-17	negative	-0.4939	neutral	0	google_play
a5ea959a-2e3d-442b-ba31-70b22aebb873	2	yes active user	5	2024-09-17	positive	0.6597	negative	-0.1333333333333333	google_play
94ec4e55-4d37-4a20-8e6d-780bd3a0fc1f	2	amazing	5	2024-09-19	positive	0.5859	positive	0.6000000000000001	google_play
9a938500-3558-429f-b5aa-f84792f3e442	2	great great service	5	2024-09-19	positive	0.8481	positive	0.8	google_play
0382f8e0-e971-4b72-8392-b9aca8d61d7e	2	bought mobile card not receive took money not get money back	1	2024-09-21	neutral	0	neutral	0	google_play
e03e750f-2744-47c8-9f9b-e54a13cde49a	2	great ui seamless ux love	5	2024-09-25	positive	0.8519	positive	0.4666666666666666	google_play
a84791b9-6811-4e81-9461-b4e880dee4d6	2	good application try add alternative future possibility customer	3	2024-09-25	positive	0.4404	positive	0.35	google_play
f4b63e31-2da1-40e8-acf5-fdb0a6e0b1a0	2	easy used operate program secured	4	2024-09-25	positive	0.6808	positive	0.4333333333333333	google_play
180bed10-eda6-4491-84cf-93d55ff8d92c	2	incredibly frustrating use filled issue make difficult navigate complete task efficiently never encountered poorly designed banking application need significant improvement enhance user experience deserves vey low rating	1	2024-09-26	negative	-0.0754	negative	-0.0607142857142857	google_play
850671a8-8f81-4e02-9b60-6dbde1dd2337	2	nice	5	2024-09-26	positive	0.4215	positive	0.6	google_play
5d940978-07d3-41d9-81b1-74867eb724a3	2	crash always error	3	2024-09-27	negative	-0.6597	neutral	0	google_play
1afdfab9-884b-4dd2-9881-a468a0eb567f	2	easy use	5	2024-09-30	positive	0.4404	positive	0.4333333333333333	google_play
4cbbb09a-77c0-45b2-89e6-784c7186918b	2	great financial company	5	2024-09-30	positive	0.6249	positive	0.4	google_play
2755e189-b073-4641-897e-3cfa2aa25a25	2	wwwerrr	5	2024-10-02	neutral	0	neutral	0	google_play
dd79ea31-05db-44d3-8af1-7bb5142df8b5	2	good	3	2024-10-03	positive	0.4404	positive	0.7	google_play
510eb8c1-9b58-4989-bdd1-674fa63c3d08	2	worest ever	1	2024-10-03	neutral	0	neutral	0	google_play
cd089947-bc9a-41cf-a17d-9bf390c91485	2	worest	1	2024-10-03	neutral	0	neutral	0	google_play
ac7391a6-712b-424c-970d-6dba1a0dd845	2	overall good performance need improvement also sometimes using instant bank transfer refuse causing repeated several time transfer	4	2024-10-04	positive	0.5719	positive	0.175	google_play
3cbcde95-2c0c-41d1-be22-203369552ed1	2	ok	5	2024-10-04	positive	0.296	positive	0.5	google_play
b4f29388-db8b-4ce7-9539-82a8c57b071a	2	living country may download use mobile banking asks ethiopia phone number not receive text confirm side country please lete know use outside country thanks	1	2024-10-04	positive	0.6705	positive	0.1	google_play
3a05c496-6385-4903-b2f5-54f69bdd8ee7	2	simplest way requires developer option	5	2024-10-04	neutral	0	neutral	0	google_play
94ba00d0-c2e8-4e21-9e71-af2395f2d0ca	2	stop telling phone boa doe newly keep asking disable developer option not slowing phone use god damn	1	2024-10-04	negative	-0.4215	positive	0.1363636363636363	google_play
ab760759-00d0-43fd-9267-f1d3f34a74e6	2	make work please embarrassing bank size	1	2024-10-04	negative	-0.0772	neutral	0	google_play
d1c75600-5e8d-416b-8627-b3700bc64633	2	nise mobile bankig	4	2024-10-05	neutral	0	neutral	0	google_play
1d49e80a-b12c-4cd5-abd9-b9b2d6612d64	2	possible would gove star	1	2024-10-08	neutral	0	neutral	0	google_play
be744ade-9b10-4b61-a1ee-5afc836bf602	2	bad	1	2024-10-10	negative	-0.5423	negative	-0.6999999999999998	google_play
e3dac0d5-d198-42ee-8536-2d6fd0365164	2	best	5	2024-10-11	positive	0.6369	positive	1	google_play
3394a77e-9fd2-41f9-be45-00812de92767	2	boa	5	2024-10-11	neutral	0	neutral	0	google_play
a526225b-3f7c-4dd0-8772-8ce18eea7318	2	abdulkadir	5	2024-10-11	neutral	0	neutral	0	google_play
5d22ff1e-78a6-4da7-8128-fa0bfd0f4850	2	good	4	2024-10-12	positive	0.4404	positive	0.7	google_play
df4d9c87-1a87-4a1d-8900-581c52470725	2	painfully slow banking service please not make choice	1	2024-10-13	negative	-0.2732	negative	-0.3	google_play
03ed7b23-17b8-4ae5-9c2f-29922a888edf	2	terrible bank experience unbelievable modern technology bank still struggle even basic transaction constantly crash service limited every time try transfer money load telebirr huge delay wait day failed transaction refunded even ussd unreliable put embarrassing situation countless time customer care never fix anything switched bank	1	2024-10-14	negative	-0.872	negative	-0.1357142857142857	google_play
8da94e53-0cd0-4d47-9df1-8cd3dac4779f	2	good	5	2024-10-18	positive	0.4404	positive	0.7	google_play
4fe26762-e4bf-4ebd-bbeb-538577f6d724	2	nice meet proud bank ethiopia member bank need solve problem international receiving money online digital working service world please working lot international money not get direct ethiopia not knowing legal way getting money ethiopia please get direct deposit boa please	5	2024-10-18	positive	0.8601	positive	0.225	google_play
87b4dda8-40de-44ff-aa27-ba8cf4776e03	2	good	5	2024-10-19	positive	0.4404	positive	0.7	google_play
908563f1-4304-45f7-a634-e4e4e64e8118	2	amrumehamed	1	2024-10-21	neutral	0	neutral	0	google_play
9b20307d-6ea1-4920-a74f-b5d6f16390bb	2	not log wrong	5	2024-10-22	positive	0.3724	negative	-0.5	google_play
a151105b-8d49-4e7a-bf55-62feca737e04	2	fast transfer	5	2024-10-24	neutral	0	positive	0.2	google_play
518dfdbb-4c08-469f-aee2-3caba92930ac	2	please try another doe not foot need generation	1	2024-10-25	positive	0.3182	neutral	0	google_play
9f7fb2e7-377c-47d0-8018-8361713089a3	2	good	4	2024-10-25	positive	0.4404	positive	0.7	google_play
169b6d5b-b5df-4a42-9168-ce968142da5b	2	ha nice interface always freeze slow load developer please fix issue	3	2024-10-27	positive	0.7717	positive	0.1499999999999999	google_play
1278f570-8dea-4557-a749-5466685c05e4	2	professional banking	5	2024-11-01	neutral	0	positive	0.1	google_play
ac6715ed-80bf-4720-8893-cd6f0340c82c	2	useless never expected irrelevant boa big shame	1	2024-11-04	negative	-0.7096	negative	-0.2375	google_play
ad41ef41-4f31-4dc7-a2dc-b48d3d38a5cd	2	abessnya banke	5	2024-11-05	neutral	0	neutral	0	google_play
643dd819-c970-4240-b620-ce2dff61d731	2	nice	5	2024-11-06	positive	0.4215	positive	0.6	google_play
8405e36b-c5ee-4a39-92b8-2bbda678dcf1	2	bad vety bad	1	2024-11-07	negative	-0.7906	negative	-0.6999999999999998	google_play
d8ad8495-2424-4c41-9e0c-7f484eedacc0	2	senayt mesfin	4	2024-11-08	neutral	0	neutral	0	google_play
10cdcbf6-81ab-4281-8583-665788be8e91	2	not available android version time not functional	1	2024-11-08	neutral	0	negative	-0.2	google_play
92a7307e-7ff4-4412-903b-7e0a331febea	2	NaN	5	2024-11-11	neutral	0	neutral	0	google_play
e165c4d1-4d0e-4f81-920a-3d7f2a3acc38	2	good	5	2024-11-12	positive	0.4404	positive	0.7	google_play
e086cf56-30a1-4650-b7c7-492dbab0f831	2	crash everytime please fix	1	2024-11-12	negative	-0.1027	neutral	0	google_play
316e654c-3526-4bca-8086-60b63895f732	2	need support not working	5	2024-11-12	positive	0.4019	neutral	0	google_play
553a157d-5f77-4f45-849e-6985fd3f61ca	2	bast bank ethiopia	5	2024-11-12	neutral	0	neutral	0	google_play
a9aef84b-de22-4145-b107-b18b44ea617d	2	infinx	5	2024-11-12	neutral	0	neutral	0	google_play
d7d3b979-cd01-4ecf-936f-02cb87adc6b3	2	thank social service like vertual banking non touch atm cadrless withdrwal passbook	5	2024-11-12	positive	0.6124	neutral	0.0333333333333333	google_play
fe160342-c4b4-442c-910c-2ddce8172994	2	worst never seen like	1	2024-11-12	negative	-0.7359	negative	-1	google_play
e1751a71-a0e6-47a5-9045-9bf2423acfed	2	wweeeer	4	2024-11-12	neutral	0	neutral	0	google_play
6446c637-4d71-4aa9-b09c-abcc44110734	2	find interesting specially reciept downloading	1	2024-11-12	positive	0.4019	positive	0.4285714285714286	google_play
222dde44-b0d2-497b-8c48-f0760acab14f	2	good	5	2024-11-12	positive	0.4404	positive	0.7	google_play
193d231d-a098-4e8b-992e-96c9d9b43bee	2	great service	5	2024-11-12	positive	0.6249	positive	0.8	google_play
31842334-938e-4309-8db6-d6f4f9da1fcf	2	oene	5	2024-11-12	neutral	0	neutral	0	google_play
295d2e05-79ca-409a-be45-0388efa2f3b6	2	NaN	5	2024-11-12	neutral	0	neutral	0	google_play
f106cb33-9dcb-4a38-a65d-3cbb1a9a790e	2	one poorest mobile banking system	1	2024-11-13	negative	-0.5423	neutral	0	google_play
8820e991-f423-4207-84ee-1504f70f3f99	2	good	5	2024-11-14	positive	0.4404	positive	0.7	google_play
3d362e0c-4c39-498b-8b61-b52226effacd	2	worst ever would include developer option thing care phone money right reason switched bank either turn everyone discontinue business one one	1	2024-11-17	negative	-0.2263	negative	-0.3571428571428571	google_play
695331e7-0600-4a44-805b-255770e5f33b	2	fast reliable	5	2024-11-18	neutral	0	positive	0.2	google_play
d9c98c7f-3df6-466f-a6fc-820cb281fad1	2	doe not match bank disaster super slow please learn something tele birr	1	2024-11-19	positive	0.8589	neutral	0.0166666666666666	google_play
87a5eda7-9ff6-43ca-a3d4-baf44802a3dc	2	goat	5	2024-11-19	neutral	0	neutral	0	google_play
3d00a389-ea31-4ae9-ae70-9014f48845ca	2	please android phone	3	2024-11-20	positive	0.3182	neutral	0	google_play
282728fd-e404-49c7-b7af-e17f01a1247d	2	NaN	5	2024-11-20	neutral	0	neutral	0	google_play
ed76ddde-f121-4372-b182-4c5df2b80685	2	ademtahir	5	2024-11-20	neutral	0	neutral	0	google_play
e8a2d836-1548-4ddd-935b-a6c280ac8043	2	ab	3	2024-11-20	neutral	0	neutral	0	google_play
da8d6098-722b-4970-a9bd-8abb656976b5	2	good	5	2024-11-21	positive	0.4404	positive	0.7	google_play
a4262b61-1cb9-414f-a99f-9ad1302aa769	2	NaN	5	2024-11-24	neutral	0	neutral	0	google_play
600f542d-2c2f-4c6a-b49e-4f196764cfa9	2	money	5	2024-11-24	neutral	0	neutral	0	google_play
bd0a4a80-4971-4156-9418-bef834d65877	2	need improvment	2	2024-11-24	neutral	0	neutral	0	google_play
10f38455-3c1d-4bec-a303-eef4cf41097a	2	great	5	2024-11-25	positive	0.6249	positive	0.8	google_play
3916c795-44f4-4169-86aa-119ef8b78067	2	best	5	2024-11-25	positive	0.6369	positive	1	google_play
5816b056-8f44-4faf-92a4-a28efd01448b	2	latest ha stopped android phone not open never work properly since started using	1	2024-11-26	positive	0.128	positive	0.1666666666666666	google_play
a49183c0-2f37-4898-a64e-ab1cce218c2d	2	exellent digital transaction money	5	2024-11-27	neutral	0	neutral	0	google_play
1756e606-985f-44eb-bab4-95bcf0848416	2	application losing major faction daily basis count many time used completely useless disappointing not going use time need not see point	1	2024-11-28	negative	-0.847	negative	-0.1075	google_play
8c12373b-e19d-494f-8506-a54490d9709b	2	not know start great sudden not work	1	2024-11-28	negative	-0.5096	positive	0.4	google_play
c150161c-e679-408f-aa76-41f4c9787f9a	2	worst experience using mobile application year time fails login automatically closed also take much loading time minute trying access internal service sometimes also transferring within bank also fails boa please fix	1	2024-11-29	negative	-0.8126	negative	-0.3166666666666667	google_play
709e40a3-94cf-4414-9d03-b83ab5783be2	2	attention important difficult time	5	2024-11-30	negative	-0.1779	neutral	-0.0499999999999999	google_play
f07f9c2b-112a-4fe7-9187-0da7683616bc	2	doe not work device 😡	1	2024-12-02	neutral	0	neutral	0	google_play
9815bb8a-2108-49fe-8292-fb360aed8331	2	unprofessional mischievous bank opinion several occasion recently used abyssinia card withdraw money wa deducted account despite reporting several time said processing learned yesterday since ha month bank ha decided include income absurd avoid bank	1	2024-12-06	negative	-0.1779	negative	-0.125	google_play
e19dc960-bb76-4c1b-8c49-3da106847b0d	2	nice	5	2024-12-07	positive	0.4215	positive	0.6	google_play
6fe3a0f0-e9dd-4dcb-81ab-e478b1239d55	2	giving one star no option experience ha incredibly frustrating due extremely long loading time even close automatically time people choose mobile banking convenience far time consuming making worst used hope improvement made enhance user experience	1	2024-12-07	positive	0.0534	negative	-0.295	google_play
93bee220-7c85-4d30-ba6f-c8168c201b5a	2	best many feature awesome work without need turn developer option tired constantly switch developer option expressing struggle precious setting enabled developer option open boa turn please help u abyssinia bank hope provide soon	4	2024-12-08	positive	0.9403	positive	0.3714285714285714	google_play
2795b1e3-ccdc-4b4a-8c25-cd4c6cc0d2ba	2	ha since guy started giving mobile service still could not get work sure know doe not work already not sure lazy incompetent fix losing business complacency consequence	1	2024-12-10	positive	0.4479	negative	-0.0875	google_play
56fe3f96-f2d8-4b8f-9766-8305907650d0	2	system worst better😡😡😡😡😡😡	2	2024-12-11	negative	-0.6249	negative	-1	google_play
5c671d11-5836-41bc-a33b-ade0a31299ef	2	nice	5	2024-12-13	positive	0.4215	positive	0.6	google_play
e4c77ae3-0541-45b5-84da-a02029e99719	2	poorly functioning	3	2024-12-13	neutral	0	negative	-0.4	google_play
56e4df5e-cfd9-4c86-b9b7-ec322a07674e	2	worst banking ever never work	1	2024-12-14	negative	-0.6249	negative	-1	google_play
baea25ff-25f4-4327-81c5-2681be122ee9	2	good	5	2024-12-15	positive	0.4404	positive	0.7	google_play
b9b684de-8146-46ae-b1fa-8f07272c6fd2	2	easy sooo simple use also easy stole someone money using	3	2024-12-16	positive	0.7003	positive	0.2888888888888889	google_play
dfb241c6-73c4-4cf3-9b91-dd154d0a541f	2	good	3	2024-12-16	positive	0.4404	positive	0.7	google_play
8b6153b2-b998-4cc2-bae6-a27ff50642c9	2	bank abissena	1	2024-12-17	neutral	0	neutral	0	google_play
355cd8fe-a56a-4955-a4ae-c0cfe1fbdbcd	2	nic ap	5	2024-12-19	neutral	0	neutral	0	google_play
f467c327-ab9b-4e79-8d97-2e1b573f6c98	2	love boa anyone cursed comed mobile banking even though ine hetter still cks ask turn developer option wise not work use cbe awash birr tekebirr dashen bank others non asked boa please improve mobile banking competitive	1	2024-12-19	positive	0.9217	positive	0.6	google_play
c44d86b2-4bea-423b-a3d6-069baf1a492a	2	forest ever	1	2024-12-19	neutral	0	neutral	0	google_play
6e64d84c-1cec-4122-91d6-049d64f0b1ad	2	dirtiest application ever seen	1	2024-12-20	negative	-0.5267	neutral	0	google_play
80aa6fcd-465d-457e-a55e-3fd747d894bd	2	fine	5	2024-12-21	positive	0.2023	positive	0.4166666666666667	google_play
4081310f-afcd-4c93-a22c-e9bd240129a9	2	not much bad	3	2024-12-22	positive	0.431	positive	0.3499999999999999	google_play
6f08a7e9-d374-4337-aa1c-929bc4157b1b	2	going get rid real work far worst mobile banking	1	2024-12-24	negative	-0.6249	negative	-0.2333333333333333	google_play
e5e17a9f-1d1b-4f8e-a984-9a43eb48f8bd	2	nice	5	2024-12-26	positive	0.4215	positive	0.6	google_play
2d52d1a5-525c-4655-b858-e8d0d2e20bc2	2	not letting access account whole point gey access account without physically bank would give zero one suffice get point accross	1	2024-12-27	neutral	0	positive	0.1	google_play
ea3d98d4-671c-4ac5-ab1d-f4d9177b1947	2	useless downgraded	1	2024-12-29	negative	-0.4215	negative	-0.5	google_play
27be3e55-033e-4be6-8a72-0815f09f8df7	2	good	5	2024-12-30	positive	0.4404	positive	0.7	google_play
c3a41a6c-cb85-4083-93d4-3bd6a57a339d	2	lemn embi yilal	5	2024-12-30	neutral	0	neutral	0	google_play
3988392f-8e33-44f3-806b-557e12954c67	2	love	5	2024-12-30	positive	0.6369	positive	0.5	google_play
89d3f60c-c554-4f6d-9436-ec9c80e8565f	2	wow amazing	5	2024-12-30	positive	0.8225	positive	0.35	google_play
ccce0a29-6770-4fbc-b54e-9ecaf0f2cb6b	2	best	5	2025-01-01	positive	0.6369	positive	1	google_play
06692c6b-978f-4b52-bb83-6c38a11b2822	2	not available	1	2025-01-02	neutral	0	negative	-0.2	google_play
c194a70d-aa2b-4775-8da5-bf51d1c51d2a	2	doe not work	2	2025-01-02	neutral	0	neutral	0	google_play
800bc191-3aec-4666-9f08-4a393dc8501f	2	assessing tell abyssinia bank ha no idea mobile banking	1	2025-01-02	positive	0.0516	neutral	0	google_play
126026cc-90c8-4e55-81b4-46c7a87a7d88	2	good	5	2025-01-03	positive	0.4404	positive	0.7	google_play
cd4d09a6-07d1-44e8-9b1e-d990c3b0b70a	2	good helpful	5	2025-01-03	positive	0.6908	positive	0.7	google_play
a7888312-64d5-44d6-b708-a6d29b168825	2	give one star faced multiple problem not fast bank e g like cbe asks repeatedly switch developer option even switched bank abyssinia service interesting ignored issue service customer gave complain no one accept complain fix issue lastly not recommend unless issue ha solved asap	1	2025-01-03	negative	-0.6828	positive	0.1	google_play
9bea391b-234f-439d-a844-47d0c839a89a	2	fast suitable customer	5	2025-01-04	neutral	0	positive	0.375	google_play
4b5e8c4c-197d-42c4-bcbf-5765ec02a62b	2	great	5	2025-01-04	positive	0.6249	positive	0.8	google_play
84b69538-8ba9-40c5-a8fa-2594a180d28b	2	boa	5	2025-01-06	neutral	0	neutral	0	google_play
fb9a7444-76cf-4f2d-a8be-72d3009a034c	2	wa using long time amazing user friendly ui not found get pin button	3	2025-01-07	positive	0.7906	positive	0.3083333333333333	google_play
0fbb5047-8399-4b6f-b063-ddcdeb3e209c	2	best best	5	2025-01-09	positive	0.8555	positive	1	google_play
b3df844f-7e31-4b64-a029-381687431ca3	2	perfect	5	2025-01-09	positive	0.5719	positive	1	google_play
94acd1f3-c7e3-493f-9ded-b1f4186ac41b	2	thank	5	2025-01-10	positive	0.3612	neutral	0	google_play
5055c357-676d-41eb-824d-48f9e78f41e7	2	like much	5	2025-01-11	positive	0.3612	positive	0.2	google_play
30494702-39d6-493b-be77-d2a0f116ba73	2	good	5	2025-01-12	positive	0.4404	positive	0.7	google_play
1c339143-79e1-4f37-9ea7-398b7844903b	2	keep asking turn developer mode even dev mode could not use	1	2025-01-13	neutral	0	neutral	0	google_play
9f4f98fc-8a93-414d-9219-f03dbebaf5b0	2	love	5	2025-01-14	positive	0.6369	positive	0.5	google_play
bd70c04c-b85f-47ac-b1e8-db0279790bf8	2	best	5	2025-01-14	positive	0.6369	positive	1	google_play
46c41e87-0d7a-491b-8641-2c1acdaddea3	2	horrible customer service crash horrible	1	2025-01-15	negative	-0.8658	negative	-1	google_play
591be00c-a536-4f4a-9095-1c6dfa6afe14	2	😡😡😡	1	2025-01-16	neutral	0	neutral	0	google_play
0a72e292-175c-4f96-be54-991436c22c8e	2	aadan axmed barkhadle	5	2025-01-17	neutral	0	neutral	0	google_play
feea8767-74e7-472a-81ba-7c8968b67b14	2	boa	4	2025-01-18	neutral	0	neutral	0	google_play
e81c9036-4731-497a-ac35-81dfd3e7f42c	2	beter	5	2025-01-21	neutral	0	neutral	0	google_play
06ad47bd-3a6a-45b4-ae10-6dd4170bc254	2	whenever try sign close please fixed	2	2025-01-21	positive	0.3182	positive	0.1	google_play
7b07593c-a036-477b-b2d4-4e53fdc4c75e	2	not dijitalize atm apollo phone	1	2025-01-22	neutral	0	neutral	0	google_play
86e6f672-4fd3-41dd-a49b-21e48aef587d	2	best somehow waiting minute	5	2025-01-23	positive	0.6369	positive	1	google_play
c3b78417-6822-48b0-8c40-6f5f96d0e2b2	2	always annoying	3	2025-01-27	negative	-0.4019	negative	-0.8	google_play
d36c1143-5ada-44f9-a679-c90ac5fd5d5c	2	sad experience	1	2025-01-30	negative	-0.4767	negative	-0.5	google_play
6c922400-a56d-49e6-b5c6-d4bd7f806962	2	good	5	2025-01-31	positive	0.4404	positive	0.7	google_play
63c608e3-85ac-46ab-a948-1ab4a81bd575	2	using two year amazing	5	2025-02-01	positive	0.5859	positive	0.6000000000000001	google_play
9c6f465f-7a3e-4fc6-9366-b5bcb418055c	2	NaN	5	2025-02-04	neutral	0	neutral	0	google_play
37f0b34c-355b-425d-975d-04d8b8d3dd55	2	good	5	2025-02-05	positive	0.4404	positive	0.7	google_play
d77a87f6-2a20-4b6b-b7fa-acbb3d19b636	2	make easy convienient use perfect high prefrence choice	3	2025-02-07	positive	0.765	positive	0.5311111111111111	google_play
9b460da8-c607-47ba-89a3-76896c16c1e4	2	best bank	5	2025-02-08	positive	0.6369	positive	1	google_play
8d82d36e-ff01-40ab-83e7-cdb44af38a8e	2	not functional	2	2025-02-12	neutral	0	neutral	0	google_play
5e94fa10-612f-4422-8183-00d5050e8d98	2	help full like ittttt	5	2025-02-14	positive	0.6369	positive	0.35	google_play
25b7eec9-d1ef-41be-8bb3-3fd1b1cb8068	2	please add language setting amharic afan oromo tigniya others sometimes bank bank transfer not available time even available not reachable serious issue	1	2025-02-15	positive	0.3658	neutral	-0.0444444444444444	google_play
9035f28b-9646-4fe9-80e1-6b6926b0289e	2	nice easy use	5	2025-02-21	positive	0.6908	positive	0.5166666666666666	google_play
cf026bee-94e7-4b9c-8a46-034354f9d171	2	best banking wworld	5	2025-02-22	positive	0.6369	positive	1	google_play
781ff61a-6f89-4bb1-a455-9b66400b0cd7	2	thank boa	5	2025-02-23	positive	0.3612	neutral	0	google_play
99172a2f-926c-48be-a1b0-3971b984b6b2	2	not working day	1	2025-02-26	neutral	0	neutral	0	google_play
12f08f68-da19-4974-8086-304a40091d72	2	poor proformance	1	2025-03-01	negative	-0.4767	negative	-0.4	google_play
b7206c5f-267e-44f1-b044-8f6f9392701d	2	not opening really frustrating	1	2025-03-01	positive	0.3865	negative	-0.4	google_play
d5e46c35-6bbf-4ce7-b184-cdc4c1e0eab1	2	verry amazing ib	5	2025-03-01	positive	0.5859	positive	0.6000000000000001	google_play
529fe570-b1aa-48b7-b349-444b98c1fce7	2	ha good feature sometimes doe not work	1	2025-03-02	positive	0.6486	positive	0.7	google_play
49b877c9-5536-4be5-8674-e3ae975fa0ed	2	downloaded first time reading customer review soon installed opened close back automatically unserious bank uninstalled immediately	1	2025-03-03	neutral	0	positive	0.125	google_play
06384ab0-33e4-4d40-9ff0-735d46c30c17	2	good	5	2025-03-03	positive	0.4404	positive	0.7	google_play
ab512ec6-2eaa-496c-b0a9-ee21a2d810be	2	aga b girja miss language admin afaan oromo itoophiyaa language	1	2025-03-04	negative	-0.1531	neutral	0	google_play
7d468428-1ccb-4528-9984-9324db9b9d2b	2	bro worst made human kind software engineer make sad seeing enterprise big boa make like disgrace country	1	2025-03-05	negative	-0.6705	negative	-0.18	google_play
ab7b2d7e-b707-4546-b9ec-ad0da2cb9015	2	wow	4	2025-03-05	positive	0.5859	positive	0.1	google_play
1962d1c4-e2c2-4ac7-91b6-b0a75ae11d7a	2	worst mobile banking ever experienced wa blaming comparing much clash take much longer time login loading short complete trash	1	2025-03-06	negative	-0.8074	positive	0.05	google_play
c292d2f8-1e0d-46ae-97f2-f3215a0bdf50	2	not use	5	2025-03-07	neutral	0	neutral	0	google_play
1cfcfa11-67f5-4315-9f2d-f47ab27f0910	2	wonderfull	5	2025-03-08	neutral	0	neutral	0	google_play
73ce76e4-b7a2-4ed8-b6fd-f9b388bdb4a6	2	awesome simple use much important	5	2025-03-09	positive	0.7096	positive	0.4666666666666666	google_play
df027023-1b65-40e9-b2bf-de6fedc17c5d	2	almost compared cbe not qualified	4	2025-03-09	neutral	0	neutral	0	google_play
c9f8ff21-b8d1-400f-bb94-c98399a25ad5	2	bug still crash every time try log especially old phone like galaxy	1	2025-03-10	neutral	0.0164	positive	0.2	google_play
0e5e093a-1cf1-4c49-87ed-046888b8afa9	2	decent problem sometimes say error transfer money infact transferred bug transferred time instead also not transfer money others telebirr acc self boe dev fix	3	2025-03-11	negative	-0.6597	positive	0.1666666666666666	google_play
a9e99120-460c-4cc0-8978-d1d601b89258	2	boa	5	2025-03-11	neutral	0	neutral	0	google_play
e68af2d6-0770-4110-b3dd-167bb54cd017	2	improved best	5	2025-03-11	positive	0.8074	positive	1	google_play
35ea7b31-46fb-47a7-b9c4-8a5e06161abd	2	boa greqt ethiopian bank	5	2025-03-11	neutral	0	neutral	0	google_play
7d475f3a-15b4-4e56-ae4b-1fc451749e61	2	edit bug not letting type otp code shameful doe not allow use developer option consider might perhaps actual developer expected toggle option bank restarting phone message labled somthing smoothen experience like security consultant thing implement please invest actual security not mess	1	2025-03-12	positive	0.7044	neutral	-0.003125	google_play
c9a192de-b018-4dde-b0d0-b0201be0c3f7	2	wow	1	2025-03-14	positive	0.5859	positive	0.1	google_play
e39414aa-0b2e-4c4d-9a21-8302487cdda4	2	loved	5	2025-03-14	positive	0.5994	positive	0.7	google_play
799f010a-f795-4ad7-ba24-b67c4939529e	2	worck	5	2025-03-19	neutral	0	neutral	0	google_play
26f2b9fc-1707-4e54-b04d-c9915a1e9a54	2	wonderful	5	2025-03-19	positive	0.5719	positive	1	google_play
c5cdb617-4335-491d-89ce-9c1aab9b0b2f	2	anyone want download not	1	2025-03-19	positive	0.0772	neutral	0	google_play
376f374a-f480-46e2-bb4a-90e938ab3a59	2	no speed	1	2025-03-19	negative	-0.296	neutral	0	google_play
643f52aa-9981-4dfb-b058-573537f62ce5	2	good	5	2025-03-19	positive	0.4404	positive	0.7	google_play
cd4e2229-6495-42e6-bd2b-3ff710dc9663	2	good	5	2025-03-21	positive	0.4404	positive	0.7	google_play
6b5a5455-dcd0-4a2a-8cbb-f0deb5706498	2	went bank many time could not make transaction see balance nothing else point mobile banking not make transaction please work	1	2025-03-21	negative	-0.2411	positive	0.5	google_play
5f3f6ba2-4517-48c3-b87d-f58179b8ef73	2	best	5	2025-03-21	positive	0.6369	positive	1	google_play
f1de5d59-8021-423b-a02a-958993f6e85f	2	great boa	5	2025-03-22	positive	0.6249	positive	0.8	google_play
1648df61-5880-4d2a-9ec1-c393c9ac474d	2	worst bank ever u ashamed scammer	1	2025-03-24	negative	-0.802	negative	-1	google_play
b96d31a2-9360-43ab-ba3c-a44b324f8288	2	considering fact bank huge really bad could	1	2025-03-25	negative	-0.3597	negative	-0.1499999999999998	google_play
c011e833-112f-4780-9a18-eaf17e5eff57	2	best	5	2025-03-25	positive	0.6369	positive	1	google_play
316aafea-0134-4718-a056-b50a0eacb679	2	good	5	2025-03-25	positive	0.4404	positive	0.7	google_play
34f5b18e-0a79-40bb-94b6-4430d08e0c17	2	always problematic hardly work	1	2025-03-26	negative	-0.4404	negative	-0.2916666666666667	google_play
e52a6ccb-dc16-472c-84ef-2969c08a9318	2	not actively initialization say incorrect otp getting exact otp	1	2025-03-29	negative	-0.2411	positive	0.1583333333333333	google_play
e9072e9a-76dc-49d1-b423-cb64c4656802	2	version not working cannot even buy card cannot send money	1	2025-03-30	neutral	0	neutral	0	google_play
2ac5df83-d25c-41c5-ae60-64c7a77159c5	2	good application	5	2025-03-30	positive	0.4404	positive	0.7	google_play
1181718c-4e5c-4181-a943-53e579042bd6	3	wallahi fantastic bank	5	2025-03-31	positive	0.5574	positive	0.4	google_play
1197ad29-5063-4999-888c-589582754caa	2	activated application not allowed sign automatically turn phone	1	2025-03-31	neutral	0	neutral	0	google_play
98ca9bca-5c01-4997-b80a-b8a53481b391	3	not mobile banking beyond access account easily able get many information easily e exchage rate able chat others able budget able transfer bank within dashen able access many account single able pay bill qr scan able make payment order delivery item single always one step ahead	5	2025-03-31	positive	0.5267	positive	0.3992063492063493	google_play
afa8745f-7dad-4bdd-9e5b-0d7c19057f9e	3	waw amazing thank dashen bank	5	2025-03-31	positive	0.743	positive	0.6000000000000001	google_play
0849d6e7-3240-430d-9fcf-d6be127a5ac0	3	easy use powerful application	3	2025-04-01	positive	0.6908	positive	0.3666666666666667	google_play
8cc8db7d-a995-475f-a326-f77644f05262	3	best easy use	5	2025-04-01	positive	0.7964	positive	0.7166666666666667	google_play
f586fd46-d883-4970-8ae3-dfded1df6aa1	3	good feature feature like developer mode turn irritate user	3	2025-04-01	positive	0.3818	positive	0.7	google_play
6eec96bf-b4c9-4dde-9814-059cf54b3f86	2	doe not work period z slowest mobile banking ever would rather use	1	2025-04-01	neutral	0	neutral	0	google_play
91372113-f427-4e6d-892a-571e1c40eee6	2	thank	5	2025-04-02	positive	0.3612	neutral	0	google_play
0af7f66d-ac1b-46c8-866a-afbed0f5ed57	3	doe ask pin opt even opt touch let alone	2	2025-04-02	negative	-0.25	neutral	0	google_play
b4a1e1d2-f3d2-428b-ac7a-e40e617aace8	3	goood	5	2025-04-02	neutral	0	neutral	0	google_play
a4192549-595f-4a95-871b-aa0f9f14e4a2	3	perfect	5	2025-04-03	positive	0.5719	positive	1	google_play
6686f694-5b08-4f44-a4de-2160c5ad6a62	2	good	5	2025-04-03	positive	0.4404	positive	0.7	google_play
b9545270-bb8b-48b8-a81c-ebca0eb636a7	3	nice	5	2025-04-04	positive	0.4215	positive	0.6	google_play
7771b1bf-da9b-42d9-8aa6-9f3fabfa270e	3	tanku	5	2025-04-04	neutral	0	neutral	0	google_play
53263f41-9dd6-4165-a24a-a41fda4c390c	2	good not enough not add thing	3	2025-04-04	positive	0.4404	positive	0.35	google_play
971db897-312b-4560-998a-aaf867c9aba0	3	disappointing fix soon possible not expected dashin bank fix	1	2025-04-04	negative	-0.4939	negative	-0.1833333333333333	google_play
0712b546-88dd-4f2b-a977-87ccd827841d	3	real super	5	2025-04-04	positive	0.5994	positive	0.5	google_play
4eb71bb5-9546-4eb8-9115-35dbb8ec6a84	3	not working unless turn developer mode phone take right use	2	2025-04-04	neutral	0	positive	0.2857142857142857	google_play
26ae699c-af0d-458b-baca-d3aac850ac6f	3	nice	5	2025-04-04	positive	0.4215	positive	0.6	google_play
8eed1a6d-6902-45fe-abc4-48dcbae22f85	2	get considerable improvement like language qr scanner unlimited transfer survice boa please alot fastness convenient login making transaction	5	2025-04-04	positive	0.7783	positive	0.1	google_play
b3a22053-e2b9-47e6-8083-a2e73a7c6bed	2	typed password say successfully logged go back first page	2	2025-04-04	positive	0.4939	positive	0.3333333333333333	google_play
86d03988-70ec-4dfa-a24c-9fb492fd62d7	3	dashen bank worker hidden atm card big problem	5	2025-04-04	negative	-0.4019	negative	-0.0833333333333333	google_play
6b86f487-d8b4-4ea3-9e03-704246ff4d62	3	good	5	2025-04-04	positive	0.4404	positive	0.7	google_play
a928485d-6535-4782-8ff5-d4f0d401957a	3	best best	5	2025-04-05	positive	0.8555	positive	1	google_play
cc85c5a4-aa62-4817-b48d-e4fe94daa748	3	proud dashen bank	5	2025-04-06	positive	0.4767	positive	0.8	google_play
001296eb-c4b1-481a-acbd-efdb9eda67a5	3	best	5	2025-04-06	positive	0.6369	positive	1	google_play
94d9f11f-f866-4439-a91b-c258140070e7	2	like	5	2025-04-06	positive	0.3612	neutral	0	google_play
b10d3c9a-d5c8-422c-9bca-82a40310fb5c	2	not work correctly must	1	2025-04-06	neutral	0	neutral	0	google_play
aa31a976-cb24-4df5-8f7c-6fcb238d9327	3	worst mobile banking experience ever work need randomly without warning make transaction whenever want nightmare anyone relies main banking option especially lot money account lucky not one still infuriating not able access money need l	1	2025-04-07	positive	0.4238	negative	-0.2642857142857143	google_play
c23b473c-4144-4bea-98ae-172df77c97b1	3	experienced using bank ethiopia dashen sup like old version application using gave star low speed login processing	3	2025-04-07	positive	0.1027	positive	0.3	google_play
3b48fff7-6b38-4099-9c7c-cabc1bbbd92b	2	doe not work frustrating	1	2025-04-07	positive	0.3412	negative	-0.4	google_play
c7cdf3f1-a374-470d-80be-8d7bc00d360f	3	slow send otp not reliable crushed many time need improvement many way	1	2025-04-07	positive	0.6522	positive	0.15	google_play
f68ed25c-79db-4a9c-85e7-aaccd1671555	2	faster bank abissinya	5	2025-04-08	neutral	0	neutral	0	google_play
94ef86ef-6437-4c31-96c5-efeb7f32829f	2	would given lower wa possible crush much take bank long fix bug	1	2025-04-08	negative	-0.4215	positive	0.05	google_play
9c142de4-313b-4287-8a61-1ee79e0a290c	3	slow cumbersome	3	2025-04-08	neutral	0	negative	-0.3	google_play
382fcdf9-c528-46d3-9b20-fd83a4f5d4f2	3	really	2	2025-04-08	neutral	0	positive	0.2	google_play
497345df-10e9-402a-bb96-88e16f8a803d	2	boa mobile backing	5	2025-04-09	neutral	0.0258	neutral	0	google_play
6474e6df-7925-4e06-a67b-944237843b02	2	nice	5	2025-04-09	positive	0.4215	positive	0.6	google_play
87355423-1404-4beb-b08d-7cad5d4b4f08	3	disappointing experience dashen bank super service slow take forever load transaction incredibly frustrating additionally doe not generate receipt transaction making difficult keep track expense also reached customer support response time wa longer expected overall wa hoping experience find service lacking need improvement	2	2025-04-09	positive	0.6003	negative	-0.2238095238095238	google_play
527633dc-326a-40d3-8f50-663f5a355aee	2	great boa	5	2025-04-10	positive	0.6249	positive	0.8	google_play
2979e41b-2997-44da-82a6-fb8f9040841b	3	samart	5	2025-04-10	neutral	0	neutral	0	google_play
3371e672-aa09-45c0-9ae6-ec3d4e3e827a	3	not working properly using	1	2025-04-10	neutral	0	neutral	0	google_play
1048668b-fdd7-488f-bd6b-83f3586915eb	3	good	5	2025-04-10	positive	0.4404	positive	0.7	google_play
152c96b7-b5f2-4b29-9812-ff59d9464615	2	best	5	2025-04-10	positive	0.6369	positive	1	google_play
0096a509-2709-4211-b0f4-626d3d6a8dbb	3	bad connection many day not working	1	2025-04-12	negative	-0.5423	negative	-0.0999999999999999	google_play
e7057ab4-ff08-40bd-8c50-1d67ce4f5058	3	dashen super delivers remarkably fast highly secure exceptionally user friendly experience establishing leading application category keep stay ahead dashen bank	5	2025-04-14	positive	0.8843	positive	0.395	google_play
71670dbe-1de7-4384-822f-cc47f95185d8	3	far good person customer service amazing	5	2025-04-14	positive	0.7717	positive	0.4666666666666666	google_play
a7b719d1-4b74-4a60-b7ed-19b62e900168	3	backward doe not always work work three hour hour great	1	2025-04-14	positive	0.6249	positive	0.8	google_play
3a2fe98e-b06a-410c-92c0-16c20162d8ea	3	nic	5	2025-04-16	neutral	0	neutral	0	google_play
ecc1b4fd-4cdc-45bb-b155-35203c067a70	3	nice	5	2025-04-16	positive	0.4215	positive	0.6	google_play
d5552347-d7f6-4f91-ae8c-c33d16d0a8d3	3	feature rich absolutely speed painfully slow seriously communicating server mar something	5	2025-04-16	negative	-0.197	neutral	-0.0145833333333333	google_play
9c8e9014-e437-4cb0-93f3-e0b2c0e9e38a	3	good	5	2025-04-17	positive	0.4404	positive	0.7	google_play
1d457104-9dca-4518-9217-003ed78f3710	3	nice ever	5	2025-04-17	positive	0.4215	positive	0.6	google_play
56788d9a-6194-40ce-b282-30c541eec4cf	2	yideg	1	2025-04-18	neutral	0	neutral	0	google_play
512f1e9d-8f80-4004-99b4-2baf41c10a81	3	nice	5	2025-04-18	positive	0.4215	positive	0.6	google_play
3271d45f-2900-41b6-878c-669ac563e60a	2	keep showing pop turn developer option even tho turn make work horrible experience need fix asap plus kinda slow	1	2025-04-19	negative	-0.5423	negative	-0.65	google_play
e523c50a-6f8f-4653-ad4d-5122ef8ddb9a	2	best	2	2025-04-19	positive	0.6369	positive	1	google_play
1806822b-7539-4ec1-bb6e-52d6a9786ee0	3	waw no idea best	5	2025-04-19	positive	0.4588	positive	1	google_play
79fabd48-7d9f-4be6-b0d2-ab35cec736eb	3	fast best	5	2025-04-19	positive	0.6369	positive	0.6	google_play
bb34576e-1e17-471d-8f3d-aff3c95abc6c	3	good	5	2025-04-20	positive	0.4404	positive	0.7	google_play
8a4d9c01-9e5a-4732-a8ab-9341930b30c8	2	not working asked password start loading doe not open	3	2025-04-20	neutral	0	neutral	0	google_play
f6f345d9-913f-4923-93af-c3430d22d4ac	3	easy flexible	5	2025-04-21	positive	0.5859	positive	0.4333333333333333	google_play
a1a3c20b-aef3-474d-b045-c700d6fae1bc	3	fantastic product keep good work	5	2025-04-21	positive	0.7579	positive	0.55	google_play
a852af36-a839-4285-b57d-2a0616e9e544	3	dashen bank super ha fast convenience also ha contain thing one interesting use dashen bank super	5	2025-04-21	positive	0.936	positive	0.3416666666666666	google_play
be79dbdd-63db-463c-9abf-a88387d6b07a	3	truly impressive user friendly game changer ethiopian banking dashen super stand one innovative convenient digital banking solution ethiopia financial history smooth navigation seamless feature wide range service one place well done	5	2025-04-21	positive	0.9618	positive	0.2208333333333333	google_play
d6059960-9967-4be6-a771-000dd2f1743a	3	internal customer dashen bank superapp ha greatly simplified online banking experience easy use allowing quickly check balance transfer money pay bill advanced security feature highly secure ensuring data well protected three click chat banking ip feature also given smarter experience deed dashen bank always steping ahead	5	2025-04-21	positive	0.9605	positive	0.3944444444444444	google_play
c2ef1fe4-8517-4a83-9f92-165c0e65540a	3	mobile banking application major upgrade incredibly user friendly clean modern design make navigation simple intuitive really appreciate fast load smooth overall experience essential service like balance check transfer bill payment ea find use added security feature give peace mind run reliably without crash glitch clear lot thought went user experi	5	2025-04-21	positive	0.951	positive	0.2336805555555555	google_play
195107de-6ae9-4adf-bb09-e25c029d6706	3	easiness use fast response time	5	2025-04-21	positive	0.3818	positive	0.2	google_play
43c462b0-3873-429a-ac91-ee72fbf4e070	3	using dashen supper mobile banking overall appreciate feature however noticed turn developer option device stop functioning properly would great could look issue often need access developer setting application thank attention matter	5	2025-04-21	positive	0.802	positive	0.2666666666666666	google_play
bcf18a5b-5e9e-43f1-8dfa-d2fb31a8dcd7	3	ha clear detail information application help customer use easy use also secure	5	2025-04-21	positive	0.9001	positive	0.3111111111111111	google_play
adb74398-cf2d-4c18-aff4-72412cfe8c51	3	comfortable keep	5	2025-04-21	positive	0.5106	positive	0.4	google_play
70756dbd-4ae2-40b8-b814-a6b322d9ea0b	3	amazing really loved say dashen bank one stap ahead best mobile application every phone	5	2025-04-21	positive	0.9216	positive	0.7666666666666666	google_play
8f0e023e-152e-44a6-bba1-627c20d3e298	3	impressed dashen super user friendly operates efficiently budget chatbot feature impressive item purchased three click	5	2025-04-21	positive	0.9451	positive	0.6770833333333333	google_play
6974a44c-7969-4c5b-9ba0-3221ec5f0bb1	3	keep	5	2025-04-21	neutral	0	neutral	0	google_play
117e220b-de40-4fd8-8d9e-15b95080d3a5	3	one convenience managing account paying bill shopping online chat banking game changer doe seamlessly	5	2025-04-21	neutral	0	negative	-0.15	google_play
67218c11-6089-4be4-a26b-801ef1c9df87	3	good actually work developer option	5	2025-04-21	positive	0.4404	positive	0.35	google_play
34df06ad-f6e9-46cc-b5f8-34baddb56b9b	3	user friendly attractive user interface full useful feature really encourage everyone give try	5	2025-04-21	positive	0.9117	positive	0.4049999999999999	google_play
94163742-6825-440b-9f7f-71d8d9d036ed	3	high performance advanced feature	5	2025-04-21	positive	0.25	positive	0.28	google_play
22725963-a873-43c8-a711-f52ec4ce55b2	3	download recently smooth expriance user friendly fast everything work expected keep good work	5	2025-04-21	positive	0.7269	positive	0.315	google_play
31577c85-64e5-4309-88f4-c1806697ca2d	3	simply use secure safe love use bank transaction	5	2025-04-21	positive	0.8591	positive	0.35	google_play
353f56b2-61a0-4685-82b3-8007b602bdaa	3	keep getting every smooth performance great ui top notch security thank making banking convenient	5	2025-04-21	positive	0.8689	positive	0.5666666666666668	google_play
ffefe136-8fc9-4c3b-a4be-71adf835a4f0	3	dashen bank super game changer user friendly design wide range service smooth performance make incredibly convenient everyday banking fast secure truly reflects bank commitment digital excellence highly recommended	5	2025-04-21	positive	0.9647	positive	0.188030303030303	google_play
369c76a3-4250-4983-a479-859c8eed7007	3	dashen super simple faster reliable	5	2025-04-21	positive	0.5994	positive	0.1666666666666666	google_play
98a21365-53e3-42ef-8481-573c6ef8a181	3	choose dashen bank super since easy use ha attractive feature	5	2025-04-21	positive	0.9022	positive	0.5222222222222223	google_play
032354de-55bf-4025-989e-d3b8c5b0f7f0	3	appreciate dashen bank take lifestyle service account	5	2025-04-21	positive	0.4019	neutral	0	google_play
23019863-9b22-4d7e-8271-49f6b96b1546	3	dashen super offer quick user friendly experience bringing together variety service like budgeting payment airtime recharges one convenient platform sleek design intuitive navigation ensure effortless transaction evident dashen bank ha carefully crafted make everyday financial activity easier great choice anyone aiming streamline digital routine	5	2025-04-21	positive	0.9682	positive	0.199074074074074	google_play
0dbc863f-6b31-45ac-b3b6-cc5aad65786d	3	amazing feature faster easy use	5	2025-04-21	positive	0.7717	positive	0.5166666666666667	google_play
f0c3ab74-087f-43bd-ab00-fe80b34e864a	3	amazing mobile	5	2025-04-21	positive	0.5859	positive	0.6000000000000001	google_play
82f5d5da-6678-4f6d-8d35-a5130983c919	3	dashen bank supper multipurpose convenient attractive make life easier	5	2025-04-21	positive	0.6908	positive	0.8	google_play
4ca0ede2-4259-4cec-a958-71d3a7555715	3	no working hulum information asgebiche continue accept yemilew button ayeseram phone samsung	1	2025-04-21	positive	0.1027	neutral	0	google_play
3f6bead7-080a-4031-8a18-49b6e7997c15	3	love	5	2025-04-21	positive	0.6369	positive	0.5	google_play
50117391-aa47-4c25-b9fa-bda3a861d922	3	love one best mobile banking banking industry	5	2025-04-21	positive	0.8555	positive	0.75	google_play
179557f5-0e5f-4b02-8069-f5da0d0def2d	3	best	5	2025-04-21	positive	0.6369	positive	1	google_play
1351d527-0ebd-4fcb-9c37-ba6361ece17e	3	dashen super offer modern user friendly experience leverage latest technological advancement deliver seamless e commerce platform	5	2025-04-21	positive	0.7964	positive	0.3016666666666666	google_play
ec94d303-bb84-4869-b414-320e5de68f29	3	superb	5	2025-04-21	positive	0.6249	positive	1	google_play
c8734abd-f137-417a-8c36-defbc982ec26	3	really like amazing application dashen supper ha made life easier	5	2025-04-21	positive	0.9016	positive	0.4	google_play
386c3a7b-275d-436c-a83b-af805c1cc4ac	3	best class	5	2025-04-21	positive	0.6369	positive	1	google_play
8a3f027a-9427-4cd2-901b-6fff9659d994	3	convenient fast	5	2025-04-21	neutral	0	positive	0.2	google_play
f539096f-c091-4424-9f29-8b1de5bcd809	3	wow like name super	5	2025-04-21	positive	0.8807	positive	0.2166666666666666	google_play
34f021e1-7017-44b8-b630-9d1dc75bf1db	3	dashen supper useful customer	5	2025-04-21	positive	0.4404	positive	0.3	google_play
99157497-80f6-4302-9987-a61fb2d35d8b	3	excellent mobile banking	5	2025-04-21	positive	0.5719	positive	1	google_play
5bfe42a8-190a-44b6-8149-bbf58d0cbd08	3	dashen supapp contemporary application offering great experience enabling user perform multiple task single platform chatting friend transferring money paying bill first kind ethiopian banking industry making remarkable opportunity entrepreneur working based sale software marketing good job dashen bank	5	2025-04-21	positive	0.9638	positive	0.3994047619047619	google_play
b88fa79d-d681-4e41-8994-88bd84e50d24	3	expect get service dashen bank always like slogan	5	2025-04-21	positive	0.3612	neutral	0	google_play
b5a99318-f47b-46ae-8eef-db5c863f7958	3	wa really amazed idea e commerce service banking mean one step ahead please include kind product soon possible	5	2025-04-21	positive	0.8479	positive	0.121875	google_play
9386a998-e31b-4518-b44f-8ddde2d80f82	3	best mobile banking application	5	2025-04-21	positive	0.6369	positive	1	google_play
3fcf360a-1a03-42d4-9c5e-7973b8671e68	3	banking superapp incredibly well designed design appearance overall experience using fantastic packed feature banking e commerce one place even ha budget setting option super useful managing money everything run smoothly love convenient ha made daily life huge kudos dashen bank truly living motto always one step ahead keep	5	2025-04-21	positive	0.9823	positive	0.3541666666666667	google_play
63f87ad6-81fd-41ce-ac38-3fa11b0db062	3	best mobile banking application	5	2025-04-21	positive	0.6369	positive	1	google_play
0e6b332e-9636-45c6-9467-3826506707f5	3	join digital world use supper make life easy	5	2025-04-21	positive	0.6249	positive	0.2166666666666666	google_play
d5ae9239-54f2-4f66-9050-09c7aa0d84a8	3	dashen bank super use make easy fast convinent	5	2025-04-21	positive	0.7783	positive	0.3222222222222222	google_play
d8cb9984-bf72-444c-ab26-af5b0943901e	3	best	1	2025-04-21	positive	0.6369	positive	1	google_play
83682450-a7ae-424d-9ea9-15b6fe29de4d	3	one finance e commerce super pay save shop seamlessly fast secure bankandshop	5	2025-04-21	positive	0.8442	positive	0.3111111111111111	google_play
02b8cc52-e23d-4b2f-b1e5-576c3560b859	3	dear user dashen bank super using dashen bank super must say truly game changer incredibly fast reliable never encountered delay transaction one feature absolutely love chat banking make everyday task like checking balance transferring money simple sending quick message also budgeting tool ha huge help tracking spending giving clearer	5	2025-04-21	positive	0.9835	positive	0.1666666666666666	google_play
6a9d5447-10d8-4f6e-abc9-7a3f0ba909f6	3	good fast supper thanks dashen bank	5	2025-04-21	positive	0.7003	positive	0.3666666666666666	google_play
996483eb-2fa8-4628-8c6f-059c82d9e883	3	dashen super give amazing convenience make life easy	5	2025-04-21	positive	0.891	positive	0.4555555555555555	google_play
8697f174-08de-481a-8bbd-9619e90719e6	3	one	5	2025-04-21	neutral	0	neutral	0	google_play
62e4269a-6b6b-44ea-a4ec-07b21d8eda68	3	dashen bank super ha truly elevated mobile banking experience fast user friendly packed essential feature interface clean intuitive making navigation easy even first time user also appreciate added security feature give peace mind banking go dashen bank ha done amazing job reliable efficient always improving highly recommended anyone looking seamless digital banking	5	2025-04-21	positive	0.9895	positive	0.2562121212121213	google_play
fdcc34cc-699d-46ba-bcde-69f82e340aa4	3	easy simple use	5	2025-04-21	positive	0.4404	positive	0.2166666666666666	google_play
f3f97b40-b273-44a0-afb9-1d393132be8d	3	incredible experience dashen super amazing platform keep pioneering technological advancement	5	2025-04-21	positive	0.8271	positive	0.6111111111111112	google_play
65fbea88-9893-412a-adf2-7bde81ea0d0f	3	super easy use fast transaction	5	2025-04-21	positive	0.7783	positive	0.3222222222222222	google_play
d66a2f21-49a4-4434-9e4e-2e6ce9b28307	3	thanks	5	2025-04-21	positive	0.4404	positive	0.2	google_play
7ec853c5-737f-4ffe-b35b-069674bb88a8	3	call banking professional want banking simple rich feature align lifestyle	5	2025-04-21	positive	0.5994	positive	0.1583333333333333	google_play
f1d0d6cf-8d40-4ff9-99d5-3225c4efd6b9	3	dashen bank super suitable reliable fast digital banking system	5	2025-04-21	positive	0.5994	positive	0.2708333333333333	google_play
62ff3224-447a-4021-9b69-69faade17181	3	one best digital platform used smooth transaction seamless shopping experie	5	2025-04-21	positive	0.6369	positive	0.375	google_play
6c78dd1a-b338-4892-8821-27329e6a37cb	3	one everything shop manage bank account much truly super	5	2025-04-21	positive	0.7783	positive	0.2666666666666666	google_play
876f0ee8-c6e9-437e-9a56-bf00083a0319	3	easy secured fast multifunctional dashen supper application ever seen dashen really one step ahead	5	2025-04-21	positive	0.6808	positive	0.2777777777777777	google_play
31eddf1f-9725-472b-b29a-53377dac71ca	3	really super unique offering individual business secure ux first intended cater comprehensive digital meed also happy know dashen considering make inclusive lowering mobile version requirement	5	2025-04-21	positive	0.8832	positive	0.3083333333333333	google_play
650cfa8e-a81f-4f2e-bfbf-8f7fa6996872	3	dashen superapp ultimate one solution banking shopping bill payment everything need right fingertip life got whole lot easier	5	2025-04-21	positive	0.6249	positive	0.1619047619047619	google_play
4515e0fb-53a8-4310-8734-084b884ed005	3	not recommend dashen super enough truly game changer anyone looking seamless efficient way manage daily life combine multiple essential service one easy use platform saving time simplifying task user interface modern intuitive super responsive making navigation breeze whether banking payment service accessing lifestyle feature everything click away	5	2025-04-21	positive	0.4015	positive	0.1	google_play
1e865933-282f-4ea1-98f5-98c08d95a40f	3	wawwwww nice super keep dashen bank	5	2025-04-21	positive	0.7717	positive	0.4666666666666667	google_play
83b92800-2bb0-47d6-8d64-b3409c428817	3	convenient	5	2025-04-21	neutral	0	neutral	0	google_play
b5161ddf-ce45-46bf-9858-07071bdeeaba	3	highly impressed dash bank really nailed secure reliable packed feature use daily	5	2025-04-21	positive	0.7245	positive	0.4	google_play
dd0238ce-336d-4dac-832c-8d01f44faf0a	3	easy use ha many option best financial ever used	5	2025-04-21	positive	0.8591	positive	0.4833333333333333	google_play
9057ebb4-b1dd-4df9-a0d3-9ead5360b9c9	3	dashen super game changer fast user friendly packed feature make everyday banking transaction super convenient love everything need mobile banking utility payment one place interface clean everything work smoothly definitely one best highly recommended	5	2025-04-21	positive	0.9796	positive	0.2425757575757575	google_play
9937695e-7675-41d4-a60d-2fee72cb4b3c	3	proudly ethiopia innovation delivers beyond expectation marketplace feature big win local shopper bnd seller	5	2025-04-21	positive	0.875	positive	0.4	google_play
328e442a-c92a-42dc-a91c-44d71556a34e	3	one best digital platform used smooth transaction seamless shopping experience highly recommended	5	2025-04-21	positive	0.7425	positive	0.3319999999999999	google_play
43630291-4571-4e34-96d8-1d7ba7d174a9	3	fanrastic user friendly bravo dashen bank thanks	5	2025-04-21	positive	0.7269	positive	0.2875	google_play
6098f0f8-c13e-4cd3-a595-25b234b6a05f	3	proudly made ethiopia innovation delivers promised marketplace major boost local commerce	5	2025-04-21	positive	0.886	positive	0.2875	google_play
10870471-f38d-4dae-8a2c-ea875933d8ef	3	incredibly user friendly brings multiple service one place fast intuitive make daily task super convenient true one solution	5	2025-04-21	positive	0.9096	positive	0.3083333333333333	google_play
ce9b538b-ea95-497b-ba79-45189131f057	3	banking make smart local solution one place smooth fast actually saving time feel like future love	5	2025-04-21	positive	0.8934	positive	0.1877551020408163	google_play
70e43e76-a4ca-4e15-b690-93a34a5bf675	3	user experience seamless everything work perfectly right box believe much time effort save every day	5	2025-04-21	positive	0.8126	positive	0.1952380952380952	google_play
873196ce-c4ce-441c-a522-dd0785ea59f3	3	incredibly handy managing multiple financial task bill payment managing budget saved lot time made banking way convenient definitely worth checking	5	2025-04-21	positive	0.7506	positive	0.2249999999999999	google_play
5145d0cf-0bf3-4b48-9c11-46819cd06bcd	3	one best digital platform used smooth transaction seamless shopping experience highly recommended	5	2025-04-21	positive	0.7425	positive	0.3319999999999999	google_play
6f49f061-db2b-45e0-9947-743a32c2660f	3	NaN	5	2025-04-21	neutral	0	neutral	0	google_play
427aa626-93a9-4faf-899a-d519952b4baa	3	hestorical bank industry	5	2025-04-21	neutral	0	neutral	0	google_play
369da03b-61ed-424a-abab-7efc142b1038	3	dashen bank super crucial convenient ethiopia no compare dashen bank super	5	2025-04-21	positive	0.765	positive	0.2222222222222222	google_play
739b4157-4335-4fe7-9273-07f9427c8dba	3	solid step forward dashen bank superapp combine essential banking feature lifestyle service making everything accessible one place interface smooth transaction quick reliable clear lot thought went design functionality great job	5	2025-04-21	positive	0.8074	positive	0.2869047619047619	google_play
2a157c0e-b57e-43e8-8207-4ae55e549812	3	dashen superapp blend finance shopping daily service effortlessly e commerce feature smooth support local merchant proud back ethiopian made solution	5	2025-04-21	positive	0.7964	positive	0.24	google_play
5b8c94df-b1d3-4948-bcb1-238e80146227	3	dashen superapp lifesaver banking shopping bill one super easy e commerce feature awesome support local merchant fast secure proudly ethiopian download regret	5	2025-04-21	positive	0.9666	positive	0.4523809523809524	google_play
963f1643-28ff-462c-88a7-bc9146390102	3	dashen super experience effortless powerful built future	5	2025-04-21	positive	0.7717	positive	0.2111111111111111	google_play
86b63f8a-6ca9-487d-beca-ed2f75ca888f	3	game changer ethiopian digital banking fast secure packed service everything need one powerful true leap toward financial convenience innovation	4	2025-04-21	positive	0.8625	positive	0.1214285714285714	google_play
e84b7866-5a17-40c7-affc-1a44702a7227	3	game changing ethiopian innovation shopping meet opportunity marketplace feature connects buyer seller like never	5	2025-04-21	positive	0.7845	negative	-0.4	google_play
80908e03-2856-4e22-84ed-a70b53d96a41	3	amazing date time wow wow	5	2025-04-21	positive	0.9081	positive	0.2666666666666666	google_play
5b63a17e-0903-47f6-b8da-cb1c7346ad56	3	amazing uniqe quality easy fast mobile banking	5	2025-04-21	positive	0.7717	positive	0.4111111111111111	google_play
3eabf614-6972-446f-a350-b4df903e9e8c	3	amazing application	5	2025-04-21	positive	0.5859	positive	0.6000000000000001	google_play
e18544eb-d622-47eb-8d7d-ef3bf4df0a10	3	inclusive	5	2025-04-21	neutral	0	neutral	0	google_play
0d377b76-0853-4251-b23e-81fd0cc4d9f5	3	chat banking unique alow money request	5	2025-04-21	neutral	0	positive	0.375	google_play
ba65f5a6-aa3f-4c38-956e-7077d9756d65	3	db sup platform application grasp satisfaction fastest mode operation mean budget planning use qr code scan pay go chat staff acc acc bank ft merchant payment easly addition satisfied invite everyone use platform	5	2025-04-21	positive	0.7096	positive	0.09375	google_play
d41af5b1-8acf-4f66-9d54-e14316bf489d	3	dashen bank super fast reliable super easy use banking need handled smoothly one place clean design seamless experience highly recommended	5	2025-04-21	positive	0.9381	positive	0.2908333333333334	google_play
f37a6b6d-6879-4d35-80ba-64d2c96fa749	3	impressed e commerce section smooth support ethiopian merchant	5	2025-04-21	positive	0.7003	positive	0.7	google_play
de603128-030e-4e5b-9bda-38e74813ad2d	3	proudly ethiopian innovation delivers beyond expectation marketplace feature big win local shopper seller impressed e commerce section smooth support ethiopian merchant	5	2025-04-21	positive	0.9413	positive	0.5	google_play
134d29fb-1daa-4f59-b21f-11e5fa7be525	3	dashen supperapp revolutionary advancement digital banking combining exceptional usability intuitive interface seamless user experience among standout feature integration qr code account statement transaction advise chat transaction authentication limit threshold budgeting different single dashboard truly ahead curve keep excellent work	5	2025-04-21	positive	0.765	positive	0.2825396825396825	google_play
05ea16ca-9cbf-4683-9ac7-ea4395cf688b	3	dashen bank supper easy use high speed quality like feature like chat budget fuel payment security opinion product techonolgy edge international standard thanks product oweners dashen bank	3	2025-04-21	positive	0.9042	positive	0.1586666666666666	google_play
867ceac0-2b05-4261-86c0-093b58ea0553	3	keep time pay bill generate satment easily	5	2025-04-21	positive	0.25	positive	0.4333333333333333	google_play
06aa9940-e8eb-45b2-91c7-1f13bd1645b6	3	e commerce feature incredibly amazing user friendly	5	2025-04-21	positive	0.8204	positive	0.4875	google_play
be4677cc-1140-4ab6-b785-420638e0d7ba	3	great everyday banking payment go	5	2025-04-22	positive	0.6249	positive	0.3	google_play
872c07eb-b111-4701-b263-c11d17dea1c7	3	love esp click make e commerce easier convinient	5	2025-04-22	positive	0.7906	positive	0.5	google_play
d7f04f13-06de-4c04-b616-a7ecbb6dd8b4	3	dashen super easy use secure fast transaction😍	5	2025-04-22	positive	0.8481	positive	0.3416666666666666	google_play
524e7cc6-ccd9-4c2a-8384-968ef8f4040e	3	fast reliable user friendly keep	5	2025-04-22	positive	0.4939	positive	0.2875	google_play
aba6145f-bd70-43dd-ae4e-46e73fde8a82	3	best application	5	2025-04-22	positive	0.6369	positive	1	google_play
9dd7083b-d295-42f5-b18f-f11dc02839a7	3	feature dynamic	5	2025-04-22	positive	0.3818	neutral	0	google_play
02103d94-84d8-4ca5-aa3d-db0e512c68a7	3	exceptional digital experience supperapp bring paradigm shift banking business bravo dashen keep	5	2025-04-22	neutral	0	positive	0.3333333333333333	google_play
a7530454-7c62-4c62-9f29-9f3a2e82c705	3	making transaction ha never easier amazing	5	2025-04-22	negative	-0.4596	positive	0.6000000000000001	google_play
e0e5b98d-5942-4c79-8610-4206edfdf353	3	fast friendly user application	5	2025-04-22	positive	0.4939	positive	0.2875	google_play
cdbc2de4-065b-4230-a34b-c532cf84ae71	3	ha various usefull function make easy payment system also connect seller reasonable price	5	2025-04-22	positive	0.6486	positive	0.2111111111111111	google_play
2bc93d8c-1975-44d3-b7c2-ef3429278f07	3	best ever planned include digital lending gasification	5	2025-04-22	positive	0.6369	positive	0.5	google_play
7baf1a73-5eb3-4057-b7aa-c94108c67155	3	betam mirt ena betam le atikakem kelel yale ena michu application nw	5	2025-04-22	neutral	0	neutral	0	google_play
5a146ecb-653c-4ffe-af0f-13a97eea6825	3	convenient	5	2025-04-22	neutral	0	neutral	0	google_play
f6ad312f-15c3-43bb-b291-f8a8e35e331e	3	amazing application meet need customer	5	2025-04-22	positive	0.5859	positive	0.6000000000000001	google_play
751bedd2-1517-4cb4-a41c-f02d5f4b2468	3	effecting payment via ha created convenience recipient easily confirming payment received	5	2025-04-22	positive	0.7003	positive	0.4333333333333333	google_play
ccbeff90-e9fd-4a74-807f-d16d8bbe02e5	2	NaN	5	2025-10-05	neutral	0	neutral	0	google_play
3e0e6df3-cb63-4503-8434-e1fb0bb790d1	3	best supper ever	5	2025-04-22	positive	0.6369	positive	1	google_play
f20f93ab-8f75-40aa-89a6-c450f54a7365	3	powerful local solution rival global love easy explore service product	5	2025-04-22	positive	0.9042	positive	0.2466666666666666	google_play
ff1fe28f-db38-4286-acc3-b3693e528883	3	dashen bank number one choice	5	2025-04-22	positive	0.0772	neutral	0	google_play
9b5d99cc-8b0e-46d5-a846-ece397be1d99	3	assefa genetu dashen superup latest inclussive happy super	5	2025-04-22	positive	0.8225	positive	0.5444444444444444	google_play
1ba081f6-d792-4a8e-a001-8613242bee50	3	ha great user interface comprehensive payment e commerce platform also includes unique feature chat banking budget	5	2025-04-22	positive	0.8176	positive	0.5875	google_play
1115d2b9-b1f0-4fe5-a92c-67aed49141a7	3	super total game changer fast reliable packed everything need one place seamless super convenient love	5	2025-04-23	positive	0.9186	positive	0.1523809523809523	google_play
99705962-8067-497e-a116-cd6599ca4bb8	3	one secure reliable convenient digital banking game changer	5	2025-04-23	positive	0.34	neutral	0	google_play
2d86848c-b71b-4419-871c-42ad60f1abfe	3	incredible product	5	2025-04-23	neutral	0	positive	0.9	google_play
e887c287-a3a3-42dc-bd9a-7508531f6f0c	3	really impressed user friendly run smoothly ha feature need make task much easier save lot time highly recommended	5	2025-04-23	positive	0.9464	positive	0.4269999999999999	google_play
49c926f1-3b4f-48af-8fab-ce09046e20cc	3	best banking ever recommend everyone use	5	2025-04-23	positive	0.7717	positive	1	google_play
544cb743-0240-4906-ae1c-52ecf44f0a5b	3	ok	5	2025-04-23	positive	0.296	positive	0.5	google_play
7b265fe3-1e03-425b-9b06-41bafe966fc3	3	amazing experience	5	2025-04-23	positive	0.5859	positive	0.6000000000000001	google_play
e255b972-0d40-4de1-99ff-44dbada62a16	2	really good	5	2025-04-23	positive	0.4927	positive	0.7	google_play
dbd9dbf2-47ee-4103-8631-cd0ef79f4344	2	bad stuck open noting work	1	2025-04-23	negative	-0.6705	negative	-0.3499999999999999	google_play
f91584e2-4c24-4a52-8fc6-1ea6abb40a0c	3	best	5	2025-04-23	positive	0.6369	positive	1	google_play
7e450cb8-6117-4fb2-b6fe-a4b889074190	3	smooth secure experience transfer bill payment tracking expense effortless intuitive design make banking go	5	2025-04-24	positive	0.34	positive	0.4	google_play
125057ca-c7fb-4c34-a7d1-a2cbe0d1b369	3	easy fast	5	2025-04-24	positive	0.4404	positive	0.3166666666666666	google_play
b7dbd93e-582d-4510-af69-30c206f1a99d	3	incomparably user friendly fast mobile banking	5	2025-04-24	positive	0.4939	positive	0.325	google_play
a96e41e8-767a-47e4-831c-2993d37f2906	3	nothing super repeatedly failed transaction waste customer valuable time system upgrade time less traffic demand technical difficulty not reflected customer	2	2025-04-24	negative	-0.4148	negative	-0.1066666666666666	google_play
4041a84a-1399-4b47-86dd-a7f048978f43	3	execellent	5	2025-04-24	neutral	0	neutral	0	google_play
3cef32ad-b3c0-4784-8594-0dfee471123e	3	slow lack many feature super high rating given employee not customer	1	2025-04-25	positive	0.3818	positive	0.1733333333333333	google_play
ecd2b916-31b8-402c-88d8-6dca2df2fa8a	3	great	4	2025-04-26	positive	0.6249	positive	0.8	google_play
92667270-5726-4327-8df5-03303bfbc05a	3	nice	5	2025-04-26	positive	0.4215	positive	0.6	google_play
cbfa6f44-6387-46f5-8c57-005106a7f33f	3	change pin number use finger print dummy	1	2025-04-27	positive	0.0772	neutral	0	google_play
ebd52e84-7485-4418-bfb0-29ef1fc4bfb7	3	wow appl	5	2025-04-28	positive	0.5859	positive	0.1	google_play
1db8f294-b4c5-4389-8b1c-dcdf92f7ce3c	3	wowslnwoooo wowwww amazing	5	2025-04-28	positive	0.5859	positive	0.6000000000000001	google_play
9f0dddc5-58fa-4637-9a98-414044aa8bd0	3	slow try see recent transaction stucked	1	2025-04-28	neutral	0	negative	-0.15	google_play
82975516-427f-4659-b256-32887b29f545	3	best	5	2025-04-28	positive	0.6369	positive	1	google_play
5f0cd027-0905-43a2-96a1-706d12976895	3	waw	5	2025-04-28	neutral	0	neutral	0	google_play
8571b294-c8c6-491b-99d3-52438a2b6dc6	2	wow	5	2025-04-28	positive	0.5859	positive	0.1	google_play
153295c5-2630-4a84-9d1e-18ac73eca0c1	3	dashen super secure band easy	5	2025-04-29	positive	0.8481	positive	0.3888888888888889	google_play
185c1487-6efe-4ba5-bbaf-41ea48da9422	3	fast secured mobile banking like	5	2025-04-29	positive	0.6369	positive	0.2	google_play
63989d70-6ec3-44bb-87a8-2dad9286e37a	3	best ever seen	5	2025-04-29	positive	0.6369	positive	1	google_play
17d46982-18ec-43a9-85f3-0ff927671f95	3	best best	5	2025-04-29	positive	0.8555	positive	1	google_play
0f3023a3-30af-479c-85e7-4165b2ce30c7	2	good	4	2025-04-30	positive	0.4404	positive	0.7	google_play
aa6d112e-713e-46d9-90a5-6c32c1b1d7ef	2	good	4	2025-04-30	positive	0.4404	positive	0.7	google_play
af3ab891-6a3a-4cd4-a081-2455410143ba	3	bad	1	2025-04-30	negative	-0.5423	negative	-0.6999999999999998	google_play
a65769b9-bfda-4c04-a0ed-dce672c8fac4	3	great	5	2025-04-30	positive	0.6249	positive	0.8	google_play
d27b1e7f-4f07-426c-a471-d6137f89bd48	3	thank	4	2025-04-30	positive	0.3612	neutral	0	google_play
222e6a10-b3df-421c-83ae-1ff05ec40496	3	best ui mobile banking prop design team	5	2025-04-30	positive	0.6369	positive	1	google_play
0472c5b5-9fd3-49be-80f6-cca83ad918e5	3	faster version	5	2025-05-01	neutral	0	neutral	0	google_play
586aecda-30fc-4daf-bca7-2d37573a5e4e	2	good	5	2025-05-02	positive	0.4404	positive	0.7	google_play
4e018789-e27b-4b7c-b1d4-f79dd0affa68	3	yes want dashen super open	5	2025-05-02	positive	0.7845	positive	0.1666666666666666	google_play
f4d24779-931e-4cfd-a622-92dfcb654d3d	3	seems logging within minute	1	2025-05-03	neutral	0	neutral	0	google_play
62102c1c-85b0-4965-b033-063c67ac9129	3	highly excited using application favorable well preferrable mobile	5	2025-05-03	positive	0.7841	positive	0.375	google_play
157b5f87-506e-46dc-b89b-179653dbd957	3	nice especially gui got error send within dashen bank receipter not get sm notification	4	2025-05-03	neutral	-0.0422	positive	0.3	google_play
e4f9ad9a-576a-4bbe-a910-812fd1b7e08a	2	good	5	2025-05-06	positive	0.4404	positive	0.7	google_play
62fa097e-3fd8-4522-a3a3-9b13f17f594d	2	future good problem reset activate difficult even branch staff take long time active branch plus time high expected failure activation process counter otp sent not work	1	2025-05-06	negative	-0.4404	neutral	-0.03	google_play
857bb685-6f7e-4db0-af37-eb2f1c1c6fd3	2	liking application good	5	2025-05-07	positive	0.6808	positive	0.7	google_play
f2852962-b983-44af-b296-241a3373477f	3	excellent game changer	5	2025-05-08	positive	0.5719	positive	0.3	google_play
749851ed-72d7-4f1c-8e5e-27dd822b5008	3	nice	5	2025-05-08	positive	0.4215	positive	0.6	google_play
8d1d472b-2bae-4749-b089-5632108ade02	3	best ever	5	2025-05-09	positive	0.6369	positive	1	google_play
e1c1214a-8bc1-45db-bc49-3d51dddc6b88	3	amazing super easy use best design loved	5	2025-05-09	positive	0.9623	positive	0.6133333333333333	google_play
b3c8405c-96a7-4b5e-884c-76c97c530c34	3	good	5	2025-05-09	positive	0.4404	positive	0.7	google_play
9a02c524-0d8d-445e-97d4-d1f451b16d43	2	best	5	2025-05-09	positive	0.6369	positive	1	google_play
301f6927-9395-4cda-bb77-041a36323875	2	entered incorrect security question mistake boa lock pin forever no option contacted different branch time not able solve issue	5	2025-05-10	negative	-0.4199	negative	-0.125	google_play
141af3a7-96be-4fe5-9490-4cb8dfbf711e	2	nice	5	2025-05-10	positive	0.4215	positive	0.6	google_play
b640cc87-df88-4b6b-9b9f-13fe0bdd5dfa	2	doe no work samsung give preview logo	1	2025-05-11	negative	-0.296	neutral	0	google_play
d61a5b09-39d5-4502-b270-15c6ad04f19c	3	honest best banking lifestyle ethiopia	5	2025-05-12	positive	0.8176	positive	0.8	google_play
f318c783-8bba-478b-9d53-f238dba2e270	3	fast	5	2025-05-12	neutral	0	positive	0.2	google_play
c3afc51f-9e2b-4b3d-b155-0339a9ce0f20	3	must seamless one digital platform db superapp keep living motto always one step ahead	5	2025-05-12	neutral	0	neutral	0.05	google_play
dd4b209c-49b6-4052-aef2-62d9ddd28a78	3	wow	5	2025-05-13	positive	0.5859	positive	0.1	google_play
7106eec4-cb60-4cf3-8f3b-fe5b0bfb400d	3	game changer	5	2025-05-13	neutral	0	negative	-0.4	google_play
b34cbb10-24ea-4091-93b3-41cd5f5506ec	3	totally amazing	5	2025-05-13	positive	0.624	positive	0.6000000000000001	google_play
9de192e3-daa5-40ec-a906-8969b560f171	3	super	5	2025-05-13	positive	0.5994	positive	0.3333333333333333	google_play
a1414451-a015-4553-a023-e2f4c2d8cfb9	3	helpful	5	2025-05-13	positive	0.4215	neutral	0	google_play
be71f8b9-5329-4235-8c92-9be8be76e5cb	3	good	4	2025-05-13	positive	0.4404	positive	0.7	google_play
c98c51c7-aa99-40ea-af68-8edaad178f28	3	nice	5	2025-05-13	positive	0.4215	positive	0.6	google_play
f14bbcf2-d3c7-4eb9-bf61-b8be931c023f	3	awesome keep going	5	2025-05-14	positive	0.6249	positive	1	google_play
35a40262-8905-40a1-b4bf-a165a043175f	3	wow	5	2025-05-14	positive	0.5859	positive	0.1	google_play
acf043c7-2644-4526-a5cc-fd97b1c2defb	3	NaN	5	2025-05-14	neutral	0	neutral	0	google_play
39322571-d8e5-42c6-8c9c-9f31706d5e4f	3	grows ethiopian digital banking step ahead fetures one simple fast convince	5	2025-05-14	positive	0.25	positive	0.0666666666666666	google_play
49377d51-ea44-483e-a596-3d5bed4b3f9a	2	excellent	5	2025-05-15	positive	0.5719	positive	1	google_play
499d89e8-8b7e-4641-b477-29ab5a5d314a	3	choice	5	2025-05-15	neutral	0	neutral	0	google_play
d8ab69ab-7277-493d-a2d5-0db4fd48635c	3	dashen bank good sometimes not working well	5	2025-05-15	positive	0.27	positive	0.7	google_play
37daf582-3061-44eb-9685-2bcf106833ec	3	wow apo	5	2025-05-15	positive	0.5859	positive	0.1	google_play
1d4a769a-320a-4f19-a945-44c214f880ae	3	always lagging	1	2025-05-16	negative	-0.2732	neutral	0	google_play
862138db-f7c6-4c78-bb5d-e28619cdb514	3	amazing application	5	2025-05-16	positive	0.5859	positive	0.6000000000000001	google_play
a3e55437-92a6-4f5f-a9d5-45e561a077b0	3	fantastic	5	2025-05-16	positive	0.5574	positive	0.4	google_play
c0dbb81a-2d73-4409-ba41-2287a340b4d9	3	good	5	2025-05-16	positive	0.4404	positive	0.7	google_play
d3ab193b-503c-4530-8148-cf50387c8b26	3	wowwwe	5	2025-05-17	neutral	0	neutral	0	google_play
85c0cebd-10ec-4dd1-9e5b-647b9012acf4	3	transferring bank account hastle inconvenient get used seeing please try	2	2025-05-17	neutral	-0.0258	negative	-0.6	google_play
8ab908fa-9eb8-4b9a-9f76-707e01b53848	3	dashen bank dashen super	1	2025-05-17	positive	0.5994	positive	0.3333333333333333	google_play
190dccba-a7cf-4b2f-9b78-5bf8d3c280ae	2	amazing	5	2025-05-18	positive	0.5859	positive	0.6000000000000001	google_play
f8bb86fb-594a-48ea-be1f-d08ea0882b8e	2	worst ever totally unreliable not work last month	1	2025-05-18	negative	-0.6249	negative	-0.3333333333333333	google_play
29d8b281-c802-4996-8dc3-eb99d78a43ed	3	good compitators confuse transfer need otp pin user inter pin instead otp know litrecy level society device based dont know need otp please try fix	3	2025-05-18	positive	0.5106	positive	0.7	google_play
a36489c7-0091-4e07-897f-78168bcb64b4	3	best ever finance sector	5	2025-05-18	positive	0.6369	positive	1	google_play
8ddf5c9f-f866-4817-ac5e-85c67bfa870e	2	not opening android	4	2025-05-19	neutral	0	neutral	0	google_play
7f8c28d9-8bd2-4bf5-b220-b520301c24c3	3	best	5	2025-05-19	positive	0.6369	positive	1	google_play
b5aa7d58-de59-4feb-bae3-88c98dc3007c	3	wow	5	2025-05-20	positive	0.5859	positive	0.1	google_play
c8a76cee-dbcc-491e-9aa0-0f8fa423ee1a	3	nothing changed version collecting comment feed back improved version superapp mot functioning today	4	2025-05-20	positive	0.4767	neutral	0	google_play
add25431-5b8a-4878-b820-2cc1c06926f1	3	good	5	2025-05-20	positive	0.4404	positive	0.7	google_play
86456197-428d-45e1-9c00-8dd85dcbb9e9	2	boa	2	2025-05-20	neutral	0	neutral	0	google_play
fe22c72e-7fba-4ae7-9b4f-097bdb51cc61	2	good	5	2025-05-20	positive	0.4404	positive	0.7	google_play
b857156e-2647-4eee-a3f4-2eec417f721e	2	good	5	2025-05-21	positive	0.4404	positive	0.7	google_play
2e219268-96fd-400c-8632-0b0d1044f487	2	joke crash work take forever load half feature decorative point log transfer money even check balance without bugging developer actually trying make work kind social experiment test patience build sleep definitely look like idea functional maybe consider different career path	1	2025-05-21	positive	0.7964	positive	0.0777777777777777	google_play
9a583630-4540-44cb-8488-cf58211da392	3	not good mobile bank	1	2025-05-22	negative	-0.3412	negative	-0.35	google_play
bb72bc30-a3bb-468f-ad15-1ca88c7897ae	3	best best arrived empowering financial freedom experience seamless banking fingertip dashen bank empowering financial freedom anytime anywhere innovation meet convenience dashen bank mobile banking innovation meet convenience secure reliable bank confidence	5	2025-05-22	positive	0.9812	positive	0.4166666666666667	google_play
e244700c-1210-4280-b60b-b75964c982df	2	guy keep getting worst	1	2025-05-22	negative	-0.6249	negative	-1	google_play
9198a5bc-f914-4a18-ad44-d2b77094c02a	2	good	5	2025-05-22	positive	0.4404	positive	0.7	google_play
e2c02e65-3be7-46e0-9cbc-7d4295bee6f7	3	nice	5	2025-05-23	positive	0.4215	positive	0.6	google_play
eb8a2948-44de-4f81-ac9f-b73840619f7f	3	best	5	2025-05-23	positive	0.6369	positive	1	google_play
76089146-b1c7-47f4-ab9f-44b6a1092225	2	crush frequently	1	2025-05-24	negative	-0.1531	positive	0.1	google_play
a2a494de-d576-48dc-b67e-04fe79ec47b2	3	wawww	5	2025-05-24	neutral	0	neutral	0	google_play
512f8c2b-8fac-41cc-978a-b58e39a1ea5c	2	good service	3	2025-05-25	positive	0.4404	positive	0.7	google_play
b2962d2d-86b8-43a5-ab14-d9d37ad03165	3	game changer dashen bank super fast secure easy use three click payment make sending money super quick qr code payment perfect cashless shopping also love biometric login easy airtime bill payment everything need one place dashen bank ha really raised bar digital banking ethiopia highly recommended	5	2025-05-26	positive	0.9806	positive	0.302051282051282	google_play
37afb22a-56f0-429c-9bab-41e39e524f29	3	useful	1	2025-05-26	positive	0.4404	positive	0.3	google_play
aa332503-7097-479d-89d9-6b762bb9e814	3	simple robust feature yes please endless loading screen killed fun use day fix glitch yeet higher rating	2	2025-05-26	positive	0.6369	neutral	0.045	google_play
c3f2810d-cf99-4600-90ac-bef47adb9e7a	2	waste time doe not work not even long really piss fix problem	1	2025-05-27	negative	-0.8297	neutral	-0.0166666666666666	google_play
4a9c5167-439a-4c99-a6d4-ad143b13bcd8	3	nice application	5	2025-05-27	positive	0.4215	positive	0.6	google_play
73240914-2b17-4426-91b3-32ad2e9b2387	3	good	5	2025-05-27	positive	0.4404	positive	0.7	google_play
f45d9c1b-bec1-41ba-b085-7a6a94d9d91a	3	wow	5	2025-05-27	positive	0.5859	positive	0.1	google_play
115f7455-45c0-483c-b690-0e83dada584b	3	useless ever loading take long	1	2025-05-27	negative	-0.4215	negative	-0.275	google_play
74cf1402-3df8-4a1f-9303-fb7d5c5ae7dc	3	NaN	5	2025-05-28	neutral	0	neutral	0	google_play
1d64073e-c624-4035-b732-39f7a769537f	3	good	5	2025-05-28	positive	0.4404	positive	0.7	google_play
be9a4e52-ed77-4953-9e52-17927dd7e138	3	slow	3	2025-05-29	neutral	0	negative	-0.3	google_play
486d7550-98dd-4b9d-849d-e3f3fbf7c1ed	3	wow saff	5	2025-05-30	positive	0.5859	positive	0.1	google_play
32df6869-1c15-4cfe-8431-0ec332afea89	3	good	5	2025-05-30	positive	0.4404	positive	0.7	google_play
40c6e51b-c1bb-4bb0-af7c-89a43ffbdc90	3	wow	5	2025-05-30	positive	0.5859	positive	0.1	google_play
5ced40d8-1074-421d-b6e6-be9e12e8b6bd	3	top	5	2025-05-31	positive	0.2023	positive	0.5	google_play
caf4a80c-85db-4b49-ab9c-a0b55e152317	3	massive upgrade amole	5	2025-05-31	neutral	0	neutral	0	google_play
2c5df026-16eb-4d6b-a044-acf4103d1c36	3	good	4	2025-05-31	positive	0.4404	positive	0.7	google_play
c25b35d2-35dd-4347-a520-99471d7b1066	3	good	5	2025-05-31	positive	0.4404	positive	0.7	google_play
5e6ff839-abc2-4b30-a8b4-e0f331da29d1	3	amole biometric doe not work	4	2025-05-31	neutral	0	neutral	0	google_play
2ca9480b-ff5f-4b59-952c-5921db83dab2	2	worest loading	1	2025-06-01	neutral	0	neutral	0	google_play
d9172c66-a605-4626-acc6-e1dbca0685cd	2	boa system confartable	5	2025-06-01	neutral	0	neutral	0	google_play
7db66b6a-a044-43f1-a7ad-ea8a10815548	3	gadaa	5	2025-06-01	neutral	0	neutral	0	google_play
d7f07898-4ba1-47b4-9e8c-a3cc10b1bf0f	2	boa mobile good bank	5	2025-06-02	positive	0.4404	positive	0.7	google_play
765ff69f-5274-45c5-985b-81b8d01e1874	3	wow	5	2025-06-03	positive	0.5859	positive	0.1	google_play
10e85f30-540d-4810-ba89-85a7e004480b	2	exceptional	5	2025-06-03	neutral	0	positive	0.6666666666666666	google_play
3559b91c-fad9-4032-bebe-cf99974b9628	2	hello facing problem boa mobile every time enter phone number password crash show error say boamobile closed ha bug tried updating reinstalling clearing cache nothing worked please fix bug next really need access account thank	1	2025-06-03	negative	-0.5943	neutral	0.0333333333333333	google_play
937102c6-ae88-419c-994b-80e520faacb8	2	not working	3	2025-06-05	neutral	0	neutral	0	google_play
22818807-3368-446c-8a3b-d3ca2e07a2d8	3	love	3	2025-06-06	positive	0.6369	positive	0.5	google_play
6ab16d21-d2c8-4235-9c48-ff713bfde731	3	like mobile banking much overall user interface navigation awesome lack instant response someone deposit withdraw money	2	2025-06-07	positive	0.6486	positive	0.3333333333333333	google_play
a16adc73-80b5-48f5-bf4e-09c6272507b2	3	good	5	2025-06-09	positive	0.4404	positive	0.7	google_play
8cb388e3-6766-4f38-99d9-6f53198406dc	3	wow	5	2025-06-09	positive	0.5859	positive	0.1	google_play
6ec1267b-af3c-4d2b-8715-181e7f4c6282	2	worst human ever created	1	2025-06-09	negative	-0.4767	negative	-0.5	google_play
45d80ec5-3db4-4b45-af64-095a9fd0c355	2	best financial	5	2025-06-12	positive	0.6369	positive	0.5	google_play
d3dad0ad-6501-4d03-b2cf-2bd06fadb41a	3	simple user friendly thank dashen bank	5	2025-06-12	positive	0.6908	positive	0.1875	google_play
2cb6edea-61ec-4984-9ca2-fa0c3f47e755	3	wow	5	2025-06-12	positive	0.5859	positive	0.1	google_play
01f2460e-00ec-4071-910a-31ff89aac75f	2	good job	5	2025-06-13	positive	0.4404	positive	0.7	google_play
8884bd0e-7d44-4531-9bd2-9bae7286daa8	3	dashen bank choice	4	2025-06-13	neutral	0	neutral	0	google_play
6eede71d-d47c-4b19-8059-67f8de75da64	3	amazing application use bank transaction ethiopia friendly btw need ck account link lost mobile ver difficult link next one pls ck	5	2025-06-14	positive	0.5423	positive	0.11875	google_play
69e4a894-f54e-445c-bea3-815aee1e13b6	3	incredible	5	2025-06-14	neutral	0	positive	0.9	google_play
17d69fec-869c-4b31-8c50-2b1be45bc87f	3	perfect	4	2025-06-14	positive	0.5719	positive	1	google_play
c2655979-af64-4649-aa42-af100716ede0	2	good	1	2025-06-15	positive	0.4404	positive	0.7	google_play
effbeeb2-b89d-43e6-96b0-8e1a78c1175a	2	bad slow	1	2025-06-17	negative	-0.5423	negative	-0.4999999999999999	google_play
d681817c-c55c-498e-b918-531e5633a32c	3	nice transaction limet not enough	5	2025-06-17	positive	0.4215	positive	0.3	google_play
2da4265c-ec1c-4460-a1d2-5e23b5539034	2	excellent application	5	2025-06-18	positive	0.5719	positive	1	google_play
1e00ecba-4f0d-496c-98f2-5b356f05f356	3	would happy got withdraw system application otherwise everything fine	4	2025-06-18	positive	0.6705	positive	0.6083333333333334	google_play
0be730db-8738-4932-baf2-397fb0275aff	2	NaN	4	2025-06-21	neutral	0	neutral	0	google_play
296717a7-3fb9-404c-996d-186c803d3770	3	super	5	2025-06-21	positive	0.5994	positive	0.3333333333333333	google_play
f8b0d764-37b1-475e-bcda-03bd153eb20b	2	nice use	5	2025-06-21	positive	0.4215	positive	0.6	google_play
e4976dd0-7be3-4353-b6bd-5df3eb322f61	2	doe not start	1	2025-06-21	neutral	0	neutral	0	google_play
f93cefc5-8ed7-4927-8160-0e0ecf75866f	3	wow	5	2025-06-22	positive	0.5859	positive	0.1	google_play
b873c393-1bbb-4f8d-a640-d8434841943d	2	fantastic	5	2025-06-22	positive	0.5574	positive	0.4	google_play
8b9c0316-a505-4e36-b2c3-844d7b9d209d	2	uninterested not working developer mode not developer option preferred uninstall	1	2025-06-24	neutral	0	neutral	0	google_play
e5b31222-e583-4bf1-8079-67cf753b0504	3	nice limit max	5	2025-06-24	positive	0.4215	positive	0.6	google_play
f27a8118-3cab-43a4-a0c4-8d6e235d05cf	2	amazing bank	3	2025-06-25	positive	0.5859	positive	0.6000000000000001	google_play
dd461228-95a6-4efc-afe3-a86fb7f26945	2	goof	5	2025-06-25	neutral	0	neutral	0	google_play
84ef704f-9293-4fcb-a0fc-8a8dafd2d9ed	2	good fore	5	2025-06-25	positive	0.4404	positive	0.7	google_play
f8147000-27b4-418b-af0c-49cd8e39e40e	3	unpredictable not make transaction not even get otp going bad worse thank goodness amole dashen still exists	1	2025-06-25	negative	-0.2732	negative	-0.4222222222222222	google_play
6c3fd32c-9684-43bd-b270-c31094d7999a	3	ethiopian amazing dashen bank	3	2025-06-25	positive	0.5859	positive	0.6000000000000001	google_play
a7d4f4ce-1f61-4100-8f85-8db86c6cc1af	3	nice	5	2025-06-26	positive	0.4215	positive	0.6	google_play
7213dbd5-f192-45fd-96d1-3fc1db24759c	2	worst mba experienced crush frequently take long fix problem even week	1	2025-06-27	negative	-0.8126	neutral	-0.0374999999999999	google_play
ed52ec69-8f4d-400b-98fe-1b174f123f18	3	good	5	2025-06-27	positive	0.4404	positive	0.7	google_play
49a94407-511c-4ae6-9446-d027a00f5e8a	3	worst ever chance account deactivated doomed	1	2025-06-27	negative	-0.8074	negative	-1	google_play
d4d0941a-d073-4c5d-b5fb-352c6818ce1f	3	best	5	2025-06-29	positive	0.6369	positive	1	google_play
bc906d9b-9f75-4dae-a5bf-c5e2a17e8a6e	3	alway slow loading	1	2025-06-30	neutral	0	negative	-0.3	google_play
d713bd24-8fc6-48e4-ad53-aeafeda8babc	2	easy nice load previouse recent time loading problem detected	5	2025-07-01	positive	0.4588	positive	0.3444444444444444	google_play
8892853d-eb65-4c97-a859-2e848289f1a2	2	wow	5	2025-07-01	positive	0.5859	positive	0.1	google_play
95520951-566d-4ddb-bf19-a9ecf5b6e35a	2	nice easy use time crushed said error check device connectivity please fix	3	2025-07-02	positive	0.3612	positive	0.311111111111111	google_play
e57361d3-fa19-484c-869e-02d738a5280b	3	best best bank	5	2025-07-02	positive	0.8555	positive	1	google_play
31a7cae7-e838-4e64-bd2d-aeca8ff27d38	3	cannot list number bug pile human waste absolute worst banking ever used step backwards not recommend	1	2025-07-02	negative	-0.8493	negative	-0.25	google_play
77a4a188-287b-48cb-ae67-678cdc476af6	2	NaN	5	2025-07-03	neutral	0	neutral	0	google_play
5caae1bf-1a44-4370-8c45-19b8c0481d65	2	suck hell crash time take long time load	1	2025-07-03	negative	-0.8807	neutral	-0.05	google_play
285a819d-f45f-4f6f-a280-23588282f8b0	2	awasome go head	5	2025-07-04	neutral	0	neutral	0	google_play
2b882b18-b832-42fa-8d2a-fb4a47ddf456	2	nice	4	2025-07-04	positive	0.4215	positive	0.6	google_play
19a40996-9801-4ba3-957e-f37185c133b0	1	v good	5	2025-07-04	positive	0.4404	positive	0.7	google_play
8ff50357-495a-4f3f-bd08-1e7059db34df	1	developed simple way add notebook like save info bank account number	4	2025-07-04	positive	0.7184	neutral	0.05	google_play
0bb99b13-63b0-40bb-a4cb-880240e88617	1	samsung no government utility payment option please fix next	1	2025-07-05	neutral	0.0258	neutral	0	google_play
29e2e9bb-667f-4e9c-9e15-ec856de800aa	1	nice	4	2025-07-05	positive	0.4215	positive	0.6	google_play
9d9070a3-8b8a-43ca-b42a-d38023082c8e	1	good	5	2025-07-05	positive	0.4404	positive	0.7	google_play
c1d4abb8-1f2a-4312-b1e3-77ba088ecc3a	1	not work	1	2025-07-05	neutral	0	neutral	0	google_play
b44f2955-77d9-40a1-a175-f652cbe72dd9	1	basic could lot could not see month statement even	1	2025-07-06	neutral	0	neutral	0	google_play
afc36b9a-d733-46be-82e3-54b4db3a02bb	1	best mobile banking ethiopia	5	2025-07-06	positive	0.6369	positive	1	google_play
050d2902-10de-4d37-8d85-f463d4768e27	1	good bucket override not get	4	2025-07-06	positive	0.4404	positive	0.7	google_play
798dc288-eef0-4152-8385-d40041ca4049	1	best	5	2025-07-06	positive	0.6369	positive	1	google_play
aa23377c-3d61-4045-b061-96003d09d78b	2	meku	5	2025-07-07	neutral	0	neutral	0	google_play
31fa165f-796a-40b1-b69b-822a83c076b4	1	good	5	2025-07-07	positive	0.4404	positive	0.7	google_play
7b935e7e-f4e1-4798-bd2d-65b2212fcd22	1	poor even not sho balance transaction history	1	2025-07-07	negative	-0.4767	negative	-0.4	google_play
89236b70-315a-4edd-8251-ffb3ac581905	1	ok	5	2025-07-08	positive	0.296	positive	0.5	google_play
4d8220eb-b875-46f6-9012-5e914943630e	2	best	5	2025-07-08	positive	0.6369	positive	1	google_play
732c15a8-5b37-4e93-a446-42689b1604f5	3	entreated	5	2025-07-09	neutral	0	neutral	0	google_play
9d73e0f7-8bc9-4245-8505-3433938f0787	1	option mobile banking	5	2025-07-09	neutral	0	neutral	0	google_play
36849983-b29f-49d2-b385-f039a3a712dd	1	ok	5	2025-07-09	positive	0.296	positive	0.5	google_play
21a65f6a-5808-4a77-a341-a0230b3a6687	2	nice	5	2025-07-10	positive	0.4215	positive	0.6	google_play
96afa3ee-c11a-4dee-9a97-92e9014c4aa3	1	user friendly	4	2025-07-11	positive	0.4939	positive	0.375	google_play
fe2fcc2e-a065-4210-a48b-4ea4e93f383e	2	getting worse worse every	2	2025-07-11	negative	-0.7351	negative	-0.4	google_play
0e72c0f5-39bf-4036-932c-09f660b5ae14	3	nice	4	2025-07-11	positive	0.4215	positive	0.6	google_play
83babb88-d572-436d-8aa0-d97adadddc41	1	cbe mb best many feature time time impossible download statement possible please add statement download option ussd	2	2025-07-11	positive	0.7579	positive	0.2083333333333333	google_play
b17eae2f-260a-40f6-8ac0-c6a5abfa7cae	1	nice buy pay simple money transaction q cbe	5	2025-07-11	positive	0.34	positive	0.3	google_play
e2326c52-ed22-40f1-9c50-28e169d57f27	1	amzing q	5	2025-07-11	neutral	0	neutral	0	google_play
59818194-4c30-426e-a5a9-ad20b3401986	1	not transfer money telebirr	4	2025-07-12	neutral	0	neutral	0	google_play
13dded6f-03fb-4c04-9730-e14e4a2f130d	1	cbe mobile banking make u life easier	5	2025-07-12	positive	0.4215	neutral	0	google_play
f2774304-2650-4e10-8854-25fe8d6de09e	2	not working	1	2025-07-12	neutral	0	neutral	0	google_play
e4bba048-420d-42d5-aaea-19af2fdba990	1	not see old transaction bank like bank mobile example abissinya tele birr please feature	1	2025-07-12	positive	0.5859	positive	0.1	google_play
07cfb0f5-c335-4c65-a39d-4b5a2872a7cd	3	nice	5	2025-07-12	positive	0.4215	positive	0.6	google_play
92ae7564-4afb-4f5b-8f3c-5c4a2d22ac64	3	great application	5	2025-07-12	positive	0.6249	positive	0.8	google_play
79e5850b-a991-464e-a857-d9b2893cb295	3	😊😊😊	5	2025-07-12	neutral	0	neutral	0	google_play
815e6358-3c4f-412a-bcc0-d3cb4c568fa4	3	secure slower mobile banking lazy	2	2025-07-12	neutral	-0.0258	positive	0.075	google_play
b820b761-9c71-47bb-9fba-566f18ea294a	2	okay	4	2025-07-13	positive	0.2263	positive	0.5	google_play
203bd4d9-feda-4edd-b09b-40bc36bb84d8	3	good compared amole	5	2025-07-13	positive	0.4404	positive	0.7	google_play
18e6986d-10a0-4a6b-8ef3-17d506780619	1	okay	5	2025-07-13	positive	0.2263	positive	0.5	google_play
fc29df1f-0c69-40d6-a240-5b4e88ad84ae	2	great boa	5	2025-07-14	positive	0.6249	positive	0.8	google_play
0755d1bd-710e-4c3e-aced-9f51a8ef2798	3	worst ever seen	1	2025-07-14	negative	-0.6249	negative	-1	google_play
60b6f839-529a-4017-a74b-76699322f85a	2	good	5	2025-07-14	positive	0.4404	positive	0.7	google_play
66b8c002-46a8-4d54-aa18-2267d8bcb7fb	2	excellent	5	2025-07-14	positive	0.5719	positive	1	google_play
acd2393b-f275-4683-9a34-56facb3caa5d	1	excellent application user friendly nice one	5	2025-07-14	positive	0.8658	positive	0.6583333333333333	google_play
b3260ed7-5539-42d9-8d7c-a2c46485b857	1	love	5	2025-07-14	positive	0.6369	positive	0.5	google_play
d873516b-c682-44b6-8f2c-b80667b969f5	3	good application	5	2025-07-15	positive	0.4404	positive	0.7	google_play
6373e57b-b5af-4ede-8af7-09d4be752a57	3	excellent	5	2025-07-15	positive	0.5719	positive	1	google_play
3d3f4ba3-5509-46eb-8a33-3693d661bd8c	1	ebc not work unable connect server	1	2025-07-15	neutral	0	negative	-0.5	google_play
0f1bbc73-93dc-487e-a47c-bb737edb0322	2	good work	5	2025-07-15	positive	0.4404	positive	0.7	google_play
87443995-5d26-402b-be89-3e4ab5b32d34	2	NaN	5	2025-07-15	neutral	0	neutral	0	google_play
2da8f03e-39ec-424c-91e6-cf0d41ed8ca0	1	chala bodena	2	2025-07-15	neutral	0	neutral	0	google_play
8f19bff6-92a5-479c-b2c5-0a4d3a150093	3	best good job dashen bank	5	2025-07-16	positive	0.7964	positive	0.85	google_play
f0204617-22df-40be-b694-f82be6c12632	1	although ui simple easy use doe not mean anything information not consistent throughout service time also see forcing user turn android dev setting use unnecessary creates inconvenience user want use device android development certain security requirement would rather prefer restrict minsdk since recent android release secure	1	2025-07-16	positive	0.7269	positive	0.0848586309523809	google_play
5a2dabd1-7f1d-48aa-9642-0708718f8aef	1	difficult transfer account even settling tax obligation system error notification frequent	1	2025-07-16	negative	-0.6369	negative	-0.2	google_play
e833702b-bff9-47e7-b22e-fd16a9107ce5	1	simple use amazing	5	2025-07-17	positive	0.5859	positive	0.3	google_play
e33119c0-050d-48ae-82f8-8c9c98aa327e	1	best ever	5	2025-07-17	positive	0.6369	positive	1	google_play
0b47f9cc-3dd5-4c17-9fb5-12359384da50	1	good	4	2025-07-17	positive	0.4404	positive	0.7	google_play
cc6b5fd2-5a93-4b70-be29-3832b58315cb	1	like b fast clear secured thank	5	2025-07-17	positive	0.8519	positive	0.15	google_play
2b131440-f01a-468e-9314-095ae0b77601	2	excellent	5	2025-07-18	positive	0.5719	positive	1	google_play
517faf86-84fd-4c39-ba2b-ec41f2aac4cf	1	aazing	5	2025-07-18	neutral	0	neutral	0	google_play
e69237e3-643c-4d1e-af05-97ee542af522	1	okay	5	2025-07-18	positive	0.2263	positive	0.5	google_play
d36f4ada-d472-4d20-ba3b-66e0af78bc91	1	good need today	5	2025-07-18	positive	0.4404	positive	0.7	google_play
62754097-e521-4173-830a-00af820a29fe	1	wow	5	2025-07-18	positive	0.5859	positive	0.1	google_play
e258b9bf-cda7-4317-8abf-96db16863f9d	1	excellent	5	2025-07-19	positive	0.5719	positive	1	google_play
c756b8c4-42b8-4dc8-8eb2-17f64b1099f8	1	really excellent	5	2025-07-19	positive	0.6115	positive	1	google_play
b65bfd5d-b9fe-4a06-9753-a6d6dc2c9160	1	nice apk	5	2025-07-19	positive	0.4215	positive	0.6	google_play
a6c71862-00d9-491c-928d-f557a845da4a	2	no proplem	5	2025-07-20	negative	-0.296	neutral	0	google_play
1e2dd956-7a3a-4bea-9415-9554e45c4342	1	full restriction	1	2025-07-20	negative	-0.2732	positive	0.35	google_play
4e3ef9f2-7c38-485a-8ca9-8c27d2eb9335	1	best one	5	2025-07-20	positive	0.6369	positive	1	google_play
575a59ec-a85b-4c57-81b1-4cb965113910	1	good	5	2025-07-20	positive	0.4404	positive	0.7	google_play
9e1b746f-7797-42db-90fa-98c3e7a06dea	1	nice	5	2025-07-20	positive	0.4215	positive	0.6	google_play
7b870dd0-4b0c-4dac-92c6-095821da7ee2	1	cant screen shoot	1	2025-07-20	positive	0.2584	neutral	0	google_play
c07e4e23-ae8a-4452-865e-a40606fa580c	2	NaN	5	2025-07-20	neutral	0	neutral	0	google_play
ac66af69-7294-4963-b8f6-132b03778671	3	even first phase far one step booster enables user perform seamless banking service multi step security feature comfort zone really assured dashen bank living logo always one step ahead	5	2025-07-20	positive	0.7713	positive	0.1624999999999999	google_play
bf88bf92-4840-417a-a9df-82dfc73d20f5	3	fayla	5	2025-07-20	neutral	0	neutral	0	google_play
d2c1bfff-fc8e-47b9-a56a-6545f11cc76b	1	good job need see transaction history	4	2025-07-21	positive	0.4404	positive	0.7	google_play
7c796f6e-2c5e-4fc3-9877-9d6d6055e354	3	one super	5	2025-07-21	positive	0.5994	positive	0.3333333333333333	google_play
d17482ec-65b7-4cf1-bcad-aee54aafdf11	2	NaN	3	2025-07-21	neutral	0	neutral	0	google_play
1c7833fa-e49b-414f-bf7a-aed38fc870dd	1	good	5	2025-07-21	positive	0.4404	positive	0.7	google_play
f6484783-21a5-4d05-94fe-406b4d4f1161	1	best	5	2025-07-21	positive	0.6369	positive	1	google_play
c74e657e-0623-48bf-83ba-b59c75382515	1	excellent	5	2025-07-21	positive	0.5719	positive	1	google_play
38d65dc9-a542-4ad2-aa4e-22f8447e8bcb	1	good	5	2025-07-22	positive	0.4404	positive	0.7	google_play
e0842cfa-5bbb-4aba-85dd-6acce3218f5a	3	u need start cash service	4	2025-07-22	neutral	0	neutral	0	google_play
c1e53073-4361-4972-a6ad-1229b70ee90e	3	great always one step ahead reliable bank	5	2025-07-22	positive	0.6249	positive	0.8	google_play
842db1e6-54dd-4f30-8a5f-429ffbe3daa8	3	like	5	2025-07-22	positive	0.3612	neutral	0	google_play
71efa10f-9d3e-4372-a9fc-d27986d904bc	3	ok	5	2025-07-22	positive	0.296	positive	0.5	google_play
6713e22b-0222-4fd7-838a-9a2d46c59c3b	1	best	5	2025-07-23	positive	0.6369	positive	1	google_play
72dd0a8a-9d0e-42e8-8509-304b330f0177	3	not good compatible ethiopian bank not fast stack sometimes even day stop working	1	2025-07-23	negative	-0.5583	negative	-0.2249999999999999	google_play
1061e323-6ab2-4260-bff1-eda458d2ee72	3	amazing product	5	2025-07-23	positive	0.5859	positive	0.6000000000000001	google_play
94e809fb-94f8-4e0a-b3e8-1c4113c19f77	2	log	5	2025-07-23	neutral	0	neutral	0	google_play
77cbc374-82f2-49c1-9780-d78770150ce6	3	simple usage well designed attractive visual design always one step ahead	5	2025-07-24	positive	0.6124	positive	0.2666666666666666	google_play
2f093798-42f4-40fc-8927-27ac759e0843	1	best service make everything easy not download satisfied give five star deserves	5	2025-07-24	positive	0.6973	positive	0.6444444444444445	google_play
68381d56-6feb-40aa-aacc-30c05ff9fcf9	1	excellent	4	2025-07-24	positive	0.5719	positive	1	google_play
bd502a94-e136-4cee-bb6b-e0c51cc5c245	1	many thing u fix	1	2025-07-24	neutral	0	positive	0.5	google_play
fba3dc77-c9b1-4cfc-8afe-317b302b007c	1	great	5	2025-07-24	positive	0.6249	positive	0.8	google_play
d12f5fc4-9d9a-4f3d-b3e0-074f7b379f14	1	great	5	2025-07-24	positive	0.6249	positive	0.8	google_play
96ba479c-016d-49b8-8f04-b47f578e831e	1	thanks cbe	5	2025-07-25	positive	0.4404	positive	0.2	google_play
925590a7-bc1f-4814-8c18-c80ea235e39d	1	using service abroad active account ethiopia anytime want support family easily sent fund cbe bank using abroad debit visa credit transfer bank recommend diaspora open bank account whenever going back home help lot st easily send money abroad bank account ceb awash oromia bank whatever nd not need family withdraw money use privacy	5	2025-07-25	positive	0.946	positive	0.1466666666666666	google_play
d3d60ff9-51bf-4fe0-b2f8-b0059b92d347	1	v e r g	4	2025-07-25	neutral	0	neutral	0	google_play
59be8218-24d0-42be-8305-35850afc7a3a	1	commercial bank ethiopia helpful ethiopian people respect ethio consititution	5	2025-07-25	positive	0.7096	neutral	0	google_play
24b9381c-3cd8-431a-b3c9-bd156427585a	1	wow	5	2025-07-25	positive	0.5859	positive	0.1	google_play
b27ee212-10ec-499b-b36d-ff667d7b7085	2	nothing need install apk say date	5	2025-07-25	neutral	0	neutral	0	google_play
fa1192aa-8085-468e-838c-f70320b5a622	3	best	5	2025-07-25	positive	0.6369	positive	1	google_play
6a7da8ad-486f-4132-8eb9-aee1e55f7322	1	excellent	5	2025-07-25	positive	0.5719	positive	1	google_play
95f88408-b85a-42d8-abc9-95eb1b889920	3	wow	5	2025-07-26	positive	0.5859	positive	0.1	google_play
81c8a9c2-a849-433a-9a79-0112dc322fbc	1	best	5	2025-07-26	positive	0.6369	positive	1	google_play
53866760-ef49-4683-af03-f1525e54c067	1	best	5	2025-07-26	positive	0.6369	positive	1	google_play
7fdfce9f-03cf-4691-af15-a8eacea62dbf	1	mobeli bank	5	2025-07-27	neutral	0	neutral	0	google_play
3c38999b-bf71-43e9-8121-f0c588bae3cb	1	amazing use every time make payment	5	2025-07-27	positive	0.5859	positive	0.6000000000000001	google_play
5e5817ce-8960-4e99-9bae-3e9059357303	2	please not working	2	2025-07-27	positive	0.3182	neutral	0	google_play
8edd9f83-57c8-4aaf-9c54-845d97e601aa	2	waqayyoo	5	2025-07-28	neutral	0	neutral	0	google_play
e5bfa495-f4bf-4c66-a16c-b280dad5d5cc	1	time gold	5	2025-07-28	neutral	0	neutral	0	google_play
8371a275-5005-4ad5-a580-b1163d0d26b3	1	good	5	2025-07-28	positive	0.4404	positive	0.7	google_play
ab320d01-2772-4286-8aa0-9aceda879891	3	good	5	2025-07-28	positive	0.4404	positive	0.7	google_play
b003eaa2-fe35-476d-8d5b-e2913964f526	3	stop working time	2	2025-07-28	negative	-0.296	neutral	0	google_play
60a60f54-fce3-4678-b2a6-123c0d0a160e	3	smothely using last month somehow not working shall becames like open even not open u solution pls help kindly tnx	1	2025-07-28	positive	0.8082	positive	0.15	google_play
c0220fe4-74a4-4df9-9f70-bf480df83a54	3	network error	5	2025-07-29	negative	-0.4019	neutral	0	google_play
207adaf3-2705-486b-846e-1f95c4d7f049	2	best bank ethiopia	5	2025-07-29	positive	0.6369	positive	1	google_play
6f109a8e-e814-46fd-aa22-b74188bfae83	3	fast	5	2025-07-29	neutral	0	positive	0.2	google_play
a3673985-236a-4153-84a7-22a1afba3d36	3	good	5	2025-07-29	positive	0.4404	positive	0.7	google_play
6a8ad1a5-2043-4f70-b9a5-7593d3d3440c	3	ok	5	2025-07-29	positive	0.296	positive	0.5	google_play
ac9acf91-3777-4db6-8c23-3bd90cb9c83c	3	not working	5	2025-07-29	neutral	0	neutral	0	google_play
795799d5-d717-4296-a374-3e995a9eb06c	1	good	5	2025-07-29	positive	0.4404	positive	0.7	google_play
0ad44c43-0ed6-40af-b1c6-d353d3e8632a	1	ok	5	2025-07-29	positive	0.296	positive	0.5	google_play
bafdc5db-4126-413e-9806-6870f59638c3	1	thank	5	2025-07-30	positive	0.3612	neutral	0	google_play
709cbab6-f362-486c-b2cf-212062b30dfa	2	giod	5	2025-07-30	neutral	0	neutral	0	google_play
8d38033d-11a2-4362-ac42-159b98a1d790	1	good	5	2025-07-30	positive	0.4404	positive	0.7	google_play
748d2224-c653-44b1-90fd-ffadd6d72c83	1	freezing transfered money till time chose chose delivered bruh	1	2025-07-30	negative	-0.1027	neutral	0	google_play
487a7347-fb9d-4ba0-862b-341425f7124b	1	yase	5	2025-07-30	neutral	0	neutral	0	google_play
4edd76a8-56e1-4005-bd4f-50b664893944	1	NaN	5	2025-07-30	neutral	0	neutral	0	google_play
7f167954-2c13-40a1-9f56-dc125836d192	3	good	5	2025-07-30	positive	0.4404	positive	0.7	google_play
6df74cd0-b58b-472e-99f8-e437e64d98f3	2	worst mobile banking	1	2025-07-31	negative	-0.6249	negative	-1	google_play
94fd2d03-fd49-4241-baf1-b1cd44573b88	1	good	5	2025-07-31	positive	0.4404	positive	0.7	google_play
8855d0d8-19db-4113-b1fa-89731f0ed033	3	would likely rate even less doe perk part whole filled bug stop responsive almost everytime besides feature ui design definitely prefer old amole version either fix mess bring back amole	2	2025-08-01	positive	0.128	neutral	0.0447916666666666	google_play
2097ddd0-1596-48a5-8c9c-5981d82c9ac2	3	sometimes not working honest	1	2025-08-01	negative	-0.4023	positive	0.6	google_play
9e3f4803-a691-4c49-8120-71f3e04aee9b	3	ok	4	2025-08-01	positive	0.296	positive	0.5	google_play
cca2adad-988a-483b-84fa-8b2bb70d4805	1	NaN	5	2025-08-01	neutral	0	neutral	0	google_play
688c50ae-69e7-40bc-a655-23c2f1d54581	1	best one ever seen	5	2025-08-01	positive	0.6369	positive	1	google_play
b0c98076-f322-4b3a-aeed-3e0789e23cc4	1	good	5	2025-08-01	positive	0.4404	positive	0.7	google_play
f12f3056-b2af-4dc5-a4f8-077223308e30	1	sum good	5	2025-08-01	positive	0.4404	positive	0.7	google_play
a7eb5cbd-790a-4537-8278-ccaef158654b	2	crash repeatedly take century boot repeatedly requires annoying doe not ask password one step confirmation transferring money automatically stop music launched doe not really matter fyi overall worst mobile banking tried far not released bug issue	1	2025-08-02	negative	-0.906	negative	-0.36	google_play
94008602-5cb5-45bd-b2d3-e476b2ca6c70	3	best	5	2025-08-02	positive	0.6369	positive	1	google_play
f2e3aae7-a521-4111-80fc-04284186e9f0	1	best fast	5	2025-08-02	positive	0.6369	positive	0.6	google_play
b54ed906-d409-4107-9dba-3d91d4c04274	2	great	5	2025-08-02	positive	0.6249	positive	0.8	google_play
63c3ff9d-5f53-44f0-9d84-aca03a148742	1	nice	5	2025-08-02	positive	0.4215	positive	0.6	google_play
14a87d30-1e9e-46c3-b147-95d0f7404d26	1	screenshot problem must fixed	4	2025-08-02	negative	-0.4019	positive	0.1	google_play
f91928be-4045-41cb-bfb1-97abcaef0e95	1	easy use	5	2025-08-02	positive	0.4404	positive	0.4333333333333333	google_play
e6ec7d3b-beb3-40ac-a615-9a0bae85e39d	2	yes goode	5	2025-08-03	positive	0.4019	neutral	0	google_play
b44389db-6fd3-4204-b94d-c72f5b8def8b	1	good	5	2025-08-03	positive	0.4404	positive	0.7	google_play
f9c7331d-681d-4ddc-89fa-bde2d585e1d1	1	best application	5	2025-08-03	positive	0.6369	positive	1	google_play
0835849e-3794-409a-b454-a2bb8ded685f	1	ehiopian bank teach u lends beulds big infrastractures ehiopian country rigions local area basic need socity trend suport echother social participation promots society welbing coopratives development build suports private governmental institution give advise market analicies target develope country become world class economic leadership capitalist country atract big stakeholder woreld	5	2025-08-03	neutral	0	neutral	0.0333333333333333	google_play
249254a2-d2db-4dd5-b66f-865429329195	1	goood werk	5	2025-08-03	neutral	0	neutral	0	google_play
a215e2a9-13bb-4fe5-ac70-4a2717e28d73	1	worst could exist planet omg literally crash every month	1	2025-08-04	negative	-0.7783	negative	-1	google_play
de1014c4-ec42-4e5f-bcad-cdd6d7df293f	1	cbe	5	2025-08-04	neutral	0	neutral	0	google_play
85a6d591-f136-4041-bdab-74007ba4f7ae	1	good	5	2025-08-04	positive	0.4404	positive	0.7	google_play
76e38dc6-567b-4f5d-8860-71493d9e80be	1	ok	5	2025-08-04	positive	0.296	positive	0.5	google_play
597c9104-ffbe-43bd-84b2-3c0db9f1f644	1	nise	5	2025-08-04	neutral	0	neutral	0	google_play
bd1c5c40-544b-4e73-8947-a05471c47396	1	ok	1	2025-08-04	positive	0.296	positive	0.5	google_play
5c3d2d09-7797-4920-9879-12745a04a24b	1	commercial bank	5	2025-08-04	neutral	0	neutral	0	google_play
50c1c761-e2d8-4b5a-804c-20799f1552d2	1	nice	5	2025-08-04	positive	0.4215	positive	0.6	google_play
f5998ecc-6b4e-40c4-ae05-eb5e3cacfbf8	1	excellent	5	2025-08-04	positive	0.5719	positive	1	google_play
db43b3f3-f09b-41ea-98a3-02a31bc9c321	1	st one cbe	5	2025-08-04	neutral	0	neutral	0	google_play
2fbb6733-74d8-44bb-b9f2-8917c6a14d78	1	worst experience	1	2025-08-04	negative	-0.6249	negative	-1	google_play
929b3a55-66fb-4a90-a514-03ed7a1ea8dc	1	good	5	2025-08-04	positive	0.4404	positive	0.7	google_play
6e923bac-5ac7-4d3e-bd1c-137246d24a68	2	good	5	2025-08-05	positive	0.4404	positive	0.7	google_play
48bc5aef-c79b-4722-bbd7-51db5386cb3f	3	good	5	2025-08-05	positive	0.4404	positive	0.7	google_play
bdb2a8d8-735e-4c3b-a499-aea215d0261e	1	unexpected anomaly unreliable fintec	2	2025-08-05	neutral	0	positive	0.1	google_play
5d7681aa-993c-465d-a88b-99314b06d630	1	best one	5	2025-08-05	positive	0.6369	positive	1	google_play
f20f3b43-9df9-4149-b656-dae1b4bbde38	3	dashen bank super best	5	2025-08-05	positive	0.8442	positive	0.6666666666666666	google_play
35ac9e4d-24ce-46e3-9352-bf1bc9cc762e	1	awesome	5	2025-08-05	positive	0.6249	positive	1	google_play
13c69ca2-bb0c-444a-9f15-82560979ebac	3	good	1	2025-08-06	positive	0.4404	positive	0.7	google_play
b4eb75b1-57bf-48c7-8cf1-a9630858780e	1	good	4	2025-08-06	positive	0.4404	positive	0.7	google_play
248af9c3-6f3e-449c-b461-02f7eb73f065	1	useful use world	5	2025-08-07	positive	0.4404	positive	0.3	google_play
1fe734ce-edc7-43ea-af25-4f0dd9ef09ea	3	slowest banking ever used	3	2025-08-07	neutral	0	neutral	0	google_play
d06a71b2-105b-44fd-a21b-6c23fe7957e6	3	poor glitch stack	1	2025-08-07	negative	-0.4767	negative	-0.4	google_play
30c8364c-d451-4cd7-a142-b6787d7c9a38	1	best servis	4	2025-08-07	positive	0.6369	positive	1	google_play
1713f885-f24a-43a4-9d1e-330e79fb2583	1	NaN	5	2025-08-07	neutral	0	neutral	0	google_play
9a34c5b9-63c7-48de-9fde-f1a4d60a9e0b	1	good block screen shoot	5	2025-08-07	negative	-0.34	positive	0.7	google_play
8ae89018-ca57-41be-b08b-7b76917579b7	1	good	5	2025-08-07	positive	0.4404	positive	0.7	google_play
b6ff8342-c1fe-4b40-a834-c9b51efcc476	1	disgusting	1	2025-08-07	negative	-0.5267	negative	-1	google_play
30e1c401-c37b-48d8-b4f1-d6eaf21fd0ad	1	ok	5	2025-08-07	positive	0.296	positive	0.5	google_play
ee630856-6a3b-44ba-8cfa-28569e39396c	1	good add please	3	2025-08-08	positive	0.6369	positive	0.7	google_play
72f6b776-58cf-4c65-a154-01fe0ab5873e	1	best transferring ap	5	2025-08-08	positive	0.6369	positive	1	google_play
aefe5a77-71f4-4efa-92e6-b4a1b4a48e9e	2	abseniya bank	5	2025-08-08	neutral	0	neutral	0	google_play
6dd324c1-79ef-4935-9c87-ad0fd8fd1635	2	not working redminote pro pls fix	1	2025-08-08	positive	0.0772	neutral	0	google_play
43612140-e7b5-43b7-9b04-4247bb2f8d37	3	tried open downloading something big gb gb size hour late open experience worst not lite not work every situation network	1	2025-08-08	negative	-0.6249	negative	-0.26	google_play
9cdf7073-238a-4e6e-bbd7-c3fae6b153c0	3	modern perfect interface best banking tool	5	2025-08-09	positive	0.836	positive	0.7333333333333334	google_play
2d8fd56b-273f-4f3e-8419-57cccf1d576f	1	good	5	2025-08-09	positive	0.4404	positive	0.7	google_play
1c6617db-0a31-4584-b6db-a59321e1dd97	1	good	5	2025-08-09	positive	0.4404	positive	0.7	google_play
5e829d04-b46a-4071-b828-5a9929ebabbb	1	nice	5	2025-08-09	positive	0.4215	positive	0.6	google_play
22d77391-5cb2-468d-89c3-060ef509a02d	1	good	5	2025-08-09	positive	0.4404	positive	0.7	google_play
12f1b2e7-a170-4dde-becb-a03f4358a3ab	1	good time saving accurate	5	2025-08-09	positive	0.4404	positive	0.55	google_play
79a8ef7b-0840-4a75-9603-24e490b2d6dc	1	like order atm card get	5	2025-08-09	positive	0.3612	neutral	0	google_play
39c78b45-1c71-42e0-8860-748868ad8126	1	bad	1	2025-08-09	negative	-0.5423	negative	-0.6999999999999998	google_play
5ccebb40-4078-4fa4-9e80-6dd813fd4cc9	3	improve please not working say response timeout	1	2025-08-10	positive	0.6369	neutral	0	google_play
bffe6663-e88f-4a08-97bc-e6ea6b2d8227	2	keep freezing front page	1	2025-08-10	negative	-0.1027	neutral	0	google_play
130d07ff-fc0a-46b2-bd2b-ef95a8263715	1	interesting	5	2025-08-10	positive	0.4019	positive	0.5	google_play
c203e43b-8a24-4c4c-9d43-199b00a0d93e	1	😂	5	2025-08-10	neutral	0	neutral	0	google_play
03bb356b-c24c-4cd6-bcc7-cf307dd0bf9c	1	good	5	2025-08-11	positive	0.4404	positive	0.7	google_play
da386798-3db3-4e83-96b1-1444618f9e9b	3	good	5	2025-08-11	positive	0.4404	positive	0.7	google_play
d8c66621-f3f9-4b44-b0dd-c99540822483	1	good	5	2025-08-11	positive	0.4404	positive	0.7	google_play
baa88e99-cfcf-4593-98f6-4442a8dbdb59	3	boring mobile banking not work properly slow	1	2025-08-11	negative	-0.3182	negative	-0.65	google_play
a6f71299-f3de-4b27-87ea-439b907310ed	3	favorite	5	2025-08-11	positive	0.4588	positive	0.5	google_play
85e4c4a0-6848-4438-873c-e087d879c707	3	good	5	2025-08-11	positive	0.4404	positive	0.7	google_play
f29c1aa0-ccaf-471c-9800-72cd13b8c633	1	nice	5	2025-08-12	positive	0.4215	positive	0.6	google_play
41008be3-1c2f-401b-b10a-e023abb2b045	1	cbe noor	2	2025-08-12	neutral	0	neutral	0	google_play
45087a42-9207-475d-8300-08b9e6ec0cb4	1	nice	5	2025-08-12	positive	0.4215	positive	0.6	google_play
6c906764-3ffd-4d50-a656-e2ea31308863	3	good	3	2025-08-12	positive	0.4404	positive	0.7	google_play
e63aa85d-85a4-46d0-9b4e-b3048c3c0c02	3	good job dashen super	5	2025-08-12	positive	0.7783	positive	0.5166666666666666	google_play
f3a2435b-8838-4f8a-bdf3-0680c781910e	3	connection issue	3	2025-08-12	neutral	0	neutral	0	google_play
50d7c55a-ebec-487d-ba90-f2f0b4157985	3	verry slow	1	2025-08-12	neutral	0	negative	-0.3	google_play
529e9d57-e66b-47b4-b192-84ad4e0fb926	3	best bauget	5	2025-08-12	positive	0.6369	positive	1	google_play
540df881-caea-49cb-b1df-36bfa72431fe	3	good said uptede	2	2025-08-12	positive	0.4404	positive	0.7	google_play
a836f1cf-7d6f-4fd7-95bc-51e98e4c1fc5	3	network issue	1	2025-08-12	neutral	0	neutral	0	google_play
8a547287-a69b-455f-97b8-7fd10f241050	1	time either not work	2	2025-08-12	neutral	0	neutral	0	google_play
513294b2-05fa-4b48-96cd-edb0686d5e0e	3	nice	5	2025-08-12	positive	0.4215	positive	0.6	google_play
e30a316a-b1c9-4c1a-b8f1-c1e296d82cb5	3	best performing fast financial	5	2025-08-12	positive	0.6369	positive	0.3999999999999999	google_play
17fac6e4-55d0-48dc-8fd1-e3908c6e6689	2	not fast	2	2025-08-12	neutral	0	negative	-0.1	google_play
4ecb3d50-0100-433b-aa75-9b1647556733	3	good	5	2025-08-12	positive	0.4404	positive	0.7	google_play
493a4d91-6ef5-44e4-94d6-4f578ace1433	1	logging device not connected internet appropriate isnt exposed hucking malicious activity	1	2025-08-12	positive	0.0572	positive	0.5	google_play
70a02f56-e75d-448d-b71c-7afbd1eba779	3	well done keep	5	2025-08-12	positive	0.2732	neutral	0	google_play
15e7f782-ce40-4927-a035-f0f73b2b5631	3	good take forever load	3	2025-08-12	positive	0.4404	positive	0.7	google_play
ceb1f402-8c82-477a-bf14-1476bc359e7d	3	good thing need improved speed receipt view competitive company country e cbe telebirr	4	2025-08-12	positive	0.7717	positive	0.7	google_play
3d68acad-fda9-4d1f-9005-cca2a0c612f6	3	fast easy use great	5	2025-08-12	positive	0.7906	positive	0.4777777777777778	google_play
2a18b376-d91c-40ee-8112-61a316b16f58	3	good	3	2025-08-13	positive	0.4404	positive	0.7	google_play
983a06c5-49c5-4977-9942-e97ae8ff14bc	3	excellent	5	2025-08-13	positive	0.5719	positive	1	google_play
f9f852e3-ccc8-4a18-b650-7f69acb33c99	3	best ever seen dashen bank always one step head	5	2025-08-13	positive	0.6369	positive	1	google_play
54bb2554-1f4e-495f-9208-7cbd2c4a618c	1	apk best people	5	2025-08-13	positive	0.6369	positive	1	google_play
56497937-ddb0-4d03-ad47-0e3d2f1f8c66	3	poor time taking use	1	2025-08-13	negative	-0.4767	negative	-0.4	google_play
43741a50-5047-44c0-9858-7a3a52a4a533	3	ok	5	2025-08-13	positive	0.296	positive	0.5	google_play
cd82c60a-b6e5-41e2-a058-906f16326ad6	3	ok	5	2025-08-13	positive	0.296	positive	0.5	google_play
78b34395-2a88-431a-ade9-ee4e2aa522a4	1	good keep	5	2025-08-13	positive	0.4404	positive	0.7	google_play
e2db003a-f02a-462f-99e2-3bfc2054a442	3	low quality slow application unreliable time need	1	2025-08-13	negative	-0.2732	negative	-0.15	google_play
10555b11-1ec4-47e8-991d-eded9941e7e4	3	great	5	2025-08-13	positive	0.6249	positive	0.8	google_play
04b0d391-1cb4-49e3-b18e-b9e24ab9391b	3	version good like	5	2025-08-13	positive	0.6597	positive	0.7	google_play
dc8432b9-7fd6-4ada-9ca6-b632467fcf15	3	wa easy enough not even open pls help possible email address provided support also not found gmail pls respond	3	2025-08-14	positive	0.7818	positive	0.1083333333333333	google_play
35fc8b13-0a39-4237-b28d-39904b57f125	3	good	5	2025-08-14	positive	0.4404	positive	0.7	google_play
069eb4b6-e778-4b5c-b6bd-1e5dea63844e	3	best	5	2025-08-14	positive	0.6369	positive	1	google_play
5faab1f6-f8f4-4913-9ae1-ec4ea6c5736a	1	nice	3	2025-08-14	positive	0.4215	positive	0.6	google_play
17d27fe8-201d-465e-900c-4510058bd581	2	thank	5	2025-08-14	positive	0.3612	neutral	0	google_play
3e485515-99df-4aac-9609-17d3e1cc5ea4	1	ohhhh must upgrade transferring problem time transfer cbe mobile banking tele birr account always suspending day please try fix	2	2025-08-14	negative	-0.1027	neutral	0	google_play
e78bae17-ead8-4376-98d9-b9c6f966094e	1	not think compatible android version fails open please find solution	1	2025-08-14	positive	0.2023	negative	-0.25	google_play
161dbde7-f447-412e-abf3-8ae5e7ba5012	2	best mobile country	5	2025-08-14	positive	0.6369	positive	1	google_play
5043e566-8cbc-4384-9382-8d929065614e	3	plenty feature missed e g electricity bill water bill payment	2	2025-08-14	negative	-0.296	neutral	0	google_play
2f7f02c0-8c37-48a2-880d-da85a2945e1c	3	still essay user	4	2025-08-15	neutral	0	neutral	0	google_play
77f5b29c-a280-491e-a189-9294bb1dcc4b	3	one step forward ethiopian bank e commerce industry	5	2025-08-15	neutral	0	neutral	0	google_play
dc9bba76-9134-4fd4-927e-3a0480628f7b	3	great unfortunately struggle use outside ethiopia tell vpn enabled please disable vpn continue using happening without vpn enabled think need switch back cbe need access bank account globally	1	2025-08-15	positive	0.4019	positive	0.06	google_play
cd3d7bda-43cf-46f8-bd12-065f026e2ba2	2	worst ever exist bank history	1	2025-08-15	negative	-0.6249	negative	-1	google_play
e080468a-5b05-476e-9275-923d859a7b98	2	best	5	2025-08-15	positive	0.6369	positive	1	google_play
ac500ef1-8d40-4c19-b862-c5f47b165e97	2	almost never boot even crash immediately	1	2025-08-15	positive	0.3089	neutral	0	google_play
8151dac5-6706-4c18-b538-5c3882c8b679	3	best ussd necessary	5	2025-08-15	positive	0.6369	positive	0.5	google_play
fb38c9e7-db55-436e-950d-44af1d6c6d3c	1	congra ethio	5	2025-08-15	neutral	0	neutral	0	google_play
656865bb-7ee3-4fef-9f23-b6728b2b6ab9	2	nice mobile banking favourite	5	2025-08-16	positive	0.4215	positive	0.6	google_play
7f13440c-cd7b-416c-9ec0-04afa4de3574	3	good	5	2025-08-16	positive	0.4404	positive	0.7	google_play
f00fad5e-14d3-4726-9a82-7655a15a86f4	3	worst banking ethiopia force change pin every three month	1	2025-08-16	negative	-0.6249	negative	-1	google_play
72f788cf-857a-4b95-8aa8-4086764ddf5d	3	totally work failure personally prefer dashen amole instead super dull	1	2025-08-16	negative	-0.3353	negative	-0.055	google_play
ec30627f-c9a0-48f6-8fd2-38fcae3ab112	2	bank u least hire someone good job bc joke nowadays not even log even transfer without crashing u fix review counting u boa atleast fixed suggestion u put password final step sending money feel secure way	4	2025-08-17	positive	0.7579	positive	0.18	google_play
0ba55f35-eedd-4c74-a676-e651cf7bc461	1	good	5	2025-08-17	positive	0.4404	positive	0.7	google_play
7b9453f4-c7a8-411f-9931-670883aab3f7	1	good	5	2025-08-17	positive	0.4404	positive	0.7	google_play
6ee89fcd-d75e-4845-9338-962d8760dc4f	3	easy use best one	5	2025-08-17	positive	0.7964	positive	0.7166666666666667	google_play
ba4212f3-0ddf-48ab-8bf4-568a7ad27b23	1	adisi deti	5	2025-08-17	neutral	0	neutral	0	google_play
c6e19555-0ae1-438d-bb5a-18930946401f	1	good bank ethiopian nic	5	2025-08-18	positive	0.4404	positive	0.7	google_play
2ed460c6-1ab9-4d94-b3e8-90444e85e280	1	good screenshot must enable	4	2025-08-18	positive	0.4404	positive	0.7	google_play
b373eb6d-604a-4080-977c-52dd88461aae	1	good	4	2025-08-18	positive	0.4404	positive	0.7	google_play
6b7e8320-ba59-4491-8527-e5505887fda7	1	best	5	2025-08-18	positive	0.6369	positive	1	google_play
8093223f-be95-4c78-ac97-04fc6e01fb4e	1	change mobile banking cbe	5	2025-08-18	neutral	0	neutral	0	google_play
cf02d092-27cc-4b99-ab5e-35aba79bc01a	1	process updating not functioning easily installing easy updating screenshot not prevented instant evidence needed transaction	2	2025-08-18	positive	0.1999	positive	0.2888888888888889	google_play
bc8bfdb0-596e-4ed3-a07d-c3ac71061fee	2	unlimited experience	5	2025-08-18	neutral	0	neutral	0	google_play
c9cc8b5a-f0aa-437a-8e5c-99035cad23da	2	besat	5	2025-08-19	neutral	0	neutral	0	google_play
f9fe94b1-daee-48c5-a9ff-158624c96973	1	best feature	5	2025-08-19	positive	0.6369	positive	1	google_play
5f2ee185-7529-49ab-9753-882a696506af	1	recognized thank	5	2025-08-19	positive	0.3612	neutral	0	google_play
7d7e794d-b9f0-48c8-96c5-3f4be30208f4	1	good	5	2025-08-19	positive	0.4404	positive	0.7	google_play
70eb043a-93c1-497b-aaf8-a16f85aa8bd3	1	good	1	2025-08-19	positive	0.4404	positive	0.7	google_play
75e5a913-5818-49c7-89ea-ac8bb7912218	1	good	5	2025-08-19	positive	0.4404	positive	0.7	google_play
344a9a6b-4909-4adb-a656-3785b1225031	1	saved account totally removed	1	2025-08-19	positive	0.4215	neutral	0	google_play
7bbcd5a7-571c-4dc9-8905-b5f70b8755cc	1	ke gizew ga emihed astemamagn metegberya	1	2025-08-20	neutral	0	neutral	0	google_play
8a5e1510-bc3f-4f70-8915-f79a839f041e	2	excellent	5	2025-08-20	positive	0.5719	positive	1	google_play
e078dd0e-0334-4950-b846-c450ddcfd110	3	great	5	2025-08-20	positive	0.6249	positive	0.8	google_play
f68a700f-5b0f-4863-85d1-c47d70fcc0ed	3	nic	5	2025-08-20	neutral	0	neutral	0	google_play
f83d32f4-7158-4319-935c-c1737ec57f2b	1	unable connect pls improve system	5	2025-08-20	positive	0.4939	negative	-0.5	google_play
5a7fb26b-0715-4f9f-900c-a8275e9ab073	1	well	5	2025-08-20	positive	0.2732	neutral	0	google_play
e5b8ce29-2766-4fbc-935a-7a45e4471edd	1	pretty good recent one wa nicest however restricts taking screenshot would happy remove screenshots restriction policy gave five star wa past performance keep mind remove screenshot restriction policy also ha no self authorization uninstalled need extra sim card want visit nearby bank person	5	2025-08-20	positive	0.8402	positive	0.25	google_play
79bb5e1b-ef89-4c75-8b19-ea9d9b558b1a	1	perfect keep	5	2025-08-20	positive	0.5719	positive	1	google_play
61c6d24e-e112-4e4e-aa56-91fe3934b642	1	smart service service charge high	5	2025-08-20	positive	0.4019	positive	0.1871428571428571	google_play
c53d43fa-8f55-4e83-b703-f723a8c18b43	1	nice	5	2025-08-20	positive	0.4215	positive	0.6	google_play
08d7ae65-f9e5-4c34-a3a9-e0f8f5e3f790	1	excellent plus	5	2025-08-20	positive	0.5719	positive	1	google_play
f24f4a58-3ee1-41ef-8679-b440ac645b06	1	would great display service fee proceeding transaction	4	2025-08-20	positive	0.6249	positive	0.8	google_play
5811a3bc-9cc2-4257-ad19-7c10a898320e	1	disappointing	1	2025-08-20	negative	-0.4939	negative	-0.6	google_play
259f842f-d1f5-4cd6-8a1d-f142a59521de	1	nice never usedyet	4	2025-08-20	positive	0.4215	positive	0.6	google_play
a926fb85-cd65-4575-ae82-ca6b01b23144	1	excellent	5	2025-08-20	positive	0.5719	positive	1	google_play
734f9b17-80c8-43dd-939b-64a1503b086c	1	ok	5	2025-08-20	positive	0.296	positive	0.5	google_play
60aeb5ba-554b-40b3-9086-c75fe10acdbc	1	send money account not reserved ball	5	2025-08-20	neutral	0	neutral	0	google_play
d41dd3e3-b09b-4d1f-a5a2-0caa9f430e37	3	dashen super contains extended selection customer easily accessible also friendly use	2	2025-08-21	positive	0.8591	positive	0.3611111111111111	google_play
7f435d3b-9642-4a2f-926b-154566d059c1	1	guy charge way much transfer money cbe telebirr via	3	2025-08-21	neutral	0	positive	0.2	google_play
e8f1f990-0f6a-435e-a8a2-8071e632f872	1	good	5	2025-08-21	positive	0.4404	positive	0.7	google_play
3db9d8c2-8158-4421-81ed-4cac6afd7105	1	every major mean go back ethiopia make work	2	2025-08-21	neutral	0	negative	-0.0833333333333333	google_play
70edc12f-a86f-4df6-8894-e7718f60d16a	1	helpful	5	2025-08-21	positive	0.4215	neutral	0	google_play
58db1bb3-d705-4f46-ac0d-5d4144e382c9	1	best mobile banking seen	5	2025-08-21	positive	0.6369	positive	1	google_play
8c8acdfb-ec73-44fb-aba6-9ca4eb2ce21a	1	yes good saving marketing system go ethiopia go	5	2025-08-21	positive	0.6808	positive	0.7	google_play
3fdef981-acee-49f8-855c-8a46b0804472	1	ok	5	2025-08-21	positive	0.296	positive	0.5	google_play
8befe147-8e8c-4072-b013-f293afd76f7c	1	not bad apk	1	2025-08-21	positive	0.431	positive	0.3499999999999999	google_play
6e467e77-c7b7-4324-bb9f-4c2790968986	1	every time history previous account number keep missing	1	2025-08-21	negative	-0.2263	negative	-0.1833333333333333	google_play
a2924856-3267-4ed3-a316-ccf049230f01	3	seche	1	2025-08-22	neutral	0	neutral	0	google_play
a78233bc-ff1d-45d7-a4bb-1d5a8d16fc69	3	bank	5	2025-08-22	neutral	0	neutral	0	google_play
ad7315bd-61bc-48bb-b21f-4e645373dced	3	good well	5	2025-08-22	positive	0.6124	positive	0.7	google_play
33152296-977d-48d2-9482-e074f88516e9	3	fast bank	5	2025-08-22	neutral	0	positive	0.2	google_play
6474a971-6e4e-4b4e-b9c2-9afa21954cc7	3	not access super not even access service need big failure	1	2025-08-22	negative	-0.754	neutral	0.0055555555555555	google_play
30e7d101-ec31-4ff7-9c82-dbc90e26bd1c	1	good	5	2025-08-22	positive	0.4404	positive	0.7	google_play
7b8f021c-6d11-4a06-8c68-37062d975778	1	love really downside screenshot mandatory every transaction need screenshots not downloaded recipient would even transaction history available via month access directly via calender way thanks	4	2025-08-22	positive	0.7484	positive	0.28	google_play
33e4b877-20cd-4f22-a1ef-665e34bc37c3	1	one best	5	2025-08-22	positive	0.6369	positive	1	google_play
bed1e8b6-e466-4047-9b5b-d7df6228a4ff	1	nice simple convenient one comment double verification finger print even thought good makin secure not neccessary double verify finger print verification no need verify pin thank	5	2025-08-22	positive	0.8126	positive	0.2833333333333332	google_play
896b897b-2429-439a-bc84-7e81771a5678	1	want	5	2025-08-22	positive	0.0772	neutral	0	google_play
651c86bc-2cf3-436e-a85c-39c55709db15	1	use commercial bank ethiopia mobile fantastic interface user friendly making easy check balance transfer money love bill payment feature security measure give peace mind overall reliable ha simplified banking experience highly recommend	5	2025-08-22	positive	0.975	positive	0.2669047619047619	google_play
ac8bb25c-799d-4bf7-ba2e-0639c394cd1e	1	good always try make updats	5	2025-08-22	positive	0.4404	positive	0.7	google_play
c0516bea-96dd-4081-8a64-fb0da5ecef9d	1	good	5	2025-08-22	positive	0.4404	positive	0.7	google_play
72d0267a-a849-4001-8d09-4ecf484e18c6	1	good	5	2025-08-22	positive	0.4404	positive	0.7	google_play
d6f823aa-5c56-4a24-8fe8-195d4d05435a	1	NaN	5	2025-08-22	neutral	0	neutral	0	google_play
bc870613-68a0-4779-b906-1147e7eecdaa	1	thise great	5	2025-08-22	positive	0.6249	positive	0.8	google_play
e09cd140-b7c6-4789-95f9-6c9af4ecdd64	1	bugged not view name account holder previously transaction recently almost impossible load money telebirr always say unable connect please fix asap	1	2025-08-22	positive	0.3182	negative	-0.3333333333333333	google_play
5d11896c-8449-47d3-8835-f6a61f00f6c9	1	application excellent	5	2025-08-22	positive	0.5719	positive	1	google_play
c2331cd2-6810-4343-80bf-09025a955bf3	1	application not show transaction history	3	2025-08-23	neutral	0	neutral	0	google_play
a9add8b7-238f-4b1e-8879-2fa4000b4800	1	nice statment history shiort atlist add day	4	2025-08-23	positive	0.4215	positive	0.6	google_play
5c75cede-87d5-4659-852f-2780b4549909	1	not like service fee highl	5	2025-08-23	negative	-0.2755	neutral	0	google_play
fb43046a-7c62-4497-bfcc-2e97f9014aa4	1	best secured application	5	2025-08-23	positive	0.7845	positive	1	google_play
57b15473-6128-4208-8a19-a6b9e78533c8	3	nice	5	2025-08-23	positive	0.4215	positive	0.6	google_play
ee52ec44-d6c1-4ea9-ab62-527d87ecb202	1	stooped working say change password doe not open password not like	1	2025-08-23	negative	-0.2755	neutral	0	google_play
9c1fdad9-3c31-4a27-af4f-44020899032b	1	good	5	2025-08-23	positive	0.4404	positive	0.7	google_play
e7ec2452-9500-4536-a627-721ce846e948	3	nice	4	2025-08-23	positive	0.4215	positive	0.6	google_play
76455446-df2d-40fe-bccc-f4439d0f2902	1	transferring money telebirr not working	1	2025-08-23	neutral	0	neutral	0	google_play
07631370-ea19-456d-b7cc-d248d21e118c	1	list transaction not load month year	1	2025-08-23	neutral	0	neutral	0	google_play
708d6d27-0ccc-4118-8346-116cf3e7a8ac	1	doe not work unless data doe not refresh fast wise function ok transferring telebirr not working	2	2025-08-23	negative	-0.091	positive	0.4666666666666666	google_play
18a4264d-fa84-446e-b31c-6282945e1e9b	1	best easy use	5	2025-08-23	positive	0.7964	positive	0.7166666666666667	google_play
e5e7f832-6759-4005-9df6-5f8d6b354551	1	ha issue recently not able send fund telebirr wallet also need place save contact usually send money keep loosing important account	4	2025-08-23	positive	0.7506	neutral	-0.0333333333333333	google_play
9affdd8b-c3c9-4159-b205-8caed4ae8222	1	good	4	2025-08-23	positive	0.4404	positive	0.7	google_play
9a805c99-c354-4f71-95f5-5369e00ff08d	1	like aprshat	4	2025-08-23	positive	0.3612	neutral	0	google_play
c859d065-d2cd-4c3d-bac1-f8ee0d9b8f18	3	excellent mobile banking digital	5	2025-08-24	positive	0.5719	positive	0.5	google_play
ec02c716-33d0-414d-889f-a8441084133c	1	one worst mobile banking ethiopia not access txn record week	1	2025-08-24	negative	-0.6249	negative	-1	google_play
92f1029b-41d6-4af2-9620-61ad21843f4a	3	excellent truly super	5	2025-08-24	positive	0.8885	positive	0.6666666666666666	google_play
48f385f9-d5e2-4b12-9ff9-64fe2a1314c2	1	doe say change pin digit right	4	2025-08-24	neutral	0	positive	0.2857142857142857	google_play
dcfb2ed9-5403-4db4-9ee4-f90b9062c98c	1	good one	5	2025-08-24	positive	0.4404	positive	0.7	google_play
abb3b6f4-ed3d-4013-b997-0efb664037a5	2	one best business	5	2025-08-25	positive	0.6369	positive	1	google_play
f83ab0c0-15e8-49f6-89d8-509a97a95cb4	1	muktaar abraahim	5	2025-08-25	neutral	0	neutral	0	google_play
ced10404-2e90-49cf-92ee-ec1681e551d1	1	thank	5	2025-08-25	positive	0.3612	neutral	0	google_play
fcce0c59-52e3-41a9-9e60-96f390a64a05	1	nice	5	2025-08-25	positive	0.4215	positive	0.6	google_play
e2a39fc2-f1fc-4d9b-be49-c4659f34e6da	1	forgotten mobail banking password	5	2025-08-25	negative	-0.2263	neutral	0	google_play
51a7e5ea-5711-424e-87ab-0d4fd5481ee5	1	connection bank lag relationship must corrected	4	2025-08-25	negative	-0.34	neutral	0	google_play
f4f41d65-e12f-46ac-ba8c-1037c95e825a	3	shimalis	4	2025-08-25	neutral	0	neutral	0	google_play
ebcbfbc0-5c66-4050-a60c-3b50478ce3c1	3	excellent	5	2025-08-26	positive	0.5719	positive	1	google_play
3e8a43b7-e4a5-4ba0-850e-332a7dad3a24	2	ha issue installation think doe not work tecno common	1	2025-08-26	positive	0.34	negative	-0.3	google_play
c4bedc54-94d2-4e0e-99af-ed3b64046b50	1	happy	5	2025-08-26	positive	0.5719	positive	0.8	google_play
5c7993e8-6748-4331-8691-893fcde0d2d3	1	excellent	5	2025-08-26	positive	0.5719	positive	1	google_play
0b7c0ba6-d0fc-4b61-9c40-d50ba113907f	1	still not face critical problem sometimes delay open	4	2025-08-26	positive	0.2311	neutral	0	google_play
a8ea0b5f-0dab-4a8e-b009-8840dab30894	1	good	5	2025-08-26	positive	0.4404	positive	0.7	google_play
517f1216-a882-4a83-a843-91698acffa48	1	smart	5	2025-08-26	positive	0.4019	positive	0.2142857142857142	google_play
c46a07c1-f9a3-4af2-b6a5-85628e0146cd	1	great mobile banking application thanks system customization department	5	2025-08-26	positive	0.7906	positive	0.5	google_play
0141e976-39c0-4a31-9889-11d3d1a5e697	1	yes v good	5	2025-08-26	positive	0.6808	positive	0.7	google_play
a6e4d127-2d07-4111-bc46-d14e4cfa81b5	1	love	5	2025-08-26	positive	0.6369	positive	0.5	google_play
0d273ca9-cf52-49f9-b5ae-ddebce86ad8f	1	amizing	5	2025-08-26	neutral	0	neutral	0	google_play
2f509fd7-9ee2-4d2d-b74c-49de73f30032	1	good	5	2025-08-27	positive	0.4404	positive	0.7	google_play
eaef87d7-6f8c-46ad-acd9-89f122fb98aa	1	next come night mode future	5	2025-08-27	neutral	0	neutral	0	google_play
d43ab2b9-3b6c-473b-a8db-59f171fab8b7	1	truly super competitive compared well known nowadays functioning broadly simplest feature mean namely known telebirr super thus cbe top ultimate choice prefer bank due beautiful power lead result could recommend cbe others service provision via ethical principle practice customer satisfaction existence constraint challenge face burglary froudalent hacker thank	5	2025-08-27	positive	0.9829	positive	0.2046296296296296	google_play
8f98e375-b9f3-43c5-93aa-c130e7a9b109	1	mayreba use bank	1	2025-08-27	neutral	0	neutral	0	google_play
604915f5-e66b-4570-b36b-03818f884d57	1	not prefect transfer bank mony not deliverd imidetliy take three five day	1	2025-08-27	neutral	0	neutral	0	google_play
ec618da8-bf3e-4f4f-9bbb-de3a73c7d631	1	let u know shut	4	2025-08-27	neutral	0	neutral	0	google_play
ad101354-02f8-47a8-8e53-dfaf3a506ab5	1	excited	5	2025-08-27	positive	0.34	positive	0.375	google_play
df2396db-f742-4e8e-9d6b-37fcd9c800c7	3	trnes far	5	2025-08-27	neutral	0	positive	0.1	google_play
2a958f43-5826-432d-912f-b3d92dec153c	1	nice	3	2025-08-28	positive	0.4215	positive	0.6	google_play
c669a0d6-960b-45e4-9ada-fd1008e0855f	1	kamil aweil	5	2025-08-28	neutral	0	neutral	0	google_play
6893be0c-8037-459e-871e-0ee6dcfaac35	1	redmi	1	2025-08-28	neutral	0	neutral	0	google_play
dfde3f5d-4d73-49a5-b927-8fbcf4ea9c24	1	woooow	5	2025-08-28	neutral	0	neutral	0	google_play
e4eb4b19-3f69-4022-9192-74953d642f39	1	useful use cbe	5	2025-08-28	positive	0.4404	positive	0.3	google_play
ff71d5f8-bdbf-4b53-a703-ad24bc5eda84	3	un functional	1	2025-08-29	neutral	0	neutral	0	google_play
26a536fe-385e-4c2c-8a90-020ac58e3ec1	3	goog	5	2025-08-29	neutral	0	neutral	0	google_play
6aab0785-a57f-4093-b55d-03e3e68a72e8	1	found much friendly	5	2025-08-29	positive	0.4939	positive	0.375	google_play
e9c88d11-c7f4-4cbd-a8fa-942c5cc7217d	1	yuuuuu	5	2025-08-29	neutral	0	neutral	0	google_play
bee6fcc5-f5bb-4687-8888-35778f574078	1	tinishu titiba	5	2025-08-29	neutral	0	neutral	0	google_play
a02f8c55-349e-4153-952e-b9fd9857015e	1	would like give feedback current nice easy use button still not improved example iwant check recent txn not well sequenced arranged txn may not appear becouse see many user discomferted maily merchant make high txn daily improve miximize txn shown make searchable recent txn button bank relly cbe bank	5	2025-08-29	positive	0.7738	positive	0.2116666666666666	google_play
0e665f33-628c-4799-a991-53cf66b89ed0	2	absiniya banki	5	2025-08-29	neutral	0	neutral	0	google_play
f164f912-599f-4985-8087-caad615499fa	1	essy use ha great interface user friendly g	5	2025-08-29	positive	0.8658	positive	0.5875	google_play
605dce5b-b7ec-49e8-988d-c8ef7d336b34	1	NaN	1	2025-08-30	neutral	0	neutral	0	google_play
2154c21e-ec52-413e-8e2e-91a5bba58316	1	good	5	2025-08-30	positive	0.4404	positive	0.7	google_play
9516c37a-0f45-4517-8fa7-7bc13ba75598	3	muhaammad bakko	5	2025-08-30	neutral	0	neutral	0	google_play
c11e08ae-0eaa-4305-b179-5ff6661514c0	3	dashin bank	5	2025-08-30	neutral	0	neutral	0	google_play
c692ab03-bed1-472e-b0e5-c77393917ca5	1	good	5	2025-08-30	positive	0.4404	positive	0.7	google_play
7bfdbc13-8426-412b-83f9-000bd411056b	1	say not compatible ur phone u fix not updating	1	2025-08-30	neutral	0	neutral	0	google_play
92267491-afb1-4413-8fb2-d82e56275ed7	1	installi	5	2025-08-31	neutral	0	neutral	0	google_play
d5dc7297-7006-4bd6-ab05-eedd3f615203	1	sahib amin jamal	1	2025-08-31	neutral	0	neutral	0	google_play
3cbb3486-a07b-4537-b937-f893b2810d28	1	nice	4	2025-08-31	positive	0.4215	positive	0.6	google_play
ae6c7ac5-400e-4bc5-ab19-713020fd9797	3	super idiot forced many phone setting like developer option never work fastly need multiple click doe not notify received money many many worst mobile ever expanded	1	2025-09-01	negative	-0.6124	neutral	-0.0074074074074074	google_play
ff9c22ea-a7a9-4a61-9223-331ef7ef8467	1	v good	5	2025-09-01	positive	0.4404	positive	0.7	google_play
8badeef9-8844-467e-8cec-7f19fe37340d	1	appreciate	5	2025-09-01	positive	0.4019	neutral	0	google_play
819ed2fd-5597-4c35-b592-257f7f80eb5a	1	good	5	2025-09-01	positive	0.4404	positive	0.7	google_play
13cce21d-50d9-453f-bfb9-d77f6827d3a0	3	good	2	2025-09-01	positive	0.4404	positive	0.7	google_play
45e502bd-bd62-4895-b534-d75b2dae7c75	2	goof	4	2025-09-01	neutral	0	neutral	0	google_play
43570631-796b-4cde-b270-d28598b619e3	3	great	5	2025-09-02	positive	0.6249	positive	0.8	google_play
6669ce5f-1810-4d1f-b7db-7e6a42d38e27	1	topp	5	2025-09-02	neutral	0	neutral	0	google_play
8ac466a3-5bbb-452d-88bc-ceaae6c5bec0	2	great	5	2025-09-02	positive	0.6249	positive	0.8	google_play
3e5aecbb-e47d-47a4-b4c2-bd7321637900	1	recent not optimized fir latest version android	2	2025-09-02	negative	-0.357	positive	0.25	google_play
c4c7ecf8-c82d-41af-8bc5-c79334b0111f	1	account not working	4	2025-09-03	neutral	0	neutral	0	google_play
2f76ead5-11bc-46f6-af3e-d69a66ebc06b	1	nice	4	2025-09-03	positive	0.4215	positive	0.6	google_play
6e878d4b-8f6f-4b4a-ab43-7dcc1b4adde9	1	good	5	2025-09-03	positive	0.4404	positive	0.7	google_play
c2a1cba4-dc6b-430c-acc4-d599b74ca9d5	1	good	5	2025-09-03	positive	0.4404	positive	0.7	google_play
e38cc409-e9d2-4f1e-bd14-8a43ce35230d	1	perfect easy	5	2025-09-03	positive	0.765	positive	0.7166666666666667	google_play
acdeb00e-fc22-4b4b-9731-16f961cf5ffd	1	fastest	5	2025-09-03	neutral	0	neutral	0	google_play
a6ce9c88-d33d-4192-a61b-4ac946c0a3e3	1	amazing	5	2025-09-03	positive	0.5859	positive	0.6000000000000001	google_play
a092d89d-acea-4e45-afb2-59c9c6955aef	1	absolutely excellent	5	2025-09-04	positive	0.6115	positive	1	google_play
8242c794-25bc-4f59-aa06-9343382fbc2f	1	zinaa ahmed	5	2025-09-04	neutral	0	neutral	0	google_play
e95daa9b-9b7c-4c04-a48c-b950c0effe2c	1	waw proud strong bank work best even remote location malabo ecuatorial guinea mewolid mubarak cbe	5	2025-09-04	positive	0.891	positive	0.5333333333333333	google_play
da0c46a2-61c8-4093-902c-de9f2471cc59	1	unfair cost transportation shame	1	2025-09-04	negative	-0.7351	negative	-0.5	google_play
fd6993e9-bca4-400b-8122-af3ca0e28a9c	1	jabirabdala	5	2025-09-04	neutral	0	neutral	0	google_play
516af455-a65f-4ddf-94e0-03cceae923c6	2	NaN	5	2025-09-04	neutral	0	neutral	0	google_play
613dff98-be45-4f37-8feb-01e382393e26	2	tamaam kamal	1	2025-09-04	neutral	0	neutral	0	google_play
0a5e77d2-0b8d-4777-8c63-de906861a90a	3	slow failed transaction multiple time previous wa much	2	2025-09-04	negative	-0.5106	negative	-0.1533333333333333	google_play
cb7e6779-3210-43c2-914c-4c80ba6e9aac	3	ha potential qr payment feature disappointing scanner work even though option select qr code gallery function either make paying qr code almost impossible fixing would really improve	3	2025-09-04	positive	0.3384	negative	-0.2666666666666666	google_play
66ff0693-963b-4cf8-b470-23a46d10398e	1	think good use easily however one comment doe not automatically sync balance real time please review issue example someone transfer money receiver doe not sync automatically requires user manually initiate see current balance	4	2025-09-04	positive	0.765	positive	0.3333333333333333	google_play
dc3c97a2-0fe6-4a49-a2d3-9cc949380a0d	2	best banking transaction application ethiopia	5	2025-09-05	positive	0.6369	positive	1	google_play
3630822b-a561-49cd-ba3e-689548d61e5d	3	dashin mobile banking become worest like others ethiopian bank amole wa best ever used wa flexible reliable use best user login device without go bank physically	1	2025-09-05	positive	0.9153	positive	0.6666666666666666	google_play
e0e8f532-7af2-4b9d-84ab-fe051ef049c5	1	good	5	2025-09-05	positive	0.4404	positive	0.7	google_play
6028469c-5c00-4864-a85e-7e158387f160	1	good really user friendly not possible start service uninstalled device phone changed please make easy u set u requirement office use install launch not visit near branch office every time silly business important thing addition hidding sender name account number know tranfers	4	2025-09-05	positive	0.9149	positive	0.2135416666666666	google_play
5a9dd78f-fbee-4fa7-aba5-1605433b8904	1	best	5	2025-09-05	positive	0.6369	positive	1	google_play
043b2d28-db7a-4800-8fcc-ec5430f8d5e8	1	NaN	5	2025-09-05	neutral	0	neutral	0	google_play
1f79354a-a658-4e96-9810-8f800ad6b489	1	user friendly best	5	2025-09-05	positive	0.8126	positive	0.6875	google_play
c50ff290-9e6f-4a51-97cf-5096441cf16f	1	nice	5	2025-09-05	positive	0.4215	positive	0.6	google_play
d61f7d9d-2a92-4fbb-9a72-950597e42414	3	lacag inaad amaahisan somalida maxaad ku diiden	5	2025-09-05	neutral	0	neutral	0	google_play
f59aab64-5087-4cf6-8dd7-19dd5da5282e	1	best	5	2025-09-05	positive	0.6369	positive	1	google_play
0fdefc13-faf9-4f32-b5a3-1fed6de3231d	3	slow	3	2025-09-06	neutral	0	negative	-0.3	google_play
c73641e9-3f90-408c-b7a0-245d95f38059	3	doe not allow switch account not possible use two account even account opened different branch	2	2025-09-06	negative	-0.1695	neutral	0	google_play
59e75889-3000-449d-99f0-8ce02c493466	3	disappointed dashin bank super doe not allow withdraw birr not transfer money even not use buy airtime make feel like birr no longer money bank money since cannot access use freely according national bank ethiopia nbe rule birr not withdrawable used buy airtime transferred friend dashin bank restriction go beyond rule unfa	1	2025-09-06	neutral	0.033	neutral	-0.0055555555555555	google_play
7e5f7745-10ac-412a-aef7-de5474b2e9fd	3	good need strong network	5	2025-09-06	positive	0.7351	positive	0.5666666666666667	google_play
fcce509a-2581-42cc-8c98-6c33b5e0229c	1	best money transfer ever	5	2025-09-06	positive	0.6369	positive	1	google_play
056de2e4-cac0-4b50-a7e0-1f0afaa82f4a	1	good	5	2025-09-06	positive	0.4404	positive	0.7	google_play
c706e1f8-b031-4088-b2e6-8c5ee13edebd	1	incredible	5	2025-09-06	neutral	0	positive	0.9	google_play
cf460082-aaf9-4a02-a229-4028cdf95a91	1	amazing delightful seamless mobile banking application ever experienced indeed feel great proud part stakeholder first choice bank commercial bank ethiopia pioneer leading digital banking service ethiopia five star little thank much	5	2025-09-06	positive	0.9517	positive	0.396590909090909	google_play
2282390a-1484-4d5e-bf31-bbb27d183515	1	monk	3	2025-09-06	neutral	0	neutral	0	google_play
7031ccb7-7b08-4a10-a241-44fbd621c542	1	good	5	2025-09-07	positive	0.4404	positive	0.7	google_play
308b1e0f-ac76-4a4d-b236-c08eb9bea906	1	doe not open	1	2025-09-07	neutral	0	neutral	0	google_play
bab597bd-52e5-42da-aa02-97cd368d8c0e	3	not great compared others freeze randomly take lot load lot error sending money stopped using	1	2025-09-07	negative	-0.7713	negative	-0.45	google_play
16466231-7a4d-4683-90cf-ae171a9904e1	3	meke	4	2025-09-07	neutral	0	neutral	0	google_play
6da6a076-6a01-4e58-b8aa-de2969a2a505	3	bad specialy weekend	1	2025-09-07	negative	-0.5423	negative	-0.6999999999999998	google_play
8d28d679-b22a-4f59-9d90-a69f077f47d5	3	not werke	2	2025-09-08	neutral	0	neutral	0	google_play
d2967159-0513-4bd3-a122-e855b3209489	1	wowww	5	2025-09-08	neutral	0	neutral	0	google_play
c301bf47-7446-4873-a515-514bb4be2ba3	3	simple easy use	5	2025-09-08	positive	0.4404	positive	0.2166666666666666	google_play
91b8975e-d52a-4a6a-9193-793f667e2252	1	kehru nasir abfixa	5	2025-09-08	neutral	0	neutral	0	google_play
88632aa1-f7db-4599-aa99-9b51523534e8	2	masha alla	5	2025-09-08	neutral	0	neutral	0	google_play
cd72e0bb-cfe7-4308-ac51-89496b89cf89	1	well organized	5	2025-09-08	positive	0.2732	neutral	0	google_play
38c1f9f8-9c4a-4f71-8400-9f98003c50a5	1	not see nearest branch atm available	2	2025-09-08	neutral	0	positive	0.4	google_play
fc1e8d0a-c3b5-4bf6-8a1e-53c4d632e1f4	1	excellent	5	2025-09-08	positive	0.5719	positive	1	google_play
a71c88cf-7021-4ba7-b000-46587677601f	3	happened dashen bank far worst banking extremely slow work service time	1	2025-09-08	negative	-0.6249	negative	-0.4000000000000001	google_play
a31076d0-b574-405f-8495-675485f16a71	2	good	5	2025-09-09	positive	0.4404	positive	0.7	google_play
3bd19bd8-b148-4476-ab68-16eff8d9f543	1	nice	5	2025-09-09	positive	0.4215	positive	0.6	google_play
a5fe1d74-b071-4dfe-9e46-145d7223be32	1	happy	5	2025-09-09	positive	0.5719	positive	0.8	google_play
1fade184-0a71-4398-a719-bb0438af50f6	1	good	5	2025-09-09	positive	0.4404	positive	0.7	google_play
a56b1202-a6db-405b-aba1-586a16bc417d	2	please open mobile	5	2025-09-10	positive	0.3182	neutral	0	google_play
d876a31d-e463-4340-a67e-9a950e182865	2	doe not open	1	2025-09-10	neutral	0	neutral	0	google_play
b2aef3b3-8737-42f8-8e7f-bdec1aa31885	1	usb debugig mode bicha endidereg axrigu like awash bank	1	2025-09-10	positive	0.3612	neutral	0	google_play
9ba01954-bb12-4df6-afaa-72a67a757e62	3	good	5	2025-09-10	positive	0.4404	positive	0.7	google_play
9317c368-d68b-4fa0-8ee6-d66fdf611484	1	excellent	5	2025-09-10	positive	0.5719	positive	1	google_play
028ae5d6-e79b-4abb-a620-e164623430e2	1	best	5	2025-09-10	positive	0.6369	positive	1	google_play
346f5446-e8ba-405b-b52e-b28f5c24c351	1	good morning	5	2025-09-10	positive	0.4404	positive	0.7	google_play
95e30d8e-42d6-4595-b1b3-95186c1bcb8c	3	dashen super best	5	2025-09-10	positive	0.8442	positive	0.6666666666666666	google_play
4b92ba94-d858-4fcb-a2ae-45fc41c1fa26	2	zedo	5	2025-09-11	neutral	0	neutral	0	google_play
dfad5025-20f7-4556-bdaf-294785947fa3	2	nice especially transaction limit extended face boa banking doe not respond activation stage strictly smsng mobile phone please try make safe	4	2025-09-11	positive	0.7906	positive	0.3666666666666667	google_play
5f1427ed-db7c-4427-a256-2678dc2d6dae	1	hasasa bank	1	2025-09-11	neutral	0	neutral	0	google_play
41373a3e-ab62-412b-9857-5c3e02115fdb	3	total	5	2025-09-11	neutral	0	neutral	0	google_play
c6e99e08-ceae-4c1c-9293-ca30ff43e70f	1	tired every day	1	2025-09-11	negative	-0.4404	negative	-0.4	google_play
86ce8a7e-e618-46cd-9f8e-1da785c2fec1	1	like	5	2025-09-11	positive	0.3612	neutral	0	google_play
ecc6b893-7ad0-4aac-a571-338dc04914bf	1	best mb application ethiopia financial sector	5	2025-09-11	positive	0.6369	positive	0.5	google_play
0223c3f1-12d3-4d3d-b2ea-cd980d15ab92	1	way trusted	5	2025-09-11	positive	0.4767	neutral	0	google_play
b8c15aba-a2bd-4b7d-97e7-35e6b1dc7d11	1	good	3	2025-09-11	positive	0.4404	positive	0.7	google_play
814a08ab-8eb9-4aa6-ae64-341f62b5ae47	2	good	5	2025-09-12	positive	0.4404	positive	0.7	google_play
4bf673d6-7d6f-431c-8844-a6c7eb4c65d3	2	good ever used	5	2025-09-12	positive	0.4404	positive	0.7	google_play
4f5797f9-6c35-4fd6-8ed8-b2ecf912c04a	1	love	5	2025-09-12	positive	0.6369	positive	0.5	google_play
93aec6fd-b95e-497a-bf23-525362628cb8	1	apdate doe not work thing else said enable connects	1	2025-09-12	neutral	0	neutral	0	google_play
c9813dc7-83ff-4288-852f-14a36ab24f48	1	good	5	2025-09-12	positive	0.4404	positive	0.7	google_play
7e654827-cacc-45ee-9ad7-10859e1f37de	1	great	5	2025-09-12	positive	0.6249	positive	0.8	google_play
89aa8ddd-e35b-472f-a8da-d65c16a07626	1	excellent	5	2025-09-12	positive	0.5719	positive	1	google_play
e0770686-7f6d-4168-8b14-6d5a6084fd32	3	staff really hardworking not like employee	3	2025-09-12	negative	-0.3343	positive	0.2	google_play
d0aa6a9a-b5cf-4757-a158-bbf2513373fd	1	good	5	2025-09-12	positive	0.4404	positive	0.7	google_play
4a5e8528-412c-4a9f-856c-f2ddc63942d6	1	best	5	2025-09-13	positive	0.6369	positive	1	google_play
18d048fb-bdd0-409e-b928-2add6e098fd2	1	hayizgi mebrahtom feshay	5	2025-09-13	neutral	0	neutral	0	google_play
26b2c95e-a6f0-436c-9f03-7f9804f40696	1	best	1	2025-09-13	positive	0.6369	positive	1	google_play
1ebb9f31-ce77-4149-826a-697d986e9ff1	1	useless transfer wallet payment bank nothing work restarted cleared cache reinstalled still useless crashed forced visit branch log time one biggest bank country fix issue junior developer could solve completely unreliable big bank zero functionality	1	2025-09-13	negative	-0.7962	negative	-0.24	google_play
81901482-565e-4dc3-859f-ec25ee3c917e	1	great	5	2025-09-13	positive	0.6249	positive	0.8	google_play
ffabf956-7151-4904-8b48-6277bfb8a5bb	1	good bankin time	5	2025-09-13	positive	0.4404	positive	0.7	google_play
8618a1b3-d111-4962-93c1-92100cd710db	3	good	5	2025-09-13	positive	0.4404	positive	0.7	google_play
9832f735-8230-4dd6-8aad-2f743e2792b1	2	good	2	2025-09-13	positive	0.4404	positive	0.7	google_play
db059b75-96c6-46b6-893f-a12e74ae25b1	1	apdat	5	2025-09-14	neutral	0	neutral	0	google_play
70df55ba-42e4-4f41-be80-692d2b7a9e48	3	not working right snmsung galaxy f please help	1	2025-09-14	positive	0.6124	positive	0.2857142857142857	google_play
3c11bafa-cf87-41c0-ba29-714ab4cd69a5	2	none	5	2025-09-14	neutral	0	neutral	0	google_play
14d8c41d-2533-40c1-97f2-7df99a3d3a44	2	since last open crash lot omg slow opening loading	2	2025-09-15	negative	-0.4019	negative	-0.1	google_play
7cedd008-b817-442b-9da0-76ea15713450	2	io perfect android barley work not transfer crushed totally stopped working please fix issue beloved bank abyssinia	1	2025-09-15	positive	0.8658	positive	0.4	google_play
d8b089cb-de9a-4517-8b8d-8a2789fd177a	1	easy use not complicated	5	2025-09-15	positive	0.4404	positive	0.3416666666666667	google_play
aef081be-7fc2-42f9-9ae7-fb9a292c835b	1	best use recently upgraded day day internationalization	4	2025-09-16	positive	0.6369	positive	0.5	google_play
95c685cb-8f77-4382-9a2c-0ec1f22370b5	1	NaN	5	2025-09-16	neutral	0	neutral	0	google_play
df338414-9c67-4832-9823-7e46fd91075d	1	nice	5	2025-09-16	positive	0.4215	positive	0.6	google_play
a05681a9-b69a-48b6-92c5-79a7d916bd61	2	need alot connection chooses device lug even connection	1	2025-09-17	neutral	0	neutral	0	google_play
cbea0f3a-64c8-4df1-8894-99c636a3b7f1	1	waaaaaaaw	1	2025-09-17	neutral	0	neutral	0	google_play
eb7dd7e2-4cb9-4587-beae-158122e8161c	1	nice application	5	2025-09-17	positive	0.4215	positive	0.6	google_play
9db2e90d-f217-4440-99cf-6e6f6f5a46fc	1	good	5	2025-09-17	positive	0.4404	positive	0.7	google_play
681fa2da-bf4a-4706-906e-f4c6e57a03b4	1	good	5	2025-09-17	positive	0.4404	positive	0.7	google_play
9463dbb2-43e2-4eab-b681-5290cde6505d	1	janalebl	5	2025-09-17	neutral	0	neutral	0	google_play
b5678fc9-e018-4c6f-a6d0-d4480254e292	1	NaN	5	2025-09-18	neutral	0	neutral	0	google_play
d20939ad-edfa-4940-87a0-42390551a420	1	doe not option generate statement transaction	3	2025-09-18	neutral	0	neutral	0	google_play
00fa7434-9ab8-403f-8022-245489949f11	1	truly amazing	5	2025-09-18	positive	0.7717	positive	0.6000000000000001	google_play
fc5dec73-4055-497c-abe9-b3e72a9eb973	1	user friendly want amendment include option sending money tele birr like cbe birr	4	2025-09-18	positive	0.7184	positive	0.375	google_play
e0b237d8-0ec7-453f-9e1d-fe22e2910620	2	NaN	5	2025-09-18	neutral	0	neutral	0	google_play
6cd59c87-dcb4-4bd7-9d02-76ca304d2172	3	safe secure	3	2025-09-18	positive	0.6486	positive	0.45	google_play
4c7e9031-a452-48ce-b5fd-4b5a0940b553	2	good	5	2025-09-18	positive	0.4404	positive	0.7	google_play
0edb4624-c49a-4b38-9676-15795535cad4	1	good interface user friendly could pro additional feature let u run multiple account single phone option additional account	3	2025-09-19	positive	0.7269	positive	0.2508928571428571	google_play
5895bf2f-9f41-4871-99a6-44ec53480054	1	nice	5	2025-09-19	positive	0.4215	positive	0.6	google_play
81ed803b-e140-457d-bd17-b2f90c3f1641	1	ok	5	2025-09-19	positive	0.296	positive	0.5	google_play
84c792e9-34da-4a2f-b0a5-6bc9501495d9	1	asfaw damse	5	2025-09-19	neutral	0	neutral	0	google_play
7d98b3cf-3b2e-4446-855f-242d537d7e86	3	worst need updating everyday ouch	1	2025-09-19	negative	-0.6249	negative	-0.6	google_play
c97e45c3-0cfe-43f3-b55f-7529c0f38cd6	3	good	4	2025-09-19	positive	0.4404	positive	0.7	google_play
70a41c2e-0ebd-47ab-8dba-794b369f529e	1	jabadhaa namatii tolataan	5	2025-09-19	neutral	0	neutral	0	google_play
eecf4f77-29ed-40cd-a228-b325ee459350	2	mobile banking	5	2025-09-19	neutral	0	neutral	0	google_play
d849294b-9d5d-4026-96ec-6dd20968fa57	2	great	5	2025-09-20	positive	0.6249	positive	0.8	google_play
be342fa9-1e01-4b45-a8e6-666c2fd79fcf	1	must visit branch opened account activate mobile banking service connected network maybe done branch	1	2025-09-20	neutral	0	neutral	0	google_play
9fe63693-8e5e-4c86-9d29-ff31afd057bf	1	useful sometimes want see specific transaction not work way gave	3	2025-09-20	positive	0.4939	positive	0.15	google_play
047ab6ed-fbb2-4f88-ab6b-7fa4c1e7d2fd	1	time make transfer mobile account cbebirr wallet no show customer name please check thanks cbe cbebirr application nice application wallet	5	2025-09-20	positive	0.7003	positive	0.4	google_play
698b316c-e942-4097-b0c5-f776f7a6fd64	1	dantro band	5	2025-09-21	neutral	0	neutral	0	google_play
cba9cfa7-6ee9-423f-b871-f209fb14e2fc	1	ok	5	2025-09-21	positive	0.296	positive	0.5	google_play
5a399dc2-6362-4a7f-8a07-c6450e33859e	1	best mobile banking ethiopia work perfectly fine	5	2025-09-21	positive	0.8807	positive	0.7083333333333334	google_play
2b8e0e28-3c61-48e8-bba0-961d4e029d8c	1	important	4	2025-09-21	positive	0.2023	positive	0.4	google_play
4cc29da3-9526-44f0-a60f-e4e8cbca0889	1	wa great wa active however lost connection message network error please try fix many client cbe using globally abroad country	3	2025-09-21	positive	0.6249	positive	0.2916666666666667	google_play
c6f55a44-a8e1-4886-ba95-674a1124a5d5	3	good	5	2025-09-22	positive	0.4404	positive	0.7	google_play
ceca6531-d52e-4f24-b61a-1f804b5897b2	1	ux perspective old not obvious find thing	3	2025-09-22	neutral	0	neutral	0.05	google_play
50b3ec22-c555-40a9-bc10-7f72fb5a81c2	1	amazing possible transfer account telebirr	5	2025-09-22	positive	0.5859	positive	0.3	google_play
64181769-8dc3-4814-9f08-cf2ba3ae5305	1	bist tankyou	4	2025-09-23	neutral	0	neutral	0	google_play
ae6518d4-a242-41d5-81ca-90dfc9824d84	1	useful consistent	5	2025-09-23	positive	0.4404	positive	0.275	google_play
175e9e6c-3ed2-4cbb-900b-3d49a2f72216	1	application provides timely service good fast reliable manner	5	2025-09-23	positive	0.4404	positive	0.4499999999999999	google_play
5a8b2a20-8119-4309-85a6-389188e4b37e	1	good	5	2025-09-23	positive	0.4404	positive	0.7	google_play
4997b3bc-486e-4392-abb9-bea943f100d5	1	feature receipt verifying qr code screenshot image gallery currently work direct camera capturing	4	2025-09-23	neutral	0	neutral	0.05	google_play
46d39a4d-52de-4a73-9146-654d971ffb71	3	good time say duplicate transaction text	5	2025-09-23	positive	0.4404	positive	0.7	google_play
3cd71306-b6a6-448e-b4eb-1db85695e9a7	3	great	5	2025-09-23	positive	0.6249	positive	0.8	google_play
e5929d0e-5db5-4d8f-9fef-0c5486213308	1	using cbe fantastic	5	2025-09-24	positive	0.5574	positive	0.4	google_play
6c72590a-6064-4aac-a5b5-a23df953162d	1	time try open doe not load circle keep spinning trying open get message saying attempt left offline login seems mean cannot connect internet even though stable internet connection stuff work properly	2	2025-09-24	positive	0.1779	negative	-0.0625	google_play
2a02cd63-90c4-4590-a2f8-20c4c75ceb3e	3	one best ethiopia	5	2025-09-24	positive	0.6369	positive	1	google_play
40a0e280-55e4-4e97-9e26-4d5e832ba045	3	excellent ui improvement	5	2025-09-24	positive	0.7717	positive	1	google_play
b568b193-afdf-49a2-8263-928754b4772c	1	juhaar	5	2025-09-24	neutral	0	neutral	0	google_play
82e245b0-2790-45ce-a1a3-1aa9a0afaa95	2	easy fast	5	2025-09-24	positive	0.4404	positive	0.3166666666666666	google_play
7373443b-6373-47cd-9c64-291b7e6e23da	3	good	3	2025-09-25	positive	0.4404	positive	0.7	google_play
c90fb60a-ea63-47f0-aa65-fcb41b6534e1	2	nothing ha improved doe not work like previous version	1	2025-09-25	negative	-0.6908	negative	-0.1666666666666666	google_play
3a8dbeb7-0952-43ec-847e-bd418d51548e	3	wow really loved ui ux great job dashen bank guy best mobile banking ethiopia	5	2025-09-25	positive	0.9538	positive	0.65	google_play
474cda36-39b1-4257-939a-0ec2255554d2	3	problem asking daily basis	1	2025-09-25	negative	-0.4019	neutral	0	google_play
e808d9ae-aa8f-4657-ab6e-1771c331c10c	1	good	5	2025-09-25	positive	0.4404	positive	0.7	google_play
dc02a903-4af0-41a4-8644-bb6fbe3d7e63	1	good	5	2025-09-25	positive	0.4404	positive	0.7	google_play
34782f5c-6307-4491-a204-72dbcf944478	1	best	5	2025-09-25	positive	0.6369	positive	1	google_play
519a154f-9f37-4913-b729-d8c9a9c0b92d	1	NaN	5	2025-09-25	neutral	0	neutral	0	google_play
2d3661c7-4b35-4a79-9428-5db3ad5109c7	3	best ui banking used ethiopian bank used really old ui neat easy use also reliable	5	2025-09-26	positive	0.885	positive	0.5111111111111112	google_play
5e5900f0-cc81-40b6-a5ea-5dfd29d8b53c	3	not without data wifi	1	2025-09-26	neutral	0	neutral	0	google_play
29207dce-824f-4d9c-9f01-040a65597a9e	3	first time experienced much cool mobile banking platform im genuinely happy see kind tnx	5	2025-09-26	positive	0.8885	positive	0.56	google_play
264384ce-c57e-4c4b-ad15-434015cb7f49	3	stop working whenever unless kept working updating optional	3	2025-09-26	negative	-0.296	neutral	0	google_play
ded1e283-db15-47f4-9b76-d105d6b71163	3	NaN	5	2025-09-26	neutral	0	neutral	0	google_play
3323ffef-d180-4eb7-b358-7f00cb41d9fc	3	appreciated always one step ahead	5	2025-09-26	positive	0.5106	positive	0.2	google_play
97806b54-1708-4b5c-a367-7cb034c107cd	3	ok	5	2025-09-26	positive	0.296	positive	0.5	google_play
0ad08d24-eefb-44bb-91c2-49266c0850ce	3	love user interface	5	2025-09-26	positive	0.6369	positive	0.5	google_play
e0b1cd75-ae0c-4424-aa2c-49c5c848c96a	3	excellent	5	2025-09-26	positive	0.5719	positive	1	google_play
e687285e-63ca-4319-bd69-a8a7f1029943	3	every time doe not work 😭	1	2025-09-26	neutral	0	neutral	0	google_play
811f3549-2ca4-43f3-b03a-f0aff42e4b37	3	amazing visually stunning	5	2025-09-26	positive	0.7506	positive	0.55	google_play
097ae6ec-2562-45ae-9ee4-7276f48ba81b	3	nice	5	2025-09-26	positive	0.4215	positive	0.6	google_play
850e5fff-c620-45ca-bdb0-23f931714542	1	good	5	2025-09-26	positive	0.4404	positive	0.7	google_play
08d88ef0-1304-4fb7-9cb4-97977dc02cf7	3	best dashen unique fast ever life	5	2025-09-26	positive	0.6369	positive	0.525	google_play
e353e42a-0ba2-423f-9f9a-4ba34cded129	1	poor guy delete cbe download boa	1	2025-09-27	negative	-0.4767	negative	-0.4	google_play
9d643178-b404-4c08-8d2c-f91e2e87f432	1	good need improvement	5	2025-09-27	positive	0.7096	positive	0.7	google_play
cf3fb51e-53d0-46d9-baf2-20e03d419812	1	niceapp	5	2025-09-27	neutral	0	neutral	0	google_play
af0a4d1d-b254-4967-b163-aa40f6b51b6d	1	great application would like rate solid star work well overall hello everyone enjoy	5	2025-09-27	positive	0.91	positive	0.3	google_play
a79e878a-c8c3-4933-9eb3-8a2fa41911a3	3	best version	5	2025-09-27	positive	0.6369	positive	1	google_play
79e31cae-3560-497e-af19-327dd7ee607f	3	dashen future	5	2025-09-27	neutral	0	neutral	0	google_play
639aedfd-a81c-49d8-8f52-53848d0f874a	3	nice	5	2025-09-27	positive	0.4215	positive	0.6	google_play
a2779b7b-ad8d-420f-a4d4-d1e4ec4212d8	3	dashen super best ethiopian bank keep	5	2025-09-27	positive	0.8442	positive	0.6666666666666666	google_play
8d1ad519-2698-4fcf-b4d5-bf45bf22cc37	3	cool	5	2025-09-27	positive	0.3182	positive	0.35	google_play
f70c861d-2247-481d-906f-86f608f595d6	3	nice	5	2025-09-27	positive	0.4215	positive	0.6	google_play
24c09146-a504-429e-a1fe-9ffb57e044ad	3	tadass	1	2025-09-27	neutral	0	neutral	0	google_play
90dfd168-3d83-4e21-87ee-6500a304e586	3	make cashless society century easy use	5	2025-09-27	positive	0.4404	positive	0.4333333333333333	google_play
a508c79d-95b9-4133-a32b-095e1bf3c75c	3	dont like	1	2025-09-27	negative	-0.2755	neutral	0	google_play
32f7f582-e0e2-4127-b460-8faa11fc3ba1	3	amazing one	5	2025-09-27	positive	0.5859	positive	0.6000000000000001	google_play
08a896dd-2fa2-481f-ba8d-53e773c2ebe0	3	love	5	2025-09-28	positive	0.6369	positive	0.5	google_play
27ea5e57-7906-4701-b116-c1a8ff13febc	1	bank ethiopia	5	2025-09-28	neutral	0	neutral	0	google_play
0731dc17-2dc7-49fb-ac89-a2dd6c33f8c3	1	best	5	2025-09-28	positive	0.6369	positive	1	google_play
b768c25c-bc3a-4d57-8c45-97e489546662	2	love bank best experience ever	5	2025-09-28	positive	0.8555	positive	0.75	google_play
148f9fa2-0406-42c0-a3ca-d4e80633c6c8	3	gooe	5	2025-09-28	neutral	0	neutral	0	google_play
f42317c0-6835-47ab-8af9-1527e863d6c7	3	nice	5	2025-09-28	positive	0.4215	positive	0.6	google_play
f6eb5502-78e4-4092-8135-5f350dc7947c	3	best	5	2025-09-28	positive	0.6369	positive	1	google_play
9a6e8134-27c5-45f1-8dae-6c6fb1827281	3	one issue though mobile phone sim stolen no pattern pin allows reset pin directly without fa like finger print sending sm big gap addressed not expect doe no trust	1	2025-09-28	negative	-0.6608	neutral	0.05	google_play
ea1f5c47-8fd1-466e-a734-339f38552c7c	1	sintu	5	2025-09-29	neutral	0	neutral	0	google_play
8239c27e-53e8-46bb-a66d-3f96f842dd91	1	not get transaction history	1	2025-09-29	neutral	0	neutral	0	google_play
c7f14167-31f9-4fec-bf3e-5997616a9dfe	3	fast service	5	2025-09-29	neutral	0	positive	0.2	google_play
04461449-8fd8-4684-8b12-1bc3aee7f6f2	3	good improvement sep	4	2025-09-29	positive	0.7096	positive	0.7	google_play
e7f1ebae-d2de-4e91-a920-92d2b5df4c3d	3	nice	5	2025-09-30	positive	0.4215	positive	0.6	google_play
f9fc527c-a906-4f3a-bc73-5788be785d7b	1	good banking web network sometimes busy hope willfix problem	4	2025-09-30	positive	0.4767	positive	0.3999999999999999	google_play
e3e7b9d3-10a9-443b-89b9-34160443c78a	2	jaajja	4	2025-09-30	neutral	0	neutral	0	google_play
5aa4d37f-f987-497b-8890-3acd8d98fc42	1	verfcasencod	5	2025-09-30	neutral	0	neutral	0	google_play
679d53bb-4eb0-4cb1-836f-46db6b0fd30f	1	enkorabetalen	5	2025-10-01	neutral	0	neutral	0	google_play
91563646-8ab1-4920-8710-b7fbf54647a2	1	gamada mahamadi	1	2025-10-01	neutral	0	neutral	0	google_play
1310296e-3850-494f-83bc-936ea27684ab	2	doe not show name person sent money request receipt ha become difficult u different people transfer amount different bank difficult identify account name sender	3	2025-10-01	negative	-0.3818	negative	-0.25	google_play
d77c9668-4802-4947-a68a-6b76e2424a5e	1	good	5	2025-10-01	positive	0.4404	positive	0.7	google_play
baad5c11-63e6-4b64-9006-c4cb1481036d	2	not type otp	1	2025-10-01	neutral	0	neutral	0	google_play
00dddad5-915e-4fc1-9166-b5d7ce59ad88	2	like	5	2025-10-01	positive	0.3612	neutral	0	google_play
8fcb61bb-c476-4963-9ce7-8520c21fdb32	3	really appreciate not use not balance data access	2	2025-10-01	positive	0.4576	positive	0.2	google_play
7481b511-72a1-4592-8087-c029fc656e67	2	bank ethiopia linked ethiopian phone number live u permanently open boa account told live link email address instead phone ethio phone number not working live unfortunetly fear appeared change phone device send code ethio number not please u develop bank consider diaspora community use ur	1	2025-10-01	negative	-0.5043	positive	0.1022727272727272	google_play
fe52deb6-a04e-457e-a84a-4946e5c13f89	3	outstanding	5	2025-10-01	positive	0.6124	positive	0.5	google_play
ca1bd0cc-d7e8-461f-89c9-f7493cb9c23d	3	totally bad	1	2025-10-01	negative	-0.5849	negative	-0.6999999999999998	google_play
29cefc71-17c5-4da9-b52d-14ea873c14fc	3	withdraw	1	2025-10-02	neutral	0	neutral	0	google_play
5ba4cabb-ec35-4aec-b02e-a54007f2d789	1	rijalufaris	5	2025-10-02	neutral	0	neutral	0	google_play
6eec0d43-60e8-47c1-8532-003d6c53c81b	1	good	5	2025-10-02	positive	0.4404	positive	0.7	google_play
c6e45006-f1be-4791-a6bc-5cb5f3a5480e	1	imoo	3	2025-10-02	neutral	0	neutral	0	google_play
05480cec-2025-459d-b778-dffc965c770d	1	wa good since become robber vat tax service charge unbelievable charge send bank monthly charge etc hope one international bank come leave bank enough enough	1	2025-10-02	positive	0.4215	positive	0.09	google_play
65f32267-1792-445a-9d83-988683a246bb	1	screen shoot always not allowed	5	2025-10-02	negative	-0.34	neutral	0	google_play
72fac2da-7732-40ae-948b-708abf47cc0d	1	best hate repeatedly request	5	2025-10-02	positive	0.128	positive	0.0999999999999999	google_play
befc23dd-22be-4039-ab16-311ebf096360	3	take gazillion year open	3	2025-10-02	neutral	0	neutral	0	google_play
4405edcc-29c2-4606-9119-32fd60425503	3	passive compare amole take second open cannot refresh transaction	1	2025-10-03	positive	0.2023	neutral	0	google_play
4587385c-78c9-4310-b8aa-da0bce565a91	2	need timely	5	2025-10-03	neutral	0	neutral	0	google_play
5c8506d5-0941-4743-b14b-216ab75fadb7	1	woow cbe	5	2025-10-03	neutral	0	neutral	0	google_play
58cb1472-7503-4b54-8a9a-bb272a6d9998	1	cbe best bank	4	2025-10-03	positive	0.6369	positive	1	google_play
4acc368f-b10c-454c-973f-dec76d6237d8	1	wiiy ewdihiliw esimirt niho yitnehew metgeyot 😍	1	2025-10-03	neutral	0	neutral	0	google_play
6a9f2e06-2391-4846-a1bb-0605b2cd4242	1	cbe bank simple smart like	5	2025-10-03	positive	0.6369	positive	0.1071428571428571	google_play
98f164eb-f69b-4bd7-ad2d-defcfa2249a1	3	not open virtual account trying day still no resolve	2	2025-10-04	positive	0.1027	neutral	0	google_play
57d4668e-fea7-4959-9bfa-94ef44056c71	3	tadesa melka tulluu	1	2025-10-04	neutral	0	neutral	0	google_play
db3411b1-5150-4609-9b90-d0ebdecc0754	1	special	5	2025-10-04	positive	0.4019	positive	0.3571428571428571	google_play
d21d1d72-70bd-4f8b-be5d-ed2802815f2a	1	good mobile banking	5	2025-10-04	positive	0.4404	positive	0.7	google_play
92f289e4-34e6-432d-af95-5094ca79799a	1	excellent lot feature	5	2025-10-04	positive	0.5719	positive	1	google_play
aea499ca-d250-4cec-89d0-2b04c8caf16c	1	lately facing problem problem log inter pin doe not work say not sync doe say wa working fine day ago also say enter pin change pin digit pin doe not allow change please solve problem	2	2025-10-04	negative	-0.798	positive	0.0583333333333333	google_play
b39843d1-bef0-409a-81c6-e4635e0dec16	1	data	5	2025-10-04	neutral	0	neutral	0	google_play
b8460ed9-6fc3-4641-8e95-169ed65ef8ee	3	wow	5	2025-10-04	positive	0.5859	positive	0.1	google_play
8a4c8a02-5cf7-48f5-a9c6-b9dc12a9bd4f	3	dashen bankk best bank onlyu one one mobile banking mean superr	5	2025-10-05	positive	0.6369	positive	0.34375	google_play
5d1097c8-8574-4891-91b9-4dc246c5d8b8	1	bank	5	2025-10-05	neutral	0	neutral	0	google_play
8f877e47-8028-4984-b9d0-494fba9121dc	1	terrible showing history transaction show disorganised way	3	2025-10-05	negative	-0.4767	negative	-1	google_play
7345b274-906c-4bfc-b37d-8131020ad13e	2	doe keep crashing not even use boa many customer deal not send money	1	2025-10-05	neutral	0	positive	0.5	google_play
92c02ccf-dc16-4085-a570-ba0db7e1c8b2	3	good	5	2025-10-06	positive	0.4404	positive	0.7	google_play
fded7d2d-d728-45d8-bbff-d921bb72b84c	3	shewangizaw l heavy user issue raised around resetting pas pin concerned gave try found safe basically two thing verifies one using otp requires person visit bank physical branch final verification resetting password therefore safe use wish nformational tip wa added around reset button could not attach screenshot	4	2025-10-06	positive	0.8176	positive	0.16	google_play
dc05323e-52e8-456d-b11d-723ad497bb76	3	perfect	5	2025-10-06	positive	0.5719	positive	1	google_play
58b90262-ad27-4cc2-9946-e40d18df5554	1	asledin ibsa	5	2025-10-06	neutral	0	neutral	0	google_play
423879fa-3edc-4c9d-970c-8e6a19219b58	1	commercial bank ethiopia good	5	2025-10-06	positive	0.4404	positive	0.35	google_play
0dce324c-a868-401d-bf8a-6155518ae7e3	1	amazing know much simplify life thanks cbe proud	5	2025-10-07	positive	0.8689	positive	0.45	google_play
8b466649-63ed-4f72-b0c0-132add6b6c95	1	trying access android phone sometimes doe not work kindly try improve	3	2025-10-07	positive	0.0701	positive	0.6	google_play
530dd237-64b5-4402-812f-39790e254ca7	3	hayelu beranu bashre	5	2025-10-07	neutral	0	neutral	0	google_play
1b877d16-56c5-4310-ab75-0f9e6491b679	3	connection not fast	5	2025-10-07	neutral	0	negative	-0.1	google_play
147dc910-f84e-4950-9cd0-a6ce1ca0b070	2	office branch improve service please	4	2025-10-07	positive	0.6369	neutral	0	google_play
68b7a597-8133-4584-9c3f-1e26fa21184e	2	last week not working please check problem	1	2025-10-08	negative	-0.5664	neutral	0	google_play
ad5ea4f1-47f8-4ae1-928c-6fece7daaed1	1	removing screenshot feature	2	2025-10-08	neutral	0	neutral	0	google_play
e0d24942-f1ad-4b2d-9c1d-a3d0f26e7b1f	1	good application thank participate	5	2025-10-08	positive	0.6597	positive	0.7	google_play
c9e0e2f6-6903-4148-929a-97ae808a475d	1	application bank commercial ethiopia happy able appear great job pleasant job	5	2025-10-08	positive	0.9022	positive	0.5666666666666667	google_play
cd04e8f2-6382-4154-9383-a9a68ccec318	1	user compatible	5	2025-10-08	neutral	0	neutral	0	google_play
546df11c-e603-4f04-963e-ae1cd2be9561	2	always crushing	1	2025-10-08	negative	-0.3612	positive	0.4	google_play
4c079db5-2c17-468e-979c-fc1d9173b7ea	1	service charge vat fee everything not wanna take everything not fair	1	2025-10-08	negative	-0.2411	negative	-0.35	google_play
a4024312-1bfc-4942-bab2-89a8800248ff	3	finish development fully give final result inconvenient not reliable moment	1	2025-10-08	negative	-0.34	negative	-0.3	google_play
d5e8cf6e-d5bc-4a04-960f-db0ba7e47c78	1	good	5	2025-10-09	positive	0.4404	positive	0.7	google_play
5bdca892-8530-4730-aaae-f11feaa20925	1	ali urgesa	3	2025-10-09	neutral	0	neutral	0	google_play
8382e883-613c-4404-85ca-4d5179345d19	1	good	5	2025-10-09	positive	0.4404	positive	0.7	google_play
bffd6050-4f53-4ce4-90d4-614ddb4f2d59	1	good	5	2025-10-09	positive	0.4404	positive	0.7	google_play
9a23c1f5-b873-4b23-99af-9e04bc6d82a0	1	good	5	2025-10-09	positive	0.4404	positive	0.7	google_play
b9ce0e59-87ab-48e8-ba48-6774beac5430	1	best ever seen	5	2025-10-09	positive	0.6369	positive	1	google_play
4048acf3-a39c-4fa6-9adc-dc9d550bac84	1	game changing financial system	4	2025-10-09	neutral	0	negative	-0.2	google_play
5073e673-94ef-4146-ac02-8c91903f41ab	1	z mkt r	1	2025-10-09	neutral	0	neutral	0	google_play
a5ce6f6b-2390-45f6-9551-205818e01125	1	good updating	5	2025-10-09	positive	0.4404	positive	0.7	google_play
32133348-ecd7-47e0-9e98-7f1702419599	2	best best	5	2025-10-09	positive	0.8555	positive	1	google_play
eccbcf2d-2f20-4200-913a-979fe6bc8a86	1	good	5	2025-10-10	positive	0.4404	positive	0.7	google_play
71b44fde-a457-4a5d-bd21-cee994689ee2	3	nice best	5	2025-10-10	positive	0.7906	positive	0.8	google_play
7d17e2b7-b9f7-4020-896d-43519468918f	3	good	5	2025-10-10	positive	0.4404	positive	0.7	google_play
9c02c8ba-3634-4363-b888-e60ce895ba7a	1	nice serious suggestion send cbe birr customer doe not show name recipient befor actually send money please improve	4	2025-10-10	positive	0.7717	positive	0.0888888888888888	google_play
0e751657-b2ec-43f8-92cb-c39991b58b72	1	good 😊😊😊	5	2025-10-10	positive	0.4404	positive	0.7	google_play
defda1bc-55e3-47de-9962-0e3ca63aa416	1	really good	5	2025-10-10	positive	0.4927	positive	0.7	google_play
8aa39394-5499-421c-b9a8-5f31d2890271	1	smart bank cbe	5	2025-10-10	positive	0.4019	positive	0.2142857142857142	google_play
5a8105d2-37c0-4b90-b775-70929dbcd793	1	exceptional application others bank	5	2025-10-10	neutral	0	positive	0.6666666666666666	google_play
4eedb003-2dca-4470-a9d0-c2b6c3ec41ea	1	star not see transaction history apart recent refresh button ha removed recent activity allow client view transaction not recent	3	2025-10-11	positive	0.5106	neutral	0	google_play
9af535dc-d362-49d3-8ece-90d66fd2f879	1	mamma husen	2	2025-10-11	neutral	0	neutral	0	google_play
54924bcd-4e5d-4b89-b3ba-31e6d7b19084	1	ok	5	2025-10-11	positive	0.296	positive	0.5	google_play
da8f72ca-3f4b-41f6-937e-c626b8240c8b	2	alhamdulilah	5	2025-10-11	neutral	0	neutral	0	google_play
78a694a1-8f38-4796-a4fc-0310a8c0a031	3	best	5	2025-10-11	positive	0.6369	positive	1	google_play
295d2079-821b-4b20-aaf4-736ba7cb2677	3	good	1	2025-10-11	positive	0.4404	positive	0.7	google_play
8b37e090-01ff-4f7c-bfdc-3e781996d2a9	2	poor	5	2025-10-11	negative	-0.4767	negative	-0.4	google_play
cf44dcab-2f7d-45a0-a1d5-9d9dd85121aa	1	doe not show bank statement no option see transaction past month	2	2025-10-12	negative	-0.296	negative	-0.25	google_play
e20159de-996c-4fc5-9474-e63518140932	3	meseret birara	5	2025-10-12	neutral	0	neutral	0	google_play
86f17281-1a7a-4ae7-be9f-c2130ab31b88	3	doe not let open account	1	2025-10-12	neutral	0	neutral	0	google_play
4bd8a096-f82b-40f3-a828-b096eb830a97	1	best	5	2025-10-12	positive	0.6369	positive	1	google_play
62ca961e-d859-4ede-ac8d-8baab9f8af87	1	good	5	2025-10-12	positive	0.4404	positive	0.7	google_play
9a3f4238-e04d-480b-861b-6fe0135ac487	1	providing secure service	5	2025-10-12	positive	0.34	positive	0.4	google_play
23c7bd6b-c237-4581-92c8-15fcf14cbf16	1	riyad mohammed abaoli	5	2025-10-12	neutral	0	neutral	0	google_play
e1c41e8d-925e-450d-ab6b-ce7e90b6469d	1	good	5	2025-10-12	positive	0.4404	positive	0.7	google_play
0a77398d-ebbd-43f8-a928-1de26be137d5	1	good	5	2025-10-13	positive	0.4404	positive	0.7	google_play
95c8c18c-f4aa-456a-87d7-4a71e40ebf3c	1	mahamad usman	5	2025-10-13	neutral	0	neutral	0	google_play
1b751e18-ceb3-44fd-8659-acb07aab10b9	1	erako	5	2025-10-13	neutral	0	neutral	0	google_play
ac57d562-3e2e-476a-a7fa-5433d1ed321e	3	lmo	5	2025-10-13	neutral	0	neutral	0	google_play
b971a966-2cd3-4930-8c49-5ab274055da0	1	NaN	5	2025-10-13	neutral	0	neutral	0	google_play
f4dcd64a-ea98-4983-94de-cca8b9edc4d1	1	opne	5	2025-10-13	neutral	0	neutral	0	google_play
19d9e046-0f7a-457c-9cff-1ef73b1f7d13	1	mehommd nuri	5	2025-10-13	neutral	0	neutral	0	google_play
cecede31-b593-4107-a76b-54a40476f863	1	berhan deriba wami	4	2025-10-14	neutral	0	neutral	0	google_play
2915c398-4205-4f4e-ae06-3e25d24b089b	1	slow	1	2025-10-14	neutral	0	negative	-0.3	google_play
21d5cd5a-a147-4925-905d-5e90558b103e	1	good	5	2025-10-14	positive	0.4404	positive	0.7	google_play
ef72e904-1f23-4477-82da-f84bda533d9a	1	best	4	2025-10-14	positive	0.6369	positive	1	google_play
426a91e8-fb8b-446e-a47a-32d4c74003fb	1	asefa obsa	5	2025-10-14	neutral	0	neutral	0	google_play
349736cb-a766-4978-8add-8c915a05be3a	1	year ago	4	2025-10-14	neutral	0	neutral	0	google_play
598f9bab-e0ec-49fe-b694-aeba6a24b04a	1	applied	1	2025-10-14	neutral	0	neutral	0	google_play
7426cf04-4823-4217-9cb9-1ba06be0f137	3	easy	5	2025-10-14	positive	0.4404	positive	0.4333333333333333	google_play
8921bc6d-74d6-4680-a63e-e57e70ea4b68	3	best application	5	2025-10-14	positive	0.6369	positive	1	google_play
32334fdd-91e8-4308-a104-bd3291119b05	3	dashen superapp worst consistently fails transfer try send money transaction freeze extended period sometimes full day often two three day crucially fund neither delivered recipient immediately refunded account incredibly frustrating make feel like lost money urgently need technical ensure transaction process smoothly reliably	1	2025-10-14	negative	-0.796	negative	-0.1642857142857142	google_play
9a08e3e2-01d2-483b-8beb-691d875a45e9	1	best	5	2025-10-15	positive	0.6369	positive	1	google_play
93fb8392-2f3c-437e-aa58-3b0b34a99b01	1	dash board disturbing not showing traxation balance displaying others option dashboard think risk full app😭😭😭	1	2025-10-15	negative	-0.6597	negative	-0.075	google_play
a9c3fc33-c501-4013-8572-33b72111f679	1	still not perfect like	1	2025-10-15	negative	-0.6259	negative	-0.5	google_play
cdc789cd-c2e6-415e-906f-0bde3fa850b1	2	exceptional banking	5	2025-10-16	neutral	0	positive	0.6666666666666666	google_play
d81ca31a-2ecd-4f0a-aab7-0a6f02da0696	2	hussen hassen umer	5	2025-10-16	neutral	0	neutral	0	google_play
a25928af-597f-4962-98d3-a9bbff522dcb	1	best	5	2025-10-16	positive	0.6369	positive	1	google_play
b6b20563-1305-4c44-90f4-a5b726bc9c61	1	suddenly cbe application wa using stopped working called callcenter wa told expired vist branch fix went cbe silassie branch filling form gave sat waited finish fixing customer case arrived wa turn ppl came mobile banking even atm card case finishing leaving get back work left no service	1	2025-10-16	negative	-0.4767	neutral	0	google_play
a83bb204-ff79-401f-afee-6490508d3d3a	1	gooof	5	2025-10-16	neutral	0	neutral	0	google_play
0d6f2b91-6c64-4226-9260-0a13a22ab3bd	1	easy use secured previous one love appreciate commercial bank ethiopia every time	5	2025-10-16	positive	0.91	positive	0.1916666666666666	google_play
d38d8b3c-ea51-4a79-8300-450d0270fb3d	1	not work correctly needed sometimes work sometimes though	2	2025-10-16	neutral	0	neutral	0	google_play
3941e3dd-e3b1-4d8b-93cd-816ce3e3b0b4	1	good	5	2025-10-16	positive	0.4404	positive	0.7	google_play
6725eae9-b141-4a7c-abcd-90125d0fa3bd	2	not suitable lack good ui design large bank must professional ui fast appropriate	2	2025-10-16	negative	-0.1139	positive	0.2398809523809524	google_play
33904fae-7879-41ca-be3c-4404345cece6	3	abdrug bentahuuuu	3	2025-10-17	neutral	0	neutral	0	google_play
4d5e0051-01e0-40d6-b338-8de3c99bb424	1	good	5	2025-10-17	positive	0.4404	positive	0.7	google_play
4fe8694d-eb8f-4959-b2e8-f4501b5b961f	1	best	5	2025-10-17	positive	0.6369	positive	1	google_play
703f1558-8575-4a75-be24-11d43573ba4c	1	good	5	2025-10-17	positive	0.4404	positive	0.7	google_play
c50f1ce4-5aad-46a1-8e43-eb2ac3ea39fd	1	cbe no	5	2025-10-17	negative	-0.296	neutral	0	google_play
1776b9e9-95d8-4811-bb94-61d28a7c19d1	2	try easy network	4	2025-10-17	positive	0.4404	positive	0.4333333333333333	google_play
2cc116ae-e341-4066-bfb9-f430f1535601	1	say ti work device	1	2025-10-18	neutral	0	neutral	0	google_play
3ec71abd-b47c-4863-8964-50e6b4906b18	1	cbe	4	2025-10-18	neutral	0	neutral	0	google_play
b5cdf35c-3557-4d24-b745-5fba84d615d9	3	like	5	2025-10-18	positive	0.3612	neutral	0	google_play
ac209bf8-4257-405d-877e-aa90875c00a7	1	blah blah blah	5	2025-10-18	negative	-0.296	neutral	0	google_play
67398692-d12e-4229-9f88-67f25f1a7336	1	ha nice design useful feature like balance check transfer unstable often fails connect also force user turn developer option unnecessary banking work fine without many people use developer mode normal reason please fix performance issue remove restriction add biometric login security convenience	2	2025-10-19	positive	0.8271	positive	0.1523809523809523	google_play
dd62498b-d256-495f-8251-683626113991	3	excellent april jest continue abeaten	4	2025-10-19	positive	0.5719	positive	1	google_play
c5821075-ea3f-4428-ae01-f95e8367dc70	1	good	4	2025-10-20	positive	0.4404	positive	0.7	google_play
c9162816-c2cd-478c-ab34-9569f63d3711	2	worst bank ever slow not accept dual sim stupid greedy	1	2025-10-20	negative	-0.8997	negative	-0.7000000000000001	google_play
b1bb3882-599d-4cf4-96bc-8835454ff207	1	useful	5	2025-10-20	positive	0.4404	positive	0.3	google_play
3dc9000e-9725-4423-9a14-6cbb88462843	1	super fast	5	2025-10-21	positive	0.5994	positive	0.2666666666666666	google_play
29295b2c-ebe8-4dfe-9cd3-c3a5806b810b	2	good mb appliciation	5	2025-10-21	positive	0.4404	positive	0.7	google_play
e1d422df-940c-4d01-ad57-d42f3cd1a650	3	good	4	2025-10-21	positive	0.4404	positive	0.7	google_play
5cf2f96d-65d1-4c59-bc53-9ba932c4c57b	3	ui impressive adding atm withdrawal feature cardless cash access would enhance functionality may require atm system well please consider dev team	4	2025-10-22	positive	0.7783	positive	1	google_play
9917233c-933c-444f-b986-e97d3fe0f682	2	worst financial experience	1	2025-10-22	negative	-0.6249	negative	-0.5	google_play
f7a77123-8426-440e-afa9-d3e7a0bcc8fd	3	convinent	5	2025-10-22	neutral	0	neutral	0	google_play
df5cd433-7f0e-4e13-ae07-4200db1965c0	2	good	5	2025-10-22	positive	0.4404	positive	0.7	google_play
b72300fc-ef3d-4145-9bb6-47ce6183506c	1	imp	5	2025-10-22	neutral	0	neutral	0	google_play
56c5835a-b561-4f8c-ab37-6330ca97faea	1	good job	5	2025-10-22	positive	0.4404	positive	0.7	google_play
5f41b0ec-1dd2-4ca7-b339-02827ac8666e	1	good	5	2025-10-23	positive	0.4404	positive	0.7	google_play
8de78143-c7c6-4f2a-95dc-a7cfde43d506	1	not good not bad	3	2025-10-23	negative	-0.5824	neutral	-2.775557561562892e-17	google_play
d95fd5b5-8b53-445a-9e31-d79f60aa65d5	1	nice	4	2025-10-23	positive	0.4215	positive	0.6	google_play
6606f3a3-dbc9-4032-a905-37c737501776	2	best bank	5	2025-10-23	positive	0.6369	positive	1	google_play
ef786a30-7bc0-4a73-a7df-a3a545c7f665	1	mite	5	2025-10-24	neutral	0	neutral	0	google_play
b3efa927-2c89-48de-8292-19e0e6a68ec3	1	useful	5	2025-10-24	positive	0.4404	positive	0.3	google_play
b9b28cc3-4563-4f09-938c-b1adcc27bbf3	2	telebirr remittance	5	2025-10-24	neutral	0	neutral	0	google_play
01989925-f978-4d2c-91c6-ebd374cd2a1a	1	attractive	5	2025-10-25	positive	0.4404	positive	0.8	google_play
5c031dab-9c2f-4e80-ba06-5e49ae4a9821	1	would like suggest improve time take money doe not return back next day	3	2025-10-25	positive	0.6597	neutral	0	google_play
4553e023-8faa-4e78-a30f-8dcdca419ec5	1	best	5	2025-10-26	positive	0.6369	positive	1	google_play
1f73f73b-a5e4-4114-a45d-992a360ebb87	2	lazy	1	2025-10-26	negative	-0.3612	negative	-0.25	google_play
a0070771-ae98-4f0c-8846-090f2357281f	1	laga bari biranch	5	2025-10-26	neutral	0	neutral	0	google_play
4422aa17-0e87-4a90-8388-5065e2b37503	1	arif	5	2025-10-26	neutral	0	neutral	0	google_play
49288360-34e9-43f0-be9c-c2480f4dc9ac	1	galaxy	3	2025-10-26	neutral	0	neutral	0	google_play
575075bc-9c06-41d4-901f-cda4028e0dc7	1	fast	4	2025-10-27	neutral	0	positive	0.2	google_play
b228fe65-8247-46e0-9f6f-dfc4d8ca189b	1	cbe	5	2025-10-27	neutral	0	neutral	0	google_play
ef880514-7bf7-4b43-8dd1-0ca8f32d2012	1	active granted system	5	2025-10-27	positive	0.5719	negative	-0.1333333333333333	google_play
8733a99d-1c50-4428-a170-6d4c3b2e18d3	1	good love keep fire soo good	5	2025-10-27	positive	0.8225	positive	0.6333333333333333	google_play
f787c8fe-c207-4c5a-8156-e8cfa0f6652d	2	kiyaa makonn	5	2025-10-27	neutral	0	neutral	0	google_play
a47dd458-e3b5-4df5-b205-e9b3499a11cb	1	good	5	2025-10-27	positive	0.4404	positive	0.7	google_play
74f35e55-6ee7-4d01-bc8a-e5b3c92a6b70	3	super ultimate digital banking living name speed efficiency innovation designed seamless experience offer lightning fast transaction top tier security effortless financial management super banking ha never smooth smart super	5	2025-10-27	positive	0.9645	positive	0.1649350649350649	google_play
3a4607e5-2215-468f-afd4-75723ef0e40a	1	cool	5	2025-10-27	positive	0.3182	positive	0.35	google_play
8cd152ac-79ad-4248-8a85-574943011aa6	3	love dark theme give modern feel n make comfortable use	5	2025-10-28	positive	0.8176	positive	0.2375	google_play
924bdf3b-0b78-4402-9aaf-d1cbc39cc6af	2	kindly request bank abyssinia address issue mobile slow ha numerous problem frequently experience downtime user experience also poor thank	1	2025-10-28	positive	0.3182	neutral	-2.220446049250313e-17	google_play
5b430dc9-06e5-4015-a4cb-7c671ff8ae9c	3	ha replaced several others ha everything need one place	5	2025-10-28	positive	0.5859	neutral	0	google_play
6cbe56f6-0aff-4ee7-a7fe-2c1ccf6244e4	3	impressive consistently improving using month improved lot term not beauty also performance wise	5	2025-10-28	positive	0.8492	positive	0.65	google_play
db4710e2-0fb3-459c-a3a5-69445d4cb270	3	make day day payment easy everything work perfectly save lot time	5	2025-10-28	positive	0.8834	positive	0.7166666666666667	google_play
9188bb05-84eb-4c73-a234-31c0b5d503b7	3	amazing name truly supper	5	2025-10-28	positive	0.7717	positive	0.6000000000000001	google_play
be6dc291-6fb0-427b-8553-d735553e3313	3	true banking super dashen super combine great design security impressive range feature highly recommended anyone looking complete digital banking experience	5	2025-10-28	positive	0.9701	positive	0.3845833333333333	google_play
c68cdc01-a66b-40fe-a6b7-cbb1487156f4	3	design clean modern everything work smoothly without bug love reliable make banking convenient	5	2025-10-28	negative	-0.17	positive	0.3666666666666667	google_play
593462a4-2b65-4980-a492-9eeef5f116ca	3	dashen super game changer sleek user friendly interface lightning fast response seamless navigation make every task breeze love organized layout clear feature save time daily fantastic work highly recommended effortless banking	5	2025-10-28	positive	0.9712	positive	0.1768333333333333	google_play
426191d1-9b6d-4582-aeae-55633c041d3e	2	not open problem please solve problem	1	2025-10-28	positive	0.5194	neutral	0	google_play
1ee92e14-11e6-4db1-8a6c-a627e42c2089	3	ha evolved impressively time latest release add dark light mode enhance usability design intuitive modern clearly built user mind setting benchmark digital banking	5	2025-10-28	positive	0.7964	positive	0.2928571428571428	google_play
211b2b4d-826d-4192-9fa8-25d7e38c7666	3	dashen superapp keep improving theme option beautiful overall experience faster smoother ever	5	2025-10-28	positive	0.7717	positive	0.425	google_play
9f1611c8-4469-40f3-9b6e-2736c5c13f4e	3	appreciate allowed access multiple service one centralized place thank dashen bank	5	2025-10-28	positive	0.6369	neutral	0	google_play
90d2468b-101a-4006-ae49-d07185b49594	3	finally banking made simple everything need one super true game changer managing finance go	5	2025-10-28	positive	0.7717	positive	0.0566666666666666	google_play
86b26648-6711-4439-a44d-55e9aa090353	3	amazing ui ux dark mode look absolutely awesome	5	2025-10-28	positive	0.8479	positive	0.4833333333333334	google_play
3628b279-490b-4784-a3ce-d776a20e1bd5	3	design look amazing really appreciate able switch dark light mode small change make big difference	5	2025-10-28	positive	0.7778	positive	0.1857142857142857	google_play
9dd2a5b8-d258-4f07-b8ef-c95c4d1e3a23	3	astonishing interface ease access complete performance	5	2025-10-28	positive	0.3612	positive	0.3	google_play
29976e59-78c6-40e6-bc2a-6ba6e9959a09	3	rarely leave review truly deserves one efficient secure make financial task effortless definitely star experience	5	2025-10-28	positive	0.685	positive	0.175	google_play
99b53c3c-9074-448a-8dd4-4d0ecf85e835	3	stunning ui reliable service	5	2025-10-28	positive	0.3818	positive	0.5	google_play
5c592442-a2c0-4290-95d8-93a1362b4f10	3	appreciate secure feel every transaction come confirmation always get alert immediately	5	2025-10-28	positive	0.743	positive	0.4	google_play
ddeb6fa8-f5c7-46d1-b75d-914ce9f0c460	3	using working really well daily transaction good work	5	2025-10-28	positive	0.6478	positive	0.3	google_play
3677b2d7-95ab-4c95-87af-ef1d3edb674e	3	using month easy use user friendly thanks dashen bank	5	2025-10-28	positive	0.8402	positive	0.3361111111111111	google_play
0d789c56-bdf8-489e-8f96-c6508734fade	3	one user friendly impressive encountered banking sector	5	2025-10-28	positive	0.7579	positive	0.6875	google_play
c3145a5d-590e-4a19-912a-5dd5a269933b	1	abebaw zenebe	5	2025-10-28	neutral	0	neutral	0	google_play
ee043207-5d2f-45ce-9f03-06d35d585e8b	1	best	5	2025-10-28	positive	0.6369	positive	1	google_play
7390e5aa-2f26-4ef8-aaec-ad6c80e8fc8e	1	good	5	2025-10-28	positive	0.4404	positive	0.7	google_play
e7f8cad9-e352-4406-8ff1-799a8cdee3ef	1	strong	5	2025-10-28	positive	0.5106	positive	0.4333333333333333	google_play
3910dba1-f9d9-4ed9-831f-ed8c179dbfe1	1	good	5	2025-10-28	positive	0.4404	positive	0.7	google_play
163201b7-323d-4462-850b-c8453dfcb4cf	3	dashen bank super incredibly convenient easy use fast reliable great manage everything one place	5	2025-10-29	positive	0.9038	positive	0.5333333333333334	google_play
1e3e6da6-3485-42a0-bad9-33ae040acb12	3	viry good	5	2025-10-29	positive	0.4404	positive	0.7	google_play
e90e8464-1394-4ff6-a978-4868c10d4d2a	1	abdulakim abrahim elemoo	5	2025-10-29	neutral	0	neutral	0	google_play
e247be88-2156-4a00-acbf-804197e60345	1	NaN	1	2025-10-29	neutral	0	neutral	0	google_play
0ed12f63-db54-423b-b9f8-093754cf0d05	1	niiceh	5	2025-10-29	neutral	0	neutral	0	google_play
ee7fb8e2-bcde-4ae5-8ac5-49450e57dd5c	2	NaN	5	2025-10-29	neutral	0	neutral	0	google_play
1702ee84-35c4-40fe-9971-9870d47d21f8	1	good no dark mode add	3	2025-10-29	positive	0.1779	positive	0.3874999999999999	google_play
57912538-8398-4446-95f5-85a0c28e7a98	3	worst ever istg	1	2025-10-29	negative	-0.6249	negative	-1	google_play
a6910eb7-f2dc-4cdb-badc-65becc5513f1	1	love b c every option clear supportive	5	2025-10-30	positive	0.8402	positive	0.3666666666666667	google_play
8312e6d0-3b41-4061-b83f-54f6fcb4317a	2	worst ever	1	2025-10-30	negative	-0.6249	negative	-1	google_play
a2d5bdf0-ff92-408b-be55-a4bfa7b61fbc	2	sorry doe not work android slow bank fast please	1	2025-10-30	positive	0.25	negative	-0.2	google_play
e938df24-05ce-4d22-adcc-ae6d3a74d22a	3	excellent promotion	5	2025-10-30	positive	0.5719	positive	1	google_play
99b90e10-84e8-4a3d-b564-b6b1fc10698e	3	emplyees tell came store actually different	1	2025-10-30	neutral	0	neutral	0	google_play
8e7a821b-fa3e-4d69-aaed-7ef7e4bc9019	3	interesting	5	2025-10-30	positive	0.4019	positive	0.5	google_play
3dff5082-039f-40a3-8d75-11dbf6ed6f44	3	nise good	5	2025-10-30	positive	0.4404	positive	0.7	google_play
a0165d49-aca9-41e3-929f-ef67fccf3f56	3	seems improvement not know going sometimes get collapseed not expected dashen bank amongst famous greatest bank	1	2025-10-30	positive	0.802	positive	0.5166666666666667	google_play
322b8846-bfa9-46cc-bd78-3764c23d0c37	3	good	5	2025-10-30	positive	0.4404	positive	0.7	google_play
54ec2a20-6d4c-4934-8f43-95bcbfc419ae	3	worst ever extremely unreliable shame big bank	1	2025-10-31	negative	-0.8166	negative	-0.375	google_play
f4d2d316-2fb6-4e53-b3e0-90ccc05938f5	1	good clear use	4	2025-10-31	positive	0.6705	positive	0.3999999999999999	google_play
a2b10118-101d-4ee3-ad6f-61980614aa3b	3	slow not opening fast	1	2025-10-31	neutral	0	negative	-0.05	google_play
dabc6ff9-8f83-422b-add0-463dcdfa4dba	1	mobile banking broblem	5	2025-11-01	neutral	0	neutral	0	google_play
2ccfdda8-3a7e-4c83-a336-837799716a01	3	slow	1	2025-11-01	neutral	0	negative	-0.3	google_play
182fcbaf-4ada-4f02-9f46-5c9b795e9c92	1	good job	5	2025-11-01	positive	0.4404	positive	0.7	google_play
b5eb945c-5712-48fa-9de9-b1817c6fa1b8	1	good	3	2025-11-01	positive	0.4404	positive	0.7	google_play
d099e425-3a97-47f7-b671-520b735f3b3d	3	nice	5	2025-11-01	positive	0.4215	positive	0.6	google_play
34e38910-0b27-4048-954e-82aa66d61c43	3	might worst banking ever used dont know kind bug suddenly stop working say temporarily unavailable simple feature like viewing account balance person visit wa no help took longer hour fix even week later problem going stop using bank altogether shame decent bank	1	2025-11-01	negative	-0.9198	neutral	-0.0388888888888888	google_play
9f025499-c17d-4452-bb71-3c2b7b1c4500	3	recent wa great home page cluttered promotion banner really hurt experience think stopped banking started promote b c ad also full bug	1	2025-11-01	positive	0.2748	positive	0.3375	google_play
59498129-d37f-4693-a7e7-834300661621	3	latest version could not even see balance send money anything say service unavailable fixed soon	5	2025-11-01	neutral	0	positive	0.3	google_play
b2ebcf25-b1be-471a-8160-4d07c97a9d87	1	wow	4	2025-11-02	positive	0.5859	positive	0.1	google_play
ad025898-2642-44d9-81ea-916fde8f4a44	1	nice	5	2025-11-02	positive	0.4215	positive	0.6	google_play
df1f28f7-9a40-4a51-83bb-7e2fb7bc932c	2	like	5	2025-11-02	positive	0.3612	neutral	0	google_play
b9c85a77-6315-4df3-844d-63d6e0fba45b	3	wow dashen bank	5	2025-11-03	positive	0.5859	positive	0.1	google_play
2abe9685-d09b-407a-9f01-1acdab932ded	3	amazing	5	2025-11-03	positive	0.5859	positive	0.6000000000000001	google_play
2446e1d4-37e7-4e7f-b182-bb862c9ac26c	1	not working phone	5	2025-11-03	neutral	0	neutral	0	google_play
ee4d489f-04f2-428c-80bf-e795c79582fe	1	recent unable download receipt not see name account holder previously transacted important please fix asap	1	2025-11-03	positive	0.4767	negative	-0.0666666666666666	google_play
398ac276-dd9c-4eb7-8edb-0ce30a96ab22	1	cbe need show transaction fee transaction confirmed not big issue fee no longer insignificant	3	2025-11-03	negative	-0.5574	positive	0.2	google_play
6b603751-56ea-4108-95f6-a26ee49a7bdf	2	nice	5	2025-11-04	positive	0.4215	positive	0.6	google_play
e7e0dd5b-59ee-4ed8-abe8-821ed28c1a6f	2	application irritating use functionality doe not even work like card management need good idea reference banking application	3	2025-11-04	negative	-0.2982	positive	0.1499999999999999	google_play
360a6c12-d948-4ce0-aea6-267b8eaaa743	3	ha improved much lately working getting yet not fully fixed time night doe not work think problem wa launched early	3	2025-11-04	positive	0.8052	neutral	-0.0333333333333333	google_play
8ffcaec9-4351-4cc7-973c-1d86365894f0	3	rarely leave review truely deserves one efficient secure reliable make fanancial task effortless definitely star exceptional	5	2025-11-04	positive	0.7934	positive	0.3433333333333332	google_play
ba74c62f-ad24-42ab-bbdf-b56a765ba124	3	dashen bank super latest version online banking system gift dashen bank u thanks dashen	5	2025-11-04	positive	0.8658	positive	0.3444444444444444	google_play
8eb02f5b-df9f-420c-b3b8-834820e32c3c	3	boring	1	2025-11-04	negative	-0.3182	negative	-1	google_play
e0bb7d0a-fe46-4423-b26d-c9ad4a40afc2	3	good	5	2025-11-04	positive	0.4404	positive	0.7	google_play
d4d30d69-4b0a-4ad0-8430-7aa85f6467e6	3	supper	5	2025-11-04	neutral	0	neutral	0	google_play
e6ada560-df66-4170-b0cb-e04a65ead451	3	wonderful	5	2025-11-05	positive	0.5719	positive	1	google_play
1851fb0d-c940-4c97-a338-7b1a9a8ef553	1	number not write pin verification	5	2025-11-05	positive	0.0772	neutral	0	google_play
b6fa2156-34bf-44c3-a426-99521f790a04	1	uninstalled need visit nearby bank go ask sim card ha not used buy sim card go back sim card reach service provider say authentication pin not arrive system not working come back tomorrow	1	2025-11-05	positive	0.3612	neutral	0	google_play
b5a68eed-026c-4f6f-aba9-9a7490d9466f	1	loved	5	2025-11-05	positive	0.5994	positive	0.7	google_play
362b7c91-55d7-45f5-bcd5-7088f6b09e3a	3	dashen super impressive fast easy use provides smooth access essential banking service money transfer bill payment balance check feature work efficiently without issue design clean user friendly great step forward digital banking keep good work dashen bank	5	2025-11-05	positive	0.9672	positive	0.4189393939393939	google_play
8fa4d905-fcd5-4124-8745-0014e9e746cf	2	launch time long also ha dozen bug addition ha long time get	1	2025-11-05	positive	0.5859	neutral	-0.05	google_play
6865f69e-cc69-42db-941a-85cc16ce6bf8	3	betam kerfafa naw	1	2025-11-05	neutral	0	neutral	0	google_play
b91bcd0e-b1b1-42f1-acbb-9445f701adf3	3	exceptional	5	2025-11-05	neutral	0	positive	0.6666666666666666	google_play
2e58305b-5b99-4fc5-b4f0-1be5623a0558	3	worst ever	1	2025-11-05	negative	-0.6249	negative	-1	google_play
6bf6ad8e-bd05-454f-ac8f-fc11c1aeedb5	3	dashen always two step ahead	5	2025-11-05	neutral	0	neutral	0	google_play
e2e4f955-c79a-4192-a71e-950a3fde3907	3	please try fix barrier bank specially commercial bank ethiopia	3	2025-11-05	positive	0.2023	neutral	0	google_play
423d9266-c93e-436a-9a41-3a18a1f020ad	3	NaN	5	2025-11-05	neutral	0	neutral	0	google_play
703187ba-cd29-46c8-9bdf-bdfd54668e67	3	using	5	2025-11-05	neutral	0	neutral	0	google_play
3ee7c37d-fd2c-4ddc-892b-98efdc690700	1	nice	5	2025-11-05	positive	0.4215	positive	0.6	google_play
b23ea516-d92d-4e3b-88d4-d0bc679d23cb	3	go ahead	5	2025-11-05	neutral	0	neutral	0	google_play
d18aa410-4dc1-4c26-8f7d-a866f5b498ba	3	love feature perfect asks many time activate need visit nearest branch take time great like	5	2025-11-05	positive	0.9382	positive	0.7	google_play
7bf9a8a8-2718-4a3b-85f0-3ac3b628ec84	3	wonderful developed local talent deserves appreciation continue evolve exciting feature	5	2025-11-05	positive	0.9186	positive	0.35	google_play
d1284a04-7811-4902-a678-d9d14aece75f	1	tankyu	5	2025-11-05	neutral	0	neutral	0	google_play
468dd43c-8489-4032-8356-b0f924ed9177	1	ok	1	2025-11-05	positive	0.296	positive	0.5	google_play
b47d9d1d-7a70-4074-833d-2c1056dda3a0	3	amzing	5	2025-11-06	neutral	0	neutral	0	google_play
f5360419-4441-4084-a1c2-eb9b07206b36	3	yr lc ucp icc loan	5	2025-11-06	neutral	0	neutral	0	google_play
215de933-fc3e-45ce-9bd9-b7d6d113c8c3	3	easy use friendly	5	2025-11-06	positive	0.7269	positive	0.4041666666666667	google_play
80a217d4-a389-40ab-bd17-b6c164c76aaa	3	not attractive friendly check awash cbe	1	2025-11-06	negative	-0.6167	neutral	-0.0125	google_play
631f58bb-d098-4fe1-8fe5-a3abc2dd6407	1	bank	5	2025-11-06	neutral	0	neutral	0	google_play
a2e6c530-2dc1-4b30-b1f7-3530676a59a3	1	good	5	2025-11-07	positive	0.4404	positive	0.7	google_play
aa74e8f9-67d1-486a-a601-761ce0c79a4e	2	barely work always fails connect	1	2025-11-07	negative	-0.3687	negative	-0.225	google_play
6308cb59-e418-4559-80e1-b53d44ce7c9a	2	fav	5	2025-11-07	positive	0.4588	neutral	0	google_play
33b76ccc-05cf-445d-84a6-a5e516bac406	2	best	5	2025-11-07	positive	0.6369	positive	1	google_play
34c15681-d4e1-4690-b330-13b138d9adf2	3	amazing	5	2025-11-07	positive	0.5859	positive	0.6000000000000001	google_play
84e34f1c-ea3e-439c-8076-f8804fa9b556	3	wooow	5	2025-11-07	neutral	0	neutral	0	google_play
c62e6956-30d4-4d76-8b01-26087c21de71	3	ok	5	2025-11-07	positive	0.296	positive	0.5	google_play
25ea2324-c911-4710-b2f0-4f5115675cbe	3	nice	5	2025-11-07	positive	0.4215	positive	0.6	google_play
b1450711-16b6-4649-abcd-19bfc90d87d4	3	best	5	2025-11-07	positive	0.6369	positive	1	google_play
fb2f9d25-5520-48c5-9c21-88e7523bfb61	1	bayeee galatooma kana caalati nu gammachisa	5	2025-11-08	neutral	0	neutral	0	google_play
61a85d6e-8111-4add-9c9a-ebf8a25b2bca	2	best	5	2025-11-08	positive	0.6369	positive	1	google_play
493dc1a0-1d88-4d43-93ab-9b3c9d7426d9	2	meet genuine tried not functional helping welldoingwith boa ethiopia fastandrelevant morconnecting digitalyworld digitalyworld thanks	5	2025-11-08	positive	0.2528	positive	0.3	google_play
c6661ae9-95ab-4a2d-be7b-ad93bb48f278	2	would like share feedback regarding application frequently experience disruption doe not function properly often freezing failing load issue affecting workflow efficiency kindly review address problem ensure smoother performance	1	2025-11-08	positive	0.4767	positive	0.2333333333333333	google_play
e12a96bf-137e-4fcb-9b10-5933a6b8dedd	1	not functional week	4	2025-11-08	neutral	0	neutral	0	google_play
3f4797ed-7cfa-494f-b83d-3ac99d0d8416	1	nice	5	2025-11-08	positive	0.4215	positive	0.6	google_play
be813f1d-5060-452f-be52-f2b39fceff63	1	good	5	2025-11-08	positive	0.4404	positive	0.7	google_play
4cdd9b19-e553-4afb-93c9-270d15315c28	3	ok	5	2025-11-08	positive	0.296	positive	0.5	google_play
a39b1093-9058-4d1e-a200-7347cb946677	1	good	5	2025-11-08	positive	0.4404	positive	0.7	google_play
65e917f9-f327-427f-bc75-a7ec2ec45687	1	like	5	2025-11-08	positive	0.3612	neutral	0	google_play
1f2786d3-7b51-4467-95f2-fb7ef877469a	3	service good	5	2025-11-09	positive	0.4404	positive	0.7	google_play
d5e77822-77c3-4c94-b062-4c36c8b6e210	3	good not fast	5	2025-11-09	positive	0.4404	positive	0.3	google_play
ef42c724-ee02-45e6-8c6f-f0f4a8ab7fc6	3	financial system must improved	4	2025-11-09	positive	0.4767	neutral	0	google_play
e83b2d32-a305-4408-9c87-40f05b650185	1	absolute trash not woking time server even though using g data internet steal not working use work even data package trash not even send money	1	2025-11-09	negative	-0.4939	positive	0.2	google_play
3f27b2bb-4631-41e2-acb5-beaab2285532	1	good good	5	2025-11-09	positive	0.7003	positive	0.7	google_play
09607d06-8ab3-45a4-bc8e-c824930c888a	3	good experience	5	2025-11-09	positive	0.4404	positive	0.7	google_play
9f9ace0f-c63b-4482-a159-12c2bcd357ae	2	worest banking ever seen fake bad leave	1	2025-11-10	negative	-0.7783	negative	-0.5999999999999999	google_play
6a7a5c64-4056-404d-b37e-60bf1d6ee90a	2	best best	5	2025-11-10	positive	0.8555	positive	1	google_play
0564e4c4-c11e-4d31-b2d8-bdc5725ebb2c	3	nice ever seen	5	2025-11-10	positive	0.4215	positive	0.6	google_play
22a15e60-01d4-4c7d-8405-fc4daf00de55	1	statement not used wanted	1	2025-11-10	neutral	0	neutral	0	google_play
f23eb6ac-a9fb-4df1-95c3-9441fb34d0dd	1	not refresh	2	2025-11-10	neutral	0	neutral	0	google_play
8a6f01b8-04dd-4c38-9148-1e46f828cc3d	1	good	4	2025-11-10	positive	0.4404	positive	0.7	google_play
906a1d95-30d1-47ca-bbe9-8fb33460c535	1	NaN	5	2025-11-10	neutral	0	neutral	0	google_play
e9425647-f1d3-4f35-87e5-e8984ba5cce4	1	best	5	2025-11-10	positive	0.6369	positive	1	google_play
6e59b9f4-f3f4-4481-8cea-cf0e7d58e220	1	constantly glitch not stop loading despite decent connection cleared cache telebirr way	1	2025-11-10	positive	0.1511	positive	0.0833333333333333	google_play
898109d7-385c-4fc9-b8a6-bd6e2a303a39	3	nasty bank even supper not working well calling not response please not use loss time energy everything hopeless bank	1	2025-11-10	negative	-0.7441	negative	-1	google_play
8b783bea-df08-43e8-915f-c459fb841a11	1	excellent sometimes not connect	5	2025-11-10	positive	0.5719	positive	1	google_play
5623e102-0f25-4444-96f2-9e4f96e6994b	1	good	5	2025-11-10	positive	0.4404	positive	0.7	google_play
ef00529e-94ab-4df9-a7e0-2bee0d213f49	1	not access properly think need	1	2025-11-10	neutral	0	neutral	0	google_play
8c0c3699-3b4d-4b4c-bf9b-cf6f34d7e617	1	wow apk	5	2025-11-10	positive	0.5859	positive	0.1	google_play
52b82149-19da-40cd-b8ce-a86e0b2c789c	2	good	4	2025-11-10	positive	0.4404	positive	0.7	google_play
57e7e490-7e00-49b4-85ce-02df5c180255	1	bad	1	2025-11-10	negative	-0.5423	negative	-0.6999999999999998	google_play
511966b6-2575-4189-b96d-62b0af2bb5ba	1	best	5	2025-11-10	positive	0.6369	positive	1	google_play
4a33e0ac-be2f-4da7-a573-5b66581b15d9	1	wow	5	2025-11-10	positive	0.5859	positive	0.1	google_play
6cc81f72-bf2d-4406-bd58-d2b16058b713	1	nice	5	2025-11-10	positive	0.4215	positive	0.6	google_play
19466a41-ca52-4cb0-a343-a6db9296cef7	1	bad	4	2025-11-10	negative	-0.5423	negative	-0.6999999999999998	google_play
95c51b5c-93b3-40dc-b10d-7ea07b503570	1	best	5	2025-11-10	positive	0.6369	positive	1	google_play
fec786b2-90d3-454d-a63e-bf53bf71c2a6	3	called super complete disappointment confusing slow full glitch honestly feel like wa designed test people patience not help bank calling super joke one useless ever used	1	2025-11-11	positive	0.7385	neutral	0.0018518518518518	google_play
b4a45bdc-60cc-4355-92f7-9291f8c59ee5	1	cbe choice	4	2025-11-11	neutral	0	neutral	0	google_play
f38caf5b-4580-4a9f-819f-f4cd3d789176	2	fast simple	5	2025-11-11	neutral	0	positive	0.1	google_play
6e114d46-b6cd-4ac4-9b39-611be7092468	3	best mobile banking ethiopia	5	2025-11-11	positive	0.6369	positive	1	google_play
f7a289b4-7031-4d28-abb6-8b292f52241e	1	awesome	5	2025-11-11	positive	0.6249	positive	1	google_play
60963970-3671-488b-8810-3b3edaddf571	1	not able transfer not responding	1	2025-11-11	neutral	0	negative	-0.25	google_play
e9c4773a-03ec-4623-9c97-32370e43cc66	1	convenient	5	2025-11-11	neutral	0	neutral	0	google_play
cd12a5ee-2573-44e9-81ea-de8118bb8fa2	1	ok	5	2025-11-11	positive	0.296	positive	0.5	google_play
292edafd-2214-4c68-a18e-744b5a0f3db4	3	excellent use perfectlly pay transfer tele airtime	5	2025-11-12	positive	0.5106	positive	1	google_play
34d6492b-f6e7-42ed-851a-348ab215c36a	1	sync problem may date stack may help pls	5	2025-11-12	positive	0.0772	neutral	0	google_play
82c43412-9579-4b3c-b17e-702aef388e16	1	good	5	2025-11-12	positive	0.4404	positive	0.7	google_play
3a8163db-3a24-4d28-bba2-58bb438391aa	3	wow dashen bank super	5	2025-11-12	positive	0.8271	positive	0.2166666666666666	google_play
1315ef77-540f-4b87-9b6a-7868f1a343e0	1	smart	4	2025-11-12	positive	0.4019	positive	0.2142857142857142	google_play
a18b512c-7431-4903-9cc3-1002cf449cff	1	like	5	2025-11-13	positive	0.3612	neutral	0	google_play
53570f06-6252-49fc-9626-b9e88fe490a9	3	thank	1	2025-11-13	positive	0.3612	neutral	0	google_play
a1d46fd6-d7a6-458a-b1a2-1b5679bd7c02	3	system failure transfer others account	2	2025-11-13	negative	-0.5106	negative	-0.3166666666666667	google_play
490c7067-5296-4df0-902e-67a6707a1506	1	good	5	2025-11-13	positive	0.4404	positive	0.7	google_play
0ed79d57-a54c-4541-9df0-67e1e8c72be3	2	trying activate keep loading security question page ha two day	1	2025-11-13	positive	0.5859	neutral	0	google_play
96f98a42-ec49-4dbf-b37d-216f6770a700	1	good	5	2025-11-13	positive	0.4404	positive	0.7	google_play
dde272da-1847-40d2-98c4-dcb5e19e7eac	1	good	5	2025-11-13	positive	0.4404	positive	0.7	google_play
3ece3a7c-9557-45ae-8053-2bf5568f2861	3	ui ux good doe not function properly shame leading tech bank ha amole far	1	2025-11-13	positive	0.7817	positive	0.2666666666666666	google_play
7bdc58ea-d854-4b9c-9748-642bada48ecd	1	nice useful like	5	2025-11-13	positive	0.802	positive	0.4499999999999999	google_play
dbd90565-cfa7-4a22-a297-b37face26e17	3	nice	5	2025-11-14	positive	0.4215	positive	0.6	google_play
35ecd30c-9d1c-40c7-90c0-592d9ea5d0bd	3	one super smooth navigation transaction lifestyle service	5	2025-11-14	positive	0.5994	positive	0.3666666666666667	google_play
b8b11ccd-acac-419e-8ffc-16c86972ffd9	3	amazing experience ot convenient easy use	5	2025-11-14	positive	0.7717	positive	0.5166666666666667	google_play
02b493af-68e8-4109-95e9-38dfce50d742	3	smooth easy	5	2025-11-14	positive	0.4404	positive	0.4166666666666667	google_play
9fb5fdaa-6172-43c1-ba46-2fcdfcd84c13	2	not working	1	2025-11-15	neutral	0	neutral	0	google_play
58ccb5e9-0cf7-413c-8bb4-6515d4863bc1	2	good wa live abroad enter otp code didnt make write code want self write thats not fair please wise like	5	2025-11-15	positive	0.0572	positive	0.296590909090909	google_play
ecafe965-6f57-4ef5-88ee-9ef8adca142d	3	clear presize	5	2025-11-15	positive	0.3818	positive	0.1	google_play
8babe417-ec30-4ba1-a860-03150c5daf7c	3	eyita tip	1	2025-11-15	neutral	0	neutral	0	google_play
a9d5aab4-636f-4392-8bc6-ccad890de66e	1	seriously going pay beneficiary option completely disabled android user yet io user get full access without restriction android user treated like second class customer service clearly not experience kind platform bias unacceptable either give everyone feature transparent limiting functionality right feel unfair frustrating	1	2025-11-15	negative	-0.6324	neutral	-0.0275132275132275	google_play
9b4043ef-a80d-4e57-bbad-1b2784dc4c45	1	fantastic	5	2025-11-16	positive	0.5574	positive	0.4	google_play
c384e116-009b-4ff7-85fc-5d0f10f68cda	1	excellent	5	2025-11-16	positive	0.5719	positive	1	google_play
3f06e0e7-cb06-42f1-b61c-2bd59d7713af	1	sifen	5	2025-11-16	neutral	0	neutral	0	google_play
58bd2807-7583-4142-bd14-75e98e1dcda3	1	ok	3	2025-11-16	positive	0.296	positive	0.5	google_play
27acef09-1136-4d2f-9f5d-82c4a30abd2d	3	nice	5	2025-11-16	positive	0.4215	positive	0.6	google_play
4f5a3389-5bda-4229-a5d3-4b749fc05764	1	like	4	2025-11-16	positive	0.3612	neutral	0	google_play
b2fb954d-1f3b-4b0b-9ab2-7a6da576cf26	3	super evry thing need tap away	5	2025-11-17	positive	0.5994	positive	0.3333333333333333	google_play
370d336c-0c66-4ea8-a043-d044d4560101	1	star	5	2025-11-17	neutral	0	neutral	0	google_play
b81fb6db-71c3-4009-9324-fe187120823c	1	optional bank	5	2025-11-17	neutral	0	neutral	0	google_play
15bd455e-6fb5-4dc8-8068-cc051fcd5d79	3	say disable developer option disabled not working still	1	2025-11-17	neutral	0	negative	-0.2	google_play
20f428da-b44d-4d32-8ba6-6a7432a66028	3	always updating bad stability	1	2025-11-17	negative	-0.5423	negative	-0.6999999999999998	google_play
c198f602-e9fb-4b61-ad3a-8efe42269b8d	2	cant belive could find worst bank ever yet simple fix problem company ignored no body business kind	1	2025-11-18	negative	-0.7845	negative	-0.1333333333333333	google_play
dabda953-ac0a-476a-8791-c6a66deebc20	3	really slow not sure issue even bank transfer not working	2	2025-11-18	negative	-0.3017	negative	-0.275	google_play
51268efb-62a7-4121-9fc7-d0b377a32aab	3	bill payment option limited please add ethio telecom bill electric bill etc instead adding nonsense banking	1	2025-11-18	negative	-0.3182	negative	-0.0714285714285714	google_play
afad642f-39c4-4db0-adbf-5fbe7143f960	2	good	5	2025-11-18	positive	0.4404	positive	0.7	google_play
eeb816b9-14d4-4d91-a3b5-90b391850faa	3	dashen super impressive fast easy use provides smooth access essential banking service money transfer bill payment balance check feature work efficiently without issue design clean user friendly great step forward digital banking keep good work dashen bank	5	2025-11-19	positive	0.9672	positive	0.4189393939393939	google_play
942e6ee2-44c6-45f8-b978-01e9b62d001f	1	suckkkks	1	2025-11-19	neutral	0	neutral	0	google_play
9b9850c0-7914-49c8-a51c-7265775accfe	1	not allowing transfer showing current statement	1	2025-11-19	neutral	0	neutral	0	google_play
9094dfc5-ed8d-4ab9-8605-0f5681a5ee8e	1	love	5	2025-11-19	positive	0.6369	positive	0.5	google_play
3c30aa12-7f92-49c8-8986-69ed8b81f79f	1	fast convenient thanks dedication bank provide good option cuatomers	1	2025-11-19	positive	0.7003	positive	0.3666666666666667	google_play
48d2b2a8-40ea-47bc-b524-322d0d7bf7e4	1	make life easy	5	2025-11-19	positive	0.4404	positive	0.4333333333333333	google_play
b9b4ccbb-9d0b-4d61-b7b5-90f5d83b3838	1	securr	5	2025-11-19	neutral	0	neutral	0	google_play
ad11fbc9-52cc-48f3-adc4-d348a5194089	1	nice	5	2025-11-19	positive	0.4215	positive	0.6	google_play
b9fa948b-07bc-41f5-9e49-5e612b9a9db6	2	lag unbelievable need suks	1	2025-11-19	negative	-0.1531	negative	-0.25	google_play
807ff291-9236-45ca-8c37-3028ef08f388	1	no word explane nice	5	2025-11-20	positive	0.1531	positive	0.6	google_play
afc51143-03ed-4129-b47b-fd1eaad21b07	1	great love	5	2025-11-20	positive	0.8519	positive	0.65	google_play
6e1b6127-57b8-44a9-ab08-cdf7e0782c7d	1	mid application annoying	3	2025-11-20	negative	-0.4019	negative	-0.4	google_play
d4184dff-ee60-4895-846f-13872d75735a	1	used morethan one year	4	2025-11-20	neutral	0	neutral	0	google_play
3a277a8e-a6b2-4dac-adb4-8fb592d1c859	1	good	5	2025-11-21	positive	0.4404	positive	0.7	google_play
83111490-271d-4491-9b82-8d8ddf3afb26	1	absolutely right	5	2025-11-21	neutral	0	positive	0.2857142857142857	google_play
f2bad133-c6ea-4fd5-bc97-1e3fbba1c2c9	1	good	5	2025-11-21	positive	0.4404	positive	0.7	google_play
2d630116-152e-4dbb-bb7a-d7f93bbafbc5	2	waw	5	2025-11-21	neutral	0	neutral	0	google_play
efddfaa5-0542-45ef-80ae-8183cf70bdb0	1	excellent	5	2025-11-22	positive	0.5719	positive	1	google_play
f077c10c-a958-4812-a779-1077c52fbf45	1	smart recommend everyone	5	2025-11-22	positive	0.6369	positive	0.2142857142857142	google_play
d36fbdcb-b57e-4384-8e5b-ae549e25b33e	2	keep notifying disable developer option quiet not enabled always bring another type problem	1	2025-11-22	negative	-0.4019	neutral	0	google_play
cd144ce6-efeb-41c2-8247-e57a64bb0181	1	nice	5	2025-11-22	positive	0.4215	positive	0.6	google_play
8d4577a0-0e73-4113-9479-5764db25dcb7	1	reason got ye chogara himem	1	2025-11-22	neutral	0	neutral	0	google_play
9b84c588-bde5-46b7-930c-c638ca26212d	3	exceptional product	5	2025-11-23	neutral	0	positive	0.6666666666666666	google_play
ad9f4094-ff79-4353-a8b0-d00cfba75ed5	1	wow	5	2025-11-23	positive	0.5859	positive	0.1	google_play
6f7113d8-180e-4f3d-83d9-fbe55f9edd69	2	not use	3	2025-11-23	neutral	0	neutral	0	google_play
3d668840-c868-4164-8efe-9295ef537613	3	easy	3	2025-11-23	positive	0.4404	positive	0.4333333333333333	google_play
07a6da77-35b8-4ea4-8138-90770842ff0e	1	good	5	2025-11-23	positive	0.4404	positive	0.7	google_play
f2f0cff2-6181-4a3a-926f-5b3491ca4cf8	1	not send money people telebirr wallet	1	2025-11-24	neutral	0	neutral	0	google_play
6518498e-441c-407d-b546-35a12a98645a	1	good	5	2025-11-24	positive	0.4404	positive	0.7	google_play
3a75b79a-002f-4fc2-b6f0-dd8d187e8663	1	thanks blc help use time	5	2025-11-24	positive	0.6808	positive	0.2	google_play
7b5b3f8c-a0f4-4a15-973a-ff5971ad15fb	1	good banking service fast service	5	2025-11-24	positive	0.4404	positive	0.4499999999999999	google_play
fd178fb7-7026-4d02-98a0-5c86c3bd56f5	1	suddenly asked enter verification key received get verification key nearest cbe branch australia expect no nearest furthermost cbe branch frustrating manage bank account	1	2025-11-25	negative	-0.6249	negative	-0.1	google_play
d29af33e-3f63-4b7e-9312-b63f7d2c6724	3	care phone setting tell turn phone develoler option thing cost lot user willing leave bank turn thing fear security issue fix side not mine	1	2025-11-25	positive	0.296	positive	0.25	google_play
f1861daf-a1ed-407a-9e7c-295edbb3877d	1	good	5	2025-11-25	positive	0.4404	positive	0.7	google_play
7ef21cf6-d226-4370-ab96-01c909dbc58d	2	good	5	2025-11-25	positive	0.4404	positive	0.7	google_play
896ee9aa-a483-4b1f-b73c-0a26c4b54790	2	time not working properly	1	2025-11-25	neutral	0	neutral	0	google_play
15c3586b-e672-48db-b3c0-09508375763f	2	good service	5	2025-11-25	positive	0.4404	positive	0.7	google_play
571c66c6-fd18-437b-b8e5-8c443e9db2df	1	nice	5	2025-11-25	positive	0.4215	positive	0.6	google_play
99d376ea-4824-4af9-a093-27360acc3a5c	1	best	5	2025-11-25	positive	0.6369	positive	1	google_play
9504f5cc-7f16-4fe0-8ba5-f76eef162f8b	3	fast easy communicate available area keep make happy application thank dashen bank effort commitment dedication appricated work	5	2025-11-26	positive	0.8934	positive	0.4583333333333333	google_play
4ed89e8c-16dc-4763-94ca-04d05cf799a5	2	not user friendly requires huge connectivity also lag many time	1	2025-11-26	negative	-0.4075	positive	0.425	google_play
3d88a334-958c-4717-9f97-c5d46359e054	1	nice	5	2025-11-26	positive	0.4215	positive	0.6	google_play
81000db5-aa51-467e-826c-fc96160e96a8	1	good application	4	2025-11-27	positive	0.4404	positive	0.7	google_play
809c46d2-730e-446a-9061-2a45e978ad9d	2	good jop	5	2025-11-27	positive	0.4404	positive	0.7	google_play
d2995fb9-63c6-4bfc-8d3c-93a0ee9dba8f	1	bad	1	2025-11-27	negative	-0.5423	negative	-0.6999999999999998	google_play
c69f051a-00f8-4144-8423-b7ebcd328d2d	1	make life easier thank cbe	5	2025-11-27	positive	0.6486	neutral	0	google_play
f28a3a3c-eb94-4aab-88d2-89bcecebcc7b	2	bad exprience crushed	1	2025-11-27	negative	-0.743	negative	-0.3999999999999999	google_play
5112423d-e618-44ba-ba49-62677cb76cd6	1	application important advantage transfer money finance coutry foriegn country	5	2025-11-27	positive	0.4215	positive	0.4	google_play
f8002d06-b5c5-4ed1-9d51-a9a379304cf8	1	advanced stay safe	5	2025-11-27	positive	0.5994	positive	0.45	google_play
bcb34681-1dd4-4781-b400-4393bb10b1d9	1	not work	1	2025-11-27	neutral	0	neutral	0	google_play
ee0dbb0e-4eb0-47b5-9874-c37877493f99	1	good	5	2025-11-28	positive	0.4404	positive	0.7	google_play
11306fb9-5571-4950-8d32-604c5402242f	2	good	5	2025-11-28	positive	0.4404	positive	0.7	google_play
157e868c-386f-4837-bb1f-1301dd194075	3	amazing	4	2025-11-28	positive	0.5859	positive	0.6000000000000001	google_play
\.


--
-- Name: banks_bank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elshaday
--

SELECT pg_catalog.setval('public.banks_bank_id_seq', 3, true);


--
-- Name: banks banks_app_name_key; Type: CONSTRAINT; Schema: public; Owner: elshaday
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_app_name_key UNIQUE (app_name);


--
-- Name: banks banks_pkey; Type: CONSTRAINT; Schema: public; Owner: elshaday
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pkey PRIMARY KEY (bank_id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: elshaday
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);


--
-- Name: idx_reviews_bank_id; Type: INDEX; Schema: public; Owner: elshaday
--

CREATE INDEX idx_reviews_bank_id ON public.reviews USING btree (bank_id);


--
-- Name: reviews reviews_bank_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: elshaday
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.banks(bank_id);


--
-- PostgreSQL database dump complete
--

\unrestrict stzka7W1mzX8J8N8dVytciSzrLM7Fye9S2srSyIXJcbFJFwlO7vKuwU7QldHU0t

