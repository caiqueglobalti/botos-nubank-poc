# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Investimentos leva ao destino https://nubank.com.br/empresas/investimentos."],"automationId":"menu_emp_empresas_investimentos","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para seu negócio, clicar em Investimentos e validar o destino /empresas/investimentos.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_emp_empresas_investimentos","queueName":"rpa_queue_menu_emp_empresas_investimentos","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para seu negócio até Investimentos.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Investimentos pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para seu negócio
    Clicar link do grupo    /empresas/investimentos    Investimentos
    Verificar destino    https://nubank.com.br/empresas/investimentos
