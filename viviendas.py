# -*- coding: latin-1 -*-

from random import randrange
import math

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
    "Horta-Guinardó": ["Sant Genís dels Agudells",  "Montbau", "la Vall d'Hebron", "la Clota", "Horta"],
    "Nou Barris": ["Vilapicina i la Torre Llobeta",  "Porta", "el Turó de la Peira", "Can Peguera", "la Guineueta",
  	 	 	    "Canyelles", "les Roquetes", "Verdun", "la Prosperitat", "la Trinitat Nova", "Torre Baró", "Ciutat Meridiana"
  	 	 	    "Vallbona"],
    "Sant Andreu": ["La Trinitat Vella", "Baró de Viver", "el Bon Pastor", "Sant Andreu", "la Sagrera", "el Congrés i els Indians",
                "Navas"],
    "San Martí": ["el Camp de l'Arpa del Clot", "el Clot", "el Parc i la Llacuna del Poblenou", "la Vila Olímpica del Poblenou",
  	 	 	    "el Poblenou",  "Diagonal Mar i el Front Marítim del Poblenou", "el Besòs i el Maresme" , "Provençals del Poblenou"
  	 	 	    "Sant Martí de Provençals", "la Verneda i la Pau"],
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

genisAgudells = [
    ("Carrer de Cànoves", (41.427536,2.132067)),
    ("Camí de Can Borni", (41.421694,2.124605)),
    ("Carrer del Lledoner", (41.425312,2.137886)),
    ("Carrer d'Olvan", (41.429672,2.133092)),
    ("Carrer de Natzaret", (41.425041,2.13738)),
    ("Carrer Mont Tabor", (41.423133,2.141052)),
    ("Carrer de Naïm", (41.425991,2.138445)),
]

montbau = [
    ("Carrer de l'Harmonia", (41.433924,2.142234)),
    ("Carrer de Roig i Solé", (41.430854,2.140946)),
    ("Carrer Groc de Montbau", (41.432366,2.140532)),
    ("Camí de Sant Cebrià", (41.436887,2.137049)),
    ("Carrer d'Hipàtia d'Alexandria", (41.435348,2.143828)),
]

vallHebron = [
    ("Carrer de la Granja Vella", (41.426693,2.146674)),
    ("Carrer de Jorge Manrique", (41.431498,2.14938)),
    ("Carrer de Berruguete", (41.433024,2.149644)),
    ("Carrer del Pare Mariana", (41.430276,2.147896)),
    ("Carrer de la Maternitat d'Elna", (41.435141,2.152591)),
    ("Carrer de les Basses d'Horta", (41.425438,2.144874)),
]

clota = [
    ("Camí de Sant Genís a Horta", (41.42924,2.15239)),
    ("Carrer d'Alarcón", (41.427851,2.153187)),
    ("Carrer de la Puríssima", (41.427408,2.151346)),
    ("Riera de Marcel.li", (41.42975,2.153378)),
    ("Carrer Juan de Ávila", (41.429578,2.154876)),
    ("Passatge Feliu", (41.428183,2.15263)),
]

horta = [
    ("Cami de Cal Notari", (41.440573,2.150862)),
    ("Carrer de Rivero", (41.431008,2.157703)),
    ("Carrer de Campoamor", (41.434154,2.155935)),
    ("Passeig de Valldaura", (41.438802,2.170545)),
    ("Carrer de Coïmbra", (41.43248,2.15539)),
    ("Carrer del Congrés", (41.436564,2.161674)),
    ("Camí Antic de Sant Llàzter", (41.441141,2.15938)),
]

#NOU BARRIS
vilapicinaTorreLlobeta = [
    ("Carrer de Santa Fe", (41.42775519047973, 2.1748758757814044)),
    ("Carrer de Ramon Albo", (41.42527513355095, 2.1769399992214176)),
    ("Carrer de l'Escultor Llimona", (41.42790714575524, 2.1676141567008655)),
    ("Carrer d'Espiell", (41.42975072521537, 2.1676504941333596)),
    ("Carrer de Santa Matilde", (41.428960626142754, 2.1708724131477974)),
    ("Carrer de Pontons", (41.42694446769542, 2.1729920967099274)),
    ("Carrer del Greco", (41.427353153521004, 2.1712721249052276)),
    ("Carrer de Serrano", (41.42883348286507, 2.1727982970699617))
]

