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
)

(deftemplate MAIN::preferencias
	(multislot tipos-vivienda (type SYMBOL))
  (multislot caracteristicas-vivienda (type SYMBOL))
)


(deftemplate MAIN::viviendas-resultantes
	(multislot viviendas-viables (type INSTANCE))
)

(deftemplate slots-and-names
  (multislot nombres (type STRING))
  (multislot campos (type SYMBOL))
)