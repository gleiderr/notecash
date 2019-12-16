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

    Esquema do Cenário: Registro de eventos inválidos
    Cenário: Registro de compra parcelada
    Cenário: Registro de investimento
    Cenário: Criptografia de registros