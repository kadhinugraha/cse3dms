CREATE TABLE cse3dms.cafe (
	osm_id varchar NOT NULL,
	geom public.geometry(point, 4326) NULL,
	full_id varchar NULL,
	osm_type varchar NULL,
	amenity varchar NULL,
	"addr:postcode" varchar NULL,
	"name" varchar NULL,
	CONSTRAINT cafe_pkey PRIMARY KEY (osm_id)
);

INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('474793929','SRID=4326;POINT (145.0136098 -37.7851623)','n474793929','node','cafe',NULL,'Fairfield Boathouse'),
	 ('474793932','SRID=4326;POINT (145.0218161 -37.782721)','n474793932','node','cafe','3078','Kissaten'),
	 ('688016748','SRID=4326;POINT (145.0646385 -37.7429319)','n688016748','node','cafe',NULL,'4ever sisters'),
	 ('688016800','SRID=4326;POINT (145.0644674 -37.7429815)','n688016800','node','cafe',NULL,'Tres'),
	 ('772399536','SRID=4326;POINT (144.9803782 -37.7676344)','n772399536','node','cafe','3057','Milkwood'),
	 ('772399855','SRID=4326;POINT (144.9803956 -37.7674954)','n772399855','node','cafe','3057','The Third Tier Tea Room'),
	 ('773241576','SRID=4326;POINT (145.121643 -37.7567225)','n773241576','node','cafe',NULL,'Melissa Cakes Cafe Bar'),
	 ('945554121','SRID=4326;POINT (144.9972528 -37.7761083)','n945554121','node','cafe',NULL,'Launder It'),
	 ('1239439411','SRID=4326;POINT (144.9943783 -37.7854672)','n1239439411','node','cafe',NULL,'Mixed Business'),
	 ('1260369495','SRID=4326;POINT (145.1079963 -37.6877346)','n1260369495','node','cafe','3088','Caffiend');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('1260379609','SRID=4326;POINT (145.0657375 -37.7438296)','n1260379609','node','cafe',NULL,'Miss Marie'),
	 ('1306862453','SRID=4326;POINT (144.9710078 -37.7750324)','n1306862453','node',NULL,'3057',NULL),
	 ('1308523503','SRID=4326;POINT (144.9870366 -37.7770408)','n1308523503','node',NULL,'3068',NULL),
	 ('1327108802','SRID=4326;POINT (144.9806314 -37.7673235)','n1327108802','node',NULL,NULL,NULL),
	 ('1338379224','SRID=4326;POINT (145.0657635 -37.756348)','n1338379224','node','cafe',NULL,'Leo''s Cafe'),
	 ('1423097380','SRID=4326;POINT (145.0104413 -37.7787719)','n1423097380','node','cafe','3070','Spit Jack'),
	 ('1423146744','SRID=4326;POINT (145.000303 -37.769324)','n1423146744','node','cafe',NULL,'Kaféz'),
	 ('1425742673','SRID=4326;POINT (145.0014452 -37.7680454)','n1425742673','node','cafe',NULL,'Northcote Caffe Espresso'),
	 ('1425742685','SRID=4326;POINT (145.0016758 -37.7685841)','n1425742685','node','cafe',NULL,'Fergerson Plarre'),
	 ('1427015788','SRID=4326;POINT (145.0018046 -37.7789159)','n1427015788','node','cafe',NULL,'South Crescent Cafe');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('1427083065','SRID=4326;POINT (144.9982 -37.7741642)','n1427083065','node','cafe','3070','Penny Farthing Espresso'),
	 ('1432376904','SRID=4326;POINT (145.0426162 -37.7492736)','n1432376904','node','cafe',NULL,'V & B Coffee & Bakery'),
	 ('1435070794','SRID=4326;POINT (144.9967212 -37.7828728)','n1435070794','node','cafe','3070','Four Beans'),
	 ('1455649563','SRID=4326;POINT (144.9896349 -37.7049915)','n1455649563','node','cafe','3073','Bakery & Cafe'),
	 ('1608190637','SRID=4326;POINT (145.116462 -37.6980419)','n1608190637','node','cafe',NULL,'Clay Oven'),
	 ('1619649069','SRID=4326;POINT (144.9713213 -37.7729663)','n1619649069','node','cafe','3057','Poached'),
	 ('1666782914','SRID=4326;POINT (145.0485492 -37.7210539)','n1666782914','node','cafe',NULL,NULL),
	 ('1671557044','SRID=4326;POINT (144.9713771 -37.7741784)','n1671557044','node','cafe','3057','Small Block'),
	 ('1671557049','SRID=4326;POINT (144.9711617 -37.7764628)','n1671557049','node','cafe','3057','Gelobar'),
	 ('1704835587','SRID=4326;POINT (145.0154676 -37.7239899)','n1704835587','node','cafe','3073','The Window Cnr Cafe');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('1731762753','SRID=4326;POINT (145.0165265 -37.7541217)','n1731762753','node','cafe','3071','The Old Milkbar'),
	 ('1864405216','SRID=4326;POINT (145.1209025 -37.7173476)','n1864405216','node','cafe','3094','Stones Throw'),
	 ('1865193916','SRID=4326;POINT (145.0040563 -37.7728134)','n1865193916','node','cafe','3070','Red Door Corner Store Cafe'),
	 ('1865226623','SRID=4326;POINT (145.1212943 -37.7171098)','n1865226623','node','cafe','3094','The Milkbar'),
	 ('1865226635','SRID=4326;POINT (145.1213346 -37.7166013)','n1865226635','node','cafe','3094','Were Street Food Store'),
	 ('1865226637','SRID=4326;POINT (145.1214058 -37.7161153)','n1865226637','node','cafe','3094','Espresso 3094'),
	 ('1876465910','SRID=4326;POINT (145.1380011 -37.7203387)','n1876465910','node','cafe','3095','Flamin'),
	 ('1950231964','SRID=4326;POINT (144.9712754 -37.7731275)','n1950231964','node','cafe','3057','Sugardough'),
	 ('1975940442','SRID=4326;POINT (144.9838712 -37.7834518)','n1975940442','node','cafe','3068','Tinpot Cafe'),
	 ('2067992292','SRID=4326;POINT (144.9821608 -37.7832354)','n2067992292','node','cafe','3068','Greensleeves Coffee House');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('2120443436','SRID=4326;POINT (144.986937 -37.779903)','n2120443436','node','cafe','3068','Growers Espresso'),
	 ('2131736596','SRID=4326;POINT (145.0061094 -37.7459451)','n2131736596','node','cafe',NULL,'Raqwa Cafe and Beer Garden'),
	 ('2131763847','SRID=4326;POINT (145.029842 -37.748861)','n2131763847','node','cafe',NULL,'Belchif Snack Bar'),
	 ('2131769387','SRID=4326;POINT (145.025486 -37.751691)','n2131769387','node','cafe','3072','Raglan Cafe'),
	 ('2191916901','SRID=4326;POINT (145.032379 -37.74167)','n2191916901','node','cafe',NULL,'Hardware Cafe'),
	 ('2365435393','SRID=4326;POINT (144.9982936 -37.7737786)','n2365435393','node','cafe',NULL,'Ruckers Hill Cafe'),
	 ('2407532973','SRID=4326;POINT (144.9773295 -37.7799029)','n2407532973','node','cafe','3054','Green Park'),
	 ('2623007907','SRID=4326;POINT (145.0211822 -37.7592139)','n2623007907','node','cafe',NULL,NULL),
	 ('2647202602','SRID=4326;POINT (144.9776531 -37.7459314)','n2647202602','node','cafe',NULL,'Ruby''s Cafe'),
	 ('2674000131','SRID=4326;POINT (144.9788878 -37.7759071)','n2674000131','node','cafe',NULL,'Curly Joe''s drive-thru coffee');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('2674000132','SRID=4326;POINT (144.9778225 -37.7808925)','n2674000132','node','cafe','3054','Sleepy''s Cafe and Wine Bar'),
	 ('2678679361','SRID=4326;POINT (144.9721925 -37.7565659)','n2678679361','node','cafe',NULL,'Degani'),
	 ('2720460571','SRID=4326;POINT (144.9751633 -37.7824581)','n2720460571','node','cafe','3054','Café BÜ'),
	 ('2726372663','SRID=4326;POINT (144.9803487 -37.7544816)','n2726372663','node','cafe',NULL,'IMA Café'),
	 ('2735692807','SRID=4326;POINT (145.0072491 -37.7149999)','n2735692807','node','cafe',NULL,NULL),
	 ('2887172101','SRID=4326;POINT (145.0042156 -37.7482617)','n2887172101','node','cafe','3072','Boundary Espresso'),
	 ('2933009008','SRID=4326;POINT (144.9862255 -37.7119799)','n2933009008','node','cafe',NULL,'Everest Cafe'),
	 ('2970944457','SRID=4326;POINT (144.9969775 -37.7803166)','n2970944457','node','cafe','3070','Il Melograno'),
	 ('2987775018','SRID=4326;POINT (144.9837936 -37.7293484)','n2987775018','node','cafe',NULL,'Degani'),
	 ('2999697128','SRID=4326;POINT (145.0544751 -37.7636037)','n2999697128','node','cafe','3084','Eaglemont Dish');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('3003930226','SRID=4326;POINT (145.0521671 -37.7217503)','n3003930226','node','cafe',NULL,'Eat@Menzies'),
	 ('3003930236','SRID=4326;POINT (145.0498061 -37.7229504)','n3003930236','node','cafe',NULL,'Cafe Moat'),
	 ('3019271335','SRID=4326;POINT (145.0485938 -37.7209897)','n3019271335','node','cafe',NULL,'Charlie''s'),
	 ('3019271336','SRID=4326;POINT (145.048502 -37.72099)','n3019271336','node','cafe',NULL,'Caffeine'),
	 ('3019313433','SRID=4326;POINT (145.048555 -37.720436)','n3019313433','node','cafe',NULL,'Writer''s Block'),
	 ('3088929512','SRID=4326;POINT (144.9978574 -37.7738317)','n3088929512','node','cafe','3070','Urban Alice'),
	 ('3123384229','SRID=4326;POINT (144.9841088 -37.7832134)','n3123384229','node','cafe','3068','Citrus'),
	 ('3236262374','SRID=4326;POINT (145.0121143 -37.6956956)','n3236262374','node','cafe',NULL,NULL),
	 ('3302190136','SRID=4326;POINT (145.0654488 -37.700844)','n3302190136','node','cafe',NULL,'Dairy Bell'),
	 ('3336927852','SRID=4326;POINT (145.0586687 -37.6993795)','n3336927852','node','cafe',NULL,'Nat''s place');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('3369918552','SRID=4326;POINT (145.0734092 -37.6827456)','n3369918552','node','cafe',NULL,'The Locker Room'),
	 ('3376061062','SRID=4326;POINT (145.0017602 -37.7525393)','n3376061062','node','cafe',NULL,'Casa Nata'),
	 ('3399003680','SRID=4326;POINT (144.9967005 -37.7801846)','n3399003680','node','cafe',NULL,'Barry'),
	 ('3437078567','SRID=4326;POINT (145.0476688 -37.7130591)','n3437078567','node','cafe',NULL,'Gloria Jean''s'),
	 ('3437078580','SRID=4326;POINT (145.0477419 -37.7122869)','n3437078580','node','cafe',NULL,'Vorea'),
	 ('3450051793','SRID=4326;POINT (144.996908 -37.780564)','n3450051793','node','cafe','3070','Gypsy Hideout'),
	 ('3519346987','SRID=4326;POINT (144.9747363 -37.7565302)','n3519346987','node','cafe',NULL,'Stretched pizza'),
	 ('3519346988','SRID=4326;POINT (144.9746168 -37.7565213)','n3519346988','node','cafe',NULL,'Pause Cafe'),
	 ('3665463320','SRID=4326;POINT (144.9879023 -37.7511169)','n3665463320','node','cafe','3071','Tickled Pink'),
	 ('3693596974','SRID=4326;POINT (144.9746662 -37.75699)','n3693596974','node','cafe','3056','D1uno Cafe & Catering');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('3704220017','SRID=4326;POINT (145.0820314 -37.712135)','n3704220017','node','cafe',NULL,'Citrus tart Cafe'),
	 ('3704488969','SRID=4326;POINT (145.082465 -37.7097805)','n3704488969','node','cafe',NULL,'Syrup'),
	 ('3775879857','SRID=4326;POINT (145.002235 -37.767703)','n3775879857','node','cafe',NULL,'Degani Bakery Cafe'),
	 ('3822572657','SRID=4326;POINT (144.9961834 -37.7692339)','n3822572657','node','cafe',NULL,'The Herbert Café'),
	 ('3949640996','SRID=4326;POINT (144.9867595 -37.7796732)','n3949640996','node','cafe','3068','Maillard Toast and Espresso Bar'),
	 ('3984925962','SRID=4326;POINT (145.0674337 -37.7562156)','n3984925962','node','cafe',NULL,'Barklys'),
	 ('4017426053','SRID=4326;POINT (145.061941 -37.7576073)','n4017426053','node','cafe',NULL,'Cafe Zaas'),
	 ('4017426055','SRID=4326;POINT (145.0628627 -37.7559416)','n4017426055','node','cafe',NULL,'Cellini'),
	 ('4049768919','SRID=4326;POINT (145.0516207 -37.7209049)','n4049768919','node','cafe','3086','Glenn Bistro'),
	 ('4063307427','SRID=4326;POINT (145.0105644 -37.6950321)','n4063307427','node','cafe',NULL,'Bean and Gone');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('4064857389','SRID=4326;POINT (145.0181099 -37.7780476)','n4064857389','node','cafe','3078','Cafe Pantheon'),
	 ('4064857396','SRID=4326;POINT (145.0184531 -37.7780364)','n4064857396','node','cafe','3078','Stathmos'),
	 ('4064857404','SRID=4326;POINT (145.0174597 -37.7787992)','n4064857404','node','cafe','3078','Nikos'),
	 ('4099025134','SRID=4326;POINT (145.0167123 -37.7795803)','n4099025134','node','cafe','3078','Bean Counter Cafe'),
	 ('4099025139','SRID=4326;POINT (145.010194 -37.7781836)','n4099025139','node','cafe',NULL,'Ash & Rye'),
	 ('4099025156','SRID=4326;POINT (145.0171851 -37.7795467)','n4099025156','node','cafe','3078','15 lbs Cafe'),
	 ('4099025173','SRID=4326;POINT (145.0172709 -37.7795393)','n4099025173','node','cafe','3078','The Tea Rose'),
	 ('4296243851','SRID=4326;POINT (144.9943561 -37.6894119)','n4296243851','node','cafe',NULL,'Sue''s Sandwich Deli'),
	 ('4408093926','SRID=4326;POINT (145.0455587 -37.7193667)','n4408093926','node','cafe',NULL,'Agoraphobic Cafe'),
	 ('4519827590','SRID=4326;POINT (144.9804031 -37.7671871)','n4519827590','node','cafe','3057','Awkward Mike''s');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('4545781991','SRID=4326;POINT (144.9722573 -37.7675789)','n4545781991','node','cafe','3057','East Elevation'),
	 ('4643411552','SRID=4326;POINT (145.0104867 -37.7168228)','n4643411552','node','cafe',NULL,'Lady Bower'),
	 ('4643411556','SRID=4326;POINT (145.0101509 -37.7171498)','n4643411556','node','cafe',NULL,'Alour Cafe'),
	 ('4727131192','SRID=4326;POINT (145.0048728 -37.7321277)','n4727131192','node','cafe',NULL,'Café Baréa'),
	 ('4744268698','SRID=4326;POINT (145.0330452 -37.7437732)','n4744268698','node','cafe',NULL,'Kia Cafe'),
	 ('4914579890','SRID=4326;POINT (145.1046639 -37.7030044)','n4914579890','node','cafe','3088','Pelligra Cakes'),
	 ('4938372007','SRID=4326;POINT (144.9944288 -37.755847)','n4938372007','node','cafe',NULL,'Rio Express'),
	 ('4954130058','SRID=4326;POINT (145.0043889 -37.7479228)','n4954130058','node','cafe','3072','Sartoria'),
	 ('4959280795','SRID=4326;POINT (144.9913179 -37.729758)','n4959280795','node','cafe','3072','Cheshire'),
	 ('4959281491','SRID=4326;POINT (144.991465 -37.7289915)','n4959281491','node','cafe','3072','Jackson Dodds');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('4972009947','SRID=4326;POINT (145.0187413 -37.7829876)','n4972009947','node','cafe','3078','Hoppa & Joe'),
	 ('5076265984','SRID=4326;POINT (145.0425026 -37.7498953)','n5076265984','node','cafe',NULL,'TY Coffee'),
	 ('5110148984','SRID=4326;POINT (144.9993553 -37.7677644)','n5110148984','node','cafe',NULL,'Espresso Bar'),
	 ('5110148992','SRID=4326;POINT (145.0082878 -37.7425932)','n5110148992','node','cafe',NULL,'Shisha Lounge'),
	 ('5123921793','SRID=4326;POINT (144.9987327 -37.7714154)','n5123921793','node','cafe',NULL,'Dawn + Dusk'),
	 ('5125803523','SRID=4326;POINT (145.005165 -37.7468737)','n5125803523','node','cafe',NULL,'CJ Cafe'),
	 ('5125803533','SRID=4326;POINT (145.0065463 -37.7449366)','n5125803533','node','cafe',NULL,'Pnety & More'),
	 ('5152973328','SRID=4326;POINT (145.1027651 -37.7832122)','n5152973328','node','cafe',NULL,'Kats Cakes'),
	 ('5311862111','SRID=4326;POINT (144.9721776 -37.7682377)','n5311862111','node','cafe',NULL,'Cucina 333'),
	 ('5313024024','SRID=4326;POINT (145.0766203 -37.746125)','n5313024024','node','cafe','3084','Four Leaves Cafe');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('5376772500','SRID=4326;POINT (144.9734656 -37.7625078)','n5376772500','node','cafe',NULL,'Smug Relish'),
	 ('5398328261','SRID=4326;POINT (145.006941 -37.7038579)','n5398328261','node','cafe',NULL,'Gellibrand'),
	 ('5409203217','SRID=4326;POINT (144.999785 -37.7694962)','n5409203217','node','cafe','3070','Espresso Alley'),
	 ('5422344381','SRID=4326;POINT (144.99515 -37.7369704)','n5422344381','node','cafe',NULL,'Pomona Cafe'),
	 ('5437199555','SRID=4326;POINT (144.9820679 -37.7175464)','n5437199555','node','cafe',NULL,'Acropol'),
	 ('5461752204','SRID=4326;POINT (144.9755835 -37.755171)','n5461752204','node','cafe','3068','The Spot'),
	 ('5461955638','SRID=4326;POINT (144.9754733 -37.7555241)','n5461955638','node','cafe',NULL,'IGA'),
	 ('5574900461','SRID=4326;POINT (145.0124306 -37.7804348)','n5574900461','node','cafe','3070','Thomson Street Foodstore'),
	 ('5579849390','SRID=4326;POINT (145.0181682 -37.7775279)','n5579849390','node','cafe','3078','Harvest'),
	 ('5587634151','SRID=4326;POINT (145.0187082 -37.7766626)','n5587634151','node','cafe','3078','Brazen Brownies and Dessert Bar');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('5591497466','SRID=4326;POINT (145.0186159 -37.7772524)','n5591497466','node','cafe','3078','Three Locals'),
	 ('5595609021','SRID=4326;POINT (144.9882246 -37.750551)','n5595609021','node','cafe','3072','Miss Margaret'),
	 ('5627332763','SRID=4326;POINT (145.0024129 -37.7388832)','n5627332763','node','cafe','3072',NULL),
	 ('5627333954','SRID=4326;POINT (145.0024614 -37.7385287)','n5627333954','node','cafe','3072','Sokolata'),
	 ('5638787972','SRID=4326;POINT (145.0021558 -37.7388641)','n5638787972','node','cafe','3072','Calavera Cafe'),
	 ('5638805273','SRID=4326;POINT (145.0023408 -37.7389718)','n5638805273','node','cafe','3072','Pasquales Cafe'),
	 ('5638805279','SRID=4326;POINT (145.0020786 -37.7392676)','n5638805279','node','cafe','3072','Lucchini Continental Cakes'),
	 ('5794821455','SRID=4326;POINT (144.9981771 -37.7742773)','n5794821455','node','cafe','3070','The Open Studio'),
	 ('5806706870','SRID=4326;POINT (144.9992953 -37.7688302)','n5806706870','node','cafe',NULL,NULL),
	 ('5928341153','SRID=4326;POINT (144.9833481 -37.7165826)','n5928341153','node','cafe',NULL,'Corner Take Away');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('5954429289','SRID=4326;POINT (144.9718282 -37.7303478)','n5954429289','node','cafe',NULL,'Beans & Sweets'),
	 ('5984601122','SRID=4326;POINT (144.9715392 -37.7699499)','n5984601122','node','cafe','3056','Toledo Brunswick'),
	 ('5984668435','SRID=4326;POINT (144.97165 -37.7707978)','n5984668435','node','cafe',NULL,'Double Dutch Coffee Bar'),
	 ('6004325103','SRID=4326;POINT (144.9761412 -37.7216683)','n6004325103','node','cafe',NULL,'Get fed'),
	 ('6016756841','SRID=4326;POINT (144.9763566 -37.7705095)','n6016756841','node','cafe','3057','Ten Tables'),
	 ('6017199874','SRID=4326;POINT (145.00406 -37.7405129)','n6017199874','node','cafe',NULL,'Caffe Rustico'),
	 ('6017199990','SRID=4326;POINT (145.0030058 -37.7430328)','n6017199990','node','cafe',NULL,'Brown Bear'),
	 ('6017200005','SRID=4326;POINT (145.0039561 -37.739281)','n6017200005','node','cafe',NULL,'Cafe Lucchini'),
	 ('6017200038','SRID=4326;POINT (145.0040877 -37.7365052)','n6017200038','node','cafe',NULL,'The Penguine'),
	 ('6017200045','SRID=4326;POINT (145.0029616 -37.7433924)','n6017200045','node','cafe',NULL,'HA Espresso');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('6017200049','SRID=4326;POINT (145.0034841 -37.7421303)','n6017200049','node','cafe',NULL,'9 Tails'),
	 ('6017200052','SRID=4326;POINT (145.003322 -37.7412221)','n6017200052','node','cafe',NULL,'International Cafe Shop'),
	 ('6017200077','SRID=4326;POINT (145.0031713 -37.7420559)','n6017200077','node','cafe',NULL,'Shisha Square'),
	 ('6017200093','SRID=4326;POINT (145.0044769 -37.736112)','n6017200093','node','cafe',NULL,'X'),
	 ('6017200120','SRID=4326;POINT (145.0046629 -37.7350746)','n6017200120','node','cafe',NULL,'Young Man Cafe'),
	 ('6017200140','SRID=4326;POINT (145.0034111 -37.7406525)','n6017200140','node','cafe',NULL,'Europe Coffee House'),
	 ('6017200203','SRID=4326;POINT (145.00394 -37.7393728)','n6017200203','node','cafe',NULL,'Tasties Cafe'),
	 ('6017200217','SRID=4326;POINT (145.0034157 -37.7429632)','n6017200217','node','cafe',NULL,'Ablas Patisserie'),
	 ('6017236215','SRID=4326;POINT (145.0020156 -37.7490587)','n6017236215','node','cafe',NULL,'Kolache'),
	 ('6017236225','SRID=4326;POINT (145.002553 -37.7482042)','n6017236225','node','cafe',NULL,'Hunt Gather Eat');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('6017236256','SRID=4326;POINT (145.0019682 -37.7493553)','n6017236256','node','cafe','3072','A Simple Sandwich'),
	 ('6017394198','SRID=4326;POINT (145.0060275 -37.7460566)','n6017394198','node','cafe',NULL,'Tasty Bite'),
	 ('6017394203','SRID=4326;POINT (145.0050313 -37.7470533)','n6017394203','node','cafe',NULL,'Remy’s Place'),
	 ('6017394207','SRID=4326;POINT (145.0045551 -37.7477873)','n6017394207','node','cafe',NULL,'Red Bean'),
	 ('6017394223','SRID=4326;POINT (145.0037916 -37.7413183)','n6017394223','node','cafe',NULL,'Arepa Days'),
	 ('6017431770','SRID=4326;POINT (144.9994903 -37.7660561)','n6017431770','node','cafe',NULL,'Field Black'),
	 ('6017435289','SRID=4326;POINT (144.9993575 -37.7683052)','n6017435289','node','cafe',NULL,'Tibbs & Bones'),
	 ('6124860192','SRID=4326;POINT (144.9762537 -37.7786601)','n6124860192','node','cafe',NULL,'Code 21'),
	 ('6129420044','SRID=4326;POINT (145.0584442 -37.6971364)','n6129420044','node','cafe',NULL,'Cafe Lucio'),
	 ('6129421728','SRID=4326;POINT (145.058073 -37.6971376)','n6129421728','node','cafe',NULL,NULL);
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('6131763038','SRID=4326;POINT (144.9740308 -37.7702623)','n6131763038','node','cafe','3057','Wild Life Bakery'),
	 ('6246287136','SRID=4326;POINT (145.0712675 -37.7450233)','n6246287136','node','cafe',NULL,'The Pioneer Cafe'),
	 ('6269168291','SRID=4326;POINT (144.998337 -37.7716685)','n6269168291','node','cafe','3070','Little Local'),
	 ('6369142287','SRID=4326;POINT (144.9919397 -37.7293068)','n6369142287','node','cafe','3072','The Elixir'),
	 ('6420052783','SRID=4326;POINT (144.998816 -37.772212)','n6420052783','node','cafe',NULL,'Poke The Bear'),
	 ('6451337613','SRID=4326;POINT (145.0623295 -37.6912765)','n6451337613','node','cafe',NULL,'Hudsons Coffee'),
	 ('6625159132','SRID=4326;POINT (145.0115247 -37.7383041)','n6625159132','node','cafe',NULL,'Two Boys and a Pot'),
	 ('6656704241','SRID=4326;POINT (145.0242235 -37.7788879)','n6656704241','node','cafe',NULL,'Mr Wednesday'),
	 ('6665268665','SRID=4326;POINT (144.9793582 -37.7713584)','n6665268665','node','cafe',NULL,'Chapt Two'),
	 ('6710535367','SRID=4326;POINT (145.070219 -37.7276467)','n6710535367','node','cafe',NULL,'Touchstone Cafe');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('6734033021','SRID=4326;POINT (144.9832825 -37.7655418)','n6734033021','node','cafe',NULL,'Cafe'),
	 ('6744765515','SRID=4326;POINT (144.9987736 -37.7697076)','n6744765515','node','cafe',NULL,'Cassell Bella''s Bakery Cafe'),
	 ('6776213182','SRID=4326;POINT (144.9716954 -37.7723992)','n6776213182','node','cafe','3057','Coffee Culture on Lygon'),
	 ('6781629487','SRID=4326;POINT (145.0108164 -37.7531524)','n6781629487','node','cafe','3072','Brewista Cafe'),
	 ('6923610627','SRID=4326;POINT (144.9937582 -37.7550946)','n6923610627','node','cafe',NULL,'Millhouse Bakery Cafe'),
	 ('7045310691','SRID=4326;POINT (144.9888924 -37.7512212)','n7045310691','node','cafe','3071','Bakes & Bagels'),
	 ('7085426314','SRID=4326;POINT (144.997602 -37.7086844)','n7085426314','node','cafe',NULL,'Red Spoon Cafe'),
	 ('7088277998','SRID=4326;POINT (145.0063124 -37.7161604)','n7088277998','node','cafe',NULL,'Offspring Cafe'),
	 ('7088278005','SRID=4326;POINT (145.0057549 -37.7160964)','n7088278005','node','cafe',NULL,'Clayton & Me'),
	 ('7189757781','SRID=4326;POINT (145.0307394 -37.7780786)','n7189757781','node','cafe',NULL,'The Alphington Foodstore');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('7189799662','SRID=4326;POINT (145.0259122 -37.775467)','n7189799662','node','cafe','3078','Becca Foodstore'),
	 ('7202656291','SRID=4326;POINT (144.9770558 -37.7849261)','n7202656291','node','cafe',NULL,'Sibling'),
	 ('7207063006','SRID=4326;POINT (144.9780615 -37.779472)','n7207063006','node','cafe','3057','Carolina'),
	 ('7236103647','SRID=4326;POINT (145.0016228 -37.7684369)','n7236103647','node','cafe',NULL,'Leanna'),
	 ('7396461315','SRID=4326;POINT (144.9879207 -37.7505995)','n7396461315','node','cafe','3072','Gilbert Road Bakehouse'),
	 ('7621476291','SRID=4326;POINT (144.9841943 -37.7290269)','n7621476291','node','cafe','3058','iPugliesi'),
	 ('7857885748','SRID=4326;POINT (144.9709471 -37.7753409)','n7857885748','node','cafe','3057','Take Two'),
	 ('7991453294','SRID=4326;POINT (145.0231318 -37.7679078)','n7991453294','node','cafe','3078','Meet Me @ Ed’s'),
	 ('7991453303','SRID=4326;POINT (145.0260356 -37.7682203)','n7991453303','node','cafe',NULL,NULL),
	 ('7991453305','SRID=4326;POINT (145.0214309 -37.7677233)','n7991453305','node','cafe',NULL,'Outer Circle Social Club');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('8004959846','SRID=4326;POINT (145.1300046 -37.7574712)','n8004959846','node','cafe',NULL,NULL),
	 ('8004959848','SRID=4326;POINT (145.1296556 -37.7570936)','n8004959848','node','cafe',NULL,'Si Cafe'),
	 ('8223514289','SRID=4326;POINT (145.0456399 -37.771939)','n8223514289','node','cafe',NULL,'The Cornerstore'),
	 ('8223514294','SRID=4326;POINT (145.0465519 -37.7716644)','n8223514294','node','cafe',NULL,'Docasa'),
	 ('8232667789','SRID=4326;POINT (144.9731632 -37.7641103)','n8232667789','node','cafe',NULL,'Padre Coffee'),
	 ('8246982605','SRID=4326;POINT (145.022181 -37.7477319)','n8246982605','node','cafe','3072','Pie Face'),
	 ('8419583766','SRID=4326;POINT (145.0184356 -37.7830395)','n8419583766','node','cafe','3078','Arthur Street Deli'),
	 ('8717696698','SRID=4326;POINT (144.9791873 -37.7723006)','n8717696698','node','cafe',NULL,'Bellboy Cafe'),
	 ('8790714686','SRID=4326;POINT (144.9883515 -37.7782676)','n8790714686','node','cafe',NULL,'Taiyo Sun'),
	 ('8867059319','SRID=4326;POINT (145.0445918 -37.7664626)','n8867059319','node','cafe','3079','The Foreigner');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('9073393586','SRID=4326;POINT (145.0616077 -37.7575668)','n9073393586','node','cafe',NULL,NULL),
	 ('9107756450','SRID=4326;POINT (145.0443093 -37.7593628)','n9107756450','node','cafe',NULL,'Lip Cafe'),
	 ('9110868579','SRID=4326;POINT (145.0425316 -37.7688318)','n9110868579','node','cafe',NULL,'The Daughters'),
	 ('9110868590','SRID=4326;POINT (145.0424133 -37.7685994)','n9110868590','node','cafe',NULL,'Laurent'),
	 ('9319609117','SRID=4326;POINT (145.1122379 -37.7723587)','n9319609117','node','cafe',NULL,'Cafe Macchiato'),
	 ('9470170892','SRID=4326;POINT (144.9964843 -37.6997251)','n9470170892','node','cafe',NULL,NULL),
	 ('9585242027','SRID=4326;POINT (145.1362308 -37.6849427)','n9585242027','node','cafe',NULL,'Degani'),
	 ('9642676457','SRID=4326;POINT (145.0486712 -37.7209903)','n9642676457','node','cafe',NULL,'Bachelor of Coffee'),
	 ('9642676462','SRID=4326;POINT (145.0480378 -37.7209061)','n9642676462','node','cafe',NULL,'Fuel Juice & Soup Bar'),
	 ('9642676463','SRID=4326;POINT (145.0480409 -37.7207583)','n9642676463','node','cafe',NULL,'Grafali''s Coffee Roasters');
