\version "2.16.0"

\header {
  dedication="Tarantella"
  title="    "
  subtitle="Caffarantel·la"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Ximo Caffarena"
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
  \time 6/8
  e8 f e ( d c ) b  |
  c4 a8 c4 d8  |
  e8 ( f ) e d c b  |
  a4. r  |
  %05
  e'8 f ( e e ) f ( e )  |
  f4 e8 e4 f8  |
  e4 d8 c4 b8  |
  a4. r  |
  b8 c b ( b ) c ( d )  |
  %10
  e8 ( f ) g a4 a8  |
  g4 f8 e4 g8  |
  f4 e8 ~ e r4  |
  b8 c b ( b ) c ( d )  |
  e8 ( f ) g a4 a8  |
  %15
  gis4 f8 e4 d8  |
  c4. r  |
  b8 c b ( b ) c ( b )  |
  b8 ( c ) b b ( c ) b  |
  b8 ( c ) b b ( c ) b  |
  %20
  b8 ( c ) b b4.  |
  b8 c b ( b ) c ( b )  |
  b8 ( c ) b b ( c ) b  |
  b8 ( c ) b b ( c ) b  |
  b8 ( e ) d c4 r8  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  c8 d c ( c ) d ( c )  |
  d4 c8 b4 a8  |
  gis4 b8 a4 gis8  |
  a4. r  |
  g8 a g ( g ) a ( b )  |
  %10
  c8 ( d ) e f4 f8  |
  e4 d8 c4 e8  |
  d4 c8 ~ c r4  |
  g8 a g ( g ) a ( b )  |
  c8 ( d ) e f4 f8  |
  %15
  e4 d8 c4 b8  |
  a4. r  |
  g8 a g ( g ) a ( g )  |
  g8 ( a ) g g ( a ) g  |
  g8 ( a ) g g ( a ) g  |
  %20
  g8 ( a ) g g4.  |
  g8 a g ( g ) a g   |
  g8 ( a ) g g ( a ) g  |
  g8 ( a ) g g ( a ) g  |
  gis8 ( c ) b a4 r8  \bar "|."
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

