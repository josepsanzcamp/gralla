\version "2.16.0"

\header {
  dedication=""
  title="       "
  subtitle="Arrastrat de Benavarri"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="La Baixa Ribagorça"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  \repeat volta 2 { g2 a4  |
  b4. a8 b4  |
  c2 d4  |
  b4. a8 g4  |
  %05
  d'4. c8 d4  |
  b4. a8 g4  |
  a4. b8 c4  |
  d2.  | }
  \repeat volta 2 { e2 e4  |
  %10
  d2 b4  |
  c4. d8 c4  |
  b4. a8 g4  |
  d'4. c8 d4  |
  b4. a8 g4  |
  %15
  a4. g8 fis4  |
  \mark "D.C." g2.  | }
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  \repeat volta 2 { g2 e4  |
  d4. c8 d4  |
  e2 fis4  |
  d4. c8 d4  |
  %05
  fis4. e8 fis4  |
  d4. c8 b4  |
  c4. d8 e4  |
  d2.  | }
  \repeat volta 2 { g2 g4  |
  %10
  fis2 d4  |
  e4. fis8 e4  |
  d4. c8 b4  |
  fis'4. e8 fis4  |
  d4. c8 b4  |
  %15
  c4. b8 a4  |
  g2.  | }
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

