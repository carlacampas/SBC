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
