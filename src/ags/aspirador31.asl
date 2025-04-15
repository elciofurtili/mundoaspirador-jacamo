+!iniciar : true <- 
    .print("Agente 31 iniciando..."); 
    +direction(right);
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
    .print("Aspirador31 aspirando..."); 
    do(aspirar("aspirador1")).

+!mover : direction(D) & D == right & pos(P) & P == 29 <- 
    -direction(right); 
    +direction(left); 
    !mover.

+!mover : direction(D) & D == left & pos(P) & P == 0 <- 
    -direction(left); 
    +direction(right); 
    !mover.

+!mover : direction(D) <- 
    .print("Aspirador31 movendo para", D); 
    do(mover("aspirador1", D)).
