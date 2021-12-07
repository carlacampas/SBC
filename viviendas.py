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
    "Horta-Guinardó": ["enís dels Agudells",  
  	 	 	    "Montbau", "la Vall d'Hebron", "la Clota", "Horta"],
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
