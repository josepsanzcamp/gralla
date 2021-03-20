
"use strict"

// VARIABLES GLOBALS
var _first_hash="";
var _pdfViewer=null;

$(function() {

	// PINTAR MENU
	_menu();

	// PROGRAMAR HASHCHANGE
	$(window).on("hashchange",function() {
		// AGAFAR EL HASH ACTUAL
		var hash=window.location.hash;
		if(hash.substr(0,1)=="#") hash=hash.substr(1);
		if(!data.songs.hasOwnProperty(hash)) {
			// SINO, MIRAR SI HAY PARAMETRO HASH
			var params=new URLSearchParams(window.location.search);
			if(params.has("hash")) hash=params.get("hash");
			if(!data.songs.hasOwnProperty(hash)) {
				// SINO, MIRAR EL NOM DEL FITXER
				hash=window.location.href.split("/").pop().split(".")[0];
				if(!data.songs.hasOwnProperty(hash)) {
					// SINO, FER SERVIR COOKIE
					hash=$.cookie("hash");
					if(typeof(hash)=="undefined") hash="";
					if(!data.songs.hasOwnProperty(hash)) {
						// SINO, FER SERVIR EL PRIMER HASH
						hash=_first_hash;
					}
				}
			}
		}
		// ACTUALITZAR COOKIE PER MES ENDAVANT
		$.cookie("hash",hash,{expires:365,path:"/"});
		// DESACTIVAR ANTIGA SELECCIO
		$("#menu button.active").removeClass("active");
		$("#menu .collapse.show").removeClass("show");
		$("#menu a.active").removeClass("active");
		// ACTIVAR LA NOVA SELECCIO
		var hash0=hash.split("-")[0];
		$("#h_"+hash0+" button").addClass("active");
		$("#c_"+hash0).addClass("show");
		$("#c_"+hash0+" a[href='#"+hash+"']").addClass("active");
		// ACTUALITZAR TITOLS
		document.title=data.songs[hash].info+" - "+data.labels.title;
		$("#titol").html(data.songs[hash].info+" - "+data.labels.title);
		// AMAGAR CERCADOR I MENU
		$("#result").addClass("d-none");
		$("#sidebarMenu").collapse("hide");
		// PINTAR TAULA
		_files(hash);
		// PINTAR PDF
		_pdf(hash);
		// ANAR AL INICI DE LA PAGINA
		$("html, body").animate({ scrollTop:0 });
		// GUARDAR IDIOMA PEL REDIRECCIONADOR DEL INDEX.HTML
		var lang=$("html").attr("lang");
		$.cookie("lang",lang,{expires:365,path:"/"});
	});

	// PROGRAMAR RESIZE
	$(window).on("resize",function() {
		if(!$("#pdf").is(":visible")) return;
		_pdfViewer.currentScaleValue=_pdfViewer.currentScale*2;
		_pdfViewer.currentScaleValue="page-width";
	});

	// PROGRAMAR CERCADOR
	$("input.search").on("keypress",function(e) {
		if(e.which!=13) return;
		_search();
	});
	$("a.search").on("click",function() {
		_search();
	});

	// PER POSICIONAR EL MENU QUAN S'OBRE UNA CATEGORIA
	$(".collapse[id^='c_']").on("show.bs.collapse", function() {
		var count=0;
		var _this=this;
		$(".collapse[id^='c_']").each(function() {
			if(_this==this) {
				var height0=$("nav:eq(0)").outerHeight(); // BARRA BLAVA
				var height1=$("#menu .card-header:eq(0)").outerHeight(); // CERCADOR
				if($("#menu .card-header:eq(0)").is(":not(:visible)")) height1=0;
				var height2=$("#menu .card-header:eq(1)").outerHeight(); // PRIMER BOTO
				$("html, body").animate({ scrollTop:height0+height1+count*height2 });
			}
			count++;
		});
	});

	// PER AMAGAR ELS FITXERS I EL PDF QUAN S'OBRE EL MENU EN MODE MOBIL
	$("#sidebarMenu").on("show.bs.collapse", function(e) {
		if($(e.target).attr("id")!="sidebarMenu") return;
		$("#result").addClass("d-none");
		$("#files").addClass("d-none");
		$("#pdf").addClass("d-none");
	});

	// PER MOSTRAR ELS FITXERS I EL PDF QUAN ES TANCA EL MENU EN MODE MOBIL
	$("#sidebarMenu").on("hide.bs.collapse", function(e) {
		if($(e.target).attr("id")!="sidebarMenu") return;
		if($("#result").is(":visible")) return;
		$("#files").removeClass("d-none");
		$("#pdf").removeClass("d-none");
	});

	// PER PREVENIR QUAN ES FA CLIC A UN LINK AMB EL MATEIX HASH
	$(document).on("click","a",function() {
		var hash1=window.location.hash;
		var hash2=$(this).attr("href");
		if(hash1!=hash2) return;
		$("#sidebarMenu").collapse("hide");
		$("#result").addClass("d-none");
		$("#files").removeClass("d-none");
		$("#pdf").removeClass("d-none");
	});

	// FORÇAR UNA EXECUCIO DEL HASHCHANGE
	$(window).trigger("hashchange");

});

