
;;************************************************
;;**                    CLASES                  **
;;************************************************

(defclass Viviendas
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (single-slot seEncuentraEn
        (type INSTANCE)
        (create-accessor read-write))
    (single-slot calBarrio
        (type INTEGER)
        (create-accessor read-write))
    (single-slot altura
        (type INTEGER)
        (create-accessor read-write))
    (single-slot amueblado
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot certificadoEnergetico
        (type STRING)
        (create-accessor read-write))
    (single-slot mascota
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot orientacion
        (type STRING)
        (create-accessor read-write))
    (single-slot precioMensual
        (type FLOAT)
        (create-accessor read-write))
    (single-slot soleadoMañana
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot soleadoTarde
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot soleadoSiempre
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))    
    (single-slot vistas
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot vistasMar
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot vistasMontaña
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot balcon
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot cocinaIntegrada
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot sistemaAlarma
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot garaje
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot jardin
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot plazasAparcamiento
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot sotano
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot aireAcondicionado
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot patio
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot terraza
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot gimnasio
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot primeraLineaDeMar
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot obraNueva
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot piscina
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot pistaTenis
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot añoConstruccion
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot planta
        (type INTEGER)
        (create-accessor read-write)
        (default 1))
    (single-slot superficieHabitable
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot terreno
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot numDormitorios
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot numDormitoriosSimples
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot numDormitoriosDobles
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot numBanosEnteros
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot numBanosMedios
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot estudio
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot adaptadoMovilidadReducida
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot calefaccion
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot ascensor
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
    (single-slot distMinAeropuerto
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinBar
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinBus
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinCafeteria
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinCentroComercial
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinCentroDia
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinCementerio
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinCine
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinClubNoct
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinEscuela
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinGeriatrico
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinGrandesAlm
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinGuarderia
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinHospital
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinHospitalNinos
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinInstituto
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinJardin
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinMercado
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinMetro
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinMuseo
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinPabellon
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinParque
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinPlaya
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinPlaza
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinRestaurante
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinRocodromo
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinSupermercado
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinTanatorio
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinTeatro
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinTram
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinTren
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinUniversidad
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinZonaVerde
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
    (single-slot distMinCampoDeporte
        (type INTEGER)
        (create-accessor read-write)
        (default 0))
)

(defclass Apartamento
    (is-a Viviendas)
    (role concrete)
    (pattern-match reactive)
)

(defclass Atico
    (is-a Viviendas)
    (role concrete)
    (pattern-match reactive)
)

(defclass Bajo
    (is-a Viviendas)
    (role concrete)
    (pattern-match reactive)
)

(defclass Buhardilla
    (is-a Viviendas)
    (role concrete)
    (pattern-match reactive)
)

(defclass Casa_Independiente
    (is-a Viviendas)
    (role concrete)
    (pattern-match reactive)
)

(defclass Chalet
    (is-a Viviendas)
    (role concrete)
    (pattern-match reactive)
)

(defclass Adosado
    (is-a Chalet)
    (role concrete)
    (pattern-match reactive)
)

(defclass Pareado
    (is-a Chalet)
    (role concrete)
    (pattern-match reactive)
)

(defclass Duplex
    (is-a Viviendas)
    (role concrete)
    (pattern-match reactive)
)

(defclass Estudio
    (is-a Viviendas)
    (role concrete)
    (pattern-match reactive)
)

(defclass Loft
    (is-a Viviendas)
    (role concrete)
    (pattern-match reactive)
)

(defclass Piso
    (is-a Viviendas)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ubicacion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (single-slot barrio
        (type STRING)
        (create-accessor read-write))
    (single-slot coordX
        (type FLOAT)
        (create-accessor read-write))
    (single-slot coordY
        (type FLOAT)
        (create-accessor read-write))
    (single-slot direccion
        (type STRING)
        (create-accessor read-write))
    (single-slot distrito
        (type STRING)
        (create-accessor read-write))
)

(defclass Thing
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)