porta = [
    ("Carrer Nou de Porta", (41.432096478375456, 2.174861164510074)),
    ("Carrer de Valldemossa", (41.43437889560855, 2.176905424584772)),
    ("Carrer de la Maladeta", (41.43319910541633, 2.1748905783240984)),
    ("Carrer de la Selva", (41.437146356677616, 2.176317148304283)),
    ("Carrer de Deià", (41.43275805684743, 2.1773319248881258)),
    ("Carrer Torrent de Can Piquer", (41.43216263652605, 2.17915558135764)),
    ("Carrer d'Alella", (41.431512078450154, 2.1794497194978844)),
    ("Carrer de Vèlia", (41.431600290096746, 2.1808615825710564))
]

turoPeira = [
    ("Passeig de la Peira", (41.43511688794346, 2.17994472190034)),
    ("Carrer de Travau", (41.43166284786402, 2.166742680050793)),
    ("Carrer de la Vall d'Ordesa", (41.43128027194441, 2.1650241091631135)),
    ("Carrer del Cadí", (41.43181869901246, 2.1691571080043395)),
    ("Carrer d'Aneto", (41.432642813422284, 2.1705201182192972)),
    ("Carrer de Rossario Pi", (41.430686898174024, 2.1720296887882995)),
    ("Carrer d'Inca", (41.43207142854497, 2.1720296887882995)),
    ("Carrer de Peñalara", (41.43145059119708, 2.1703955421327317))
]

