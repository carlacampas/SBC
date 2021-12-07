from random import randrange

districtes = ["Ciutat Vella", "Eixample", "Sants-Montjuïc", "Les Corts", "Sarrià-Sant Gervasi",
                "Gràcia", "Horta-Guinardó", "Nou Barris", "Sant Andreu", "San Martí"]

barris = {
    "Ciutat Vella": ["el Raval", "el Gòtic", "la Barceloneta", "Sant Pere, Santa Caterina i la Ribera"],        #done
    "Eixample": ["el Fort Pienc", "la Sagrada Família", "la Dreta de l'Eixample", "l'Antiga Esquerra de l'Eixample",  
  	 	 	    "la Nova Esquerra de l'Eixample", "Sant Antoni"],       #done
    "Sants-Montjuïc": ["el Poble Sec", "la Marina del Prat Vermell", "la Marina de Port", "la Font de la Guatlla", "Hostafrancs",
  	 	 	    "la Bordeta", "Sants-Badal", "Sants"],
    "Les Corts": ["les Corts", "la Maternitat i Sant Ramon", "Pedralbes"],
    "Sarrià-Sant Gervasi": ["Vallvidrera, el Tibidabo i les Planes", "Sarrià", "les Tres Torres", "Sant Gervasi-Bonanova", 
                "Sant Gervasi-Galvany", "el Putget i Farró"],
    "Gràcia": ["Vallcarca i els Penitents", "el Coll", "la Salut", "Vila de Gràcia", "el Camp d'en Grassot i Gràcia Nova"],
    "Horta-Guinardó": ["Genís dels Agudells",
  	 	 	    "Montbau", "la Vall d'Hebron", "la Clota", "Horta"],
    "Nou Barris": ["Vilapicina i la Torre Llobeta",  "Porta", "el Turó de la Peira", "Can Peguera", "la Guineueta",
  	 	 	    "Canyelles", "les Roquetes", "Verdun", "la Prosperitat", "la Trinitat Nova", "Torre Baró", "Ciutat Meridiana"  
  	 	 	    "Vallbona"],
    "Sant Andreu": ["La Trinitat Vella", "Baró de Viver", "el Bon Pastor", "Sant Andreu", "la Sagrera", "el Congrés i els Indians",
                "Navas"],
    "San Martí": ["el Camp de l'Arpa del Clot", "el Clot", "el Parc i la Llacuna del Poblenou", "la Vila Olímpica del Poblenou",
  	 	 	    "el Poblenou",  "Diagonal Mar i el Front Marítim del Poblenou", "el Besòs i el Maresme" , "Provençals del Poblenou"
  	 	 	    "Sant Martí de Provençals", "la Verneda i la Pau"],     #Done
}

#CIUTAT VELLA
raval = [
    ("Rambla del Raval", (41.378502, 2.169252)), 
    ("Carrer de Sant Pacià", (41.378255, 2.168243)),
    ("Carrer dels Tallers", (41.384889, 2.167424)), 
    ("Carrer de la Reina Amàlia", (41.376813, 2.16736)),
    ("Carrer del Portal de Santa Madrona", (41.375779, 2.175023)),
    ("Carrer del Carme", (41.381569, 2.168922)),
    ("Carrer d'En Sant Climent", (41.378733, 2.165365))
]

gotic = [
    ("Carrer d'En Brot", (41.384085, 2.172123)),
    ("Carrer dels Boters", (41.384091,2.174412)),
    ("Carrer d'Avinyó", (41.380952,2.17726)),
    ("Carrer de la Mercè", (41.379847,2.1801)),
    ("Carrer de Jaume I", (41.383336,2.177973)),
    ("Carrer de Montjuïc del Bisbe", (41.383574,2.175429 )),
    ("Carrer del Paradís", (41.383326,2.177131)),
    ("Carrer de Santa Llúcia", (41.384148,2.17597)),
    ("Carrer de la Cucurulla", (41.384376,2.174116))
]

barceloneta = [
    ("Emília Llorca Martín", (41.377315,2.189488)),
    ("Carrer de Ginebra", (41.381758,2.189036)),
    ("Carrer de Balboa", (41.382279,2.188832)),
    ("Carrer de Paredes", (41.381476,2.18783)),
    ("Carrer dels Mariners", (41.381675,2.188698)),
    ("Passeig de Joan de Borbó", (41.373391,2.188044))
]

stPere = [
    ("Carrer de l'Allada-Vermell", (41.386987,2.181024)),
    ("Carrer de l'Arc de Sant Cristòfol", (41.387538,2.178864)),
    ("Carrer dels Mestres Casals i Martorell", (41.387353,2.178306)),
    ("Pla del Palau", (41.382402,2.184339)),
    ("Carrer del Consolat de Mar", (41.382446,2.182313)),
    ("Carrer de la Nau", (41.383009,2.180754)),
    ("Carrer dels Mirallers", (41.384069,2.180946)), 
    ("Carrer de Sant Pere Més Baix", (41.387623,2.177858)),
    ("Via Laietana", (41.385324,2.176964))
]

# EIXAMPLE
fortPienc = [
    ("Gran Via de les Corts Catalanes", (41.367203,2.139314)),
    ("Gran Via de les Corts Catalanes", (41.394342,2.175005)),
    ("Carrer de la Diputació", (41.388841,2.164994)),
    ("Carrer del Consell de Cent", (41.391541,2.166303)),
    ("Carrer de Padilla", (41.40548,2.177473)),
    ("Carrer d'Alí Bei", (41.394469,2.18205)),
    ("Carrer de Nàpols", (41.398399,2.175436))
]

