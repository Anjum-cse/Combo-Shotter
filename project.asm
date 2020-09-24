.MODEL small
.STACK 100h
.DATA                  
    rule1 db "Gun up: ",24,"$"                               ;variable assign
    rule2 db "Gun down: ",25,"$"                             ;variable assign
    rule3 db "Fire: space$"                                  ;variable assign
    
    
    scoret db "Score: $"                                     ;variable assign
    score db 0                                               ;variable assign
    
    road dB 194,194,194,194,194,194,194,194,194,194,'$'      ;for road
    
    
    
    
    ;assign fantastic 5 using dw
    
    fantastic dw '  ',0ah,0dh         
    dw '             _____           _            _   _  ____          ',0ah,0dh 
    dw '            |  __ __ _ _ __ | |_ __ _ ___| |_(_)/ ___|         ',0ah,0dh 
    dw '            | |_ / _` | `_ \| __/ _` / __| __| | |             ',0ah,0dh
    dw '            |  _| (_| | | | | || (_| \__ | |_| | |___          ',0ah,0dh 
    dw '            |_|  \__,_|_| |_|\__\__,_|___/\__|_|\____|         ',0ah,0dh                                                        
    dw '                            ____________                       ',0ah,0dh 
    dw '                            ¦¦¦¦¦¦¦¦¦¦¦¦                       ',0ah,0dh 
    dw '                           ¦¦¦¦¦¦¦¦¦¦¦¦¦¦                      ',0ah,0dh 
    dw '                           ¦¦¦        ¦¦¦                      ',0ah,0dh 
    dw '                                      ¦¦¦                      ',0ah,0dh 
    dw '                                     ¦¦¦                       ',0ah,0dh 
    dw '                                   ¦¦¦                         ',0ah,0dh 
    dw '                                 ¦¦¦                           ',0ah,0dh 
    dw '                               ¦¦¦                             ',0ah,0dh 
    dw '                             ¦¦¦                               ',0ah,0dh 
    dw '                           ¦¦¦¦¦¦¦¦¦¦¦¦¦¦                      ',0ah,0dh 
    dw '                           ¦¦¦¦¦¦¦¦¦¦¦¦¦¦                      ',0ah,0dh 
    dw '                                                   ',0ah,0dh                                      
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw '                    Loding $'
    
    
    
    
    
    ;assign welcome using dw
    
    welcome dw '  ',0ah,0dh    
    dw '___              ___        ___                                   __________ ',0ah,0dh      
    dw '`Mb(      db      )d        `MM                                   `MMMMMMMMM',0ah,0dh       
    dw ' YM.     ,PM.     ,P         MM                                    MM      \',0ah,0dh       
    dw ' `Mb     d Mb     d   ____   MM   ____     _____  ___  __    __    MM       ',0ah,0dh       
    dw '  YM.   ,P YM.   ,P  6MMMMb  MM  6MMMMb.  6MMMMMb `MM 6MMb  6MMb   MM    ,  ',0ah,0dh      
    dw '  `Mb   d  `Mb   d  6M   `Mb MM 6M   Mb  6M    `Mb MM69 `MM69 `Mb  MMMMMMM  ',0ah,0dh       
    dw '   YM. ,P   YM. ,P  MM    MM MM MM     ` MM     MM MM    MM    MM  MM       ',0ah,0dh       
    dw '   `Mb d    `Mb d   MMMMMMMM MM MM       MM     MM MM    MM    MM  MM       ',0ah,0dh       
    dw '    YM,P     YM,P   MM       MM MM       MM     MM MM    MM    MM  MM       ',0ah,0dh      
    dw '    `MM      `MM    YM    d9 MM YM.   d9 YM.   ,M9 MM    MM    MM  MM      /',0ah,0dh      
    dw '     YP       YP     YMMMM9 _MM_ YMMMM9   YMMMMM9 _MM_  _MM_  _MM__MMMMMMMMM',0ah,0dh      
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh      usin
    dw '                        Press Enter to start $',0ah,0dh  
    
    
    
    
    ;assign fantastic 5 using dw
    
    game_over_str dw '  ',0ah,0dh 
    dw '           ____                                             ____   ',0ah,0dh
    dw '          / ___|  __ _  _ __ ___    ___    ___ __   __ ___ |  _ \  ',0ah,0dh
    dw '         | |  _  / _` ||  _ ` _ \  / _ \  / _ \\ \ / // _ \| |_) | ',0ah,0dh
    dw '         | |_| || (_| || | | | | ||  __/ | (_) |\ V /|  __/|  _ <  ',0ah,0dh
    dw '          \____| \__,_||_| |_| |_| \___|  \___/  \_/  \___||_| \_\ ',0ah,0dh
    dw '                                                                   ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw '                        Press Enter to start $',0ah,0dh  
    
    
    
    ;enemy born position 68 42 26
    ;when first enemy position 42 then born second enemy
    
    
    up_enemy1 db 68                                                 ;variable assign
    up_enemy2 db 42                                                 ;variable assign
    up_enemy3 db 26                                                 ;variable assign
    
    
    ;check enemy active or not
    
    up_enemy1_active db 0                                           ;0 = no 1 = yes
    up_enemy2_active db 0                                           ;0 = no 1 = yes
    up_enemy3_active db 0                                           ;0 = no 1 = yes
    
    down_enemy1_active db 0                                         ;0 = no 1 = yes
    
    ;assign down enemy born posiiton
    down_enemy1 db 65                                               ;variable assign
    
    
    ;bullet 1 start position
    bullet1_positon db 18                                           ;variable assign
    
    
    ;check bullet 1 active or not
    is_bullet1_active db 0                                          ;0 = no 1= yes
    
    ;assign variabel for check gun up or down
    is_gun_up db 1                                                  ;1 for gun position up
    is_fire_up db 0                                                 ;0 for down fire
    
    
                                                                    ;variable assign
    speed_level db 1 
     
    
    
    
