# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Benefícios Ultravioleta leva ao destino https://nubank.com.br/ultravioleta/beneficios."],"automationId":"menu_pv_ultravioleta_beneficios","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Benefícios Ultravioleta e validar o destino /ultravioleta/beneficios.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_ultravioleta_beneficios","queueName":"rpa_queue_menu_pv_ultravioleta_beneficios","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Benefícios Ultravioleta.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Benefícios Ultravioleta pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /ultravioleta/beneficios    Benefícios Ultravioleta
    Verificar destino    https://nubank.com.br/ultravioleta/beneficios
