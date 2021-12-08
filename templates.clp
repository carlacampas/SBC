;;; Template para almacenar datos sobre los usuarios
(deftemplate MAIN::caracteristicas-usuario
    (slot tipo (type STRING))
    (slot tamano (type INTEGER))
    (slot numAdultos (type INTEGER) (default -1))
    (slot numNinos (type INTEGER) (default -1))
    (slot jubilados (type SYMBOL) (default NONE))
    (slot estudiantes (type SYMBOL) (default NONE))
    (slot maxPrecio (type INTEGER)  (default -1))
    (slot minPrecio (type INTEGER)  (default -1))
    (slot coche (type SYMBOL) (default NONE))
)

;;; Template para las preferencias del usuario
(deftemplate MAIN::preferencias-vivienda
    ;; tipos de vivienda preferibles. Se preguntan en forma de lista con respuesta múltiple
    (multislot tipos-vivienda (type SYMBOL))
    (multislot caracteristicas-vivienda (type SYMBOL))

    ;; preferencias sobre la vivienda. Se preguntan en forma de lista con respuesta múltiple
    (slot seAceptanMascotas (type SYMBOL) (allowed-values imp pref exc))
    (slot conBalcon (type SYMBOL) (allowed-values imp pref exc))
    (slot conCocinaIntegrada (type SYMBOL) (allowed-values imp pref exc))
    (slot conGaraje (type SYMBOL) (allowed-values imp pref exc))
    (slot conAlarma (type SYMBOL) (allowed-values imp pref exc))
    (slot conJardin (type SYMBOL) (allowed-values imp pref exc))
    (slot conSotano (type SYMBOL) (allowed-values imp pref exc))
    (slot conAireAcondicionado (type SYMBOL) (allowed-values imp pref exc))
    (slot conPatio (type SYMBOL) (allowed-values imp pref exc))
    (slot conTerraza (type SYMBOL) (allowed-values imp pref exc))
    (slot conGimnasio (type SYMBOL) (allowed-values imp pref exc))
    (slot enPrimLinMar (type SYMBOL) (allowed-values imp pref exc))
    (slot deObraNueva (type SYMBOL) (allowed-values imp pref exc))
    (slot conPiscina (type SYMBOL) (allowed-values imp pref exc))
    (slot conmovilidadReducida (type SYMBOL) (allowed-values imp pref exc))
    (slot conCalefaccion (type SYMBOL) (allowed-values imp pref exc))
    (slot conAscensor (type SYMBOL) (allowed-values imp pref exc))

    (slot deAntigüedad (type SYMBOL) (allowed-values imp pref exc))
    (slot maxAntiguedad (type INTEGER) (range 0 100)) ;;cambiar para ajustar a las instancias, same que con plazas parking
    (slot enPlanta (type SYMBOL) (allowed-values imp pref exc)) ;;triggered si tipo == piso
    (multislot quierePlantas (type INTEGER) (range 0 15)) ;;ajustar, trigger de la anterior
    (slot conEstudio (type SYMBOL) (allowed-values imp pref exc))
    (slot numPlazasAp (type INTEGER)) ;;generar regla que en caso de querer garaje como imp o pref pregunte por número de plazas
    (slot deSuperficieHab (type SYMBOL) (allowed-values imp pref exc))
    (slot minSuperficieHab (type INTEGER) (range 30 1000)) ;;m2
    ;;(slot maxSuperficieHab (type INTEGER) (range 30 1000)) ;;m2

    (slot deMinHabitaciones (type SYMBOL) (allowed-values imp pref exc))
    (slot minHabitaciones (type INTEGER) (default -1) (range -1 10)) ;;ajustar
    (slot numHabDobles (type INTEGER) (default -1) (range -1 10)) ;;ajustar
    (slot numHabSimples (type INTEGER) (default -1) (range -1 10)) ;;ajustar

    (slot deMinBaños (type SYMBOL) (allowed-values imp pref exc))
    (slot minBaños (type INTEGER) (default -1) (range -1 10)) ;;ajustar
    (slot minBañosEnteros (type INTEGER) (default -1) (range -1 10)) ;;ajustar
    (slot minBañosMedios (type INTEGER) (default -1) (range -1 10)) ;;ajustar
)

(deftemplate MAIN::preferencias-servicios
  ;;preferencias sobre los servicios de la ciudad
  (slot defDistMinAeropuerto (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinAeropuerto (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinBar (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinBar (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinBus (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinBus (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinCafeteria (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinCafeteria (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinCentComercial (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinCentComercial (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinCentroDia (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinCentroDia (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinCine (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinCine (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinClubNoct (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinClubNoct (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinEscuela (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinEscuela (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinGeriatrico (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinGeriatrico (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinGrandesAlm (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinGrandesAlm (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinHospital (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinHospital (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinInstituto (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinInstituto (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinJardin (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinJardin (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinMercado (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinMercado (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinMetro (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinMetro (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinMuseo (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinMuseo (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinPabellon (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinPabellon (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinParque (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinParque (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinPlaya (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinPlaya (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinPlaza (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinPlaza (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinRestaurante (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinRestaurante (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinRocodromo (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinRocodromo (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinSupermercado (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinSupermercado (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinTeatro (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinTeatro (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinTram (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinTram (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinTren (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinTren (type FLOAT) (range 0.0 1000.0)) ;;ajustar

  (slot defDistMinUniversidad (type SYMBOL) (allowed-values imp pref exc))
  (slot setDistMinUniversidad (type FLOAT) (range 0.0 1000.0)) ;;ajustar
)

(deftemplate slots-and-names
  (multislot nombres (type STRING))
  (multislot campos (type SYMBOL))
)
