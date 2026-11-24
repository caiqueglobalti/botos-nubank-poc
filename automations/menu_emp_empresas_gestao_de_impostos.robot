# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Meus Impostos MEI leva ao destino https://nubank.com.br/empresas/gestao-de-impostos."],"automationId":"menu_emp_empresas_gestao_de_impostos","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para seu negócio, clicar em Meus Impostos MEI e validar o destino /empresas/gestao-de-impostos.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_emp_empresas_gestao_de_impostos","queueName":"rpa_queue_menu_emp_empresas_gestao_de_impostos","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para seu negócio até Meus Impostos MEI.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Meus Impostos MEI pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para seu negócio
    Clicar link do grupo    /empresas/gestao-de-impostos    Meus Impostos MEI
    Verificar destino    https://nubank.com.br/empresas/gestao-de-impostos
