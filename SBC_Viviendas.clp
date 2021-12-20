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

(defmodule preproceso-datos
    (import MAIN ?ALL)
    (export ?ALL)
)

;;; Módulo para la inferencia de datos
(defmodule inferencia-datos
	(import MAIN ?ALL)
    ;(import preguntas-usuario ?ALL)
	(export ?ALL)
)

(defmodule imprimir-preferencias
	(import MAIN ?ALL)
    ;(import preguntas-usuario ?ALL)
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
(deffunction MAIN::pregunta-multi (?pregunta $?valores-posibles)
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
(deffunction MAIN::pregunta-multi-rango (?pregunta ?min ?max)
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

(deffunction MAIN::respeta-preferencias-vivienda (?inst $?car)
    (bind ?pts 0)
    (progn$ (?c ?car)
        (if (eq ?c amueblado)
            then
            (bind ?var (send ?inst get-amueblado))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c vistas)
            then
            (bind ?var (send ?inst get-vistas))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c vistasMar)
            then
            (bind ?var (send ?inst get-vistasMar))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c vistasMontaña)
            then
            (bind ?var (send ?inst get-vistasMontaña))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c balcon)
            then
            (bind ?var (send ?inst get-balcon))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c cocinaIntegrada)
            then
            (bind ?var (send ?inst get-cocinaIntegrada))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c sistemaAlarma)
            then
            (bind ?var (send ?inst get-sistemaAlarma))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c garaje)
            then
            (bind ?var (send ?inst get-garaje))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c jardin)
            then
            (bind ?var (send ?inst get-jardin))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c sotano)
            then
            (bind ?var (send ?inst get-sotano))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c aireAcondicionado)
            then
            (bind ?var (send ?inst get-aireAcondicionado))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c patio)
            then
            (bind ?var (send ?inst get-patio))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c terraza)
            then
            (bind ?var (send ?inst get-terraza))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c gimnasio)
            then
            (bind ?var (send ?inst get-gimnasio))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c primeraLineaDeMar)
            then
            (bind ?var (send ?inst get-primeraLineaDeMar))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c obraNueva)
            then
            (bind ?var (send ?inst get-obraNueva))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c pisicina)
            then
            (bind ?var (send ?inst get-pisicina))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c estudio)
            then
            (bind ?var (send ?inst get-estudio))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c calefaccion)
            then
            (bind ?var (send ?inst get-calefaccion))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c ascensor)
            then
            (bind ?var (send ?inst get-ascensor))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c soleadoMañana)
            then
            (bind ?var (send ?inst get-soleadoMañana))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c soleadoTarde)
            then
            (bind ?var (send ?inst get-soleadoTarde))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
        (if (eq ?c soleadoSiempre)
            then
            (bind ?var (send ?inst get-soleadoSiempre))
            (if (eq ?var TRUE)
                then
                (bind ?pts (+ ?pts 2))
            )
        )
    )
    ?pts
)

(deffunction calculate-points (?lejos ?var)
    (bind ?pts 0)
    (if (eq ?lejos TRUE)
        then
        (if (> ?var 1500)
            then
            (bind ?pts (+ ?pts 1))

            else (if (> ?var 3000)
                then
                (bind ?pts (+ ?pts 1))
            )
        )
        else (if (< ?var 2000)
            then
            (bind ?pts (+ ?pts 1))

            else (if (< ?var 1000)
                then
                (bind ?pts (+ ?pts 1))
            )
        )
    )
    ?pts
)

