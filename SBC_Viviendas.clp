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
    (single-slot pistaDeTenis
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
        (create-accessor read-write))
    (single-slot planta
        (type INTEGER)
        (create-accessor read-write))
    (single-slot superficieHabitable
        (type INTEGER)
        (create-accessor read-write))
    (single-slot numDormitorios
        (type INTEGER)
        (create-accessor read-write))
    (single-slot numDormitoriosSimples
        (type INTEGER)
        (create-accessor read-write))
    (single-slot numDormitoriosDobles
        (type INTEGER)
        (create-accessor read-write))
    (single-slot numBanosEnteros
        (type INTEGER)
        (create-accessor read-write))
    (single-slot numBanosMedios
        (type INTEGER)
        (create-accessor read-write))
    (single-slot estudio
        (type SYMBOL)
        (create-accessor read-write)
        (default FALSE))
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

(defclass ServiciosCiudad
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (single-slot seEncuentraEn
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Tienda
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Aeropuerto
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Bar
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Bus
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Cafeteria
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Centro_Comercial
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Centro_de_Dia
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Cine
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Club_Nocturno
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Escuela
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Geriatrico
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Grandes_Almacenes
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Hospital
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Instituto
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Jardines
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Mercado
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Metro
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Museo
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Pabellon
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Parque
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Playa
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Plaza
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Restaurante
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Rocodromo
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Supermercado
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Teatro
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Tram
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Tren
    (is-a ServiciosCiudad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Universidad
    (is-a ServiciosCiudad)
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
    (single-slot coordenadas
        (type SYMBOL)
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
;;**                 INSTANCIAS                 **
;;************************************************

(definstances instances
   ([ubicacion1] of Ubicacion
     (barrio "La Teixonera")
     (coordenadas [29,39])
     (distrito "Horta-Guinardó")
   )
   ([vivienda1] of Piso
     (seEncuentraEn [ubicacion1])
     (mascota TRUE)
     (orientacion sureste)
     (precioMensual 900)
     (balcon TRUE)
     (cocinaIntegrada TRUE)
     (aireAcondicionado TRUE)
     (añoConstruccion 1960)
     (planta 2)
     (superficieHabitable 81)
     (numDormitorios 4)
     (numDormitoriosSimples 2)
     (numDormitoriosDobles 4)
     (numBanosMedios 0)
     (numBanosEnteros 1)
   )
   ([ubicacion2] of Ubicacion
     (barrio "Sant Andreu del Palomar")
     (coordenadas [90,89])
     (distrito "Sant Andreu")
   )
   ([vivienda2] of Piso
     (seEncuentraEn [ubicacion2])
     (amueblado TRUE)
     (orientacion oeste)
     (precioMensual 820)
     (balcon TRUE)
     (cocinaIntegrada TRUE)
     (aireAcondicionado TRUE)
     (añoConstruccion 1989)
     (planta 1)
     (superficieHabitable 70)
     (numDormitorios 3)
     (numDormitoriosSimples 2)
     (numDormitoriosDobles 1)
     (numBanosMedios 0)
     (numBanosEnteros 1)
   )
   ([ubicacion3] of Ubicacion
     (barrio "El Clot")
     (coordenadas [70,76])
     (distrito "Sant Martí")
   )
   ([vivienda3] of Duplex
     (seEncuentraEn [ubicacion3])
     (amueblado TRUE)
     (mascota TRUE)
     (orientacion suroeste)
     (precioMensual 1650)
     (balcon TRUE)
     (cocinaIntegrada TRUE)
     (sistemaAlarma TRUE)
     (aireAcondicionado TRUE)
     (añoConstruccion 2017)
     (planta 1)
     (superficieHabitable 120)
     (numDormitorios 3)
     (numDormitoriosSimples 1)
     (numDormitoriosDobles 2)
     (numBanosMedios 1)
     (numBanosEnteros 1)
   )
   ([ubicacion4] of Ubicacion
     (barrio "Pedralbes")
     (coordenadas [10,95])
     (distrito "Les Corts")
   )
   ([vivienda4] of Piso
     (orientacion nordoeste)
     (precioMensual 2530)
     (vistas TRUE)
     (balcon TRUE)
     (cocinaIntegrada TRUE)
     (sistemaAlarma TRUE)
     (garaje TRUE)
     (aireAcondicionado TRUE)
     (terraza TRUE)
     (obraNueva TRUE)
     (piscina TRUE)
     (añoConstruccion 1992)
     (planta 4)
     (superficieHabitable 140)
     (numDormitorios 4)
     (numDormitoriosSimples 1)
     (numDormitoriosDobles 3)
     (numBanosMedios 1)
     (numBanosEnteros 2)
   )
)

;;; Template para los datos de las preguntas al usuario
(deftemplate MAIN::pregunta-usuario
    (slot tipo (type STRING))
    (slot tamano (type INTEGER))
    (slot ninos (type SYMBOL) (default NONE))
    (slot jubilados (type SYMBOL) (default NONE))
    (slot numAdultos (type SYMBOL) (default NONE))
    (slot numNinos (type SYMBOL) (default NONE))
    (slot estudiantes (type SYMBOL) (default NONE))
    (slot maxPrecio (type INTEGER)  (default -1))
    (slot minPrecio (type INTEGER)  (default -1))
    (slot minHabitaciones (type INTEGER) (default -1))
    (slot mascotas (type SYMBOL) (default NONE))
    (slot nocturnidad (type SYMBOL) (default NONE))
    (slot coche (type SYMBOL) (default NONE))
    (slot movilidadReducida (type SYMBOL) (default NONE))
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
(focus inferencia-datos)
)

;;; Reglas del módulo INFERENCIA-DATOS

(defrule inferencia-datos::devuelve-instancias "test"
  (pregunta-usuario)
	=>
  (bind ?lista (find-all-instances ((?inst Viviendas)) (eq ?inst:mascota FALSE)))
  (progn$ (?var ?lista)
  (printout t ?var crlf))
)
