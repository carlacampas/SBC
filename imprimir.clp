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
    (format t "%f)" ?self:coordY)
    (printout t crlf)
)