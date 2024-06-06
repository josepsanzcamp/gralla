
"use strict"

// VARIABLES GLOBALS
var _random_hash = "";
var _midi = {};

(function () {

    // PINTAR MENU
    _menu();

    // PROGRAMAR HASHCHANGE
    window.onhashchange = function () {
        // AGAFAR EL HASH ACTUAL
        var hash = decodeURI(window.location.hash);
        if (hash.substr(0,1) == "#") {
            hash = hash.substr(1);
        }
        hash = _oldhash(hash);
        if (hash.substr(0,7) != "search=" && !data.songs.hasOwnProperty(hash)) {
            // SINO, MIRAR SI HAY PARAMETRO HASH
            if (typeof URLSearchParams == "function") {
                var params = new URLSearchParams(window.location.search);
                if (params.has("hash")) {
                    hash = decodeURI(params.get("hash"));
                }
            }
            hash = _oldhash(hash);
            if (hash.substr(0,7) != "search=" && !data.songs.hasOwnProperty(hash)) {
                // SINO, MIRAR EL NOM DEL FITXER
                hash = decodeURI(window.location.href.split("/").pop().split(".")[0]);
                hash = _oldhash(hash);
                if (hash.substr(0,7) != "search=" && !data.songs.hasOwnProperty(hash)) {
                    // SINO, FER SERVIR COOKIE
                    hash = decodeURI(docCookies.getItem("hash"));
                    if (typeof hash == "undefined") {
                        hash = "";
                    }
                    hash = _oldhash(hash);
                    if (hash.substr(0,7) != "search=" && !data.songs.hasOwnProperty(hash)) {
                        // SINO, FER SERVIR EL PRIMER HASH
                        hash = _random_hash;
                    }
                    // EL HISTORY NOMES S'ACTUALITZA EN CAS DE QUE SIGUI VIA COOKIE O VIA FIRST
                    history.replaceState(null,null,"#" + hash);
                }
            }
        }
        // ARREGLAR CAS EXCEPCIONAL QUAN SEARCH ES BUIT
        if (hash == "search=") {
            hash = _random_hash;
            history.replaceState(null,null,"#" + hash);
        }
        // ACTUALITZAR COOKIE PER MES ENDAVANT
        docCookies.setItem("hash", hash, 365 * 86400, "/");
        // DESACTIVAR ANTIGA SELECCIO
        document.querySelectorAll("#menu .collapse.show").forEach(function (_this) {
            new bootstrap.Collapse(_this);
        });
        document.querySelectorAll("#menu a.active").forEach(function (_this) {
            _this.classList.remove("active");
        });
        // AMAGAR CERCADOR I MENU
        document.querySelector("#result").classList.add("d-none");
        document.querySelectorAll("#sidebarMenu.show").forEach(function (_this) {
            new bootstrap.Collapse(_this);
        });
        // CHECK
        if (hash.substr(0,7) != "search=") {
            // ACTIVAR LA NOVA SELECCIO
            var hash0 = hash.split("-")[0];
            document.querySelectorAll("#c_" + hash0).forEach(function (_this) {
                new bootstrap.Collapse(_this);
            });
            document.querySelector("#c_" + hash0 + " a[href='#" + hash + "']").classList.add("active");
            // ACTUALITZAR TITOLS
            document.title = data.songs[hash].info + " - " + data.labels.title;
            document.getElementById("titol").innerHTML = data.songs[hash].info + " - " + data.labels.title;
            // PINTAR TAULA
            _files(hash);
            // PINTAR PDF
            _pdf(hash);
        } else {
            // POSAR PARAULES AL CERCADOR
            document.querySelectorAll("input.search").forEach(function (_this) {
                _this.value = hash.substr(7);
            });
            // PINTAR CERCADOR
            _search();
        }
        // ANAR AL INICI DE LA PAGINA
        window.scrollTo(0, 0);
        // GUARDAR IDIOMA PEL REDIRECCIONADOR DEL INDEX.HTML
        var lang = document.querySelector("html").getAttribute("lang");
        docCookies.setItem("lang", lang, 365 * 86400, "/");
    };

    // PROGRAMAR CERCADOR
    document.querySelectorAll("input.search").forEach(function (_this) {
        _this.addEventListener("keypress",function (e) {
            if (e.which != 13) {
                return;
            }
            _search();
        });
    });
    document.querySelectorAll("button.search").forEach(function (_this) {
        _this.addEventListener("click",function () {
            _search();
        });
    });

    // PER AMAGAR ELS FITXERS I EL PDF QUAN S'OBRE EL MENU EN MODE MOBIL
    document.getElementById("sidebarMenu").addEventListener("show.bs.collapse", function (e) {
        if (e.target.getAttribute("id") != "sidebarMenu") {
            return;
        }
        document.getElementById("result").classList.add("d-none");
        document.getElementById("files").classList.add("d-none");
        document.getElementById("pdf").classList.add("d-none");
    });

    // PER MOSTRAR ELS FITXERS I EL PDF QUAN ES TANCA EL MENU EN MODE MOBIL
    document.getElementById("sidebarMenu").addEventListener("hide.bs.collapse", function (e) {
        if (e.target.getAttribute("id") != "sidebarMenu") {
            return;
        }
        if (document.getElementById("result").offsetParent !== null) {
            return;
        }
        document.getElementById("files").classList.remove("d-none");
        document.getElementById("pdf").classList.remove("d-none");
    });

    // PER PREVENIR QUAN ES FA CLIC A UN LINK AMB EL MATEIX HASH
    document.addEventListener("click", function (e) {
        // Per detectar nomes nodes del tipus <a ...>
        if (e.target.tagName.toLowerCase() !== "a") {
            return;
        }
        // Continuar
        var hash1 = decodeURI(window.location.hash);
        var hash2 = e.target.getAttribute("href");
        if (hash1 != hash2) {
            return;
        }
        document.querySelectorAll("#sidebarMenu.show").forEach(function (_this) {
            new bootstrap.Collapse(_this);
        });
        document.getElementById("result").classList.add("d-none");
        document.getElementById("files").classList.remove("d-none");
        document.getElementById("pdf").classList.remove("d-none");
    });

    // FORÇAR UNA EXECUCIO DEL HASHCHANGE
    window.dispatchEvent(new HashChangeEvent("hashchange"));

    // PEL TEMA DARK
    var window_match_media = window.matchMedia("(prefers-color-scheme: dark)");
    var set_data_bs_theme = e => document.querySelector("html").setAttribute("data-bs-theme", e.matches ? "dark" : "");
    set_data_bs_theme(window_match_media);
    window_match_media.addEventListener("change", set_data_bs_theme);

}());

