*** Settings ***
Documentation    Confirma que o navegador abre o BotOS e encerra a sessão.
Library    Browser
Test Teardown    Close Browser

*** Test Cases ***
Abrir e fechar BotOS
    New Browser    chromium    headless=${FALSE}
    New Page    http://127.0.0.1:18766/
    Wait For Elements State    body    visible    timeout=15s
