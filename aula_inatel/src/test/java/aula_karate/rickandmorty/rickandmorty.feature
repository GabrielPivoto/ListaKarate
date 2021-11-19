Feature: Executar testes funcionais na API de Rick and Morty

Scenario: Verificar o retorno com sucesso da API Ethan com dados válidos de requisição
    Given url 'https://rickandmortyapi.com/api/character/115'
    When method get
    Then status 200

Scenario: Verificar o retorno com sucesso da API Ethan com dados inválidos de requisição
    Given url 'https://rickandmortyapi.com/api/character/115897'
    When method get
    Then status 404