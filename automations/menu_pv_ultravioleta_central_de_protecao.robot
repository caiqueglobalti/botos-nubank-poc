# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Central de Proteção Ultravioleta leva ao destino https://nubank.com.br/ultravioleta/central-de-protecao."],"automationId":"menu_pv_ultravioleta_central_de_protecao","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Central de Proteção Ultravioleta e validar o destino /ultravioleta/central-de-protecao.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_ultravioleta_central_de_protecao","queueName":"rpa_queue_menu_pv_ultravioleta_central_de_protecao","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Central de Proteção Ultravioleta.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Central de Proteção Ultravioleta pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /ultravioleta/central-de-protecao    Central de Proteção Ultravioleta
    Verificar destino    https://nubank.com.br/ultravioleta/central-de-protecao
