\version "2.16.0"

\header {
  dedication="Pasdoble"
  title="  "
  subtitle="Mari Carmen"
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
\relative g'
{
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 3 { r8 g \tempo 4 = 120 a g  |
  e'4 d  |
  c8 g a g  |
  b2  |
  %05
  r8 g a g  |
  f'4 e  |
  d8 g, a b }
  \alternative { { c2 }
  { c2 ~  |
  %10
  c4 r } }
  \repeat volta 2 { c4. c8  |
  b8 b ais ais  |
  a2 ~  |
  a4 r  |
  %15
  c4. c8  |
  b8 b a a  |
  g2 ~  |
  g4 r  |
  g4. g8  |
  %20
  a8 a g g  |
  b2 ~  |
  b4 r  |
  g4. g8  |
  d'8 e d d }
  %25
  \alternative { { c2 ~  |
  c4 r }
  { c2  |
  r8 g a g } }
  \repeat volta 2 { e'4 d  |
  %30
  c8 g a g  |
  b2  |
  r8 g a g  |
  f'4 e  |
  d8 g, a b }
  %35
  \alternative { { c2  |
  r8 g a g }
  { c2 ~  |
  c4 r4 } } \bar "||" % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4 = 120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 3 { r8 g a g  |
  g'4 f  |
  e8 e f e  |
  d2  |
  %05
  r8 g, a g  |
  a'4 g  |
  f8 e c d }
  \alternative { { e2 }
  { e2 ~  |
  %10
  e4 r } }
  \repeat volta 2 { c4. c8  |
  d8 d e e  |
  f2 ~  |
  f4 r  |
  %15
  f4. fis8  |
  g8 g f f  |
  e4 d  |
  e4 r  |
  e4. r8  | % kompletite
  %20
  f8 f e f  |
  g4 d  |
  g4 r  |
  d4. e8  |
  g8 g f f }
  %25
  \alternative { { e2 ~  |
  e4 r }
  { c2  |
  r8 g a g } }
  \repeat volta 2 { g'4 f  |
  %30
  e8 e f e  |
  d8 e f16 g f e  |
  r8 g, a g  |
  a'4 g  |
  f8 e c d }
  %35
  \alternative { { e2  |
  r8 g, a g }
  { c4 g'  |
  c4 r4 } } \bar "||" % kompletite
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

