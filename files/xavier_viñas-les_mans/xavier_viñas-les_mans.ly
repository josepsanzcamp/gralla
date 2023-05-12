\version "2.16.2"

\header {
  dedication=""
  title="Les mans"
  subtitle=""
  subsubtitle=""
  poet="segona veu i adaptació a gralla"
  meter="Xavier Viñas"
  piece=""
  composer="Jaume Moreno"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r8 g   |
  \time 4/4   g4 e c ( d )  |
  c2 r4  r8 g'  |
  g4 e8 g f4 ( d8 ) g,  |
  %05
  e'4 ( c8 ) g d'4  b8 g'  |
  g4 ( e8 ) g f4  d8 g,  |
  e'4 c8 g d'4 b  |
  f'4 ( g e2 )  |
  f8 f g f e2  |
  %10
  f8 f g f e2  |
  f8 f g f e2  |
  f8 f g f e2  |
  g8 e d2. (  |
  c2. ) r8 e  |
  %15
  e4 c g b  |
  c2 r4 r8 e  |
  e2 d  |
  c2 b  |
  e2 d  |
  %20
  c2 b  |
  a2 g  |
  a2 r8 f g a  |
  a2 r8 f g a  |
  c4 c g2  |
  %25
  a2 r8 f g a  |
  r4 r g2  |
  c1  \bar "|."
}

liniaroAb =
\relative e
{
  \tempo 4=120
  \clef bass
  \key c \major
  \time 1/4
  r8 e  |
  \time 4/4   e4 c g  b  |
  c2 r4 r8 e  |
  e2 d  |
  %05
  c2 b  |
  e2 d  |
  c2 b  |
  a2 g  |
  a2 r8 f g a  |
  %10
  a2 r8 f g a  |
  c4 c g2  |
  a2 r8 f g a  |
  r4 r g2  |
  c2. r8 g'  |
  %15
  g4 e c d   |
  c2 r4 r8 g'  |
  g4  e8 g f4 ( d8 ) g,  |
  e'4 ( c8 ) g d'4  b8 g'  |
  g4  e8 g f4 ( d8 ) g,  |
  %20
  e'4  c8 g d'4 ( b )  |
  f'4 g ( e2 )  |
  f8 f g f e2  |
  f8 f g f e2  |
  f8 f g f e2  |
  %25
  f8 f g f e2  |
  g8 e d2. (  |
  c1 )  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Contrabaix" shortInstrumentName = #"C"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Contrabaix" shortInstrumentName = #"C"} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Contrabaix"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
  }
}

