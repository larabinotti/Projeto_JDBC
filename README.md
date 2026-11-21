# Loja de Doces - Projeto JDBC

Sistema de cadastro de lojas de doces desenvolvido em Java, com persistência em banco de dados MySQL usando JDBC. O projeto explora herança, classes abstratas e sobrescrita de métodos, levando a hierarquia de classes do Java para a estrutura do banco de dados.

> Atividade Exploratória (Individual) - 22/10/2026

---

## Sobre o projeto

O sistema permite cadastrar lojas e os doces que cada uma vende. Todo doce tem informações em comum (nome, preço, peso, calorias, estoque), e cada tipo de doce tem também características e comportamentos próprios:

| Tipo       | Atributos próprios                          | Método exclusivo                        |
|------------|---------------------------------------------|-----------------------------------------|
| Brigadeiro | cobertura, tipo de chocolate, gourmet       | `calcularPrecoCento()`                  |
| Bolo       | sabor da massa, recheio, número de fatias   | `calcularPrecoPorFatia()`               |
| Pudim      | sabor, tipo de calda, percentual de açúcar  | `calcularAcucarTotal()`, `calcularPorcoes()` |

## Funcionalidades

- Cadastro de lojas
- Cadastro de doces (brigadeiro, bolo e pudim) vinculados a uma loja
- Listagem de lojas e de doces
- Listagem dos doces de uma loja específica
- Busca de doces por nome
- Cálculo do valor total em estoque de uma loja
- Identificação do doce mais caro da loja
- Filtro de doces por tipo
- Aplicação de promoção (desconto percentual) em todos os doces de uma loja

### Responsabilidade de cada classe

- **Loja**: representa uma loja e concentra as operações sobre o conjunto de doces dela.
- **Doce**: classe abstrata com os atributos comuns a todos os doces. Define o método abstrato `getTipo()`.
- **Brigadeiro, Bolo e Pudim**: subclasses de `Doce`, cada uma com atributos e métodos próprios.
- **BancoDados**: abre a conexão com o MySQL e executa todos os comandos SQL via JDBC.
- **Menu**: interface com o usuário. Recebe as opções e chama os métodos de `BancoDados`.