(deffunction MAIN::respeta-preferencias-ciudad (?lejos ?inst $?car)
    (bind ?pts 0)
    (progn$ (?c ?car)
        (if (eq ?c aeropuerto)
            then
            (bind ?var (send ?inst get-distMinAeropuerto))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c bar)
            then
            (bind ?var (send ?inst get-distMinBar))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c bus)
            then
            (bind ?var (send ?inst get-distMinBus))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c cafeteria)
            then
            (bind ?var (send ?inst get-distMinCafeteria))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c centroComercial)
            then
            (bind ?var (send ?inst get-distMinCentroComercial))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c centroDia)
            then
            (bind ?var (send ?inst get-distMinCentroDia))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c cine)
            then
            (bind ?var (send ?inst get-distMinCine))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c clubNoct)
            then
            (bind ?var (send ?inst get-distMinClubNoct))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c escuela)
            then
            (bind ?var (send ?inst get-distMinEscuela))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c geriatrico)
            then
            (bind ?var (send ?inst get-distMinGeriatrico))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c grandesAlm)
            then
            (bind ?var (send ?inst get-distMinGrandesAlm))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c hospital)
            then
            (bind ?var (send ?inst get-distMinHospital))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c instituto)
            then
            (bind ?var (send ?inst get-distMinInstituto))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c jardin)
            then
            (bind ?var (send ?inst get-distMinJardin))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c mercado)
            then
            (bind ?var (send ?inst get-distMinMercado))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c metro)
            then
            (bind ?var (send ?inst get-distMinMetro))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c museo)
            then
            (bind ?var (send ?inst get-distMinMuseo))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c pabellon)
            then
            (bind ?var (send ?inst get-distMinPabellon))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c parque)
            then
            (bind ?var (send ?inst get-distMinParque))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c playa)
            then
            (bind ?var (send ?inst get-distMinPlaya))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c plaza)
            then
            (bind ?var (send ?inst get-distMinPlaza))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c restaurante)
            then
            (bind ?var (send ?inst get-distMinRestaurante))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c rocordromo)
            then
            (bind ?var (send ?inst get-distMinRocodromo))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c supermercado)
            then
            (bind ?var (send ?inst get-distMinSupermercado))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c teatro)
            then
            (bind ?var (send ?inst get-distMinTeatro))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c tram)
            then
            (bind ?var (send ?inst get-distMinTram))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c tren)
            then
            (bind ?var (send ?inst get-distMinTren))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c universidad)
            then
            (bind ?var (send ?inst get-distMinUniversidad))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c guarderia)
            then
            (bind ?var (send ?inst get-distMinGuarderia))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c zonaVerde)
            then
            (bind ?var (send ?inst get-distMinZonaVerde))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
        (if (eq ?c campoDeporte)
            then
            (bind ?var (send ?inst get-distMinCampoDeporte))
            (bind ?pts (+ ?pts (calculate-points ?lejos ?var)))
        )
    )
    ?pts
)

(deffunction MAIN::determinar-puntos-calidad (?calidad ?var)
    (bind ?peligro (send ?var get-calBarrio))
    (bind ?pts 0)
    (if (eq ?calidad buena)
        then 
        (if (eq ?peligro buena)
            then
            (bind ?pts (+ ?pts 1))
        )
        
        else (if (eq ?calidad media)
            then
            (if (eq ?peligro buena)
                then
                    (bind ?pts (+ ?pts 2))
                    else (if (eq ?peligro media)
                        then
                        (bind ?pts (+ ?pts 2))
                    )
            )

            else (if (eq ?calidad baja)
                then
                (if (eq ?peligro buena)
                then
                    (bind ?pts (+ ?pts 2))
                    else (if (eq ?peligro media)
                        then
                        (bind ?pts (+ ?pts 2))

                        else (bind ?pts (+ ?pts 1))
                    )
                )
            )
        )
    )
    ?pts
)

(deffunction MAIN::respeta-dormitorios (?inst ?minDormDoubles ?minDormSingles ?maxDormDoubles ?maxDormSingles)
    (bind ?pts 0)
    (bind ?singles (send ?inst get-numDormitoriosSimples))
    (bind ?doubles (send ?inst get-numDormitoriosDobles))

    (if (and (>= ?singles ?minDormSingles) (>= ?doubles ?maxDormDoubles))
        then
        (bind ?have (+ (- ?singles ?minDormSingles) (* (- ?doubles ?maxDormDoubles) 2)))
        (bind ?need (- ?maxDormSingles ?minDormSingles))
        
        (if (>= ?have ?need)
            then
            (bind ?dif (- ?maxDormSingles ?singles))
            (if (<= ?dif 0)
                then
                (bind ?pts ?maxDormSingles)

                else 
                (bind ?pts ?singles)
            )
        )
    )
    ?pts
)

(deffunction MAIN::puntos-tipo-vivienda (?inst $?tipos)
    (bind ?pts 0)
    (progn$ (?t ?tipos)
        (if (eq (type ?inst) ?t)
            then
            (bind ?pts (+ ?pts 1))
        )
    )
    ?pts
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
)

