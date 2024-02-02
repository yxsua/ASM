include lectura.asm ; importar macros

.model small ; declaración del programa
.stack ; declaración de tamaño del stack

.data ; segmento de datos (declaración de variables)
    ; var 1
    ; var 2
    ; ...
    ; var n

.code ; código del programa

    main PROC ; procedimiento main

        Etiqueta1:
            ; instrucción 1
            ; instrucción 2
            ; ...
            ; instrucción n

        Etiqueta2:
            ; instrucción 1
            ; instrucción 2
            ; ...
            ; instrucción n

    main ENDP ; fin del procedimiento

end main ; fin del programa