sagradaFamilia = [
    ("Carrer d'Aragó", (41.395419,2.169196)),
    ("Carrer de Lepant", (41.404437,2.176713)),
    ("Carrer de Roselló", (41.397047,2.162261)),
    ("Carrer de Marina", (41.397958,2.182766)),
    ("Carrer dels Enamorats", (41.405653,2.182547)),
    ("Plaça Sagrada Familia", (41.40224,2.172615)),
    ("Carrer de Provença", (41.395608,2.162645))
] 

dretaEixample = [
    ("Carrer de Pau Claris", (41.392422,2.167507)),
    ("Carrer de València", (41.396715,2.168632)),
    ("Carrer de Balmes", (41.39801,2.151484)),
    ("Plaça Catalunya", (41.38736,2.169696)),
    ("Plaça Catalunya", (41.387076,2.169)),
    ("Passeig de Gràcia", (41.392667,2.164592)),
    ("Passeig de Gràcia", (41.390094,2.168183)),
    ("Carrer de Mallorca", (41.397559,2.167493)),
    ("Passatge del Mercader", (41.392998,2.159216))
]

antigaEsquerraEixample = [
    ("Carrer de Casanova", (41.388074,2.155236)),
    ("Carrer d'Aribau", (41.393324,2.152843)),
    ("Passatge de Valeri Serra", (41.386059,2.159033)),
    ("Carrer de la Diputació", (41.388212,2.16415)),
    ("Carrer d'Enric Granados", (41.39135,2.157685)),
    ("Carrer del Rosselló", (41.391562,2.154792))
]

novaEsquerraEixample = [
    ("Carrer d'Entença", (41.382163,2.147225)),
    ("Carrer de Calàbria", (41.381381,2.152818)),
    ("Carrer del Compte Borrell", (41.383069,2.155053)),
    ("Carrer de Rocafort", (41.381857,2.149925)),
    ("Carrer de Tarragona", (41.378013,2.145976)),
    ("Carrer de Viladomat", (41.382394,2.153731)),
    ("Avinguda de Roma", (41.383189,2.14988))
]

santAntoni = [
    ("Carrer de Sepúlveda", (41.379001,2.156929)),
    ("Carrer del Parlament", (41.376431,2.162511)),
    ("Carrer de Viladomat", (41.375744,2.162769)),
    ("Carrer de Floridablanca", (41.37862,2.158711)),
    ("Carrer de Villarroel", (41.381399,2.161628)),
    ("Passatge de Sant Antoni Abat", (41.379592,2.160963))
]

    
#SANTS-MONTJUÏC
PobleSec = [
    ("Carrer de Manso", (41.37644236142747, 2.160208702018791)),
    ("Avinguda dels Montanyans", (41.36842635156931, 2.149252209697133)),
    ("Carrer Doctor Font I Quer", (41.36360724976339, 2.159164380912651)),
    ("Carrer de Carles Buïgas", (41.3718845118478, 2.153842878757874)),
    ("Avinguda Francesc Ferrer i Guàrdia", (41.371175330374605, 2.148693036371115)),
    ("Avinguda del Paral·lel", (41.37636127358638, 2.168262729925648)),
    ("Camí de la Foixarda", (41.36544284401109, 2.1461503854388875)),
]
#es un barri industrial
MarinaPratVermell = [
    ("Carrer del Plom", (41.352419234043985, 2.1380876640607496)),
    ("Carrer de l'Acer", (41.35078701936877, 2.1377127769085624)),
    ("Carrer de Pontils", (41.35100277423048, 2.1427862497014942)),
    ("Carrer del Cobalt", (41.35437033351912, 2.139274806709342)),
    ("Carrer del Ferro", (41.35348859388332, 2.1369380101273756)),
    ("Carrer del Cisell", (41.35447725231823, 2.144019406095465)),
    ("Passeig de la Zona Franca", (41.35276696682574, 2.144480184605578)),
    ("Carrer d'Ulldecona", (41.35264159346197, 2.1433785066151807))
]
MarinaPort = [
    ("Carrer dels Alts Forns", (41.3565735906508, 2.135514758957696)),
    ("Carrer de l'Alumini", (41.35584308402173, 2.135336188481842)),
    ("Carrer de l'Urani", (41.35693494878113, 2.137395325218537)),
    ("Carrer de l'Energia", (41.35796471685839, 2.136701907666045)),
    ("Passeig d'Antonio Ruiz Villalba", (41.35883217188904, 2.138334794160623)),
    ("Carrer de la Foneria", (41.36204978814848, 2.1420737840273407)),
    ("Carrer de Can Clos", (41.361165587268076, 2.1451606105513386)),
    ("Carrer del Polvorí", (41.3627940745136, 2.14369175831649))
]
FontGuatlla = [
    ("Carrer de Sant Fructuós", (41.37087094714539, 2.1452661770234696)),
    ("Carrer de Trajà", (41.36850177022185, 2.1416420405516017)),
    ("Carrer de la Dàlia", (41.36985104299206, 2.1472198130903357)),
    ("Carrer del Rabí Rubèn", (41.370754083938905, 2.147531262318387)),
    ("Carrer d'Amposta", (41.371338397872094, 2.147856868329531)),
    ("Carrer de Chopin", (41.37057347675232, 2.146908363862284)),
    ("Carrer de la Font Florida", (41.36716309399387, 2.142010116912026)),
    ("Avinguda Francesc Ferrer i Guàrdia", (41.3695535679355, 2.147559575884573))
]
Hostafrancs = [
    ("Carrer de l'Aliga", (41.37392752608082, 2.1433254085923275)),
    ("Carrer de Portugalete", (41.3730613344084, 2.142445123939186)),
    ("Carrer de la Bordeta", (41.372868845803744, 2.1430630721062918)),
    ("Carrer del Farell", (41.37261510995461, 2.143949186459123)),
    ("Carrer de Leiva", (41.373774412230475, 2.1428706920165324)),
    ("Carrer de Viladrell", (41.37461872126234, 2.14400748345602)),
    ("Carrer de Sant Nicolau", (41.37764333049152, 2.1451330573557126)),
    ("Carrer de Tarragona", (41.377478293236756, 2.1467745694259173))
]
Bordeta = [
    ("Carrer de la Constitució", (41.36973264798632, 2.1352941030917103)),
    ("Rambla de Badal", (41.366805700636036, 2.1340594513454896)),
    ("Avinguda Carrilet", (41.36578383593691, 2.133678670900393)),
    ("Carrer del Corral", (41.36889267952634, 2.1391019075426727)),
    ("Carrer de Rossend Anús", (41.37082372484479, 2.138663433090744)),
    ("Carrer de Vilassar", (41.37058126490202, 2.138017260214217)),
    ("Carrer d'Olizinelles", (41.37045137527527, 2.137624940967754)),
    ("Carrer d'Andalusia", (41.37110082081571, 2.1342325333659877))
]
SantsBadal = [
    ("Carrer de Portbou", (41.37821977280828, 2.129322672923848)),
    ("Passatge Llopis", (41.371748810886, 2.1266752538630667)),
    ("Carrer de Sant Frederic", (41.37328857204639, 2.1279613200061207)),
    ("Carrer de Bacardí", (41.372548941323366, 2.127888039884009)),
    ("Carrer de Bonsnoms", (41.37313184802288, 2.1265433496432666)),
    ("Carrer de Carreras i Candi", (41.3727881536669, 2.127997960067176)),
    ("Carrer de Roger", (41.377154940276434, 2.1276832213915924)),
    ("Carrer de Begur", (41.37439570586821, 2.129693045221648))
]
Sants = [
    ("Carrer de Burgos", (41.372597327734084, 2.1346226173384193)),
    ("Carrer de Viriat", (41.379684684013114, 2.1410753035482295)),
    ("Plaça de Sants", (41.376416166374156, 2.1371162760400657)),
    ("Carrer de Rossend Arús", (41.37519768606222, 2.1396031589951594)),
    ("Carrer de Miquel Angel", (41.377777331127305, 2.133264045551349)),
    ("Carrer de Rosés", (41.37834214697883, 2.1326765550496476)),
    ("Carrer de Puiggarí", (41.38027074950211, 2.138771769004801)),
    ("Carrer de Melcior de Palau", (41.37992636038889, 2.1350081579782754)),

]
#LES CORTS
lesCorts = [
    ("Avinguda Diagonal", (41.389905745401464, 2.135127575321382)),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]
