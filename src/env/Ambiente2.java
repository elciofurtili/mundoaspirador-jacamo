package env;

import cartago.*;

public class Ambiente extends Artifact {
    private boolean[] salas = new boolean[30]; // true = suja
    private int[] posicoes = new int[2]; // dois agentes

    void init() {
        for (int i = 0; i < salas.length; i++) {
            salas[i] = true;
        }
        posicoes[0] = 0;
        posicoes[1] = 29;
        defineObsProperty("pos", "aspirador1", posicoes[0]);
        defineObsProperty("suja", "aspirador1", salas[posicoes[0]]);
        defineObsProperty("pos", "aspirador2", posicoes[1]);
        defineObsProperty("suja", "aspirador2", salas[posicoes[1]]);
    }

    @OPERATION
    void mover(String ag, String sentido) {
        int idx = ag.equals("aspirador1") ? 0 : 1;
        int pos = posicoes[idx];
        if (sentido.equals("right") && pos < salas.length - 1) {
            pos++;
        } else if (sentido.equals("left") && pos > 0) {
            pos--;
        }
        posicoes[idx] = pos;
        getObsProperty("pos", ag).updateValue(pos);
        getObsProperty("suja", ag).updateValue(salas[pos]);
    }

    @OPERATION
    void aspirar(String ag) {
        int idx = ag.equals("aspirador1") ? 0 : 1;
        int pos = posicoes[idx];
        salas[pos] = false;
        getObsProperty("suja", ag).updateValue(false);
    }
}