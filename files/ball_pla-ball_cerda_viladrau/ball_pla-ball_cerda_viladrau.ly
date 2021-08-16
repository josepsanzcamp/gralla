\version "2.16.0"

\header {
  dedication="Ball pla"
  title="     "
  subtitle="Ball cerdà de Viladrau"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="Les Guilleries"
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \clef treble
  \key g \major
  \time 3/8
  \repeat volta 2 { d8 b16 c \tempo 4. = 72 d e  |
  d8 e16 d c b  |
  c8 d16 c b a  |
  b16 a b c d8  |
  %05
  d8 _"Viladrau" b16 c d e  |
  d8 e16 d c b  |
  c8 d16 c b a  |
  b4.  | }
  \repeat volta 2 { d8 c16 b a b  |
  %10
  c16 b a4  |
  d8 c16 b a b  |
  c16 b a4  |
  d8 c16 b a g  |
  fis16 g a b c e  |
  %15
  d8. e16 fis8  |
  g4.  | }
}

liniaroAb =
\relative b'
{
  \tempo 4. = 72
  \clef treble
  \key g \major
  \time 3/8
  \repeat volta 2 { b8 g16 a b c  |
  b8 c16 b a g  |
  a8 b16 a g fis  |
  g16 fis g a b8  |
  %05
  b8 g16 a b c  |
  b8 c16 b a g  |
  a8 b16 a g fis  |
  g4.  | }
  \repeat volta 2 { b8 a16 g fis g  |
  %10
  a16 g fis4  |
  b8 a16 g fis g  |
  a16 g fis4  |
  b8 a16 g fis g  |
  fis16 g fis g a c  |
  %15
  b8. c16 d8  |
  b4.  | }
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

