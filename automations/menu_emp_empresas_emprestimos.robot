# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Empréstimos leva ao destino https://nubank.com.br/empresas/emprestimos."],"automationId":"menu_emp_empresas_emprestimos","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para seu negócio, clicar em Empréstimos e validar o destino /empresas/emprestimos.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_emp_empresas_emprestimos","queueName":"rpa_queue_menu_emp_empresas_emprestimos","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para seu negócio até Empréstimos.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Empréstimos pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para seu negócio
    Clicar link do grupo    /empresas/emprestimos    Empréstimos
    Verificar destino    https://nubank.com.br/empresas/emprestimos
