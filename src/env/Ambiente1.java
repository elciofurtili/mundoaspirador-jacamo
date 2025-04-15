package env;

import cartago.*;

public class Ambiente extends Artifact {
    private boolean[] salas = new boolean[30]; // true = suja
    private int[] posicoes = new int[1]; // posição do agente 0 (pode crescer depois)

    void init() {
        for (int i = 0; i < salas.length; i++) {
            salas[i] = true; // todas começam sujas
        }
        posicoes[0] = 0;
        defineObsProperty("pos", 0);
        defineObsProperty("suja", salas[0]);
    }

    @OPERATION
    void mover(String sentido) {
        int pos = posicoes[0];
        if (sentido.equals("right") && pos < salas.length - 1) {
            pos++;
        } else if (sentido.equals("left") && pos > 0) {
            pos--;
        }
        posicoes[0] = pos;
        getObsProperty("pos").updateValue(pos);
        getObsProperty("suja").updateValue(salas[pos]);
    }

    @OPERATION
    void aspirar() {
        int pos = posicoes[0];
        salas[pos] = false;
        getObsProperty("suja").updateValue(false);
    }
}