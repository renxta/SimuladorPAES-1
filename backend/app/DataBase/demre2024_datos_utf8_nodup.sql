--
-- PostgreSQL database dump
--

\restrict 8BvgIFWeRR5KW864AzWW6YSbCyicaNBggS2ZrFmirbncW6Wlu7QsYvt7rxuibsA

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
-- Data for Name: universidades; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO ON CONFLICT DO NOTHING public.universidades (id, nombre, acreditacion, sitio_web, direccion, latitud, longitud) VALUES (1, 'UNIVERSIDAD DE CHILE', 7, 'https://www.uchile.cl', 'Santiago', NULL, NULL);
INSERT INTO ON CONFLICT DO NOTHING public.universidades (id, nombre, acreditacion, sitio_web, direccion, latitud, longitud) VALUES (2, 'PONTIFICIA UNIVERSIDAD CATÃ“LICA DE CHILE', 7, 'https://www.uc.cl', 'Santiago', NULL, NULL);
INSERT INTO ON CONFLICT DO NOTHING public.universidades (id, nombre, acreditacion, sitio_web, direccion, latitud, longitud) VALUES (3, 'UNIVERSIDAD DE CONCEPCIÃ“N', 7, 'https://www.udec.cl', 'ConcepciÃ³n', NULL, NULL);
INSERT INTO ON CONFLICT DO NOTHING public.universidades (id, nombre, acreditacion, sitio_web, direccion, latitud, longitud) VALUES (4, 'PONTIFICIA UNIVERSIDAD CATÃ“LICA DE VALPARAÃSO', 7, 'https://www.pucv.cl', 'ValparaÃ­so', NULL, NULL);
INSERT INTO ON CONFLICT DO NOTHING public.universidades (id, nombre, acreditacion, sitio_web, direccion, latitud, longitud) VALUES (5, 'UNIVERSIDAD TÃ‰CNICA FEDERICO SANTA MARÃA', 7, 'https://www.usm.cl', 'ValparaÃ­so', NULL, NULL);
INSERT INTO ON CONFLICT DO NOTHING public.universidades (id, nombre, acreditacion, sitio_web, direccion, latitud, longitud) VALUES (6, 'UNIVERSIDAD DE SANTIAGO DE CHILE', 7, 'https://www.usach.cl', 'Santiago', NULL, NULL);
INSERT INTO ON CONFLICT DO NOTHING public.universidades (id, nombre, acreditacion, sitio_web, direccion, latitud, longitud) VALUES (7, 'UNIVERSIDAD AUSTRAL DE CHILE', 6, 'https://www.uach.cl', 'Valdivia', NULL, NULL);
INSERT INTO ON CONFLICT DO NOTHING public.universidades (id, nombre, acreditacion, sitio_web, direccion, latitud, longitud) VALUES (8, 'UNIVERSIDAD DE VALPARAÃSO', 6, 'https://www.uv.cl', 'ValparaÃ­so', NULL, NULL);


