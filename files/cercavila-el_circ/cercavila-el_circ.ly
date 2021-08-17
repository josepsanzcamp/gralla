\version "2.16.0"

\header {
  dedication="Cercavila"
  title="     "
  subtitle="El circ"
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
  \time 1/4
  g4  |
  \time 2/4   c2 ~  |
  c8 g a b  |
  c2 ~  |
  %05
  c8 g a b  |
  c4 b  |
  c4 a  |
  b2 ~  |
  b4 g  |
  %10
  b2 ~  |
  b8 b a g  |
  b2 ~  |
  b8 b a g  |
  b4 a  |
  %15
  b4 g  |
  a4. b16 a  |
  g8 r g4  |
  c2 ~  |
  c8 g a b  |
  %20
  c2 ~  |
  c8 g a b  |
  c4 b  |
  c4 e  |
  d2 ~  |
  %25
  d2  |
  f2 ~  |
  f8 f e d  |
  e2 ~  |
  e8 e d c  |
  %30
  b4 c  |
  d4 f  |
  f2  |
  e2  |
  f2 ~  |
  %35
  f8 f e d  |
  e2 ~  |
  e8 e d c  |
  b4 c  |
  d4 e  |
  %40
  c2  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 2/4   r8 e16 dis e8 e16 dis  |
  e4 r  |
  r8 e16 dis e8 e16 dis  |
  %05
  e4 r  |
  r8 g4 g8 ~  |
  g8 g4 g8  |
  f8 e d cis  |
  d4 r  |
  %10
  r8 d16 cis d8 d16 cis  |
  d4 r  |
  r8 d16 cis d8 d16 cis  |
  d4 r  |
  r8 f4 <f f>8 ~  |
  %15
  f8 f4 f8  |
  f8 e d f  |
  e8 r r4  |
  r8 e16 dis e8 e16 dis  |
  e4 r  |
  %20
  r8 e16 dis e8 e16 dis  |
  e4 r  |
  r8 g4 g8 ~  |
  g8 g4 g8  |
  f8 e f g  |
  %25
  a4 c,  |
  b8 d16 cis d8 c  |
  b4 r  |
  c8 c16 b c8 b  |
  a4 r  |
  %30
  r8 g4 g8 ~  |
  g8 g4 g8  |
  r8 g a b  |
  c4 g'  |
  b,8 d16 cis d8 c  |
  %35
  b4 r  |
  c8 c16 b c8 b  |
  a4 r  |
  r8 g4 g8 ~  |
  g8 g4 g8  |
  %40
  e'2  \bar "|."
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