(defrule preguntas-usuario::establecer-plazo "Establecer si pretenden vivir a corto o largo plazo"
    ?u <- (pregunta-usuario (cortoPlazo ?cortoPlazo) (bebesFuturo ?bebesFuturo))
    (test (eq ?cortoPlazo NONE))
    =>
    (bind ?e (pregunta-si-no "¿Buscan vivienda para vivir en ella durante un corto plazo? "))
    
    (if (eq ?e FALSE)
        then
        (bind ?f (pregunta-si-no "¿Planean tener hijos en el futuro? "))
        
        else
        (bind ?f FALSE)
    )
    
    (modify ?u (cortoPlazo ?e) (bebesFuturo ?f))
    (focus recopilacion-preferencias)
)

;;************************************************
;;**         RECOPILACION PREFERENCIAS          **
;;************************************************
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
    ?hecho <- (caracteristicas-vivienda ask)
    ?pref <- (preferencias)
    ?p <- (slots-and-names (nombres-vivienda $?nombres-vivienda) (campos-vivienda $?campos-vivienda))
    =>
    (bind ?escogido (pregunta-multi "¿Qué características encuentra necesarias en una vivienda? (0 si no tiene preferencias) " $?nombres-vivienda))
    (bind $?respuesta (create$ ))
    (loop-for-count (?i 1 (length$ ?escogido)) do
      (bind ?index (nth$ ?i ?escogido))
      (if (> ?index 0)
        then
        (bind ?slot-name (nth$ ?index $?campos-vivienda))
        (bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?slot-name))
      )
    )
    (retract ?hecho)
    (modify ?pref (caracteristicas-vivienda ?respuesta))
    (assert (calidad-ciudad ask))
)

(defrule recopilacion-preferencias::establecer-calidad-barrio "Establecer la calidad o calidades del barrio al que desean mudarse"
    ?hecho <- (calidad-ciudad ask)
    ?pref <- (preferencias)
    ?p <- (slots-and-names (nombres-calidad $?nombres-calidad) (campos-calidad $?campos-calidad))
    =>
    (bind ?calidad (pregunta-indice "¿Qué calidad encuentran aceptable en el barrio al que desean mudarse?" $?nombres-calidad))
    (retract ?hecho)
    (modify ?pref (calidad-barrio ?calidad))
    (assert (caracteristicas-ciudad ask))
)

(defrule recopilacion-preferencias::establecer-preferencia-atributos-ciudad "Establecer preferencia de servicios de la ciudad"
    ?hecho <- (caracteristicas-ciudad ask)
    ?pref <- (preferencias)
    ?p <- (slots-and-names (nombres-ciudad $?nombres-ciudad) (campos-ciudad $?campos-ciudad))
    =>
    (bind ?escogido (pregunta-multi "¿Qué servicios preferiria cercanos a su vivienda? (0 si no tiene preferencias) " $?nombres-ciudad))
    (bind $?respuesta (create$ ))
    (loop-for-count (?i 1 (length$ ?escogido)) do
      (bind ?index (nth$ ?i ?escogido))
      (if (> ?index 0)
        then
        (bind ?slot-name (nth$ ?index $?campos-ciudad))
        (bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?slot-name))
      )
    )
    (retract ?hecho)
    (modify ?pref (caracteristicas-ciudad ?respuesta))
    (assert (caracteristicas-ciudad-lejos ask))
)

(defrule recopilacion-preferencias::establecer-preferencia-atributos-ciudad-lejos "Establecer preferencia de servicios de la ciudad"
    ?hecho <- (caracteristicas-ciudad-lejos ask)
    ?pref <- (preferencias)
    ?p <- (slots-and-names (nombres-ciudad $?nombres-ciudad) (campos-ciudad $?campos-ciudad))
    =>
    (bind ?escogido (pregunta-multi "¿Qué servicios preferiria lejanos a su vivienda? (0 si no tiene preferencias) " $?nombres-ciudad))
    (bind $?respuesta (create$ ))
    (loop-for-count (?i 1 (length$ ?escogido)) do
      (bind ?index (nth$ ?i ?escogido))
      (if (> ?index 0)
        then
        (bind ?slot-name (nth$ ?index $?campos-ciudad))
        (bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?slot-name))
      )
    )
    (retract ?hecho)
    (modify ?pref (caracteristicas-ciudad-lejos ?respuesta))
    (focus preproceso-datos)
)
;;************************************************
;;**               PROCESAR DATOS               **
;;************************************************
(deffacts preproceso-datos::hechos-iniciales "Establece hechos para poder ejecutar las reglas"
    (procesar-edades ask)
    (determinacion-edades)
    (preferencias-inferidas)
)

