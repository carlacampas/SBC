;;; ---------------------------------------------------------
;;; SBC_Viviendas.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology SBC_Viviendas.ttl
;;; :Date 05/12/2021 17:58:23

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

;;; Funcion para hacer una pregunta multi-respuesta con indices
(deffunction pregunta-multi-rango (?pregunta ?min ?max)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (format t "%s" "Indica los numeros separados por un espacio: ")
    (bind ?resp (readline))
    (bind $?lista (create$ ))
    (bind ?numeros (str-explode ?resp))
    (progn$ (?var ?numeros)
        (if (and (integerp ?var) (and (>= ?var ?min) (<= ?var ?max)))
            then
                (bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?var))
        )
    )
    ?lista
)


;;************************************************
;;**               QUERY RULES                  **
;;************************************************

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

(defmessage-handler MAIN::Viviendas imprimir ()
    (format t "     UBIACACIÓN: ")
    (printout t crlf)
    (send ?self:seEncuentraEn imprimir)
    
    (format t "     PRECIO MENSUAL: %d" ?self:precioMensual)
    (printout t crlf)

    (format t "     SUPERFICIE HABITABLE: %d" ?self:superficieHabitable)
    (printout t crlf)

    (format t "     DORMITORIOS: %d" ?self:numDormitorios)
    (printout t crlf)
    (format t "     Dobles: %d" ?self:numDormitoriosDobles)
    (printout t crlf)
    (format t "     Simples: %d" ?self:numDormitoriosSimples)
    (printout t crlf)

    (format t "     BAÑOS ENTEROS: %d" ?self:numBanosEnteros)
    (printout t crlf)

    (format t "     BAÑOS MEDIOS: %d" ?self:numBanosMedios)
    (printout t crlf)

    (format t "     PLANTA: %d" ?self:planta)
    (printout t crlf)

    (format t "     CARACTERÍSTICAS DE LA VIVIENDA:")
    (printout t crlf)

    (if (> ?self:altura 0)
        then
        (format t "         - altura: %d" ?self:altura)
        (printout t crlf)
    )
    (if (eq ?self:amueblado TRUE)
        then
            (format t "         - amueblada")
            (printout t crlf)
        else
            (format t "         - no amueblada")
            (printout t crlf)
    )
    (format t "         - certificado energetico: %s" ?self:certificadoEnergetico)
    (printout t crlf)
    (if (eq ?self:mascota TRUE)
        then
            (format t "         - se permiten mascotas")
            (printout t crlf)
        else
            (format t "         - NO se permiten mascotas")
            (printout t crlf)
    )
    (format t "         - orientacion de la vivienda: %s" ?self:orientacion)
    (printout t crlf)
    (if (eq ?self:vistas TRUE)
        then
            (if (eq ?self:vistasMar TRUE)
            then
                (if (eq ?self:primeraLineaDeMar TRUE)
                then
                    (format t "         - primera linea de mar")
                    (printout t crlf)
                else
                    (format t "         - vistas al mar")
                    (printout t crlf)
            )
            else
                (if (eq ?self:vistasMontaña TRUE)
                then
                    (format t "         - vistas a la montaña")
                    (printout t crlf)
                else
                    (format t "         - vistas buenas")
                    (printout t crlf)
                )
            )
    )
    (if (eq ?self:balcon TRUE)
        then
            (format t "         - balcon")
            (printout t crlf)
    )
    (if (eq ?self:cocinaIntegrada TRUE)
        then
            (format t "         - cocina integrada")
            (printout t crlf)
        else
            (format t "         - NO tiene cocina integrada")
            (printout t crlf)
    )
    (if (eq ?self:sistemaAlarma TRUE)
        then
            (format t "         - sistema de alarma")
            (printout t crlf)
    )
    (if (eq ?self:garaje TRUE)
        then
            (format t "         - vivienda con garaje de %d plazas de aparcamiento" ?self:plazasAparcamiento)
            (printout t crlf)
    )
    (if (eq ?self:jardin TRUE)
        then
            (format t "         - jardin")
            (printout t crlf)
    )
    (if (eq ?self:sotano TRUE)
        then
            (format t "         - sotano")
            (printout t crlf)
    )
    (if (eq ?self:aireAcondicionado TRUE)
        then
            (format t "         - aire acondicionado")
            (printout t crlf)
    )
    (if (eq ?self:patio TRUE)
        then
            (format t "         - patio")
            (printout t crlf)
    )
    (if (eq ?self:terraza TRUE)
        then
            (format t "         - terraza")
            (printout t crlf)
    )
    (if (eq ?self:gimnasio TRUE)
        then
            (format t "         - gimnasio")
            (printout t crlf)
    )
    (if (eq ?self:obraNueva TRUE)
        then
            (format t "         - obra nueva")
            (printout t crlf)
        else 
            (format t "         - se constryó en el año %d" ?self:añoConstruccion)
            (printout t crlf)
    )
    (if (eq ?self:piscina TRUE)
        then
            (format t "         - piscina")
            (printout t crlf)
    )
    (if (eq ?self:estudio TRUE)
        then
            (format t "         - estudio")
            (printout t crlf)
    )
    (if (eq ?self:adaptadoMovilidadReducida TRUE)
        then
            (format t "         - vivienda adaptada para movilidad reducida")
            (printout t crlf)
        else
            (format t "         - vivienda NO adaptada para movilidad reducida")
            (printout t crlf)
    )
    (if (eq ?self:calefaccion TRUE)
        then
            (format t "         - calefacción")
            (printout t crlf)
    )
    (if (eq ?self:ascensor TRUE)
        then
            (format t "         - ascensor")
            (printout t crlf)
    )
)

