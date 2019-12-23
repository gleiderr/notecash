#language: pt
Funcionalidade: Anotação de eventos financeiros
    Desejo registrar eventos financeiros cuja ordem seja respeitada. Nem todos eventos possuem valor ou data associada. Nem toda data informa dia, mês e ano. Há registros de compras parceladas. Há registros de investimentos. É necessário que a privacidade de meus dados seja respeitada.

    Esquema do Cenário: Registro de eventos válidos com descrição, valor e data variados
        Dado a aplicação renderizada
        Quando o usuário digitar "<data>", "<evento>", "<valor>"
        Então a aplicação deve exibir "<data>", "<evento>", "<valor>"
        E a aplicação de registrar "<data>", "<evento>", "<valor>" no banco de dados

    Exemplos:
    | data       | evento         | valor |
    | 03/01/2020 | Luz            | 120   |
    |    01/2020 | Pestação Carro | 500   |
    |       2020 | IPTU           | 500   |
    |            | Plano de saúde | 350   |
    |            | Geladeira      |       |

    Cenário: Ordenação automática de registros
        Dado a aplicação renderizada
        E os registros ordenados:
            | data       | evento         | valor |
            |       2019 | Livros         | 570   |
            | 03/01/2020 | Luz            | 120   |
            |    01/2020 | Pestação Carro | 500   |
            |    01/2020 | IPTU atrasado  | 500   |
            | 15/01/2020 | Luz            | 120   |
            |       2020 | IPTU           | 500   |
            |            | Plano de saúde | 350   |
            |            | Geladeira      |       |
        E os registros reordenados aleatoriamente com semente também aleatória
        Quando o usuário digitar os registros
        Então os registros devem ser exibidos ordenados

    Cenário: Ordenação manual de registros
    Cenário: Registro de compra parcelada
    Cenário: Registro de investimento
    Cenário: Criptografia de registros
    Cenário: Registro de eventos inválidos
