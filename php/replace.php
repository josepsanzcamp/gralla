<?php

function str_replace_assoc($array, $cad)
{
    return str_replace(array_keys($array), array_values($array), $cad);
}
