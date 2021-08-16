\version "2.16.0"

\header {
  dedication="Sardana curta"
  title="  "
  subtitle="Bellcaire, ni poc ni gaire"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Toni Codina, 1998"
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
  \key g \major
  \time 1/4
  g8 fis  |
  \time 2/4   \repeat volta 2 { g4 g8 fis  |
  e4 e8 d  |
  c4 d  |
  %05
  d2 ~  |
  d4 g8 fis  |
  g4 g8 f  |
  dis4 dis8 d  |
  c4 d  |
  %10
  b2 ~ }
  \alternative { { b4 g'8 fis }
  { b,4 d8 d } }
  \repeat volta 2 { g4 g8 g  |
  fis4 fis8 fis  |
  %15
  e8 g fis e  |
  d4 d8 d  |
  c8 e d c  |
  b8 d ~ d4  |
  a8 d ~ d4 }
  %20
  \alternative { { b8 d ~ d d }
  { b4 b } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  b8 d  |
  \time 2/4   \repeat volta 2 { b4 b8 d  |
  c4 c8 b  |
  a4 a  |
  %05
  b2 ~  |
  b4 b8 d  |
  ais4 ais8 a  |
  c4 c8 ais  |
  a4 a  |
  %10
  g2 ~ }
  \alternative { { g4 b8 d }
  { g,4 b8 c } }
  \repeat volta 2 { b4 b8 b  |
  a4 a8 a  |
  %15
  c8 e d c  |
  b4 g8 b  |
  c8 c b c  |
  b2  |
  a2 }
  %20
  \alternative { { g4 b8 c }
  { g4 g } } \bar "||"
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

