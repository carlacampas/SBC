(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot dimensiones
;+		(comment "Pequenyo = 1\nMediano = 2\nGrande = 3\nEnorme = 4")
		(type SYMBOL)
		(allowed-values PEQUENYO MEDIANO GRANDE ENORME)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot tiene_tema
		(type INSTANCE)
;+		(allowed-classes Tema)
		(create-accessor read-write))
	(multislot tiene_estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write))
	(single-slot complejidad
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tratado_por
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(multislot tiene
		(type INSTANCE)
;+		(allowed-classes Caracteristica)
		(create-accessor read-write))
	(multislot prefiere
		(type INSTANCE)
;+		(allowed-classes Caracteristica)
		(create-accessor read-write))
	(multislot tiene_autor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot museo_Class10013
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero_elementos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot relevancia
;+		(comment "más relavancia 5 y menos 1")
		(type INTEGER)
		(range 1 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot horas_diarias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot conocimiento
		(type SYMBOL)
		(allowed-values BAJO MEDIO_BAJO MEDIO_ALTO ALTO)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anyo_fin
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fecha
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot pertenecio_a
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot relacionada_con
		(type INSTANCE)
;+		(allowed-classes Caracteristica)
		(create-accessor read-write))
	(single-slot vivio_en
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot visitamos
		(type INSTANCE)
;+		(allowed-classes Obra)
		(create-accessor read-write))
	(single-slot tipo_visita
;+		(comment "solo,familia, grupo p/g")
		(type SYMBOL)
		(allowed-values SOLO FAMILIA GRUPO_G GRUPO_P)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot crea_obra
		(type INSTANCE)
;+		(allowed-classes Obra)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot museo_Class5
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot year
;+		(comment "año de creación")
		(type INTEGER)
		(range 0 2000)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Dia
		(type INTEGER)
		(create-accessor read-write))
	(single-slot nombre_caracteristica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene_obra
		(type INSTANCE)
;+		(allowed-classes Obra)
		(create-accessor read-write))
	(single-slot museo_Class10024
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot museo_Class14
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot pertenece_a_estilos
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot pertenece_a
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot prefiere_tematica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot creado_por
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anyo_ini
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiempo_restante
;+		(comment "En minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot vivio_durante
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Obra
	(is-a USER)
	(role concrete)
	(single-slot numero_elementos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fecha
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene
		(type INSTANCE)
;+		(allowed-classes Caracteristica)
		(create-accessor read-write))
	(single-slot dimensiones
;+		(comment "Pequenyo = 1\nMediano = 2\nGrande = 3\nEnorme = 4")
		(type SYMBOL)
		(allowed-values PEQUENYO MEDIANO GRANDE ENORME)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot relevancia
;+		(comment "más relavancia 5 y menos 1")
		(type INTEGER)
		(range 1 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot complejidad
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Visita
	(is-a USER)
	(role concrete)
	(single-slot conocimiento
		(type SYMBOL)
		(allowed-values BAJO MEDIO_BAJO MEDIO_ALTO ALTO)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_visita
;+		(comment "solo,familia, grupo p/g")
		(type SYMBOL)
		(allowed-values SOLO FAMILIA GRUPO_G GRUPO_P)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prefiere
		(type INSTANCE)
;+		(allowed-classes Caracteristica)
		(create-accessor read-write))
	(single-slot horas_diarias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Caracteristica
	(is-a USER)
	(role abstract)
	(single-slot nombre_caracteristica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene_obra
		(type INSTANCE)
;+		(allowed-classes Obra)
		(create-accessor read-write)))

(defclass Autor
	(is-a Caracteristica)
	(role concrete)
	(single-slot pertenece_a
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot vivio_durante
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Tema
	(is-a Caracteristica)
	(role concrete)
	(multislot tiene_estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write)))

(defclass Estilo
	(is-a Caracteristica)
	(role concrete)
	(multislot tiene_tema
		(type INSTANCE)
;+		(allowed-classes Tema)
		(create-accessor read-write))
	(multislot tiene_autor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write)))

(defclass Epoca
	(is-a Caracteristica)
	(role concrete)
	(pattern-match reactive)
	(single-slot anyo_fin
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anyo_ini
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiene_estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write))
	(multislot tiene_autor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write)))

(defclass Dia_En_El_Museo
	(is-a USER)
	(role concrete)
	(multislot visitamos
		(type INSTANCE)
;+		(allowed-classes Obra)
		(create-accessor read-write))
	(single-slot tiempo_restante
;+		(comment "En minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Dia
		(type INTEGER)
		(create-accessor read-write)))


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					 MAIN					 		---------- 								MAIN
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; Este es el modulo principal, en este se comprobara l existencia del estudiante
;; en el conjunto de instancias del sistema

(defmodule MAIN (export ?ALL))

;;; Modulo de recopilacion de los datos del usuario
(defmodule recopilacion-usuario
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Modulo de recopilacion de las preferencias del usuario
(defmodule recopilacion-prefs
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Modulo de recopilacion del conocimiento del usuario
(defmodule recopilacion-conocimiento
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule inferir-datos
	(import MAIN ?ALL)
	(import recopilacion-usuario ?ALL)
	(import recopilacion-prefs ?ALL)
	(import recopilacion-conocimiento ?ALL)
	(export ?ALL)
)


;;; Modulo de de filtrado de cuadros en base al concimiento del usuario
(defmodule filtrar
	(import MAIN ?ALL)
	(import recopilacion-usuario ?ALL)
	(import recopilacion-prefs ?ALL)
	(import recopilacion-conocimiento ?ALL)
	(import inferir-datos ?ALL)
	(export ?ALL)
)

(defrule MAIN::initialRule "regla inicial"
	(declare (salience 10))
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "------------ Sistema de Recomendacion de Visitas -------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
	(focus recopilacion-usuario)
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					TEMPLATES					 		---------- 								TEMPLATES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; en caso de que haya ninos tengo -1 si no
;;; Template para los datos de las preguntas de grupo al usuario
(deftemplate MAIN::pregunta-grupo
	(slot nino (type SYMBOL) (default NONE))
	(slot tamano (type INTEGER))
	(slot dia (type INTEGER)  (default -1))
	(slot horasDia (type INTEGER)  (default -1))
)

;;; Template para las preferencias del usuario
(deftemplate MAIN::preferencias
	(multislot epocas (type INSTANCE))
	(multislot temas (type INSTANCE))
	(multislot autores (type INSTANCE))
	(multislot estilos (type INSTANCE))
)

;;; Template para las preguntas de conocimiento
(deftemplate MAIN::pregunta-conocimiento
  (slot pregunta (type STRING))
  (multislot respuestas (type STRING)  (cardinality 4 4))
  (slot respuesta_correcta (type INTEGER) (range 1 4))
  (slot acierto (type SYMBOL) (allowed-values FALSE TRUE Indef)
  (default Indef))
)

;;; Template para la nota de las preguntas de conocimiento
(deftemplate MAIN::nota-conocimiento
  (slot nota (type INTEGER)))

;;; Template para una lista de recomendaciones sin orden
(deftemplate MAIN::lista-cuadros
	(slot nombre (type STRING))
	(multislot recomendaciones (type INSTANCE))
)

;;;;;============================ RESTRICCIONES ============================

;;;;;============================ PREFERENCIAS ============================

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MENSAJES					 		---------- 								MENSAJES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Mensajes a las clases




;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					FUNCIONES					 		---------- 								EXTRAS
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------

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

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					REGLAS - 4 MODULOS					 		---------- 								REGLAS
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE PREGUNTAS				 		---------- 							MODULO DE PREGUNTAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;; En este se le haran las preguntas al usuario
;; para obtener la informacion de sus restricciones y/o preferencias

;;; Modulo recopilacion


(defrule recopilacion-usuario::establecer-personas "¿Cuantas personas vienen con usted?"
	(not (pregunta-grupo))
	=>
	(bind ?tamano (pregunta-numerica "Cuantas personas son en total? " 1 20 ))
	(assert (pregunta-grupo (tamano ?tamano)))
)

(defrule recopilacion-usuario::establecer-ninos "Establece si se va a ver el contenido en familia"
	?u <- (pregunta-grupo (tamano ?tamano) (nino ?n))
	(test (> ?tamano 1))
	(test (eq ?n NONE))
	=>
	(bind ?e (pregunta-si-no "Le acompanan menores de 12? "))
	(modify ?u (nino ?e))
)

(defrule recopilacion-usuario::establecer-dias "¿Cuantos dias durara la visita?"
	?u <- (pregunta-grupo (dia ?dia))
	(test (< ?dia 0))
	=>
	(bind ?dia (pregunta-numerica "Cuantos dias durara la visita? " 1 5 ))
	(modify ?u (dia ?dia))
)

(defrule recopilacion-usuario::establecer-horas-dias "¿Cuantas horas durara la visita cada dia?"
	?u <- (pregunta-grupo (horasDia ?horasdia))
	(test (< ?horasdia 0))
	=>
	(bind ?horasdia (pregunta-numerica "Cuantas horas durara la visita cada dia? " 1 8 ))
	(modify ?u (horasDia ?horasdia))
  (focus recopilacion-prefs)
)

;;; Modulo recopilacion PREFERENCIAS

(deffacts recopilacion-prefs::hechos-iniciales "Establece hechos para poder recopilar informacion"
	(autores ask)
	(epocas ask)
	(estilos ask)
	(temas ask)
	(preferencias)
)

(defrule recopilacion-prefs::establecer-epoca "Establece si tiene preferencias sobre algunas epocas"
	?pref <- (preferencias)
	?hecho <- (epocas ask)
	=>
	(bind ?e (pregunta-si-no "Esta interesado en alguna(s) epoca(s) en concreto?"))
	(if (eq ?e TRUE)
		then
		(bind $?obj-epocas (find-all-instances ((?inst Epoca)) TRUE))
		(bind $?nom-epocas (create$ ))
		(loop-for-count (?i 1 (length$ $?obj-epocas)) do
			(bind ?curr-obj (nth$ ?i ?obj-epocas))
			(bind ?curr-nom (send ?curr-obj get-nombre_caracteristica))
			(bind $?nom-epocas(insert$ $?nom-epocas (+ (length$ $?nom-epocas) 1) ?curr-nom))
		)
		; (printout t "?curr-nom" crlf)
		(bind ?escogido (pregunta-multi "Escoja las epocas en las que esta interesado: " $?nom-epocas))

		(bind $?respuesta (create$ ))
		(loop-for-count (?i 1 (length$ ?escogido)) do
			(bind ?curr-index (nth$ ?i ?escogido))
			(bind ?curr-epc (nth$ ?curr-index ?obj-epocas))
			(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-epc))
		)
		(modify ?pref (epocas $?respuesta))
	)
	(retract ?hecho)
)

(defrule recopilacion-prefs::establecer-autor "Establece si tiene preferencias sobre algunos autores"
	?pref <- (preferencias)
	?hecho <- (autores ask)
	=>
	(bind ?e (pregunta-si-no "Esta interesado en algun(os) autor(es) en concreto?"))
	(if (eq ?e TRUE)
	then (bind $?obj-autores (find-all-instances ((?inst Autor)) TRUE))
	(bind $?nom-autores (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-autores)) do
		(bind ?curr-obj (nth$ ?i ?obj-autores))
		(bind ?curr-nom (send ?curr-obj get-nombre_caracteristica))
		(bind $?nom-autores(insert$ $?nom-autores (+ (length$ $?nom-autores) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja los autores en los que esta interesado: " $?nom-autores))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-atr (nth$ ?curr-index ?obj-autores))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(modify ?pref (autores $?respuesta))
	)
	(retract ?hecho)
)

(defrule recopilacion-prefs::establecer-tema "Establece si tiene preferencias sobre algunos temas"
	?pref <- (preferencias)
	?hecho <- (temas ask)
	=>
	(bind ?e (pregunta-si-no "Esta interesado en algun(os) tema(s) en concreto?"))
	(if (eq ?e TRUE)
	then (bind $?obj-temas (find-all-instances ((?inst Tema)) TRUE))
	(bind $?nom-temas (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-temas)) do
		(bind ?curr-obj (nth$ ?i ?obj-temas))
		(bind ?curr-nom (send ?curr-obj get-nombre_caracteristica))
		(bind $?nom-temas(insert$ $?nom-temas (+ (length$ $?nom-temas) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja los temas en los que esta interesado: " $?nom-temas))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-atr (nth$ ?curr-index ?obj-temas))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(modify ?pref (temas $?respuesta))
	)
	(retract ?hecho)
)

(defrule recopilacion-prefs::establecer-estilo "Establece si tiene preferencias sobre algunos estilos"
	?pref <- (preferencias)
	?hecho <- (estilos ask)
	=>
	(bind ?e (pregunta-si-no "Esta interesado en algun(os) estilo(s) en concreto?"))
	(if (eq ?e TRUE)
	then (bind $?obj-estilos (find-all-instances ((?inst Estilo)) TRUE))
	(bind $?nom-estilos (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-estilos)) do
		(bind ?curr-obj (nth$ ?i ?obj-estilos))
		(bind ?curr-nom (send ?curr-obj get-nombre_caracteristica))
		(bind $?nom-estilos(insert$ $?nom-estilos (+ (length$ $?nom-estilos) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja los estilos en los que esta interesado: " $?nom-estilos))

	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-atr (nth$ ?curr-index ?obj-estilos))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(modify ?pref (estilos $?respuesta))
	)
	(retract ?hecho)
	(focus recopilacion-conocimiento)
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE PREGUNTAS DE CONOCIMIENTO				----------
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

(deffacts recopilacion-conocimiento::hechos-iniciales "Establece hechos para poder recopilar informacion"
  (pregunta-conocimiento (pregunta "Quien pinto Las Meninas?") (respuestas "Pablo Picasso" "Diego Velazquez" "Francisco de Goya" "Leonardo Da Vinci") (respuesta_correcta 2))
	(pregunta-conocimiento (pregunta "A que movimiento pertenecio el pintor Joaquin Sorolla?") (respuestas "Luminismo" "Barroco" "Romanticismo" "Impresionismo") (respuesta_correcta 1))
	(pregunta-conocimiento (pregunta "Cual de estos pintores NO pertenecio al movimiento barroco?") (respuestas "Diego Velazquez" "Luca Giordano" "Sebastiano Conca" "El Bosco") (respuesta_correcta 4))
	(pregunta-conocimiento (pregunta "En que siglo pinto principalmente El Bosco?") (respuestas "XVI" "XIX" "XV" "XVIII") (respuesta_correcta 3))
	(pregunta-conocimiento (pregunta "Que tema predomina en las pinturas de Fra Angelico?") (respuestas "Mitologia" "Religion" "Critica Social" "Paisajismo") (respuesta_correcta 2))
	(pregunta-conocimiento (pregunta "De quien hizo un retrato el pintor Vicente Lopez Portana?") (respuestas "Carlos III" "Luis I" "Francisco de Goya" "Montserrat Guell") (respuesta_correcta 3))
	(pregunta-conocimiento (pregunta "Cual de los siguientes cuadros fue pintado por Francisco de Goya?") (respuestas "El 3 de mayo en Madrid" "El Jardin de las delicias" "La creacion" "Chicos en el agua") (respuesta_correcta 1))
	(pregunta-conocimiento (pregunta "A que movimiento pertenece la pintura El juicio de Paris?") (respuestas "Prerromanticismo" "Barroco" "Impresionismo" "Paisajismo britanico") (respuesta_correcta 2))
	(pregunta-conocimiento (pregunta "Durante que siglo tuvo lugar mayormente el movimiento conocido como Pintura Flamenca?") (respuestas "XV" "XVII" "XIX" "XX") (respuesta_correcta 1))
	(pregunta-conocimiento (pregunta "Quien pinto La rendicion de Breda?") (respuestas "El Bosco" "Fra Angelico" "Diego Velazquez" "Francisco de Goya") (respuesta_correcta 3))
)

(defrule recopilacion-conocimiento::hacer-pregunta "Pregunta tipo test"
	?p <- (pregunta-conocimiento (pregunta ?pregunta) (respuestas $?respuestas) (acierto Indef) (respuesta_correcta ?respuesta_correcta))
	=>
	(bind ?r (pregunta-test ?pregunta $?respuestas))
  (if(eq ?r ?respuesta_correcta)
  then (bind ?acierto TRUE)
  else (bind ?acierto FALSE))
	(modify ?p (acierto ?acierto))
)

(defrule recopilacion-conocimiento::poner-nota "Pone la nota de conocimiento segun el numero de aciertos"
  (not (pregunta-conocimiento (acierto Indef)))
  (not (nota-conocimiento))
  =>
  (bind ?nota (length$ (find-all-facts ((?p pregunta-conocimiento)) (eq ?p:acierto TRUE))))
  (assert (nota-conocimiento (nota ?nota)))
  (do-for-all-facts ((?p pregunta-conocimiento)) (retract ?p))
    (focus rel-circulares)
)

;;;----------------------------------------------------------------------------------------------------
;;;----------------- MODULO DE UNAS COSAS --------------
;;;---------------------------------------------------------------
(defmodule rel-circulares
	(import MAIN ?ALL)
	(export ?ALL)
	)

	(deffacts rel-circulares::hechos-iniciales
		(evalua-obras)
	)

	;(deftemplate inferir-datos::evaluar
	;	(slot obra (type INSTANCE)))

	(deftemplate rel-circulares::evaluar
		(slot obra (type INSTANCE)))

	(defrule rel-circulares::evaluar-obras
		?f <- (evalua-obras)
		=>
		(do-for-all-instances ((?inst Obra)) TRUE (assert (evaluar (obra ?inst))))
		(retract ?f)
	)

	(defrule rel-circulares::caracteristica-tiene-obra-circular
		?fact <- (evaluar (obra ?o))
		=>
		(bind ?c (send ?o get-tiene))
		(loop-for-count (?i 1 (length$ ?c)) do
				(bind ?curr-carac (nth$ ?i ?c))
				(bind ?obras-carac (send ?curr-carac get-tiene_obra))
				(if (not (member$ ?o ?obras-carac)) then
				(slot-insert$ ?curr-carac tiene_obra 1 ?o))
		)
		(retract ?fact)
	)

	(defrule rel-circulares::siguiente-modulo
		(not (evaluar))
		(not (evalua-obras))
		=>
		(focus inferir-datos)
	)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE INFERENCIAS DE DATOS				---------- 				MODULO DE INFERENCIAS DE DATOS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se hace la abstraccion de los datos obtenidos del modulo de pregunatas

(defrule inferir-datos::tipo-grupo
	?u <- (pregunta-grupo (tamano ?tamano) (nino ?n) (dia ?dia) (horasDia ?horasDia))
	(not (tipo-grupo-definido))
	=>
	(if (eq ?n TRUE)
		then (bind ?tipoGrupo FAMILIA)
		else
			(if (> ?tamano 10)
				then (bind ?tipoGrupo GRUPO_G)
				else
					(if (> ?tamano 1) then (bind ?tipoGrupo GRUPO_P)
						else (bind ?tipoGrupo SOLO)
					)
			)
	)
	(bind ?visitaNueva (make-instance visita-museo of Visita))
	(send ?visitaNueva put-tipo_visita ?tipoGrupo)
	(send ?visitaNueva put-dias ?dia)
	(send ?visitaNueva put-horas_diarias ?horasDia)
	(assert (tipo-grupo-definido))
)

(defrule inferir-datos::tipo-conocimiento-grupo
	?u <- (nota-conocimiento (nota ?nota))
	?visita <- (object (is-a Visita))
	(not (tipo-conocimiento-grupo))
	=>
	(if (< ?nota 2) then (bind ?tipoCon BAJO)
		else (if (< ?nota 5) then (bind ?tipoCon MEDIO_BAJO)
			else (if (< ?nota 8) then (bind ?tipoCon MEDIO_ALTO)
				else (bind ?tipoCon ALTO)
			)
		)
	)
	(send ?visita put-conocimiento ?tipoCon)
	(assert (tipo-conocimiento-grupo))
)

(defrule inferir-datos::visita-preferencias
	?u <- (preferencias (epocas $?epocas)(autores $?autores)(temas $?temas)(estilos $?estilos))
	?visita <- (object (is-a Visita))
	=>
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ $?epocas)) do
		(bind ?curr-atr (nth$ ?i $?epocas))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(loop-for-count (?i 1 (length$ $?autores)) do
		(bind ?curr-atr (nth$ ?i $?autores))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(loop-for-count (?i 1 (length$ $?temas)) do
		(bind ?curr-atr (nth$ ?i $?temas))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(loop-for-count (?i 1 (length$ $?estilos)) do
		(bind ?curr-atr (nth$ ?i $?estilos))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-atr))
	)
	(send ?visita put-prefiere $?respuesta)
)

(defrule inferir-datos::anadir-obra "si cumple alguna de las preferencias se anade"
	?visita <- (object (is-a Visita))
	(not (lista-cuadros))
	=>
	(bind $?visita-pref (send ?visita get-prefiere))
	(bind $?cuadros (create$ ))
	(loop-for-count (?i 1 (length$ $?visita-pref)) do
		(bind ?curr-pref (nth$ ?i $?visita-pref))
		(bind $?curr-pref-cuadros (send ?curr-pref get-tiene_obra))
		(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
			(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
			(if (not (member$ ?curr-pref-cuadros-cuadro $?cuadros))
				then (bind $?cuadros(insert$ $?cuadros (+ (length$ $?cuadros) 1) ?curr-pref-cuadros-cuadro))
			)
		)
	)
	(assert (lista-cuadros (nombre "recomendadas") (recomendaciones $?cuadros)))
)

(defrule inferir-datos::anadir-obra-secundaria "si cumple alguna de las preferencias secundarias se anade"
	?visita <- (object (is-a Visita))
	(lista-cuadros (nombre "recomendadas")(recomendaciones $?cuadros))
	=>
	(bind $?visita-pref (send ?visita get-prefiere))
	(bind $?cuadrosAnadir (create$ ))
	(loop-for-count (?i 1 (length$ $?visita-pref)) do
		(bind ?curr-pref (nth$ ?i $?visita-pref))
		(switch (class ?curr-pref)
				(case Autor then
					(bind ?estilo-autor (send ?curr-pref get-pertenece_a))
					(bind $?curr-pref-cuadros (send ?estilo-autor get-tiene_obra))
					(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
						(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
						(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
							then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
						)
					)
					(bind ?epoca-autor (send ?curr-pref get-vivio_durante))
					(bind $?curr-pref-cuadros (send ?epoca-autor get-tiene_obra))
					(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
						(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
						(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
							then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
						)
					)
					)
				(case Tema then
					(bind $?estilo-tema (send ?curr-pref get-tiene_estilo))
					(loop-for-count (?i 1 (length$ $?estilo-tema)) do
						(bind ?curr-estilo (nth$ ?i ?estilo-tema))
						(bind $?curr-pref-cuadros (send ?curr-estilo get-tiene_obra))
						(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
							(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
							(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
								then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
							)
						)
					)
					)
				(case Estilo then
					(bind $?temas-estilo (send ?curr-pref get-tiene_tema))
					(loop-for-count (?i 1 (length$ $?temas-estilo)) do
						(bind ?curr-tema (nth$ ?i ?temas-estilo))
						(bind $?curr-pref-cuadros (send ?curr-tema get-tiene_obra))
						(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
							(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
							(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
								then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
							)
						)
					)
					(bind ?autores-estilo (send ?curr-pref get-tiene_autor))
					(loop-for-count (?i 1 (length$ $?autores-estilo)) do
						(bind ?curr-autor (nth$ ?i ?autores-estilo))
						(bind $?curr-pref-cuadros (send ?curr-autor get-tiene_obra))
						(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
							(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
							(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
								then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
							)
						)
					)
					)
				(case Epoca then
					(bind $?estilos-epoca (send ?curr-pref get-tiene_estilo))
					(loop-for-count (?i 1 (length$ $?estilos-epoca)) do
						(bind ?curr-estilo (nth$ ?i ?estilos-epoca))
						(bind $?curr-pref-cuadros (send ?curr-estilo get-tiene_obra))
						(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
							(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
							(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
								then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
							)
						)
					)
					(bind $?autores-epoca (send ?curr-pref get-tiene_autor))
					(loop-for-count (?i 1 (length$ $?autores-epoca)) do
						(bind ?curr-autor (nth$ ?i ?autores-epoca))
						(bind $?curr-pref-cuadros (send ?curr-autor get-tiene_obra))
						(loop-for-count (?i 1 (length$ $?curr-pref-cuadros)) do
							(bind ?curr-pref-cuadros-cuadro (nth$ ?i ?curr-pref-cuadros))
							(if (and (not (member$ ?curr-pref-cuadros-cuadro $?cuadrosAnadir))(not (member$ ?curr-pref-cuadros-cuadro $?cuadros)))
								then (bind $?cuadrosAnadir(insert$ $?cuadrosAnadir (+ (length$ $?cuadrosAnadir) 1) ?curr-pref-cuadros-cuadro))
							)
						)
					)
					)
		)
	)
	(assert (lista-cuadros (nombre "recomendadasIndirect") (recomendaciones $?cuadrosAnadir)))
)

(defrule inferir-datos::no-recomendadas
	(lista-cuadros (nombre "recomendadas") (recomendaciones $?cuadros))
	(lista-cuadros (nombre "recomendadasIndirect") (recomendaciones $?cuadrosSecundarios))
	=>
	(bind $?cuadros-no-rec (find-all-instances ((?inst Obra)) (and (not (member ?inst $?cuadros)) (not (member ?inst $?cuadrosSecundarios)))))
	(assert (lista-cuadros (nombre "no recomendadas") (recomendaciones $?cuadros-no-rec)))
)


(defrule inferir-datos::complejidad "regla para calcular la complejidad de todos los cuadros"
  (not (complejidad-cuadro))
  =>
  (bind $?obras (find-all-instances ((?inst Obra)) TRUE))
	(loop-for-count (?i 1 (length$ $?obras)) do
		(bind ?curr-obra (nth$ ?i $?obras))
		;(bind ?curr-obra-dim (send ?curr-obra get-dimensiones))
		(bind ?curr-obra-dim 1)
		(bind ?curr-obra-elem (send ?curr-obra get-numero_elementos))
    (bind ?compl (+ (* ?curr-obra-dim 0.35) (* ?curr-obra-elem 0.65)))
    (send ?curr-obra put-complejidad ?compl)
	)
  (assert (complejidad-cuadro))
)

	(defrule inferir-datos::siguiente-modulo "Pasamos al siguiente modulo"
		(complejidad-cuadro)
		(lista-cuadros (nombre "recomendadas"))
		(lista-cuadros (nombre "no recomendadas"))
		=>
		(focus sintesis)
	)

;(defrule inferir-datos::check-listas-2
	;(declare (salience 1))
	;(lista-cuadros (nombre "recomendadas") (recomendaciones $?cuadros-rec))
	;(lista-cuadros (nombre "no recomendadas") (recomendaciones $?cuadros-no-rec))
	;?o <- (object (is-a Obra))
	;=>
	;(printout t (send ?o get-nombre) crlf)
;)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE FILTRADO			 		---------- 							MODULO DE FILTRADO
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;(defrule filtrar::descartar-nivel-conocimiento
;;;  (tipo-conocimiento-grupo)
;  ?lista <- (lista-cuadros (nombre "recomendadas") (recomendaciones $?cuadros))
;	?visita <- (object (is-a Visita))
;  (not (filtrado-conocimiento))
;  =>
;	(printout t "FILTRADO" crlf)
;  (bind ?con (send ?visita get-conocimiento))
;	(bind $?cuadros-finales (create$ ))
;	(loop-for-count (?i 1 (length$ $?cuadros)) do
;			(bind ?curr-cuadro (nth$ ?i ?curr-cuadros))
;      (bind ?curr-cuadro-relevancia (send ?curr-cuadro get-relevancia))
;			(if (and (eq ?con BAJO) (< ?curr-cuadro-relevancia 3))
;				then (bind $?cuadros-finales (delete-member$ $?cuadros ?curr-cuadro))
;			)
;			(if (and (eq ?con MEDIO-BAJO) (< ?curr-cuadro-relevancia 2))
;				then (bind $?cuadros-finales (delete-member$ $?cuadros ?curr-cuadro))
;			)
;			(if (and (eq ?con MEDIO-ALTO) (< ?curr-cuadro-relevancia 1))
;				then (bind $?cuadros-finales (delete-member$ $?cuadros ?curr-cuadro))
;			)
;	)
;  (modify ?lista (nombre "recomendadas") (recomendaciones $?cuadros-finales))
;  (assert (filtrado-conocimiento))
;)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE SINTESIS			 		---------- 							MODULO DE SINTESIS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

(defmodule sintesis
	(import MAIN ?ALL)
	(export ?ALL)
)

(defglobal ?*num-dias* = 0)

(deffunction sintesis::get-tiempo-obra (?obra ?vis)
	(bind ?complejidad (send ?obra get-complejidad))
	(bind ?tipus (send ?vis get-tipo_visita))
	(bind ?conocimiento (send ?vis get-conocimiento))
	(bind ?constGrupo 1.0)
	(bind ?constCono 1.0)
	(switch ?tipus
			(case SOLO then (bind ?constGrupo 1.0))
			(case FAMILIA then (bind ?constGrupo 1.2))
			(case GRUPO_P then (bind ?constGrupo 1.35))
			(case GRUPO_G then (bind ?constGrupo 1.5))
	)
	(switch ?conocimiento
			(case BAJO then (bind ?constCono 1.0))
			(case MEDIO_BAJO then (bind ?constCono 1.2))
			(case MEDIO_ALTO then (bind ?constCono 1.35))
			(case ALTO then (bind ?constCono 1.5))
	)
	(bind ?tiempo (* 5 (* ?constGrupo (* ?constCono ?complejidad))))
	?tiempo
)

(deffunction sintesis::obra-cap-al-dia (?obra ?dia ?vis)
	;CALCULAMOS LOS MEMES DE TIEMPO
	(bind ?tiempo_restante (- (get-tiempo-obra ?obra ?vis) (send ?dia get-tiempo_restante)))
	(bind ?cabe (< ?tiempo_restante -1))
	?cabe
)

(deftemplate sintesis::obras-a-meter
	(multislot obras (type INSTANCE))
)

(deftemplate sintesis::meter-dia
	(slot dia (type INSTANCE))
)

(defrule sintesis::make-dia
	(not (meter-dia))
	?v <- (object (is-a Visita) (dias ?dias))
	(test (> ?dias 0))
	=>
	(bind ?diaNuevo (make-instance (sym-cat dia- (gensym)) of Dia_En_El_Museo))
	(bind ?dias-restantes (send ?v get-dias))
	(bind ?horas-diarias (send ?v get-horas_diarias))
	(send ?v put-dias (- ?dias-restantes 1))
	(send ?diaNuevo put-tiempo_restante (* 60 ?horas-diarias))
	(bind ?*num-dias* (+ 1 ?*num-dias*))
	(send ?diaNuevo put-Dia ?*num-dias*)
;;;	(printout t "Dia" crlf)
	(assert (meter-dia (dia ?diaNuevo)))
)

(defrule sintesis::descartar-dia
	?f <- (meter-dia (dia ?dia))
	(meter-dia)
	?o <- (obras-a-meter (obras $?obras))
	?vis <- (object (is-a Visita))
	(test (not (any-instancep ((?inst Obra)) (and (obra-cap-al-dia ?inst ?dia ?vis) (member ?inst ?obras)))))
	=>
;;;	(printout t crlf)
	(retract ?f)
)

(defrule sintesis::insertar-epoca
	(declare (salience 5))
	(not (obras-a-meter))
	?e <- (object (is-a Epoca))
	(not (epoca-insertada ?e))
	(lista-cuadros (nombre "recomendadas") (recomendaciones $?cuadros))
	=>
	(bind $?obras (find-all-instances ((?inst Obra)) (and (member ?inst ?cuadros) (member ?inst (send ?e get-tiene_obra)))))
	(assert (obras-a-meter (obras $?obras)))
	(assert (epoca-insertada ?e))
)

(defrule sintesis::insertar-epoca-secundaria
	(declare (salience 3))
	(not (obras-a-meter))
	?e <- (object (is-a Epoca))
	(not (epoca-insertada-secundario ?e))
	(lista-cuadros (nombre "recomendadasIndirect") (recomendaciones $?cuadros))
	=>
	(bind $?obras (find-all-instances ((?inst Obra)) (and (member ?inst ?cuadros) (member ?inst (send ?e get-tiene_obra)))))
	(assert (obras-a-meter (obras $?obras)))
	(assert (epoca-insertada-secundario ?e))
)

(defrule sintesis::insertar-epoca-terciario
	(not (obras-a-meter))
	?e <- (object (is-a Epoca))
	(not (epoca-insertada-terciario ?e))
	(lista-cuadros (nombre "no recomendadas") (recomendaciones $?cuadros))
	=>
	(bind $?obras (find-all-instances ((?inst Obra)) (and (member ?inst ?cuadros) (member ?inst (send ?e get-tiene_obra)))))
	(assert (obras-a-meter (obras $?obras)))
	(assert (epoca-insertada-terciario ?e))
)

(defrule sintesis::descartar-epoca
	(declare (salience 5))
	?f <- (obras-a-meter (obras $?o))
	(test (= 0 (length$ ?o)))
	=>
	(retract ?f)
)

(defrule sintesis::insertar-obras
	?f <- (obras-a-meter (obras $?o))
	(meter-dia (dia ?dia))
	?vis <- (object (is-a Visita))
	=>
	(bind ?new_obras (create$))
	(loop-for-count (?i 1 (length$ $?o)) do
		(bind ?curr-obra (nth$ ?i $?o))
		(if (obra-cap-al-dia ?curr-obra ?dia ?vis) then
;;;			(printout t (send ?curr-obra get-nombre) crlf)
			(bind ?horas-dia (send ?dia get-tiempo_restante))
			(send ?dia put-tiempo_restante (- ?horas-dia (get-tiempo-obra ?curr-obra ?vis)))
			(slot-insert$ ?dia visitamos (+ (length$ (send ?dia get-visitamos)) 1) ?curr-obra)
		else (bind ?new_obras (insert$ ?new_obras (+ (length$ ?new_obras) 1) ?curr-obra)))
	)
	(modify ?f (obras $?new_obras))
)

(defrule sintesis::ir-a-visita
	?v <- (object (is-a Visita) (dias ?dias))
	(test (eq ?dias 0))
	=>
	(focus imprimir-visita)
)

;;;----------------------------------------------------------------------------------------------------
;;;----------------- MODULO DE IMPRESION DE RESULTADO --------------
;;;---------------------------------------------------------------

	;;; Modulo de de impresion del resultado por pantalla
	(defmodule imprimir-visita
		(import MAIN ?ALL)
		(import recopilacion-usuario ?ALL)
		(import recopilacion-prefs ?ALL)
		(import recopilacion-conocimiento ?ALL)
		(import inferir-datos ?ALL)
		(import sintesis ?ALL)
		(import filtrar ?ALL)
		(export ?ALL)
	)

	(deftemplate imprimir-visita::min
		(slot count (type INTEGER))
		)

	(deffacts imprimir-visita::hechos-iniciales
		(min (count 1))
	)

	(defrule imprimir-visita::imprime-formato "regla inicial"
		(declare (salience 10))
		=>
		(printout t crlf)
		(printout t "-------------------------------------------------------------" crlf)
		(printout t "-------------------- Visita Personalizada -------------------" crlf)
		(printout t "-------------------------------------------------------------" crlf)
		(printout t "--------------- Epoca - Obra - Autor - Tiempo ---------------" crlf)
		(printout t crlf)
	)


	(defrule imprimir-visita::imprimir-dia
		?min <- (min (count ?n))
		?Dia <- (object (is-a Dia_En_El_Museo) (Dia ?numDia))
		?vis <- (object (is-a Visita))
		(test (eq ?n ?numDia))
		=>
		(format t "Los cuadros a visitar durante el dia %d son:" ?n)
		(printout t crlf)
		(printout t "-------------------------------------------------------------" crlf)
		(printout t crlf)
		(bind $?obras(send ?Dia get-visitamos))
		(loop-for-count (?i 1 (length$ $?obras)) do
				(bind ?curr-obra (nth$ ?i $?obras))
				(bind ?nom-obra (send ?curr-obra get-nombre))
				(bind $?caracteristicas (send ?curr-obra get-tiene))
				(loop-for-count (?i 1 (length$ $?caracteristicas)) do
						(bind ?curr-caract (nth$ ?i $?caracteristicas))
						(if (eq (class ?curr-caract) Autor) then
							(bind ?nom-autor(send ?curr-caract get-nombre_caracteristica))
						)
						(if (eq (class ?curr-caract) Epoca) then
							(bind ?nom-epoca(send ?curr-caract get-nombre_caracteristica))
						)
				)
				(bind ?tiempo-obra(get-tiempo-obra ?curr-obra ?vis))
;;;				(printout t crlf)
				(format t "%s - %s - %s - %d min" ?nom-epoca ?nom-obra ?nom-autor ?tiempo-obra)
				(printout t crlf)
		)
		(printout t crlf)
		(assert (min (count (+ ?n 1))))
		(retract ?min)
	)