// PER PINTAR EL MENU
function _menu()
{
    // NETEJAR MENU
    document.querySelectorAll("#menu > div:not(:first-child)").forEach(function (_this) {
        _this.remove();
    });
    // PINTAR MENU
    for (var key in data.cats) {
        var val = data.cats[key];
        document.getElementById("menu").append(saltos.html(str_replace(["__TITLE__","__HEADING__","__COLLAPSE__"],[val.name,"h_" + key,"c_" + key],data.template[0])));
        for (var key2 in val.array) {
            var val2 = val.array[key2];
            document.querySelector("#c_" + key + " ul").append(saltos.html("ul", str_replace(["__TITLE__","__LINK__"],[data.songs[val2].name,"#" + val2],data.template[1])));
        }
    }
    // CALCULAR RANDOM HASH
    var keys = Object.keys(data.cats);
    var key = keys[keys.length * Math.random() << 0];
    var val = data.cats[key];
    var key2 = val.array.length * Math.random() << 0;
    var val2 = val.array[key2];
    _random_hash = val2;
    // MOSTRAR MENU
    document.getElementById("menu").classList.remove("d-none");
}

// RETURN THE HUMAN SIZE (GBYTES, MBYTES, KBYTES OR BYTES)
function __getmail_gethumansize(size)
{
    if (size > 1073741824) {
        size = (size / 1073741824).toFixed(2) + " Gbytes";
    } else if (size > 1048576) {
        size = (size / 1048576).toFixed(2) + " Mbytes";
    } else if (size > 1024) {
        size = (size / 1024).toFixed(2) + " Kbytes";
    } else {
        size = size + " bytes";
    }
    return size;
}

