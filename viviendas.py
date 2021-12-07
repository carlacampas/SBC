from random import randrange

districtes = ["Ciutat Vella", "Eixample", "Sants-Montjuïc", "Les Corts", "Sarrià-Sant Gervasi",
                "Gràcia", "Horta-Guinardó", "Nou Barris", "Sant Andreu", "San Martí"]

barris = {
    "Ciutat Vella": ["el Raval", "el Gòtic", "la Barceloneta", "Sant Pere, Santa Caterina i la Ribera"],
    "Eixample": ["el Fort Pienc", "la Sagrada Família", "la Dreta de l'Eixample", "l'Antiga Esquerra de l'Eixample",  
  	 	 	    "la Nova Esquerra de l'Eixample", "Sant Antoni"],
    "Sants-Montjuïc": ["el Poble Sec", "la Marina del Prat Vermell", "la Marina de Port", "la Font de la Guatlla", "Hostafrancs",
  	 	 	    "la Bordeta", "Sants-Badal", "Sants"],
    "Les Corts": ["les Corts", "la Maternitat i Sant Ramon", "Pedralbes"],
    "Sarrià-Sant Gervasi": ["Vallvidrera, el Tibidabo i les Planes", "Sarrià", "les Tres Torres", "Sant Gervasi-Bonanova", 
                "Sant Gervasi-Galvany", "el Putget i Farró"],
    "Gràcia": ["Vallcarca i els Penitents", "el Coll", "la Salut", "Vila de Gràcia", "el Camp d'en Grassot i Gràcia Nova"],
    "Horta-Guinardó": ["enís dels Agudells",  "Montbau", "la Vall d'Hebron", "la Clota", "Horta"],
    "Nou Barris": ["Vilapicina i la Torre Llobeta",  "Porta", "el Turó de la Peira", "Can Peguera", "la Guineueta",
  	 	 	    "Canyelles", "les Roquetes", "Verdun", "la Prosperitat", "la Trinitat Nova", "Torre Baró", "Ciutat Meridiana"  
  	 	 	    "Vallbona"],
    "Sant Andreu": ["a Trinitat Vella", "Baró de Viver", "el Bon Pastor", "Sant Andreu", "la Sagrera", "el Congrés i els Indians", 
                "Navas"],
    "San Martí": ["el Camp de l'Arpa del Clot", "el Clot", "el Parc i la Llacuna del Poblenou", "la Vila Olímpica del Poblenou",
  	 	 	    "el Poblenou",  "Diagonal Mar i el Front Marítim del Poblenou", "el Besòs i el Maresme" , "Provençals del Poblenou"  
  	 	 	    "Sant Martí de Provençals", "la Verneda i la Pau"],
}

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