(defrule preproceso-datos::determinar-personas-edades "Establecer si las edades son correctas"
    (pregunta-usuario (edades $?edades))
    ;?val <- (determinacion-edades)
    ?hecho <- (procesar-edades ask)
    ?val <- (determinacion-edades)
    =>
    ; inicialización de datos 
    (bind ?bebe 0)
    (bind ?pequeno 0)
    (bind ?adolescente 0)
    (bind ?adultos 0)
    (bind ?universitario 0)
    (bind ?familia FALSE)
    (bind ?jubilado 0)
    (bind ?grupo TRUE)

    ; comprobar que haya un adulto, si no hay adulto no se puede pedir vivienda
    (bind ?first-age -1)

    (progn$ (?edad ?edades)
        (if (>= ?edad 18)
            then
            (if (<= ?edad 25)
                then
                (bind ?universitario (+ ?universitario 1))
                (bind ?adultos(+ ?adultos 1))
                else (if (>= ?edad 70)
                    then
                        (bind ?jubilado(+ ?jubilado 1))

                    else
                        (bind ?adultos(+ ?adultos 1))
                )
            ) 
            
            else (if (<= ?edad 2)
                    then 
                    (bind ?bebe(+ ?bebe 1))
                    (bind ?familia TRUE)

                    else (if (<= ?edad 12)
                        then
                        (bind ?pequeno(+ ?pequeno 1))
                        (bind ?familia TRUE)

                        else 
                        (bind ?adolescente (+ ?adolescente 1))
                        (bind ?familia TRUE)
                    )

                )
        )

        (if (eq ?first-age -1)
            then
            (bind ?first-age ?edad)

            else
                ;si todos los miembros de la vivienda tienen edades +/- 10 se consideraran un grupo
                (if (> (abs (- ?edad ?first-age)) 10)
                    then
                    (bind ?grupo FALSE)
                    (bind ?familia TRUE)
                )
        )
    )

    (retract ?hecho)
    (modify ?val (bebe ?bebe)
            (pequeno ?pequeno)
            (adolescente ?adolescente)
            (universitario ?universitario)
            (adultos ?adultos)
            (familia ?familia)
            (jubilado ?jubilado)
            (grupo ?grupo)
    )

    (assert (pr-info-extraida ask))
)