// PER PINTAR LA TAULA
function _files(hash)
{
    // TREURE TOTS ELS REPRODUCTORS DE MIDI
    for (var file in _midi) {
        if (_midi[file].timidity) {
            _midi[file].player.destroy();
        }
        delete _midi[file];
    }
    // NETEJAR TAULA
    document.querySelector("#files tbody").innerHTML = "";
    // MUNTAR NOVA TAULA
    for (var key in data.songs[hash].files) {
        var val = data.songs[hash].files[key];
        var type = val.last.split('.').pop();
        var label = data.labels[type];
        if (["midi","mp3","mp4"].includes(type)) {
            var num = str_replace([type,".","-"],"",val.last);
            if (num != "") {
                label += " " + str_replace("__NUM__",num,data.labels["pista"]);
            }
        }
        var file = "<a href='files/" + hash + "/" + hash + val.last + "'>" + hash + val.last + "</a>";
        var play = "";
        if (["mp3","mp4"].includes(type)) {
            play = "<audio preload='none' src='files/" + hash + "/" + hash + val.last + "' controls></audio>";
        }
        if (type == "midi") {
            play = "<midi src='files/" + hash + "/" + hash + val.last + "'></midi>";
        }
        var size = __getmail_gethumansize(val.size);
        document.querySelector("#files tbody").append(saltos.html("tbody", str_replace(["__TYPE__","__FILE__","__SIZE__","__PLAY__"],[label,file,size,play],data.template[3])));
    }
    // CREAR AUDIOPLAYER
    document.querySelectorAll("audio").forEach(function (_this) {
        _audiofy(_this);
    });
    // CREAR MIDIPLAYER
    document.querySelectorAll("midi").forEach(function (_this) {
        _midify(_this);
    });
    // MOSTRAR TAULA
    document.getElementById("files").classList.remove("d-none");
}

// PER PINTAR EL PDF DE LA PARTITURA
function _pdf(hash)
{
    document.getElementById("pdf").innerHTML = "";
    var base = document.head.querySelector("base").getAttribute("href").split("/")[0];
    var color = Object.keys(data.songs[hash].files).length % 2
    var colors = ["bg-light", ""];
    for (var key in data.songs[hash].pages) {
        var val = data.songs[hash].pages[key];
        var img = base + "/files/" + hash + "/" + hash + val.last;
        var width = val.width;
        var height = val.height;
        var alt = data.songs[hash].name;
        document.getElementById("pdf").append(saltos.html('<img src="' + img + '" class="img-fluid w-100 mb-3 border ' + colors[color % 2] + '" loading="lazy" width="' + width + '" height="' + height + '" alt="' + alt + '"/>'));
        color++;
    }
    document.getElementById("pdf").classList.remove("d-none");
}

