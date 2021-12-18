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

;; módulo para calcular la puntuación final de cada vivienda
(defmodule computar-puntos
    (import MAIN ?ALL)
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

(deffunction respecta-preferencias-vivienda (?inst $?car)
    (bind ?b TRUE)
    (progn$ (?c ?car)
        (if (eq ?c amueblado)
            then
            (bind ?var (send ?inst get-amueblado))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c vistas)
            then
            (bind ?var (send ?inst get-vistas))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c vistasMar)
            then
            (bind ?var (send ?inst get-vistasMar))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c vistasMontaña)
            then
            (bind ?var (send ?inst get-vistasMontaña))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c balcon)
            then
            (bind ?var (send ?inst get-balcon))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c cocinaIntegrada)
            then
            (bind ?var (send ?inst get-cocinaIntegrada))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c sistemaAlarma)
            then
            (bind ?var (send ?inst get-sistemaAlarma))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c garaje)
            then
            (bind ?var (send ?inst get-garaje))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c jardin)
            then
            (bind ?var (send ?inst get-jardin))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c sotano)
            then
            (bind ?var (send ?inst get-sotano))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c aireAcondicionado)
            then
            (bind ?var (send ?inst get-aireAcondicionado))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c patio)
            then
            (bind ?var (send ?inst get-patio))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c terraza)
            then
            (bind ?var (send ?inst get-terraza))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c gimnasio)
            then
            (bind ?var (send ?inst get-gimnasio))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c primeraLineaDeMar)
            then
            (bind ?var (send ?inst get-primeraLineaDeMar))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c obraNueva)
            then
            (bind ?var (send ?inst get-obraNueva))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c pisicina)
            then
            (bind ?var (send ?inst get-pisicina))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c estudio)
            then
            (bind ?var (send ?inst get-estudio))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c calefaccion)
            then
            (bind ?var (send ?inst get-calefaccion))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c ascensor)
            then
            (bind ?var (send ?inst get-ascensor))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
    )
    ?b
)

(deffunction respecta-preferencias-ciudad (?inst $?car)
    (bind ?b TRUE)
    (progn$ (?c ?car)
        (if (eq ?c aeropuerto)
            then
            (bind ?var (send ?inst get-distMinAeropuerto))
            (if (eq ?var FALSE)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c bar)
            then
            (bind ?var (send ?inst get-distMinBar))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c bus)
            then
            (bind ?var (send ?inst get-distMinBus))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c cafeteria)
            then
            (bind ?var (send ?inst get-distMinCafeteria))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c centroComercial)
            then
            (bind ?var (send ?inst get-distMinCentroComercial))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c centroDia)
            then
            (bind ?var (send ?inst get-distMinCentroDia))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c cine)
            then
            (bind ?var (send ?inst get-distMinCine))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c clubNoct)
            then
            (bind ?var (send ?inst get-distMinClubNoct))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c escuela)
            then
            (bind ?var (send ?inst get-distMinEscuela))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c geriatrico)
            then
            (bind ?var (send ?inst get-distMinGeriatrico))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c grandesAlm)
            then
            (bind ?var (send ?inst get-distMinGrandesAlm))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c hospital)
            then
            (bind ?var (send ?inst get-distMinHospital))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c instituto)
            then
            (bind ?var (send ?inst get-distMinInstituto))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c jardin)
            then
            (bind ?var (send ?inst get-distMinJardin))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c mercado)
            then
            (bind ?var (send ?inst get-distMinMercado))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c metro)
            then
            (bind ?var (send ?inst get-distMinMetro))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c museo)
            then
            (bind ?var (send ?inst get-distMinMuseo))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c pabellon)
            then
            (bind ?var (send ?inst get-distMinPabellon))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c parque)
            then
            (bind ?var (send ?inst get-distMinParque))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c playa)
            then
            (bind ?var (send ?inst get-distMinPlaya))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c plaza)
            then
            (bind ?var (send ?inst get-distMinPlaza))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c restaurante)
            then
            (bind ?var (send ?inst get-distMinRestaurante))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c rocordromo)
            then
            (bind ?var (send ?inst get-distMinRocodromo))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c supermercado)
            then
            (bind ?var (send ?inst get-distMinSupermercado))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c teatro)
            then
            (bind ?var (send ?inst get-distMinTeatro))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c tram)
            then
            (bind ?var (send ?inst get-distMinTram))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c tren)
            then
            (bind ?var (send ?inst get-distMinTren))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
        (if (eq ?c universidad)
            then
            (bind ?var (send ?inst get-distMinUniversidad))
            (if (> ?var 3000)
                then
                (bind ?b FALSE)
            )
        )
    )
    ?b
)

