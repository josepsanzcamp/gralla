\version "2.22.1"

\header {
  dedication="Ball de gitanes"
  title="             "
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
  g8 e' e e \tempo 4 = 120  |
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
  e4 r  |
  r2  |
  r4 r8 f16 e  |
  d8 d f d  |
  e16 f g4 c,16 d  |
  %25
  e8 e e c16 d  |
  e8 e e c16 d  |
  e8 c f d  |
  e4 r  |
  r2  |
  %30
  r8 d f d  |
  e8 c d b  |
  c4 r8 c  \bar "||"
  \key f \major   d8 d d c  |
  a8 a4 c8  |
  %35
  a8 c a c  |
  bes4 r  |
  r2  |
  r2  |
  r2  |
  %40
  r4 r8 c  |
  d8 d d c  |
  a8 a4 c8  |
  f8 ees d c  |
  d4 r8 c  |
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
  r8 b b r  |
  %05
  g8 d' d d  |
  f8 d4 c8  |
  b8 a c b  |
  r8 e e r  |
  g,8 e' e e  |
  %10
  g8 e4 e8  |
  g8 e g e  |
  r8 b b r  |
  g8 d' d d  |
  f8 d4 c8  |
  %15
  g8 a b e  |
  c4 r  \bar "||"
  r8 c c r  |
  r8 c c r  |
  r8 c r d  |
  %20
  r8 c c g16 a  |
  g8 g c c  |
  b16 c d4 g,16 a  |
  g8 g d' d  |
  c16 d e4 r8  |
  %25
  r8 c c r  |
  r8 c c r  |
  r8 c r d  |
  r8 c c g16 a  |
  g8 g c c  |
  %30
  b8 d f d  |
  e8 c d b  |
  c4 r  \bar "||"
  \key f \major   r2  |
  r2  |
  %35
  r2  |
  r4 r8 d  |
  e8 e e d  |
  bes8 bes4 g16 a  |
  bes8 c d e  |
  %40
  c4 r8 c  |
  d8 d d c  |
  a8 a4 c8  |
  a8 c a c  |
  bes4 r8 c  |
  %45
  d8 d d c  |
  e8 c d bes  |
  a8 c bes c  |
  a4 r  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4 = 120
  \clef treble
  \key c \major
  \time 2/4
  g4 r  |
  c4 r  |
  c8 r c r  |
  r8 g g r  |
  %05
  g4 r  |
  g4 r  |
  g8 a a b  |
  r8 c c r  |
  r8 g a g   |
  %10
  r8 g a ( g )  |
  r8 c b a  |
  r8 g g r  |
  r8 g a ( g )  |
  r8 g a ( g )  |
  %15
  r8 a b g  |
  c4 r  \bar "||"
  c8 a a r  |
  c8 a a r  |
  c8 a d a  |
  %20
  r8 a a g16 a  |
  g8 g c c  |
  b16 c d4 g,16 a  |
  g8 g d' d  |
  c16 d e4 r8  |
  %25
  c8 a a r  |
  c8 a a r  |
  c8 a d a  |
  r8 a a g16 a  |
  g8 g c c  |
  %30
  g8 b d b  |
  a8 g a b  |
  c8. ais16 a8 g  \bar "||"
  \key f \major   <f a>8 <f a> <f a> r  |
  <f a>8 <f a> <f a> r  |
  %35
  f8 a f a  |
  g8 g g r  |
  c8 c c r  |
  g8 g g r  |
  g8 bes a g  |
  %40
  <f a>8 <f a> <f a> r  |
  r2  |
  r4 r8 a  |
  <f a>8 g a <f c'>  |
  bes4 r8 a  |
  %45
  bes8 bes bes a  |
  c8 a bes g  |
  a8 c g <a c>  |
  <f a>4 r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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

\bookpart {
  \header {instrument="Gralla 3"}
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