// PER MUNTAR EL CERCADOR
function _search()
{
    var text = "";
    document.querySelectorAll("input.search").forEach(function (_this) {
        if (_this.value != "") {
            text = _this.value;
            _this.value = "";
        }
    });
    if (text == "") {
        return;
    }
    var hash = "search=" + text;
    var oldhash = decodeURI(window.location.hash);
    if (oldhash.substr(0,1) == "#") {
        oldhash = oldhash.substr(1);
    }
    if (hash != oldhash) {
        history.pushState(null,null,"#" + hash);
    }
    // ACTUALITZAR COOKIE PER MES ENDAVANT
    docCookies.setItem("hash", hash, 365 * 86400, "/");
    // DESACTIVAR ANTIGA SELECCIO
    document.querySelectorAll("#menu .collapse.show").forEach(function (_this) {
        new bootstrap.Collapse(_this);
    });
    document.querySelectorAll("#menu a.active").forEach(function (_this) {
        _this.classList.remove("active");
    });
    // ACTUALITZAR TITOLS
    document.title = data.labels.title;
    document.getElementById("titol").innerHTML = data.labels.title;
    // CERCAR
    var oldtext = text;
    text = str_replace(["-","_","/"]," ",text);
    text = accent_fold(text).trim().split(" ");
    if (data.cats.hasOwnProperty(oldtext)) {
        // CERCAR PER HASH
        var result = {};
        for (var i in data.cats[oldtext].array) {
            var key = data.cats[oldtext].array[i];
            var val = data.songs[key];
            result[key] = accent_folded_hilite(val.info + " - " + data.labels.title,text);
        }
    } else {
        // CERCAR PER PARAULES
        var result_by_num = {};
        for (var key in data.songs) {
            var val = data.songs[key];
            if (typeof val.cache == "undefined") {
                val.cache = accent_fold(val.info);
            }
            var num = 0;
            for (var key2 in text) {
                if (val.cache.search(new RegExp(text[key2],"i")) != -1) {
                    num++;
                }
            }
            if (num > 0) {
                if (!result_by_num.hasOwnProperty(num)) {
                    result_by_num[num] = {};
                }
                result_by_num[num][key] = accent_folded_hilite(val.info + " - " + data.labels.title,text);
            }
        }
        var result = {};
        for (var i = text.length; i > 0; i--) {
            if (result_by_num.hasOwnProperty(i)) {
                Object.assign(result,result_by_num[i]);
            }
        }
    }
    // NETEJAR CERCADOR
    document.querySelectorAll("#result > div").forEach(function (_this) {
        _this.remove();
    });
    // MOSTRAR RESULTATS
    var a = Math.min(Object.keys(result).length,2);
    var b = Math.min(text.length,2);
    var c = str_replace(["__NUM__","__TEXT__"],["<b>" + Object.keys(result).length + "</b>","<b>" + text.join(" ") + "</b>"],data.labels["found" + a + b]);
    document.getElementById("result").append(saltos.html(str_replace("__RESULT__",c,data.template[2])));
    for (key in result) {
        var val = "<a href='#" + key + "'>" + result[key] + "</a>";
        document.getElementById("result").append(saltos.html(str_replace("__RESULT__",val,data.template[2])));
    }
    // TREURE DARRERA LINIA
    Array.from(document.querySelectorAll("#result .border-bottom")).pop().classList.remove("border-bottom");
    // MOSTRAR CERCADOR I AMAGAR LA RESTA
    document.querySelectorAll("#sidebarMenu.show").forEach(function (_this) {
        new bootstrap.Collapse(_this);
    });
    document.getElementById("result").classList.remove("d-none");
    document.getElementById("files").classList.add("d-none");
    document.getElementById("pdf").classList.add("d-none");
}

// HELPER PER LA FUNCIO MIDIFY
function _sec2time(sec)
{
    var min = ("0" + parseInt(sec / 60).toString()).substr(-2);
    var sec = ("0" + parseInt(sec % 60).toString()).substr(-2);
    return min + ":" + sec;
}

