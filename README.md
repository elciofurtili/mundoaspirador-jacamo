# Projeto CArtAgO: Mundo do Aspirador de Pó

Este projeto foi desenvolvido como parte de uma série de exercícios utilizando a plataforma **CArtAgO**, focando na criação de agentes e ambientes de simulação. O objetivo principal é explorar diferentes técnicas de coordenação entre agentes e controle de ambientes, em um mundo de salas em que os agentes são responsáveis por "aspirar" ou limpar as salas.

## Estrutura do Projeto

O projeto foi dividido em várias etapas (exercícios), cada uma com um objetivo específico. As etapas principais incluem a criação e coordenação de agentes, movimentação, exploração de ambientes 2D e comunicação entre os agentes.

### Exercícios

1. **Exercício 1**: Modificação do exemplo básico do mundo do aspirador de pó, para que um agente percorra 30 salas.
2. **Exercício 2**: Modificação do ambiente para fornecer informações a múltiplos agentes.
3. **Exercício 3**: Coordenação entre múltiplos agentes para tarefas de limpeza.
4. **Exercício 4**: Modificação do ambiente para ser um mundo de salas bidimensionais, com obstáculos.
5. **Exercício 5**: Criação de dois agentes (explorador e limpador), que se comunicam entre si para realizar as tarefas de limpeza.

#### Detalhamento dos Exercícios
1. Exercício 1: Agente em um Conjunto de 30 Salas
No primeiro exercício, modificamos o exemplo básico do mundo do aspirador de pó para que um único agente percorresse 30 salas. Cada sala foi representada como um espaço onde o agente poderia mover-se. O agente move-se entre as salas e aspira as que estão sujas.

```Os arquivos para essa atividade são:
- aspirador1.asl
- Ambiente1.java```

2. Exercício 2: Múltiplos Agentes
Neste exercício, o ambiente foi modificado para fornecer informações para mais de um agente. Agora, os agentes aspirador1 e aspirador2 podem percorrer o ambiente e limpar as salas simultaneamente, com cada um recebendo informações sobre sua própria posição e se a sala está suja ou limpa.

```Os arquivos para essa atividade são:
- aspirador2.asl
- Ambiente2.java```

3. Exercício 3: Coordenação de Múltiplos Agentes
Aqui, implementamos a coordenação entre dois agentes para realizar as tarefas de limpeza das salas. Ambos os agentes têm a capacidade de se mover pelo ambiente e aspirar as salas sujas, evitando a colisão entre eles. A coordenação é feita pela verificação da posição de cada agente, evitando que ocupem a mesma sala simultaneamente.

```Os arquivos para essa atividade são:
- aspirador31.asl
- aspirador32.asl
- Ambiente3.java```

4. Exercício 4: Mundo Bidimensional com Obstáculos
Modificamos o ambiente para ser uma matriz bidimensional (5x6) de salas, algumas das quais são inacessíveis devido à presença de obstáculos. Os agentes agora devem navegar por esse ambiente mais complexo, levando em consideração as limitações de movimento.

```Os arquivos para essa atividade são:
- aspirador41.asl
- aspirador42.asl
- Ambiente4.java```

5. Exercício 5: Agentes Exploradores e Limpadores
No quinto exercício, criamos dois tipos de agentes: o agente explorador, que busca por lixo no ambiente, e o agente limpador, que limpa o lixo encontrado. A comunicação entre os agentes é feita para que eles compartilhem informações sobre os locais em que encontram lixo, permitindo uma execução coordenada das tarefas de limpeza.

```Os arquivos para essa atividade são:
- aspirador51.asl
- aspirador52.asl
- Ambiente5.java```

## Tecnologias Utilizadas

- **CArtAgO**: Framework para simulação de ambientes multiagentes.
- **Java**: Linguagem de programação utilizada para desenvolvimento dos artefatos e agentes.
- **Maven**: Gerenciador de dependências para o projeto.

## Dependências

Este projeto utiliza o Maven para gerenciar as dependências. O arquivo `pom.xml` é configurado para incluir o CArtAgO como uma dependência do projeto.

### Dependências Principais:

```xml
<dependency>
    <groupId>cartago</groupId>
    <artifactId>cartago-core</artifactId>
    <version>VERSÃO_ATUAL</version>
</dependency>