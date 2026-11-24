# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Conta Nu Empresas leva ao destino https://nubank.com.br/empresas/conta."],"automationId":"menu_emp_empresas_conta","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para seu negócio, clicar em Conta Nu Empresas e validar o destino /empresas/conta.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_emp_empresas_conta","queueName":"rpa_queue_menu_emp_empresas_conta","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para seu negócio até Conta Nu Empresas.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conta Nu Empresas pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para seu negócio
    Clicar link do grupo    /empresas/conta    Conta Nu Empresas
    Verificar destino    https://nubank.com.br/empresas/conta
