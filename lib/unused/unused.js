
"use strict"

function _htmlentities(text)
{
    text = str_replace([
        "á","é","í","ó","ú",
        "à","è","ì","ò","ù",
        "Á","É","Í","Ó","Ú",
        "À","È","Ì","Ò","Ù",
    ],[
        "&aacute;","&eacute;","&iacute;","&oacute;","&uacute;",
        "&agrave;","&egrave;","&igrave;","&ograve;","&ugrave;",
        "&Aacute;","&Eacute;","&Iacute;","&Oacute;","&Uacute;",
        "&Agrave;","&Egrave;","&Igrave;","&Ograve;","&Ugrave;",
    ],text);
    return text;
}

