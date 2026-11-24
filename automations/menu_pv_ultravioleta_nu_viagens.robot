# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Nu Viagens leva ao destino https://nubank.com.br/ultravioleta/nu-viagens."],"automationId":"menu_pv_ultravioleta_nu_viagens","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Nu Viagens e validar o destino /ultravioleta/nu-viagens.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_ultravioleta_nu_viagens","queueName":"rpa_queue_menu_pv_ultravioleta_nu_viagens","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Nu Viagens.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Nu Viagens pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /ultravioleta/nu-viagens    Nu Viagens
    Verificar destino    https://nubank.com.br/ultravioleta/nu-viagens
