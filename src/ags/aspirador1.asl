+!iniciar : true <- 
    .print("Iniciando agente 1..."); 
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
    .print("Aspirando..."); 
    do(aspirar).

+!mover : direction(D) & D == right & pos(P) & P == 29 <- 
    -direction(right); 
    +direction(left); 
    !mover.

+!mover : direction(D) & D == left & pos(P) & P == 0 <- 
    -direction(left); 
    +direction(right); 
    !mover.

+!mover : direction(D) <- 
    .print("Movendo para", D); 
    do(mover(D)).