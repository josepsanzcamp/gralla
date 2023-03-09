<?php

// phpcs:disable PSR1.Files.SideEffects
// phpcs:disable Generic.Files.LineLength

if (!function_exists("__exec1")) {
    function __exec1($cmd)
    {
        ob_start();
        passthru("$cmd 2>&1");
        return ob_get_clean();
    }
}

if (!function_exists("__exec2")) {
    function __exec2($cmd)
    {
        ob_start();
        passthru("$cmd 2>/dev/null");
        return ob_get_clean();
    }
}

// CONVERTIR DES DE MIDI CAP A MP3
$files = glob("*.midi");
foreach ($files as $file) {
    $file2 = str_replace(".midi", ".wav", $file);
    $file3 = str_replace(".midi", ".mp3", $file);
    if (!file_exists($file3)) {
        echo "Processant $file ... ";
        // FOR CENTOS7
        //~ __exec1("/usr/bin/timidity -x'bank 0\\n0 /usr/share/soundfonts/fluid-soundfont-lite-patches/FluidR3_GM-B0/Oboe' -OwM -o $file2 $file");
        // FOR DEBIAN11
        //~ __exec1("/usr/bin/timidity -x'bank 0\\n0 /usr/share/midi/freepats/Tone_000/068_Oboe' -OwM -o $file2 $file");
        __exec1("/usr/bin/timidity -OwM -o $file2 $file");
        //~ __exec1("lame -f $file2 $file3");
        __exec1("lame -f --preset phone $file2 $file3");
        if (file_exists($file2)) {
            unlink($file2);
        }
        if (file_exists($file3)) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
}
