\version "2.16.0"

\header {
  dedication="Masurca"
  title="   "
  subtitle="Masurca d'Auvèrnia"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Tradicional occitana"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { g8. c16 c8. \tempo 4 = 140 b16 c4  |
  g8. e'16 e8. d16 e4  |
  f8. e16 d8. c16 b8. c16  |
  d8. c16 b8. a16 g4  |
  %05
  g8. c16 c8. b16 c4  |
  g8. e'16 e8. d16 e4  |
  f8. e16 d8. c16 b8. d16 }
  \alternative { { c4 c r }
  { c2 e8 f } }
  %10
  \repeat volta 2 { g4 g8 a g f  |
  e4 c d8 e  |
  f8 e f g a g  |
  d2 e8 f  |
  g4 g8 a g f  |
  %15
  e4 c d8 e  |
  f8 e d c b d }
  \alternative { { c2 e8 f }
  { c4 c r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4 = 140
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { r2 r4  |
  g8. c16 c8. b16 c4  |
  d8. c16 b8. a16 b8. c16  |
  d8. c16 b8. a16 g4  |
  %05
  r2 r4  |
  g8. c16 c8. b16 c4  |
  d8. c16 b8. a16 g8. b16 }
  \alternative { { c4 c r }
  { c2 c8 d } }
  %10
  \repeat volta 2 { e4 e8 f e d  |
  c4 c b8 c  |
  d8 c d e f e  |
  d2 c8 d  |
  e4 e8 f e d  |
  %15
  c4 c b8 c  |
  d8 c b a g b }
  \alternative { { c2 c8 d }
  { c4 c r } } \bar "||"
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