(defrule preproceso-datos::caracteristicas "Combrobar que información extraida sea correcta"
    ?hecho <- (pr-info-extraida ask)
    (determinacion-edades (bebe ?bebe) (pequeno ?pequeno) (adolescente ?adolescente) (universitario ?universitario)
                            (adultos ?adultos) (familia ?familia) (jubilado ?jubilado) (grupo ?grupo))
    (pregunta-usuario (coche ?coche) (cortoPlazo ?cortoPlazo) (bebesFuturo ?bebesFuturo))
    (preferencias (caracteristicas-ciudad $?pcc) (caracteristicas-ciudad-lejos $?pccl)(calidad-barrio ?cb))
    ?inf <- (preferencias-inferidas)
    =>

    (bind $?caracteristicas-ciudad (create$ ))
    (bind $?caracteristicas-ciudad-lejos (create$ ))
    (bind $?caracteristicas-vivienda (create$ ))
    (bind ?calidad-barrio indif)
    (if (> ?bebe 0)
        then 
        (if (not (member$ guarderia $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) guarderia))
        )
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) adaptadoMovilidadReducida))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) ascensor))
        
        (if (eq ?cortoPlazo FALSE)
            then
            (if (eq ?pequeno 0)
                then

                (if (not (member$ escuela $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) escuela))
                )
                (if (not (member$ parque $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) parque))
                )
                (if (not (member$ jardin $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) jardin))
                )
            )
            (if (eq ?adolescente 0)
                then
                (if (not (member$ instituto $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) instituto))
                )
            )
            (if (eq ?universitario 0)
                then
                (if (not (member$ bar $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) bar))
                )
                (if (not (member$ universidad $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) universidad))
                )
                ;;el resto de servicios de universitario se añaden también en familia, y como si hay un bebé hay familia se terminan añadiendo siempre
            )
        )
    )
    (if (> ?pequeno 0)
        then
        (if (not (member$ escuela $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) escuela))
        )
        (if (not (member$ parque $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) parque))
        )
        (if (not (member$ jardin $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) jardin))
        )
        
        (if (eq ?cortoPlazo FALSE)
            then
            (if (eq ?adolescente 0)
                then
                (if (not (member$ instituto $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) instituto))
                )
            )
            (if (eq ?universitario 0)
                then
                (if (not (member$ bar $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) bar))
                )
                (if (not (member$ universidad $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) universidad))
                )
                ;;el resto de servicios de universitario se añaden también en familia, y como si hay un peque hay familia se terminan añadiendo siempre
            )
        )
    )
    (if (> ?adolescente 0)
        then
        (if (not (member$ instituto $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) instituto))
        )
        
        (if (eq ?cortoPlazo FALSE)
            then
            (if (eq ?universitario 0)
                then
                (if (not (member$ bar $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) bar))
                )
                (if (not (member$ universidad $?pccl))
                    then
                    (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) universidad))
                )
                ;;el resto de servicios de universitario se añaden también en familia, y como si hay un peque hay familia se terminan añadiendo siempre
            )
        )
    )
    (if (> ?universitario 0)
        then
        (if (eq ?familia FALSE)
            then
            (if (not (member$ bar $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) bar))
            )
            (if (not (member$ cafeteria $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cafeteria))
            )
            (if (not (member$ cine $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))
            )
            (if (not (member$ centroComercial $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) centroComercial))
            )
            (if (not (member$ supermercado $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) supermercado))
            )
        )
        
        (if (not (member$ universidad $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) universidad))
        )
    )
    (if (eq ?familia TRUE)
        then
        (if (not (member$ cafeteria $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cafeteria))
        )
        (if (not (member$ cine $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))
        )
        (if (not (member$ centroComercial $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) centroComercial))
        )
        (if (not (member$ supermercado $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) supermercado))
        )
        
        (if (not (member$ hospitalNinos $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) hospitalNinos))
        )
        (if (not (member$ mercado $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) mercado))
        )
        (if (not (member$ plaza $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) plaza))
        )

        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) sistemaAlarma))

        (bind ?calidad-barrio  buena)
        
        (if (not (member$ clubNoct $?pcc))
            then
            (bind $?caracteristicas-ciudad-lejos (insert$ $?caracteristicas-ciudad-lejos (+ (length$ $?caracteristicas-ciudad-lejos) 1) clubNoct))
        )

        (if (not (member$ bar $?pcc))
            then
            (bind $?caracteristicas-ciudad-lejos (insert$ $?caracteristicas-ciudad-lejos (+ (length$ $?caracteristicas-ciudad-lejos) 1) bar))
        )

        (if (not (member$ campoDeporte $?pcc))
            then
            (bind $?caracteristicas-ciudad-lejos (insert$ $?caracteristicas-ciudad-lejos (+ (length$ $?caracteristicas-ciudad-lejos) 1) campoDeporte))
        )
    )
    (if (> ?jubilado 0)
        then
        
        (if (eq ?familia FALSE)
            then
            (if (not (member$ cafeteria $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cafeteria))
            )
            (if (not (member$ cine $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))
            )
            (if (not (member$ centroComercial $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) centroComercial))
            )
            (if (not (member$ supermercado $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) supermercado))
            )
            
            (if (not (member$ hospital $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) hospital))
            )
            (if (not (member$ mercado $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) mercado))
            )
            (if (not (member$ plaza $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) plaza))
            )        
            
            (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) sistemaAlarma))
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) zonaVerde))
            (bind ?calidad-barrio  buena)
            
            (if (not (member$ clubNoct $?pcc))
            then
                (bind $?caracteristicas-ciudad-lejos (insert$ $?caracteristicas-ciudad-lejos (+ (length$ $?caracteristicas-ciudad-lejos) 1) clubNoct))
            )

            (if (not (member$ bar $?pcc))
                then
                (bind $?caracteristicas-ciudad-lejos (insert$ $?caracteristicas-ciudad-lejos (+ (length$ $?caracteristicas-ciudad-lejos) 1) bar))
            )

            (if (not (member$ campoDeporte $?pcc))
                then
                (bind $?caracteristicas-ciudad-lejos (insert$ $?caracteristicas-ciudad-lejos (+ (length$ $?caracteristicas-ciudad-lejos) 1) campoDeporte))
            )
        )

        (if (not (member$ geriatrico $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) geriatrico))
        )
        
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) adaptadoMovilidadReducida))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) ascensor))
        
    )
    (if (eq ?familia FALSE)
        then
        (if (eq ?bebesFuturo TRUE)
            then
            (if (not (member$ guarderia $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) guarderia))
            )
            (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) adaptadoMovilidadReducida))
            (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) ascensor))
        )
            
        (if (eq ?adultos 1)
            then
            (if (not (member$ bar $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) bar))
            )
            (if (not (member$ cafeteria $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cafeteria))
            )
            (if (not (member$ centroComercial $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) centroComercial))
            )
            (if (not (member$ cine $?pccl))
                then
                (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))
            )
        )
    )
    (if (eq ?grupo TRUE) 
        then
        (if (not (member$ bar $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) bar))
        )
        (if (not (member$ cafeteria $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cafeteria))
        )
        (if (not (member$ centroComercial $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) centroComercial))
        )
        (if (not (member$ cine $?pccl))
            then
            (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))
        )
    )

    (if (eq ?coche TRUE)
        then
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) garaje))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) zonaVerde))

        else
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) tram))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) tren))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) metro))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) bus))
    )

    (modify ?inf 
        (caracteristicas-ciudad ?caracteristicas-ciudad)
        (caracteristicas-ciudad-lejos ?caracteristicas-ciudad-lejos)
        (caracteristicas-vivienda ?caracteristicas-vivienda)
        (calidad-barrio ?calidad-barrio))
    (retract ?hecho)
    (assert (inferir-dormitorios ask))   
)

