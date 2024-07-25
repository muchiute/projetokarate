# Automação API Exemplos - Autopass

Projeto de exemplo utilizando Karate DSL para ser usado como base para futuros projetos

## Dependências

    - Maven
    - Java 8 (JDK)
    - Karate DSL
    - Cucumber Reporting

## Setup

    - Clone project `$ git clone git@gitlab.automacao-api/projetos-api-exemplo/karate_project.git`

## Execução dos testes

### Ambientes

    - dev
    - hml
    - canary

## Execução

### Executar todos os testes

`$ mvn clean test "-Dkarate.env=hml"`

### Executar os testes por tag

`$ mvn clean test "-Dkarate.env=hml" "-Dkarate.options=--tags=@cenario_02 --tags=~@ignore"`

### Executar os testes por tag com uma massa específica

`$ mvn clean test "-Dkarate.env=hml" "-Dkarate.options--tags=@cenario_02 --tags=@ct_02 --tags=~@ignore"`

## Relatório de testes

    - Karate Report: `target/karate-reports/karate-summary.html`
    - Cucumber Report: `target/cucumebr-html-reports/overview-features.html`

## Configurações do projeto

- No arquivo `karate-config.js`

| Parâmetro         | Descrição                                                                        | Valores possíveis |
| ----------------- | -------------------------------------------------------------------------------- | ----------------- |
| logPrettyRequest  | Realiza a indentação da request                                                  | true / false      |
| logPrettyResponse | Realiza a indentação da response                                                 | true / false      |
| connectTimeout    | Define o tempo limite de conexão (milissegundos). O padrão é 30000 (30 segundos) | integer           |
| readTimeout       | Defina o tempo limite de leitura (milissegundos). O padrão é 30000 (30 segundos) | integer           |
| retry             | Tentativas de execução de um teste. Padrão é 3 tentativas em 3 segundos (3000)   | integer / integer |

## Parâmetros ao executar o teste

| Parâmetros                     | Valores possíveis | Valor padrão                          |
| ------------------------------ | ----------------- | ------------------------------------- |
| -Dkarate.env=`env`             | dev / prod / hml  | dev                                   |
| -Dkarate.options=--tags=`@tag` | qualquer tag      | nenhuma tag (executa todos os testes) |
| -Dthreads=`int`                | qualquer inteiro  | 1                                     |
