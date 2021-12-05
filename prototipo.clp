;;; ---------------------------------------------------------
;;; prot.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology prot.owl
;;; :Date 04/12/2021 10:08:11

(defclass Viviendas
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
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

(defclass Usuario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
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

(defclass Servicios
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Thing
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

;;; --------------------------------------------
;;; MÓDULO MAIN
;;; --------------------------------------------

(defmodule MAIN (export ?ALL))

;;; Módulo de preguntas al usuario
(defmodule preguntas-usuario
	(import MAIN ?ALL)
	(export ?ALL)
)

(defrule MAIN::initialRule "regla inicial"
	(declare (salience 10))
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "----------- Sistema de Recomendación de Inmuebles ------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
	(focus preguntas-usuario)
)

;;; --------------------------------------------
;;; TEMPLATES
;;; --------------------------------------------

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

;;; --------------------------------------------
;;; FUNCIONES
;;; --------------------------------------------

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

;;; --------------------------------------------
;;; REGLAS
;;; --------------------------------------------

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
)




    
    