canPeguera = [
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

canyelles = [
    ("Carrer de Frederico García Lorca", (41.44355268902948, 2.1649934094268146)),
    ("cCarrer de Miguel Hernández", (41.44294749388016, 2.164971951755831)),
    ("Carrer d'Antonio Machado", (41.44242070812555, 2.1654279272642354)),
    ("Ronda de la Guineueta Vella", (41.44368803298446, 2.163323116049017)),
    ("Carretera Alta de les Roquetes", (41.443809301182846, 2.1632900255171257)),
    ("Carrer de Carles Soldevila", (41.44121480031166, 2.1642196268429106)),
    ("Carrer de Can Rius", (41.44793313763447, 2.159688851025298)),
    ("Camí de Sant Llàtzer", (41.448515550732374, 2.159623319839428))
]

lesRoquetes = [
    ("Via Favència", (41.444662784607964, 2.1741849442925023)),
    ("Carrer de Vidal i Guasch", (41.44712629067263, 2.174697289993072)),
    ("Carrer de les Torres", (41.44673756874444, 2.1738038090762246)),
    ("Carrer de l'Artesania", (41.44739324293709, 2.173129012299865)),
    ("Carrer de Garigliano", (41.44606783754998, 2.172735380846988)),
    ("Carrer de Simancas", (41.445482402521684, 2.173597621172337)),
    ("Carrer de Joaquim Puig i Pidemunt", (41.4446440503632, 2.173160252891363)),
    ("Carrer dels Nou Barris", (41.448037726886575, 2.1789696314041573))
]

verdun = [
    ("Carrer de Ponce de León", (41.44138185385765, 2.1735281922078733)),
    ("Carrer de Góngora", (41.442247369750746, 2.1733330496514793)),
    ("Carrer de Marin", (41.44366142721787, 2.1742274530349524)),
    ("Carrer d'Almansa", (41.4435578119842, 2.174804749764285)),
    ("Carrer de Batllori", (41.44441110897942, 2.175739807847006)),
    ("Carrer d'Almagro", (41.443295725654586, 2.1731785617943338)),
    ("Carrer de Viladrosa", (41.44500114707907, 2.1780083422664704)),
    ("Carrer de Joaquim Valls", (41.44455156223761, 2.1784987628255714))
]

laProsperitat = [
    ("Carrer desl Artijos", (41.44237593721185, 2.182169636226804)),
    ("Carrer d'en Tissó", (41.44281064935195, 2.184583682558789)),
    ("Carrer del Vinyar", (41.4426387867609, 2.1834238614160477)),
    ("Carrer de Borràs", (41.44039442173074, 2.177449433901694)),
    ("Carrer del Pou", (41.444589905897764, 2.18192688296437)),
    ("Carrer del Molí", (41.443750830764486, 2.1805243085591943)),
    ("Via Júlia", (41.44507514921584, 2.179283569662308)),
    ("Carrer de la Florida", (41.44505493081669, 2.1857839625786033))
]

laTrinitatNova = [
    ("Carrer d'Aiguablava", (41.4497428964421, 2.1836223080689408)),
    ("Carrer de la Pedrosa", (41.44899120238111, 2.1833496825396117)),
    ("Carrer del Tamariu", (41.44990345132633, 2.1849075427072044)),
    ("Passeig del Bosc de Roquetes", (41.44994723895305, 2.181470513712453)),
    ("Carrer de Platja d'Aro", (41.44879415492434, 2.1865335592571293)),
    ("Carrer d'Empúries", (41.44738561308233, 2.1820741845273948)),
    ("Camí de les Quatre Estacions", (41.451968735582746, 2.182570752456814)),
    ("Carrer de sa Tuna", (41.45218036875746, 2.1870593373601173))
]

torreBaro = [
    ("Carrer de Sant Quirze Safaja", (41.45636520627233, 2.17648075069744)),
    ("Carrer de Castellfollit", (41.455358157148645, 2.1745382439016394)),
    ("Carrer de Castelldefels", (41.45547856601904, 2.178277204350699)),
    ("Carrer d'Avinyonet", (41.45371619570124, 2.1788176009781024)),
    ("Avinguda Escolapi Càncer", (41.457810075530546, 2.1793433922912517)),
    ("Torrent Font d'en Mangues", (41.45663885822383, 2.178218783093683)),
    ("Carrer de Viladecavalls", (41.45421973496383, 2.18191392759998)),
    ("Calle Pruit", (41.45222744806295, 2.1764077241261695))
]

ciutatMeridiana = [
    ("Carrer de la CircumVal·lació", (41.46016938862895, 2.1684036906794306)),
    ("Carrer de Perafita", (41.45946613900944, 2.1696524451513435)),
    ("Avinguda dels Rasos de Peguera", (41.46001615200757, 2.169232542331841)),
    ("Carrer de les Agudes", (41.46355350199004, 2.1767322808056755)),
    ("Carrer del Brull", (41.459295795670684, 2.174033163994418)),
    ("Carrer de Vallcivera", (41.461263508217755, 2.179442251304386)),
    ("Avinguda de Vallbona", (41.461789039429966, 2.179271429414479)),
    ("Carrer del Pedraforca", (41.46285169203292, 2.176426865391702))
]

vallbona = [
    ("Carrer d'Orpí", (41.46239770479904, 2.1834407639625186)),
    ("Carrer Pierola", (41.46312763735139, 2.182282445511438)),
    ("Carrer de la Torre Vella", (41.46297639074064, 2.185239667617606)),
    ("Carrer l'Alzinar", (41.46204917554703, 2.1828177290380735)),
    ("Carrer d'Oristà", (41.46501490235058, 2.1857135251657747)),
    ("Passeig de la Pineda", (41.465389718477965, 2.180887198286273)),
    ("Avinguda de Jorba", (41.4643704765755, 2.1811329022001384)),
    ("Torrent de Tapioles", (41.46440993139884, 2.180632719232627))

]

#SANT ANDREU
trinitatVella = [
    ("Via de Bàrcino", (41.45159938884375, 2.193061628192612)),
    ("Carrer de Peníscola", (41.45330256545399, 2.190185987023822)),
    ("Carrer de Mireia", (41.45263973657283, 2.1898697250622847)),
    ("Carrer de la Foradada", (41.452911892297216, 2.1928507868849203)),
    ("Carrer del Pare Pérez del Pulgar", (41.45404878853992, 2.192610662062272)),
    ("Carrer del Torrent de la Perera", (41.45441864698045, 2.1928674448640812)),
    ("Carrer de Vicenç Montal", (41.453694694504, 2.1935911634684317)),
    ("Carrer Mossèn Epifani Lorda", (41.453318498486205, 2.1936582825325455))
]

baroDeViver = [
    ("Carrer de Ferran Junoy", (41.446232385890596, 2.1979816546780717)),
    ("Carrer de la Ciutat Asuncion", (41.44581353204932, 2.198853697885187)),
    ("Carrer de Clariana", (41.44691143106998, 2.199505613680798)),
    ("Carrer de Tiana", (41.44821873168408, 2.200555452104899)),
    ("Carrer de Tucuman", (41.44486792782884, 2.19852350676793)),
    ("Carrer Vilella", (41.4471398932709, 2.2024434679804994)),
    ("Carrer de Campins", (41.447030801975295, 2.198560723727463)),
    ("Carrer de Clarà", (41.447018691011, 2.1991931649397847))
]

bonPastor = [
    ("Carrer de Sas", (41.43739584468657, 2.2042710209053284)),
    ("Carrer de la Costa Brava", (41.43648975453177, 2.201948824440046)),
    ("Carrer d'Alferràs", (41.43732457962708, 2.20493644562345)),
    ("Carrer d'Ardèvol", (41.43729403743478, 2.2054932295712666)),
    ("Carrer de Biosca", (41.437693406925966, 2.20666361473621)),
    ("Carrer de Sentís", (41.437684294969955, 2.208110003410379)),
    ("Carrer de Claramunt", (41.43696444640238, 2.205715561655663)),
    ("Carrer del Foc Follet", (41.43466816723955, 2.2066514602095366))
]

santAndreu = [
    ("Carrer d'Agustí i Milà", (41.43816125494957, 2.187744270722915)),
    ("Carrer Gran de Sant Andreu", (41.43607636836907, 2.1898698688800966)),
    ("Plaça de l'Estació", (41.43808114627561, 2.1970218761064366)),
    ("Carrer de Sant Hipòlit", (41.4376001408188, 2.1873360101024737)),
    ("Carrer de Cabrera", (41.43595077725714, 2.1857256487662866)),
    ("Carrer de Renart", (41.43432684176695, 2.185044307498968)),
    ("Carrer de Malalts", (41.43603944488508, 2.190521882227939)),
    ("Carrer d'Otger", (41.434400503064275, 2.1904236297665913))
]

laSagrera = [
    ("Carrer de Gran de la Sagrera", (41.426674219079324, 2.190919583763958)),
    ("Carrer de Vallès i Ribot", (41.4240841557037, 2.18878190916361)),
    ("Carrer de Sant Antoni Maria Claret", (41.42144091074637, 2.1881306970337024)),
    ("Carrer de la Indústria", (41.420963204395406, 2.1896171595041434)),
    ("Carrer del Pont del Treball Digne", (41.42398861860352, 2.193765097635945)),
    ("Carrer d'Olesa", (41.424551223947965, 2.1859505520770552)),
    ("Carrer del Camp de Ferro", (41.42495459836433, 2.193623529781618)),
    ("Carrer de Berenguer de Palou", (41.4217806109025, 2.1917689908899245))
]

congresIndians = [
    ("Carrer de la Manigua", (41.4236459180217, 2.179542059499514)),
    ("Carrer de l'Espiga", (41.426456851420575, 2.180028215317481)),
    ("Carrer de Felip Bertran i Güell", (41.424690918999744, 2.183647375295679)),
    ("Carrer de Can Ros", (41.426926678562864, 2.182361763243722)),
    ("Carrer de Cienfuegos", (41.42412386629235, 2.1836581787583005)),
    ("Carrer de Garcilaso", (41.4237188256124, 2.178418499386879)),
    ("Carrer de Pinar del Rio", (41.422422678458446, 2.1817783762621614)),
    ("Carrer de la concepción Arenal", (41.427347900006964, 2.184284779590347))
]

navas = [
    ("Passeig de Maragall", (41.41843848009786, 2.180545099292707)),
    ("Carrer de Felip II", (41.41976906622367, 2.1877753709075534)),
    ("Carrer de Palència", (41.41670958251463, 2.1884633934005775)),
    ("Carrer de Bofanrull", (41.41795873824291, 2.1887772282219573)),
    ("Carrer de Sant Antoni Maria Claret", (41.42020353743036, 2.1863631142113453)),
    ("Passatge de la Companyia", (41.42061990294265, 2.1834058245483465)),
    ("Carrer d'Espronceda", (41.416655270851024, 2.1897308032561487)),
    ("Carrer de Josep Estivill", (41.41833891130465, 2.1884392522604714))
]

# SANT MARTÍ
campDelArpaDelClot = [
    ("Carrer del Ripollès", (41.412812969875006, 2.1841558230430245)),
    ("Carrer del Pistó", (41.411818647487785, 2.1840169278120576)),
    ("Carrer de Trinxant", (41.4165096451409, 2.1829858891921248)),
    ("Carrer del Degà Bahí", (41.4126769894202, 2.1849819956370027)),
    ("Carrer de Mallorca", (41.40977124079926, 2.1838635013352747)),
    ("Carrer de la Independència", (41.40929285521374, 2.181391112817716)),
    ("Carrer de Xifré", (41.41030196704949, 2.1815900107533754)),
    ("Carrer de la Muntanya", (41.41085477827752, 2.188469539736483))
]

elClot = [
    ("Carrer de Valencia", (41.412260753055634, 2.1894425451210124)),
    ("Carrer de Bilbao", (41.40913659067683, 2.1950231186443476)),
    ("Carrer de Bolivia", (41.40588099322612, 2.195023118659365)),
    ("Carrer de Lope Vega", (41.41212074272617, 2.1933236578606965)),
    ("Carrer del Ter", (41.410421825824336, 2.188149160231065)),
    ("Carrer del Coronel Sanfeliu", (41.40675826086388, 2.188969707387722)),
    ("Carrer d'Hernán Cortés", (41.40635986104546, 2.1886888952861634)),
    ("Carrer del Clot", (41.407864632269764, 2.18828290186044))
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

vilaOlimpicaPoblenou = [
    ("Avinguda d'Icària", (41.39150737983844, 2.1971473869821043)),
    ("Carrer de Joan Miró", (41.3892758597104, 2.1963456717261582)),
    ("Carrer de ka Marina", (41.39159454706534, 2.19111709390079)),
    ("Carrer de Rosa Sensat", (41.39239647982617, 2.194591193343224)),
    ("Carrer del Dr. Trueta", (41.39018855132305, 2.192215155821752)),
    ("Carrer de Ramon Turó", (41.39078968461476, 2.190760946239673)),
    ("Carrer de Sardenya", (41.390570772610815, 2.1903008038672955)),
    ("Carrer de Zamora", (41.394311896940025, 2.1920206896165255))
]

poblenou = [
    ("Passatge de Bori", (41.39808506725039, 2.2018218678139436)),
    ("Carrer del Taulat", (41.396655449342425, 2.2022791196917395)),
    ("Rambla del Poblenou", (41.39920609695088, 2.203790863341082)),
    ("Carrer de Marià Aguiló", (41.400046557416964, 2.205085828492953)),
    ("Carrer del Joncar", (41.40138520866695, 2.204893768642047)),
    ("Carrer de Llull", (41.4018330197824, 2.203239673526311)),
    ("Passatge de Colomer", (41.40355933601422, 2.204267755874785)),
    ("Passatge de Rovira", (41.40446752454077, 2.203083679620419))
]

diagonalMarFrontMaritimPoblenou = [
    ("Carrer de Provençals", (41.40791843995019, 2.2079941611412357)),
    ("Carrer de Pujades", (41.406289701156915, 2.206779730032781)),
    ("Carrer de Fluvià", (41.405321723889884, 2.209143175133192)),
    ("Passatge de Maria Llimona", (41.4052075149472, 2.2088516259974647)),
    ("Carrer dels Pellaires", (41.404385396180736, 2.2100024513256797)),
    ("Carrer dels Ferrers", (41.405327570449316, 2.210487778213105)),
    ("Carrer de la Selva de Mar", (41.404159832649704, 2.215247405938325)),
    ("Carrer del Treball", (41.4100523727039, 2.2110061944944452))
]

besosMaresme = [
    ("Rambla de Prim", (41.41499498724369, 2.2141851684040574)),
    ("Carrer de Cristobal Moura", (41.415454202952574, 2.2123012849888704)),
    ("Carrer del Maresme", (41.41413599827972, 2.2134293907213887)),
    ("Carrer Felip de Malla", (41.41620182953476, 2.2167087678508026)),
    ("Carrer de Ferrer Bassa", (41.41705765466376, 2.21689241297005)),
    ("Carrer de Lluis Dalmau", (41.41907420951413, 2.212458695091082)),
    ("Carrer de Bernat Metge", (41.419202086491055, 2.2104123637623276)),
    ("Passatge Foret", (41.417628198484884, 2.2097827233534804))
]

provencalsPoblenou = [
    ("Carrer del Perú", (41.41553653158104, 2.205497155372208)),
    ("Carrer de Veneçuela", (41.416831746778136, 2.207479105537505)),
    ("Carrer del Paraguai", (41.416470787761824, 2.206714639045176)),
    ("Carrer d'Espronceda", (41.409845771924914, 2.198532016219876)),
    ("Passatge de Coll", (41.410888374159356, 2.2073149478461325)),
    ("Carrer de l'Agricultura", (41.41202423580486, 2.2093343143868136)),
    ("Carrer de Fluvià", (41.40837884197707, 2.2051664357708725))
]

santMartiProvencals = [
    ("Rambla de Guipúscoa", (41.420053,2.202257)),
    ("Carrer de Menorca", (41.417442555968215, 2.194011039097861)),
    ("Carrer d'Andrade", (41.41632935156023, 2.2017513256072405)),
    ("Carrer del Concili de Trento", (41.41745709289941, 2.2007939170766355)),
    ("Carrer de Julian Besteiro", (41.415213094768575, 2.1988870038933523)),
    ("Carrer Dr. Zamenhof", (41.417209948123656, 2.194458752639185)),
    ("Carrer de Cantàbria", (41.421471743719444, 2.1990097529392028))
]

vernedaLaPau = [
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

tipos = ["Apartamento", "Atico", "Bajo", "Buhardilla", "Casa_Independiente", "Chalet", "Adosado", "Pareado",
    "Duplex", "Estudio", "Loft", "Piso"]

certEn = ["A", "B", "C", "D", "E", "F", "G"]
orient = ["sud", "norte", "este", "oeste", "sudeste", "sudoeste", "noreste", "noroeste"]
bools = ["TRUE", "FALSE"]
i = 0

f = open ("instances.clp", "w")
f.write("(definstances instances\n")

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
        elif b == "Sant Genís dels Agudells":
            dirs = genisAgudells
        elif b == "Montbau":
            dirs = montbau
        elif b == "la Vall d'Hebron":
            dirs = vallHebron
        elif b == "la Clota":
            dirs = clota
        elif b == "Horta":
            dirs = horta
        elif b == "Vilapicina i la Torre Llobeta":
            dirs = vilapicinaTorreLlobeta
        elif b == "Porta":
            dirs = porta
        elif b == "el Turó de la Peira":
            dirs = turoPeira
        elif b == "Can Peguera":
            dis = canPeguera
        elif b == "la Guineueta":
            dirs = laGuineueta
        elif b == "Canyelles":
            dirs = canyelles
        elif b == "les Roquetes":
            dirs = lesRoquetes
        elif b == "Verdun":
            dirs = verdun
        elif b == "la Prosperitat":
            dirs = laProsperitat
        elif b == "la Trinitat Nova":
            dirs = laTrinitatNova
        elif b == "Torre Baró":
            dirs = torreBaro
        elif b == "Ciutat Meridiana":
            dirs = ciutatMeridiana
        elif b == "Vallbona":
            dirs = vallbona
        elif b == "La Trinitat Vella":
            dirs = laTrinitatNova
        elif b == "Baró de Viver":
            dirs = baroDeViver
        elif b == "el Bon Pastor":
            dirs = bonPastor
        elif b == "Sant Andreu":
            dirs = santAndreu
        elif b == "la Sagrera":
            dirs = laSagrera
        elif b == "el Congrés i els Indians":
            dirs = congresIndians
        elif b == "Navas":
            dirs = navas
        elif b == "el Camp de l'Arpa del Clot":
            dirs = campDelArpaDelClot
        elif b == "el Clot":
            dirs = elClot
        elif b == "el Parc i la Llacuna del Poblenou":
            dirs = elParcLaLlacunaPoblenou
        elif b == "la Vila Olímpica del Poblenou":
            dirs = vilaOlimpicaPoblenou
        elif b == "el Poblenou":
            dirs = poblenou
        elif b == "Diagonal Mar i el Front Marítim del Poblenou":
            dirs = diagonalMarFrontMaritimPoblenou
        elif b == "el Besòs i el Maresme":
            dirs = besosMaresme
        elif b == "Provençals del Poblenou":
            dirs = provencalsPoblenou
        elif b == "Sant Martí de Provençals":
            dirs = santMartiProvencals
        elif b == "la Verneda i la Pau":
            dirs = vernedaLaPau

        for direc, coords in dirs:
            i += 1
            c1, c2 = coords

            ub = ("([ubicacionVivienda" + str(i) + "] of Ubicacion\n" +
            '   (barrio "' + b + '")\n'
            "   (coordX " + str(c1) + ")\n"
            "   (coordY " + str(c2) + ")\n"
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
                plazas = randrange(3) + 1

            sH = randrange(150) + 10
            tr = randrange(20) + sH
            max = math.floor(sH/20)
            dorm = dormDoble = banosEnteros = 1
            dormSimple = banosMedios = 0
            vivType = tipos[randrange(len(tipos))]
            if max > 0:
                dorm = randrange(max) + 1
            
            if (dorm-1) > 0:
                dormSimple = randrange (dorm)
                dormDoble = dorm - dormSimple

                banosEnteros = randrange (dorm - 1) + 1
                banosMedios = randrange (banosEnteros)
            
            if vivType == "Casa_Independiente" or vivType == "Chalet" or vivType == "Duplex":
                tr += randrange(200)

            viv = ("([vivienda" + str(i) + "] of " + vivType + "\n" +
            "   (seEncuentraEn [ubicacionVivienda" + str(i) + "])\n" +
            "   (altura " + str(randrange(200) + 200) + ")\n" +
            "   (amueblado " + bools[randrange(len(bools))] + ")\n" +
            '   (certificadoEnergetico "' + certEn[randrange(len(certEn))] + '")\n' +
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
            "   (terreno " + str(tr) + ")\n" +
            "   (numDormitorios " + str(dorm) + ")\n" +#change
            "   (numDormitoriosSimples " + str(dormSimple) + ")\n" +#change
            "   (numDormitoriosDobles " + str(dormDoble) + ")\n" +#change
            "   (numBanosEnteros " + str(banosEnteros) + ")\n" +#change
            "   (numBanosMedios " + str(banosMedios) + ")\n" +#change
            "   (estudio " + bools[randrange(len(bools))] + ")\n" +
            "   (adaptadoMovilidadReducida " + bools[randrange(len(bools))] + ")\n" +
            "   (calefaccion " + bools[randrange(len(bools))] + ")\n" +
            "   (ascensor " + bools[randrange(len(bools))] + ")\n" +
            "   (pistaTenis " + bools[randrange(len(bools))] + ")\n" +
            "   (añoConstruccion " + str(randrange(221) + 1800) + ")\n" +
            "   (distMinAeropuerto " + str(randrange(15000) + 1) + ")\n" +
            "   (distMinBar " + str(randrange(2000)) + ")\n" +
            "   (distMinBus " + str(randrange(1500)) + ")\n" +
            "   (distMinCafeteria " + str(randrange(2000)) + ")\n" +
            "   (distMinCentroComercial " + str(randrange(5000) + 1) + ")\n" +
            "   (distMinCentroDia " + str(randrange(5000)) + ")\n" +
            "   (distMinCine " + str(randrange(5000)) + ")\n" +
            "   (distMinClubNoct " + str(randrange(5000)) + ")\n" +
            "   (distMinEscuela " + str(randrange(5000)) + ")\n" +
            "   (distMinGeriatrico " + str(randrange(5000)) + ")\n" +
            "   (distMinGrandesAlm " + str(randrange(10000)) + ")\n" +
            "   (distMinGuarderia " + str(randrange(5000)) + ")\n"
            "   (distMinHospital " + str(randrange(5000)) + ")\n" +
            "   (distMinInstituto " + str(randrange(5000)) + ")\n" +
            "   (distMinJardin " + str(randrange(10000)) + ")\n" +
            "   (distMinMercado " + str(randrange(5000)) + ")\n" +
            "   (distMinMetro " + str(randrange(1500)) + ")\n" +
            "   (distMinMuseo " + str(randrange(5000)) + ")\n" +
            "   (distMinPabellon " + str(randrange(15000)) + ")\n" +
            "   (distMinParque " + str(randrange(5000)) + ")\n" +
            "   (distMinPlaya " + str(randrange(10000)) + ")\n" +
            "   (distMinPlaza " + str(randrange(2000)) + ")\n" +
            "   (distMinRestaurante " + str(randrange(2000)) + ")\n" +
            "   (distMinRocodromo " + str(randrange(5000)) + ")\n" +
            "   (distMinSupermercado " + str(randrange(2000)) + ")\n" +
            "   (distMinTeatro " + str(randrange(5000)) + ")\n" +
            "   (distMinTram " + str(randrange(1500)) + ")\n" +
            "   (distMinTren " + str(randrange(3000)) + ")\n" +
            "   (distMinUniversidad " + str(randrange(5000)) + ")\n" +
            ")\n")

            f.write(viv)

f.write(")")
f.close()