INSERT INTO cse3dms.cafe (osm_id,geom,full_id,osm_type,amenity,"addr:postcode","name") VALUES
	 ('9642676474','SRID=4326;POINT (145.0469893 -37.7206614)','n9642676474','node','cafe',NULL,'House of Cards'),
	 ('9684279735','SRID=4326;POINT (145.0286561 -37.7592669)','n9684279735','node','cafe','3071','Artiga Specialty Coffee'),
	 ('9687928982','SRID=4326;POINT (145.1353538 -37.7314255)','n9687928982','node','cafe',NULL,'Agnes & Alban'),
	 ('9721983603','SRID=4326;POINT (144.9775967 -37.7821346)','n9721983603','node','cafe','3054','Deli Danois'),
	 ('9873448064','SRID=4326;POINT (144.9802482 -37.7663049)','n9873448064','node','cafe',NULL,'Suntop Plaza'),
	 ('9981016212','SRID=4326;POINT (145.0440114 -37.7681835)','n9981016212','node','cafe',NULL,'Pinkie'),
	 ('10138871819','SRID=4326;POINT (145.0014936 -37.7542172)','n10138871819','node','cafe','3071','Thornbury Espresso Bar'),
	 ('10138871836','SRID=4326;POINT (145.0008271 -37.7583494)','n10138871836','node','cafe','3071','Haytch'),
	 ('10144985269','SRID=4326;POINT (145.000556 -37.7600607)','n10144985269','node','cafe','3071','Lan Coffee'),
	 ('10175111947','SRID=4326;POINT (145.0817991 -37.7125605)','n10175111947','node','cafe',NULL,'Wish Upon a Cupcake');
