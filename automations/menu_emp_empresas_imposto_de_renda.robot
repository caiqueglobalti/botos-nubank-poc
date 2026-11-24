# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Imposto de Renda leva ao destino https://nubank.com.br/empresas/imposto-de-renda."],"automationId":"menu_emp_empresas_imposto_de_renda","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para seu negócio, clicar em Imposto de Renda e validar o destino /empresas/imposto-de-renda.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_emp_empresas_imposto_de_renda","queueName":"rpa_queue_menu_emp_empresas_imposto_de_renda","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para seu negócio até Imposto de Renda.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Imposto de Renda pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para seu negócio
    Clicar link do grupo    /empresas/imposto-de-renda    Imposto de Renda
    Verificar destino    https://nubank.com.br/empresas/imposto-de-renda
