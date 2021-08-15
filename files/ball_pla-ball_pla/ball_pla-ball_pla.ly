\version "2.16.0"

\header {
  dedication="Ball pla"
  title="   "
  subtitle="Ball pla"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger="diverses poblacions "
  opus="de les comarques septentrionals"
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
  \time 1/8
  b16 c  |
  \time 3/8   \repeat volta 2 { d4 g8  |
  g8 fis e  |
  e8 d c  |
  %05
  c8 b b16 c  |
  d4 g8  |
  g8 fis e  |
  e8 d c  |
  b4 b16 c  | }
  %10
  \repeat volta 2 { d8 e16 d c b  |
  a4 c16 d  |
  e8 fis16 e d c  |
  b4 b16 d  |
  g8 fis g  |
  %15
  e4 b16 c  |
  d4 e16 fis }
  \alternative { { g4 b,16 c }
  { g'4 r8 } }
  \time 2/4   r4 b,8 c  |
  %20
  \repeat volta 2 { d4 r8 g  |
  g8 fis fis e  |
  e8 d d c  |
  c8 b b c  |
  d4 r8 g  |
  %25
  g8 fis fis e  |
  e8 d d c  |
  b4 b8 c  | }
  \repeat volta 2 { d8 e16 d c8 b  |
  a4 c8 d  |
  %30
  e8 fis16 e d8 c  |
  b4 b8 d  |
  g8 g fis g  |
  e4 b8 c  |
  d8 d e fis }
  %35
  \alternative { { g4 b,8 c }
  { g'4 r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  g16 a  |
  \time 3/8   \repeat volta 2 { b4 e8  |
  e8 d c  |
  c8 b a  |
  %05
  a8 g g16 a  |
  b4 e8  |
  e8 d c  |
  c8 b a  |
  g4 g16 a  | }
  %10
  \repeat volta 2 { b8 c16 b a g  |
  fis4 a16 b  |
  c8 d16 c b a  |
  g4 g16 b  |
  b8 a b  |
  %15
  c4 g16 a  |
  b4 c16 d }
  \alternative { { b4 g16 a }
  { b4 r8 } }
  \time 2/4   r4 g8 a  |
  %20
  \repeat volta 2 { b4 r8 e  |
  e8 d d c  |
  c8 b b a  |
  a8 g g a  |
  b4 r8 e  |
  %25
  e8 d d c  |
  c8 b b a  |
  g4 g8 a  | }
  \repeat volta 2 { b8 c16 b a8 g  |
  fis4 a8 b  |
  %30
  c8 d16 c b8 a  |
  g4 g8 b  |
  e8 e d e  |
  c4 g8 a  |
  b8 b c d }
  %35
  \alternative { { b4 g8 a }
  { b4 r } } \bar "||"
}

\book {

\paper {
  print-page-number = false
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
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
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 14)
}

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
}

}

