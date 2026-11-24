# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Soluções para cobrança leva ao destino https://nubank.com.br/empresas/solucoes-para-cobranca."],"automationId":"menu_emp_empresas_solucoes_para_cobranca","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para seu negócio, clicar em Soluções para cobrança e validar o destino /empresas/solucoes-para-cobranca.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_emp_empresas_solucoes_para_cobranca","queueName":"rpa_queue_menu_emp_empresas_solucoes_para_cobranca","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para seu negócio até Soluções para cobrança.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Soluções para cobrança pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para seu negócio
    Clicar link do grupo    /empresas/solucoes-para-cobranca    Soluções para cobrança
    Verificar destino    https://nubank.com.br/empresas/solucoes-para-cobranca
