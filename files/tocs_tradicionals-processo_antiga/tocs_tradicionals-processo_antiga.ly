\version "2.16.0"

\header {
  dedication="Tocs tradicionals"
  title="   "
  subtitle="Toc de la processó"
  subsubtitle="antiga"
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
  \time 3/8
  \repeat volta 24 { b8 c d  |
  e8 c16 b c e  |
  d8 b16 d g8  |
  d8 g d  |
  %05
  e16 f e d e f  |
  e8 c e  |
  g16 ( fis ) fis ( e ) e ( d )  |
  b8 d d  |
  e16 f e d e f }
  %10
  \alternative { { e8 c4 ~  |
  c4. ~  |
  c8 r4  |
  d4. ~  |
  d4. ~  |
  %15
  d8 r4  |
  c4. ~  |
  c4. ~  |
  c8 r c  |
  b4. ~  |
  %20
  b4. ~  |
  b8 r4 }
  { e8 c16 b c e  |
  d4. ~  |
  d4. ~  |
  %25
  d8 r4  |
  c4. ~  |
  c4. ~  |
  c8 r4  |
  c8 d e  |
  %30
  d8 c4  |
  b4. ~  |
  b4. ~  |
  b8 r4 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  \repeat volta 24 { g8 a b  |
  c8 a16 gis a c  |
  b8 g16 b b8  |
  b8 d b  |
  %05
  c16 d c b c d  |
  c8 a c  |
  b16 ( d ) d ( c ) c ( b )  |
  g8 b b  |
  c16 d c b c d }
  %10
  \alternative { { c8 a4 ~  |
  a4. ~  |
  a8 r4  |
  b4. ~  |
  b4. ~  |
  %15
  b8 r4  |
  a4. ~  |
  a4. ~  |
  a8 r a  |
  g4. ~  |
  %20
  g4. ~  |
  g8 r4 }
  { c8 a16 g a c  |
  b4. ~  |
  b4. ~  |
  %25
  b8 r4  |
  a4. ~  |
  a4. ~  |
  a8 r4  |
  a8 b c  |
  %30
  b8 a4  |
  g4. ~  |
  g4. ~  |
  g8 r4 } } \bar "||"
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