(deffunction suma-puntos (?v $?cv $?lista)
    (bind ?pts 0)
    ;;si el piso la contiene y el usuario la ha pedido
    (if (and (eq ?v amueblado) (eq ?cv:amueblado TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:amueblado TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:vistas TRUE) (eq ?cv:vistas TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:vistas TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:vistasMar TRUE) (eq ?cv:vistasMar TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:vistasMar TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:vistasMontaña TRUE) (eq ?cv:vistasMontaña TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:vistasMontaña TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:balcon TRUE) (eq ?cv:balcon TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:balcon TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:cocinaIntegrada TRUE) (eq ?cv:cocinaIntegrada TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:cocinaIntegrada TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:sistemaAlarma TRUE) (eq ?cv:sistemaAlarma TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:sistemaAlarma TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:garaje TRUE) (eq ?cv:garaje TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:garaje TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:jardin TRUE) (eq ?cv:jardin TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:jardin TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:sotano TRUE) (eq ?cv:sotano TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:sotano TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:aireAcondicionado TRUE) (eq ?cv:aireAcondicionado TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:aireAcondicionado TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:patio TRUE) (eq ?cv:patio TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:patio TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:terraza TRUE) (eq ?cv:terraza TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:terraza TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:gimnasio TRUE) (eq ?cv:gimnasio TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:gimnasio TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:primeraLineaDeMar TRUE) (eq ?cv:primeraLineaDeMar TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:primeraLineaDeMar TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:obraNueva TRUE) (eq ?cv:obraNueva TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:obraNueva TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    ;;PISICINA JAJAJAJ
    (if (and (eq ?v:pisicina TRUE) (eq ?cv:pisicina TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:pisicina TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:estudio TRUE) (eq ?cv:estudio TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:estudio TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:calefaccion TRUE) (eq ?cv:calefaccion TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:calefaccion TRUE)
                then
                (bind ?pts(+ ?pts 1))
            )
        
    )
    (if (and (eq ?v:ascensor TRUE) (eq ?cv:ascensor TRUE))
        then
        (bind ?pts(+ ?pts 2))
        
        else
            (if (eq ?cv:ascensor TRUE)
                then
                (bind ?pts(+ ?pts 1))
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
    (pregunta-usuario (coche ?coche))
    ?inf <- (preferencias-inferidas)
    =>

    (bind $?caracteristicas-ciudad (create$ ))
    (bind $?caracteristicas-vivienda (create$ ))
    (if (> ?bebe 0)
        then 
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) guarderia))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) adaptadoMovilidadReducida))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) ascensor))
    )
    (if (> ?pequeno 0)
        then
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) escuela))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) parque))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) jardin))
    )
    (if (> ?adolescente 0)
        then
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) instituto))
    )
    (if (> ?universitario 0)
        then
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) bar))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cafeteria))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) universidad))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) centroComercial))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) supermercado))
    )
    (if (eq ?familia TRUE)
        then
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cafeteria))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) centroComercial))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) hospital))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) mercado))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) supermercado))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) plaza))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) sistemaAlarma))
    )
    (if (> ?jubilado 0)
        then
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cafeteria))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) centroComercial))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) hospital))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) mercado))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) supermercado))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) plaza))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) geriatrico))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) adaptadoMovilidadReducida))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) ascensor))
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) sistemaAlarma))      
    )
    (if (and (eq ?adultos 1) (eq ?familia FALSE))
        then
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) bar))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cafeteria))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) centro-comercial))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))

    )
    (if (eq ?grupo TRUE) 
        then
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) bar))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cafeteria))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) centro-comercial))
        (bind $?caracteristicas-ciudad (insert$ $?caracteristicas-ciudad (+ (length$ $?caracteristicas-ciudad) 1) cine))
    )

    (if (eq ?coche TRUE)
        then
        (bind $?caracteristicas-vivienda (insert$ $?caracteristicas-vivienda (+ (length$ $?caracteristicas-vivienda) 1) garaje))
    )

    (modify ?inf 
        (caracteristicas-ciudad ?caracteristicas-ciudad)
        (caracteristicas-vivienda ?caracteristicas-vivienda))
    (retract ?hecho)
    (assert (inferir-dormitorios ask))   
)

