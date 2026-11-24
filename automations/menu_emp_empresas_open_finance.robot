# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Open Finance leva ao destino https://nubank.com.br/empresas/open-finance."],"automationId":"menu_emp_empresas_open_finance","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para seu negócio, clicar em Open Finance e validar o destino /empresas/open-finance.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_emp_empresas_open_finance","queueName":"rpa_queue_menu_emp_empresas_open_finance","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para seu negócio até Open Finance.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Open Finance pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para seu negócio
    Clicar link do grupo    /empresas/open-finance    Open Finance
    Verificar destino    https://nubank.com.br/empresas/open-finance
