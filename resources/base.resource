*** Settings ***

Library   AppiumLibrary

*** Variables ***

${GARDENICON}    xpath=//android.widget.LinearLayout[@content-desc="My garden"]
${PLANTICON}    xpath=//android.widget.LinearLayout[@content-desc="Plant list"]

*** Keywords ***

DADO que o usuário está na tela "MY GARDEN"
    Start session

QUANDO não tiver adicionado nenhuma planta a sua coleção
    My Garden is selected

ENTÃO a label "YOUR GARDEN IS EMPTY" deverá estar visível
    Element Should Be Visible   xpath=//android.widget.TextView[@resource-id="com.google.samples.apps.sunflower:id/empty_garden"]

E o botão "ADD PLANT" deverá estar visível
    Element Should Be Visible   xpath=//android.widget.Button[@resource-id="com.google.samples.apps.sunflower:id/add_plant"]
    Close session

QUANDO clicar no botão "ADD PLANT"
    Click Element    xpath=//android.widget.Button[@resource-id="com.google.samples.apps.sunflower:id/add_plant"]

QUANDO clicar no botão "PLAN LIST"
    Click Element     ${PLANTICON}

ENTÃO deverá visualizar a tela "PLANT LIST"
    Wait Until Element Is Visible    id=com.google.samples.apps.sunflower:id/plant_list
    Plant List is selected
    Close session

DADO que o usuário está na tela "PLANT LIST"
    Start session
    QUANDO clicar no botão "ADD PLANT"
    Wait Until Element Is Visible      id=com.google.samples.apps.sunflower:id/plant_list

QUANDO clicar no botão "MY GARDEN"
    Wait Until Element Is Visible      id=com.google.samples.apps.sunflower:id/plant_list
    Plant List is selected
    Click Element                      ${GARDENICON}

ENTÃO deverá visualizar a tela "MY GARDEN"
    Wait Until Element Is Visible      xpath=//android.widget.Button[@resource-id="com.google.samples.apps.sunflower:id/add_plant"]
    My Garden is selected
    Close session

E rola a tela para baixo
    Swipe down screen
    Element Should Be Visible          xpath=//android.widget.TextView[@text="Sunflower"]

QUANDO clicar no item "Sunflower"
    Click Element                      xpath=//android.widget.TextView[@text="Sunflower"]

 ENTÃO deverá visualizar a tela de detalhes "Sunflower"
    Wait Until Element Is Visible      id=com.google.samples.apps.sunflower:id/plant_detail_name
    Page Should Contain Element        id=com.google.samples.apps.sunflower:id/fab
    Page Should Contain Element        id=com.google.samples.apps.sunflower:id/plant_watering_header
    Page Should Contain Element        id=com.google.samples.apps.sunflower:id/plant_watering
    Page Should Contain Element        id=com.google.samples.apps.sunflower:id/gallery_nav
    Page Should Contain Element        id=com.google.samples.apps.sunflower:id/plant_description
 
DADO que o usuário esteja na tela de detalhes "Sunflower"
    DADO que o usuário está na tela "PLANT LIST"
    E rola a tela para baixo
    QUANDO clicar no item "Sunflower"

QUANDO clicar no botão "+"
    Wait Until Element Is Visible      id=com.google.samples.apps.sunflower:id/plant_detail_name
    Click Element                      id=com.google.samples.apps.sunflower:id/fab

ENTÃO uma mensagem de sucesso deverá ser exibida
    Wait Until Page Contains           Added plant to garden
    Wait Until Element Is Visible      id=com.google.samples.apps.sunflower:id/snackbar_text
    
E a Sunflower deve ser listada na tela "MY GARDEN"
    Click Element                      xpath=//android.widget.ImageButton
    QUANDO clicar no botão "MY GARDEN"
    Wait Until Element is Visible      id=com.google.samples.apps.sunflower:id/plant_name
    My Garden is selected
    Page Should Not Contain Element    xpath=//android.widget.TextView[@resource-id="com.google.samples.apps.sunflower:id/empty_garden"]
    Page Should Not Contain Element    xpath=//android.widget.Button[@resource-id="com.google.samples.apps.sunflower:id/add_plant"]
    
Start session
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/sunflower.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    Wait Until Page Contains Element    ${GARDENICON}         
 
Close session
    Sleep     2
    Close Application

My Garden is selected
    ${garden_status}    Get Element Attribute    ${GARDENICON}    selected
    Should Be Equal    ${garden_status}    true

Plant List is selected
    ${plant_status}    Get Element Attribute    ${PLANTICON}    selected
    Should Be Equal    ${plant_status}    true

Swipe down screen
    ${start_x}     Set Variable        540
    ${start_y}     Set Variable        1995
    ${offset_x}    Set Variable        540
    ${offset_y}    Set Variable        459
    Swipe     ${start_x}     ${start_y}       ${offset_x}     ${offset_y}     1000    

