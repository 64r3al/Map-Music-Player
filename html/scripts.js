window.addEventListener('message', (event) => {
    if (event.data.action === "toggleUI") {
        document.getElementById('music-player').style.display = event.data.display ? 'block' : 'none';
    }
});

function playMusic() {
    const url = document.getElementById('music-url').value;
    fetch(`https://${GetParentResourceName()}/playMusic`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ url })
    });
}

function pauseMusic() {
    fetch(`https://${GetParentResourceName()}/pauseMusic`, {
        method: 'POST'
    });
}

function stopMusic() {
    fetch(`https://${GetParentResourceName()}/stopMusic`, {
        method: 'POST'
    });
}

function setVolume() {
    const volume = document.getElementById('volume-slider').value;
    fetch(`https://${GetParentResourceName()}/setVolume`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ volume })
    });
}

function closeUI() {
    fetch(`https://${GetParentResourceName()}/closeUI`, {
        method: 'POST'
    });
}