.CODE
MAIN PROC                                                           ;load data
    mov ax,@data                                
    mov ds,ax
    
    
    ;use this level for start game again after game over
    game_start:                                                     
     
              
    mov ah, 09h                ;library function for print string
    
    mov bl, 1011b              ;lbrary function color code
    int 10h                              
    
 
    lea dx, fantastic         ;show fantastic 5 and loading 
    int 21h 
      
    
 
    
    ;assigh CX = 40 for loading   
    MOV CX,40 
    
     
     ;use this level for dot print like loading  
     dotPrint:
        ;CMP CX,0
        MOV AH,2
        MOV DL,'.'           ;print .
        INT 21H 
        DEC CX
        CMP CX,20
        JE  spacePrint
        JMP dotPrint
                  
     
     ;after print dot wait sometime and go to welcome screen   
     spacePrint:
        ;CMP CX,0
        MOV AH,2
        MOV DL,' '
        INT 21H 
        DEC CX
        CMP CX,0
        JE sclar_  ;screen clear
        JMP spacePrint
    
    
    ;this level for clean screen
    sclar_:
        mov ah,0                       ;screen clear
        mov al,3
        int 10h ;textmode                                                                       
         
    
        
    mov ah, 09h                        ;library function for print string   
    lea dx, welcome                     ;show wecome and wait for input
    int 21h
    
    
    ;wait untill press enter
    ;if input not equal to enter
    ;then continue loop
    ;else goto main process
    input:
        mov ah,1                       ;continue untill press enter
        int 21h
        cmp al,13d
        jne input
    
        mov ah,0                       ;screen clear
        mov al,3
        int 10h   
        
    
    ;PRINT RULE 1
    ;this is a library function
    ;set cursor position
    MOV AH,2                           ;library function for set cursor position
    MOV DL,10                          ;assign column position
    MOV DH,3                           ;assign row position
    INT 10h
    ;print string function
    mov ah,9                           ;function for print data
    LEA Dx,rule1                       ;print rule1
    int 21h
    
    
    ;PRINT RULE 2
    ;set cursor position
    MOV AH,2                           ;function for set cursor position
    MOV DL,10                          ;assign column position
    MOV DH,4                           ;assign row position
    INT 10h
    ;print string function
    mov ah,9
    lea dx,rule2
    int 21h
    
    
    ;PRINT RULE 3
    ;set cursor position
    MOV AH,2                            ;function for set cursor position
    MOV DL,10                           ;column
    MOV DH,5                            ;row
    INT 10h    
    ;print string function
    mov ah,9
    lea dx, rule3
    int 21h
    
    
    ;PRINT  SCORE
    ;set cursor position
    MOV AH,2                            ;function for set cursor position
    MOV DL,50                           ;column
    MOV DH,4                            ;row
    INT 10h
    ;print string function
    mov ah,9
    lea dx, scoret
    int 21h
    
    
    ;print function single char
    ;first score 0 
    mov ah,2
    mov dl,'0'
    int 21h
    
    
    ;SCORE COUNT
    ;FIRST ZERO
    mov Bl,48
    
  ;MAIN ROAD
        ;ROAD POSITON
             MOV AH,2                ;function for set cursor position
             MOV DL,10               ;column
             MOV DH,15               ;row
             INT 10h
        
        ;PRINT ROAD
             
             ;loop 6 time for road print
             MOV CX,6
             
             mov ah,9
             LEA Dx,road
             
             SHOW_ROAD:
                INT 21H
                LOOP SHOW_ROAD
                  
   
   ;CHARECTER DISPLAY
       CHAR_DISPLAY:
             ;set cursor position
             MOV AH,2              ;function for set cursor position
             MOV DL,13             ;CLOUMN
             MOV DH,11             ;ROW
             INT 10H
             ;print
             MOV DL,1              ;HEAD
             INT 21H
             
             ;set cursor position                  
             MOV DL,13
             MOV DH,12
             INT 10H
             ;print
             MOV DL,221             ;BODY UP
             INT 21H
             
             ;set cursor position
             MOV DL,13
             MOV DH,13
             INT 10H
             ;print
             MOV DL,221             ;BODY DOWN
             INT 21H
             
             ;set cursor position
             MOV DL,12
             MOV DH,14
             INT 10H
             ;print
             MOV DL,47             ;LEFT LEG
             INT 21H
             
             ;set cursor position  
             MOV DL,14
             MOV DH,14
             INT 10H
             ;print
             MOV DL,92             ;RIGHT LEG
             INT 21H
             
             
             
             MOV CX,70
             mov bx,18
             
             JMP GUN_UP
             
             
             
             ;SHOW GUN
             GUN_UP:
                 ;update variable value
                 mov is_gun_up,1
                 
                 ;set cursor position
                 MOV AH,2 
                 MOV DL,14
                 MOV DH,12
                 INT 10H
                 ;print
                 MOV DL,47             ;hand
                 INT 21H
                 
                 ;set cursor position
                 MOV AH,2 
                 MOV DL,15
                 MOV DH,11
                 INT 10H
                 ;print
                 MOV DL,220             ;UP MIDDLE
                 INT 21H
                 INT 21H
                 INT 21H
                 
                 ;set cursor position
                 MOV DL,15
                 MOV DH,12
                 INT 10H
                 ;print
                 MOV DL,219             
                 INT 21H
                 MOV DL,217             
                 INT 21H
                 JMP ENEMY
            
            
            ;IF GUN IN DOWN THEN RESET PREVIOUS GUN     
            GUN_UP_RESET:
                 
                 ;set cursor position
                 MOV AH,2 
                 MOV DL,14
                 MOV DH,12
                 INT 10H
                 ;print
                 MOV DL,32             ;hand
                 INT 21H
                 
                 ;set cursor position
                 MOV AH,2 
                 MOV DL,15
                 MOV DH,11
                 INT 10H
                 
                 ;print
                 MOV DL,32            
                 INT 21H
                 INT 21H
                 INT 21H
                 
                 MOV DL,15
                 MOV DH,12
                 INT 10H
                 
                 MOV DL,32             
                 INT 21H
                 MOV DL,32             
                 INT 21H
                 JMP GUN_DOWN     
               
             
             ;GUN PRINT
             GUN_DOWN:
                 mov is_gun_up,0
                 
                 ;set cursor position
                 MOV AH,2 
                 MOV DL,14
                 MOV DH,12
                 INT 10H
                 ;print
                 MOV DL,92             ;hand
                 INT 21H
                 
                 ;set cursor position
                 MOV AH,2 
                 MOV DL,15
                 MOV DH,12
                 INT 10H
                 
                 ;print
                 MOV DL,220             ;UP MIDDLE
                 INT 21H
                 INT 21H
                 INT 21H
                 
                 MOV DL,15
                 MOV DH,13
                 INT 10H
                 
                 MOV DL,219             
                 INT 21H
                 MOV DL,217             
                 INT 21H
                 JMP ENEMY
                 
             
                 
            
            ;IF GUN IN UP THEN RESET PREVIOUS GUN 
            GUN_DOWN_RESET:
                 ;set cursor position
                 MOV AH,2
                 MOV DL,15
                 MOV DH,12
                 INT 10H
                 
                 
                 MOV DL,32             
                 INT 21H
                 INT 21H
                 INT 21H
                 
                 MOV DL,15
                 MOV DH,13
                 INT 10H
                 
                 MOV DL,32             
                 INT 21H
                 MOV DL,32             
                 INT 21H 
                 JMP GUN_UP
                 
                 
        
        
        ;ENEMY BORN START
        
        ENEMY:
            ;set cursor position
            MOV AH,2
            MOV DL,CL
            MOV DH,11
            INT 10H
            
            dec cx                        ;because enemy come right to left
            
            
            CMP CL,up_enemy1              
            je active_up_enemy1           ;if position 68 then active enemy1
                        
            CMP CL,up_enemy2
            je active_up_enemy2           ;if position 42 then active enemy2
            
            CMP CL,up_enemy3
            je active_up_enemy3           ;if position 26 then active enemy3
                              
            JMP bullet_update_position    ;if no enemy active then check 
                                          ;update bullet position if active
       ;ENEMY BORN END     
     
     
     
     
     bullet_update_position:
            cmp is_bullet1_active,0                 ;if bullet 1 active
            je enemy_positon_update                 ;go to level and update positoin
            
            cmp is_fire_up,1
            je bullet1_position_update
            
            cmp is_fire_up,0
            jmp down_bullet1_position_update
            
            JMP enemy_positon_update
     
     
     
     bullet1_position_update:
            MOV AH,2
            MOV DL,bullet1_positon
            MOV DH,11
            INT 10H
            
            MOV AH,2
            MOV DL,32                     ;remove previous bullet using space
            INT 21H
                                          ;inc bullet position
            inc bullet1_positon
            inc bullet1_positon
            inc bullet1_positon
            
            MOV AH,2
            MOV DL,bullet1_positon        ;update bullet posion
            MOV DH,11
            INT 10H
            
            MOV AH,2                      ;show bullet in new position
            MOV DL,224
            INT 21H
            
            jmp enemy_positon_update
     
     down_bullet1_position_update:
            MOV AH,2
            MOV DL,bullet1_positon
            MOV DH,12
            INT 10H
            
            MOV AH,2
            MOV DL,32                     ;remove previous bullet using space
            INT 21H
                                          ;inc bullet position
            inc bullet1_positon
            
            MOV AH,2
            MOV DL,bullet1_positon        ;update bullet posion
            MOV DH,12
            INT 10H
            
            MOV AH,2                      ;show bullet in new position
            MOV DL,224
            INT 21H
     
     enemy_positon_update:                          ;if any enemy active then go to 
            cmp up_enemy1_active,1                  ;level and update its position
            je up_enemy1_positon_update             ;else go to enemy
            
            cmp up_enemy2_active,1
            je up_enemy2_positon_update
            
            cmp up_enemy3_active,1
            je up_enemy3_positon_update
            
            jmp enemy
     
     
     
     active_up_enemy1:                           ;active enemy 1 
            MOV AH,2
            MOV DL,up_enemy1
            MOV DH,11
            INT 10H
            
            MOV AH,2
            MOV DL,15
            INT 21H
            
            mov up_enemy1_active,1
            
            jmp enemy
            
      up_enemy1_positon_update:                  ;enemy 1 position update
            MOV AH,2
            MOV DL,up_enemy1
            MOV DH,11
            INT 10H
            
            MOV AH,2
            MOV DL,32
            INT 21H
            
            
            dec up_enemy1
            dec up_enemy1
            
            
            cmp up_enemy1,19                     ; if enemy 1 cross hero then game over
            jle game_over
            
            mov bl,bullet1_positon               ;if bullet 1 hit enemy 1
            cmp bl,up_enemy1
            jge up_enemy1_hit
            
            
     
            MOV AH,2
            MOV DL,up_enemy1
            MOV DH,11
            INT 10H
            
            MOV AH,2
            MOV DL,15
            INT 21H
            
            cmp up_enemy2_active,1
            je  up_enemy2_positon_update
            
            MOV AH,1
            INT 16H
                                                             
            JNZ key_pressed 
            
            jmp down_enemy_update_position      
      
      
      active_up_enemy2:                   ;enemy 2 active
            mov up_enemy2,68
            
            MOV AH,2
            MOV DL,up_enemy2
            MOV DH,11
            INT 10H
            
            MOV AH,2
            MOV DL,15
            INT 21H
            
            mov up_enemy2_active,1
            
            jmp enemy
            
      
      up_enemy2_positon_update:          ;emeny 2 position update
            MOV AH,2
            MOV DL,up_enemy2
            MOV DH,11
            INT 10H
            
            MOV AH,2
            MOV DL,32
            INT 21H
            
            dec up_enemy2
            dec up_enemy2
            
            cmp up_enemy2,19
            jle game_over
            
            mov bl,bullet1_positon
            cmp bl,up_enemy2
            jge up_enemy2_hit
            
             
             

            MOV AH,2
            MOV DL,up_enemy2
            MOV DH,11
            INT 10H
            
            MOV AH,2
            MOV DL,15
            INT 21H
            
            cmp up_enemy3_active,1
            je  up_enemy3_positon_update
            
            MOV AH,1
            INT 16H
            
            JNZ key_pressed 
            
            jmp down_enemy_update_position 
            
                  
      active_up_enemy3:                         ;active enemy 3
            mov up_enemy3,68
            
            MOV AH,2
            MOV DL,up_enemy3
            MOV DH,11
            INT 10H
            
            MOV AH,2
            MOV DL,15
            INT 21H
            
            mov up_enemy3_active,1
            
            jmp enemy
            
      
      up_enemy3_positon_update:                 ;update enemy positon
            MOV AH,2
            MOV DL,up_enemy3
            MOV DH,11
            INT 10H
            
            MOV AH,2
            MOV DL,32
            INT 21H
            
            dec up_enemy3
            dec up_enemy3
            
            cmp up_enemy3,19
            jle game_over
            
            mov bl,bullet1_positon
            cmp bl,up_enemy3
            jge up_enemy3_hit
            
             
            
            
            
            MOV AH,2
            MOV DL,up_enemy3
            MOV DH,11
            INT 10H
            
            MOV AH,2
            MOV DL,15
            INT 21H
            
            MOV AH,1
            INT 16H
            
            JNZ key_pressed
            
            jmp down_enemy_update_position 
      
      fire:
            cmp is_bullet1_active,0
            je  active_bullet1
            
            jmp enemy_positon_update
      
      active_bullet1:
            mov is_bullet1_active,1 
            
            mov bullet1_positon,18
            
            cmp is_gun_up,0
            je  active_bullet1_down
            
            mov is_fire_up,1
            MOV AH,2
            MOV DL,bullet1_positon
            MOV DH,11
            INT 10H
            jmp continue
            
            active_bullet1_down:
                mov is_fire_up,0
                
                MOV AH,2
                MOV DL,bullet1_positon
                MOV DH,12
                INT 10H
            
            continue:
                MOV AH,2
                MOV DL,224
                INT 21H
            
            jmp enemy_positon_update
      
      
     
      
        
                 
      key_pressed:                            ;input hanaling section
        mov ah,0
        int 16h
    
        cmp ah,48h                            ;go upKey if up button is pressed
        je GUN_DOWN_RESET
        cmp ah, 50h
        je GUN_UP_RESET
        
        cmp ah,39h                            ;go spaceKey if up button is pressed
        je FIRE
