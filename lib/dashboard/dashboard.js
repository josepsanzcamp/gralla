
$(function() {
	'use strict'

	// PINTAR MENU
	var first_hash="";
	for(var key in data.cats) {
		var val=data.cats[key];
		$("#accordionExample").append(str_replace(["__TITLE__","__HEADING__","__COLLAPSE__"],[val.name,"h_"+key,"c_"+key],data.template[0])+data.template[2]);
		for(var key2 in val.array) {
			var val2=val.array[key2];
			if(first_hash=="") first_hash=val2;
			$("#c_"+key+" ul").append(str_replace(["__TITLE__","__LINK__"],[data.songs[val2].name,"#"+val2],data.template[1]));
		}
	}

	var interval=null;

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
				if(hash!=first_hash) window.location.hash="#"+first_hash;
			}
			return;
		}
		// ACTUALITZAR COOKIE PER MES ENDAVANT
		$.cookie("hash",hash,{expires:365,path:"/"});
		// DESACTIVAR ANTIGA SELECCIO
		$("button.active").removeClass("active");
		$(".collapse.show").removeClass("show");
		$("a.active").removeClass("active");
		// ACTIVAR LA NOVA SELECCIO
		$("#h_"+hash0+" button").addClass("active");
		$("#c_"+hash0).addClass("show");
		$("#c_"+hash0+" a[href='#"+hash+"']").addClass("active");
		// ACTUALITZAR TITOLS
		clearInterval(interval);
		document.title=data.songs[hash].info+" - "+data.labels.title;
		if($(window).width()>=1200) {
			$(".navbar-brand").html(data.songs[hash].info+" - "+data.labels.title);
		} else {
			$(".navbar-brand").html(data.songs[hash].info);
			$(".navbar-brand").attr("todo",data.labels.title);
			interval=setInterval(function() {
				var todo=$(".navbar-brand").attr("todo");
				$(".navbar-brand").attr("todo",$(".navbar-brand").html());
				$(".navbar-brand").html(todo);
			},3000);
		}
		// AMAGAR I NETEJAR CERCADOR
		$("#results").addClass("d-none");
		$("#results div").remove();
		// PINTAR TAULA
		_qwerty(hash);
		// PINTAR PDF
		_pdf(data.songs[hash].pdf);
	});

	// PROGRAMAR RESIZE
	$(window).on("resize",function() {
		$("#viewerContainer .page").removeAttr("fixed","true");
		pdfViewer.currentScaleValue=pdfViewer.currentScale*2;
		pdfViewer.currentScaleValue="page-width";
	});

	// PROGRAMAR CERCADOR
	$("#search").on("keypress",function(e) {
		if(e.which!=13) return;
		_search($(this).val());
		$(this).val("")
		if($(".navbar-toggler:not(.collapsed)").is(":visible")) $(".navbar-toggler").trigger("click");
	});

	// FORZAR UNA EXECUCIO DEL SELECTOR
	$(window).trigger("hashchange");

});

// PER PINTAR LA TAULA
function _qwerty(hash) {
	// NETEJAR TAULA
	$("#qwerty tbody").html("");
	// MUNTAR NOVA TAULA
	for(var key in data.songs[hash].files) {
		var val=data.songs[hash].files[key];
		var file=`<a href="${val.file}">${val.name}</a>`;
		var play="";
		if(val.type=="mp3") {
			play=[
				`<audio src="${val.file}"></audio>`,
				`<a href="javascript:void(0);" class="play" onclick="_play(this);">${data.labels.play2}</a>`,
				`<a href="javascript:void(0);" class="pause d-none" onclick="_pause(this);">${data.labels.pause2}</a>`,
				`<a href="javascript:void(0);" class="stop d-none" onclick="_stop(this);">${data.labels.stop2}</a>`,
			].join(" ");
		}
		$("#qwerty tbody").append(str_replace(["__TYPE__","__FILE__","__SIZE__","__PLAY__"],[val.label,file,val.size,play],data.template[4]));
	}
}

// FUNCIONS PEL REPRODUCTOR MULTIMEDIA
function _play(obj) {
	$("audio").each(function() { this.pause(); });
	$(obj).parent().find("audio").get(0).play();
	$(obj).parent().find(".play").addClass("d-none");
	$(obj).parent().find(".pause").removeClass("d-none");
	$(obj).parent().find(".stop").removeClass("d-none");
}

function _pause(obj) {
	$(obj).parent().find("audio").get(0).pause();
	$(obj).parent().find(".play").removeClass("d-none");
	$(obj).parent().find(".pause").addClass("d-none");
	$(obj).parent().find(".stop").removeClass("d-none");
}

function _stop(obj) {
	$(obj).parent().find("audio").get(0).load();
	$(obj).parent().find(".play").removeClass("d-none");
	$(obj).parent().find(".pause").addClass("d-none");
	$(obj).parent().find(".stop").addClass("d-none");
}

// PER PINTAR EL PDF DE LA PARTITURA
var pdfViewer=null;

function _pdf(file) {
	pdfjsLib.GlobalWorkerOptions.workerSrc="lib/pdfjs/pdf.worker.min.js";
	pdfjsLib.getDocument(file).promise.then(function(pdfDocument) {
		$("#dialog").html("<div id='viewerContainer'><div id='viewer' class='pdfViewer'></div></div>");
		var container=document.getElementById("viewerContainer");
		var eventBus=new pdfjsViewer.EventBus();
		pdfViewer=new pdfjsViewer.PDFViewer({
			container:container,
			eventBus:eventBus,
		});
		var fn1=function() {
			pdfViewer.currentScaleValue="page-width";
		};
		var fn2=function() {
			$("a",container).each(function() {
				$(this).attr("target","_blank");
			});
			$("#viewerContainer .page").each(function() {
				if($(this).is("[fixed][fixed=true]")) return;
				$(this).width($(this).width()+20);
				$(this).height($(this).height()+20);
				$(this).attr("fixed","true");
			});
		};
		eventBus.on("pagesinit",fn1);
		eventBus.on("textlayerrendered",fn2);
		pdfViewer.setDocument(pdfDocument);
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
		var val=`<a href="#${key}">${result[key]}</a>`;
		$("#results").append(str_replace("__RESULT__",val,data.template[3]));
	}
}