(defrule preproceso-datos::dormitorios "Combrobar que información extraida sea correcta"
    ?hecho <- (inferir-dormitorios ask)
    (determinacion-edades (bebe ?bebe) (pequeno ?pequeno) (adolescente ?adolescente) (universitario ?universitario)
                            (adultos ?adultos) (familia ?familia) (jubilado ?jubilado) (grupo ?grupo))
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

    (if (eq ?familia TRUE)
        then
        (if (eq (mod ?pequeno 2) 0)
            then
            (bind ?minDormDoubles (+ ?minDormDoubles (/ ?pequeno 2)))
            else
            (bind ?minDormDoubles (+ ?minDormDoubles (/ (- ?pequeno 1) 2)))
            (bind ?minDormSingles (+ ?minDormSingles 1))
        )
        (bind ?minDormSingles (+ (+ ?minDormSingles ?adolescente) ?jubilado))
        (bind ?maxDormSingles (+ ?maxDormSingles ?adolescente ?pequeno ?bebe ?jubilado))

        else (if (eq ?grupo TRUE)
            then
            (bind ?maxDormSingles ?adultos)
            (bind ?maxDormDoubles 0)
        )
    )

    (retract ?hecho)
    (focus inferencia-datos)
)
;;************************************************
;;**             INFERENCIA DATOS              **
;;************************************************

