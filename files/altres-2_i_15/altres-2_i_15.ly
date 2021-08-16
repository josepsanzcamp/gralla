\version "2.16.0"

\header {
  dedication="Dansa"
  title="  "
  subtitle="Dos i quinze"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Algemesí"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \tempo 4=160
  \clef treble
  \key g \major
  \time 6/8
  \repeat volta 2 { g4. d  |
  b4 a8 g4 b8  |
  a4 b8 c b a  |
  b4 a8 g4.  |
  %05
  g'4. d  |
  b4 a8 g4 b8  |
  a4 b8 c b a  |
  g4. r  \bar "||"
  g'4. d  |
  %10
  b4 a8 g4 b8  |
  a4 b8 c b a  |
  b4 a8 g4.  |
  g'4. d  |
  b4 a8 g4 b8  |
  %15
  a4 b8 c b a  |
  g4. r8 g g  \bar "||"
  \key c \major   c8 g c e c e  |
  g4 e8 c4 e8  |
  d4 e8 f e d  |
  %20
  e4 d8 c g g  |
  c8 g c e c e  |
  g4 e8 c4 e8  |
  d4 e8 f e d  |
  c4. r8 g g  |
  %25
  c8 g c e c e  |
  g4 e8 c4 e8  |
  d4 e8 f e d  |
  e4 d8 c g g  |
  c8 g c e c e  |
  %30
  g4 e8 c4 e8  |
  d4 e8 f e d  |
  c4. r  | }
}

liniaroAb =
\relative g''
{
  \tempo 4=160
  \clef treble
  \key g \major
  \time 6/8
  \repeat volta 2 { g4. d  |
  b4 a8 g4 b8  |
  a4 b8 c b a  |
  b4 a8 g4.  |
  %05
  g'4. d  |
  b4 a8 g4 b8  |
  a4 b8 c b a  |
  g4. r  \bar "||"
  d'8 e d c d e  |
  %10
  g4 d8 b4 d8  |
  c4 d8 e d c  |
  d4 c8 b4.  |
  d8 e d c d e  |
  g4 d8 b4 d8  |
  %15
  c4 d8 e d c  |
  b8 g' fis f e d  \bar "||"
  \key c \major   c2.  |
  r2 r4  |
  r2 r4  |
  %20
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4. r8 g g  |
  %25
  e'4 e8 g4 g8  |
  c4 g8 e4 g8  |
  f4 g8 a g f  |
  g8 a g f g f  |
  e4 e8 g4 g8  |
  %30
  c4 g8 e4 g8  |
  f4 g8 a g f  |
  e4. r  | }
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

