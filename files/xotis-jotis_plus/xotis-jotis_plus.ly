\version "2.16.0"

\header {
  dedication="Xotis"
  title="  "
  subtitle="Jotis plus"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Toni codina, gener 1998"
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
  \time 1/4
  b8. c16  |
  \time 4/4   \repeat volta 2 { d4 b r8. g'16 fis8. e16  |
  e4 c r a8. b16  |
  c4 a r8. fis'16 e8. c16  |
  %05
  d4 b r b8. c16  |
  d4 b r8. g'16 fis8. f16  |
  e2 r4 e8. fis16 }
  \alternative { { d8. b16 d8. e16 c8. a16 c8. e16  |
  d4 b r b8. c16 }
  %10
  { d8. b16 d8. e16 c8. a16 c8. d16 } }
  b2 r4 d  |
  \repeat volta 2 { g4 g g8 fis e d  |
  c4 a r c  |
  fis2 fis8. g16 e8. fis16  |
  %15
  d2 r4 b  |
  e4 e e8 d c b  |
  c4 a r c  |
  d2 d8. e16 c8. d16 }
  \alternative { { b2 r4 d }
  %20
  { b4 d b r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  g8. a16  |
  \time 4/4   \repeat volta 2 { b4 g r8. b16 d8. b16  |
  c4 a r a8. g16  |
  a4 a r8. a16 c8. a16  |
  %05
  b4 g r g8. a16  |
  b4 g r8. b16 d8. b16  |
  c2 r4 c8. d16 }
  \alternative { { b8. g16 b8. c16 a8. a16 a8. c16  |
  b4 g r g8. a16 }
  %10
  { b8. g16 b8. c16 a8. a16 a8. b16 } }
  g2 r4 a  |
  \repeat volta 2 { b4 b b8 a c b  |
  a4 a r a  |
  d2 d8. e16 c8. d16  |
  %15
  b2 r4 g  |
  gis4 gis gis8 a a gis  |
  a4 a r a  |
  b2 b8. c16 a8. b16 }
  \alternative { { g2 r4 a }
  %20
  { g4 b g r } } \bar "||"
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

