;;; ---------------------------------------------------------
;;; SBC_Viviendas.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology SBC_Viviendas.ttl
;;; :Date 05/12/2021 17:58:23

;;************************************************
;;**                    CLASES                  **
;;************************************************

(defclass Usuario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (single-slot estudiaEn
        (type INSTANCE)
        (create-accessor read-write))
    (single-slot interesadoEn
        (type INSTANCE)
        (create-accessor read-write))
    (single-slot seEncuentraEn
        (type INSTANCE)
        (create-accessor read-write))
    (single-slot trabajaEn
        (type INSTANCE)
        (create-accessor read-write))
    (single-slot discapacidad
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot mascota
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot numAncianos
        (type INTEGER)
        (create-accessor read-write))
    (single-slot numCoches
        (type INTEGER)
        (create-accessor read-write))
    (single-slot precioMensual
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Estudiante
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
)

(defclass Familia
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
    (single-slot monoparental
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot numHijos
        (type INTEGER)
        (create-accessor read-write))
    (single-slot tamañoFamilia
        (type INTEGER)
        (create-accessor read-write))
    (multislot edad
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Grupo
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
    (multislot edad
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Indivudal
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
    (single-slot edad
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Pareja
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
    (multislot edad
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Viviendas
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (single-slot seEncuentraEn
        (type INSTANCE)
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
    (single-slot distMinHospital
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

;;************************************************
;;**           DECLARAR MODULOS                 **
;;************************************************

;; Modulo principal
(defmodule MAIN (export ?ALL))

(defmodule preguntas-usuario
    (import MAIN ?ALL)
    (export ?ALL)
)

(defmodule recopilacion-preferencias
    (import MAIN ?ALL)
    (export ?ALL)
)

;;; Módulo para la inferencia de datos
(defmodule inferencia-datos
	(import MAIN ?ALL)
	(import preguntas-usuario ?ALL)
	(export ?ALL)
)

;;************************************************
;;**               DEFFUNCTIONS                 **
;;************************************************

;;; Funcion para hacer una pregunta de tipo si/no
(deffunction MAIN::pregunta-si-no (?question)
    (format t "%s [Y/N] " ?question)
    (bind ?response (read))
    (while (not(or(eq ?response Y)(eq ?response N))) do
        (printout t ?question)
        (bind ?response (read))
    )
    (if (eq ?response Y)
        then TRUE
        else FALSE)
)

;;; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction MAIN::pregunta-numerica (?pregunta ?rangini ?rangfi)
    (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
    (bind ?response (read))
    (while (not(and(>= ?response ?rangini)(<= ?response ?rangfi))) do
        (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
        (bind ?response (read))
    )
    ?response
)

;;; Funcion para hacer pregunta con indice de respuestas posibles
(deffunction MAIN::pregunta-indice (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (bind ?respuesta (pregunta-numerica "Escoge una opcion:" 1 (length$ ?valores-posibles)))
    ?respuesta
)

;;; Funcion para hacer una pregunta multi-respuesta con indices
(deffunction pregunta-multi (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (format t "%s" "Indica los numeros separados por un espacio: ")
    (bind ?resp (readline))
    (bind ?numeros (str-explode ?resp))
    (bind $?lista (create$ ))
    (progn$ (?var ?numeros)
        (if (and (integerp ?var) (and (>= ?var 1) (<= ?var (length$ ?valores-posibles))))
            then
                (if (not (member$ ?var ?lista))
                    then (bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?var))
                )
        )
    )
    ?lista
)

(deffunction MAIN::pregunta-test (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (format t "%s" "Indica el número de tu respuesta: ")
    (bind ?resp (read))
    ?resp
)

;;************************************************
;;**               QUERY RULES                  **
;;************************************************

;;************************************************
;;**                TEMPLATES                   **
;;************************************************

;;; Template para los datos de las preguntas al usuario
(deftemplate MAIN::pregunta-usuario
    
    ;; características sobre el usuario
    (slot tipo (type STRING))
    (slot tamano (type INTEGER))
    (slot ninos (type SYMBOL) (default NONE))
    (slot jubilados (type SYMBOL) (default NONE))
    (slot numAdultos (type SYMBOL) (default NONE))
    (slot numNinos (type SYMBOL) (default NONE))
    (slot estudiantes (type SYMBOL) (default NONE))
    (slot maxPrecio (type INTEGER)  (default -1))
    (slot minPrecio (type INTEGER)  (default -1))
    (slot mascotas (type SYMBOL) (default NONE))
    (slot nocturnidad (type SYMBOL) (default NONE))
    (slot coche (type SYMBOL) (default NONE))

    ;; preferencias sobre la vivienda + servicios vivienda
    (slot conBalcon (type SYMBOL) (allowed-values imp pref exc))
    (slot conCocinaIntegrada (type SYMBOL) (allowed-values imp pref exc))
    (slot conGaraje (type SYMBOL) (allowed-values imp pref exc))
    (slot conAlarma (type SYMBOL) (allowed-values imp pref exc))
    (slot conJardin (type SYMBOL) (allowed-values imp pref exc))
    (slot numPlazasAp (type INTEGER)) ;;generar regla que en caso de querer garaje como imp o pref pregunte por número de plazas
    (slot conSotano (type SYMBOL) (allowed-values imp pref exc))
    (slot conAireAcondicionado (type SYMBOL) (allowed-values imp pref exc))
    (slot conPatio (type SYMBOL) (allowed-values imp pref exc))
    (slot conTerraza (type SYMBOL) (allowed-values imp pref exc))
    (slot conGimnasio (type SYMBOL) (allowed-values imp pref exc))
    (slot enPrimLinMar (type SYMBOL) (allowed-values imp pref exc))
    (slot deObraNueva (type SYMBOL) (allowed-values imp pref exc))
    (slot conPiscina (type SYMBOL) (allowed-values imp pref exc))
    (slot deAntigüedad (type SYMBOL) (allowed-values imp pref exc))
    (slot maxAntiguedad (type INTEGER) (range 0 100)) ;;cambiar para ajustar a las instancias, same que con plazas parking
    (slot enPlanta (type SYMBOL) (allowed-values imp pref exc)) ;;triggered si tipo == piso
    (multislot quierePlantas (type INTEGER) (range 0 15)) ;;ajustar, trigger de la anterior
    (slot conEstudio (type SYMBOL) (allowed-values imp pref exc))
    (slot movilidadReducida (type SYMBOL) (default NONE))

    (multislot tipos-vivienda (type SYMBOL))
)

;;; Template para las preferencias del usuario
(deftemplate MAIN::preferencias
	(multislot tipos-vivienda (type SYMBOL))
    
    ;;===(slot conmovilidadReducida (type SYMBOL) (allowed-values imp pref exc)
    (slot conCalefaccion (type SYMBOL) (allowed-values imp pref exc))
    (slot conAscensor (type SYMBOL) (allowed-values imp pref exc))
    
    (slot deSuperficieHab (type SYMBOL) (allowed-values imp pref exc))
    (slot minSuperficieHab (type INTEGER) (range 30 1000)) ;;m2
    ;;(slot maxSuperficieHab (type INTEGER) (range 30 1000)) ;;m2
    
    (slot deMinHabitaciones (type SYMBOL) (allowed-values imp pref exc))
    (slot minHabitaciones (type INTEGER) (default -1) (range -1 10)) ;;ajustar
    (slot numHabDobles (type INTEGER) (default -1) (range -1 10)) ;;ajustar
    (slot numHabSimples (type INTEGER) (default -1) (range -1 10)) ;;ajustar
    
    (slot deMinBaños (type SYMBOL) (allowed-values imp pref exc))
    (slot minBaños (type INTEGER) (default -1) (range -1 10)) ;;ajustar
    (slot minBañosEnteros (type INTEGER) (default -1) (range -1 10)) ;;ajustar
    (slot minBañosMedios (type INTEGER) (default -1) (range -1 10)) ;;ajustar
    
    ;;preferencias sobre los servicios de la ciudad
    (slot defDistMinAeropuerto (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinAeropuerto (type FLOAT) (range 0.0 1000.0)) ;;ajustar
    
    (slot defDistMinBar (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinBar (type FLOAT) (range 0.0 1000.0)) ;;ajustar
    
    (slot defDistMinBus (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinBus (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinCafeteria (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinCafeteria (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinCentComercial (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinCentComercial (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinCentroDia (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinCentroDia (type FLOAT) (range 0.0 1000.0)) ;;ajustar
            
    (slot defDistMinCine (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinCine (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinClubNoct (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinClubNoct (type FLOAT) (range 0.0 1000.0)) ;;ajustar

    (slot defDistMinEscuela (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinEscuela (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinGeriatrico (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinGeriatrico (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinGrandesAlm (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinGrandesAlm (type FLOAT) (range 0.0 1000.0)) ;;ajustar
            
    (slot defDistMinHospital (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinHospital (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinInstituto (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinInstituto (type FLOAT) (range 0.0 1000.0)) ;;ajustar

    (slot defDistMinJardin (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinJardin (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinMercado (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinMercado (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinMetro (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinMetro (type FLOAT) (range 0.0 1000.0)) ;;ajustar
            
    (slot defDistMinMuseo (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinMuseo (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinPabellon (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinPabellon (type FLOAT) (range 0.0 1000.0)) ;;ajustar

    (slot defDistMinParque (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinParque (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinPlaya (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinPlaya (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinPlaza (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinPlaza (type FLOAT) (range 0.0 1000.0)) ;;ajustar
            
    (slot defDistMinRestaurante (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinRestaurante (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinRocodromo (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinRocodromo (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinSupermercado (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinSupermercado (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinTeatro (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinTeatro (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinTram (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinTram (type FLOAT) (range 0.0 1000.0)) ;;ajustar
            
    (slot defDistMinTren (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinTren (type FLOAT) (range 0.0 1000.0)) ;;ajustar
        
    (slot defDistMinUniversidad (type SYMBOL) (allowed-values imp pref exc))
    (slot setDistMinUniversidad (type FLOAT) (range 0.0 1000.0)) ;;ajustar
)

;;************************************************
;;**            IMPRIMIR VIVIENDAS              **
;;************************************************
(defrule MAIN::initialRule "Regla inicial"
    (declare (salience 10))
    =>
    (printout t"----------------------------------------------------------" crlf)
      (printout t"                RECOMENDACIÓN DE VIVIENDAS              " crlf)
    (printout t"----------------------------------------------------------" crlf)
      (printout t crlf)
    (printout t"¡Bienvenido/a! A continuación se le hará algunas preguntas para averiguar sus preferencias en cuanto a viviendas. De esta manera podremos recomendar vivendas más apropiadas." crlf)
    (printout t crlf)
    (focus preguntas-usuario)
)

(defrule preguntas-usuario::preguntar-numero-personas "Preguntar el número de inquilinos"
    (not (pregunta-usuario))
    =>
    (bind ?tamano (pregunta-numerica "¿Cuantas personas vivirán en la vivienda? " 1 15 ))
    (assert (pregunta-usuario (tamano ?tamano)))
)

(defrule preguntas-usuario::establecer-ninos "Establecer si hay niños"
    ?u <- (pregunta-usuario (tamano ?tamano) (ninos ?n))
    (test (> ?tamano 1))
    (test (eq ?n NONE))
    =>
    (bind ?e (pregunta-si-no "¿Hay menores de 12? "))
    (modify ?u (ninos ?e))
)

(defrule preguntas-usuario::preguntar-numero-personas "Preguntar el número de inquilinos"
    (not (pregunta-usuario))
    =>
    (bind ?tamano (pregunta-numerica "¿Cuantas personas vivirán en la vivienda? " 1 15 ))
    (assert (pregunta-usuario (tamano ?tamano)))
)

(defrule preguntas-usuario::establecer-jubilados "Establecer si hay personas jubiladas"
    ?u <- (pregunta-usuario (jubilados ?jubilados))
    (test (eq ?jubilados NONE))
    =>
    (bind ?e (pregunta-si-no "¿Hay mayores de 65? "))
    (modify ?u (jubilados ?e))
)

(defrule preguntas-usuario::establecer-estudiantes "Establecer si son estudiantes"
    ?u <- (pregunta-usuario (ninos ?n) (jubilados ?jubilados) (estudiantes ?est))
    (test (eq ?n FALSE))
    (test (eq ?jubilados FALSE))
    (test (eq ?est NONE))
    =>
    (bind ?e (pregunta-si-no "Será un piso de estudiantes? "))
    (modify ?u (estudiantes ?e))
)

(defrule preguntas-usuario::establecer-maxPrecio "Establecer precio máximo"
    ?u <- (pregunta-usuario (maxPrecio ?maxPrecio))
    (test (< ?maxPrecio 0))
    =>
    (bind ?e (pregunta-numerica "Qué precio máximo encuentran aceptable?" 100 5000))
    (modify ?u (maxPrecio ?e))
)

(defrule preguntas-usuario::establecer-minPrecio "Establecer precio mínimo"
    ?u <- (pregunta-usuario (maxPrecio ?maxPrecio) (minPrecio ?minPrecio))
    (test (< ?minPrecio 0))
    (test (> ?maxPrecio 0))
    =>
    (bind ?e (pregunta-numerica "Qué precio mínimo encuentran aceptable?" 100 ?maxPrecio))
    (modify ?u (minPrecio ?e))
)

(defrule preguntas-usuario::establecer-minHabitaciones "Establecer mínimo número de habitaciones"
    ?u <- (pregunta-usuario (minHabitaciones ?minHabitaciones))
    (test (< ?minHabitaciones 0))
    =>
    (bind ?e (pregunta-numerica "Almenos cuantas habitaciones desean?" 0 10))
    (modify ?u (minHabitaciones ?e))
)

(defrule preguntas-usuario::establecer-mascotas "Establecer si hay mascotas"
    ?u <- (pregunta-usuario (mascotas ?mascotas))
    (test (eq ?mascotas NONE))
    =>
    (bind ?e (pregunta-si-no "¿Hay mascotas? "))
    (modify ?u (mascotas ?e))
)

(defrule preguntas-usuario::establecer-nocturnidad "Establecer si interés en salir de noche"
    ?u <- (pregunta-usuario (nocturnidad ?nocturnidad))
    (test (eq ?nocturnidad NONE))
    =>
    (bind ?e (pregunta-si-no "¿Tienen interés en salir de fiesta por las noches? "))
    (modify ?u (nocturnidad ?e))
)

(defrule preguntas-usuario::establecer-coche "Establecer si tienen coche"
    ?u <- (pregunta-usuario (coche ?coche))
    (test (eq ?coche NONE))
    =>
    (bind ?e (pregunta-si-no "¿Disponen de coche? "))
    (modify ?u (coche ?e))
)

(defrule preguntas-usuario::establecer-movilidad-reducida "Establecer si tienen movilidad reducida"
    ?u <- (pregunta-usuario (movilidadReducida ?movilidadReducida))
    (test (eq ?movilidadReducida NONE))
    =>
    (bind ?e (pregunta-si-no "¿La vivienda tiene que ser accesible en silla de ruedas? "))
    (modify ?u (movilidadReducida ?e))
    (focus recopilacion-preferencias)
)

(deffacts recopilacion-preferencias::hechos-iniciales "Establece hechos para poder ejecutar las reglas"
    (tipos-vivienda ask)
    (preferencias)
)

(defrule recopilacion-preferencias::establecer-preferencia-tipo-vivienda "Establecer preferencia sobre los tipos de vivienda"
    ?pref <- (preferencias)
    ?hecho <- (tipos-vivienda ask)
    =>
    (bind ?e (pregunta-si-no "¿Está interesado en algún tipo de vivienda en concreto?"))
    (if (eq ?e TRUE)
      then
      (bind $?tipos (class-subclasses Viviendas))
      (bind ?escogido (pregunta-multi "Escoja el tipo de viviendas en las que está interesado: " $?tipos))
      (bind $?respuesta (create$ ))
      (loop-for-count (?i 1 (length$ ?escogido)) do
        (bind ?index (nth$ ?i ?escogido))
        (bind ?tipo (nth$ ?index ?tipos))
        (bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?tipo))
      )
      ; Print results
      ; (progn$ (?var ?respuesta)
      ; (printout t ?var crlf))
      (modify ?pref (tipos-vivienda $?respuesta))
    )
    (retract ?hecho)
    (focus inferencia-datos)
)

;;; Reglas del módulo INFERENCIA-DATOS

(defrule inferencia-datos::filtrar-viviendas "Filtrar las viviendas que se ajusten a los requisitos mínimos del usuario"
    ?u <- (pregunta-usuario (maxPrecio ?maxPrecio)
                            (minPrecio ?minPrecio)
                            (minHabitaciones ?minHabitaciones)
                            (mascotas ?mascotas)
                            (movilidadReducida ?movilidadReducida))
  	=>
    (bind ?lista_adecuados (find-all-instances ((?inst Viviendas))
              (and
                  (<= ?inst:precioMensual ?maxPrecio)
                  (>= ?inst:precioMensual ?minPrecio)
                  (>= ?inst:numDormitorios ?minHabitaciones)
                  (or (eq ?mascotas FALSE) (eq ?inst:mascota TRUE))
                  (or (eq ?movilidadReducida FALSE) (eq ?inst:adaptadoMovilidadReducida TRUE))
              )))
    (progn$ (?var ?lista_adecuados)
    (printout t ?var crlf))
)