barceloneta = [##x
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

pobleSec = [##x
    ("Carrer de Pierre de Coubertin", (41.363237,2.147875)),
    ("Carrer del Polvorí", (41.365815,2.14475)),
    ("Cami de la Foixarda", (41.366934,2.14733)),
    ("Plaça de Carles Buïgas", (41.366934,2.14733)),
    ("Carrer de l'Olivera", (41.373606,2.1567)),
    ("Passatge de Prunera", (41.3743,2.155886 )),
    ("Carrer d'Elkano", (41.373284,2.162742)),
    ("Carrer de Piquer", (41.373011,2.169998)),
    ("Plaça del Sortidor", (41.372296,2.162612)),
    ("Passeig de l'Exposició", (41.371464,2.16246)),
    ("Carrer Santíssima Trinitat", (41.356671,2.153848)),
    ("Carrer de Sant Francesc", (41.398701,2.205705)),
    ("Carretera de Miramar", (41.367673,2.172466)),
    ("Carrer dels Tarongers", (41.366924,2.165627)),
]

marinaPratVermell = [##x
    ("Carrer D", (41.330433,2.129105)),
    ("Carrer Transversal 4", (41.331032,2.116739)),
    ("Carrer Major", (41.331438,2.115637)),
    ("Carrer A", (41.335459,2.14015)),
    ("Carrer Número 2", (41.343124,2.140124)),
    ("Avinguda Número 4", (41.340455,2.131133)),
]

marinaPort = [
    ("Carrer del Temple", (41.357186,2.135723)),
    ("Carrer de la Mare de Déu de Port", (41.356887,2.145787)),
    ("Carrer Negrell", (41.356677,2.14548)),
    ("Carrer de Can Clos", (41.361199,2.147033)),
    ("Carrer de Fortuna", (41.364618,2.141715)),
    ("Carrer dels Ferrocarils Catalans", (41.359724,2.144055)),
    ("Carrer de la Mecànica", (41.35886,2.137355)),
    ("Carrer de Gernika", (41.360383,2.136713)),
]

fontGuatlla = [
    ("Carrer de Trajà", (41.368356,2.141924)),
    ("Carrer de la Dàlia", (41.369623,2.146648)),
    ("Carrer de Valls", (41.370703,2.147622)),
    ("Carrer de Sant Ferriol", (1.372611,2.147445)),
    ("Carrer Pas de Valls", (41.370182,2.145883)),
    ("Carrer del Gesamí", (41.370182,2.145883)),
    ("Carrer de Chopin", (41.370587,2.14676)),
]

hostafrancs = [
    ("Carrer de la Torre d'En Damians", (41.375855,2.144307)),
    ("Carrer del Consell de Cent", (41.391541,2.166303)),
    ("Carrer del Príncep Jordi", (41.376124,2.147341)),
    ("Carrer de Leiva", (41.373773,2.144179)),
    ("Carrer del Priorat", (41.374746,2.139342 )),
    ("Carrer de Miquel Bleach", (41.375838,2.142178)),
    ("Carrer de l'Elisi", (41.37839,2.144058)),
    ("Carrer de l'Autonomia", (41.376823,2.138198)),
]

bordeta = [
    ("Passatge d'Analusia", (41.370333,2.133543)),
    ("Carrer d'Olzinelles", (41.372552,2.136766 )),
    ("Carrer de Juan Bravo", (41.371474,2.138334)),
    ("Carrer del Corral", (41.370055,2.140468)),
    ("Avinguda del Carrilet", (41.36588,2.13398)),
    ("Carrer de Juan Gris", (41.365415,2.132969)),
    ("Carrer de Parcerisa", (41.367944,2.134902)),
    ("Carrer de la Constitució", (41.369646,2.134891)),
    ("Carrer de Mossèn Amadeu Oller", (41.368988,2.138228))
]

santsBadal = [
    ("Carrer de Fisas", (41.377111,2.127588)),
    ("Carrer de Bassegoda", (41.374799,2.125023)),
    ("Carrer d'Esteràs", (41.371077,2.129799)),
    ("Carrer Daoiz i Velarde", (41.374303,2.133109)),
    ("Carrer de les Ànimes", (41.376454,2.128741)),
    ("Carrer de Ventura Plaja", (41.374769,2.126467)),
    ("Carrer de Bacardí", (41.373097,2.129179)),
]

sants = [
    ("Carrer de Valladolid", (41.377632,2.136053)),
    ("Carrer de Robrenyo", (41.382369,2.139779)),
    ("Carrer de Guitard", (41.382542,2.137557)),
    ("Carrer de Virat", (41.379979,2.139285)),
    ("Carrer de Sagunt", (41.371743,2.135016)),
    ("Carrer de Pavia", (41.372593,2.131115)),
    ("Riera d'Escuder", (41.375493,2.132254)),
    ("Carrer de Cros", (41.374529,2.138048)),
]

corts = [
    ("Carrer dels Cavallers", (41.390976,2.112095)),
    ("Carrer de Manuel Ballbè", (41.384878,2.108344)),
    ("Avinguda Diagonal 640", (41.39124,2.135599 )),
    ("Avinguda Diagonal 673", (41.383014,2.109582)),
    ("Carrer de Fígols", (41.381838,2.130539)),
    ("Carrer de Caballero", (41.383331,2.137054)),
    ("Carrer de Déu i Mata", (41.388453,2.13574)),
    ("Gran Via de Carles III", (41.385706,2.127368)),
    ("Carrer de Menéndez y Pelayo", (41.384522,2.121742)),
    ("Carrer del Gran Capità", (41.387831,2.109766)),
    ("Avinguda de Xile", (41.379314,2.113392)),
]    

maternitatSantRamon = [
    ("Carrer de la Torre Melina", (41.382735,2.109071)),
    ("Carrer de Carles Ferre Salat", (41.378972,2.105705)),
    ("Carrer Pintor Ribalta", (41.378633,2.114826)),
    ("Carrer del General Batet", (41.378881,2.108805)),
    ("Carrer de Pascual i Vila", (41.383882,2.116639)),
    ("Carrer del Pintor Tapiró", (41.377752,2.11874)),
    ("Carrer del Pisuegra", (41.377075,2.112805)),
]

pedralbes = [
    ("Avinguda Mare de Déu de Lorda", (41.396956,2.108165)),
    ("Passatge Pearson", (41.394882,2.104148)),
    ("Carrer de l'Abadessa Olzet", (41.392713,2.111627)),
    ("Carrer del Torrent de les Roses", (41.389418,2.104573)),
    ("Carrer Santa Maria Cervelló", (41.387734,2.112103)),
    ("Carrer de Miret i Sants", (41.392739,2.109294)),
    ("Carrer del Castell d'Olorda", (41.38996,2.105227)),
    ("Carrer del Marquès de Mulhacen", (41.39222,2.117558)),
    ("Carrer de Sant Pere de Romanies", (41.389351,2.104797)),
    ("Carrer del Doctor Joaquín Albarrán", (41.390897,2.106827)),
    ("Carrer de Beltràn i Rózpide", (41.389271,2.121981)),
]

vallvidrera = [
    ("Carrer de Can Llavallol", (41.411888,2.092929)),
    ("Carrer Ginestra", (41.391806,2.075093)),
    ("Carrer de Marco Polo", (41.428252,2.095075)),
    ("Carrer de Baladre", (41.427845,2.093266)),
    ("Passeig Solé i Pla", (41.427333,2.08931)),
    ("Carrer Camí de Can Balasch", (41.425813,2.080653)),
    ("Camí de Salze", (41.423845,2.107737)),
]

sarria = [
    ("Carrer de Carroç", (41.408229,2.107348)),
    ("Carrer de Montclar", (41.409744,2.113215)),
    ("Carrer de Plantada", (41.407897,2.119566)),
    ("Carrer Pins de Can Caralleu", (41.403578,2.10868)),
    ("Carrer Major de Sarrià", (41.399987,2.121501)),
    ("Passeig de Jorba", (41.407761,2.118338)),
    ("Carrer de Dolors Monserdà", (41.401694,2.121823)),
    ("Carrer del Clos de Sant Francesc", (41.398827,2.121113)),
    ("Carrer d'Enric Giménez", (41.396395,2.11856)),
    ("Carrer del Pedró de la Creu", (41.397486,2.121766 )),
    ("Carrer del Cardenal Vives i Tutó", (41.394256,2.120887)),
    ("Carrer de Francesc Carbonell", (41.392777,2.125487)),
    ("Passatge del Roserar", (41.391825,2.121)),
]

tresTorres = [
    ("Carrer de Doctor Caraulla", (41.399651,2.128817)),
    ("Carrer de Calatrava", (41.399059,2.130725)),
    ("Passatge de Ricard Zamora", (41.392717,2.133503)),
    ("Carrer de Buïgas", (41.393983,2.131565 )),
    ("Carrer de Gósol", (41.396396,2.12795)),
    ("Carrer del Doctor Roux", (41.397967,2.129979)),
    ("Carrer del Rosari", (41.396857,2.130438)),
]

santGervasiBonanova = [
    ("Plaça del Doctor Andreu", (41.415763,2.129751)),
    ("Avinguda del Tibidabo", (41.413632,2.13453)),
    ("Carrer Josep Maria Lladó", (41.410757,2.124976)),
    ("Carrer de Planella", (41.406307,2.125281)),
    ("Carrer de Quatre Camins", (41.510808,2.38777)),
    ("Carrer de Garcia Mariño", (41.412885,2.137905)),
    ("Carrer de Torras i Pujat", (41.401968,2.133832)),
    ("Carrer de Sant Màrius", (41.40391,2.137619)),
]

santGervasiGalvany = [
    ("Carrer de Brusi", (41.400834,2.145919)),
    ("Carrer de Copèrnic", (41.400533,2.139721)),
    ("Carrer de Jacinto Benavente", (41.395313,2.137274)),
    ("Carrer de Beethoven", (41.392559,2.141662)),
    ("Carrer de Laforja", (41.398065,2.148039)),
    ("Carrer de Madrazo", (41.548481,2.088284)),
    ("Carrer de Tuset", (41.395682,2.152345)),
    ("Carrer de Muntaner", (41.394687,2.14876))
]

pugetFarro = [
    ("Carrer de Claudi Sabadell", (41.411229,2.142947)),
    ("Carrer de Lucà", (41.410824,2.139539)),
    ("Carrer de Castanyer", (41.407149,2.137973)),
    ("Plaça Mañé i Flaquer", (41.40381,2.148395)),
    ("Carrer de Sant Hermeneglid", (41.403535,2.144973)),
    ("Carrer d'Escipió", (41.407418,2.14581)),
    ("Carrer de Berna", (41.406291,2.146088)),
]

vallcarca = [
    ("Carrer de Salvador Alarma", (41.419006,2.133942)),
    ("Carrer de Trullols", (41.420628,2.137203)),
    ("Carrer de la Rosella", (41.418465,2.1372)),
    ("Carrer de Palou", (41.419189,2.142652)),
    ("Carrer de Cardedeu", (41.417426,2.144045)),
    ("Carrer de Ticià", (41.417221,2.138204)),
    ("Viaducte de Vallcarca", (41.412526,2.143921)),
    ("Passeig de Turull", (41.413929,2.148211)),
]

coll = [
    ("Carrer Taradell", (41.420606,2.146755)),
    ("Carrer de Móra la Nova", (41.41917,2.150811)),
    ("Carrer de Móra d'Ebre", (41.41707,2.148403)),
    ("Carrer de Rubens", (41.414974,2.146243)),
    ("Carrer de Pau Ferran", (41.41711,2.150566)),
    ("Carrer del Beat Almatò", (41.417678,2.148281)),
]

salut = [
    ("Rambla de Mercedes", (41.412097,2.153574)),
    ("Carrer de Maignon", (41.409448,2.152323)),
    ("Avinguda del Santuari de Sant Josep de la Muntanya", (41.411093,2.153677)),
    ("Carrer de Molist", (41.41285,2.156281)),
    ("Riera de Can Toda", (41.413607,2.158277)),
    ("Carrer de sant Josep Cottolengo", (41.414174,2.156157)),
]

vilaGracia = [
    ("Carrer de Verntallat", (41.406737,2.155339)),
    ("Carrer de Rabassa", (41.408227,2.157446)),
    ("Carrer de Vallfogona", (41.403208,2.157598)),
    ("Carrer de Santa Eugènia", (41.400383,2.154849)),
    ("Carrer Gran de Gràcia", (41.40158,2.153448)),
    ("Carrer de Martínez de la Rosa", (41.400404,2.158439)),
    ("Carrer de Siracusa", (41.401301,2.160107)),
]

campGrassot = [
    ("Carrer de Roger de Flor", (41.397204,2.174777)),
    ("Carrer de Nàpols", (41.398399,2.175436)),
    ("Carrer de Sicília", (41.40081,2.174518 )),
    ("Carrer de la Legalitat", (41.408558,2.161601)),
    ("Carrer de Martí", (41.408337,2.158101)),
    ("Carrer de Balcells", (41.41049,2.159882)),
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

f = open ("instances.clp", "w")

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
        elif b == "el Fort Pienc":
            dirs = fortPienc
        elif b == "la Sagrada Família":
            dirs = sagradaFamilia
        elif b == "la Dreta de l'Eixample":
            dirs = dretaEixample
        elif b == "l'Antiga Esquerra de l'Eixample":
            dirs = antigaEsquerraEixample
        elif b == "la Nova Esquerra de l'Eixample":
            dirs = novaEsquerraEixample
        elif b == "Sant Antoni":
            dirs = santAntoni
        elif b == "el Poble Sec":
            dirs = pobleSec
        elif b == "la Marina del Prat Vermell":
            dirs = marinaPratVermell
        elif b == "la Marina de Port":
            dirs = marinaPort
        elif b == "la Font de la Guatlla":
            dirs = fontGuatlla
        elif b == "Hostafrancs":
            dirs = hostafrancs
        elif b == "la Bordeta":
            dirs = bordeta
        elif b == "Sants-Badal":
            dirs = santsBadal
        elif b == "Sants":
            dirs = sants
        elif b == "les Corts":
            dirs = corts
        elif b == "la Maternitat i Sant Ramon":
            dirs = maternitatSantRamon
        elif b ==  "Pedralbes":
            dirs = pedralbes
        elif b == "Vallvidrera, el Tibidabo i les Planes": 
            dirs = vallvidrera
        elif b == "Sarrià": 
            dirs = sarria
        elif b == "les Tres Torres": 
            dirs = tresTorres
        elif b == "Sant Gervasi-Bonanova":
            dirs = santGervasiBonanova
        elif b == "Sant Gervasi-Galvany":
            dirs = santGervasiGalvany
        elif b == "el Putget i Farró":
            dirs = pugetFarro
        elif b == "Vallcarca i els Penitents":
            dirs = vallcarca
        elif b == "el Coll":
            dirs = coll
        elif b == "la Salut":
            dirs = salut
        elif b == "Vila de Gràcia":
            dirs = vilaGracia
        elif b == "el Camp d'en Grassot i Gràcia Nova":
            dirs = campGrassot

        for direc, coords in dirs:
            i += 1
            c1, c2 = coords

            ub = ("([ubicacionVivienda" + str(i) + "] of Ubicacion\n" + 
            '   (barrio "' + b + '")\n'
            "   (coordX " + str(c1) + ")\n"
            "   (coordY " + str(c1) + ")\n"
            '   (direccion "' + direc + '")\n'
            '   (distrito "' + d + '")\n' +
            ")\n")

            f.write(ub)

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


            viv = ("([vivienda" + str(i) + "] of " + tipos[randrange(len(tipos))] + "\n" +
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

            f.write(viv)
