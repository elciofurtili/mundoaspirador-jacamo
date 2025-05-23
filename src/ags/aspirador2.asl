+!iniciar : true <- 
    .print("Iniciando agente 2..."); 
    +direction(left);
    !agir.

+!agir <- 
    ?pos(P);
    ?suja(S);
    if S == true then
        !aspirar;
    else
        !mover;
    !agir.

+!aspirar <- 
    .print("Aspirador2 aspirando..."); 
    do(aspirar("aspirador2")).

+!mover : direction(D) & D == right & pos(P) & P == 29 <- 
    -direction(right); 
    +direction(left); 
    !mover.

+!mover : direction(D) & D == left & pos(P) & P == 0 <- 
    -direction(left); 
    +direction(right); 
    !mover.

+!mover : direction(D) <- 
    .print("Aspirador2 movendo para", D); 
    do(mover("aspirador2", D)).
