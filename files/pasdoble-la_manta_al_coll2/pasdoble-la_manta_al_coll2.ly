\version "2.16.0"

\header {
  dedication="Marxa"
  title="  "
  subtitle="La manta al coll"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. Xavier Richart"
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
  \time 2/4
  r8 e e d  |
  \mark \markup {\musicglyph #"scripts.segno"} c2 ~  |
  c8 b a g  |
  b2  |
  %05
  r8 f' f e  |
  d2 ~  |
  d8 c b a  |
  c2  |
  r8 e e d  |
  %10
  c2 ~  |
  c8 c d e  |
  f2 ~  |
  f8 f g f  |
  e8 e f e  |
  %15
  d8 f e d  |
  c4 g  |
  \mark "Fine" c8 c g c  |
  e4 g,  |
  c8 c g c  |
  %20
  e4 r8 g,  |
  g8 e' e d  |
  d8 c4 c8  |
  c4 d8 c  |
  c8 b4 g8  |
  %25
  g8 d' d c  |
  c8 b4 b8  |
  b4 c8 b  |
  a8 g4 g8  |
  g8 e' e d  |
  %30
  d8 c4 c8  |
  d8 c d e  |
  f4 r8 f16 f  |
  f8 f g f  |
  e4 f8 e  |
  %35
  d8 f e d  |
  \mark "D.S. al Fine" c8 e e d  \bar "|."
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  << { r2 } \\ { r8 g g f } >>  |
  << { r2 } \\ { e2 ~ } >>  |
  << { r2 } \\ { e8 g f e } >>  |
  << { r2 } \\ { d2 } >>  |
  %05
  << { r2 } \\ { r8 a' a g } >>  |
  << { r2 } \\ { f2 ~ } >>  |
  << { r2 } \\ { f8 a g f } >>  |
  << { r2 } \\ { e2 } >>  |
  << { r2 } \\ { r8 g g f } >>  |
  %10
  << { r2 } \\ { e2 ~ } >>  |
  << { r2 } \\ { e8 e f g } >>  |
  << { r2 } \\ { a2 ~ } >>  |
  << { r2 } \\ { a8 a b a } >>  |
  << { r2 } \\ { g8 g a g } >>  |
  %15
  << { r2 } \\ { f8 a g f } >>  |
  << { r2 } \\ { e4 g } >>  |
  << { r2 } \\ { e8 e e f } >>  |
  << { r2 } \\ { g4 g } >>  |
  << { r2 } \\ { e8 e e f } >>  |
  %20
  << { r2 } \\ { g4 r8 g, } >>  |
  << { r2 } \\ { g8 g' g f } >>  |
  << { r2 } \\ { f8 e4 e8 } >>  |
  << { r2 } \\ { e4 f8 e } >>  |
  << { r2 } \\ { e8 d4 g,8 } >>  |
  %25
  << { r2 } \\ { g8 f' f e } >>  |
  << { r2 } \\ { e8 d4 d8 } >>  |
  << { r2 } \\ { d4 e8 g } >>  |
  << { r2 } \\ { f8 e4 g,8 } >>  |
  << { r2 } \\ { g8 g' g f } >>  |
  %30
  << { r2 } \\ { f8 e4 e8 } >>  |
  << { r2 } \\ { f8 e f g } >>  |
  << { r2 } \\ { a4 r8 a16 a } >>  |
  << { r2 } \\ { a8 a b a } >>  |
  << { r2 } \\ { g4 a8 g } >>  |
  %35
  << { r2 } \\ { f8 a g f } >>  |
  e8 g g f  \bar "|."
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