MaternitatStRamon = [
    ("Avinguda Dr Marañón", (41.38262492288391, 2.1128976163026985)),
    ("Carrer d'Arístides Maillol", (41.378460545413084, 2.1207260650663478)),
    ("Carrer de Felipe de Paz", (41.37883315847003, 2.1249616063750394)),
    ("Carrer d'Elisabeth Eldenbenz", (41.38201124190458, 2.1242897618915912)),
    ("Avinguda d'Albert Bastardas", (41.379030423341824, 2.107785756102554)),
    ("Passatge de Xile", (41.380126328400834, 2.1144749903073143)),
    ("Avinguda de Xile", ()),
    ("", (41.376400175855984, 2.1153220985690524))
]
Pedralbes = [
    ("Avinguda d'Esplugues", (41.39194500580487, 2.111721400490632)),
    ("Carrer de Joan Alòs", (41.391620692753015, 2.106457528018144)),
    ("Avinguda Diagonal", (41.38400023325187, 2.1062265957474198)),
    ("Carrer de l'Abadessa Olzet", (41.394344488316, 2.1102325982292855)),
    ("Carrer del Bisbe Català", (41.39558949800284, 2.1148521158502507)),
    ("Av. de Pedralbes", (41.39421837308131, 2.1147003489927805)),
    ("Carrer de Jordi Girona", (41.3897135010495, 2.1138709883478044)),
    ("Passatge dels til·lers", (41.389598468992766, 2.1174175716685895))
]


#SARRIA ST GERVASI
Vallvidrera = [
    ("Carrer de la Font de pins", (41.417329614770885, 2.097632377445066)),
    ("Camí de la Reineta", (41.4173998038689, 2.096992800566133)),
    ("Carrer de la Fonolleda", (41.412813956727916, 2.100409077065797)),
    ("Camí de Cama-Sec", (41.41724772739403, 2.0986307413536434)),
    ("Carrer de Pelfort", (41.413188323732605, 2.1008614607118714)),
    ("Cami del Salze", (41.4194703481364, 2.104979711834753)),
    ("Camí de Cal Torxo", (41.42049974682483, 2.114245777722974)),
    ("Carrer del Parc de la Budallera", (41.42062842049896, 2.118566821514786))
]

