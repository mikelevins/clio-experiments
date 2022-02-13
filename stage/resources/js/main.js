function showInfo() {
    document.getElementById('info').innerHTML = `
        ${NL_APPID} running on port: ${NL_PORT} on ${NL_OS}
        <br/>
        <span>server: v${NL_VERSION} . client: v${NL_CVERSION}</span>
        <br/>
        <span>argv:<br/> <code>[${NL_ARGS}]</code></span>
        `;
}

function onWindowClose() {
    Neutralino.app.exit();
}

Neutralino.init();

Neutralino.events.on("windowClose", onWindowClose);

showInfo();
