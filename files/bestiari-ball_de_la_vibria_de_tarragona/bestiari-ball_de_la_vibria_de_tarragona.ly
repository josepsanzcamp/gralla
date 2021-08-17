\version "2.16.0"

\header {
  dedication="Bestiari"
  title="   "
  subtitle="Ball de la víbria de Tarragona "
  subsubtitle=""
  poet="              Temps moderat"
  meter=""
  piece=""
  composer="T. Susato"
  arranger="Arr. Roser Olivé"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { b8 b a b  |
  g8. a16 b8 b  |
  a8 b a d  |
  g,4 g  | }
  %05
  \repeat volta 2 { d'4 e8 c  |
  d8. c16 b8 g  |
  d'4 e8 c  |
  d16 c b a g4  | }
  \repeat volta 2 { d'4 d  |
  %10
  d16 c b a b8 g  |
  d'4 d  |
  \mark "Fine" d16 c b a g4  | }
  \repeat volta 2 { r2  |
  r2  |
  %15
  r2  |
  r2  | }
  r2  |
  r2  |
  r2  |
  %20
  r2  |
  r2  |
  r2  |
  r2  |
  \mark "D.C. al Fine" r2  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { g4 a8 g  |
  g2  |
  a8 g a b  |
  b2  | }
  %05
  \repeat volta 2 { b4 c8 a  |
  b8. a16 b8 b  |
  b4 c8 a  |
  b16 c d c b4  | }
  \repeat volta 2 { g4 g  |
  %10
  g16 a b a g8 g  |
  g'4 g  |
  g16 a b a g4  | }
  \repeat volta 2 { b,16 c d e d8 c  |
  b8. a16 g8 a  |
  %15
  b16 a b c d c d e  |
  d16 c d e d4  | }
  b8. a16 g a b g  |
  a4 a8 g16 a  |
  b16 c d e c8 b  |
  %20
  a4 a  |
  b8. a16 g a b g  |
  a4 a8 g16 a  |
  b8 a16 g a8 b16 a  |
  g2  \bar "|."
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
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
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

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a5landscape")
  #(layout-set-staff-size 16)
  #(define output-suffix "a5")
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

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 12)
  #(define output-suffix "a6")
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

}

