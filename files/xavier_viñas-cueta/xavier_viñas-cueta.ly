\version "2.16.2"

\header {
  dedication=""
  title="Cueta"
  subtitle="(pasdoble)"
  subsubtitle=""
  poet="adaptació a gralla"
  meter="Xavier Viñas"
  piece=""
  composer="[Ramon Cardona]"
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
  \time 2/4
  \repeat volta 2 { r8  g a b  |
  c8 c16 c c8 c  |
  c8  g a b  |
  c8 c16 c c8 c  |
  %05
  c8 g a b  |
  c4 e  |
  d4 c   |
  b2 ~  |
  b8 a g a  |
  %10
  b8 b16 b b8 b  |
  b8 a g a  |
  b8 b16 b b8 b  |
  b8 a g a  |
  b4 f'  |
  %15
  e4 d }
  \alternative { { e2 }
  { c2 } }
  \repeat volta 2 { r8 e16 e e8 e  |
  f4. e8  |
  %20
  d8 a' g f  |
  g4 g ~  |
  g8 e16 e e8 e  |
  f4. e8  |
  d8 a' g f  |
  %25
  g2 ~  |
  g8 g g g }
  \alternative { { a4. g8  |
  f8 a g f  |
  g4 g8 f  |
  %30
  e8 g f e  |
  f4 f8 e  |
  d8 a' g f  |
  g2 }
  { a4. g8  |
  %35
  f8 a g f  |
  g4 g8 f  |
  e8 g f e  |
  f4 f8 e  |
  d8 f e d  |
  %40
  c2 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { R2  |
  g2  |
  e4 f  |
  g2  |
  %05
  g4 b  |
  c2  |
  g2  |
  f2 ~  |
  f4 g  |
  %10
  f2  |
  a2  |
  f2 ~  |
  f4 d8 e  |
  f4 a  |
  %15
  g4 f }
  \alternative { { e2 }
  { e2 } }
  \repeat volta 2 { R2  |
  a4. g8  |
  %20
  f4 c'  |
  g4 g  |
  e2  |
  a4. g8  |
  f4 c'  |
  %25
  g2 ~  |
  g4 g }
  \alternative { { f2 ~  |
  f4 f  |
  e2 ~  |
  %30
  e4 a  |
  f2  |
  f2  |
  g2 }
  { a4. g8  |
  %35
  f4 a  |
  g4. f8  |
  e4 g  |
  f2  |
  g4 f  |
  %40
  e2 } } \bar "||"
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
  }
  \score { \unfoldRepeats
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

