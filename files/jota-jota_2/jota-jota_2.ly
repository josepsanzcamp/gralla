\version "2.16.0"

\header {
  dedication="Jota"
  title="   "
  subtitle="Jota número 2"
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
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 3/8   \repeat volta 2 { e'8 e16 d c8 ~  |
  c8 r g  |
  f'8 f16 e d8 ~  |
  %05
  d8 r d16 e  |
  f4 e8  |
  f4 d8  |
  e8 e16 d c8 ~  |
  c8 r g  |
  %10
  e'8 e16 d c8 ~  |
  c8 r g  |
  f'8 f16 e d8 ~  |
  d8 r g,  |
  f'4 e8  |
  %15
  f4 d8  |
  e8 e16 d c8 ~  |
  c8 r4  \bar "||"
  e8 e16 d c8 ~  |
  c8 e4  |
  %20
  f8. e16 d8 ~  |
  d4.  |
  d8 d16 c b8 ~  |
  b8 d4  |
  e8. d16 c8 ~  |
  %25
  c4.  |
  e8 e16 d c8 ~  |
  c8 e4  |
  f8. e16 d8 ~  |
  d4.  |
  %30
  d8 d16 c b8 ~  |
  b8 d4 }
  \alternative { { c4. ~  |
  c8 r g }
  { c4 g8  |
  %35
  c8 r4 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 3/8   \repeat volta 2 { c8 c16 g e8 ~  |
  e8 r g  |
  g8 a16 g f8 ~  |
  %05
  f8 r b16 a  |
  g4 b8  |
  d4 b8  |
  c8 c16 g e8 ~  |
  e8 r g  |
  %10
  c8 c16 g e8 ~  |
  e8 r g  |
  g8 a16 g f8 ~  |
  f8 r g  |
  g4 b8  |
  %15
  d4 b8  |
  c8 c16 g e8 ~  |
  e8 r4  \bar "||"
  g'8 g16 f e8 ~  |
  e8 g4  |
  %20
  a8. g16 f8 ~  |
  f4.  |
  f8 f16 e d8 ~  |
  d8 f4  |
  g8. f16 e8 ~  |
  %25
  e4.  |
  g8 g16 f e8 ~  |
  e8 g4  |
  a8. g16 f8 ~  |
  f4.  |
  %30
  f8 f16 e d8 ~  |
  d8 f4 }
  \alternative { { e4 r8  | % kompletite
  e8 r g, }
  { e'4 g8  |
  %35
  e8 r4 } } \bar "||"
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

