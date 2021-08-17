\version "2.16.0"

\header {
  dedication="Tocs tradicionals"
  title="   "
  subtitle="Marxa del Vermut"
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
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  g8 e c  |
  \time 2/4   g2 ~  |
  g8 g c d  |
  e2 ~  |
  %05
  e8 e e f  |
  e4 d ~  |
  d8 f f g  |
  f4 e ~  |
  e8 g e c  |
  %10
  g2 ~  |
  g8 g c d  |
  e2 ~  |
  e8 e e e  |
  d4 g  |
  %15
  fis4 a  |
  g4 g8. g16  |
  g8 e d e  \bar "||"
  f8. d16 f4 ~  |
  f8 f e f  |
  %20
  g8. e16 g4 ~  |
  g8 r16 g a8 g  |
  d4 e  |
  f4 g  |
  f2  |
  %25
  e8 r16 e d8 e  |
  f8. d16 f4 ~  |
  f8 f e f  |
  g8. e16 g4 ~  |
  g8 r16 g a8 g  |
  %30
  d4 e  |
  f4 g  |
  e4 e8. e16  |
  e4 r4  \bar "|." % kompletite
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  r8 r4  |
  \time 2/4   r8 g e c  |
  g2 ~  |
  g8 g a b  |
  %05
  c8 c c d  |
  c4 b ~  |
  b8 d d e  |
  d4 c ~  |
  c8 r r4  |
  %10
  r8 g' e c  |
  g2 ~  |
  g8 g a b  |
  c8 c c c  |
  b4 b  |
  %15
  d4 d  |
  b4 b8. b16  |
  b8 c b c  \bar "||"
  d8. b16 d4 ~  |
  d8 d c d  |
  %20
  e8. c16 e4 ~  |
  e8 r16 e f8 e  |
  b4 c  |
  d4 e  |
  d2  |
  %25
  c8 r16 c b8 c  |
  d8. b16 d4 ~  |
  d8 d c d  |
  e8. c16 e4 ~  |
  e8 r16 e f8 e  |
  %30
  b4 c  |
  d4 e  |
  c4 c8. c16  |
  c4 r4  \bar "|." % kompletite
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

