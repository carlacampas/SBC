;;************************************************
;;**                TEMPLATES                   **
;;************************************************

(deftemplate MAIN::pregunta-usuario 
    ;(slot tamano (type INTEGER) (default 0))
    (multislot edades (type INTEGER) (default -1))
    (slot maxPrecio (type INTEGER) (default -1))
    (slot minPrecio (type INTEGER) (default -1))
    (slot movilidadReducida (type SYMBOL) (default NONE))
    (slot mascotas (type SYMBOL) (default NONE))
    (slot coche (type SYMBOL) (default NONE))
    (slot cortoPlazo (type SYMBOL) (default NONE))
    (slot bebesFuturo (type SYMBOL) (default NONE))
)

(deftemplate MAIN::preferencias
  (multislot tipos-vivienda (type SYMBOL))
  (multislot caracteristicas-vivienda (type SYMBOL))
  (multislot calidad-barrio (type SYMBOL))
  (multislot caracteristicas-ciudad (type SYMBOL))
  (multislot caracteristicas-ciudad-lejos (type SYMBOL))
)

(deftemplate MAIN::preferencias-inferidas
  (slot minDormSingles (type INTEGER)) ;minimizar dormitorios singles
  (slot minDormDoubles (type INTEGER)) ;minimizar dormitorios doubles
  (slot maxDormSingles (type INTEGER)) ;maximizar dormitorios singles
  (slot maxDormDoubles (type INTEGER)) ;maximizar dormitorios doubles
  (multislot caracteristicas-vivienda (type SYMBOL))
  (slot calidad-barrio (type SYMBOL))
  (multislot caracteristicas-ciudad (type SYMBOL))
  (multislot caracteristicas-ciudad-lejos (type SYMBOL))
)

(deftemplate MAIN::viviendas-usuario 
  (multislot vivienda-viables (type INSTANCE))
  (multislot aux-points (type INSTANCE))
  (multislot max-pts (type INTEGER))
)

(deftemplate slots-and-names
  (multislot nombres-vivienda (type STRING))
  (multislot campos-vivienda (type SYMBOL))
  (multislot nombres-ciudad (type STRING))
  (multislot campos-ciudad (type SYMBOL))
  (multislot nombres-calidad (type STRING))
  (multislot campos-calidad (type SYMBOL))
)

(deftemplate MAIN::determinacion-edades 
  (slot bebe (type INTEGER))
  (slot pequeno (type INTEGER))
  (slot adolescente (type INTEGER))
  (slot universitario (type INTEGER)) 
  (slot adultos (type INTEGER)) 
  (slot familia (type SYMBOL))
  (slot jubilado (type INTEGER))
  (slot grupo (type SYMBOL))
)

;; PEQUE??O: (< 3 -> TODDLER, > 3, < 12 PEQUE??O)
;; ADOLESCENTE: > 12, > 18
;; ESTUDIANTE: TODOS ENTRE 18 Y 30
;; FAMILIA: NI??OS Y ADULTOS
;; JUBILADO: > 70
;; GRUPO: DETERMINADO POR TODAS LAS EDADES DEL MISMO RANGO
;; un universitario sera un individual entre las edades de 18 y 25
;; un grupo de estudiantes, sera un grupo