// AIXO CREAR EL WIDGET DEL AUDIOPLAYER
function _audioplayer(obj)
{
    var div = saltos.html('\
    <div class="audioplayer audioplayer-stopped midiplayer">\
        <div class="audioplayer-playpause" title="Play"><span>Play</span></div>\
        <div class="audioplayer-time audioplayer-time-current">00:00</div>\
        <div class="audioplayer-bar">\
        <div class="audioplayer-bar-loaded"></div>\
        <div class="audioplayer-bar-played"></div>\
        </div>\
        <div class="audioplayer-time audioplayer-time-duration">&hellip;</div>\
        <div class="audioplayer-volume" title="Stop"><span>Stop</span>\
    </div>\
    ');

    var obj2 = obj.cloneNode();
    obj2.classList.add("d-none");
    div.append(obj2);
    obj.replaceWith(div);
    return div;
}

// CREA EL REPRODUCTOR DE MIDI
function _midify(obj)
{
    var div = _audioplayer(obj);
    var file = div.querySelector("midi").getAttribute("src");

    _midi[file] = {
        timidity:null,
        player:null,
        div:div,
        state:"",
    };

    var fn = function (e) {
        var div = this.parentNode;
        var file = div.querySelector("midi").getAttribute("src");
        var action = this.getAttribute("class");

        // TRUCS PER EVITAR CARREGAR-HO TOT QUAN NO CAL
        if (action == "audioplayer-volume" && _midi[file].state == "") {
            return false;
        }
        if (action == "audioplayer-bar" && _midi[file].state == "") {
            return false;
        }

        if (!_midi[file].timidity) {
            var dir = window.location.href.substr(0,window.location.href.lastIndexOf("/"));
            var base = document.head.querySelector("base").getAttribute("href").split("/")[0];

            _midi[file].timidity = require('timidity');
            _midi[file].player = new _midi[file].timidity(dir + "/" + base + "/" + "lib/timidity");

            _midi[file].player.on("timeupdate", () => {
                if (_midi[file].player.duration == 1) {
                    return;
                }
                var currenttime = _midi[file].player.currentTime;
                var duration = _midi[file].player.duration;
                div.querySelector(".audioplayer-time-current").innerHTML = _sec2time(currenttime);
                div.querySelector(".audioplayer-time-duration").innerHTML = _sec2time(duration);
                div.querySelector(".audioplayer-bar-played").style.width = parseInt(currenttime * 100 / duration) + "%";
            });

            _midi[file].player.on("ended", () => {
                _midi[file].player.seek(0);
                _midi[file].state = "stop";
                div.classList.remove("audioplayer-playing");
                div.classList.add("audioplayer-stopped");
                div.querySelector(".audioplayer-playpause").setAttribute("title","Play");
                div.querySelector(".audioplayer-playpause span").innerHTML = "Play";
            });

            _midi[file].player.load(dir + "/" + base + "/" + file);
            div.querySelector(".audioplayer-bar-loaded").style.width = "100%";
        }

        if (action == "audioplayer-playpause") {
            if (_midi[file].state != "play") {
                _midi[file].player.play();
                _midi[file].state = "play";
                div.classList.remove("audioplayer-stopped");
                div.classList.add("audioplayer-playing");
                div.querySelector(".audioplayer-playpause").setAttribute("title","Pause");
                div.querySelector(".audioplayer-playpause span").innerHTML = "Pause";
            } else {
                _midi[file].player.pause();
                _midi[file].state = "pause";
                div.classList.remove("audioplayer-playing");
                div.classList.add("audioplayer-stopped");
                div.querySelector(".audioplayer-playpause").setAttribute("title","Play");
                div.querySelector(".audioplayer-playpause span").innerHTML = "Play";
            }
        }

        if (action == "audioplayer-volume") {
            if (_midi[file].state == "play") {
                _midi[file].player.pause();
            }
            _midi[file].player.seek(0);
            _midi[file].state = "stop";
            div.classList.remove("audioplayer-playing");
            div.classList.add("audioplayer-stopped");
            div.querySelector(".audioplayer-playpause").setAttribute("title","Play");
            div.querySelector(".audioplayer-playpause span").innerHTML = "Play";
        }

        if (action == "audioplayer-bar") {
            var x = ('ontouchstart' in window) ? e.originalEvent.touches[0].pageX : e.pageX;
            var duration = _midi[file].player.duration;
            var temp = div.querySelector(".audioplayer-bar-loaded").getBoundingClientRect();
            var left = temp.left;
            var width = temp.width;
            _midi[file].player.seek(parseFloat(duration * (x - left) / width));
        }

        return false;
    };

    div.querySelector(".audioplayer-playpause").addEventListener("click",fn);
    div.querySelector(".audioplayer-volume").addEventListener("click",fn);
    div.querySelector(".audioplayer-bar").addEventListener(('ontouchstart' in window) ? "touchstart" : "mousedown",fn);
}

