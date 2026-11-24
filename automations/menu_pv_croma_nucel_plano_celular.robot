# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link NuCel leva ao destino https://nubank.com.br/croma/nucel-plano-celular."],"automationId":"menu_pv_croma_nucel_plano_celular","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em NuCel e validar o destino /croma/nucel-plano-celular.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_croma_nucel_plano_celular","queueName":"rpa_queue_menu_pv_croma_nucel_plano_celular","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até NuCel.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir NuCel pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /croma/nucel-plano-celular    NuCel
    Verificar destino    https://nubank.com.br/croma/nucel-plano-celular
