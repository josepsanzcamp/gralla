
"use strict"

$(function() {

	// PINTAR MENU
	var _first_hash="";
	for(var key in data.cats) {
		var val=data.cats[key];
		$("#menu").append(str_replace(["__TITLE__","__HEADING__","__COLLAPSE__"],[val.name,"h_"+key,"c_"+key],data.template[0])+data.template[2]);
		for(var key2 in val.array) {
			var val2=val.array[key2];
			if(_first_hash=="") _first_hash=val2;
			$("#c_"+key+" ul").append(str_replace(["__TITLE__","__LINK__"],[data.songs[val2].name,"#"+val2],data.template[1]));
		}
	}
	$("#menu").removeClass("d-none");

	// PROGRAMAR SELECTOR
	$(window).on("hashchange",function() {
		// AGAFAR EL HASH ACTUAL
		var hash=window.location.hash;
		if(hash.substr(0,1)=="#") hash=hash.substr(1);
		var hash0=hash.split("-")[0];
		// COMPROBAR SI EXISTEIX
		if($("#c_"+hash0+" a[href='#"+hash+"']").length==0) {
			// FER SERVIR COOKIE SI EXISTEIX
			var cookie_hash=$.cookie("hash");
			if(typeof(cookie_hash)=="undefined") cookie_hash="";
			var cookie_hash0=cookie_hash.split("-")[0];
			// COMPROBAR SI EXISTEIX
			if($("#c_"+cookie_hash0+" a[href='#"+cookie_hash+"']").length!=0) {
				if(hash!=cookie_hash) window.location.hash="#"+cookie_hash;
			} else {
				// SINO EXISTEIX FER SERVIR PRIMER HASH
				if(hash!=_first_hash) window.location.hash="#"+_first_hash;
			}
			return;
		}
		// ACTUALITZAR COOKIE PER MES ENDAVANT
		$.cookie("hash",hash,{expires:365,path:"/"});
		// DESACTIVAR ANTIGA SELECCIO
		$("#menu button.active").removeClass("active");
		$("#menu .collapse.show").removeClass("show");
		$("#menu a.active").removeClass("active");
		// ACTIVAR LA NOVA SELECCIO
		$("#h_"+hash0+" button").addClass("active");
		$("#c_"+hash0).addClass("show");
		$("#c_"+hash0+" a[href='#"+hash+"']").addClass("active");
		// ACTUALITZAR TITOLS
		document.title=data.songs[hash].info+" - "+data.labels.title;
		$("#titol").html(data.songs[hash].info+" - "+data.labels.title);
		// AMAGAR I NETEJAR CERCADOR
		$("#results").addClass("d-none");
		$("#results div").remove();
		// PINTAR TAULA
		_files(hash);
		// PINTAR PDF
		_pdf(hash);
		// ANAR AL INICI DE LA PAGINA
		$("html, body").animate({ scrollTop:0 });
	});

	// PROGRAMAR RESIZE
	$(window).on("resize",function() {
		_pdfViewer.currentScaleValue=_pdfViewer.currentScale*2;
		_pdfViewer.currentScaleValue="page-width";
	});

	// PROGRAMAR CERCADOR
	$("#search,#search2").on("keypress",function(e) {
		if(e.which!=13) return;
		_search($(this).val());
		$(this).val("")
		if($(this).attr("id")=="search2") $(".qwerty").trigger("click");
	});

	// PER POSICIONAR EL MENU QUAN S'OBRE UNA CATEGORIA
	$(".collapse[id^='c_']").on("show.bs.collapse", function() {
		var count=0;
		var _this=this;
		$(".collapse[id^='c_']").each(function() {
			if(_this==this) {
				var height0=$("nav:eq(0)").outerHeight(); // BARRA GRIS
				var height1=$("nav:eq(1)").outerHeight(); // BARRA BLAVA
				var height2=$("#menu .card-header:eq(0)").outerHeight(); // CERCADOR
				if($("#menu .card-header:eq(0)").is(":not(:visible)")) height2=0;
				var height3=$("#menu .card-header:eq(1)").outerHeight(); // PRIMER BOTO
				$("html, body").animate({ scrollTop:height0+height1+height2+count*height3 });
			}
			count++;
		});
	});

	// FORZAR UNA EXECUCIO DEL SELECTOR
	$(window).trigger("hashchange");

});

// RETURN THE HUMAN SIZE (GBYTES, MBYTES, KBYTES OR BYTES)
function __getmail_gethumansize(size) {
	if(size>1073741824) size=(size/1073741824).toFixed(2)+" Gbytes";
	else if(size>1048576) size=(size/1048576).toFixed(2)+" Mbytes";
	else if(size>1024) size=(size/1024).toFixed(2)+" Kbytes";
	else size=size+" bytes";
	return size;
}

