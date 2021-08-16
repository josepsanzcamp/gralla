\version "2.16.0"

\header {
  dedication=""
  title="   "
  subtitle="Hassàpiko nostàlgic"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Tradicional grega"
  arranger="Arr. Marcel Casellas, 2004"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \clef treble
  \key c \major
  \time 1/4
  \times 2/3 { e8\prall d e } \tempo 4 = 108  |
  \time 4/4   \repeat volta 2 { a2 ~ a8 a g f  |
  e4. d8 c4 \times 2/3 { e8 d e }  |
  f4 a g f  |
  %05
  e2. \times 2/3 { e8 d e }  |
  a2 ~ a8 a g f  |
  e4. d8 c4 \times 2/3 { b8 c d }  |
  e4 d c b }
  \alternative { { a4 e'-. a-. \times 2/3 { e8\prall d e } }
  %10
  { a,4 e'-. a-. e,8 a } }
  \repeat volta 2 { c4 c8 c c b c d  |
  b4 b2 \times 2/3 { a8 b c }  |
  a4 a' g f }
  \alternative { { e2. e,8 a }
  %15
  { e'2. a,8 c } }
  \repeat volta 2 { e4 e8 e e4 d8 e  |
  f4. e8 d4 g,8 b  |
  d4 d8 d d4 \times 2/3 { d8 e f }  |
  e2. e,8 a  |
  %20
  c4 c8 c c4 b8 c  |
  d4. c8 b4 \times 2/3 { b8 c d }  |
  \times 2/3 { e8 f e } \times 2/3 { d e d } \times 2/3 { c d c } \times 2/3 { b c b } }
  \alternative { { a4 e'-. a-. a,8 c }
  { a4 e'-. a-. r } } \bar "||"
}

liniaroAb =
\relative e''
{
  \tempo 4 = 108
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { r4 e8 d ( c4 b  |
  c4 c8 b a4 ) r  |
  r4 f' e d  |
  %05
  c8 ( b a b g4 ) r  |
  r4 e'8 d c4 ( b  |
  c4 c8 b a4 ) r  |
  r4 b a gis }
  \alternative { { a8 e'16 ( d ) c8 b c4 r }
  %10
  { a8 e'16 ( d d ) ( c ) c ( b a4 ) r } }
  \repeat volta 2 { a1 (  |
  g4. a8 g4 ) r  |
  r4 f' e d }
  \alternative { { d8 ( c ) c ( b ) b4 r }
  %15
  { d8 ( c b a gis4 ) r } }
  \repeat volta 2 { r8 c c c c b c d  |
  d8 ( e ) d c b4 r  |
  r8 b b b b4 \times 2/3 { b8 c d }  |
  c8 d c b a4 r  |
  %20
  r8 a a a a ( gis ) gis a  |
  b8 c b ( a ) b4 a  |
  gis4-. b a gis }
  \alternative { { a4 e'-. a,-. r }
  { a4 e'-. a,-. r } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4 = 108
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { tomml4 tomml8 tomml tomml4 tomml  |
  tomml4 tomml8 tomml tomml4 tomml  |
  tomml4 tomml8 tomml tomml4 tomml  |
  %05
  tomml4 tomml8 tomml tomml4 tomml  |
  tomml4 tomml8 tomml tomml4 tomml  |
  tomml4 tomml8 tomml tomml4 tomml  |
  tomml4 tomml8 tomml tomml4 tomml }
  \alternative { { tomml4 tomml-. tomml-. r }
  %10
  { tomml4 tomml-. tomml-. r } }
  \repeat volta 2 { tomml4 tomml8 tomml tomml4 tomml  |
  tomml4 tomml8 tomml \times 2/3 { tomml tomml tomml } \times 2/3 { tomml tomml tomml }  |
  tomml4 tomml8 tomml tomml4 tomml }
  \alternative { { tomml4 tomml8 tomml \times 2/3 { tomml tomml tomml } \times 2/3 { tomml tomml tomml } }
  %15
  { tomml4 tomml2.:32 } }
  \repeat volta 2 { tomml4 tomml8 tomml tomml4 tomml:32 ~  |
  tomml4 tomml8 tomml tomml4 tomml:32 ~  |
  tomml4 tomml8 tomml tomml4 tomml:32 ~  |
  tomml4 tomml8 tomml tomml4 tomml:32 ~  |
  %20
  tomml4 tomml8 tomml tomml4 tomml:32 ~  |
  tomml4 tomml8 tomml tomml4 \times 2/3 { tomml8 tomml tomml }  |
  \times 2/3 { tomml8 tomml tomml } \times 2/3 { tomml tomml tomml } \times 2/3 { tomml tomml tomml } \times 2/3 { tomml tomml tomml } }
  \alternative { { tomml4 tomml-. tomml-. r }
  { tomml4 tomml-. tomml-. r } } \bar "||"
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

}