Sarrià = [
    ("Carrer de l'Hort de la Vila", (41.39904595430669, 2.1231820574415416)),
    ("Carrer del Dr. Francesc Darder", (41.39634496230973, 2.116527138105434)),
    ("Avinguda de Vicenç Foix", (41.39529396232639, 2.1202398825771573)),
    ("Carrer d'Enric Giménez", (41.394642333802274, 2.119805561525748)),
    ("Carrer de Monterols", (41.3967338279964, 2.1217950321483317)),
    ("Carrer d'Osi", (41.39482100678957, 2.123280129937021)),
    ("Carrer del Riu d'Or", (41.39433753757282, 2.122817788172618)),
    ("Via Augusta", (41.399193086833655, 2.1241487720398395))

]

TresTorres = [
    ("Ronda del General Mitre", (41.39652192314962, 2.1332961385869096)),
    ("Carrer de la Nena Casas", (41.39598210713651, 2.1307348270035202)),
    ("Carrer Alt de Gironella", (41.39609190058712, 2.1319666959079124)),
    ("Carrer del Rossari", (41.39577205125549, 2.1287809249827148)),
    ("Carrer del Dr Carulla", (41.39933736900599, 2.1281801101942244)),
    ("Carrer d'Alacant", (41.400085819451235, 2.1325789327528146)),
    ("Carrer de les Tres Torres", (41.395804244615825, 2.133169018705796)),
    ("Carrer de Calatrava", (41.400777927246025, 2.1290062305283985))

]

SantGervasiBonanova = [
    ("Carrer de Claravall", (41.41311184761531, 2.1338850775351474)),
    ("Carrer d'Iradier", (41.40545639801086, 2.1261416494589)),
    ("Carrer de Jesús i Maria", (41.40980064668414, 2.1327950898953683)),
    ("Passeig de la Bonanova", (41.405940901101395, 2.132149124804449)),
    ("Carrer del Camp", (41.403389144233564, 2.1362187048772405)),
    ("Carrer de Bigai", (41.40529489617788, 2.133010411592341)),
    ("Carrer de Llull XIII", (41.41220681555171, 2.1371876525136195)),
    ("Carrer de les Escoles Pies", (41.40555329891799, 2.1259909242710187))

]

StGervasiGalvany = [
    ("Avinguda Diagonal", (41.39543284676676, 2.153551189049977)),
    ("Carrer de Tuset", (41.39631428428138, 2.1528967896268028)),
    ("Carrer de la Reina Victòria", (41.39699252734518, 2.1389917958263642)),
    ("Carrer de Maria Colbí", (41.395277998613686, 2.144741049169761)),
    ("Carrer de Bori i Fontestà", (41.39329828031606, 2.1394159210730086)),
    ("Carrer de l'Avenir", (41.3965329673795, 2.1481576136566147)),
    ("Carrer d'Alfons XII", (41.39888375915571, 2.1491472392321174)),
    ("Carrer de Dénia", (41.398565694184455, 2.1487422859052465))
]
PutxetFarró = [
    ("Carrer de Balmes", (41.407656883693875, 2.1384524679075616)),
    ("Avinguda de la República Argentina", (41.41174226310672, 2.1431479972959915)),
    ("Carrer de Cadis", (41.40660243819423, 2.143409319061819)),
    ("Carrer de Manacor", (41.406867988680716, 2.142690487082732)),
    ("Carrer d'Homer", (41.40821181843852, 2.144643135145326)),
    ("Carrer de Pàdua", (41.40641735691032, 2.1465528678658847)),
    ("Carrer de Monegal", (41.407080656098046, 2.143222333635235)),
    ("Carrer del Putxte", (41.406868514653596, 2.1440926220173817))

]
#GRACIA
VallcarcaPenitents = [
    ("Passatge de Cardedeu", (41.41632573174751, 2.1434529218671727)),
    ("Carrer de Veciana", (41.419848093199796, 2.1424126259161547)),
    ("Carrer d'Anna Piferrer", (41.41764959469964, 2.14017441341548)),
    ("Carrer de Betània", (41.41807511634649, 2.1403635581338465)),
    ("Carrer del Montornès", (41.41679854304234, 2.143799687184179)),
    ("Carrer de Castellterçol", (41.416893104888274, 2.144598298217283)),
    ("Carrer d'Esteve Terradas", (41.413196727736334, 2.1413520441159544)),
    ("Avinguda de la República Argentina", (41.41218086133789, 2.140369094565221))

]

elColl = [
    ("Carrer del riu de la plata", (41.41685011283726, 2.1495378370293543)),
    ("Carrer del Torrent del Remei", (41.416574654679074, 2.1485655256746163)),
    ("Passeig de la Mare de Déu del Coll", (41.41643692516194, 2.1470530413450235)),
    ("Carrer del Beat Almató", (41.417587362748236, 2.1482414218897032)),
    ("Carrer de Mora d'Ebre", (41.41753875312166, 2.148684363729084)),
    ("Carrer del Portell", (41.41749824507176, 2.151212373251403)),
    ("Carrer Taradell", (41.420617291050114, 2.1467073305728976)),
    ("Passatge de Manlleu", (41.41976665701862, 2.145292077378779))

]
laSalut = [
    ("Travessera de Dalt", (41.410822149579715, 2.1566392679880697)),
    ("Carrer de Ramiro de Maeztu", (41.41666844927767, 2.158364137695625)),
    ("Avinguda dels Albigesos", (41.410140400515736, 2.150056827716829)),
    ("Avinguda del Coll del Port Vell", (41.41117029054307, 2.1516990152001867)),
    ("Carrer de Sostres", (41.41159498270701, 2.150297493123873)),
    ("Carrer de Mariano", (41.41304953232945, 2.1542613939457715)),
    ("Riera de Can Toda", (41.41302829826266, 2.1588906638342027)),
    ("Carrer de Valldoreix", (41.410119165498, 2.1513309386952963))

]
VilaDeGracia = [
    ("Carrer de la Riera de Sant Miquel", (41.39981267688401, 2.157721167393994)),
    ("Carrer de la vila de gràcia", (41.40109148286635, 2.1594446970139938)),
    ("Carrer de Martí", (41.40822155093587, 2.1579328716019885)),
    ("Carrer de Sant Salvador", (41.40772822336368, 2.1546894669130308)),
    ("Carrer de Pere Serafí", (41.40082124404249, 2.1558462056482535)),
    ("Carrer de Tordera", (41.401688909843166, 2.1614257689593277)),
    ("Carrer de la Llibertat", (41.40029383367919, 2.1621288846611297)),
    ("Carrer del Perill", (41.39980044591608, 2.161924754296091)),
]