;       
                                              ;if no key is pressed go to inside of loop
        jmp ENEMY       

    
    up_enemy1_hit:          
            MOV AH,2
            MOV DL,7                        ;play a beep sound
            INT 21H
          
            
            mov up_enemy1_active,0           ;deactive enemy 1
            mov is_bullet1_active,0          ;deactive bullet 1
            
            MOV AH,2                         ;set cursor for remove emeny 1
            MOV DL,up_enemy1
            MOV DH,11
            INT 10H
            
            mov dl,32                        ;remove enemy 
            int 21h
            
            MOV AH,2                         ;set cursor for remove bullet 1
            MOV DL,bullet1_positon
            MOV DH,11
            INT 10H
            
            mov dl,32                        ;remove bullet 
            int 21h                           
            
              
            mov up_enemy1,68                 ;for next enemy 1
            MOV bullet1_positon,18           ;reset bullet1 position
            
            
            
            mov down_enemy1_active,1         ;active down enemy 2
            
            MOV AH,2                         ;set cursor for show enemy
            MOV DL,down_enemy1
            MOV DH,12
            INT 10H
            
            MOV AH,2
            MOV DL,15
            INT 21H
            
       jmp show_score
    
    
    up_enemy2_hit:          
            MOV AH,2
            MOV DL,7
            INT 21H
            
            mov up_enemy2_active,0
            mov is_bullet1_active,0
            
            
            MOV AH,2
            MOV DL,up_enemy2
            MOV DH,11
            INT 10H
            
            mov dl,32
            int 21h 
            
             
            MOV AH,2                         ;set cursor for remove bullet 1
            MOV DL,bullet1_positon
            MOV DH,11
            INT 10H
            
            mov dl,32                        ;remove bullet 
            int 21h
            
            mov up_enemy2,42
            MOV bullet1_positon,18           ;reset bullet1 position
            
            mov down_enemy1_active,1         ;active down enemy 2
            
            MOV AH,2                         ;set cursor for show enemy
            MOV DL,down_enemy1
            MOV DH,12
            INT 10H
            
            MOV AH,2
            MOV DL,15
            INT 21H
                       
  
       jmp show_score
       
       
    up_enemy3_hit:          
            MOV AH,2
            MOV DL,7
            INT 21H
                         
            mov up_enemy3_active,0
            mov is_bullet1_active,0
            
            MOV AH,2
            MOV DL,up_enemy3
            MOV DH,11
            INT 10H
            
            mov dl,32
            int 21h  
            
             
            MOV AH,2                         ;set cursor for remove bullet 1
            MOV DL,bullet1_positon
            MOV DH,11
            INT 10H
            
            mov dl,32                        ;remove bullet 
            int 21h 
            
            mov cx,70
            
            mov up_enemy3,26
            MOV bullet1_positon,18           ;reset bullet1 position
            
            mov down_enemy1_active,1         ;active down enemy 2
            
            MOV AH,2                         ;set cursor for show enemy
            MOV DL,down_enemy1
            MOV DH,12
            INT 10H
            
            MOV AH,2
            MOV DL,15
            INT 21H
    
       jmp show_score   
    
    
    down_enemy_update_position:                            ;if any enemy active then go to 
            cmp down_enemy1_active,1                  ;level and update its position
            je down_enemy1_positon_update             ;else go to enemy
            
            jmp enemy 
            
            
    down_enemy1_positon_update:
            MOV AH,2
            MOV DL,down_enemy1
            MOV DH,12
            INT 10H
            
            MOV AH,2
            MOV DL,32
            INT 21H
            
            
            dec down_enemy1
            dec down_enemy1
            dec down_enemy1
            
            cmp speed_level,2
            je level2
            
            cmp speed_level,3
            je level3
            
            jmp else
            
            level2:
                dec down_enemy1
                jmp else
            
            level3:
                dec down_enemy1
                dec down_enemy1
            
            
            else:
                cmp down_enemy1,19                     ; if enemy 1 cross hero then game over
                jle game_over
                
                ;cmp is_fire_up,1                        ;if fire on up
                ;je  enemy
                
                mov bl,bullet1_positon               ;if bullet 1 hit enemy 1
                cmp bl,down_enemy1
                jge down_enemy1_hit
                
                
         
                MOV AH,2
                MOV DL,down_enemy1
                MOV DH,12
                INT 10H
                
                MOV AH,2
                MOV DL,15
                INT 21H
                
               
                MOV AH,1
                INT 16H
                                                                 
                JNZ key_pressed 
        
                jmp enemy
    
     down_enemy1_hit:          
            MOV AH,2
            MOV DL,7                        ;play a beep sound
            INT 21H
            
            mov down_enemy1_active,0           ;deactive enemy 1
            mov is_bullet1_active,0          ;deactive bullet 1
            
            MOV AH,2                         ;set cursor for remove emeny 1
            MOV DL,down_enemy1
            MOV DH,12
            INT 10H
            
            mov dl,32                        ;remove enemy 
            int 21h
            
            MOV AH,2                         ;set cursor for remove bullet 1
            MOV DL,bullet1_positon
            MOV DH,12
            INT 10H
            
            mov dl,32                        ;remove bullet 
            int 21h
            
            mov down_enemy1,65                 ;for next enemy 1
            MOV bullet1_positon,18           ;reset bullet1 position
            
            inc speed_level
            
            cmp speed_level,4
            jl show_score
            
            mov speed_level,1
            
       jmp show_score
       
    show_score:
        inc score
    
        MOV AH,2              ;function for set cursor position
        MOV DL,57               ;column
        MOV DH,4               ;row
        INT 10h
        
        mov si,offset score
    
        mov ah,2
        mov dx,[si]
        add dx,48
        int 21h
        
        jmp enemy   
        
    game_over:
        MOV AH,2
        MOV DL,7                        ;play a beep sound
        INT 21H
        int 21h
        int 21h
        int 21h
        int 21h
            
        mov ah,0                       ;screen clear
        mov al,3
        int 10h 
        
        mov ah,09h
        lea dx, game_over_str
        int 21h
         
    input_:
        mov ah,1                       ;continue untill press enter
        int 21h
        cmp al,13d
        jne input_
    
        mov ah,0                       ;screen clear
        mov al,3
        int 10h
        
        mov score,0                      ;reset all data
             
        mov up_enemy1,68
        mov up_enemy2,42
        mov up_enemy3,26
        
        
        mov up_enemy1_active,0 ;0 = no 1 = yes
        mov up_enemy2_active,0
        mov up_enemy3_active,0
        
        mov down_enemy1_active,0
        
        mov down_enemy1,65
        
        mov bullet1_positon,8
        
        mov is_bullet1_active,0 ; 0 = no 1= yes
        
        mov is_gun_up,1          ; 1 for gun position up
        mov is_fire_up,0         ;0 for down fire
        
        mov speed_level,1      
 
        jmp game_start     
             
    
    END_PROC:
        MOV AH,4CH
        INT 21H    
    
    MAIN ENDP
END MAIN  




;SOUCE
    ;search 
        ;google.com 
        ;wikipedia.org

    ;cursor position
        ;>>  https://en.wikipedia.org/wiki/INT_10H
        ;>>  http://9wab.blogspot.com/2012/03/8086-assembly-code-to-move-cursor-start.html    
    
    ;color
        ;>>  https://en.wikipedia.org/wiki/BIOS_color_attributes
        ;>>  http://www.dreamincode.net/forums/topic/332743-changing-the-background-color-by-entering-a-number/
        
    
    ;write dw
        ;>>  https://www.youtube.com/watch?v=PGRVtXuVgeI
        
    
    ;video tutorial
        ;>>  https://www.youtube.com/watch?v=4ij9k4EFo9c&list=PL-sgDdWtA3yKzl1BB21EstEYjAmp8KYXy        