(defrule inferencia-datos::filtrado-min "Filtrar las viviendas que se ajusten a los requisitos mínimos del usuario"
    ;?hecho <- (vivienda-viables ask)
    ;?vv <- (viviendas-usuario)
    (preferencias (caracteristicas-vivienda $?caracteristicas-vivienda) (caracteristicas-ciudad $?caracteristicas-ciudad)
                    (tipos-vivienda $?tipos-vivienda))
    ?u <- (pregunta-usuario (maxPrecio ?maxPrecio)
                            (minPrecio ?minPrecio)
                            ;(minHabitaciones ?minHabitaciones)
                            (mascotas ?mascotas)
                            (movilidadReducida ?movilidadReducida))
    ?r <- (calcular-puntos)
  	=>
    (bind $?lista_adecuados (create$ ))
    (if (eq (length$ ?tipos-vivienda) 0)
        then
        (bind $?lista_adecuados (find-all-instances ((?inst Viviendas))
            (and
                (<= ?inst:precioMensual ?maxPrecio)
                (>= ?inst:precioMensual ?minPrecio)
                ;(>= ?inst:numDormitorios ?minHabitaciones)
                (or (eq ?mascotas FALSE) (eq ?inst:mascota TRUE))
                (or (eq ?movilidadReducida FALSE) (eq ?inst:adaptadoMovilidadReducida TRUE))
                (eq (respecta-preferencias-vivienda ?inst $?caracteristicas-vivienda) TRUE)
                (eq (respecta-preferencias-ciudad ?inst $?caracteristicas-ciudad) TRUE)
            )
        ))
        else
        (progn$ (?tp ?tipos-vivienda)
            (bind $?lista (find-all-instances ((?inst ?tp))
                (and
                    (<= ?inst:precioMensual ?maxPrecio)
                    (>= ?inst:precioMensual ?minPrecio)
                    ;(>= ?inst:numDormitorios ?minHabitaciones)
                    (or (eq ?mascotas FALSE) (eq ?inst:mascota TRUE))
                    (or (eq ?movilidadReducida FALSE) (eq ?inst:adaptadoMovilidadReducida TRUE))
                    (eq (respecta-preferencias-vivienda ?inst $?caracteristicas-vivienda) TRUE)
                    (eq (respecta-preferencias-ciudad ?inst $?caracteristicas-ciudad) TRUE)
                    )
            ))
            (bind $?lista_adecuados (insert$ $?lista_adecuados (+ (length$ $?lista_adecuados) 1) $?lista))
            ;(bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?tipo))
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
    ;(retract ?hecho)
    (modify ?r (lista-filtrada ?lista_adecuados))
    (focus computar-puntos)
    ;(retract ?hecho)
    ;(assert (viviendas-preferidas ask))
)


;;************************************************
;;**             GESTIÓN DE PUNTOS              **
;;************************************************
(deffacts computar-puntos::hecho-inicial
    (sumar-pts-cv-pref-usuario ask)
    (calcular-puntos)
    (preferencias)
    (preferencias-inferidas)
)

(defrule computar-puntos::puntos-cv-pref-usuario "Sumar puntos de las características de una vivienda para determinar cómo de deseable es para el usuario"
    ?hecho <- (sumar-pts-cv-pref-usuario ask)
    (preferencias (caracteristicas-vivienda $?cv)) ;(caracteristicas-ciudad $?cc))la intencion es ponerlas en la misma rule pero quiero asegurarme de que funcione bien con una first
    (calcular-puntos (lista-filtrada ?lista))
    ?pts-cv-pref-usr <- (calcular-puntos)
    =>
    (bind $?puntos (create$))
    (progn$ (?v $?lista)
        (bind ?pts (suma-puntos ?v $?cv $?lista))
        (bind $?puntos (insert$ $?puntos (+ (length$ $?puntos) 1) ?pts))
    )
    (retract ?hecho)
    (modify ?pts-cv-pref-usr (puntuacion-vivienda ?puntos))
    (assert (sumar-puntos-cv-inferidos ask))
)
    
(defrule computar-puntos::puntos-cv-inferidos "Sumar puntos de las características de una vivienda para determinar cómo de deseable es para el usuario"
    ?hecho <- (sumar-puntos-cv-inferidos ask)
    (preferencias-inferidas (caracteristicas-vivienda $?cv)) ;(caracteristicas-ciudad $?cc)) la intencion es ponerlas en la misma rule pero quiero asegurarme de que funcione bien con una first
    (calcular-puntos (lista-filtrada ?lista) (puntuacion-vivienda ?pv))
    ?pts-cv-pref-usr <- (calcular-puntos)
    =>
    (bind $?puntos (create$))
    (progn$ (?v $?lista)
        (bind ?pts (suma-puntos ?v $?cv $?lista))
        (bind $?puntos (insert$ $?puntos (+ (length$ $?puntos) 1) ?pts))
    )
    (retract ?hecho)
    (modify ?pts-cv-pref-usr (puntuacion-vivienda (bind ?puntos(+ ?pv ?puntos))))
    ;(assert (puntos-cc-pref-usuario ask))
)
    

;; FALTA POR HACER
;; PREPROCESO DE DATOS
;; DE LAS EDADES INTUIR QUE SERVICIOS DE CIUDAD O DE VIVIENDA LE SON FAVORABLES Y AÑADIR ESTOS

