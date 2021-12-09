;;; ---------------------------------------------------------
;;; SBC_Viviendas.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology SBC_Viviendas.ttl
;;; :Date 05/12/2021 17:58:23

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
(deffacts inferencia-datos::hechos-iniciales "Establece hechos para poder ejecutar las reglas"
    (filtrar-min ask)
    (viviendas-resultantes)
)

(defrule inferencia-datos::filtrado-min "Filtrar las viviendas que se ajusten a los requisitos mínimos del usuario"
    ?hecho <- (filtrar-min ask)
    ?vv <- (viviendas-resultantes)
    ;?lista_no_adecuados <- (viviendasInviables)
    ?u <- (pregunta-usuario (maxPrecio ?maxPrecio)
                            (minPrecio ?minPrecio)
                            ;(minHabitaciones ?minHabitaciones)
                            (mascotas ?mascotas)
                            (movilidadReducida ?movilidadReducida))
  	=>
    (bind $?lista_adecuados (find-all-instances ((?inst Viviendas))
              (and
                  (<= ?inst:precioMensual ?maxPrecio)
                  (>= ?inst:precioMensual ?minPrecio)
                  ;(>= ?inst:numDormitorios ?minHabitaciones)
                  (or (eq ?mascotas FALSE) (eq ?inst:mascota TRUE))
                  (or (eq ?movilidadReducida FALSE) (eq ?inst:adaptadoMovilidadReducida TRUE))
    )))
    
    (retract ?hecho)
    (modify ?vv (viviendas-viables $?lista_adecuados))
    (assert (filtrar-preferencias-vivienda ask))
)

(defrule inferencia-datos::filtrado-carac-vivienda "Filtrar las viviendas que se ajusten a los requisitos esperados por las edades"
    ?vv <- (viviendas-resultantes (viviendas-viables ?viviendas-viables))
    ?hecho <- (filtrar-preferencias-vivienda ask)
    ?u <- (preferencias (caracteristicas-vivienda ?caracteristicas-vivienda))
    =>
    (format t "length: %d" (length$ ?viviendas-viables))
    (printout t crlf)
    (bind $?lista_adecuados (create$ ))
    (printout t "before loop")
    (progn$ (?var ?viviendas-viables)
        (bind ?check TRUE)
        (printout t "in first loop")
        (progn$ (?car ?caracteristicas-vivienda)
            (printout t "in second loop")
            (format t "get-%s" ?car)
            (bind ?check-atrib (send ?var t))
            (if (eq ?check-atrib FALSE)
                then
                    (bind ?check FALSE)
            )
        )
        (if (eq ?check TRUE)
            then
                (bind $?lista_adecuados (insert$ $?lista_adecuados (+ (length$ $?lista_adecuados) 1) ?var))
        )
    )

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
    (retract ?hecho)
)
