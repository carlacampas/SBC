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
    (single-slot edad
        (type INTEGER)
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
)

(defclass Grupo
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
)

(defclass Indivudal
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
)

(defclass Pareja
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
)

(defclass Viviendas
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (single-slot seEncuentraEn
        (type INSTANCE)
        (create-accessor read-write))
    (single-slot tieneServiciosVivienda
        (type INSTANCE)
        (create-accessor read-write))
    (single-slot altura
        (type INTEGER)
        (create-accessor read-write))
    (single-slot amueblado
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot mascota
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot orientacion
        (type STRING)
        (create-accessor read-write))
    (single-slot precioMensual
        (type FLOAT)
        (create-accessor read-write))
    (single-slot vistas
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot balcon
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot cocinaIntegrada
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot sistemaAlarma
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot garaje
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot jardin
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot plazasAparcamiento
        (type INTEGER)
        (create-accessor read-write))
    (single-slot sotano
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot aireAcondicionado
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot patio
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot pistaDeTenis
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot terraza
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot gimnasio
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot primeraLineaDeMar
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot obraNueva
        (type SYMBOL)
        (create-accessor read-write))
    (single-slot piscina
        (type SYMBOL)
        (create-accessor read-write))
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
        (create-accessor read-write))
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

(defclass Grandes Almacenes
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

(defclass ServiciosVivienda
    (is-a USER)
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

(defmodule PREFERENCIAS
    (import MAIN ?ALL)
    (export ?ALL)
)

;;************************************************
;;**               DEFFUNCTIONS                 **
;;************************************************

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer)

(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question yes no y n))
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE
       else FALSE))



;;************************************************
;;**               QUERY RULES                  **
;;************************************************


;;************************************************
;;**                 INSTANCIAS                 **
;;************************************************

;(definstances instances
;    ([R9mnqkRmgmngQA3TtdmQYm2] of Piso
;         (R8dH4GuUF8SGOqote736WTH  "true")
;         (R99cDExVngj8jD1VsWmKtco  "true")
;         (RDz7garco5iEjs9MuPHm5Fr  1)
;         (RgyAboTYKoqc42I05p5Qjo  2)
;         (precioMensual  1200)
;    )

;    ([RDoBlQx4E9SgbEngum7MM8B] of Estudio
;         (R8TkVpOvdkXoX1L4dHecMU  0)
;         (R8dH4GuUF8SGOqote736WTH  "false")
;         (R99cDExVngj8jD1VsWmKtco  "false")
;         (precioMensual  550)
;    )

;)

;;; Template para los datos de las preguntas al usuario
(deftemplate MAIN::pregunta-usuario
    (slot tamano (type INTEGER))
    (slot ninos (type SYMBOL) (default NONE))
    (slot jubilados (type SYMBOL) (default NONE))
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
    (focus recopilacion-grupo)
)