// PER PINTAR EL MENU
function _menu() {
	// NETEJAR MENU
	$("#menu > div:not(:first)").remove();
	// PINTAR MENU
	for(var key in data.cats) {
		var val=data.cats[key];
		$("#menu").append(str_replace(["__TITLE__","__HEADING__","__COLLAPSE__"],[val.name,"h_"+key,"c_"+key],data.template[0])+data.template[2]);
		for(var key2 in val.array) {
			var val2=val.array[key2];
			if(_first_hash=="") _first_hash=val2;
			$("#c_"+key+" ul").append(str_replace(["__TITLE__","__LINK__"],[data.songs[val2].name,"#"+val2],data.template[1]));
		}
	}
	// MOSTRAR MENU
	$("#menu").removeClass("d-none");
}

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
		var file="<a href='files/"+hash+"/"+hash+val.last+"'>"+hash+val.last+"</a>";
		var play="";
		if(type=="mp3") {
			play=[
				"<audio preload='none' src='files/"+hash+"/"+hash+val.last+"' controls></audio>",
			].join(" ");
		}
		var size=__getmail_gethumansize(val.size);
		$("#files tbody").append(str_replace(["__TYPE__","__FILE__","__SIZE__","__PLAY__"],[label,file,size,play],data.template[4]));
	}
	// CREAR AUDIOPLAYER
	$("audio").audioPlayer();
	// MOSTRAR TAULA
	$("#files").removeClass("d-none");
}

// PER PINTAR EL PDF DE LA PARTITURA
function _pdf(hash) {
	pdfjsLib.GlobalWorkerOptions.workerSrc="lib/pdfjs/pdf.worker.min.js";
	var base=$("base").attr("href").split("/")[0];
	pdfjsLib.getDocument(base+"/files/"+hash+"/"+hash+".pdf").promise.then(function(pdfDocument) {
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
		$("#pdf").removeClass("d-none");
	},function(message,exception) {
		console.log(message);
		console.log(exception);
	});
}

//~ setTimeout(function() {
	//~ $("input.search:first").val("toc inici jordi fabregas");
	//~ $("a.search:first").trigger("click");
//~ },1000);

// PER MUNTAR EL CERCADOR
function _search() {
	var text="";
	$("input.search").each(function() {
		if($(this).val()!="") {
			text=$(this).val();
			$(this).val("");
		}
	});
	if(text=="") return;
	// CERCAR PER PARAULES
	text=accent_fold(text).trim().split(" ");
	var result_by_num={};
	for(var key in data.songs) {
		var val=data.songs[key];
		if(typeof(val.cache)=="undefined") val.cache=accent_fold(val.info);
		var num=0;
		for(var key2 in text) {
			if(val.cache.search(new RegExp(text[key2],"i"))!=-1) num++;
		}
		if(num>0) {
			if(!result_by_num.hasOwnProperty(num)) result_by_num[num]={};
			result_by_num[num][key]=accent_folded_hilite(val.info+" - "+data.labels.title,text);
		}
	}
	var result={};
	for(var i=text.length;i>0;i--) {
		if(result_by_num.hasOwnProperty(i)) {
			Object.assign(result,result_by_num[i]);
		}
	}
	// NETEJAR CERCADOR
	$("#result > div").remove();
	// MOSTRAR RESULTATS
	var a=Math.min(Object.keys(result).length,2);
	var b=Math.min(text.length,2);
	var c=str_replace(["__NUM__","__TEXT__"],["<b>"+Object.keys(result).length+"</b>","<b>"+text.join(" ")+"</b>"],data.labels["found"+a+b]);
	$("#result").append(str_replace("__RESULT__",c,data.template[3]));
	for(key in result) {
		var val="<a href='#"+key+"'>"+result[key]+"</a>";
		$("#result").append(str_replace("__RESULT__",val,data.template[3]));
	}
	// REURE DARRERA LINIA
	$("#result .border-bottom:last").removeClass("border-bottom");
	// MOSTRAR CERCADOR I AMAGAR LA RESTA
	$("#sidebarMenu").collapse("hide");
	$("#result").removeClass("d-none");
	$("#files").addClass("d-none");
	$("#pdf").addClass("d-none");
}

