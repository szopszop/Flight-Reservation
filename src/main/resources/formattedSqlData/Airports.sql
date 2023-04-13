--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2023-04-13 10:16:21

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
-- TOC entry 215 (class 1259 OID 56241)
-- Name: airports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airports (
    id bigint NOT NULL,
    iata_code character varying(255),
    icao_code character varying(255),
    city character varying(255),
    country character varying(255),
    dst character varying(255),
    latitude double precision,
    longitude double precision,
    name character varying(255),
    timezone double precision
);


ALTER TABLE public.airports OWNER TO postgres;

--
-- TOC entry 3331 (class 0 OID 56241)
-- Dependencies: 215
-- Data for Name: airports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.airports (id, iata_code, icao_code, city, country, dst, latitude, longitude, name, timezone) FROM stdin;
5	POM	AYPY	Port Moresby	Papua New Guinea	U	-9.443380355834961	147.22000122070312	Port Moresby Jacksons International Airport	10
16	KEF	BIKF	Keflavik	Iceland	N	63.985000610352	-22.605600357055998	Keflavik International Airport	0
49	YEG	CYEG	Edmonton	Canada	A	53.309700012200004	-113.580001831	Edmonton International Airport	-7
73	YHZ	CYHZ	Halifax	Canada	A	44.880798339799995	-63.508598327600005	Halifax / Stanfield International Airport	-4
100	YOW	CYOW	Ottawa	Canada	A	45.3224983215332	-75.66919708251953	Ottawa Macdonald-Cartier International Airport	-5
111	YQB	CYQB	Quebec	Canada	A	46.7911	-71.393303	Quebec Jean Lesage International Airport	-5
146	YUL	CYUL	Montreal	Canada	A	45.4706001282	-73.7407989502	Montreal / Pierre Elliott Trudeau International Airport	-5
156	YVR	CYVR	Vancouver	Canada	A	49.193901061999995	-123.183998108	Vancouver International Airport	-8
160	YWG	CYWG	Winnipeg	Canada	A	49.909999847399995	-97.2398986816	Winnipeg / James Armstrong Richardson International Airport	-6
172	YXS	CYXS	Prince George	Canada	A	53.8894004822	-122.679000854	Prince George Airport	-8
175	YXX	CYXX	Abbotsford	Canada	A	49.02529907226562	-122.36100006103516	Abbotsford Airport	-8
178	YYC	CYYC	Calgary	Canada	A	51.113899231000005	-114.019996643	Calgary International Airport	-7
184	YYJ	CYYJ	Victoria	Canada	A	48.646900177	-123.426002502	Victoria International Airport	-8
189	YYT	CYYT	St. John's	Canada	A	47.618598938000005	-52.751899719200004	St. John's International Airport	-3.5
193	YYZ	CYYZ	Toronto	Canada	A	43.6772003174	-79.63059997559999	Lester B. Pearson International Airport	-5
210	ALG	DAAG	Algier	Algeria	N	36.691001892089844	3.215409994125366	Houari Boumediene Airport	1
248	ACC	DGAA	Accra	Ghana	N	5.605189800262451	-0.16678600013256073	Kotoka International Airport	0
260	ABV	DNAA	Abuja	Nigeria	N	9.006790161132812	7.263169765472412	Nnamdi Azikiwe International Airport	1
273	LOS	DNMM	Lagos	Nigeria	N	6.5773701667785645	3.321160078048706	Murtala Muhammed International Airport	1
280	NIM	DRRN	Niamey	Niger	N	13.4815	2.18361	Diori Hamani International Airport	1
287	TUN	DTTA	Tunis	Tunisia	E	36.85100173950195	10.22719955444336	Tunis Carthage International Airport	1
302	BRU	EBBR	Brussels	Belgium	E	50.9014015198	4.48443984985	Brussels Airport	1
340	FRA	EDDF	Frankfurt	Germany	E	50.033333	8.570556	Frankfurt am Main Airport	1
342	HAM	EDDH	Hamburg	Germany	E	53.630401611328004	9.988229751586902	Hamburg Airport	1
344	CGN	EDDK	Cologne	Germany	E	50.865898132299996	7.1427397728	Cologne Bonn Airport	1
345	DUS	EDDL	Duesseldorf	Germany	E	51.289501	6.766780000000001	Düsseldorf Airport	1
346	MUC	EDDM	Munich	Germany	E	48.353802	11.7861	Munich Airport	1
347	NUE	EDDN	Nuernberg	Germany	E	49.498699	11.078056	Nuremberg Airport	1
348	LEJ	EDDP	Leipzig	Germany	E	51.423889	12.236388999999999	Leipzig/Halle Airport	1
350	STR	EDDS	Stuttgart	Germany	E	48.6898994446	9.22196006775	Stuttgart Airport	1
352	HAJ	EDDV	Hannover	Germany	E	52.461101532	9.68507957458	Hannover Airport	1
415	TLL	EETN	Tallinn-ulemiste International	Estonia	E	59.41329956049999	24.8327999115	Lennart Meri Tallinn Airport	2
421	HEL	EFHK	Helsinki	Finland	E	60.317199707031	24.963300704956	Helsinki Vantaa Airport	2
465	BFS	EGAA	Belfast	United Kingdom	E	54.6575012207	-6.21582984924	Belfast International Airport	0
469	BHX	EGBB	Birmingham	United Kingdom	E	52.4538993835	-1.7480299472799998	Birmingham International Airport	0
478	MAN	EGCC	Manchester	United Kingdom	E	53.35369873046875	-2.2749500274658203	Manchester Airport	0
492	LTN	EGGW	London	United Kingdom	E	51.87469863891602	-0.36833301186561584	London Luton Airport	0
502	LGW	EGKK	London	United Kingdom	E	51.148102	-0.190278	London Gatwick Airport	0
507	LHR	EGLL	London	United Kingdom	E	51.4706	-0.461941	London Heathrow Airport	0
534	GLA	EGPF	Glasgow	United Kingdom	E	55.8718986511	-4.43306016922	Glasgow International Airport	0
535	EDI	EGPH	Edinburgh	United Kingdom	E	55.95000076293945	-3.372499942779541	Edinburgh Airport	0
548	STN	EGSS	London	United Kingdom	E	51.8849983215	0.23499999940400002	London Stansted Airport	0
580	AMS	EHAM	Amsterdam	Netherlands	E	52.308601	4.76389	Amsterdam Airport Schiphol	1
585	EIN	EHEH	Eindhoven	Netherlands	E	51.4500999451	5.374529838559999	Eindhoven Airport	1
599	DUB	EIDW	Dublin	Ireland	E	53.421299	-6.27007	Dublin Airport	0
603	SNN	EINN	Shannon	Ireland	E	52.702	-8.92482	Shannon Airport	0
608	BLL	EKBI	Billund	Denmark	E	55.7402992249	9.15178012848	Billund Airport	1
609	CPH	EKCH	Copenhagen	Denmark	E	55.617900848389	12.656000137328999	Copenhagen Kastrup Airport	1
629	LUX	ELLX	Luxemburg	Luxembourg	E	49.6233333	6.204444400000001	Luxembourg-Findel International Airport	1
636	BGO	ENBR	Bergen	Norway	E	60.29339981	5.218140125	Bergen Airport Flesland	1
644	OSL	ENGM	Oslo	Norway	E	60.121	11.0502	Oslo Lufthavn	1
663	TOS	ENTC	Tromso	Norway	E	69.68329620361328	18.91889953613281	Tromsø Airport,	1
665	TRD	ENVA	Trondheim	Norway	E	63.45780179999999	10.9239998	Trondheim Airport Værnes	1
666	SVG	ENZV	Stavanger	Norway	E	58.876701354	5.637780189500001	Stavanger Airport Sola	1
668	GDN	EPGD	Gdansk	Poland	E	54.377601623535156	18.46619987487793	Gdańsk Lech Wałęsa Airport	1
669	KRK	EPKK	Krakow	Poland	E	50.077702	19.7848	Kraków John Paul II International Airport	1
679	WAW	EPWA	Warsaw	Poland	E	52.1656990051	20.9671001434	Warsaw Chopin Airport	1
687	GOT	ESGG	Gothenborg	Sweden	E	57.662799835205	12.279800415039	Gothenburg-Landvetter Airport	1
737	ARN	ESSA	Stockholm	Sweden	E	59.651901245116996	17.918600082397	Stockholm-Arlanda Airport	1
797	CPT	FACT	Cape Town	South Africa	U	-33.9648017883	18.6016998291	Cape Town International Airport	2
799	DUR	FALE	Durban	South Africa	U	-29.6144444444	31.119722222199997	King Shaka International Airport	2
813	JNB	FAOR	Johannesburg	South Africa	U	-26.1392	28.246	OR Tambo International Airport	2
881	GBE	FBSK	Gaberone	Botswana	U	-24.555201	25.9182	Sir Seretse Khama International Airport	2
893	MRU	FIMP	Plaisance	Mauritius	N	-20.430201	57.683601	Sir Seewoosagur Ramgoolam International Airport	4
907	LUN	FLLS	Lusaka	Zambia	U	-15.330800056500001	28.4526004791	Kenneth Kaunda International Airport Lusaka	2
916	RUN	FMEE	St.-denis	Reunion	U	-20.88710021972656	55.51029968261719	Roland Garros Airport	4
918	TNR	FMMI	Antananarivo	Madagascar	U	-18.7969	47.478802	Ivato Airport	3
951	LAD	FNLU	Luanda	Angola	N	-8.858369999999999	13.2312	Quatro de Fevereiro Airport	1
979	MPM	FQMA	Maputo	Mozambique	U	-25.920799	32.572601	Maputo Airport	2
994	SEZ	FSIA	Mahe	Seychelles	U	-4.67434	55.521801	Seychelles International Airport	4
999	NDJ	FTTJ	N'djamena	Chad	N	12.1337	15.034	N'Djamena International Airport	1
1005	HRE	FVHA	Harare	Zimbabwe	U	-17.931801	31.0928	Robert Gabriel Mugabe International Airport	2
1020	FIH	FZAA	Kinshasa	Congo (Kinshasa)	N	-4.38575	15.4446	Ndjili International Airport	1
1044	BKO	GABS	Bamako	Mali	N	12.5335	-7.94994	Modibo Keita International Airport	0
1050	BJL	GBYD	Banjul	Gambia	N	13.338000297546387	-16.65220069885254	Banjul International Airport	0
1051	FUE	GCFV	Fuerteventura	Spain	E	28.452699661254886	-13.863800048828125	Fuerteventura Airport	0
1054	LPA	GCLP	Gran Canaria	Spain	E	27.931900024414066	-15.38659954071045	Gran Canaria Airport	0
1055	ACE	GCRR	Arrecife	Spain	E	28.945498999999998	-13.6052	Lanzarote Airport	0
1056	TFS	GCTS	Tenerife	Spain	E	28.044500351	-16.5725002289	Tenerife South Airport	0
1059	FNA	GFLL	Freetown	Sierra Leone	N	8.616439999999999	-13.1955	Lungi International Airport	0
1063	ROB	GLRB	Monrovia	Liberia	N	6.23379	-10.3623	Roberts International Airport	0
1074	CMN	GMMN	Casablanca	Morocco	N	33.36750030517578	-7.589970111846924	Mohammed V International Airport	0
1094	NKC	GQNO	Nouakschott	Mauritania	N	18.31	-15.969722199999998	Nouakchott–Oumtounsy International Airport	0
1102	SID	GVAC	Amilcar Cabral	Cape Verde	U	16.7414	-22.9494	Amílcar Cabral International Airport	-1
1107	ADD	HAAB	Addis Ababa	Ethiopia	U	8.97789001465	38.7993011475	Addis Ababa Bole International Airport	3
1128	CAI	HECA	Cairo	Egypt	U	30.12190055847168	31.40559959411621	Cairo International Airport	2
1130	HRG	HEGN	Hurghada	Egypt	U	27.178300857543945	33.799400329589844	Hurghada International Airport	2
1145	MBA	HKMO	Mombasa	Kenya	U	-4.034830093383788	39.594200134277344	Mombasa Moi International Airport	3
1165	KGL	HRYR	Kigali	Rwanda	U	-1.9686299999999999	30.1395	Kigali International Airport	2
1173	JUB	HSSJ	Juba	South Sudan	U	4.87201023102	31.601100921599997	Juba International Airport	3
1175	KRT	HSSS	Khartoum	Sudan	U	15.589500427246096	32.55319976806641	Khartoum International Airport	3
1177	DAR	HTDA	Dar Es Salaam	Tanzania	U	-6.87811	39.202599	Julius Nyerere International Airport	3
1186	ZNZ	HTZA	Zanzibar	Tanzania	U	-6.22202	39.224899	Abeid Amani Karume International Airport	3
1187	EBB	HUEN	Entebbe	Uganda	U	0.042386	32.443501	Entebbe International Airport	3
1190	TIA	LATI	Tirana	Albania	E	41.4146995544	19.7206001282	Tirana International Airport Mother Teresa	1
1191	BOJ	LBBG	Bourgas	Bulgaria	E	42.56959915161133	27.515199661254886	Burgas Airport	2
1194	SOF	LBSF	Sofia	Bulgaria	E	42.696693420410156	23.411436080932614	Sofia Airport	2
1196	VAR	LBWN	Varna	Bulgaria	E	43.232101	27.8251	Varna Airport	2
1197	LCA	LCLK	Larnaca	Cyprus	E	34.875099182128906	33.62490081787109	Larnaca International Airport	2
1208	ZAG	LDZA	Zagreb	Croatia	E	45.742900848400005	16.0687999725	Zagreb Airport	1
1212	ALC	LEAL	Alicante	Spain	E	38.28219985961914	-0.5581560134887695	Alicante International Airport	1
1218	BCN	LEBL	Barcelona	Spain	E	41.2971	2.0784599999999998	Barcelona International Airport	1
1225	IBZ	LEIB	Ibiza	Spain	E	38.8728981018	1.3731199502899998	Ibiza Airport	1
1229	MAD	LEMD	Madrid	Spain	E	40.471926	-3.56264	Adolfo Suárez Madrid–Barajas Airport	1
1230	AGP	LEMG	Malaga	Spain	E	36.67490005493164	-4.499110221862793	Málaga Airport	1
1243	SCQ	LEST	Santiago	Spain	E	42.89630126953125	-8.415140151977539	Santiago de Compostela Airport	1
1264	BOD	LFBD	Bordeaux	France	E	44.8283004761	-0.7155560255050001	Bordeaux-Mérignac Airport	1
1273	TLS	LFBO	Toulouse	France	E	43.629101	1.36382	Toulouse-Blagnac Airport	1
1335	LYS	LFLL	Lyon	France	E	45.725556	5.081111	Lyon Saint-Exupéry Airport	1
1353	MRS	LFML	Marseille	France	E	43.439271921999996	5.22142410278	Marseille Provence Airport	1
1354	NCE	LFMN	Nice	France	E	43.658401489300005	7.215869903560001	Nice-Côte d'Azur Airport	1
1382	CDG	LFPG	Paris	France	E	49.012798	2.55	Charles de Gaulle International Airport	1
1386	ORY	LFPO	Paris	France	E	48.7233333	2.3794444	Paris-Orly Airport	1
1423	BSL	LFSB	Mulhouse	France	E	47.59	7.5291667	EuroAirport Basel-Mulhouse-Freiburg Airport	1
1452	HER	LGIR	Heraklion	Greece	E	35.3396987915	25.1802997589	Heraklion International Nikos Kazantzakis Airport	2
1486	SKG	LGTS	Thessaloniki	Greece	E	40.51969909667969	22.97089958190918	Thessaloniki Macedonia International Airport	2
1489	BUD	LHBP	Budapest	Hungary	E	47.429759999999995	19.261093	Budapest Liszt Ferenc International Airport	1
1501	BRI	LIBD	Bari	Italy	E	41.138901000000004	16.760599	Bari Karol Wojtyła Airport	1
1506	BDS	LIBR	Brindisi	Italy	E	40.6576	17.947001	Brindisi – Salento Airport	1
1509	CTA	LICC	Catania	Italy	E	37.466801000000004	15.0664	Catania-Fontanarossa Airport	1
1512	PMO	LICJ	Palermo	Italy	E	38.175999	13.091	Falcone–Borsellino Airport	1
1519	CAG	LIEE	Cagliari	Italy	E	39.251499	9.05428	Cagliari Elmas Airport	1
1524	MXP	LIMC	Milano	Italy	E	45.6306	8.728110000000001	Malpensa International Airport	1
1525	BGY	LIME	Bergamo	Italy	E	45.673901	9.70417	Il Caravaggio International Airport	1
1526	TRN	LIMF	Torino	Italy	E	45.200802	7.64963	Turin Airport	1
1538	BLQ	LIPE	Bologna	Italy	E	44.5354	11.2887	Bologna Guglielmo Marconi Airport	1
1550	VRN	LIPX	Villafranca	Italy	E	45.395699	10.8885	Verona Villafranca Airport	1
1551	VCE	LIPZ	Venice	Italy	E	45.505299	12.3519	Venice Marco Polo Airport	1
1555	FCO	LIRF	Rome	Italy	E	41.800277799999996	12.238888900000001	Leonardo da Vinci–Fiumicino Airport	1
1561	NAP	LIRN	Naples	Italy	E	40.886002000000005	14.2908	Naples International Airport	1
1562	PSA	LIRP	Pisa	Italy	E	43.683899	10.3927	Pisa International Airport	1
1569	LJU	LJLJ	Ljubljana	Slovenia	E	46.223701	14.4576	Ljubljana Jože Pučnik Airport	1
1587	PRG	LKPR	Prague	Czech Republic	E	50.1008	14.26	Václav Havel Airport Prague	1
1590	TLV	LLBG	Tel-aviv	Israel	E	32.011398315429695	34.88669967651367	Ben Gurion International Airport	2
1606	MLA	LMML	Malta	Malta	E	35.857498	14.4775	Malta International Airport	1
1613	VIE	LOWW	Vienna	Austria	E	48.110298156738004	16.569700241089002	Vienna International Airport	1
1626	FAO	LPFR	Faro	Portugal	E	37.014400482199996	-7.965909957889999	Faro Airport	0
1633	PDL	LPPD	Ponta Delgada	Portugal	E	37.7411994934	-25.6979007721	João Paulo II Airport	-1
1636	OPO	LPPR	Porto	Portugal	E	41.248100280799996	-8.68138980865	Francisco de Sá Carneiro Airport	0
1638	LIS	LPPT	Lisbon	Portugal	E	38.7813	-9.13592	Humberto Delgado Airport (Lisbon Portela Airport)	0
1657	OTP	LROP	Bucharest	Romania	E	44.5711111	26.085	Henri Coandă International Airport	2
1665	GVA	LSGG	Geneva	Switzerland	E	46.23809814453125	6.108950138092041	Geneva Cointrin International Airport	1
1678	ZRH	LSZH	Zurich	Switzerland	E	47.464698999999996	8.54917	Zürich Airport	1
1682	ESB	LTAC	Ankara	Turkey	E	40.128101348899996	32.995098114	Esenboğa International Airport	3
1688	AYT	LTAI	Antalya	Turkey	E	36.898701	30.800501	Antalya International Airport	3
1701	ISL	LTBA	Istanbul	Turkey	E	40.976898	28.8146	Atatürk International Airport	3
1706	ADB	LTBJ	Izmir	Turkey	E	38.292400360100004	27.156999588	Adnan Menderes International Airport	3
1715	DLM	LTBS	Dalaman	Turkey	E	36.7131004333	28.792499542199998	Dalaman International Airport	3
1737	SKP	LWSK	Skopje	Macedonia	E	41.961601	21.621401000000002	Skopje Alexander the Great Airport	1
1739	BEG	LYBE	Belgrade	Serbia	E	44.8184013367	20.3090991974	Belgrade Nikola Tesla Airport	1
1741	TGD	LYPG	Podgorica	Montenegro	E	42.359402	19.2519	Podgorica Airport	1
1745	BTS	LZIB	Bratislava	Slovakia	E	48.17020034790039	17.212699890136722	M. R. Štefánik Airport	1
1754	PLS	MBPV	Providenciales	Turks and Caicos Islands	U	21.77359962463379	-72.26589965820312	Providenciales Airport	-4
1760	PUJ	MDPC	Punta Cana	Dominican Republic	U	18.567399978599997	-68.36340332030001	Punta Cana International Airport	-4
1762	SDQ	MDSD	Santo Domingo	Dominican Republic	U	18.42970085144	-69.668899536133	Las Américas International Airport	-4
1767	GUA	MGGT	Guatemala City	Guatemala	U	14.5833	-90.527496	La Aurora Airport	-6
1779	KIN	MKJP	Kingston	Jamaica	U	17.935699462890625	-76.7874984741211	Norman Manley International Airport	-5
1783	ACA	MMAA	Acapulco	Mexico	S	16.757099151611328	-99.75399780273438	General Juan N Alvarez International Airport	-6
1800	CZM	MMCZ	Cozumel	Mexico	S	20.52239990234375	-86.92559814453125	Cozumel International Airport	-5
1801	DGO	MMDO	Durango	Mexico	S	24.1242008209	-104.52799987799999	General Guadalupe Victoria International Airport	-6
1804	GDL	MMGL	Guadalajara	Mexico	S	20.521799087524414	-103.31099700927734	Don Miguel Hidalgo Y Costilla International Airport	-6
1807	HMO	MMHO	Hermosillo	Mexico	S	29.095899581900007	-111.047996521	General Ignacio P. Garcia International Airport	-7
1815	BJX	MMLO	Del Bajio	Mexico	S	20.9935	-101.481003	Del Bajío International Airport	-6
1819	MID	MMMD	Merida	Mexico	S	20.9370002747	-89.657699585	Licenciado Manuel Crescencio Rejon Int Airport	-6
1824	MEX	MMMX	Mexico City	Mexico	S	19.4363	-99.072098	Licenciado Benito Juarez International Airport	-6
1825	MTY	MMMY	Monterrey	Mexico	S	25.7784996033	-100.107002258	General Mariano Escobedo International Airport	-6
1826	MZT	MMMZ	Mazatlan	Mexico	S	23.1613998413	-106.26599884	General Rafael Buelna International Airport	-7
1836	PVR	MMPR	Puerto Vallarta	Mexico	S	20.680099487304688	-105.25399780273438	Licenciado Gustavo Díaz Ordaz International Airport	-6
1840	SJD	MMSD	San Jose Del Cabo	Mexico	S	23.15180015563965	-109.72100067138672	Los Cabos International Airport	-7
1847	TIJ	MMTJ	Tijuana	Mexico	S	32.541099548339844	-116.97000122070312	General Abelardo L. Rodríguez International Airport	-8
1850	TLC	MMTO	Toluca	Mexico	S	19.3370990753	-99.5660018921	Licenciado Adolfo Lopez Mateos International Airport	-6
1852	CUN	MMUN	Cancun	Mexico	S	21.036500930800003	-86.8770980835	Cancún International Airport	-5
1871	PTY	MPTO	Panama City	Panama	U	9.0713596344	-79.3834991455	Tocumen International Airport	-5
1881	LIR	MRLB	Liberia	Costa Rica	U	10.5933	-85.544403	Daniel Oduber Quiros International Airport	-6
1892	SAL	MSLP	San Salvador	El Salvador	U	13.4409	-89.055702	Monseñor Óscar Arnulfo Romero International Airport	-6
1897	PAP	MTPP	Port-au-prince	Haiti	U	18.57999992370605	-72.2925033569336	Toussaint Louverture International Airport	-5
1909	HAV	MUHA	Havana	Cuba	U	22.989200592041016	-82.40910339355469	José Martí International Airport	-5
1923	VRA	MUVR	Varadero	Cuba	U	23.03440093994141	-81.435302734375	Juan Gualberto Gomez International Airport	-5
1926	GCM	MWCR	Georgetown	Cayman Islands	N	19.292800903299998	-81.3576965332	Owen Roberts International Airport	-5
1953	NAS	MYNN	Nassau	Bahamas	U	25.0389995575	-77.46620178219999	Lynden Pindling International Airport	-5
1957	BZE	MZBZ	Belize City	Belize	U	17.539100646972653	-88.30819702148438	Philip S. W. Goldson International Airport	-6
1997	VLI	NVVV	Port-vila	Vanuatu	U	-17.699300765991	168.32000732422	Bauerfield International Airport	11
2001	GEA	NWWM	Noumea	New Caledonia	U	-22.25830078125	166.47300720214844	Nouméa Magenta Airport	11
2006	AKL	NZAA	Auckland	New Zealand	Z	-37.0080986023	174.79200744599999	Auckland International Airport	12
2009	CHC	NZCH	Christchurch	New Zealand	Z	-43.48939895629883	172.53199768066406	Christchurch International Airport	12
2042	WLG	NZWN	Wellington	New Zealand	Z	-41.327201843299996	174.80499267599998	Wellington International Airport	12
2057	BAH	OBBI	Bahrain	Bahrain	U	26.27079963684082	50.63359832763672	Bahrain International Airport	3
2064	DMM	OEDF	Dammam	Saudi Arabia	U	26.471200942993164	49.79790115356445	King Fahd International Airport	3
2065	DHA	OEDR	Dhahran	Saudi Arabia	U	26.265399932900003	50.1520004272	King Abdulaziz Air Base	3
2072	JED	OEJN	Jeddah	Saudi Arabia	U	21.6796	39.156502	King Abdulaziz International Airport	3
2074	MED	OEMA	Madinah	Saudi Arabia	U	24.5534	39.705101	Prince Mohammad Bin Abdulaziz Airport	3
2082	RUH	OERK	Riyadh	Saudi Arabia	U	24.957599639892575	46.69879913330078	King Khaled International Airport	3
2131	THR	OIII	Teheran	Iran	E	35.68920135498047	51.31340026855469	Mehrabad International Airport	3.5
2157	SYZ	OISS	Shiraz	Iran	E	29.53919982910156	52.58980178833008	Shiraz Shahid Dastghaib International Airport	3.5
2170	AMM	OJAI	Amman	Jordan	E	31.7226009369	35.9931983948	Queen Alia International Airport	2
2176	KWI	OKBK	Kuwait	Kuwait	U	29.226600646972656	47.96889877319336	Kuwait International Airport	3
2177	BEY	OLBA	Beirut	Lebanon	E	33.820899963378906	35.488399505615234	Beirut Rafic Hariri International Airport	2
2179	AUH	OMAA	Abu Dhabi	United Arab Emirates	U	24.433000564575195	54.651100158691406	Abu Dhabi International Airport	4
2188	DXB	OMDB	Dubai	United Arab Emirates	U	25.252799987800003	55.3643989563	Dubai International Airport	4
2191	SHJ	OMSJ	Sharjah	United Arab Emirates	U	25.32859992980957	55.5172004699707	Sharjah International Airport	4
2194	MCT	OOMS	Muscat	Oman	U	23.593299865722656	58.284400939941406	Muscat International Airport	4
2206	KHI	OPKC	Karachi	Pakistan	N	24.9065	67.160797	Jinnah International Airport	5
2207	LHE	OPLA	Lahore	Pakistan	N	31.5216007232666	74.40360260009766	Alama Iqbal International Airport	5
2236	DAM	OSDI	Damascus	Syria	E	33.4114990234375	36.51559829711914	Damascus International Airport	2
2246	GUM	PGUM	Agana	Guam	U	13.4834003448	144.796005249	Antonio B. Won Pat International Airport	10
2264	KHH	RCKH	Kaohsiung	Taiwan	U	22.57710075378418	120.3499984741211	Kaohsiung International Airport	8
2276	TPE	RCTP	Taipei	Taiwan	U	25.0777	121.233002	Taiwan Taoyuan International Airport	8
2279	NRT	RJAA	Tokyo	Japan	U	35.764701843299996	140.386001587	Narita International Airport	9
2287	CTS	RJCC	Sapporo	Japan	U	42.77519989013672	141.69200134277344	New Chitose Airport	9
2305	FUK	RJFF	Fukuoka	Japan	U	33.585899353027344	130.45100402832028	Fukuoka Airport	9
2307	KOJ	RJFK	Kagoshima	Japan	U	31.80340003967285	130.718994140625	Kagoshima Airport	9
2334	ITM	RJOO	Osaka	Japan	U	34.785499572753906	135.43800354003906	Osaka International Airport	9
2347	SDJ	RJSS	Sendai	Japan	U	38.139701843299996	140.917007446	Sendai Airport	9
2359	HND	RJTT	Tokyo	Japan	U	35.552299	139.779999	Tokyo Haneda International Airport	9
2360	OKO	RJTY	Yokota	Japan	U	35.74850082397461	139.34800720214844	Yokota Air Base	9
2370	CJU	RKPC	Cheju	South Korea	U	33.51129913330078	126.49299621582031	Jeju International Airport	9
2372	PUS	RKPK	Busan	South Korea	U	35.1795005798	128.93800354	Gimhae International Airport	9
2378	GMP	RKSS	Seoul	South Korea	U	37.5583	126.791	Gimpo International Airport	9
2384	OKA	ROAH	Okinawa	Japan	N	26.1958007812	127.64600372299999	Naha Airport	9
2386	DNA	RODN	Kadena	Japan	U	26.3556	127.76799799999999	Kadena Air Base	9
2397	MNL	RPLL	Manila	Philippines	N	14.5086	121.019997	Ninoy Aquino International Airport	8
2442	AEP	SABE	Buenos Aires	Argentina	N	-34.5592	-58.4156	Jorge Newbery Airpark	-3
2526	BEL	SBBE	Belem	Brazil	S	-1.3792500495900002	-48.476299285900005	Val de Cans/Júlio Cezar Ribeiro International Airport	-3
2531	BSB	SBBR	Brasilia	Brazil	S	-15.86916732788086	-47.92083358764648	Presidente Juscelino Kubistschek International Airport	-3
2537	CNF	SBCF	Belo Horizonte	Brazil	S	-19.62444305419922	-43.97194290161133	Tancredo Neves International Airport	-3
2551	MAO	SBEG	Manaus	Brazil	S	-3.038609981536865	-60.04970169067383	Eduardo Gomes International Airport	-4
2555	FLN	SBFL	Florianopolis	Brazil	S	-27.670278549194336	-48.5525016784668	Hercílio Luz International Airport	-3
2560	GIG	SBGL	Rio De Janeiro	Brazil	S	-22.809999465900002	-43.2505569458	Rio Galeão – Tom Jobim International Airport	-3
2564	GRU	SBGR	Sao Paulo	Brazil	S	-23.435556411743164	-46.47305679321289	Guarulhos - Governador André Franco Montoro International Airport	-3
2621	SSA	SBSV	Salvador	Brazil	S	-12.9086112976	-38.3224983215	Deputado Luiz Eduardo Magalhães International Airport	-3
2650	SCL	SCEL	Santiago	Chile	S	-33.393001556396484	-70.78579711914062	Comodoro Arturo Merino Benítez International Airport	-4
2673	GYE	SEGU	Guayaquil	Ecuador	U	-2.15741991997	-79.88359832760001	José Joaquín de Olmedo International Airport	-5
2688	UIO	SEQM	Quito	Ecuador	U	-0.129166666667	-78.3575	Mariscal Sucre International Airport	-5
2699	ASU	SGAS	Asuncion	Paraguay	S	-25.239999771118164	-57.52000045776367	Silvio Pettirossi International Airport	-4
2703	ESG	SGME	Mariscal Estigarribia	Paraguay	S	-22.049999237060547	-60.61999893188477	Dr. Luis Maria Argaña International Airport	-4
2709	BOG	SKBO	Bogota	Colombia	U	4.70159	-74.1469	El Dorado International Airport	-5
2771	VVI	SLVR	Santa Cruz	Bolivia	U	-17.6448	-63.135399	Viru Viru International Airport	-4
2773	PBM	SMJP	Zandery	Suriname	U	5.4528298378	-55.1878013611	Johan Adolf Pengel International Airport	-3
2774	CAY	SOCA	Cayenne	French Guiana	U	4.819809913639999	-52.360401153599994	Cayenne-Rochambeau Airport	-3
2789	LIM	SPIM	Lima	Peru	U	-12.0219	-77.114305	Jorge Chávez International Airport	-5
2812	CUZ	SPZO	Cuzco	Peru	U	-13.535699844400003	-71.9387969971	Alejandro Velasco Astete International Airport	-5
2816	MVD	SUMU	Montevideo	Uruguay	S	-34.838402	-56.0308	Carrasco International /General C L Berisso Airport	-3
2821	BLA	SVBC	Barcelona	Venezuela	U	10.111111	-64.692222	General José Antonio Anzoategui International Airport	-4
2851	CCS	SVMI	Caracas	Venezuela	U	10.601194	-66.991222	Simón Bolívar International Airport	-4
2878	FDF	TFFF	Fort-de-france	Martinique	U	14.590999603271484	-61.00320053100586	Martinique Aimé Césaire International Airport	-4
2881	PTP	TFFR	Pointe-a-pitre	Guadeloupe	U	16.265301	-61.531799	Pointe-à-Pitre Le Raizet	-4
2890	SJU	TJSJ	San Juan	Puerto Rico	U	18.4393997192	-66.0018005371	Luis Munoz Marin International Airport	-4
2894	UVF	TLPL	Hewandorra	Saint Lucia	U	13.7332	-60.952599	Hewanorra International Airport	-4
2895	AUA	TNCA	Oranjestad	Aruba	U	12.5014	-70.015198	Queen Beatrix International Airport	-4
2896	BON	TNCB	Kralendijk	Netherlands Antilles	U	12.130999565124512	-68.26850128173828	Flamingo International Airport	-4
2897	CUR	TNCC	Willemstad	Netherlands Antilles	U	12.1889	-68.959801	Hato International Airport	-4
2899	SXM	TNCM	Philipsburg	Netherlands Antilles	U	18.0410003662	-63.108898162799996	Princess Juliana International Airport	-4
2908	ALA	UAAA	Alma-ata	Kazakhstan	U	43.35210037231445	77.04049682617188	Almaty Airport	6
2912	FRU	UAFM	Bishkek	Kyrgyzstan	U	43.0612983704	74.4776000977	Manas International Airport	6
2922	GYD	UBBB	Baku	Azerbaijan	E	40.46749877929688	50.04669952392578	Heydar Aliyev International Airport	4
2934	VVO	UHWW	Vladivostok	Russia	N	43.39899826049805	132.14799499511722	Vladivostok International Airport	10
2939	KBP	UKBB	Kiev	Ukraine	E	50.34500122070313	30.89469909667969	Boryspil International Airport	2
2945	LWO	UKLL	Lvov	Ukraine	E	49.8125	23.95610046386719	Lviv International Airport	2
2948	LED	ULLI	St. Petersburg	Russia	N	59.80030059814453	30.26250076293945	Pulkovo Airport	3
2954	MSQ	UMMS	Minsk 2	Belarus	E	53.882499694824	28.030700683594	Minsk National Airport	3
2964	ROV	URRP	Rostov	Russia	N	47.493888	39.924721999999996	Platov International Airport	3
2965	AER	URSS	Sochi	Russia	N	43.449902	39.9566	Sochi International Airport	3
2975	SVX	USSS	Yekaterinburg	Russia	N	56.743099212646	60.802700042725	Koltsovo Airport	5
2976	ASB	UTAA	Ashkhabad	Turkmenistan	U	37.986801	58.361000000000004	Ashgabat International Airport	5
2983	TAS	UTTT	Tashkent	Uzbekistan	U	41.257900238000005	69.2811965942	Tashkent International Airport	5
2985	SVO	UUEE	Moscow	Russia	N	55.972599	37.4146	Sheremetyevo International Airport	3
2988	VKO	UUWW	Moscow	Russia	N	55.591499328599994	37.2615013123	Vnukovo International Airport	3
2990	KZN	UWKD	Kazan	Russia	N	55.606201171875	49.278701782227	Kazan International Airport	3
2992	UFA	UWUU	Ufa	Russia	N	54.55749893188501	55.874401092529	Ufa International Airport	5
2993	KUF	UWWW	Samara	Russia	N	53.504901885986	50.16429901123	Kurumoch International Airport	4
2997	BOM	VABB	Mumbai	India	N	19.088699340799998	72.8678970337	Chhatrapati Shivaji International Airport	5.5
3007	GOI	VAGO	Goa	India	N	15.3808002472	73.83139801029999	Dabolim Airport	5.5
3024	CMB	VCBI	Colombo	Sri Lanka	U	7.180759906768799	79.88410186767578	Bandaranaike International Colombo Airport	5.5
3034	PNH	VDPP	Phnom-penh	Cambodia	U	11.546600341796875	104.84400177001952	Phnom Penh International Airport	7
3035	REP	VDSR	Siem-reap	Cambodia	U	13.410699844400003	103.81300354	Siem Reap International Airport	7
3043	CCU	VECC	Kolkata	India	N	22.654699325561523	88.44670104980469	Netaji Subhash Chandra Bose International Airport	5.5
3076	DAC	VGZR	Dhaka	Bangladesh	U	23.843347	90.39778299999999	Hazrat Shahjalal International Airport	6
3077	HKG	VHHH	Hong Kong	Hong Kong	U	22.308901000000002	113.915001	Hong Kong International Airport	8
3093	DEL	VIDP	Delhi	India	N	28.5665	77.103104	Indira Gandhi International Airport	5.5
3121	MFM	VMMC	Macau	Macau	U	22.149599	113.592003	Macau International Airport	8
3125	KTM	VNKT	Kathmandu	Nepal	N	27.6966	85.3591	Tribhuvan International Airport	5.75
3131	BLR	VOBL	Bangalore	India	N	13.1979	77.706299	Kempegowda International Airport	5.5
3136	COK	VOCI	Kochi	India	N	10.152000000000001	76.401901	Cochin International Airport	5.5
3144	MAA	VOMM	Madras	India	N	12.990005493164062	80.16929626464844	Chennai International Airport	5.5
3153	TRV	VOTV	Trivandrum	India	N	8.48211956024	76.9200973511	Trivandrum International Airport	5.5
3156	MLE	VRMM	Male	Maldives	U	4.1918301582336435	73.52909851074219	Malé International Airport	5
3157	DMK	VTBD	Bangkok	Thailand	U	13.912599563599999	100.607002258	Don Mueang International Airport	7
3179	HKT	VTSP	Phuket	Thailand	U	8.1132	98.316902	Phuket International Airport	7
3199	HAN	VVNB	Hanoi	Vietnam	U	21.221200942993164	105.80699920654295	Noi Bai International Airport	7
3205	SGN	VVTS	Ho Chi Minh City	Vietnam	U	10.8187999725	106.652000427	Tan Son Nhat International Airport	7
3222	MDL	VYMD	Mandalay	Burma	U	21.702199935913086	95.97789764404295	Mandalay International Airport	6.5
3239	RGN	VYYY	Yangon	Burma	U	16.907300949099998	96.1332015991	Yangon International Airport	6.5
3240	UPG	WAAA	Ujung Pandang	Indonesia	N	-5.061629772186278	119.5540008544922	Hasanuddin International Airport	8
3244	DJJ	WAJJ	Jayapura	Indonesia	N	-2.5769500733	140.5160064698	Sentani International Airport	9
3272	BWN	WBSB	Bandar Seri Begawan	Brunei	U	4.944200038909912	114.9280014038086	Brunei International Airport	8
3275	CGK	WIII	Jakarta	Indonesia	N	-6.1255698204	106.65599823	Soekarno-Hatta International Airport	7
3304	KUL	WMKK	Kuala Lumpur	Malaysia	N	2.7455799579619997	101.70999908446998	Kuala Lumpur International Airport	8
3316	SIN	WSSS	Singapore	Singapore	N	1.35019	103.994003	Singapore Changi Airport	8
3320	BNE	YBBN	Brisbane	Australia	N	-27.38419914245605	153.11700439453125	Brisbane International Airport	10
3339	MEL	YMML	Melbourne	Australia	O	-37.673302	144.843002	Melbourne International Airport	10
3341	ADL	YPAD	Adelaide	Australia	O	-34.945	138.53100600000002	Adelaide International Airport	9.5
3351	PER	YPPH	Perth	Australia	N	-31.94029998779297	115.96700286865234	Perth International Airport	8
3361	SYD	YSSY	Sydney	Australia	O	-33.94609832763672	151.177001953125	Sydney Kingsford Smith International Airport	10
3364	PEK	ZBAA	Beijing	China	U	40.0801010131836	116.58499908447266	Beijing Capital International Airport	8
3368	TSN	ZBTJ	Tianjin	China	U	39.1244010925	117.346000671	Tianjin Binhai International Airport	8
3369	TYN	ZBYN	Taiyuan	China	U	37.74689865112305	112.62799835205078	Taiyuan Wusu Airport	8
3370	CAN	ZGGG	Guangzhou	China	U	23.39240074157715	113.29900360107422	Guangzhou Baiyun International Airport	8
3371	CSX	ZGHA	Changcha	China	U	28.189199447600004	113.220001221	Changsha Huanghua International Airport	8
3372	KWL	ZGKL	Guilin	China	U	25.21809959411621	110.03900146484376	Guilin Liangjiang International Airport	8
3373	NNG	ZGNN	Nanning	China	U	22.60829925537109	108.1719970703125	Nanning Wuxu Airport	8
3374	SZX	ZGSZ	Shenzhen	China	U	22.639299392700195	113.81099700927734	Shenzhen Bao'an International Airport	8
3375	CGO	ZHCC	Zhengzhou	China	U	34.519699096699995	113.84100341799999	Zhengzhou Xinzheng International Airport	8
3376	WUH	ZHHH	Wuhan	China	U	30.7838	114.208	Wuhan Tianhe International Airport	8
3378	LHW	ZLLL	Lanzhou	China	U	36.5152015686	103.620002747	Lanzhou Zhongchuan Airport	8
3379	XIY	ZLXY	Xi'an	China	U	34.447102	108.751999	Xi'an Xianyang International Airport	8
3382	KMG	ZPPP	Kunming	China	N	25.101944399999997	102.9291667	Kunming Changshui International Airport	8
3383	XMN	ZSAM	Xiamen	China	U	24.54400062561035	118.12799835205078	Xiamen Gaoqi International Airport	8
3384	KHN	ZSCN	Nanchang	China	U	28.864999771118164	115.9000015258789	Nanchang Changbei International Airport	8
3385	FOC	ZSFZ	Fuzhou	China	U	25.935100555419922	119.66300201416016	Fuzhou Changle International Airport	8
3386	HGH	ZSHC	Hangzhou	China	U	30.22949981689453	120.43399810791016	Hangzhou Xiaoshan International Airport	8
3387	NGB	ZSNB	Ninbo	China	U	29.82670021057129	121.46199798583984	Ningbo Lishe International Airport	8
3388	NKG	ZSNJ	Nanjing	China	U	31.742000579833984	118.86199951171876	Nanjing Lukou Airport	8
3390	TAO	ZSQD	Qingdao	China	U	36.2661018372	120.374000549	Liuting Airport	8
3391	SHA	ZSSS	Shanghai	China	U	31.19790077209473	121.33599853515624	Shanghai Hongqiao International Airport	8
3392	YNT	ZSYT	Yantai	China	U	37.40169906616211	121.37200164794922	Yantai Laishan Airport	8
3393	CKG	ZUCK	Chongqing	China	U	29.719200134277344	106.64199829101562	Chongqing Jiangbei International Airport	8
3394	KWE	ZUGY	Guiyang	China	U	26.53849983215332	106.8010025024414	Longdongbao Airport	8
3395	CTU	ZUUU	Chengdu	China	U	30.578500747680664	103.9469985961914	Chengdu Shuangliu International Airport	8
3399	URC	ZWWW	Urumqi	China	U	43.90710067749024	87.47419738769531	Ürümqi Diwopu International Airport	8
3400	HRB	ZYHB	Harbin	China	U	45.6234016418457	126.25	Taiping Airport	8
3404	DLC	ZYTL	Dalian	China	U	38.9656982421875	121.53900146484376	Zhoushuizi Airport	8
3406	PVG	ZSPD	Shanghai	China	U	31.143400192260746	121.80500030517578	Shanghai Pudong International Airport	8
3448	BOS	KBOS	Boston	United States	A	42.36429977	-71.00520325	General Edward Lawrence Logan International Airport	-5
3453	OAK	KOAK	Oakland	United States	A	37.721298	-122.221001	Metropolitan Oakland International Airport	-8
3458	MCI	KMCI	Kansas City	United States	A	39.2976	-94.713898	Kansas City International Airport	-6
3462	PHX	KPHX	Phoenix	United States	N	33.43429946899414	-112.01200103759766	Phoenix Sky Harbor International Airport	-7
3469	SFO	KSFO	San Francisco	United States	A	37.61899948120117	-122.375	San Francisco International Airport	-8
3473	MEM	KMEM	Memphis	United States	A	35.04240036010742	-89.97669982910156	Memphis International Airport	-6
3484	LAX	KLAX	Los Angeles	United States	A	33.94250107	-118.40799709999999	Los Angeles International Airport	-8
3486	CLE	KCLE	Cleveland	United States	A	41.411701202399996	-81.8498001099	Cleveland Hopkins International Airport	-5
3488	CVG	KCVG	Cincinnati	United States	A	39.0488014221	-84.6678009033	Cincinnati Northern Kentucky International Airport	-5
3494	EWR	KEWR	Newark	United States	A	40.69250106811523	-74.168701171875	Newark Liberty International Airport	-5
3520	DCA	KDCA	Washington	United States	A	38.8521	-77.037697	Ronald Reagan Washington National Airport	-5
3533	FLL	KFLL	Fort Lauderdale	United States	A	26.072599	-80.152702	Fort Lauderdale Hollywood International Airport	-5
3536	SLC	KSLC	Salt Lake City	United States	A	40.78839874267578	-111.97799682617188	Salt Lake City International Airport	-7
3550	IAH	KIAH	Houston	United States	A	29.98439979553223	-95.34140014648438	George Bush Intercontinental Houston Airport	-6
3552	ADW	KADW	Camp Springs	United States	A	38.810798999999996	-76.866997	Joint Base Andrews	-5
3570	PIT	KPIT	Pittsburgh	United States	A	40.49150085	-80.23290253	Pittsburgh International Airport	-5
3576	MIA	KMIA	Miami	United States	A	25.79319953918457	-80.29060363769531	Miami International Airport	-5
3577	SEA	KSEA	Seattle	United States	A	47.449001	-122.308998	Seattle Tacoma International Airport	-8
3585	IND	KIND	Indianapolis	United States	A	39.7173	-86.294403	Indianapolis International Airport	-5
3608	RIC	KRIC	Richmond	United States	A	37.50519943237305	-77.3197021484375	Richmond International Airport	-5
3613	SAV	KSAV	Savannah	United States	A	32.12760162	-81.20210266	Savannah Hilton Head International Airport	-5
3621	SAT	KSAT	San Antonio	United States	A	29.533700942993164	-98.46980285644531	San Antonio International Airport	-6
3626	RDU	KRDU	Raleigh-durham	United States	A	35.877601623535156	-78.7874984741211	Raleigh Durham International Airport	-5
3641	PVD	KPVD	Providence	United States	A	41.732601	-71.42040300000001	Theodore Francis Green State Airport	-5
3645	DTW	KDTW	Detroit	United States	A	42.212398529052734	-83.35340118408203	Detroit Metropolitan Wayne County Airport	-5
3646	TPA	KTPA	Tampa	United States	A	27.975500106811523	-82.533203125	Tampa International Airport	-5
3670	DFW	KDFW	Dallas-Fort Worth	United States	A	32.896801	-97.038002	Dallas Fort Worth International Airport	-6
3673	AUS	KAUS	Austin	United States	A	30.194499969482425	-97.6698989868164	Austin Bergstrom International Airport	-6
3678	STL	KSTL	St. Louis	United States	A	38.748697	-90.370003	St Louis Lambert International Airport	-6
3682	ATL	KATL	Atlanta	United States	A	33.6367	-84.428101	Hartsfield Jackson Atlanta International Airport	-5
3690	BNA	KBNA	Nashville	United States	A	36.1245002746582	-86.6781997680664	Nashville International Airport	-6
3697	LGA	KLGA	New York	United States	A	40.77719879	-73.87259674	La Guardia Airport	-5
3712	JAX	KJAX	Jacksonville	United States	A	30.49410057067871	-81.68789672851562	Jacksonville International Airport	-5
3714	IAD	KIAD	Washington	United States	A	38.94449997	-77.45580292	Washington Dulles International Airport	-5
3717	MKE	KMKE	Milwaukee	United States	A	42.94720077514648	-87.89659881591797	General Mitchell International Airport	-6
3720	PDX	KPDX	Portland	United States	A	45.58869934	-122.59799960000001	Portland International Airport	-8
3722	PBI	KPBI	West Palm Beach	United States	A	26.68320083618164	-80.09559631347656	Palm Beach International Airport	-5
3728	HNL	PHNL	Honolulu	United States	N	21.32062	-157.924228	Daniel K Inouye International Airport	-10
3731	SAN	KSAN	San Diego	United States	A	32.7336006165	-117.190002441	San Diego International Airport	-8
3734	ONT	KONT	Ontario	United States	A	34.05599975585937	-117.60099792480469	Ontario International Airport	-8
3745	SYR	KSYR	Syracuse	United States	A	43.11119842529297	-76.1063003540039	Syracuse Hancock International Airport	-5
3747	MDW	KMDW	Chicago	United States	A	41.785999	-87.752403	Chicago Midway International Airport	-6
3748	SJC	KSJC	San Jose	United States	A	37.362598	-121.929001	Norman Y. Mineta San Jose International Airport	-8
3751	DEN	KDEN	Denver	United States	A	39.861698150635	-104.672996521	Denver International Airport	-7
3752	PHL	KPHL	Philadelphia	United States	A	39.87189865112305	-75.24109649658203	Philadelphia International Airport	-5
3759	CMH	KCMH	Columbus	United States	A	39.998001	-82.891899	John Glenn Columbus International Airport	-5
3774	ANC	PANC	Anchorage	United States	A	61.174400329589844	-149.99600219726562	Ted Stevens Anchorage International Airport	-9
3793	RSW	KRSW	Fort Myers	United States	A	26.53619956970215	-81.75520324707031	Southwest Florida International Airport	-5
3797	JFK	KJFK	New York	United States	A	40.63980103	-73.77890015	John F Kennedy International Airport	-5
3807	RNO	KRNO	Reno	United States	A	39.49909973144531	-119.76799774169922	Reno Tahoe International Airport	-8
3817	SMF	KSMF	Sacramento	United States	A	38.69540023803711	-121.59100341796876	Sacramento International Airport	-8
3820	BUF	KBUF	Buffalo	United States	A	42.94049835	-78.73220062	Buffalo Niagara International Airport	-5
3830	ORD	KORD	Chicago	United States	A	41.9786	-87.9048	Chicago O'Hare International Airport	-6
3832	FAI	PAFA	Fairbanks	United States	A	64.81510162	-147.85600280000003	Fairbanks International Airport	-9
3849	BWI	KBWI	Baltimore	United States	A	39.1754	-76.668297	Baltimore/Washington International Thurgood Marshall Airport	-5
3855	TUL	KTUL	Tulsa	United States	A	36.19839859008789	-95.88809967041016	Tulsa International Airport	-6
3858	MSP	KMSP	Minneapolis	United States	A	44.882	-93.221802	Minneapolis-St Paul International/Wold-Chamberlain Airport	-6
3861	MSY	KMSY	New Orleans	United States	A	29.99340057373047	-90.25800323486328	Louis Armstrong New Orleans International Airport	-6
3862	PWM	KPWM	Portland	United States	A	43.64619827	-70.30930328	Portland International Jetport Airport	-5
3867	SNA	KSNA	Santa Ana	United States	A	33.67570114	-117.86799620000001	John Wayne Airport-Orange County Airport	-8
3876	CLT	KCLT	Charlotte	United States	A	35.2140007019043	-80.94309997558594	Charlotte Douglas International Airport	-5
3877	LAS	KLAS	Las Vegas	United States	A	36.08010101	-115.15200039999999	McCarran International Airport	-8
3878	MCO	KMCO	Orlando	United States	A	28.429399490356445	-81.30899810791016	Orlando International Airport	-5
3885	BKK	VTBS	Bangkok	Thailand	U	13.681099891662598	100.74700164794922	Suvarnabhumi Airport	7
3919	BPN	WALL	Balikpapan	Indonesia	N	-1.2682700157200002	116.89399719200001	Sultan Aji Muhamad Sulaiman Airport	8
3928	SUB	WARR	Surabaya	Indonesia	N	-7.379829883575439	112.78700256347656	Juanda International Airport	7
3930	ICN	RKSI	Seoul	South Korea	U	37.46910095214844	126.45099639892578	Incheon International Airport	9
3931	CNX	VTCC	Chiang Mai	Thailand	U	18.7667999268	98.962600708	Chiang Mai International Airport	7
3940	DPS	WADD	Denpasar	Indonesia	N	-8.7481698989868	115.16699981689	Ngurah Rai (Bali) International Airport	8
3941	ATH	LGAV	Athens	Greece	E	37.9364013672	23.944499969499997	Eleftherios Venizelos International Airport	2
3942	NGO	RJGG	Nagoya	Japan	U	34.8583984375	136.80499267578122	Chubu Centrair International Airport	9
3953	RIX	EVRA	Riga	Latvia	E	56.92359924316406	23.971099853515625	Riga International Airport	2
3959	VNO	EYVI	Vilnius	Lithuania	E	54.634102	25.285801	Vilnius International Airport	2
3964	EVN	UDYZ	Yerevan	Armenia	E	40.1473007202	44.3959007263	Zvartnots International Airport	4
3973	TBS	UGTB	Tbilisi	Georgia	N	41.6692008972	44.95470047	Tbilisi International Airport	4
3988	EZE	SAEZ	Buenos Aires	Argentina	N	-34.8222	-58.5358	Ministro Pistarini International Airport	-3
3992	KIX	RJBB	Osaka	Japan	U	34.42729949951172	135.24400329589844	Kansai International Airport	9
3998	PMI	LEPA	Palma de Mallorca	Spain	E	39.551700591999996	2.73881006241	Palma De Mallorca Airport	1
3999	DRW	YPDN	Darwin	Australia	N	-12.41469955444336	130.87699890136722	Darwin International Airport	9.5
4014	SDF	KSDF	Louisville	United States	A	38.1744	-85.736	Louisville International Standiford Field	-5
4029	DME	UUDD	Moscow	Russia	N	55.40879821777344	37.90629959106445	Domodedovo International Airport	3
4030	SYX	ZJSY	Sanya	China	U	18.30290031433105	109.41200256347656	Sanya Phoenix International Airport	8
4057	SSH	HESH	Sharm El Sheikh	Egypt	N	27.977300643899998	34.3950004578	Sharm El Sheikh International Airport	2
4059	NBO	HKJK	Nairobi	Kenya	N	-1.31923997402	36.9277992249	Jomo Kenyatta International Airport	3
4074	HIR	AGGH	Honiara	Solomon Islands	U	-9.4280004501343	160.05499267578	Honiara International Airport	11
4075	PPT	NTAA	Papeete	French Polynesia	U	-17.553698999999998	-149.60699499999998	Faa'a International Airport	-10
4078	OVB	UNNT	Novosibirsk	Russia	N	55.012599945068	82.650703430176	Tolmachevo Airport	7
4090	DVO	RPMD	Davao	Philippines	N	7.1255202293396	125.64600372314452	Francisco Bangoy International Airport	8
4105	WDH	FYWH	Windhoek	Namibia	S	-22.4799	17.4709	Hosea Kutako International Airport	1
4108	TNA	ZSJN	Jinan	China	U	36.857200622558594	117.21600341796876	Yaoqiang Airport	8
4119	JIB	HDAM	Djibouti	Djibouti	U	11.547300338745115	43.15950012207031	Djibouti-Ambouli Airport	3
4120	HAK	ZJHK	Haikou	China	U	19.93490028381348	110.45899963378906	Haikou Meilan International Airport	8
4130	BGW	ORBI	Baghdad	Iraq	U	33.262500762900004	44.2346000671	Baghdad International Airport	3
4144	SHE	ZYTX	Shenyang	China	U	41.63980102539063	123.48300170898438	Taoxian Airport	8
4167	SFB	KSFB	Sanford	United States	A	28.7775993347168	-81.23750305175781	Orlando Sanford International Airport	-5
4189	MWX	RKJB	Muan	South Korea	U	34.991406	126.382814	Muan International Airport	9
4206	CEB	RPVM	Cebu	Philippines	N	10.307499885559	123.97899627686	Mactan Cebu International Airport	8
4305	AGT	SGES	Ciudad del Este	Paraguay	S	-25.454516	-54.842681999999996	Guarani International Airport	-4
4315	BJV	LTFE	Bodrum	Turkey	E	37.25059890749999	27.664300918600002	Milas Bodrum International Airport	3
4317	SAW	LTFJ	Istanbul	Turkey	E	40.898601532	29.3092002869	Sabiha Gökçen International Airport	3
4330	IKA	OIIE	Tehran	Iran	E	35.416099548339844	51.152198791503906	Imam Khomeini International Airport	3.5
4331	MHD	OIMM	Mashhad	Iran	E	36.235198974609375	59.64099884033203	Mashhad International Airport	3.5
4374	KJA	UNKL	Krasnoyarsk	Russia	N	56.172901	92.493301	Yemelyanovo Airport	7
4380	CGQ	ZYCC	Changchun	China	U	43.9962005615	125.684997559	Longjia Airport	8
5698	MJI	HLLM	Tripoli	Libya	N	32.894100189208984	13.276000022888185	Mitiga Airport	2
6345	HET	ZBHH	Hohhot	China	U	40.851397999999996	111.82399699999999	Baita International Airport	8
6392	WNZ	ZSWZ	Wenzhou	China	U	27.912201	120.851997	Wenzhou Longwan International Airport	8
6934	ZIA	UUBW	Ramenskoe	Russia	N	55.553298999999996	38.150002	Zhukovsky International Airport	3
7353	PJC	SGPJ	Pedro Juan Caballero	Paraguay	U	-22.63999938964844	-55.83000183105469	Dr Augusto Roberto Fuster International Airport	-4
8076	DWC	OMDW	Dubai	United Arab Emirates	U	24.896356	55.161389	Al Maktoum International Airport	4
8949	HRI	VCRI	Mattala	Sri Lanka	N	6.284467	81.124128	Mattala Rajapaksa International Airport	5.5
9935	KNO	WIMM	Medan	Indonesia	N	3.6422220000000003	98.885278	Kualanamu International Airport	7
10209	PKX	ZBAD	Beijing	China	U	39.509945	116.41091999999999	Beijing Daxing International Airport	8
11051	DOH	OTHH	Doha	Qatar	N	25.273056	51.608056	Hamad International Airport	3
12087	HYD	VOHS	Hyderabad	India	N	17.2313175201	78.4298553467	Rajiv Gandhi International Airport	5.5
13268	DSS	GOBD	Diass	Senegal	N	14.67	-17.073332999999998	Blaise Diagne International Airport	0
13463	SHO	FDSK	Manzini	Swaziland	N	-26.358611	31.716944	King Mswati III International Airport	2
13575	DQM	OODQ	Duqm	Oman	N	19.501944	57.634167000000005	Duqm International Airport	4
13696	IST	LTFM	Istanbul	Turkey	E	41.275278	28.751944	Istanbul Airport	3
13760	ISB	OPIS	Islamabad	Pakistan	U	33.560713	72.851613	New Islamabad International Airport	5
14100	ETM	LLER	Eilat	Israel	\N	29.723694000000002	35.011416	Ramon Airport	1
\.


--
-- TOC entry 3188 (class 2606 OID 56247)
-- Name: airports airports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airports
    ADD CONSTRAINT airports_pkey PRIMARY KEY (id);


-- Completed on 2023-04-13 10:16:21

--
-- PostgreSQL database dump complete
--