CampGrassot = [
    ("Carrer de Nàpols", (41.40448345948686, 2.171410780550652)),
    ("Travessera de Gràcia", (41.40552923341035, 2.164372492065973)),
    ("Carrer de Sicília", (41.40558867804182, 2.1681767104467218)),
    ("Carrer de Pau Alsina", (41.407327409452606, 2.1652244784741614)),
    ("Carrer de l'Escorial", (41.406361453302026, 2.1621929919520024)),
    ("Passatge de Nogués", (41.40799613991356, 2.166353855805946)),
    ("Carrer de Bailén", (41.402794721574246, 2.1628270283487936)),
    ("Carrer de la Providència", (41.40946854542821, 2.1618423351540366))
]

#HORTA-GUINARDÓ
GenisAgudells = [
    ("Carrer del Lledoner", (41.42521627952209, 2.1383254841724395)),
    ("Carrer de Garriguella", (41.42268538119673, 2.130977768989971)),
    ("Camí de Can Borni", (41.42077740801818, 2.1257850374122547)),
    ("Carrer de Viver", (41.428817772447935, 2.1300690409638703)),
    ("Carer Costa Pachecho", (41.42821429297176, 2.131523005805631)),
    ("Carrer d'Olvan", (41.429654847595785, 2.1331846799105003)),
    ("Carrer de Natzaret", (41.423814563406395, 2.1381437385672197)),
    ("Carrer del Sinai", (41.424687851468846, 2.1386593984519706))
]

Montbau = [
    ("Carrer de la Ceràmica", (41.43022299016828, 2.139190516123427)),
    ("Carrer de Vayreda", (41.430298727136304, 2.1398344849481514)),
    ("Carrer de Sorolla", (41.4299389757513, 2.140251170658267)),
    ("Carrer deRoig i Soté", (41.430118851693, 2.1406173490095814)),
    ("Carrer de Benlliure", (41.43057327290467, 2.141475974109214)),
    ("Carrer de la Poesia", (41.43196491807846, 2.1443043862021223)),
    ("Carrer de l'Harmonia", (41.434331593060215, 2.1428649264762676)),
    ("Carrer d'Hipàtia d'Alexandria", (41.434142262236996, 2.1454281749354656))
]

VallHebron = [
    ("Carrer de Berruguete", (41.43305329154054, 2.149572813235587)),
    ("Carrer de Juan Mena", (41.43165358228088, 2.146670210433196)),
    ("Carrer del Pare Mariana", (41.43031514592987, 2.1466838376763997)),
    ("Carrer de la Granja Vella", (41.4268309951846, 2.148700669670549)),
    ("Avinguda del Cardenal Vidal i Barraquer", (41.42776080150412, 2.1506902471782907)),
    ("Carrer de Jorge Manrique", (41.4312244682882, 2.1502405481525684)),
    ("Avinguda de Can Marcet", (41.43434281710685, 2.151117223486171)),
    ("Carrer de la Maternitat d'Elna", (41.43468003613039, 2.1518447024398717))
]

la Clota = [
    ("Carrer del Capcir", (41.42690288999536, 2.1508559309289104)),
    ("Carrer de Lisboa", (41.427999789330975, 2.1546777041170526)),
    ("Carrer d'Alarcon", (41.428492962838135, 2.153883863988952)),
    ("Passatge Feliu", (41.42804230443604, 2.1516044087639767)),
    ("Camí de Sant Genís a Horta", (41.429241218936504, 2.1523528865990436)),
    ("Carrer de Juan de Ávila", (41.42964085218339, 2.1549271967287416)),
    ("Riera de Marcelí", (41.430082996739, 2.153645711950522)),
    ("Avinguda Marquès de CastBell", (41.42912798647052, 2.1554276011931135))
]

Horta = [
    ("Passeig dels Castanyers", (41.44046363185361, 2.147354247212433)),
    ("Carrer d'Hedilla", (41.437582575996466, 2.158484089993384)),
    ("Carrer del Congrés", (41.4380391469184, 2.159126950279735)),
    ("Carrer de Campoamor", (41.43346060979326, 2.1570291956611154)),
    ("Carrer d'Horta", (41.4324839825219, 2.157384460556204)),
    ("Carrer del Vent", (41.43209079077064, 2.161309291778138)),
    ("Carrer de Mont-rat", (41.438368890586766, 2.162848772990189)),
    ("Carrer de Coïmbra", (41.43254740032328, 2.1553205406894977))
]