(defrule preproceso-datos::dormitorios "Combrobar que información extraida sea correcta"
    ?hecho <- (inferir-dormitorios ask)
    (determinacion-edades (bebe ?bebe) (pequeno ?pequeno) (adolescente ?adolescente) (universitario ?universitario)
                            (adultos ?adultos) (familia ?familia) (jubilado ?jubilado) (grupo ?grupo))
    ?inf <- (preferencias-inferidas)
    =>
    (bind ?minDormSingles 0)
    (bind ?minDormDoubles 0)
    (bind ?maxDormSingles 0)
    (bind ?maxDormDoubles 0)

    (if (eq (mod ?adultos 2) 0)
        then
        (bind ?minDormDoubles (/ ?adultos 2)) 
        (bind ?maxDormDoubles (/ ?adultos 2)) 
        
        else 
        (bind ?minDormDoubles (/ (- ?adultos 1) 2))
        (bind ?maxDormDoubles (/ (- ?adultos 1) 2))
        (bind ?minDormSingles 1)
        (bind ?maxDormSingles 1)
    )

    (if (eq (mod ?jubilado 2) 0)
        then
        (bind ?minDormDoubles (+ ?minDormDoubles (/ ?jubilado 2))) 
        (bind ?maxDormDoubles (+ ?maxDormDoubles (/ ?jubilado 2))) 
        
        else 
        (bind ?minDormDoubles (+ ?minDormDoubles (/ (- ?jubilado 1) 2)))
        (bind ?maxDormDoubles (+ ?maxDormDoubles (/ (- ?jubilado 1) 2)))
        (bind ?minDormSingles (+ ?minDormSingles 1))
        (bind ?maxDormSingles (+ ?maxDormSingles 1))
    )

    (if (eq ?familia TRUE)
        then
        (if (eq (mod ?pequeno 2) 0)
            then
            (bind ?minDormDoubles (+ ?minDormDoubles (/ ?pequeno 2)))
            else
            (bind ?minDormDoubles (+ ?minDormDoubles (/ (- ?pequeno 1) 2)))
            (bind ?minDormSingles (+ ?minDormSingles 1))
        )
        (bind ?minDormSingles (+ ?minDormSingles ?adolescente))
        (bind ?maxDormSingles (+ ?maxDormSingles ?adolescente ?pequeno ?bebe))

        else (if (eq ?grupo TRUE) 
            then
            (if (> ?jubilado 0)
                then
                    (bind ?maxDormSingles (+ ?maxDormSingles ?adultos))
                else
                    (bind ?maxDormSingles ?adultos)
                    (bind ?maxDormDoubles 0)
            )
        )
    )

    (modify ?inf (minDormSingles ?minDormSingles)
                (minDormDoubles ?minDormDoubles)
                (maxDormSingles ?maxDormSingles)
                (maxDormDoubles ?maxDormDoubles)
    )
    (retract ?hecho)
    (focus inferencia-datos)
)
;;************************************************
;;**             INFERENCIA DATOS              **
;;************************************************
(deffacts inferencia-datos::hechos-iniciales "Establece hechos para poder ejecutar las reglas"
    (separar-viviendas ask)
    (viviendas-usuario)
)

