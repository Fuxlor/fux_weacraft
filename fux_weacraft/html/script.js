window.addEventListener('message', (event) => {
    var data = event.data
    if (data.action == "openGUI") {
        document.body.style.display = "block";
    } else if ( data.action == "closeGUI") {
        document.body.style.display = "none";
    }
    
})

$(document).keyup(function (data) {
    if (data.keyCode == 27) { // Escape key
        $.post('http://esx_weacraft/close', JSON.stringify({}));
    }
});

//////////////
// FONCTION //
//////////////

function craftPistol() {
    $.post('http://esx_weacraft/craftPistol', JSON.stringify({}));
}

function craftRevolver() {
    $.post('http://esx_weacraft/craftRevolver', JSON.stringify({}));
}

function craftSMG() {
    $.post('http://esx_weacraft/craftSMG', JSON.stringify({}));
}

function craftAK() {
    $.post('http://esx_weacraft/craftAK', JSON.stringify({}));
}


function pDisplay() {
    var pistol = document.getElementsByClassName('pistolS');
    Array.from(pistol).forEach((x) => {
        x.style.display = "block";
    })
}

function rDisplay() {
    var rev = document.getElementsByClassName('revolverS');
    Array.from(rev).forEach((x) => {
        x.style.display = "block";
    })
}

function sDisplay() {
    var smg = document.getElementsByClassName('smgS');
    Array.from(smg).forEach((x) => {
        x.style.display = "block";
    })
}

function aDisplay() {
    var ak = document.getElementsByClassName('ak47S');
    Array.from(ak).forEach((x) => {
        x.style.display = "block";
    })
}

function pHide() {
    var pistol = document.getElementsByClassName('pistolS');
    Array.from(pistol).forEach((x) => {
        x.style.display = "none";
    })
}

function rHide() {
    var rev = document.getElementsByClassName('revolverS');
    Array.from(rev).forEach((x) => {
        x.style.display = "none";
    })
}

function sHide() {
    var smg = document.getElementsByClassName('smgS');
    Array.from(smg).forEach((x) => {
        x.style.display = "none";
    })
}

function aHide() {
    var ak = document.getElementsByClassName('ak47S');
    Array.from(ak).forEach((x) => {
        x.style.display = "none";
    })
}

function infoDisplay() {
    var info = document.getElementsByClassName('info');
    Array.from(info).forEach((x) => {
        x.style.display = "block";
    })
}

function infoHide() {
    var info = document.getElementsByClassName('info');
    Array.from(info).forEach((x) => {
        x.style.display = "none";
    })
}

function craftDisplay() {
    var craft = document.getElementsByClassName('craft');
    Array.from(craft).forEach((x) => {
        x.style.display = "block";
    })
}

function craftHide() {
    var craft = document.getElementsByClassName('craft');
    Array.from(craft).forEach((x) => {
        x.style.display = "none";
    })
}