#NOU BARRIS
VilapicinaTorreLlobeta = [
    ("Carrer de Santa Fe", (41.42775519047973, 2.1748758757814044)),
    ("Carrer de Ramon Albo", (41.42527513355095, 2.1769399992214176)),
    ("Carrer de l'Escultor Llimona", (41.42790714575524, 2.1676141567008655)),
    ("Carrer d'Espiell", (41.42975072521537, 2.1676504941333596)),
    ("Carrer de Santa Matilde", (41.428960626142754, 2.1708724131477974)),
    ("Carrer de Pontons", (41.42694446769542, 2.1729920967099274)),
    ("Carrer del Greco", (41.427353153521004, 2.1712721249052276)),
    ("Carrer de Serrano", (41.42883348286507, 2.1727982970699617))
]

Porta = [
    ("Carrer Nou de Porta", (41.432096478375456, 2.174861164510074)),
    ("Carrer de Valldemossa", (41.43437889560855, 2.176905424584772)),
    ("Carrer de la Maladeta", (41.43319910541633, 2.1748905783240984)),
    ("Carrer de la Selva", (41.437146356677616, 2.176317148304283)),
    ("Carrer de Deià", (41.43275805684743, 2.1773319248881258)),
    ("Carrer Torrent de Can Piquer", (41.43216263652605, 2.17915558135764)),
    ("Carrer d'Alella", (41.431512078450154, 2.1794497194978844)),
    ("Carrer de Vèlia", (41.431600290096746, 2.1808615825710564))
]

TuroPeira = [
    ("Passeig de la Peira", (41.43511688794346, 2.17994472190034)),
    ("Carrer de Travau", (41.43166284786402, 2.166742680050793)),
    ("Carrer de la Vall d'Ordesa", (41.43128027194441, 2.1650241091631135)),
    ("Carrer del Cadí", (41.43181869901246, 2.1691571080043395)),
    ("Carrer d'Aneto", (41.432642813422284, 2.1705201182192972)),
    ("Carrer de Rossario Pi", (41.430686898174024, 2.1720296887882995)),
    ("Carrer d'Inca", (41.43207142854497, 2.1720296887882995)),
    ("Carrer de Peñalara", (41.43145059119708, 2.1703955421327317))
]

CanPeguera = [
    ("Carrer de Bellcaire", (41.43539344874715, 2.1663438594151225)),
    ("Carrer de Flaçà", (41.434765754529835, 2.1668200226895844)),
    ("Carrer Matamala", (41.43483715133444, 2.166574004997779)),
    ("Carrer d'Espinagua", (41.43497696984929, 2.1668954152080406)),
    ("Carrer del Cistellet", (41.43505431613237, 2.165566126066835)),
    ("Carrer de Vila-seca", (41.43429274871582, 2.1672565056911743)),
    ("Carrer dels Riells", (41.43475682992373, 2.167466811137395)),
    ("Carrer de Fonteta", (41.4345426390093, 2.1673596744006414))
]

laGuineueta = [
    ("Carrer de Marie Curie", (41.437435981882246, 2.1670187533908014)),
    ("Rambla del Caçador", (41.440498376653935, 2.169881548445795)),
    ("Carrer de la Gasela", (41.43943512956513, 2.168626624586072)),
    ("Carrer de la Guineueta", (41.439885909259814, 2.166561229066944)),
    ("Carrer de l'Isard", (41.43923913741692, 2.170548226746273)),
    ("Passeig de Valldaura", (41.43916074039189, 2.1682083166328305)),
    ("Carrer  del Marne", (41.43796027411892, 2.167881513544361)),
    ("Carrer del Castor", (41.44122864084514, 2.1709096124100378))
]

Canyelles = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

lesRoquetes = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

Verdun = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

laProsperitat = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

laTrinitatNova = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

TorreBaró = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

Ciutat Meridiana = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

Vallbona = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())

]

#SANT ANDREU
TrinitatVella = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

BaroDeViver = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

BonPastor = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