(defrule inferencia-datos::filtrado-min "Filtrar las viviendas que se ajusten a los requisitos mínimos del usuario"
    ?hecho <- (separar-viviendas ask)
    ;?vv <- (viviendas-usuario)
    ?u <- (pregunta-usuario (maxPrecio ?maxPrecio)
                            (minPrecio ?minPrecio)
                            ;(minHabitaciones ?minHabitaciones)
                            (mascotas ?mascotas)
                            (movilidadReducida ?movilidadReducida)
                            (cortoPlazo ?cortoPlazo))
    
    (preferencias-inferidas (minDormSingles ?minDormSingles)
                            (minDormDoubles ?minDormDoubles)
                            (maxDormSingles ?maxDormSingles) 
                            (maxDormDoubles ?maxDormDoubles)
    )
    
    ?list <- (viviendas-usuario)
  	=>
    (bind $?lista_adecuados (create$ ))
    (bind $?lista_inadecuados (create$ ))

    (bind $?lista_adecuados (find-all-instances ((?inst Viviendas))
        (and
            (<= ?inst:precioMensual ?maxPrecio)
            (>= ?inst:precioMensual ?minPrecio)
            (or (eq ?mascotas FALSE) (eq ?inst:mascota TRUE))
            (or (eq ?movilidadReducida FALSE) (eq ?inst:adaptadoMovilidadReducida TRUE))
            (> (respeta-dormitorios ?inst ?minDormDoubles ?minDormSingles ?maxDormDoubles ?maxDormSingles) 0)
        )
    ))

    (retract ?hecho)
    (modify ?list (vivienda-viables $?lista_adecuados))
    (assert (preferencias-viviendas ask))
)