// CREA EL REPRODUCTOR D'AUDIO
function _audiofy(obj)
{
    var div = _audioplayer(obj);
    var audio = div.querySelector("audio");

    audio.addEventListener("durationchange", () => {
        div.querySelector(".audioplayer-bar-loaded").style.width = "100%";
    });

    audio.addEventListener("timeupdate", () => {
        var currenttime = audio.currentTime;
        var duration = audio.duration;
        div.querySelector(".audioplayer-time-current").innerHTML = _sec2time(currenttime);
        div.querySelector(".audioplayer-time-duration").innerHTML = _sec2time(duration);
        div.querySelector(".audioplayer-bar-played").style.width = parseInt(currenttime * 100 / duration) + "%";
    });

    audio.addEventListener("ended", () => {
        audio.currentTime = 0;
        div.classList.remove("audioplayer-playing");
        div.classList.add("audioplayer-stopped");
        div.querySelector(".audioplayer-playpause").setAttribute("title","Play");
        div.querySelector(".audioplayer-playpause span").innerHTML = "Play";
    });

    var fn = function (e) {
        var div = this.parentNode;
        var audio = div.querySelector("audio");
        var action = this.getAttribute("class");

        if (action == "audioplayer-playpause") {
            if (audio.paused) {
                audio.play();
                div.classList.remove("audioplayer-stopped");
                div.classList.add("audioplayer-playing");
                div.querySelector(".audioplayer-playpause").setAttribute("title","Pause");
                div.querySelector(".audioplayer-playpause span").innerHTML = "Pause";
            } else {
                audio.pause();
                div.classList.remove("audioplayer-playing");
                div.classList.add("audioplayer-stopped");
                div.querySelector(".audioplayer-playpause").setAttribute("title","Play");
                div.querySelector(".audioplayer-playpause span").innerHTML = "Play";
            }
        }

        if (action == "audioplayer-volume") {
            if (!audio.paused) {
                audio.pause();
            }
            audio.currentTime = 0;
            div.classList.remove("audioplayer-playing");
            div.classList.add("audioplayer-stopped");
            div.querySelector(".audioplayer-playpause").setAttribute("title","Play");
            div.querySelector(".audioplayer-playpause span").innerHTML = "Play";
        }

        if (action == "audioplayer-bar") {
            if (isNaN(audio.duration)) {
                return;
            }
            var x = ('ontouchstart' in window) ? e.originalEvent.touches[0].pageX : e.pageX;
            var duration = audio.duration;
            var temp = div.querySelector(".audioplayer-bar-loaded").getBoundingClientRect();
            var left = temp.left;
            var width = temp.width;
            audio.currentTime = parseFloat(duration * (x - left) / width);
        }

        return false;
    };

    div.querySelector(".audioplayer-playpause").addEventListener("click",fn);
    div.querySelector(".audioplayer-volume").addEventListener("click",fn);
    div.querySelector(".audioplayer-bar").addEventListener(('ontouchstart' in window) ? "touchstart" : "mousedown",fn);
}

// PER ARREGLAR ELS HASH ANTICS
function _oldhash(hash)
{
    if (data.songs.hasOwnProperty("skamot_" + hash)) {
        hash = "skamot_" + hash;
    }
    return hash;
}
