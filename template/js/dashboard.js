
$(function() {
	'use strict'

	var first_hash="";
	for(var key in data.array) {
		var val=data.array[key];
		$("#accordionExample").append(str_replace(["__TITLE__","__HEADING__","__COLLAPSE__"],[val.name,"h_"+key,"c_"+key],data.template[0])+data.template[2]);
		for(var key2 in val.array) {
			var val2=val.array[key2];
			if(first_hash=="") first_hash=val2.hash;
			$("#c_"+key+" ul").append(str_replace(["__TITLE__","__LINK__"],[val2.name,"#"+val2.hash],data.template[1]));
		}
	}

	$(window).on("hashchange",function() {
		var hash=window.location.hash;
		if(hash.substr(0,1)=="#") hash=hash.substr(1);
		var hash0=hash.split("-")[0];
		if($("#c_"+hash0+" a[href='#"+hash+"']").length==0) {
			if(hash!=first_hash) window.location.hash="#"+first_hash;
			return;
		}
		$("button.active").removeClass("active");
		$(".collapse.show").removeClass("show");
		$("a.active").removeClass("active");
		$("#h_"+hash0+" button").addClass("active");
		$("#c_"+hash0).addClass("show");
		$("#c_"+hash0+" a[href='#"+hash+"']").addClass("active");
	});

	$(window).trigger("hashchange");
});