--
-- Data for Name: carreras; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (1, 'ARQUITECTURA', '11001', NULL, 125, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (2, 'ACTUACIÃ“N TEATRAL', '11003', NULL, 25, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (3, 'DISEÃ‘O TEATRAL', '11004', NULL, 25, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (4, 'DISEÃ‘O', '11005', NULL, 65, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (5, 'ARTES VISUALES, LIC. EN ARTES CON MENCIÃ“N EN', '11011', NULL, 90, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (6, 'TEORÃA E HISTORIA DEL ARTE, LIC. EN ARTES CON MENCIÃ“N EN', '11016', NULL, 35, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (7, 'TEORÃA DE LA MÃšSICA', '11017', NULL, 20, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (8, 'INGENIERÃA AGRONÃ“MICA', '11020', NULL, 130, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (9, 'INGENIERÃA FORESTAL', '11021', NULL, 60, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (10, 'MEDICINA VETERINARIA', '11022', NULL, 180, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (11, 'INGENIERÃA EN RECURSOS NATURALES RENOVABLES', '11024', NULL, 70, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (12, 'CONTADOR AUDITOR', '11026', NULL, 72, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (13, 'INGENIERÃA EN INFORMACIÃ“N Y CONTROL DE GESTIÃ“N', '11027', NULL, 143, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (14, 'PEDAGOGÃA EN EDUCACIÃ“N MEDIA EN MATEMÃTICA Y FÃSICA', '11028', NULL, 45, NULL, 1);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (15, 'ARQUITECTURA', '12004', NULL, 66, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (16, 'DISEÃ‘O', '12006', NULL, 90, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (17, 'LETRAS HISPÃNICAS', '12008', NULL, 60, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (18, 'BIOLOGÃA', '12011', NULL, 60, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (19, 'INGENIERÃA', '12039', NULL, 650, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (20, 'DERECHO', '12021', NULL, 325, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (21, 'INGENIERÃA COMERCIAL', '12014', NULL, 418, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (22, 'PEDAGOGÃA EN EDUCACIÃ“N PARVULARIA', '12025', NULL, 80, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (23, 'PEDAGOGÃA EN EDUCACIÃ“N MEDIA EN MATEMÃTICA', '12043', NULL, 40, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (24, 'MEDICINA', '12058', NULL, 82, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (25, 'ENFERMERÃA', '12057', NULL, 120, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (26, 'ODONTOLOGÃA', '12056', NULL, 60, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (27, 'KINESIOLOGÃA', '12061', NULL, 75, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (28, 'NUTRICIÃ“N Y DIETÃ‰TICA', '12060', NULL, 58, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (29, 'PSICOLOGÃA', '12017', NULL, 120, NULL, 2);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (30, 'ARTES VISUALES', '13054', NULL, 50, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (31, 'ASTRONOMÃA', '13055', NULL, 35, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (32, 'GEOFÃSICA', '13056', NULL, 35, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (33, 'PEDAGOGÃA EN INGLÃ‰S', '13057', NULL, 55, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (34, 'TRADUCCIÃ“N/INTERPRETACIÃ“N EN IDIOMAS EXTRANJEROS', '13058', NULL, 73, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (35, 'LICENCIATURA EN HISTORIA', '13059', NULL, 30, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (36, 'TEATRO', '13060', NULL, 40, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (37, 'INGENIERÃA AMBIENTAL', '13061', NULL, 55, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (38, 'INGENIERÃA CIVIL BIOMÃ‰DICA', '13062', NULL, 58, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (39, 'INGENIERÃA CIVIL DE MATERIALES', '13063', NULL, 45, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (40, 'INGENIERÃA CIVIL EN TELECOMUNICACIONES', '13064', NULL, 50, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (41, 'INGENIERÃA ESTADÃSTICA', '13065', NULL, 25, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (42, 'INGENIERÃA CIVIL AEROESPACIAL', '13066', NULL, 18, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (43, 'PSICOLOGÃA', '13067', NULL, 59, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (44, 'INGENIERÃA CIVIL, PRIMER AÃ‘O COMÃšN', '13068', NULL, 150, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (45, 'INGENIERÃA CIVIL', '13069', NULL, 98, NULL, 3);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (46, 'ARQUITECTURA', '14001', NULL, 120, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (47, 'ARTE', '14002', NULL, 55, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (48, 'DISEÃ‘O', '14003', NULL, 70, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (49, 'DERECHO', '14004', NULL, 240, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (50, 'INGENIERÃA CIVIL', '14005', NULL, 150, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (51, 'INGENIERÃA CIVIL ELÃ‰CTRICA', '14006', NULL, 100, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (52, 'INGENIERÃA CIVIL INFORMÃTICA', '14007', NULL, 110, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (53, 'INGENIERÃA CIVIL MECÃNICA', '14008', NULL, 120, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (54, 'PEDAGOGÃA EN EDUCACIÃ“N PARVULARIA', '14009', NULL, 90, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (55, 'PEDAGOGÃA EN EDUCACIÃ“N BÃSICA', '14010', NULL, 95, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (56, 'PEDAGOGÃA EN EDUCACIÃ“N MEDIA EN MATEMÃTICA Y FÃSICA', '14011', NULL, 45, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (57, 'INGENIERÃA COMERCIAL', '14012', NULL, 200, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (58, 'PSICOLOGÃA', '14013', NULL, 90, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (59, 'TRABAJO SOCIAL', '14014', NULL, 80, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (60, 'PERIODISMO', '14015', NULL, 70, NULL, 4);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (61, 'INGENIERÃA CIVIL', '15001', NULL, 400, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (62, 'INGENIERÃA CIVIL ELÃ‰CTRICA', '15002', NULL, 120, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (63, 'INGENIERÃA CIVIL ELECTRÃ“NICA', '15003', NULL, 130, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (64, 'INGENIERÃA CIVIL INFORMÃTICA', '15004', NULL, 110, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (65, 'INGENIERÃA CIVIL MECÃNICA', '15005', NULL, 115, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (66, 'INGENIERÃA CIVIL QUÃMICA', '15006', NULL, 90, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (67, 'INGENIERÃA CIVIL INDUSTRIAL', '15007', NULL, 150, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (68, 'INGENIERÃA CIVIL EN MINAS', '15008', NULL, 80, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (69, 'INGENIERÃA CIVIL AMBIENTAL', '15009', NULL, 85, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (70, 'CONSTRUCCIÃ“N CIVIL', '15010', NULL, 95, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (71, 'ARQUITECTURA', '15011', NULL, 80, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (72, 'LICENCIATURA EN FÃSICA', '15012', NULL, 45, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (73, 'LICENCIATURA EN MATEMÃTICA', '15013', NULL, 45, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (74, 'QUÃMICA', '15014', NULL, 50, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (75, 'INGENIERÃA EN ROBÃ“TICA', '15015', NULL, 50, NULL, 5);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (76, 'ARQUITECTURA', '16001', NULL, 100, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (77, 'DERECHO', '16002', NULL, 300, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (78, 'INGENIERÃA CIVIL INDUSTRIAL', '16003', NULL, 220, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (79, 'INGENIERÃA CIVIL ELÃ‰CTRICA', '16004', NULL, 150, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (80, 'INGENIERÃA CIVIL INFORMÃTICA', '16005', NULL, 140, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (81, 'INGENIERÃA CIVIL MECÃNICA', '16006', NULL, 130, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (82, 'INGENIERÃA CIVIL EN MINAS', '16007', NULL, 100, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (83, 'PSICOLOGÃA', '16008', NULL, 120, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (84, 'PERIODISMO', '16009', NULL, 80, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (85, 'TRABAJO SOCIAL', '16010', NULL, 90, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (86, 'PEDAGOGÃA EN EDUCACIÃ“N BÃSICA', '16011', NULL, 95, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (87, 'PEDAGOGÃA EN EDUCACIÃ“N MEDIA EN MATEMÃTICA Y FÃSICA', '16012', NULL, 70, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (88, 'PEDAGOGÃA EN EDUCACIÃ“N PARVULARIA', '16013', NULL, 90, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (89, 'QUÃMICA', '16014', NULL, 60, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (90, 'BIOLOGÃA', '16015', NULL, 60, NULL, 6);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (91, 'ARQUITECTURA', '17001', NULL, 80, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (92, 'DERECHO', '17002', NULL, 200, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (93, 'MEDICINA', '17003', NULL, 80, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (94, 'ENFERMERÃA', '17004', NULL, 90, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (95, 'ODONTOLOGÃA', '17005', NULL, 80, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (96, 'PSICOLOGÃA', '17006', NULL, 100, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (97, 'KINESIOLOGÃA', '17007', NULL, 90, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (98, 'NUTRICIÃ“N Y DIETÃ‰TICA', '17008', NULL, 60, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (99, 'BIOLOGÃA MARINA', '17009', NULL, 70, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (100, 'INGENIERÃA CIVIL', '17010', NULL, 150, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (101, 'INGENIERÃA CIVIL ELÃ‰CTRICA', '17011', NULL, 90, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (102, 'INGENIERÃA CIVIL INDUSTRIAL', '17012', NULL, 100, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (103, 'PEDAGOGÃA EN EDUCACIÃ“N MEDIA EN CIENCIAS NATURALES', '17013', NULL, 70, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (104, 'PEDAGOGÃA EN EDUCACIÃ“N PARVULARIA', '17014', NULL, 70, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (105, 'VETERINARIA', '17015', NULL, 100, NULL, 7);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (106, 'ARQUITECTURA', '18001', NULL, 80, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (107, 'DISEÃ‘O', '18002', NULL, 80, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (108, 'ARTE', '18003', NULL, 60, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (109, 'DERECHO', '18004', NULL, 250, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (110, 'PSICOLOGÃA', '18005', NULL, 120, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (111, 'TRABAJO SOCIAL', '18006', NULL, 90, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (112, 'PERIODISMO', '18007', NULL, 70, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (113, 'PEDAGOGÃA EN EDUCACIÃ“N PARVULARIA', '18008', NULL, 80, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (114, 'PEDAGOGÃA EN EDUCACIÃ“N BÃSICA', '18009', NULL, 80, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (115, 'PEDAGOGÃA EN EDUCACIÃ“N MEDIA EN MATEMÃTICA Y FÃSICA', '18010', NULL, 60, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (116, 'ENFERMERÃA', '18011', NULL, 120, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (117, 'MEDICINA', '18012', NULL, 80, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (118, 'ODONTOLOGÃA', '18013', NULL, 70, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (119, 'KINESIOLOGÃA', '18014', NULL, 90, NULL, 8);
INSERT INTO ON CONFLICT DO NOTHING public.carreras (id, nombre, codigo_demre, duracion, vacantes, arancel, universidad_id) VALUES (120, 'FONOAUDIOLOGÃA', '18015', NULL, 75, NULL, 8);


--
-- Data for Name: ponderaciones; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (1, 1, 0.20, 0.30, 0.10, 0.10, 0.10, 0.10, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (2, 2, 0.10, 0.10, 0.00, 0.00, 0.10, 0.10, 0.10);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (3, 3, 0.25, 0.20, 0.00, 0.00, 0.25, 0.10, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (4, 4, 0.25, 0.25, 0.00, 0.10, 0.10, 0.10, 0.30);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (5, 5, 0.35, 0.10, 0.00, 0.00, 0.25, 0.10, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (6, 6, 0.35, 0.10, 0.00, 0.00, 0.25, 0.10, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (7, 7, 0.30, 0.15, 0.00, 0.00, 0.25, 0.10, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (8, 8, 0.10, 0.25, 0.00, 0.10, 0.10, 0.20, 0.35);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (9, 9, 0.10, 0.25, 0.00, 0.20, 0.20, 0.10, 0.35);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (10, 10, 0.20, 0.35, 0.00, 0.15, 0.00, 0.10, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (11, 11, 0.10, 0.20, 0.05, 0.10, 0.10, 0.20, 0.35);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (12, 12, 0.10, 0.35, 0.15, 0.10, 0.10, 0.10, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (13, 13, 0.10, 0.35, 0.15, 0.10, 0.10, 0.10, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (14, 14, 0.10, 0.20, 0.10, 0.30, 0.00, 0.10, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (15, 15, 0.15, 0.35, 0.00, 0.10, 0.10, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (16, 16, 0.20, 0.20, 0.00, 0.00, 0.10, 0.25, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (17, 17, 0.25, 0.15, 0.00, 0.00, 0.10, 0.25, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (18, 18, 0.10, 0.25, 0.00, 0.25, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (19, 19, 0.10, 0.40, 0.00, 0.10, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (20, 20, 0.20, 0.20, 0.00, 0.00, 0.15, 0.20, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (21, 21, 0.10, 0.35, 0.00, 0.15, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (22, 22, 0.20, 0.15, 0.00, 0.00, 0.15, 0.20, 0.30);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (23, 23, 0.10, 0.35, 0.00, 0.15, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (24, 24, 0.20, 0.20, 0.00, 0.00, 0.10, 0.25, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (25, 25, 0.10, 0.35, 0.00, 0.15, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (26, 26, 0.10, 0.35, 0.00, 0.15, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (27, 27, 0.10, 0.20, 0.00, 0.25, 0.00, 0.20, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (28, 28, 0.10, 0.20, 0.00, 0.25, 0.00, 0.20, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (29, 29, 0.20, 0.20, 0.00, 0.00, 0.10, 0.25, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (30, 30, 0.25, 0.30, 0.10, 0.20, 0.00, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (31, 31, 0.20, 0.20, 0.10, 0.10, 0.00, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (32, 32, 0.15, 0.25, 0.10, 0.10, 0.00, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (33, 33, 0.25, 0.25, 0.00, 0.00, 0.10, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (34, 34, 0.25, 0.25, 0.00, 0.00, 0.10, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (35, 35, 0.20, 0.10, 0.00, 0.00, 0.30, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (36, 36, 0.25, 0.15, 0.00, 0.00, 0.20, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (37, 37, 0.15, 0.25, 0.10, 0.10, 0.00, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (38, 38, 0.15, 0.25, 0.15, 0.10, 0.00, 0.20, 0.15);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (39, 39, 0.15, 0.25, 0.15, 0.10, 0.00, 0.20, 0.15);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (40, 40, 0.15, 0.25, 0.15, 0.10, 0.00, 0.20, 0.15);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (41, 41, 0.15, 0.25, 0.10, 0.10, 0.00, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (42, 42, 0.15, 0.25, 0.15, 0.10, 0.00, 0.20, 0.15);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (43, 43, 0.20, 0.30, 0.00, 0.10, 0.10, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (44, 44, 0.15, 0.25, 0.15, 0.10, 0.00, 0.20, 0.15);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (45, 45, 0.15, 0.25, 0.15, 0.10, 0.00, 0.20, 0.15);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (46, 46, 0.20, 0.25, 0.00, 0.00, 0.10, 0.20, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (47, 47, 0.25, 0.20, 0.00, 0.00, 0.10, 0.20, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (48, 48, 0.25, 0.15, 0.00, 0.00, 0.10, 0.25, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (49, 49, 0.15, 0.25, 0.00, 0.10, 0.10, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (50, 50, 0.10, 0.35, 0.00, 0.15, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (51, 51, 0.10, 0.40, 0.00, 0.10, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (52, 52, 0.10, 0.35, 0.05, 0.10, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (53, 53, 0.10, 0.35, 0.05, 0.10, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (54, 54, 0.20, 0.15, 0.00, 0.00, 0.15, 0.25, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (55, 55, 0.20, 0.20, 0.00, 0.00, 0.10, 0.25, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (56, 56, 0.15, 0.30, 0.00, 0.00, 0.15, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (57, 57, 0.10, 0.35, 0.00, 0.15, 0.00, 0.20, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (58, 58, 0.20, 0.20, 0.00, 0.00, 0.10, 0.25, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (59, 59, 0.20, 0.20, 0.00, 0.00, 0.15, 0.20, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (60, 60, 0.20, 0.25, 0.00, 0.00, 0.10, 0.20, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (61, 61, 0.10, 0.45, 0.05, 0.05, 0.00, 0.15, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (62, 62, 0.10, 0.45, 0.05, 0.05, 0.00, 0.15, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (63, 63, 0.10, 0.45, 0.05, 0.05, 0.00, 0.15, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (64, 64, 0.10, 0.45, 0.05, 0.05, 0.00, 0.15, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (65, 65, 0.10, 0.45, 0.05, 0.05, 0.00, 0.15, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (66, 66, 0.10, 0.45, 0.05, 0.05, 0.00, 0.15, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (67, 67, 0.10, 0.45, 0.05, 0.05, 0.00, 0.15, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (68, 68, 0.10, 0.45, 0.05, 0.05, 0.00, 0.15, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (69, 69, 0.10, 0.45, 0.05, 0.05, 0.00, 0.15, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (70, 70, 0.10, 0.45, 0.05, 0.05, 0.00, 0.15, 0.20);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (71, 71, 0.20, 0.25, 0.00, 0.00, 0.10, 0.20, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (72, 72, 0.15, 0.25, 0.10, 0.10, 0.00, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (73, 73, 0.15, 0.25, 0.10, 0.10, 0.00, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (74, 74, 0.15, 0.25, 0.10, 0.10, 0.00, 0.15, 0.25);
INSERT INTO ON CONFLICT DO NOTHING public.ponderaciones (id, carrera_id, w_lenguaje, w_matematicas, w_matematicas2, w_ciencias, w_historia, w_nem, w_ranking) VALUES (75, 75, 0.15, 0.25, 0.10, 0.10, 0.00, 0.15, 0.25);


--
-- Data for Name: puntajes_corte; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (1, 1, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (2, 2, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (3, 3, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (4, 4, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (5, 5, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (6, 6, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (7, 7, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (8, 8, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (9, 9, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (10, 10, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (11, 11, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (12, 12, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (13, 13, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (14, 14, 458.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (15, 15, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (16, 16, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (17, 17, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (18, 18, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (19, 19, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (20, 20, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (21, 21, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (22, 22, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (23, 23, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (24, 24, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (25, 25, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (26, 26, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (27, 27, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (28, 28, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (29, 29, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (30, 30, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (31, 31, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (32, 32, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (33, 33, 500.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (34, 34, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (35, 35, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (36, 36, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (37, 37, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (38, 38, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (39, 39, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (40, 40, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (41, 41, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (42, 42, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (43, 43, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (44, 44, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (45, 45, 485.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (46, 46, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (47, 47, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (48, 48, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (49, 49, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (50, 50, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (51, 51, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (52, 52, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (53, 53, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (54, 54, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (55, 55, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (56, 56, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (57, 57, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (58, 58, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (59, 59, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (60, 60, 480.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (61, 61, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (62, 62, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (63, 63, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (64, 64, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (65, 65, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (66, 66, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (67, 67, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (68, 68, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (69, 69, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (70, 70, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (71, 71, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (72, 72, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (73, 73, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (74, 74, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (75, 75, 475.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (76, 76, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (77, 77, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (78, 78, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (79, 79, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (80, 80, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (81, 81, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (82, 82, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (83, 83, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (84, 84, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (85, 85, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (86, 86, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (87, 87, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (88, 88, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (89, 89, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (90, 90, 470.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (91, 91, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (92, 92, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (93, 93, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (94, 94, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (95, 95, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (96, 96, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (97, 97, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (98, 98, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (99, 99, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (100, 100, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (101, 101, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (102, 102, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (103, 103, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (104, 104, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (105, 105, 460.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (106, 106, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (107, 107, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (108, 108, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (109, 109, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (110, 110, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (111, 111, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (112, 112, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (113, 113, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (114, 114, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (115, 115, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (116, 116, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (117, 117, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (118, 118, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (119, 119, 455.00, 2024);
INSERT INTO ON CONFLICT DO NOTHING public.puntajes_corte (id, carrera_id, puntaje_minimo, ano) VALUES (120, 120, 455.00, 2024);


--
-- Data for Name: simulaciones; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: carreras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.carreras_id_seq', 120, true);


--
-- Name: ponderaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ponderaciones_id_seq', 75, true);


--
-- Name: puntajes_corte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.puntajes_corte_id_seq', 120, true);


--
-- Name: simulaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.simulaciones_id_seq', 1, false);


--
-- Name: universidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.universidades_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 8BvgIFWeRR5KW864AzWW6YSbCyicaNBggS2ZrFmirbncW6Wlu7QsYvt7rxuibsA


