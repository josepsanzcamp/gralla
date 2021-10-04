\version "2.16.2"

\header {
  dedication=""
  title="Som"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="(Obrint Pas)"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 2 { r4 g c d  |
  e2. e4  |
  d4  e8 d ~ d4 c  |
  a1 ~  |
  %05
  a4 e  a b  |
  c2. c4  |
  e4 d8 c ~ c4 a  |
  d1  |
  r4 g, c d  |
  %10
  e4. g e4  | % troigo!
  d4 e8 d ~ d4 c  |
  a1 ~  |
  a4 e a b  |
  c2. e4  |
  %15
  d4 c8 b ~ b4 d  |
  c1  |
  r1  |
  r4 e e e  |
  d4 d e d  |
  %20
  d4 c2.  |
  r1  |
  r4 f f f  |
  e4 c c e  |
  d1  |
  %25
  r1  |
  r4 e e e  |
  g4 e d e  |
  d4 c2.  |
  r1  |
  %30
  r4 a c c  |
  c4 c d c  |
  b1  | }
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 2 { r4 g c d  |
  c2. c4  |
  b4 c8 b ~ b4 c  |
  c1 ~  |
  %05
  c4 e, a b  |
  a2. a4  |
  c4 b8 a ~ a4 a  |
  b1  |
  r4 g c d  |
  %10
  c4. e c4  | % troigo!
  b4 c8 b ~ b4 c  |
  c1 ~  |
  c4 e, a b  |
  a2. c4  |
  %15
  b4 a8 g ~ g4 b  |
  a1  |
  r1  |
  r4 e' e e  |
  d4 d e d  |
  %20
  d4 c2.  |
  r1  |
  r4 f f f  |
  e4 c c e  |
  d1  |
  %25
  r1  |
  r4 e e e  |
  g4 e d e  |
  d4 c2.  |
  r1  |
  %30
  r4 a c c  |
  c4 c d c  |
  b1  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument=""}
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
  \header {instrument=""}
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

