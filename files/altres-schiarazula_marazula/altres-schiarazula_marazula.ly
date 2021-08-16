\version "2.16.0"

\header {
  dedication=""
  title="  "
  subtitle="Schiarazula Marazula"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Antonio Mainerio (ca. 1535 - 1582)"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  e8  |
  \time 2/4   e8 ( d ) e ( d )  |
  c8-> c-> c-> ( b )  |
  a8 ( g ) a ( b )  |
  %05
  a8-> a-> a-> ( e' )  |
  e8 ( d ) e ( d )  |
  c8-> c-> c-> b   |
  a8 ( g ) a ( b )  |
  a8-> a-> a-> d16 ( c )  |
  %10
  b8 ( a ) b ( c )  |
  b8-> b-> b-> e16 ( d )  |
  c8 ( a ) a ( g )  |
  a8-> a-> a-> d16 c   |
  b8 ( a ) b ( c )  |
  %15
  b8-> b-> b-> e16 ( d )  |
  c8 ( a ) a ( g )  |
  a8-> a-> a-> r  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  e8  |
  \time 2/4   e4. d8  |
  e4. d8  |
  c4. b8  |
  %05
  c4. e8  |
  e4. d8  |
  e4. d8  |
  c4. b8  |
  c4. b16 a  |
  %10
  g4. a8  |
  g4. c16 b  |
  a4. b8  |
  c4. b16 a  |
  g4. a8  |
  %15
  g4. c16 b  |
  a4. b8  |
  c4. r8  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/8
  r8  |
  \time 2/4   tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  %05
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> tomh  |
  %10
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  %15
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> r  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 1/8
  r8  |
  \time 2/4   tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  %05
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  |
  %10
  tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  %15
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  \bar "|."
}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a4")
  #(layout-set-staff-size 20)
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a5landscape")
  #(layout-set-staff-size 16)
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \layout {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 12)
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \layout {}
  }
}

}

