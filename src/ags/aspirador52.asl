+!iniciar : true <- 
    .print("Aspirador52 iniciando..."); 
    +direction(left);
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
        .print("Aspirador52 encontrou lixo em", P); 
        !aspirar;
    else
        !mover;
    !agir.

+!aspirar <- 
    .print("Aspirador52 aspirando..."); 
    do(aspirar("aspirador52")).

+!mover : direction(D) & D == right & pos(P) & P == 29 <- 
    -direction(right); 
    +direction(left); 
    !mover.

+!mover : direction(D) & D == left & pos(P) & P == 0 <- 
    -direction(left); 
    +direction(right); 
    !mover.

+!mover : direction(D) <- 
    .print("Aspirador52 movendo para", D); 
    do(mover("aspirador52", D)).
