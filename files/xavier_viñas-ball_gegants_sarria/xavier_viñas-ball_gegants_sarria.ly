\version "2.16.2"

\header {
  dedication=""
  title="Ball de gegants de Sarrià"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { d8. c16 b8 c   |
  d8 b g4  |
  a8 b c a  |
  b8 c e d  |
  %05
  d8. c16 b8 c  |
  d8 b g4  |
  a8 b c a  |
  g8 g g4  | }
  \repeat volta 2 { a8. b16 c8 a  |
  %10
  b8. c16 d8 c16 b  |
  a8 b c e  |
  d4 d  |
  e8 e16 e c8 e  |
  d8 d16 d b8 d  |
  %15
  c8 c \times 2/3 { e d c }  |
  b2  | }
  d8. c16 b8 c  |
  d8 b g4  |
  a8 b c a  |
  %20
  b8 c e d  |
  d8. c16 b8 c  |
  d8 b g4  |
  a8 b c a  |
  g8 g g4  \bar "|."
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { d8. c16 b8 c  |
  d8 b g4  |
  a16 b a b c8 a  |
  b16 c b c e8 d  |
  %05
  d8. c16 b8 c  |
  d8 b g4  |
  a16 b a b c8 a  |
  g8 g g4  | }
  \repeat volta 2 { a16 b a b c8 a  |
  %10
  b16 c b c d8 c16 b  |
  a8 b c e  |
  d4 d  |
  e8 e16 e c8 e  |
  d8 d16 d b8 d  |
  %15
  c8 c \times 2/3 { e d c }  |
  b2  | }
  d8. c16 b8 c  |
  d8 b g4  |
  a16 b a b c8 a  |
  %20
  b16 c b c e8 d  |
  d8. c16 b8 c  |
  d8 b g4  |
  a16 b a b c8 a  |
  g8 g g4  \bar "|."
}

liniaroAc =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { b8. a16 g8 a  |
  b8 g b4  |
  a8 g a a  |
  g8 a b4  |
  %05
  b8. a16 g8 a  |
  b8 g b4  |
  a8 g a a  |
  b2  | }
  \repeat volta 2 { a2  |
  %10
  g2  |
  a2  |
  g8 a b4  |
  c2  |
  b2  |
  %15
  a2  |
  g2  | }
  b8. a16 g8 a  |
  b8 g b4  |
  a8 g a a  |
  %20
  g8 a b4  |
  b8. a16 g8 a  |
  b8 g b4  |
  a8 g a a  |
  b2  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"VEU 1" shortInstrumentName = #"V"} \liniaroAa
        \new Staff \with {instrumentName = #"VEU 2" shortInstrumentName = #"V"} \liniaroAb
        \new Staff \with {instrumentName = #"VEU 3" shortInstrumentName = #"V"} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"VEU 1" shortInstrumentName = #"V"} \liniaroAa
        \new Staff \with {instrumentName = #"VEU 2" shortInstrumentName = #"V"} \liniaroAb
        \new Staff \with {instrumentName = #"VEU 3" shortInstrumentName = #"V"} \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="VEU 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="VEU 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="VEU 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {}
  }
}

