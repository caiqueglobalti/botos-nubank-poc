# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Empréstimos leva ao destino https://nubank.com.br/nu/emprestimos."],"automationId":"menu_pv_nu_emprestimos","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Empréstimos e validar o destino /nu/emprestimos.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu_emprestimos","queueName":"rpa_queue_menu_pv_nu_emprestimos","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Empréstimos.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Empréstimos pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/emprestimos    Empréstimos
    Verificar destino    https://nubank.com.br/nu/emprestimos