Sant Andreu = [
    ("", (41.42601599125790)),
("Carrer Gran de Sant Andreu", (41.43607636836907, 2.1898698688800966)),
("Plaça de l'Estació", (41.43808114627561, 2.1970218761064366)),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

laSagrera = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

CongrésIndians = [
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

Navas = [
     ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ()),
    ("", ())
]

# SANT MARTÍ
campDelArpaDelClot = [
    ("Carrer del Ripollès", (41.412812969875006, 2.1841558230430245)),
    ("Carrer del Pistó", (41.411818647487785, 2.1840169278120576)),
    ("Carrer de Trinxant", (41.4165096451409, 2.1829858891921248)),
    ("Carrer del Degà Bahí", (41.4126769894202, 2.1849819956370027)),
    ("Carrer de Mallorca", (41.40977124079926, 2.1838635013352747)),
    ("Carrer de la Independència", (41.40929285521374, 2.181391112817716))
    ("Carrer de Xifré", (41.41030196704949, 2.1815900107533754))
    ("Carrer de la Muntanya", (41.41085477827752, 2.188469539736483))
]

elClot = [
    ("Carrer de Valencia", (41.412260753055634, 2.1894425451210124))
    ("Carrer de Bilbao", (41.40913659067683, 2.1950231186443476)),
    ("Carrer de Bolivia", (41.40588099322612, 2.195023118659365)),
    ("Carrer de Lope Vega", (41.41212074272617, 2.1933236578606965)),
    ("Carrer del Ter", (41.410421825824336, 2.188149160231065)),
    ("Carrer del Coronel Sanfeliu", (41.40675826086388, 2.188969707387722)),
    ("Carrer d'Hernán Cortés", (41.40635986104546, 2.1886888952861634)),
    ("Carrer del Clot", (41.407864632269764, 2.18828290186044)
]

elParcLaLlacunaPoblenou = [
    ("Carrer d'Àlaba", (41.39842869138003, 2.191291639204362)),
    ("Carrer d'Avila", (41.4009235275718, 2.189982721089422)),
    ("Carrer d'Almogàvers", (41.399080656517214, 2.192704386917285)),
    ("Carrer de Roc Boronat", (41.40210523687135, 2.195440471104707)),
    ("Carrer de Pere IV", (41.40009294487535, 2.1955255897220534)),
    ("Carrer de Badajoz", (41.39856506250252, 2.195476758102337)),
    ("Passatge d'Iglésias", (41.397955233342465, 2.1946879406967956)),
    ("Carrer de Wellington", (41.39193981694519, 2.18623499713313))
]
VilaOlímpicaPoblenou = [
    ("Avinguda d'Icària", (41.39150737983844, 2.1971473869821043)),
    ("Carrer de Joan Miró", (41.3892758597104, 2.1963456717261582)),
    ("Carrer de ka Marina", (41.39159454706534, 2.19111709390079)),
    ("Carrer de Rosa Sensat", (41.39239647982617, 2.194591193343224)),
    ("Carrer del Dr. Trueta", (41.39018855132305, 2.192215155821752)),
    ("Carrer de Ramon Turó", (41.39078968461476, 2.190760946239673)),
    ("Carrer de Sardenya", (41.390570772610815, 2.1903008038672955)),
    ("Carrer de Zamora", (41.394311896940025, 2.1920206896165255))
]
Poblenou = [
    ("Passatge de Bori", (41.39808506725039, 2.2018218678139436)),
    ("Carrer del Taulat", (41.396655449342425, 2.2022791196917395)),
    ("Rambla del Poblenou", (41.39920609695088, 2.203790863341082)),
    ("Carrer de Marià Aguiló", (41.400046557416964, 2.205085828492953)),
    ("Carrer del Joncar", (41.40138520866695, 2.204893768642047)),
    ("Carrer de Llull", (41.4018330197824, 2.203239673526311)),
    ("Passatge de Colomer", (41.40355933601422, 2.204267755874785)),
    ("Passatge de Rovira", (41.40446752454077, 2.203083679620419))
]
DiagonalMarFrontMarítimPoblenou = [
    ("Carrer de Provençals", (41.40791843995019, 2.2079941611412357)),
    ("Carrer de Pujades", (41.406289701156915, 2.206779730032781)),
    ("Carrer de Fluvià", (41.405321723889884, 2.209143175133192)),
    ("Passatge de Maria Llimona", (41.4052075149472, 2.2088516259974647)),
    ("Carrer dels Pellaires", (41.404385396180736, 2.2100024513256797)),
    ("Carrer dels Ferrers", (41.405327570449316, 2.210487778213105)),
    ("Carrer de la Selva de Mar", (41.404159832649704, 2.215247405938325)),
    ("Carrer del Treball", (41.4100523727039, 2.2110061944944452))
]
BesòsMaresme = [
    ("Rambla de Prim", (41.41499498724369, 2.2141851684040574)),
    ("Carrer de Cristobal Moura", (41.415454202952574, 2.2123012849888704)),
    ("Carrer del Maresme", (41.41413599827972, 2.2134293907213887)),
    ("Carrer Felip de Malla", (41.41620182953476, 2.2167087678508026)),
    ("Carrer de Ferrer Bassa", (41.41705765466376, 2.21689241297005)),
    ("Carrer de Lluis Dalmau", (41.41907420951413, 2.212458695091082)),
    ("Carrer de Bernat Metge", (41.419202086491055, 2.2104123637623276)),
    ("Passatge Foret", (41.417628198484884, 2.2097827233534804))
]
ProvençalsPoblenou = [
    ("Carrer del Perú", (41.41553653158104, 2.205497155372208)),
    ("Carrer de Veneçuela", (41.416831746778136, 2.207479105537505)),
    ("Carrer del Paraguai", (41.416470787761824, 2.206714639045176)),
    ("Carrer d'Espronceda", (41.409845771924914, 2.198532016219876)),
    ("Passatge de Coll", (41.410888374159356, 2.2073149478461325)),
    ("Carrer de l'Agricultura", (41.41202423580486, 2.2093343143868136)),
    ("Carrer de Fluvià", (41.40837884197707, 2.2051664357708725))
]
SantMartíProvençals = [
    ("Rambla de Guipúscoa", ()),
    ("Carrer de Menorca", (41.417442555968215, 2.194011039097861)),
    ("Carrer d'Andrade", (41.41632935156023, 2.2017513256072405)),
    ("Carrer del Concili de Trento", (41.41745709289941, 2.2007939170766355)),
    ("Carrer de Julian Besteiro", (41.415213094768575, 2.1988870038933523)),
    ("Carrer Dr. Zamenhof", (41.417209948123656, 2.194458752639185)),
    ("Carrer de Cantàbria", (41.421471743719444, 2.1990097529392028))
]
VernedaLaPau = [
    ("Carrer de Santander", (41.42695504831585, 2.2012497282530337)),
    ("Carrer de Binèfar", (41.423981400712066, 2.202727451373045)),
    ("Camí de la Verneda", (41.42417594757076, 2.203885321482779)),
    ("Carrer de Ca n'Oliva", (41.42518315695669, 2.2032136928986414)),
    ("Via Trajana", (41.4281759867442, 2.1975571076208333)),
    ("Carrer de Jaume Brossa", (41.42871742038786, 2.1973328125335825)),
    ("Passatge Via Trajana B", (41.42928151017212, 2.2011926060384757)),
    ("Carrer del Cànem", (41.43106918911975, 2.2031294853425103))
]




# En google maps buscas el barrio y haces zoom a carrers random,
# los apuntas y buscas aqui el nombre, te da las coords
# https://developers-dot-devsite-v2-prod.appspot.com/maps/documentation/utils/geocoder#place_id%3DEiVDYXJyZXIgZGVsIFBhcmFkw61zLCBCYXJjZWxvbmEsIFNwYWluIi4qLAoUChIJ4UlcAPmipBIRfdd-PuHIzo8SFAoSCeUwjnEWmKQSEQpmR089-7BE
# empieza por sant marti and work your way up :)
#don't put numero, es inecessario rn creo
# USA LOS ESQUEMAS

tipos = ["Apartamento", "Atico", "Bajo", "Buhardilla", "Casa_Independiente", "Chalet", "Adosado", "Pareado"
    "Duplex", "Estudio", "Loft", "Piso"]

certEn = ["A", "B", "C", "D", "E", "F", "G"]
orient = ["sud", "norte", "este", "oeste", "sudeste", "sudoeste", "noreste", "noroeste"]
bools = ["TRUE", "FALSE"]
i = 0

for d in districtes:
    for b in barris[d]:
        dirs = []
        if b == "el Raval":
            dirs = raval
        elif b == "el Gòtic":
            dirs = gotic
        elif b == "la Barceloneta":
            dirs = barceloneta
        elif b == "Sant Pere, Santa Caterina i la Ribera":
            dirs = stPere
        
        for direc, coords in dirs:
            i += 1
            c1, c2 = coords

            print ("([ubicacionVivienda" + str(i) + "] of Ubicacion\n" + 
            '   (barrio "' + b + '")\n'
            "   (coordX " + str(c1) + ")\n"
            "   (coordY " + str(c1) + ")\n"
            '   (direccion "' + direc + '")\n'
            '   (distrito "' + d + '")\n' +
            ")\n")

            vistas = bools[randrange(len(bools))]
            vistasMar = bools[1]
            vistasMont = bools[1]
            primeraLinea = bools[1]
            if (vistas == "TRUE"):
                vistasMar = bools[randrange(len(bools))]
                if vistasMar == "TRUE":
                    primeraLinea = bools[randrange(len(bools))]

                vistasMont = bools[randrange(len(bools))]
            
            garaje = bools[randrange(len(bools))]
            plazas = 0
            if garaje == "TRUE":
                plazas = randrange(3)

            sH = randrange(150) + 10


            print ("([vivienda" + str(i) + "] of " + tipos[randrange(len(tipos))] + "\n" +
            "   (seEncuentraEn [ubicacionVivienda" + str(i) + "])\n" +
            "   (altura " + str(randrange(200) + 200) + ")\n" +
            "   (amueblado " + bools[randrange(len(bools))] + ")\n" +
            '   (certificadoEnergetico "' + certEn[randrange(len(certEn))] + '"\n' +
            "   (mascota " + bools[randrange(len(bools))] + ")\n" +
            '   (orientacion "' + orient[randrange(len(orient))] + '")\n' +
            "   (precioMensual " + str(randrange(5100) + 100) + ")\n" +
            "   (vistas " + vistas + ")\n" +
            "   (vistasMar " + vistasMar + ")\n" +
            "   (vistasMontaña " + vistasMont + ")\n" +
            "   (balcon " + bools[randrange(len(bools))] + ")\n" +
            "   (cocinaIntegrada " + bools[randrange(len(bools))] + ")\n" +
            "   (sistemaAlarma " + bools[randrange(len(bools))] + ")\n" +
            "   (garaje " + garaje + ")\n" +
            "   (jardin " + bools[randrange(len(bools))] + ")\n" +
            "   (plazasAparcamiento " + str(plazas) + ")\n" +
            "   (sotano " + bools[randrange(len(bools))] + ")\n" +
            "   (aireAcondicionado " + bools[randrange(len(bools))] + ")\n" +
            "   (patio " + bools[randrange(len(bools))] + ")\n" +
            "   (terraza " + bools[randrange(len(bools))] + ")\n" +
            "   (gimnasio " + bools[randrange(len(bools))] + ")\n" +
            "   (primeraLineaDeMar " + primeraLinea + ")\n" +
            "   (obraNueva " + bools[randrange(len(bools))] + ")\n" +
            "   (piscina " + bools[randrange(len(bools))] + ")\n" +
            "   (planta " + str(randrange(6) + 1) + ")\n" +
            "   (superficieHabitable " + str(sH) + ")\n" +
            "   (numDormitorios " + str(sH) + ")\n" +#change
            "   (numDormitoriosSimples " + str(sH) + ")\n" +#change
            "   (numDormitoriosDobles " + str(sH) + ")\n" +#change
            "   (numBanosEnteros " + str(sH) + ")\n" +#change
            "   (numBanosMedios " + str(sH) + ")\n" +#change
            "   (estudio " + bools[randrange(len(bools))] + ")\n" +
            "   (adaptadoMovilidadReducida " + bools[randrange(len(bools))] + ")\n" +
            "   (calefaccion " + bools[randrange(len(bools))] + ")\n" +
            "   (ascensor " + bools[randrange(len(bools))] + ")\n" +
            "   (añoConstruccion " + str(randrange(221) + 1800) + ")\n" +
            ")\n")
            break
        break
    break
