# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Salas VIP leva ao destino https://nubank.com.br/ultravioleta/cartao-black/salas-vip."],"automationId":"menu_pv_ultravioleta_cartao_black_salas_vip","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Salas VIP e validar o destino /ultravioleta/cartao-black/salas-vip.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_ultravioleta_cartao_black_salas_vip","queueName":"rpa_queue_menu_pv_ultravioleta_cartao_black_salas_vip","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Salas VIP.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Salas VIP pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /ultravioleta/cartao-black/salas-vip    Salas VIP
    Verificar destino    https://nubank.com.br/ultravioleta/cartao-black/salas-vip
