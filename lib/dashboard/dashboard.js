
$(function() {
	'use strict'

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

	$(window).on("hashchange",function() {
		var hash=window.location.hash;
		if(hash.substr(0,1)=="#") hash=hash.substr(1);
		var hash0=hash.split("-")[0];
		if($("#c_"+hash0+" a[href='#"+hash+"']").length==0) {
			var cookie_hash=$.cookie("hash");
			if(typeof(cookie_hash)=="undefined") cookie_hash="";
			var cookie_hash0=cookie_hash.split("-")[0];
			if($("#c_"+cookie_hash0+" a[href='#"+cookie_hash+"']").length!=0) {
				if(hash!=cookie_hash) window.location.hash="#"+cookie_hash;
			} else {
				if(hash!=first_hash) window.location.hash="#"+first_hash;
			}
			return;
		}
		$.cookie("hash",hash,{expires:365,path:"/"});
		$("button.active").removeClass("active");
		$(".collapse.show").removeClass("show");
		$("a.active").removeClass("active");
		$("#h_"+hash0+" button").addClass("active");
		$("#c_"+hash0).addClass("show");
		$("#c_"+hash0+" a[href='#"+hash+"']").addClass("active");
		document.title=data.songs[hash].info+" - "+data.title;
		$(".navbar-brand").html(data.songs[hash].info+" - "+data.title);
		document.title=data.songs[hash].info+" - "+data.title;
	});

	$(window).trigger("hashchange");
});
