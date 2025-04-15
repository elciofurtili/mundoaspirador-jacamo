+!iniciar : true <- 
    .print("Aspirador51 iniciando..."); 
    +direction(right);
    !agir.

+!agir <- 
    ?pos(P);
    ?suja(S);
    if S == true then
        !aspirar;
    else
        !explorar;
    !agir.

+!explorar <- 
    ?pos(P);
    ?lixo(L);
    if L == true then
        .print("Aspirador51 encontrou lixo em", P); 
        !aspirar;
    else
        !mover;
    !agir.

+!aspirar <- 
    .print("Aspirador51 aspirando..."); 
    do(aspirar("aspirador51")).

+!mover : direction(D) & D == right & pos(P) & P == 29 <- 
    -direction(right); 
    +direction(left); 
    !mover.

+!mover : direction(D) & D == left & pos(P) & P == 0 <- 
    -direction(left); 
    +direction(right); 
    !mover.

+!mover : direction(D) <- 
    .print("Aspirador51 movendo para", D); 
    do(mover("aspirador51", D)).