(defmessage-handler MAIN::Ubicacion imprimir ()
    (format t "         %s" ?self:direccion)
    (printout t crlf)
    (format t "         %s, %s" ?self:barrio ?self:distrito)
    (printout t crlf)
    (format t "         COORD: (%f, " ?self:coordX)
    (printout t)
    (format t "%f)" ?self:coordX)
    (printout t crlf)
)

;;************************************************
;;**             PREGUNTAS USUARIO              **
;;************************************************

(defrule preguntas-usuario::establecer-edades "Establecer edades del grupo"
    (not (pregunta-usuario))
    =>
    (bind ?escogido (pregunta-multi-rango "Edades de las personas que compartiran vivienda: " 0 100))
    ;(assert (pregunta-usuario (tamano (length$ ?escogido))))
    ;(bind ?u pregunta-usuario)
    ;(modify ?u (edades ?escogido))
    (assert (pregunta-usuario (edades ?escogido)))
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

(defrule preguntas-usuario::establecer-mascotas "Establecer si hay mascotas"
    ?u <- (pregunta-usuario (mascotas ?mascotas))
    (test (eq ?mascotas NONE))
    =>
    (bind ?e (pregunta-si-no "¿Hay mascotas? "))
    (modify ?u (mascotas ?e))
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
    (assert (caracteristicas-vivienda ask))    
)

(defrule recopilacion-preferencias::establecer-preferencia-atributos-vivienda "Establecer preferencia de servicios de la vivienda"
    ?pref <- (preferencias)
    ?hecho <- (caracteristicas-vivienda ask)
    ?p <- (slots-and-names (nombres $?nombres) (campos $?campos))
    =>
    (bind ?escogido (pregunta-multi "¿Qué características encuentra necesarias en una vivienda? " $?nombres))
    (bind $?respuesta (create$ ))
    (loop-for-count (?i 1 (length$ ?escogido)) do
      (bind ?index (nth$ ?i ?escogido))
      (bind ?slot-name (nth$ ?index $?campos))
      (bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?slot-name))
    )
    (progn$ (?var $?respuesta))
    (modify ?pref (caracteristicas-vivienda $?respuesta))
    (retract ?hecho)
    (focus inferencia-datos)
)

;;; Reglas del módulo INFERENCIA-DATOS

(defrule inferencia-datos::filtrar-viviendas "Filtrar las viviendas que se ajusten a los requisitos mínimos del usuario"
    ?u <- (pregunta-usuario (maxPrecio ?maxPrecio)
                            (minPrecio ?minPrecio)
                            ;(minHabitaciones ?minHabitaciones)
                            (mascotas ?mascotas)
                            (movilidadReducida ?movilidadReducida))
  	=>
    (bind ?lista_adecuados (find-all-instances ((?inst Viviendas))
              (and
                  (<= ?inst:precioMensual ?maxPrecio)
                  (>= ?inst:precioMensual ?minPrecio)
                  ;(>= ?inst:numDormitorios ?minHabitaciones)
                  (or (eq ?mascotas FALSE) (eq ?inst:mascota TRUE))
                  (or (eq ?movilidadReducida FALSE) (eq ?inst:adaptadoMovilidadReducida TRUE))
              )))
    (if (eq (length$ ?lista_adecuados) 0)
        then
        (format t "No hay viviendas adecuadas para los criterios indicados")
        (printout t crlf)

        else
            (bind ?i 0)
            (progn$ (?var ?lista_adecuados)
                (bind ?i(+ ?i 1))
                (format t "Vivienda %d" ?i)
                (printout t crlf)
                (printout t (send ?var imprimir))
                ;(printout t ?var crlf)
            )
    )
)
