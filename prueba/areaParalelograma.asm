.model small
.stack 

.data 

.model 

.code
    main PROC

        Area:
        mov ax, 6d ; h = ax = 6
        mov bx, 8d ; b = bx = 8
        mul bx ; ax = b * h = ax * bx = 48

        Perimetro: 
        mov ax, 8d ; b = ax = 8
        mov bx, 7d ; a = bx = 7
        add ax, bx ; ax = b + a = ax + bx ) = 8 + 7 = 15

        mov bx, 2d ; bx = 2
        mul bx ; ax = 2 * (b + a) = bx * ax = 2 * 15 = 30

    .exit
    main ENDP
end main