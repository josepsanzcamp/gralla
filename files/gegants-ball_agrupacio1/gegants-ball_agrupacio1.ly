\version "2.16.0"

\header {
  dedication="Gegants"
  title="  "
  subtitle="Ball dels gegants de l'Agrupació"
  subsubtitle="Introducció"
  poet=""
  meter=""
  piece=""
  composer="Jordi Fàbregas"
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
  \time 4/4
  b2 c _"Solemne" (  |
  d2 e  |
  d2 \times 2/3 { c4 d c }  |
  b2. ) r4  |
  %05
  g'1 ( \ff  |
  e1 )  |
  r1  \bar "||"
  c2 ( d  |
  e2 g  |
  %10
  a2 fis  |
  g2. ) r4  |
  e1 \> \!  |
  d8 e d4 ~ ( \> d2 \! )  |
  r1  \bar "||"
  %15
  b2 ( \< d  |
  g2 \! fis \>  |
  e2. ) \! r4  |
  c'1  \ff   |
  b2 a4 ( g  |
  %20
  fis2 e4 fis  |
  g2. ) r4  |
  e2. \> r4 \!  |
  g1\fermata  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 4/4
  g2 a (  |
  b2 c  |
  b2 \times 2/3 { a4 b a }  |
  g2. ) r4  |
  %05
  b2 ( c8 b a b  |
  c1 )  |
  r1  \bar "||"
  a2 ( b  |
  c2 e  |
  %10
  fis2 d4 c  |
  b2. ) r4  |
  c1  |
  b8 c b4 ~ ( \p b2 )  |
  r1  \bar "||"
  %15
  g2 ( b  |
  e2 d  |
  c2. ) r4  |
  e2 ( fis )  |
  g2 fis4 ( e  |
  %20
  d2 c  |
  b2. ) r4  |
  c2. \p r4  |
  b1\fermata \f  \bar "|."
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

