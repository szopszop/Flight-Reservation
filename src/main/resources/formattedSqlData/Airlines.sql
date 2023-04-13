--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2023-04-13 10:09:27

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
-- TOC entry 214 (class 1259 OID 56234)
-- Name: airlines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airlines (
    id bigint NOT NULL,
    iata_code character varying(255),
    icao_code character varying(255),
    callsign character varying(255),
    country character varying(255),
    name character varying(255)
);


ALTER TABLE public.airlines OWNER TO postgres;

--
-- TOC entry 3331 (class 0 OID 56234)
-- Dependencies: 214
-- Data for Name: airlines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.airlines (id, iata_code, icao_code, callsign, country, name) FROM stdin;
3	1T	RNX	NEXTIME	South Africa	1Time Airline
10	Q5	MLA	MILE-AIR	United States	40-Mile Air
13	AN	AAA	ANSETT	Australia	Ansett Australia
21	ZI	AAF	AIGLE AZUR	France	Aigle Azur
22	AQ	AAH	ALOHA	United States	Aloha Airlines
24	AA	AAL	AMERICAN	United States	American Airlines
28	OZ	AAR	ASIANA	Republic of Korea	Asiana Airlines
29	4K	AAS	AL-AAS	Pakistan	Askari Aviation
32	8U	AAW	AFRIQIYAH	Libya	Afriqiyah Airways
35	G4	AAY	ALLEGIANT	United States	Allegiant Air
42	M3	TUS	ABSA Cargo	Brazil	ABSA - Aerolinhas Brasileiras
55	8V	ACP	ASTRAL CARGO	Kenya	Astral Aviation
72	ZY	ADE	ADA AIR	Albania	Ada Air
83	JP	ADR	ADRIA	Slovenia	Adria Airways
90	UX	AEA	EUROPA	Spain	Air Europa
93	EM	AEB	AEROBEN	Benin	Aero Benin
96	A3	AEE	AEGEAN	Greece	Aegean Airlines
106	PE	AEL	AIR EUROPE	Italy	Air Europe
109	KO	AER	ACE AIR	United States	Alaska Central Express
112	5W	AEU	FLYSTAR	United Kingdom	Astraeus
114	VV	AEW	AEROSVIT	Ukraine	Aerosvit Airlines
116	I9	AEY	AIR ITALY	Italy	Air Italy
120	QQ	UTY	UNITY	Australia	Alliance Airlines
125	FG	AFG	ARIANA	Afghanistan	Ariana Afghan Airlines
130	SU	AFL	AEROFLOT	Russia	Aeroflot Russian Airlines
132	JA	BON	AIR BOSNA	Bosnia and Herzegovina	Air Bosna
137	AF	AFR	AIRFRANS	France	Air France
139	SB	ACI	AIRCALIN	France	Air Caledonie International
149	2Q	SNC	NIGHT CARGO	United States	Air Cargo Carriers
153	SW	NMB	NAMIBIA	Namibia	Air Namibia
165	5D	SLI	COSTERA	Mexico	Aerolitoral
174	7T	AGV	AIR GLACIERS	Switzerland	Air Glaciers
179	PL	PLI	Aeroperu	Peru	Aeroper
180	8A	BMM	ATLAS BLUE	Morocco	Atlas Blue
197	J2	AHY	AZAL	Azerbaijan	Azerbaijan Airlines
198	U3	AIA	AVIES	Estonia	Avies
208	ED	ABQ	PAKBLUE	Pakistan	Airblue
214	AB	BER	AIR BERLIN	Germany	Air Berlin
218	AI	AIC	AIRINDIA	India	Air India Limited
220	ZB	BUB	BOURBON	Reunion	Air Bourbon
221	CC	ABD	ATLANTA	Iceland	Air Atlanta Icelandic
225	TN	THT	TAHITI AIRLINES	France	Air Tahiti Nui
231	IZ	AIZ	ARKIA	Israel	Arkia Israel Airlines
239	JM	AJM	JAMAICA	Jamaica	Air Jamaica
240	AP	ADH	HERON	Italy	Air One
241	S2	RSH	SAHARA	India	Air Sahara
242	KM	AMC	AIR MALTA	Malta	Air Malta
250	NQ	AJX	AIR JAPAN	Japan	Air Japan
263	4A	AKL	\N	Kiribati	Air Kiribati
281	HP	AWE	CACTUS	United States	America West Airlines
282	ZW	AWI	AIR WISCONSIN	United States	Air Wisconsin
286	U9	TAK	TATARSTAN	Russia	Tatarstan Airlines
306	QM	AML	MALAWI	Malawi	Air Malawi
316	NX	AMU	AIR MACAO	Macao	Air Macau
319	HM	SEY	SEYCHELLES	Seychelles	Air Seychelles
321	AM	AMX	AEROMEXICO	Mexico	AeroMéxico
324	NH	ANA	ALL NIPPON	Japan	All Nippon Airways
327	YW	ANE	AIR NOSTRUM	Spain	Air Nostrum
328	PX	ANG	NUIGINI	Papua New Guinea	Air Niugini
329	G9	ABY	ARABIA	United Arab Emirates	Air Arabia
330	AC	ACA	AIR CANADA	Canada	Air Canada
333	BT	BTI	AIRBALTIC	Latvia	Air Baltic
336	EL	ANK	ANK AIR	Japan	Air Nippon
338	TL	ANO	TOPEND	Australia	Airnorth
341	4N	ANT	AIR NORTH	Canada	Air North Charter - Canada
345	NZ	ANZ	NEW ZEALAND	New Zealand	Air New Zealand
371	XM	SMX	ALIEXPRESS	Italy	Alitalia Express
386	GV	ARF	Aero Fox	Germany	Aero Flight
397	JW	APW	BIG A	United States	Arrow Air
410	2B	ARD	AEROCONDOR	Portugal	Aerocondor
411	4C	ARE	 Aerovias de Integracion Regional	 S.A.	Aires
412	AR	ARG	ARGENTINA	Argentina	Aerolineas Argentinas
439	AS	ASA	 Inc.	ALASKA	Alaska Airlines
442	4D	ASD	AIR SINAI	Egypt	Air Sinai
452	EV	ASQ	ACEY	United States	Atlantic Southeast Airlines
462	OB	ASZ	AIR ASTRAKHAN	Russia	Astrakhan Airlines
465	TC	ATC	TANZANIA	Tanzania	Air Tanzania
470	2J	VBW	BURKINA	Burkina Faso	Air Burkina
476	FO	ATM	AIRTAS	Australia	Airlines Of Tasmania
477	PJ	SPM	\N	France	Air Saint Pierre
491	OS	AUA	AUSTRIAN	Austria	Austrian Airlines
493	IQ	AUB	AUGSBURG-AIR	Germany	Augsburg Airways
502	MO	AUH	SULTAN	United Arab Emirates	Abu Dhabi Amiri Flight
503	5N	AUL	DVINA	Russia	Aeroflot-Nord
508	GR	AUR	AYLINE	United Kingdom	Aurigny Air Services
510	AU	AUT	AUSTRAL	Argentina	Austral Lineas Aereas
515	AV	AVA	 S.A.	AVIANCA	Avianca - Aerovias Nacionales de Colombia
524	NF	AVN	AIR VAN	Vanuatu	Air Vanuatu
543	B9	BGD	AIR BANGLA	Bangladesh	Air Bangladesh
547	DR	BIE	MEDITERRANEE	France	Air Mediterranee
563	7E	AWU	SYLT-AIR	Germany	Aeroline GmbH
565	6G	AWW	RED DRAGON	United Kingdom	Air Wales
567	TX	FWI	FRENCH WEST	France	Air Caraïbes
569	IX	AXB	EXPRESS INDIA	India	Air India Express
575	XT	AXL	EXEL COMMUTER	Netherlands	Air Exel
576	AK	AXM	ASIAN EXPRESS	Malaysia	AirAsia
595	3G	AYZ	ATLANT-SOYUZ	Russia	Atlant-Soyuz Airlines
596	AZ	AZA	ALITALIA	Italy	Alitalia
603	Z8	AZN	\N	Bolivia	Amaszonas
608	UM	AZW	AIR ZIMBABWE	Zimbabwe	Air Zimbabwe
622	R7	OCA	AROSCA	Venezuela	Aserca Airlines
641	FV	SDM	PULKOVO	Russia	Rossiya-Russian Airlines
659	MQ	EGF	EAGLE FLIGHT	United States	American Eagle Airlines
682	VU	VUN	AIRIVOIRE	Ivory Coast	Air Ivoire
683	BP	BOT	BOTSWANA	Botswana	Air Botswana
690	GS	UPA	FOYLE	United Kingdom	Air Foyle
692	VT	VTA	AIR TAHITI	French Polynesia	Air Tahiti
695	VL	VIM	\N	Bulgaria	Air VIA
715	FK	WTA	WEST TOGO	Togo	Africa West
724	V8	VAS	ATRAN	Russian Federation	ATRAN Cargo Airlines
751	CA	CCA	AIR CHINA	China	Air China
753	Q6	CDP	CONDOR-PERU	Peru	Aero Condor Peru
787	CV	CVA	CHATHAM	New Zealand	Air Chathams
788	CW	CWM	AIR MARSHALLS	Marshall Islands	Air Marshall Islands
792	ZA	CYD	CYCLONE	United States	Access Air
794	AH	DAH	AIR ALGERIE	Algeria	Air Algerie
800	KI	DHI	ADAM SKY	Indonesia	Adam Air
807	EN	DLA	DOLOMOTI	Italy	Air Dolomiti
816	D9	DNV	DONAVIA	Russia	Aeroflot-Don
817	NM	DRD	ALADA AIR	Spain	Air Madrid
837	EI	EIN	SHAMROCK	Ireland	Aer Lingus
876	OF	FIF	AIR FINLAND	Finland	Air Finland
879	FJ	FJI	PACIFIC	Fiji	Air Pacific
881	RC	FLI	FAROELINE	Faroe Islands	Atlantic Airways
882	QH	FLZ	AIR FLORIDA	United States	Air Florida
896	NY	FXI	FAXI	Iceland	Air Iceland
897	2P	GAP	ORIENT PACIFIC	Philippines	Air Philippines
909	2U	GIP	FUTURE EXPRESS	Guinea	Air Guinee Express
921	GL	GRL	GREENLAND	Denmark	Air Greenland
928	5Y	GTI	GIANT	United States	Atlas Air
931	GG	GUY	GREEN BIRD	French Guiana	Air Guyane
970	W9	JAB	AIR BAGAN	Myanmar	Air Bagan
983	QK	JZA	JAZZ	Canada	Air Canada Jazz
995	KK	KKK	ATLASJET	Turkey	Atlasjet
998	JS	KOR	AIR KORYO	Democratic People's Republic of Korea	Air Koryo
1006	KC	KZR	ASTANALINE	Kazakhstan	Air Astana
1008	LV	LBC	ALBANIAN	Albania	Albanian Airlines
1034	XL	LNE	LAN ECUADOR	Ecuador	Aerolane
1048	TD	LUR	\N	Armenia	Atlantis European Airways
1052	LK	LXR	AIRLUXOR	Portugal	Air Luxor
1057	MK	MAU	AIRMAURITIUS	Mauritius	Air Mauritius
1066	MD	MDG	AIR MADAGASCAR	Madagascar	Air Madagascar
1073	9U	MLD	AIR MOLDOVA	Moldova	Air Moldova
1087	A7	MPD	RED COMET	Spain	Air Plus Comet
1116	AJ	NIG	AEROLINE	Nigeria	Aero Contractors
1143	OT	PEL	PELICAN	Australia	Aeropelican Air Services
1188	RE	REA	AER ARANN	Ireland	Aer Arann
1191	UU	REU	REUNION	France	Air Austral
1200	6K	RIT	ASIAN SPIRIT	Philippines	Asian Spirit
1202	RK	RKA	AIRAFRIC	Ivory Coast	Air Afrique
1203	A5	RLA	AIRLINAIR	France	Airlinair
1206	QL	RLN	AERO LANKA	Sri Lanka	Aero Lanka
1213	20	RNE	AIR SALONE	Sierra Leone	Air Salone
1216	U8	RNV	ARMAVIA	Armenia	Armavia
1224	P5	RPB	AEROREPUBLICA	Colombia	AeroRep
1230	BF	RSR	CONGOSERV	Republic of the Congo	Aero-Service
1231	5L	RSU	AEROSUR	Bolivia	Aerosur
1266	Z3	SMJ	AVAVIA	Zimbabwe	Avient Aviation
1287	R3	SYL	AIR YAKUTIA	Russia	Aircompany Yakutia
1290	VW	TAO	TRANS-AEROMAR	Mexico	Aeromar
1299	OR	TFL	ARKEFLY	Netherlands	Arkefly
1308	CG	TOK	BALUS	Papua New Guinea	Airlines PNG
1316	FL	TRS	CITRUS	United States	AirTran Airways
1317	TS	TSC	TRANSAT	Canada	Air Transat
1322	EC	TWN	TWINARROW	Uzbekistan	Avialeasing Aviation Company
1326	VO	TYR	TYROLEAN	Austria	Tyrolean Airways
1338	2K	GLG	AEROGAL	Ecuador	Aerolineas Galapagos (Aerogal)
1340	6R	DRU	MIRNY	Russia	Alrosa Mirny Air Enterprise
1355	BA	BAW	SPEEDBIRD	United Kingdom	British Airways
1359	BG	BBC	BANGLADESH	Bangladesh	Biman Bangladesh Airlines
1401	4T	BHP	BELAIR	Switzerland	Belair Airlines
1403	UP	BHS	BAHAMAS	Bahamas	Bahamasair
1411	BS	BIH	BRINTEL	United Kingdom	British International Helicopters
1422	PG	BKP	BANGKOK AIR	Thailand	Bangkok Airways
1427	KF	BLF	BLUEFIN	Finland	Blue1
1434	JV	BLS	BEARSKIN	Canada	Bearskin Lake Air Service
1436	B3	BLV	BELLVIEW AIRLINES	Nigeria	Bellview Airlines
1437	BD	BMA	MIDLAND	United Kingdom	bmi
1441	WW	BMI	BABY	United Kingdom	bmibaby
1442	CH	BMJ	BEMIDJI	United States	Bemidji Airlines
1463	BV	BPA	BLUE PANOROMA	Italy	Blue Panorama Airlines
1472	8E	BRG	BERING AIR	United States	Bering Air
1478	B2	BRU	BELARUS AVIA	Belarus	Belavia Belarusian Airlines
1500	7P	BTV	BATAVIA	Indonesia	Metro Batavia
1508	J8	BVT	BERJAYA	Malaysia	Berjaya Air
1510	QW	BWG	BLUE WINGS	Germany	Blue Wings
1523	DB	BZH	BRITAIR	France	Brit Air
1531	SN	DAT	BEE-LINE	Belgium	Brussels Airlines
1539	NT	IBB	\N	Spain	Binter Canarias
1542	0B	JOR	BLUE TRANSPORT	Romania	Blue Air
1543	KJ	LAJ	BEE MED	United Kingdom	British Mediterranean Airways
1548	FB	LZB	FLYING BULGARIA	Bulgaria	Bulgaria Air
1550	8N	NKF	NORDFLIGHT	Sweden	Barents AirLink
1581	5C	ICL	CAL	Israel	CAL Cargo Air Lines
1607	XG	CLI	CALIMA	Spain	Calima Aviacion
1615	CP	CDN	CANADIAN	Canada	Canadian Airlines
1623	5T	MPE	EMPRESS	Canada	Canadian North
1629	9K	KAP	CAIR	United States	Cape Air
1663	BW	BWA	CARIBBEAN AIRLINES	Trinidad and Tobago	Caribbean Airlines
1669	V3	KRP	CARPATAIR	Romania	Carpatair
1675	RV	CPN	CASPIAN	Iran	Caspian Airlines
3370	W5	IRM	MAHAN AIR	Iran	Mahan Air
1680	CX	CPA	CATHAY	Hong Kong SAR of China	Cathay Pacific
1682	KX	CAY	CAYMAN	Cayman Islands	Cayman Airways
1683	5J	CEB	CEBU AIR	Philippines	Cebu Pacific
1708	C0	CLW	CENTRALWINGS	Poland	Centralwings
1739	RP	CHQ	CHAUTAUQUA	United States	Chautauqua Airlines
1756	CI	CAL	DYNASTY	Taiwan	China Airlines
1758	MU	CES	CHINA EASTERN	China	China Eastern Airlines
1767	CZ	CSN	CHINA SOUTHERN	China	China Southern Airlines
1769	HR	CUA	LIANHANG	China	China United Airlines
1771	3Q	CYH	YUNNAN	China	Yunnan Airlines
1781	QI	CIM	CIMBER	Denmark	Cimber Air
1784	C9	RUS	CIRRUS AIR	Germany	Cirrus Airlines
1789	CF	SDR	SWEDESTAR	Sweden	City Airline
1790	G3	CIX	CONNEXION	Burundi	City Connexion Airlines
1792	WX	BCY	CITY-IRELAND	Ireland	CityJet
1795	CJ	CFE	FLYER	United Kingdom	BA CityFlyer
1821	9L	CJC	COLGAN	United States	Colgan Air
1828	OH	COM	COMAIR	United States	Comair
1829	MN	CAW	COMMERCIAL	South Africa	Comair
1843	C5	UCA	COMMUTAIR	United States	CommutAir
1844	KR	CWK	CONTICOM	Comoros	Comores Airlines
1860	CP	CPZ	Compass Rose	United States	Compass Airlines
1868	DE	CFG	CONDOR	Germany	Condor Flugdienst
1876	6A	CHP	AVIACSA	Mexico	Consorcio Aviaxsa
1879	C3	KIS	CONTACTAIR	Germany	Contact Air
1881	CO	COA	CONTINENTAL	United States	Continental Airlines
1884	CS	CMI	AIR MIKE	United States	Continental Micronesia
1886	V0	VCV	CONVIASA	Venezuela	Conviasa
1889	CM	CMP	COPA	Panama	Copa Airlines
1908	SS	CRL	CORSAIR	France	Corsairfly
1909	XK	CCM	CORSICA	France	Corse-Mediterranee
1925	OU	CTN	CROATIA	Croatia	Croatia Airlines
1936	CU	CUB	CUBANA	Cuba	Cubana de Aviación
1942	CY	CYP	CYPRUS	Cyprus	Cyprus Airways
1946	OK	CSA	CSA-LINES	Czech Republic	Czech Airlines
1954	DX	DTR	DANISH	Denmark	DAT Danish Air Transport
1966	D3	DAO	DALO AIRLINES	Djibouti	Daallo Airlines
1973	H8	KHB	DALAVIA	Russia	Dalavia
1983	0D	DWT	DARWIN	Switzerland	Darwin Airline
2009	DL	DAL	DELTA	United States	Delta Air Lines
2041	D8	DJB	DJIBOUTI AIR	Djibouti	Djibouti Airlines
2047	DO	DOA	DOMINICANA	Dominican Republic	Dominicana de Aviaci
2048	E3	DMO	DOMODEDOVO	Russia	Domodedovo Airlines
2051	5D	UDC	DONBASS AERO	Ukraine	DonbassAero
2056	KA	HDA	 Hong Kong Dragon Airlines	DRAGON	Dragonair
2058	KB	DRK	ROYAL BHUTAN	Bhutan	Druk Air
2077	DI	BAG	SPEEDWAY	Germany	dba
2091	BR	EVA	EVA	Taiwan	EVA Air
2104	QU	UGX	CRANE	Uganda	East African
2117	T3	EZE	EASTFLIGHT	United Kingdom	Eastern Airways
2125	DK	ELA	\N	Australia	Eastland Air
2138	WK	EDW	EDELWEISS	Switzerland	Edelweiss Air
2143	MS	MSR	EGYPTAIR	Egypt	Egyptair
2150	LY	ELY	ELAL	Israel	El Al Israel Airlines
2155	UZ	BRQ	BURAQAIR	Libya	El-Buraq Air Transport
2183	EK	UAE	EMIRATES	United Arab Emirates	Emirates
2193	EU	EEA	ECUATORIANA	Ecuador	Empresa Ecuatoriana De Aviacion
2213	B8	ERT	ERITREAN	Eritrea	Eritrean Airlines
2218	OV	ELL	ESTONIAN	Estonia	Estonian Air
2220	ET	ETH	ETHIOPIAN	Ethiopia	Ethiopian Airlines
2222	EY	ETD	ETIHAD	United Arab Emirates	Etihad Airways
2237	UI	ECA	EUROCYPRIA	Cyprus	Eurocypria Airlines
2239	GJ	EEU	EUROFLY	Italy	Eurofly Service
2245	K2	ELO	EUROLOT	Poland	Eurolot
2251	EA	EAL	STAR WING	Germany	European Air Express
2260	EW	EWG	EUROWINGS	Germany	Eurowings
2261	EZ	EIA	EVERGREEN	United States	Evergreen International Airlines
2264	JN	XLA	EXPO	United Kingdom	Excel Airways
2293	EO	LHN	LONGHORN	United States	Express One International
2295	XE	BTA	JET LINK	United States	ExpressJet
2297	U2	EZY	EASY	United Kingdom	easyJet
2324	EF	EFA	Far Eastern	Taiwan	Far Eastern Air Transport
2350	AY	FIN	FINNAIR	Finland	Finnair
2351	FC	WBA	WESTBIRD	Finland	Finncomm Airlines
2353	FY	FFM	FIREFLY	Malaysia	Firefly
2354	7F	FAB	\N	Canada	First Air
2357	DP	FCA	JETSET	United Kingdom	First Choice Airways
2395	B5	FLT	FLIGHTLINE	United Kingdom	Flightline
2404	RF	FWL	FLO WEST	United States	Florida West International Airways
2417	D7	XAX	XANADU	Malaysia	AirAsia X
2418	TE	LIL	LITHUANIA AIR	Lithuania	FlyLal
2419	LF	NDC	NORDIC	Sweden	FlyNordic
2420	F7	BBO	BABOO	Switzerland	Flybaboo
2421	BE	BEE	JERSEY	United Kingdom	Flybe
2425	B4	GSM	GLOBESPAN	United Kingdom	Flyglobespan
2439	VY	FOS	\N	Taiwan	Formosa Airlines
2454	FP	FRE	FREEDOM	United States	Freedom Air
2468	F9	FFT	FRONTIER FLIGHT	United States	Frontier Airlines
2470	2F	FTA	FRONTIER-AIR	United States	Frontier Flying Service
2486	GT	GBL	GEEBEE AIRWAYS	United Kingdom	GB Airways
2520	GA	GIA	INDONESIA	Indonesia	Garuda Indonesia
2524	4G	GZP	GAZPROMAVIA	Russia	Gazpromavia
2538	A9	TGZ	TAMAZI	Georgia	Georgian Airways
2541	QB	GFG	NATIONAL	Georgia	Georgian National Airlines
2547	ST	GMI	GERMANIA	Germany	Germania
2548	4U	GWI	GERMAN WINGS	Germany	Germanwings
2556	G0	GHB	GHANA AIRLINES	Ghana	Ghana International Airlines
2575	G8	GOW	GOAIR	India	Go Air
2577	G7	GJS	GATEWAY	United States	GoJet Airlines
5354	LC	VLO	VELOG	Brazil	Varig Log
2581	G3	GLO	GOL TRANSPORTE	Brazil	Gol Transportes Aéreos
2585	DC	GAO	GOLDEN	Sweden	Golden Air
2607	ZK	GLA	LAKES AIR	United States	Great Lakes Airlines
2622	TA	TAT	TACA-COSTARICA	Costa Rica	Grupo TACA
2638	GF	GBA	GULF BAHRAIN	Bahrain	Gulf Air Bahrain
2657	H6	HAG	HAGELAND	United States	Hageland Aviation Services
2660	HU	CHH	HAINAN	China	Hainan Airlines
2663	2T	HAM	\N	Haiti	Haiti Ambassador Airlines
2674	4R	HHI	HAMBURG JET	Germany	Hamburg International
2681	X3	HLX	YELLOW CAB	Germany	TUIfly
2682	HF	HLF	HAPAG LLOYD	Germany	Hapagfly
2688	HA	HAL	HAWAIIAN	United States	Hawaiian Airlines
2704	8H	HFR	HELIFRANCE	France	Heli France
2731	JB	JBA	HELIJET	Canada	Helijet
2747	T4	HEJ	HELLAS JET	Greece	Hellas Jet
2748	HW	FHE	FLYHELLO	Switzerland	Hello
2750	2L	OAW	HELVETIC	Switzerland	Helvetic Airways
2757	UD	HER	HEX AIRLINE	France	Hex'Air
2765	HD	ADO	AIR DO	Japan	Hokkaido International Airlines
2773	HX	CRK	BAUHINIA	Hong Kong SAR of China	Hong Kong Airlines
2774	UO	HKE	HONGKONG SHUTTLE	Hong Kong SAR of China	Hong Kong Express Airways
2778	QX	QXE	HORIZON AIR	United States	Horizon Air
2782	BN	HZA	\N	Australia	Horizon Airlines
2822	IB	IBE	IBERIA	Spain	Iberia Airlines
2825	TY	IWD	\N	Spain	Iberworld
2826	FW	IBX	IBEX	Japan	Ibex Airlines
2835	FI	ICE	ICEAIR	Iceland	Icelandair
2845	IK	ITX	IMPROTEX	Azerbaijan	Imair Airlines
2850	6E	IGO	IFLY	India	IndiGo Airlines
2853	IC	IAC	INDAIR	India	Indian Airlines
2855	I9	IBU	INDIGO BLUE	United States	Indigo
2857	QZ	AWQ	WAGON AIR	Indonesia	Indonesia AirAsia
2858	IO	IAA	INDO LINES	Indonesia	Indonesian Airlines
2881	D6	ILN	INLINE	South Africa	Interair South Africa
2883	ZA	SUW	ASTAIR	Russia	Interavia Airlines
2896	ID	ITK	INTERLINK	South Africa	Interlink Airlines
2916	3L	ISK	INTERSKY	Austria	Intersky
2922	IR	IRA	IRANAIR	Iran	Iran Air
2923	EP	IRC	\N	Iran	Iran Aseman Airlines
2926	IA	IAW	IRAQI	Iraq	Iraqi Airways
2942	8L	CGP	\N	United Arab Emirates	Cargo Plus Aviation
2948	IF	ISW	PINTADERA	Spain	Islas Airways
2950	WC	ISV	\N	Honduras	Islena De Inversiones
2954	6H	ISR	ISRAIR	Israel	Israir
2958	GI	IKA	ITEK-AIR	Kyrgyzstan	Itek Air
2969	JC	JEX	JANEX	Japan	JAL Express
2970	JO	JAZ	JALWAYS	Japan	JALways
2987	JL	JAL	JAPANAIR	Japan	Japan Airlines
2988	JL	JAL	J-BIRD	Japan	Japan Airlines Domestic
2989	EG	JAA	ASIA	Japan	Japan Asia Airways
2990	NU	JTA	JAI OCEAN	Japan	Japan Transocean Air
2993	J9	JZR	JAZEERA	Kuwait	Jazeera Airways
2994	7C	JJA	JEJU AIR	Republic of Korea	Jeju Air
3000	9W	JAI	JET AIRWAYS	India	Jet Airways
3021	3K	JSA	JETSTAR ASIA	Singapore	Jetstar Asia Airways
3026	LS	EXS	CHANNEX	United Kingdom	Jet2.com
3027	8J	JFU	ARGAN	Morocco	Jet4You
3029	B6	JBU	JETBLUE	United States	JetBlue Airways
3032	JF	JAF	BEAUTY	Belgium	Jetairfly
3052	JQ	JST	JETSTAR	Australia	Jetstar Airways
3081	HO	DKH	JUNEYAO AIRLINES	China	Juneyao Airlines
3087	KD	KNI	KALININGRAD AIR	Russia	KD Avia
3088	WA	KLC	CITY	Netherlands	KLM Cityhopper
3090	KL	KLM	KLM	Netherlands	KLM Royal Dutch Airlines
3097	RQ	KMF	KAMGAR	Afghanistan	Kam Air
3110	KV	MVD	AIR MINVODY	Russia	Kavminvodyavia
3123	M5	KEN	KENMORE	United States	Kenmore Air
3126	KQ	KQA	KENYA	Kenya	Kenya Airways
3142	IT	KFR	KINGFISHER	India	Kingfisher Airlines
3148	Y9	IRK	KISHAIR	Iran	Kish Air
3157	7K	KGL	KOGALYM	Russia	Kogalymavia Air Company
3163	KE	KAL	KOREANAIR	Republic of Korea	Korean Air
3168	7B	KJC	KRASNOJARSKY AIR	Russia	Krasnojarsky Airlines
3175	GW	KIL	AIR KUBAN	Russia	Kuban Airlines
3179	KU	KAC	KUWAITI	Kuwait	Kuwait Airways
3180	GO	KZU	KUZU CARGO	Turkey	Kuzu Airlines Cargo
3197	LR	LRC	LACSA	Costa Rica	LACSA
3200	LA	LAN	LAN	Chile	LAN Airlines
3201	4M	DSM	LAN AR	Argentina	LAN Argentina
3204	LU	LXP	LANEX	Chile	LAN Express
3205	LP	LPE	LANPERU	Peru	LAN Peru
3210	LO	LOT	POLLOT	Poland	LOT Polish Airlines
3211	XO	LTE	FUN JET	Spain	LTE International Airways
3212	L3	LTO	BILLA TRANSPORT	Austria	LTU Austria
3233	QV	LAO	LAO	Lao Peoples Democratic Republic	Lao Airlines
3239	NG	LDA	LAUDA AIR	Austria	Lauda Air
3251	LI	LIA	LIAT	Antigua and Barbuda	Leeward Islands Air Transport
3258	LN	LAA	LIBAIR	Libya	Libyan Arab Airlines
3287	LM	LAM	MOZAMBIQUE	Mozambique	Linhas A
3290	JT	LNI	LION INTER	Indonesia	Lion Mentari Airlines
3319	HE	LGW	WALTER	Germany	Luftfahrtgesellschaft Walter
3320	LH	DLH	LUFTHANSA	Germany	Lufthansa
3321	LH	GEC	LUFTHANSA CARGO	Germany	Lufthansa Cargo
3322	CL	CLH	HANSALINE	Germany	Lufthansa CityLine
3326	L5	LTR	LUFT TRANSPORT	Norway	Lufttransport
3329	LG	LGL	LUXAIR	Luxembourg	Luxair
3342	MJ	LPR	LAPA	Argentina	L
3349	M7	MAA	MAS CARGA	Mexico	MasAir
3350	IN	MAK	MAKAVIO	Macedonia	MAT Macedonian Airlines
3354	OM	MGL	MONGOL AIR	Mongolia	MIAT Mongolian Airlines
3357	MB	MNB	BLACK SEA	Turkey	MNG Airlines
3363	CC	MCK	\N	Australia	Macair Airlines
3378	MH	MAS	MALAYSIAN	Malaysia	Malaysia Airlines
3386	TF	SCW	Scanwings	Sweden	Malmö Aviation
3387	R5	MAC	MALTA CHARTER	Malta	Malta Air Charter
3389	MA	MAH	MALEV	Hungary	Malév
3391	RI	MDL	MANDALA	Indonesia	Mandala Airlines
3392	AE	MDA	Mandarin	Taiwan	Mandarin Airlines
3393	JE	MNO	TULCA	South Africa	Mango
3411	MP	MPH	MARTINAIR	Netherlands	Martinair
3432	8M	MXL	MAXAIR	Sweden	Maxair
3437	MW	MYD	MYLAND	Belize	Maya Island Air
3463	IG	ISS	MERAIR	Italy	Meridiana
3465	MZ	MNA	MERPATI	Indonesia	Merpati Nusantara Airlines
3466	YV	ASH	AIR SHUTTLE	United States	Mesa Airlines
3467	XJ	MES	MESABA	United States	Mesaba Airlines
3479	MX	MXA	MEXICANA	Mexico	Mexicana de Aviaci
3490	ME	MEA	CEDAR JET	Lebanon	Middle East Airlines
3494	JI	MDW	MIDWAY	United States	Midway Airlines
3497	YX	MEP	\N	United States	Midwest Airlines
3498	MY	MWA	\N	Egypt	Midwest Airlines (Egypt)
3529	2M	MDV	MOLDAVIAN	Moldova	Moldavian Airlines
3532	ZB	MON	MONARCH	United Kingdom	Monarch Airlines
3539	YM	MGX	MONTAIR	Montenegro	Montenegro Airlines
3545	3R	GAI	GROMOV AIRLINE	Russia	Moskovia Airlines
3547	M9	MSI	MOTOR SICH	Ukraine	Motor Sich
3568	VZ	MYT	KESTREL	United Kingdom	MyTravel Airways
3569	UB	UBA	UNIONAIR	Myanmar	Myanma Airways
3570	8M	MMM	assignment postponed	Myanmar	Myanmar Airways International
3589	UE	NAS	NASAIRWAYS	Eritrea	Nasair
3608	NC	NJS	NATIONAL JET	Australia	National Jet Systems
3613	CE	NTW	NATIONWIDE	South Africa	Nationwide Airlines
3618	ON	RON	AIR NAURU	Nauru	Nauru Air Corporation
3637	RA	RNA	ROYAL NEPAL	Nepal	Nepal Airlines
3641	1I	EJA	EXECJET	United States	NetJets
3644	EJ	NEA	NEW ENGLAND	United States	New England Airlines
3652	2N	NTJ	NEXTJET	Sweden	NextJet
3661	HG	NLY	FLYNIKI	Austria	Niki
3674	DD	NOK	NOK AIR	Thailand	Nok Air
3731	NW	NWA	NORTHWEST	United States	Northwest Airlines
3734	J3	PLR	POLARIS	Canada	Northwestern Air
3737	DY	NAX	NOR SHUTTLE	Norway	Norwegian Air Shuttle
3740	BJ	LBT	NOUVELAIR	Tunisia	Nouvel Air Tunisie
3743	1I	NVR	NAVIGATOR	Sweden	Novair
3754	XY	KNE	NAS EXPRESS	Saudi Arabia	Nas Air
3759	O8	OHK	OASIS	Hong Kong	Oasis Hong Kong Airlines
3764	O6	ONE	OCEANAIR	Brazil	Oceanair
3776	OA	OAL	OLYMPIC	Greece	Olympic Airlines
3778	WY	OMA	OMAN AIR	Oman	Oman Air
3781	OY	OAE	OMNI-EXPRESS	United States	Omni Air International
3788	8Q	OHY	ONUR AIR	Turkey	Onur Air
3805	R2	ORB	ORENBURG	Russia	Orenburg Airlines
3811	OX	OEA	ORIENT THAI	Thailand	Orient Thai Airlines
3814	QO	OGN	ORIGIN	New Zealand	Origin Pacific Airways
3822	OL	OLT	OLTRA	Germany	Ostfriesische Lufttransport
3826	OJ	OLA	OVERLAND	Nigeria	Overland Airways
3831	O7	OZJ	AUSJET	Australia	Ozjet Airlines
3834	PV	PNR	SKYJET	Spain	PAN Air
3835	9Q	PBA	PEEBEE AIR	Thailand	PB Air
3839	PU	PUA	PLUNA	Uruguay	PLUNA
3840	U4	PMT	MULTITRADE	Cambodia	PMTair
3850	BL	PIC	PACIFIC AIRLINES	Vietnam	Jetstar Pacific
3856	8P	PCO	PASCO	Canada	Pacific Coastal Airline
3857	Q8	PEC	PAC-EAST CARGO	Philippines	Pacific East Asia Cargo Airlines
3865	LW	NMI	TSUNAMI	United States	Pacific Wings
3871	PK	PIA	PAKISTAN	Pakistan	Pakistan International Airlines
3907	I7	PMW	PARAWAY	India	Paramount Airways
3926	PC	PGT	SUNTURK	Turkey	Pegasus Airlines
3935	KS	PEN	PENINSULA	United States	Peninsula Airways
3952	PR	PAL	PHILIPPINE	Philippines	Philippine Airlines
3969	PI	PDT	PIEDMONT	United States	Piedmont Airlines (1948-1989)
3976	9E	FLG	FLAGSHIP	United States	Pinnacle Airlines
4013	PH	PAO	POLYNESIAN	Samoa	Polynesian Airlines
4021	PD	POE	PORTER AIR	Canada	Porter Airlines
4022	NI	PGA	PORTUGALIA	Portugal	Portugalia
4026	BK	PDC	DISTRICT	United States	Potomac Air
4031	PW	PRF	PRECISION AIR	Tanzania	Precision Air
4089	QF	QFA	QANTAS	Australia	Qantas
4091	QR	QTR	QATARI	Qatar	Qatar Airways
4178	ZL	RXA	REX	Australia	Regional Express
4187	RW	RPA	BRICKYARD	United States	Republic Airlines
4188	RH	RPH	PUBLIC EXPRESS	Indonesia	Republic Express Airlines
4234	GZ	RAR	\N	Cook Islands	Air Rarotonga
4248	AT	RAM	ROYALAIR MAROC	Morocco	Royal Air Maroc
4255	BI	RBA	BRUNEI	Brunei	Royal Brunei Airlines
4259	RJ	RJA	JORDANIAN	Jordan	Royal Jordanian
4264	RA	RNA	ROYAL NEPAL	Nepal	Royal Nepal Airlines
4292	WB	RWD	RWANDAIR	Rwanda	Rwandair Express
4295	RD	RYN	RYAN INTERNATIONAL	United States	Ryan International Airlines
4296	FR	RYR	RYANAIR	Ireland	Ryanair
4299	YS	RAE	REGIONAL EUROPE	France	Régional
4304	S4	RZO	AIR AZORES	Portugal	SATA International
4305	SA	SAA	SPRINGBOK	South Africa	South African Airways
4311	NL	SAI	SHAHEEN AIR	Pakistan	Shaheen Air International
4319	SK	SAS	SCANDINAVIAN	Sweden	Scandinavian Airlines System
4329	S7	SBI	SIBERIAN AIRLINES	Russia	S7 Airlines
4335	BB	SBS	SEABORNE	United States	Seaborne Airlines
4349	UL	ALK	SRILANKAN	Sri Lanka	SriLankan Airlines
4356	SY	SCX	SUN COUNTRY	United States	Sun Country Airlines
4374	G3	SEH	AIR CRETE	Greece	Sky Express
4375	SG	SEJ	SPICEJET	India	Spicejet
4388	7G	SFJ	STARFLYER	Japan	Star Flyer
4411	N5	SGY	SKAGWAY AIR	United States	Skagway Air Service
4429	SP	SAT	SATA	Portugal	SATA Air Acores
4435	SQ	SIA	SINGAPORE	Singapore	Singapore Airlines
4436	5M	SIB	SIBAVIA	Russia	Sibaviatrans
4438	SI	SIH	BLUEJET	Ireland	Skynet Airlines
4454	SJ	SJY	SRIWIJAYA	Indonesia	Sriwijaya Air
4455	ZS	SMY	NAJIM	Saudi Arabia	Sama Airlines
4464	SQ	SQC	SINGCARGO	Singapore	Singapore Airlines Cargo
4469	FT	SRH	SIEMREAP AIR	Cambodia	Siem Reap Airways
4475	DG	SRQ	SEAIR	Philippines	South East Asian Airlines
4496	5G	SSV	SKYTOUR	Canada	Skyservice Airlines
4513	FS	STU	FUEGUINO	Argentina	Servicios de Transportes A
4521	SD	SUD	SUDANAIR	Sudan	Sudan Airways
4533	SV	SVA	SAUDIA	Saudi Arabia	Saudi Arabian Airlines
4547	WN	SWA	SOUTHWEST	United States	Southwest Airlines
4550	A4	SWD	SOUTHERN WINDS	Argentina	Southern Winds Airlines
4559	LX	SWR	SWISS	Switzerland	Swiss International Air Lines
4560	SR	SWR	Swissair	Switzerland	Swissair
4564	WV	SWV	FLYING SWEDE	Sweden	Swe Fly
4573	XQ	SXS	SUNEXPRESS	Turkey	SunExpress
4586	RB	SYR	SYRIANAIR	Syrian Arab Republic	Syrian Arab Airlines
4589	AL	SYX	SKYWAY-EX	United States	Skywalk Airlines
4599	SC	CDG	SHANDONG	China	Shandong Airlines
4607	9S	CQH	AIR SPRING	China	Spring Airlines
4608	3U	CSC	SI CHUAN	China	Sichuan Airlines
4609	FM	CSH	SHANGHAI AIR	China	Shanghai Airlines
4611	ZH	CSZ	SHENZHEN AIR	China	Shenzhen Airlines
4619	7L	ERO	ECHO ROMEO	Israel	Sun D'Or
4620	NE	ESK	RELAX	Slovakia	SkyEurope
4652	JK	JKK	SPANAIR	Spain	Spanair
4687	NK	NKS	SPIRIT WINGS	United States	Spirit Airlines
4691	9R	NSE	SATENA	Colombia	SATENA
4735	S3	BBR	SANTA BARBARA	Venezuela	Santa Barbara Airlines
4737	H2	SKU	AEROSKY	Chile	Sky Airline
4738	OO	SKW	SKYWEST	United States	SkyWest
4739	JZ	SKX	SKY EXPRESS	Sweden	Skyways Express
4740	BC	SKY	SKYMARK	Japan	Skymark Airlines
4750	MI	SLK	SILKAIR	Singapore	SilkAir
4752	PY	SLM	SURINAM	Suriname	Surinam Airways
4776	NB	SNB	STERLING	Denmark	Sterling Airlines
4781	6J	SNJ	NEWSKY	Japan	Skynet Asia Airways
4797	IE	SOL	SOLOMON	Solomon Islands	Solomon Airlines
4805	6W	SOV	SARATOV AIR	Russia	Saratov Aviation Division
4808	HZ	SOZ	SATCO	Kazakhstan	Sat Airlines
4822	S5	TCF	MERCURY	United States	Shuttle America
4840	DV	VSV	VLASTA	Kazakhstan	Scat Air
4863	EQ	TAE	TAME	Ecuador	TAME
4867	JJ	TAM	TAM	Brazil	TAM Brazilian Airlines
4869	TP	TAP	AIR PORTUGAL	Portugal	TAP Portugal
4870	TU	TAR	TUNAIR	Tunisia	Tunisair
4889	T2	TCG	THAI CARGO	Thailand	Thai Air Cargo
4896	FQ	TCW	THOMAS COOK	Belgium	Thomas Cook Airlines
4897	MT	TCX	KESTREL	United Kingdom	Thomas Cook Airlines
4936	TR	TGW	GO CAT	Singapore	Tiger Airways
4937	TT	TGW	GO CAT	Australia	Tiger Airways Australia
4940	TG	THA	THAI	Thailand	Thai Airways International
4947	FD	AIQ	THAI ASIA	Thailand	Thai AirAsia
4951	TK	THY	TURKAIR	Turkey	Turkish Airlines
4965	T7	TJT	TWINJET	France	Twin Jet
4981	TL	TMA	TANGO LIMA	Lebanon	Trans Mediterranean Airlines
5002	3P	TNM	TIARA	Aruba	Tiara Air
5013	BY	TOM	TOMSON	United Kingdom	Thomsonfly
5016	PM	TOS	TROPISER	Belize	Tropic Air
5020	QT	TPA	TAMPA	Colombia	TAMPA
5038	GE	TNA	TransAsia	Taiwan	TransAsia Airways
5039	HV	TRA	TRANSAVIA	Netherlands	Transavia Holland
5041	VR	TCV	CABOVERDE	Portugal	TACV
5064	9T	ABS	ATHABASKA	Canada	Transwest Air
5067	UN	TSO	TRANSOVIET	Russia	Transaero Airlines
5083	T5	TUA	TURKMENISTAN	Turkmenistan	Turkmenistan Airlines
5085	UG	TUI	\N	Tunisia	Tuninter
5097	QS	TVS	SKYTRAVEL	Czech Republic	Travel Service
5122	6B	BLX	BLUESCAN	Sweden	TUIfly Nordic
5133	DT	DTA	DTA	Angola	TAAG Angola Airlines
5156	PZ	LAP	PARAGUAYA	Paraguay	TAM Mercosur
5160	AX	LOF	WATERSKI	United States	Trans States Airlines
5179	RO	ROT	TAROM	Romania	Tarom
5187	3T	URN	TURAN	Azerbaijan	Turan Air
5188	8R	TIB	TRIP	Brazil	TRIP Linhas A
5207	U5	GWY	GETAWAY	United States	USA3000 Airlines
5209	UA	UAL	UNITED	United States	United Airlines
5234	U6	SVR	SVERDLOVSK AIR	Russia	Ural Airlines
5251	UF	UKM	UKRAINE MEDITERRANEE	Ukraine	UM Airlines
5265	US	USA	U S AIR	United States	US Airways
5271	UT	UTA	UTAIR	Russia	UTair Aviation
5281	HY	UZB	UZBEK	Uzbekistan	Uzbekistan Airways
5282	PS	AUI	UKRAINE INTERNATIONAL	Ukraine	Ukraine International Airlines
5297	VF	VLU	VALUAIR	Singapore	Valuair
5309	VN	HVN	VIET NAM AIRLINES	Vietnam	Vietnam Airlines
5311	NN	MOV	MOV AIR	Russia	VIM Airlines
5325	Y4	VOI	VOLARIS	Mexico	Volaris
5326	VI	VDA	VOLGA-DNEPR	Russia	Volga-Dnepr Airlines
5331	VX	VRD	REDWOOD	United States	Virgin America
5333	TV	VEX	VIRGIN EXPRESS	Belgium	Virgin Express
5335	VK	VGN	VIRGIN NIGERIA	Nigeria	Virgin Nigeria Airways
5347	VS	VIR	VIRGIN	United Kingdom	Virgin Atlantic Airways
5350	ZG	VVM	JACKPOT	Macao	Viva Macau
5351	VE	VLE	VOLA	Italy	Volare Airlines
5352	VY	VLG	VUELING	Spain	Vueling Airlines
5353	XF	VLK	VLADAIR	Russia	Vladivostok Air
5360	VA	VOZ	VIRGIN	Australia	Virgin Australia
5368	RG	VRN	VARIG	Brazil	VRG Linhas Aereas
5373	VP	VSP	VASP	Brazil	VASP
5383	VG	VLM	RUBENS	Belgium	VLM Airlines
5399	WJ	WEB	WEB-BRASIL	Brazil	WebJet Linhas A
5401	2W	WLC	WELCOMEAIR	Austria	Welcome Air
5416	WS	WJA	WESTJET	Canada	WestJet
5424	WA	WAL	WESTERN	United States	Western Airlines
5439	WF	WIF	WIDEROE	Norway	Widerøe
5447	IV	JET	GHIBLI	Italy	Wind Jet
5451	IW	WON	WINGS ABADI	Indonesia	Wings Air
5461	W6	WZZ	WIZZ AIR	Hungary	Wizz Air
5462	8Z	WVL	WIZZBUL	Bulgaria	Wizz Air Hungary
5465	WO	WOA	WORLD	United States	World Airways
5479	SE	SEU	STARWAY	France	XL Airways France
5484	MF	CXA	XIAMEN AIR	China	Xiamen Airlines
5492	YL	LLM	YAMAL	Russia	Yamal Airlines
5496	IY	IYE	YEMENI	Yemen	Yemenia
5523	Z4	OOM	ZOOM	Canada	Zoom Airlines
5533	N	TYR	TYROLEAN	N	Tyrolean Airways
5559	8Q	N	N	Maldives	Maldivian Air Taxi
5584	XW	SXR	SKYSTORM	Russia	Sky Express
5651	VJ	RAC	\N	Cambodia	Royal Air Cambodge
5813	6T	N	Six Tango	Burma	Air Mandalay
5982	BX	ABL	Air Busan	Republic of Korea	Air Busan
6196	GH	GLP	\N	Russia	Globus
6222	9Y	KZK	Kazakh	Kazakhstan	Air Kazakhstan
6557	JD	JAS	Air System	Japan	Japan Air System
6855	DS	N	\N	Switzerland	EasyJet (DS)
8359	2I	N	\N	Peru	Star Peru (2I)
8461	KW	N	Carnival Air	United States	Carnival Air Lines
8463	4H	UBD	UNITED BANGLADESH	Bangladesh	United Airways
8576	5H	FFV	SWIFT TANGO	Kenya	Fly540
8745	TO	TVF	FRENCH SUN	France	Transavia France
8809	WP	MKU	\N	United States	Island Air (WP)
9082	B7	UIA	Glory	Taiwan	Uni Air
9135	YD	N	\N	Belarus	Gomelavia
9239	WZ	RWZ	AIR RED	Russia	Red Wings
9335	11	N	\N	Germany	TUIfly (X3)
9343	FU	FXX	\N	Yemen	Felix Airways
9344	K1	KOQ	\N	Russia	Kostromskie avialinii
9373	XX	GFY	\N	Spain	Greenfly
9531	7J	N	\N	Tajikistan	Tajik Air
9541	TM	N	\N	Mozambique	Air Mozambique
9577	--	ELK	\N	Estonia	ELK Airways
9620	GY	GBK	GABON AIRLINES	Gabon	Gabon Airlines
9656	ML	MAV	Maldivo	Maldives	Maldivo Airlines
9666	VH	VNP	\N	Fiji	Virgin Pacific
9764	Z2	N	\N	Philippines	Zest Air
9784	HK	N	Hotel Kilo	Burma	Yangon Airways
9809	ZE	ESR	Eastar	South Korea	Eastar Jet
9810	LJ	JNA	Jin Air	South Korea	Jin Air
9818	3O	N	Air Arabia	Morocco	Air Arabia Maroc
9825	B1	BA1	Baltic	Latvia	Baltic Air lines
9828	YC	YCC	Ciel	Canada	Ciel Canadien
9829	CN	YCP	CaNational	Canada	Canadian National Airways
9833	FA	4AA	Epic	United States	Epic Holiday
9851	3I	N	\N	Chile	Air Comet Chile
10114	L8	LBL	Bluebird	Germany	Line Blue
10122	SZ	N	SZA	Austria	Salzburg arrows
10123	TQ	TXW	TXW	United States	Texas Wings
10128	DH	DSY	DSY	Israel	Dennis Sky
10224	ZZ	N	\N	Belgium	Zz
10226	A1	A1F	atifly	United States	Atifly
10372	99	N	\N	Italy	Ciao Air
10650	5P	N	\N	Chile	Pal airlines
10673	C1	CA1	CAX	Canada	CanXpress
10674	V5	N	\N	Slovakia	Danube Wings (V5)
10675	SH	SHA	SHARP	Australia	Sharp Airlines
10683	C2	CAP	\N	Canada	CanXplorer
10715	QA	N	\N	Mexico	Click (Mexicana)
10735	W1	WE1	WEA	Canada	World Experience Airline
10737	J4	N	\N	Russia	ALAK
10739	3E	N	\N	United States	Air Choice One
10741	KN	N	\N	China	China United
10748	ZQ	LOC	LOCAIR	United States	Locair
10758	4Q	N	\N	Afghanistan	Safi Airlines
10765	K5	SQH	SASQUATCH	United States	SeaPort Airlines
10776	S6	N	\N	United States	Salmon Air
10798	01	N	\N	Germany	Bobb Air Freight
10800	V9	HCW	\N	Lithuania	Star1 Airlines
10845	6D	N	\N	Indonesia	Pelita
10912	J5	N	\N	United States	Alaska Seaplane Service
10955	I6	MXI	LINK	Mexico	MexicanaLink
10960	IP	ISX	\N	Iceland	Island Spirit
10969	T0	N	TACA PERU	Peru	TACA Peru
11731	7Q	N	PAWA	Dominican Republic	Pan Am World Airways Dominicana
11732	PF	N	PRIMERA	Iceland	Primera Air
11741	3S	N	GREEN BIRD	Guadeloupe	Air Antilles Express
11755	P7	REP	REGIOPAR	Paraguay	Regional Paraguaya
11761	V6	N	\N	Ecuador	VIP Ecuador
11763	P9	N	\N	Peru	Peruvian Airlines
11767	ЯП	N	\N	Russia	Polar Airlines
11794	OC	N	CATOVAIR	Mauritius	Catovair
11804	7Z	N	CREOLE	Cape Verde	Halcyonair
11805	4P	N	AFRICAN BUSINESS	Congo (Kinshasa)	Business Aviation
11806	E9	N	AFRICOMPANY	Congo (Kinshasa)	Compagnie Africaine d\\'Aviation
11808	K8	N	ZAMBIA SKIES	Zambia	Zambia Skyways
11811	UJ	LMU	ALMASRIA	Egypt	AlMasria Universal Airlines
11814	6Y	N	\N	Latvia	SmartLynx Airlines
11816	K7	KBR	KORAL BLUE	Egypt	KoralBlue Airlines
11823	E4	GIE	\N	Cameroon	Elysian Airlines
11834	HT	IMP	IMPERIAL	Greece	Hellenic Imperial Airways
11836	WD	AAN	AMSTEL	Netherlands	Amsterdam Airlines
11838	Q9	NAK	\N	Niger	Arik Niger
11839	DA	N	DANACO	Nigeria	Dana Air
11840	8F	STP	SAOTOME AIRWAYS	Sao Tome and Principe	STP Airways
11843	7Y	N	FLYING CARPET	Lebanon	Med Airways
11850	UQ	SJU	SKYJET	Uganda	Skyjet Airlines
11855	G6	N	GOUMRAK	Russia	Air Volga
11857	RL	RFJ	\N	Jordan	Royal Falcon
11873	4L	MJX	GEO-LINE	Georgia	Euroline
11947	ZF	N	ATHENSAIR	Greece	Athens Airways
11948	VQ	VKH	DELPHI	Greece	Viking Hellas
11963	DZ	N	ALUNK	Kazakhstan	Starline.kz
12960	L7	N	ENTERPRISE LUHANSK	Ukraine	Lugansk Airlines
12961	6P	N	\N	United States	Gryphon Airlines
12962	GP	GDR	GADAIR	Spain	Gadair European Airlines
12965	SM	MNP	MANILA SKY	Philippines	Spirit of Manila Airlines
12975	OQ	CQN	CHONG QING	China	Chongqing Airlines
12978	PN	CHB	WEST CHINA	China	West Air China
12997	C3	QAX	\N	Qatar	QatXpress
13076	1C	1CH	\N	China	OneChina
13088	Y7	N	\N	Russia	NordStar Airlines
13089	JR	JOY	JOY AIR	China	Joy Air
13105	CD	N	ALLIED	India	Air India Regional
13106	9H	N	MDLR	India	MDLR Airlines
13108	Q2	N	ISLAND AVIATION	Maldives	Maldivian
13130	XN	N	\N	Indonesia	Xpressair
13178	VC	N	\N	Australia	Strategic Airlines
13200	JH	N	FUJI DREAM	Japan	Fuji Dream Airlines
13218	5E	N	SIAM	Thailand	SGA Airlines
13242	F8	N	\N	New Zealand	Air2there
13254	AO	N	Nova	Russia	Avianova (Russia)
13303	PA	IPV	IPV	Iran	Parmiss Airlines (IPV)
13304	ES	EUV	EuropeSky	Germany	EuropeSky
13306	GB	BZE	BRAZIL AIR	Brazil	BRAZIL AIR
13335	MR	OME	\N	Germany	Homer Air
13391	-+	--+	\N	United States	U.S. Air
13394	\\'	\\'\\	\N	Australia	Jayrow
13397	;;	N	\N	Australia	Wilderness Air
13398	^^	N	\N	Australia	Whitaker Air
13633	WQ	PQW	\N	United States	PanAm World Airways
13690	YY	VWA	\N	Germany	Virginwings
13704	KY	KSY	KSY	Greece	KSY
13732	BQ	BQB	\N	Uruguay	Buquebus Líneas Aéreas
13734	CQ	KOL	SLOW FROG	Russia	SOCHI AIR
13757	WU	WAU	WIZZAIR UKRAINE	Ukraine	Wizz Air Ukraine
13781	47	VVN	\N	Cyprus	88
13815	LQ	LMM	\N	Russia	LCM AIRLINES
13899	K6	N	\N	Cambodia	Cambodia Angkor Air (K6)
13936	69	N	\N	United Kingdom	Royal European Airlines
13947	&T	T&O	T&	France	Tom\\'s & co airliners
13983	AD	AZU	\N	Brazil	Azul
14061	PQ	LOO	slowbird	Russia	LSM Airlines
14094	C4	LIX	LIX	Cameroon	LionXpress
14118	GK	N	\N	Pakistan	Genesis
14388	XZ	N	EXPRESSWAYS	Congo (Kinshasa)	Congo Express
14485	FZ	FDB	\N	United Arab Emirates	Fly Dubai
14620	D1	MDO	Domenican	Dominican Republic	Domenican Airlines
14849	JY	AXZ	\N	Italy	Aereonautica militare
14881	YZ	YZZ	Moscow frog 	Russia	LSM AIRLINES 
15814	UR	N	\N	Russia	UTair-Express
15837	G5	N	\N	China	Huaxia
15867	ZP	ZZZ	Lakeair	Russia	Zabaykalskii Airlines
15893	M4	1QA	MARSHAK AIR	Russia	Marysya Airlines
15897	N1	N	\N	Peru	N1
15930	4Z	N	\N	South Africa	Airlink (SAA)
15953	3B	N	\N	Czech Republic	JobAir
15975	BZ	BSA	Stallion	United States	Black Stallion Airways
15984	GM	GER	\N	Germany	German International Air Lines
15985	TB	TBZ	\N	Brazil	TrasBrasil
15989	TH	THS	\N	Brazil	TransBrasil Airlines
15999	9C	N	\N	China	China SSS
16103	P8	MKG	Air Mekong	Vietnam	Air Mekong
16110	H3	N	\N	Canada	Harbour Air (Priv)
16116	HH	AHO	Air Hamburg	Germany	Air Hamburg (AHO)
16120	Z6	ZTT	BAIKAL 	Russia	ZABAIKAL AIRLINES
16127	TI	THI	\N	Brazil	TransHolding
16133	YT	N	\N	Nepal	Yeti Airways
16135	Y1	N	YCS	United States	Yellowstone Club Private Shuttle
16136	NS	N	\N	Georgia	Caucasus Airlines
16139	S1	SA1	\N	Serbia	Serbian Airlines
16149	WM	N	Winair	Netherlands Antilles	Windward Islands Airways
16150	YO	TYS	\N	Brazil	TransHolding System
16151	CB	CCC	\N	Colombia	CCML Airlines
16234	F1	FBL	FBL	Brazil	Fly Brasil
16261	1F	CIF	\N	United Kingdom	CB Airways UK ( Interliging Flights )
16262	3F	3FF	\N	Colombia	Fly Colombia ( Interliging Flights )
16264	T6	TP6	\N	United States	Trans Pas Air
16273	МИ	N	Air Minvody	Russia	KMV
16323	HC	HYM	Himalayan	Nepal	Himalayan Airlines
16327	G1	IG1	Indya1	India	Indya Airline Group
16329	WG	N	sunwing	Canada	Sunwing
16359	ZX	ZXY	\N	Japan	Japan Regio
16363	N0	N	\N	Argentina	Norte Lineas Aereas
16364	W7	N	\N	Brazil	Austral Brasil
16373	H9	N	\N	Turkey	PEGASUS AIRLINES-
16415	QC	N	\N	Cameroon	Camair-co
16459	RS	SKV	Sky Regional	Canada	Sky Regional
16507	II	UWW	moose	Russia	LSM International 
16508	BU	BUU	\N	American Samoa	Baikotovitchestrian Airlines 
16511	L4	LJJ	russian sky	Russia	Luchsh Airlines 
16585	6U	N	Loadmaster	Germany	Air Cargo Germany
16615	7M	ZTF	Mongol_AIr 	Mongolia	Mongolian International Air Lines 
16624	TW	TWB	TWAY AIR	South Korea	Tway Airlines
16625	HI	N	\N	United States	Papillon Grand Canyon Helicopters
16628	JX	JSR	\N	Egypt	Jusur airways
16645	XB	NXB	XB	Brazil	NEXT Brasil
16660	W4	WER	sovet	Russia	AeroWorld 
16695	GN	N	\N	Brazil	GNB Linhas Aereas
16702	E1	ES2	USKY	United States	Usa Sky Cargo
16707	HN	HNX	HNX	South Korea	Hankook Airline
16717	Z7	N	\N	Barbados	REDjet
16720	PT	N	\N	Peru	Red Jet Andes
16721	QY	N	\N	Canada	Red Jet Canada
16724	4X	N	\N	Mexico	Red Jet Mexico
16725	Y8	MRS	snowball	Russia	Marusya Airways
16726	7H	ERR	ERAH	United States	Era Alaska
16728	R8	RRJ	russiancloud	Russia	AirRussia
16735	H1	HA1	\N	United States	Hankook Air US
16796	H5	RSY	RUSSIAN SKY	Russia	I-Fly
16837	KT	VKJ	Vickjet	France	VickJet
16844	XV	N	\N	British Virgin Islands	BVI Airways
16860	SO	SLC	SALSA	Haiti	Salsa d\\'Haiti
16867	ZJ	N	\N	Zambia	Zambezi Airlines (ZMA)
16882	YQ	N	\N	Russia	Polet Airlines (Priv)
16901	12	N12	12N	India	12 North
16942	L6	MAI	\N	Mauritania	Mauritania Airlines International
16956	6F	MKD	\N	Macedonia	MAT Airways
16960	AW	AWM	Asian Star	Burma	Asian Wings Airways
16963	E5	RBG	\N	Egypt	Air Arabia Egypt
16975	CT	N	\N	Italy	Alitalia Cityliner
17022	OI	ORC	\N	Australia	Orchid Airlines
17023	Y5	AWA	\N	Kazakhstan	Asia Wings
17082	XR	N	\N	Australia	Skywest Australia
17083	NP	NIA	NILEBIRD	Egypt	Nile Air
17094	DN	SGG	\N	Senegal	Senegal Airlines
17095	6I	N	\N	Sierra Leone	Fly 6ix
17099	S9	N	\N	Ghana	Starbow Airlines
17115	0X	CX0	Copex	Denmark	Copenhagen Express
17408	8B	BCC	\N	Thailand	BusinessAir
17519	YR	N	\N	United States	SENIC AIRLINES
17571	C7	CR7	\N	South Korea	Sky Wing Pacific
17574	PP	AI0	AIPL	Pakistan	Air Indus
17675	MM	N	Air Peach	Japan	Peach Aviation
17750	U1	ABI	\N	Russia	Aviabus
17780	DF	MJG	MJG	Puerto Rico	Michael Airlines
17786	ZC	KGO	KORONGO	Congo (Kinshasa)	Korongo Airlines
17794	I5	IDS	\N	Indonesia	Indonesia Sky
17841	B0	666	aws	United States	Aws express
17859	76	SJS	\N	United States	Southjet
17860	77	ZCS	\N	United States	Southjet connect
17862	78	XAN	\N	United States	Southjet cargo
17881	I2	IBS	\N	Spain	Iberia Express
17885	4O	N	INTERJET	Mexico	Interjet (ABC Aerolineas)
17889	OG	N	\N	Ukraine	AirOnix
17890	NJ	NGB	Nordic Global	Finland	Nordic Global Airlines
17891	TZ	SCO	\N	Singapore	Scoot
17909	5K	N	\N	Portugal	Hi Fly (5K)
17911	WH	N	\N	China	China Northwest Airlines (WH)
17935	ZN	ZNA	ZENITH	Thailand	Zenith International Airline
17936	O1	OAB	Orbitaz	Azerbaijan	Orbit Airlines Azerbaijan
17989	A6	N	ALPAV	Austria	Air Alps Aviation (A6)
18169	P4	N	\N	United States	Patriot Airways
18178	V2	RBY	RUBY	United States	Vision Airlines (V2)
18232	5Q	N	\N	Uruguay	BQB Lineas Aereas
18239	YE	YEL	\N	United States	Yellowtail
18241	KG	RAW	RAW	United States	Royal Airways
18252	FH	FHI	FLYHIRELAND	Ireland	FlyHigh Airlines Ireland (FH)
18477	2D	N	\N	Portugal	Aero VIP (2D)
18497	YH	N	\N	Burma	Yangon Airways Ltd.
18529	TJ	TJA	T.J. Air	United States	T.J. Air
18543	SX	N	SKYFOX	Switzerland	SkyWork Airlines 
18553	W2	N	\N	Netherlands	Maastricht Airlines
18617	24	N	\N	Germany	Euro Jet
18700	Q3	QER	russian doll	Russia	SOCHI AIR CHATER
18702	J7	N	DNM	Norway	Denim Air 
18732	OD	MXD	Malindo	Malaysia	Malindo Air
18825	Z9	N	\N	Tanzania	Flightlink Tanzania
18828	I8	N	\N	Russia	IzAvia
18930	M1	M1F	Maryland Flight	United States	Maryland Air
18944	7I	N	\N	Netherlands Antilles	Insel Air (7I/INC) (Priv)
18946	5Z	VVC	\N	Colombia	VivaColombia
19016	ZM	IWA	APACHE	United States	Apache Air
19026	M2	N	\N	Germany	MHS Aviation GmbH
19030	NR	JTO	JETHAPPY	Hong Kong	Jettor Airlines
19225	SL	N	\N	Thailand	Thai Lion Air
19287	N8	NCR	\N	United States	National Air Cargo
19290	13	EAV	EAVA	United States	Eastern Atlantic Virtual Airlines
19305	QG	N	SUPERGREEN	Indonesia	Citilink Indonesia
19361	S8	SBD	\N	Finland	Snowbird Airlines
19367	KH	KHK	\N	Ukraine	Kharkiv Airlines
19433	XA	XAU	XAIR	United States	XAIR USA
19451	LB	N	\N	India	Air Costa
19473	XP	XPT	XPTO	Portugal	XPTO
19541	3W	N	\N	Malawi	Malawian Airlines
19567	..	...	\N	Switzerland	Avilu
19582	JU	ASL	AIR SERBIA	Serbia	Air Serbia
19610	LT	LTU	LITUANICA	Lithuania	Air Lituanica
19674	RN	RAB	Rainbow	United States	Rainbow Air (RAI)
19675	RY	RAY	Rainbow CAN	Canada	Rainbow Air Canada
19676	RX	RPO	Rainbow Air	United States	Rainbow Air Polynesia
19677	RU	RUE	Rainbow Air	United Kingdom	Rainbow Air Euro
19678	RM	RNY	Rainbow Air	United States	Rainbow Air US
19751	QD	DOB	DOBROLET	Russia	Dobrolet
19774	S0	SAL	Spike Air	United States	Spike Airlines
19803	L1	AL1	\N	Argentina	All Argentina
19804	A2	AL2	\N	United States	All America
19805	L9	AL3	\N	China	All Asia
19806	9A	99F	\N	South Africa	All Africa
19807	N4	J88	\N	Mexico	Regionalia México
19808	N9	N99	\N	United Kingdom	All Europe
19809	N7	N77	\N	Spain	All Spain
19810	9N	N78	\N	Iceland	Regional Air Iceland
19812	8K	K88	\N	Brazil	Voestar
19813	7O	7KK	\N	Colombia	All Colombia
19814	2X	2K2	\N	Uruguay	Regionalia Uruguay
19815	9X	9XX	\N	Venezuela	Regionalia Venezuela
19827	9J	CR1	\N	Chile	Regionalia Chile
19828	6C	6CC	\N	Cuba	Vuela Cuba
19830	88	8K8	\N	Australia	All Australia
19831	ER	RWW	\N	Spain	Fly Europa
19834	PO	FPT	FlyPortugal	Portugal	FlyPortugal
19886	IJ	SJO	\N	Japan	Spring Airlines Japan
19890	KP	DWA	DENSE	United States	Dense Airways
19891	KZ	DC2	DC2	United States	Dense Connection
19908	4S	VI4	\N	Italy	Vuola Italia
19927	1X	N	Abby Air	Canada	Island Express Air
19928	Z0	Z9H	\N	Argentina	All Argentina Express
19930	WE	N	THAI SMILE	Thailand	Thai Smile Airways
19944	I4	N	\N	Jamaica	International AirLink
19963	RT	N	\N	Tonga	Real Tonga
19970	2R	M7A	\N	Argentina	All America AR
19971	1R	R1R	\N	Chile	All America CL
19974	Q4	SAE	ADLER EXPRESS	Russia	SOCHI AIR EXPRESS
19977	1Y	A9B	\N	Brazil	All America BR
20004	9V	VC9	\N	Costa Rica	Volotea Costa Rica
20017	X5	OTJ	TENDER AIR	Romania	Fly Romania
20047	E2	N	\N	Ghana	Eagle Atlantic Airlines
20073	0Y	7ZC	\N	Colombia	All America CO
20074	0M	0MM	\N	Mexico	All America MX
20110	FX	FOX	\N	Brazil	FOX Linhas Aereas
20127	QP	N	\N	Kenya	Air Kenya (Priv)
20144	6V	CZV	\N	Uruguay	Via Conectia Airlines
20160	E8	GTA	CITY AIR	Thailand	City Airways
20170	DU	NLH	NORSTAR	Norway	Norwegian Long Haul AS
20207	M8	TNU	TRANSNUSA	Indonesia	TransNusa Air
20218	ZT	T9P	\N	Chile	Tomp Airlines
20222	J1	N	\N	United States	OneJet
20224	0G	GA0	\N	Argentina	Global Airlines
20264	UK	VTI	\N	India	Air Vistara
20268	1E	RGG	\N	Russia	TransRussiaAirlines
20270	D2	N	\N	Russia	Severstal Air Company
20282	RR	RXR	Rexair	France	REXAIR VIRTUEL
20285	WR	WEN	Encore	Canada	WestJet Encore
20286	OP	PPL	\N	India	Air Pegasus
20288	9I	INE	\N	Spain	International Europe
20401	ZV	VAX	\N	Taiwan	V Air
20565	4B	BTQ	\N	United States	Boutique Air (Priv)
20577	V7	VOE	\N	Spain	VOLOTEA Airways
20599	Z5	IIR	\N	Argentina	INAVIA Internacional
20607	LE	LTY	\N	United States	Liberty Airways
20608	АЯ	N	\N	Russia	Аэросервис
20657	5B	BSX	5B	Cambodia	Bassaka airlines
20686	Q7	N	TROPICAL SKY	Bahamas	SkyBahamas Airlines
20695	UW	N	\N	Russia	UVT Aero
20710	3M	N	Silver Wings	United States	Silver Airways (3M)
20752	I3	N	ATALAR	Iran	ATA Airlines (Iran)
20769	V1	VIA	\N	Argentina	VIA Líneas Aéreas
20802	GX	GXG	\N	Germany	GermanXL
20827	FF	FRF	\N	France	Fly France
20881	EX	EU9	\N	France	Europe Jet
20976	W3	WSS	\N	United States	World Scale Airlines
20978	AG	SSA	\N	United States	All America US
20995	1K	BG1	\N	Germany	BudgetAir
21012	F5	FI5	\N	Moldova	Fly One
21021	EE	N	REVAL	Estonia	Nordica
21131	0P	PYB	BOPY	Paraguay	All America BOPY
21268	JG	N	\N	Australia	Jetgo Australia
21270	2S	N	\N	India	Air Carnival
\.


--
-- TOC entry 3188 (class 2606 OID 56240)
-- Name: airlines airlines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airlines
    ADD CONSTRAINT airlines_pkey PRIMARY KEY (id);


-- Completed on 2023-04-13 10:09:27

--
-- PostgreSQL database dump complete
--

