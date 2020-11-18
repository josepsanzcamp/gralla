<script>
var lang=navigator.language || navigator.systemLanguage;
lang=lang.toLowerCase();
lang=lang.substr(0,2);
var hash=window.location.hash;
if(lang=='ca') window.location.href='index.ca.html'+hash;
else if(lang=='es') window.location.href='index.es.html'+hash;
else if(lang=='en') window.location.href='index.en.html'+hash;
else window.location.href='index.ca.html'+hash;
</script>
