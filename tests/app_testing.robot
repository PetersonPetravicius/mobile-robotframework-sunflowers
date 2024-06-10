*** Settings ***

Resource   ../resources/base.resource

*** Test Cases ***
CN01: Visualizar tela "MY GARDEN" vazia
     [Documentation]         Este teste valida com sucesso os componentes da tela
     ...                     No primeiro acesso do cliente na aplicação, quando ainda não há nada adicionado ao garden.
     [Tags]                  My Garden        Componentes
    DADO que o usuário está na tela "MY GARDEN"
    QUANDO não tiver adicionado nenhuma planta a sua coleção
    ENTÃO a label "YOUR GARDEN IS EMPTY" deverá estar visível
    E o botão "ADD PLANT" deverá estar visível

CN02: Visualizar tela "PLANT LIST" pelo botão "ADD PLANT"
     [Documentation]         Este teste valida com sucesso o direcionamento
     ...                     do usuário para a tela PLANT LIST.
     [Tags]                  Plant List       Redirect     Componentes
    DADO que o usuário está na tela "MY GARDEN"
    QUANDO clicar no botão "ADD PLANT"
    ENTÃO deverá visualizar a tela "PLANT LIST"

CN03: Retornar para a tela "MY GARDEN" pelo botão "MY GARDEN"
     [Documentation]         Este teste valida com sucesso o direcionamento
     ...                     do usuário para a tela MY GARDEN.
     [Tags]                  My Garden        Redirect     Componentes
    DADO que o usuário está na tela "PLANT LIST"
    QUANDO clicar no botão "MY GARDEN"
    ENTÃO deverá visualizar a tela "MY GARDEN"


CN04: Visualizar tela "PLANT LIST" pelo botão "PLANT LIST"
     [Documentation]         Este teste valida com sucesso o direcionamento
     ...                     do usuário para a tela PLAN LIST.
     [Tags]                  Plant List       Redirect     Componentes
    DADO que o usuário está na tela "MY GARDEN"
    QUANDO clicar no botão "PLAN LIST"
    ENTÃO deverá visualizar a tela "PLANT LIST"


CN05: Visualizar tela de detalhes Sunflower 
     [Documentation]         Este teste valida com sucesso o direcionamento
     ...                     do usuário para a tela de detalhes Sunflower
     [Tags]                  Detalhes Sunflower       Redirect      Rolagem      
    DADO que o usuário está na tela "PLANT LIST"
    E rola a tela para baixo
    QUANDO clicar no item "Sunflower"
    ENTÃO deverá visualizar a tela de detalhes "Sunflower"



CN06: Adicionar Sunflower em "MY GARDEN"
     [Documentation]         Este teste valida com sucesso a adição de um novo item ao jardim
     ...                      do usuario.
     [Tags]                  Detalhes Sunflower       Redirect      Adicionar Produto      
    DADO que o usuário esteja na tela de detalhes "Sunflower"
    QUANDO clicar no botão "+"
    ENTÃO uma mensagem de sucesso deverá ser exibida
    E a Sunflower deve ser listada na tela "MY GARDEN"



# Added plant to garden