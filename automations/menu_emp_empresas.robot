# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Conheça o Nu Empresas leva ao destino https://nubank.com.br/empresas."],"automationId":"menu_emp_empresas","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para seu negócio, clicar em Conheça o Nu Empresas e validar o destino /empresas.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_emp_empresas","queueName":"rpa_queue_menu_emp_empresas","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para seu negócio até Conheça o Nu Empresas.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conheça o Nu Empresas pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para seu negócio
    Clicar link do grupo    /empresas    Conheça o Nu Empresas
    Verificar destino    https://nubank.com.br/empresas
