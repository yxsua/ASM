.model small
.stack

.data
    ; Creamos una variable por cada tipo de medida que pueden tener
    ; las figuras
    base db 8d
    baseM db 14d
    altura db 6d
    lado db 7d
    apotema db 5d
    diagonalMe db 4d
    diagonalMa db 8d

    ; Guardar areas y perímetros
    lado db 7d ;Data Byte de 8 bits
    area dw 0d ;Data Word de 16 bits
    cuadrado dd 50d ;Data Double de 32 bits

    perimetro dw 0d

.code 

    main PROC
        ; Importacion a segmento
        mov ax,@data  
        mov ds,ax
        xor ax,ax 

        ; Cálculo área & perímetro del Trapecio
        Trapecio:
        mov al, base
        mul altura ; A = base * altura
        mov area, ax

        mov al, base
        add al, lado ; base + altura
        mov bx, 2d
        mul bx ; P = 2 * (base + altura)
        mov perimetro, ax

        Hexagono:
        mov lado, 6d ; lado = 6
        mov bx, 6d
        mov al, lado 
        mul bx ; P = 6 * L
        mov perimetro, ax

        mov bl, apotema
        mul bl ; perimetro * apotema
        mov bx, 2d
        div bx ; A = perimetro * apotema / 2
        mov area, ax

        Paralelogramo:
        mov base, 20d
        mov altura, 5d
        mov al, base
        add al, baseM ; base mayor + base menor
        mov bx, 2d
        div bx ; (base mayor + base menor) / 2
        mul altura ; (base mayor + base menor) / 2 * altura
        mov area, ax

        mov al, lado
        mov bx, 2d
        mul bx ; Lado * 2
        add al, base
        add al, baseM ; base mayor + base menor + Lado * 2
        mov perimetro, ax

        Rombo:
        mov al, diagonalMa
        mov bl, diagonalMe
        mul bl ; diagonal mayor * diagonal menor
        mov bx, 2d
        div bx ; diagonal mayor * diagonal menor / 2
        mov area, ax

        mov lado, 5d
        mov ax, 4d
        mul lado ; Lado * 4
        mov perimetro, ax

        .exit 
    main ENDP
end main