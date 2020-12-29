\version "2.16.0"

\header {
  dedication="Ball de gitanes"
  title="   "
  subtitle="Ball de gitanes de Sant Celoni"
  subsubtitle="Polca"
  poet=""
  meter=""
  piece=""
  composer="El Vallès Oriental"
  arranger="Arr. Marcel Casellas"
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
  g8 e' e \tempo 4 = 120 e  |
  g8 e4 e8  |
  g8 e g e  |
  d4 r  |
  %05
  g,8 d' d d  |
  f8 d4 c8  |
  b8 a c b  |
  g4 r  |
  g8 e' e e  |
  %10
  g8 e4 e8  |
  g8 e g e  |
  d4 r  |
  g,8 d' d d  |
  f8 d4 c8  |
  %15
  b8 a d e  |
  c4 r8 c16 d  \bar "||"
  e8 e e c16 d  |
  e8 e e c16 d  |
  e8 c f d  |
  %20
  e4 r8 g,16 a  |
  g8 g c c  |
  b16 c d4 g,16 a  |
  g8 g d' d  |
  c16 d e4 c16 d  |
  %25
  e8 e e c16 d  |
  e8 e e c16 d  |
  e8 c f d  |
  e4 r8 g,16 a  |
  g8 g c c  |
  %30
  b8 d f d  |
  e8 c d b  |
  c4 r8 c  \bar "||"
  \key f \major   d8 d d c  |
  a8 a4 c8  |
  %35
  a8 c a c  |
  bes4 r8 d  |
  e8 e e d  |
  bes8 bes4 g16 a  |
  bes8 c d e  |
  %40
  c4 r8 c  |
  d8 d d c  |
  a8 a4 c8  |
  f8 ees d c  |
  d4. c8  |
  %45
  d8 d d c  |
  e8 c d bes  |
  c8 c d e  |
  f4 r  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4 = 120
  \clef treble
  \key c \major
  \time 2/4
  g8 e' e e  |
  g8 e4 e8  |
  g8 e g e  |
  d4 r  |
  %05
  g,8 d' d d  |
  f8 d4 c8  |
  b8 a c b  |
  g4 r  |
  g8 e' e e  |
  %10
  g8 e4 e8  |
  g8 e g e  |
  d4 r  |
  g,8 d' d d  |
  f8 d4 c8  |
  %15
  g8 a b e  |
  c4 r8 c16 d  \bar "||"
  e8 e e c16 d  |
  e8 e e a,16 b  |
  c16 b a g a g a b  |
  %20
  c4 r8 g16 a  |
  g8 g c c  |
  b16 c d4 g,16 a  |
  g8 g d' d  |
  c16 d e4 c16 d  |
  %25
  e8 e e c16 d  |
  e8 e e a,16 b  |
  c16 b a g a g a b  |
  c4 r8 e,16 f  |
  e8 dis e a  |
  %30
  g8 b d b  |
  c16 b a g f e d e  |
  c'8. ais16 a8 g  \bar "||"
  \key f \major   r2  |
  r2  |
  %35
  r2  |
  r4 r8 d'  |
  e8 e e d  |
  bes8 bes4 g16 a  |
  bes8 c d e  |
  %40
  c4 r8 c  |
  d8 d d c  |
  a8 f4 e8  |
  f8 ges g a  |
  bes4. a8  |
  %45
  bes4. a8  |
  g8 a bes g  |
  a8 a bes g  |
  a4 r  \bar "|."
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

