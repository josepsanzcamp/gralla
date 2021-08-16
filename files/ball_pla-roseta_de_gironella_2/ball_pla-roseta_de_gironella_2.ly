\version "2.16.0"

\header {
  dedication="Ball pla"
  title="    "
  subtitle="Roseta de Gironella"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
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
  \key g \major
  \time 3/4
  b4 d d  |
  b4 d d  |
  e4 c a  |
  b2 d4  |
  %05
  b4 d d  |
  b4 d d  |
  e4 c a  |
  b2.  |
  b4 c d  |
  %10
  d2 c4  |
  c4 d e  |
  e2 d4  |
  b4 d d  |
  b4 d d  |
  %15
  e4 c a  |
  b2.  \bar "||"
  \time 6/8   b4 d8 d4 d8  |
  b4 d8 d4 d8  |
  e4 c8 c4 a8  |
  %20
  b4. d  |
  b4 d8 d4 d8  |
  b4 d8 d4 d8  |
  e4 c8 c4 a8  |
  b2.  |
  %25
  b4 c8 c4 d8  |
  d4. c  |
  c4 d8 d4 e8  |
  e4. d  |
  b4 d8 d4 d8  |
  %30
  b4 d8 d4 d8  |
  e4 c8 c4 a8  |
  b2.  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  g4 b b  |
  g4 b b  |
  c4 a fis  |
  g2 b4  |
  %05
  g4 b b  |
  g4 b b  |
  c4 a fis  |
  g2.  |
  g4 a b  |
  %10
  b2 a4  |
  a4 b c  |
  c2 b4  |
  g4 b b  |
  g4 b b  |
  %15
  c4 a a  |
  g2.  \bar "||"
  \time 6/8   g4 b8 b4 b8  |
  g4 b8 b4 b8  |
  c4 a8 a4 fis8  |
  %20
  g4. b  |
  g4 b8 b4 b8  |
  g4 b8 b4 b8  |
  c4 a8 a4 fis8  |
  g2.  |
  %25
  g4 a8 a4 b8  |
  b4. a  |
  a4 b8 b4 c8  |
  c4. b  |
  g4 b8 b4 b8  |
  %30
  g4 b8 b4 b8  |
  c4 a8 a4 fis8  |
  g2.  \bar "|."
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

