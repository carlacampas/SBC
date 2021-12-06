from random import randrange

districtes = ["Ciutat Vella", "Eixample", "Sants-Montjuïc", "Les Corts", "Sarrià-Sant Gervasi",
                "Gràcia", "Horta-Guinardó", "Nou Barris", "Sant Andreu", "San Martí"]

barris = {
    "Ciutat Vella": ["el Raval", "el Gòtic", "la Barceloneta", "Sant Pere", "Santa Caterina i la Ribera"],
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

tipos = ["Apartamento", "Atico", "Bajo", "Buhardilla", "Casa_Independiente", "Chalet", "Adosado", "Pareado"
    "Duplex", "Estudio", "Loft", "Piso"]

certEn = ["A", "B", "C", "D", "E", "F", "G"]
orient = ["sud", "norte", "este", "oeste", "sudeste", "sudoeste", "noreste", "noroeste"]
bools = ["TRUE", "FALSE"]
i = 0

for d in districtes:
    for b in barris:
        i += 1
        c1 = randrange(100)
        c2 = randrange(200)

        print ("([ubicacionVivienda" + str(i) + "] of Ubicacion\n" + 
        "   (barrio" + b + ")\n"
        "   (coordenadas [" + str(c1) + ", " + str(c2) + "])\n"
        "   (distrito " + d + ")\n" +
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
        "   (seEncuentraEn [ubicacion" + str(i) + "])\n" +
        "   (altura " + str(randrange(200) + 200) + ")\n" +
        "   (amueblado " + bools[randrange(len(bools))] + ")\n" +
        "   (certificadoEnergetico " + certEn[randrange(len(certEn))] + "\n" +
        "   (mascota " + bools[randrange(len(bools))] + ")\n" +
        "   (orientacion " + orient[randrange(len(orient))] + ")\n" +
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