(defrule inferencia-datos::filtrar-preferencias "Filtrar las viviendas con las preferencias del usuario"
    ?hecho <- (preferencias-viviendas ask)
    ?inf <- (viviendas-usuario (vivienda-viables $?vivienda-viables))
    (preferencias (caracteristicas-vivienda $?caracteristicas-vivienda) (caracteristicas-ciudad $?caracteristicas-ciudad)
        (caracteristicas-ciudad-lejos $?caracteristicas-ciudad-lejos) (tipos-vivienda $?tipos-vivienda)
        (calidad-barrio ?calidad-barrio))
    (preferencias-inferidas (minDormSingles ?minDormSingles) (minDormDoubles ?minDormDoubles) 
                            (maxDormSingles ?maxDormSingles) (maxDormDoubles ?maxDormDoubles)
                            (calidad-barrio ?inf-calidad-barrio)
                            (caracteristicas-vivienda $?inf-caracteristicas-vivienda) 
                            (caracteristicas-ciudad $?inf-caracteristicas-ciudad)
                            (caracteristicas-ciudad-lejos $?inf-caracteristicas-ciudad-lejos)
    )
    =>
    (bind ?maxPuntuacion (+ (* (length$ ?caracteristicas-ciudad) 2) (* (length$ ?caracteristicas-vivienda) 2)))
    (bind ?maxPuntuacion (+ ?maxPuntuacion (* (length$ ?caracteristicas-ciudad-lejos) 2)))
    (bind ?maxPuntuacion (+ ?maxPuntuacion (* (length$ ?inf-caracteristicas-vivienda) 2)))
    (bind ?maxPuntuacion (+ ?maxPuntuacion (* (length$ ?inf-caracteristicas-ciudad) 2)))
    (bind ?maxPuntuacion (+ ?maxPuntuacion (* (length$ ?inf-caracteristicas-ciudad-lejos) 2)))
    (bind ?maxPuntuacion (+ ?maxPuntuacion ?maxDormSingles))
    (bind ?maxPuntuacion (+ ?maxPuntuacion 1)) ;tipos de vivienda

    (format t "max: %d" ?maxPuntuacion)
    (printout t crlf)

    (bind $?puntos (create$))
    (progn$ (?var $?vivienda-viables)
        (bind ?pts 0)
        (bind ?pts (respeta-preferencias-vivienda ?var $?caracteristicas-vivienda))

        (bind ?lejos FALSE)
        (bind ?pts (+ ?pts (respeta-preferencias-ciudad ?lejos ?var $?caracteristicas-ciudad)))

        (bind ?lejos TRUE)
        (bind ?pts (+ ?pts (respeta-preferencias-ciudad ?lejos ?var $?caracteristicas-ciudad-lejos)))

        (bind ?pts 0)
        (bind ?pts (respeta-preferencias-vivienda ?var $?inf-caracteristicas-vivienda))

        (bind ?lejos FALSE)
        (bind ?pts (+ ?pts (respeta-preferencias-ciudad ?lejos ?var $?inf-caracteristicas-ciudad)))

        (bind ?lejos TRUE)
        (bind ?pts (+ ?pts (respeta-preferencias-ciudad ?lejos ?var $?inf-caracteristicas-ciudad-lejos)))
        
        (bind ?pts (+ ?pts (respeta-dormitorios ?var ?minDormDoubles ?minDormSingles ?maxDormDoubles ?maxDormSingles)))

        (bind ?pts (+ ?pts (puntos-tipo-vivienda ?var $?tipos-vivienda)))
        ;(deffunction MAIN::

        (if (not (eq ?calidad-barrio indf))
            then 
            (bind ?pts (+ ?pts (determinar-puntos-calidad ?calidad-barrio ?var)))
            (if (eq ?inf-calidad-barrio buena)
                then
                (bind ?maxPuntuacion (+ ?maxPuntuacion 1))
            )
            (if (eq ?inf-calidad-barrio media)
                then
                (bind ?maxPuntuacion (+ ?maxPuntuacion 2))
            )
            (if (eq ?inf-calidad-barrio baja)
                then
                (bind ?maxPuntuacion (+ ?maxPuntuacion 3))
            )
            ;determinar-puntos-calidad (?calidad ?inst)
            else (if (not (eq ?inf-calidad-barrio indf))
                then
                (bind ?pts (+ ?pts (determinar-puntos-calidad ?inf-calidad-barrio ?var)))
                (bind ?maxPuntuacion (+ ?maxPuntuacion 1))
            )
        )

        (bind $?puntos (insert$ $?puntos (+ (length$ $?puntos) 1) ?pts))
    )

    (bind $?aux (create$))
    (bind $?auxPoints (create$))
    (while (not (eq (length$ $?vivienda-viables) 0))  do
        (bind ?max 0)
        (bind ?maxPoint 0)
        (bind ?i 0)
        (progn$ (?idx $?puntos)
            (bind ?i(+ ?i 1))
            (if (>= ?idx ?maxPoint)
                then
                (bind ?maxPoint ?idx)
                (bind ?max ?i)
            )
        )

        (bind ?aux (insert$ ?aux (+ (length$ ?aux) 1) (nth$ ?max ?vivienda-viables)))
        (bind ?auxPoints (insert$ ?auxPoints (+ (length$ ?auxPoints) 1) (nth$ ?max ?puntos)))
        (bind ?vivienda-viables (delete$ ?vivienda-viables ?max ?max))
        (bind ?puntos (delete$ ?puntos ?max ?max))
    )

    (modify ?inf (vivienda-viables $?aux)
        (max-pts ?maxPuntuacion)
        (aux-points $?auxPoints)
    )
    (retract ?hecho)
    (focus imprimir-preferencias)
)

(defrule imprimir-preferencias::imprimir-recomendaciones
    (viviendas-usuario (vivienda-viables $?aux) (max-pts ?maxPuntuacion) (aux-points $?auxPoints))
    =>
    (if (eq (length$ ?aux) 0)
        then 
        (printout t "No hay viviendas dispoibles con esas condiciones" crlf)

        else 
        (bind ?i 0)
        (progn$ (?var $?aux)
            (bind ?i(+ ?i 1))
            (bind ?idx (nth$ ?i $?auxPoints))
            (format t "Vivienda %d" ?i)
            (printout t)
            (format t ", %f porcentage de similitud con preferencias" (* (/ ?idx ?maxPuntuacion) 100))
            (printout t crlf)
            (send ?var imprimir)
            (format t "Puntuación vivienda: %d" ?idx)
            (printout t crlf)
        )
    )
)