// PER PINTAR LA TAULA
function _files(hash) {
	// NETEJAR TAULA
	$("#files tbody").html("");
	// MUNTAR NOVA TAULA
	for(var key in data.songs[hash].files) {
		var val=data.songs[hash].files[key];
		var type=val.last.split('.').pop();
		var label=data.labels[type];
		if(["midi","mp3"].includes(type)) {
			var num=parseInt(str_replace([type,".","-"],"",val.last));
			num=isNaN(num)?0:num;
			if(num==0) label+=data.labels["pista0"];
			if(num!=0) label+=str_replace("__NUM__",num,data.labels["pista1"]);
		}
		var file="<a href='files/"+hash+val.last+"'>"+hash+val.last+"</a>";
		var play="";
		if(type=="mp3") {
			play=[
				"<audio preload='none' src='files/"+hash+val.last+"'></audio>",
				"<a href='javascript:void(0);' class='play' onclick='_play(this);'>"+data.labels.play2+"</a>",
				"<a href='javascript:void(0);' class='pause d-none' onclick='_pause(this);'>"+data.labels.pause2+"</a>",
				"<a href='javascript:void(0);' class='stop d-none' onclick='_stop(this);'>"+data.labels.stop2+"</a>",
			].join(" ");
		}
		var size=__getmail_gethumansize(val.size);
		$("#files tbody").append(str_replace(["__TYPE__","__FILE__","__SIZE__","__PLAY__"],[label,file,size,play],data.template[4]));
	}
	// MOSTRAR TAULA
	$("#files").removeClass("d-none");
}

// FUNCIONS PEL REPRODUCTOR MULTIMEDIA
function _play(obj) {
	// QUAN FEM PLAY, CAL PAUSAR ELS ALTRES AUDIOS
	$("audio").each(function() {
		// SI EL PLAY DEL OBJECTE ES VISIBLE VOL DIR QUE NO S'ESTA REPRODUINT
		if($(this).parent().find(".play").is(":visible")) return;
		// SINO, FEM EL MATEIX QUE AMB EL PAUSE
		_pause(this);
	});
	// QUAN ES FA PLAY, NOMES ES MOSTRA EL PAUSE I EL STOP
	$(obj).parent().find("audio").get(0).play();
	$(obj).parent().find(".play").addClass("d-none");
	$(obj).parent().find(".pause").removeClass("d-none");
	$(obj).parent().find(".stop").removeClass("d-none");
	// PROGRAMAR QUE AVISI QUAN ACABI LA REPRODUCCIO
	$(obj).parent().find("audio").get(0).onended=function() {
		_stop(obj);
	};
}

function _pause(obj) {
	// QUAN ES FA PAUSA, NOMES ES MOSTRA EL PLAY I EL STOP
	$(obj).parent().find("audio").get(0).pause();
	$(obj).parent().find(".play").removeClass("d-none");
	$(obj).parent().find(".pause").addClass("d-none");
	$(obj).parent().find(".stop").removeClass("d-none");
}

function _stop(obj) {
	// QUAN ES FA STOP, NOMES ES MOTRA EL PLAY
	$(obj).parent().find("audio").get(0).load();
	$(obj).parent().find(".play").removeClass("d-none");
	$(obj).parent().find(".pause").addClass("d-none");
	$(obj).parent().find(".stop").addClass("d-none");
}

// PER PINTAR EL PDF DE LA PARTITURA
var _pdfViewer=null;

function _pdf(hash) {
	pdfjsLib.GlobalWorkerOptions.workerSrc="lib/pdfjs/pdf.worker.min.js";
	pdfjsLib.getDocument("files/"+hash+".pdf").promise.then(function(pdfDocument) {
		$("#pdf").html("<div id='viewerContainer'><div id='viewer' class='pdfViewer'></div></div>");
		var container=document.getElementById("viewerContainer");
		var eventBus=new pdfjsViewer.EventBus();
		_pdfViewer=new pdfjsViewer.PDFViewer({
			container:container,
			eventBus:eventBus,
		});
		var fn1=function() {
			_pdfViewer.currentScaleValue="page-width";
		};
		var fn2=function() {
			$("a",container).each(function() {
				$(this).attr("target","_blank");
			});
		};
		eventBus.on("pagesinit",fn1);
		eventBus.on("textlayerrendered",fn2);
		_pdfViewer.removePageBorders=true;
		_pdfViewer.setDocument(pdfDocument);
	},function(message,exception) {
		console.log(message);
		console.log(exception);
	});
}

// PER MUNTAR EL CERCADOR
function _search(text) {
	// CERCAR PER PARAULES
	text=accent_fold(text).trim().split(" ");
	var result={};
	for(var key in data.songs) {
		var val=data.songs[key];
		if(typeof(val.cache)=="undefined") val.cache=accent_fold(val.info);
		var num=0;
		for(var key2 in text) {
			if(val.cache.search(new RegExp(text[key2],"i"))!=-1) num++;
		}
		if(text.length==num) {
			result[key]=accent_folded_hilite(val.info,text);
		}
	}
	// MOSTRAR I NETEJAR CERCADOR
	$("#results").removeClass("d-none");
	$("#results div").remove();
	// MOSTRAR RESULTATS
	var a=Math.min(Object.keys(result).length,2);
	var b=Math.min(text.length,2);
	$("#results").append(str_replace("__RESULT__",str_replace(["__NUM__","__TEXT__"],["<b>"+Object.keys(result).length+"</b>","<b>"+text.join(" ")+"</b>"],data.labels["found"+a+b]),data.template[3]));
	for(key in result) {
		var val="<a href='#"+key+"'>"+result[key]+"</a>";
		$("#results").append(str_replace("__RESULT__",val,data.template[3]));
	}
}

