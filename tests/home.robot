*** Settings ***

Library     AppiumLibrary

*** Test Cases ***
Deve abrir a tela principal

    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/sunflower.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
  
    Sleep     10

    Close Application