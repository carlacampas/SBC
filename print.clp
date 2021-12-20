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
    (format t "         Dobles: %d" ?self:numDormitoriosDobles)
    (printout t crlf)
    (format t "         Simples: %d" ?self:numDormitoriosSimples)
    (printout t crlf)

    (format t "     BAÑOS ENTEROS: %d" ?self:numBanosEnteros)
    (printout t crlf)

    (format t "     BAÑOS MEDIOS: %d" ?self:numBanosMedios)
    (printout t crlf)

    (format t "     PLANTA: %d" ?self:planta)
    (printout t crlf)

    (format t "     CARACTERÍSTICAS DE LA VIVIENDA:")
    (printout t crlf)
    
    (if (eq ?self:calBarrio 1)
        then
            (format t "         -Situada en un barrio de baja calidad")
            (printout t crlf)
        else
            (if (eq ?self:calBarrio 1)
                then
                    (format t "         -Situada en un barrio de calidad media")
                    (printout t crlf)
                else
                    (format t "         -Situada en un barrio de buena calidad")
                    (printout t crlf)
           )
    )
    
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
    
    (format t "     SERVICIOS CERCANOS A LA VIVIENDA:")
    (printout t crlf)
    
    (if (< ?self:distMinAeropuerto 500)
        then
        (format t "         - aeropuerto a %d metros" ?self:distMinAeropuerto)
        (printout t crlf)
    )
    
    (if (< ?self:distMinBar 500)
        then
        (format t "         - bar a %d metros" ?self:distMinBar)
        (printout t crlf)
    )
    
    (if (< ?self:distMinBus 500)
        then
        (format t "         - bus a %d metros" ?self:distMinBus)
        (printout t crlf)
    )
    
    (if (< ?self:distMinCafeteria 500)
        then
        (format t "         - cafeteria a %d metros" ?self:distMinCafeteria)
        (printout t crlf)
    )
    
    (if (< ?self:distMinCentroComercial 500)
        then
        (format t "         - Centro Comercial a %d metros" ?self:distMinCentroComercial)
        (printout t crlf)
    )
    
    (if (< ?self:distMinCentroDia 500)
        then
        (format t "         - Centro de día a %d metros" ?self:distMinCentroDia)
        (printout t crlf)
    )
    (if (< ?self:distMinCine 500)
        then
        (format t "         - Cine a %d metros" ?self:distMinCine)
        (printout t crlf)
    )
    (if (< ?self:distMinClubNoct 500)
        then
        (format t "         - Club nocturno a %d metros" ?self:distMinClubNoct)
        (printout t crlf)
    )
    (if (< ?self:distMinEscuela 500)
        then
        (format t "         - Escuela a %d metros" ?self:distMinEscuela)
        (printout t crlf)
    )
    (if (< ?self:distMinGeriatrico 500)
        then
        (format t "         - Geriátrico a %d metros" ?self:distMinGeriatrico)
        (printout t crlf)
    )
    (if (< ?self:distMinGrandesAlm 500)
        then
        (format t "         - Grandes almacenes a %d metros" ?self:distMinGrandesAlm)
        (printout t crlf)
    )
    (if (< ?self:distMinGuarderia 500)
        then
        (format t "         - Guarderia a %d metros" ?self:distMinGuarderia)
        (printout t crlf)
    )
    (if (< ?self:distMinHospital 500)
        then
        (format t "         - Hospital a %d metros" ?self:distMinHospital)
        (printout t crlf)
    )
    (if (< ?self:distMinInstituto 500)
        then
        (format t "         - Instituto a %d metros" ?self:distMinInstituto)
        (printout t crlf)
    )
    (if (< ?self:distMinJardin 500)
        then
        (format t "         - Jardín a %d metros" ?self:distMinJardin)
        (printout t crlf)
    )
    (if (< ?self:distMinMercado 500)
        then
        (format t "         - Mercado a %d metros" ?self:distMinMercado)
        (printout t crlf)
    )
    (if (< ?self:distMinMetro 500)
        then
        (format t "         - Boca de metro a %d metros" ?self:distMinMetro)
        (printout t crlf)
    )
    (if (< ?self:distMinMuseo 500)
        then
        (format t "         - Museo a %d metros" ?self:distMinMuseo)
        (printout t crlf)
    )
    (if (< ?self:distMinPabellon 500)
        then
        (format t "         - Pabellón a %d metros" ?self:distMinPabellon)
        (printout t crlf)
    )
    (if (< ?self:distMinParque 500)
        then
        (format t "         - Parque a %d metros" ?self:distMinParque)
        (printout t crlf)
    )
    (if (< ?self:distMinPlaya 500)
        then
        (format t "         - Playa a %d metros" ?self:distMinPlaya)
        (printout t crlf)
    )
    (if (< ?self:distMinPlaza 500)
        then
        (format t "         - Plaza a %d metros" ?self:distMinPlaza)
        (printout t crlf)
    )
    (if (< ?self:distMinRestaurante 500)
        then
        (format t "         - Restaurante a %d metros" ?self:distMinRestaurante)
        (printout t crlf)
    )
    (if (< ?self:distMinRocodromo 500)
        then
        (format t "         - Rocódromo a %d metros" ?self:distMinRocodromo)
        (printout t crlf)
    )
    (if (< ?self:distMinSupermercado 500)
        then
        (format t "         - Supermercado a %d metros" ?self:distMinSupermercado)
        (printout t crlf)
    )
    (if (< ?self:distMinTeatro 500)
        then
        (format t "         - Teatro a %d metros" ?self:distMinTeatro)
        (printout t crlf)
    )
    (if (< ?self:distMinTram 500)
        then
        (format t "         - Estación de tranvía a %d metros" ?self:distMinTram)
        (printout t crlf)
    )
    (if (< ?self:distMinTren 500)
        then
        (format t "         - Estación de tren a %d metros" ?self:distMinTren)
        (printout t crlf)
    )
    (if (< ?self:distMinUniversidad 500)
        then
        (format t "         - Universidad a %d metros" ?self:distMinUniversidad)
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
    (format t "%f)" ?self:coordY)
    (printout t crlf)
)
