.model small ; declaración del programa
.stack ; declaración de tamaño del stack

.data ; segmento de datos (declaración de variables)


.code ; código del programa

    main PROC

        AreaTrapecio:
        ; Primero empezamos asignando los valores de la longitud de las bases
        mov ax, 14d ; ax = 14
        mov bx, 20d ; bx = 20

        ; Ahora hay que sumarlas y luego dividirlas entre 2
        add ax, bx ; ax = 14 + 20 = 34
        mov bx, 2d ; bx = 2
        div bx ; ax = ax / bx = 34 / 2 = 17

        ; Por último multiplicamos por la altura
        mov bx, 5d ; bx = 5
        mul bx ; ax = ax * bx = 17 * 5 = 85

        PerimetroTrapecio:
        ; Primero empezamos asignando los valores de la longitud de las bases
        mov ax, 14d ; ax = 14
        mov bx, 20d ; bx = 20

        ; Sumamos la longitud de las bases, que se guardará en ax
        add ax, bx ; ax = 14 + 20 = 34

        ; En bx vamos a guardar la longitud conjunta de las dos diagonales del trapecio
        mov bx, 12d ; bx = 12

        ; Por último, sumamos la longitud de las bases que se había guardado en ax
        ; con la longitud conjunta de las dos diagonales del trapecio, calculando el perímetro
        add ax, bx ; ax + bx = 34 + 12 = 46

    main ENDP

end main ; fin del programa