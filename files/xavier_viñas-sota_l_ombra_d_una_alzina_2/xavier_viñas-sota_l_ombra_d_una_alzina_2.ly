\version "2.16.2"

\header {
  dedication=""
  title="Sota l'ombra d'una alzina"
  subtitle="[...o...\"a la sombra d'una alzina\"]"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="(versió senzilla de la"
  arranger="2ª veu, Xavier Viñas)"
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
  \time 2/4
  b4 c   |
  \time 3/4   d2 d4 ~   |
  d4 g  e  |
  fis2 fis4 ~  |
  %05
  fis4 fis e  |
  fis2 fis4  |
  g4 fis e  |
  d2 b4 ~  |
  b4 b c  |
  %10
  d2 d4 ~  |
  d4 d g  |
  e2 e4 ~  |
  e4 e e  |
  fis2 fis4  |
  %15
  fis4 e fis  |
  g2. ~  |
  g4 r2  |
  g4 g g  |
  fis4 g e  |
  %20
  fis2 fis4 ~  |
  fis4 fis e  |
  fis2 fis4  |
  g4 fis e  |
  d2 b4 ~  |
  %25
  b4 b c  |
  d2 d4 ~  |
  d4 d g  |
  e2 e4 ~  |
  e4 e e  |
  %30
  fis2 fis4  |
  fis4 e fis  |
  g4 e d  |
  g,4 r2  \bar "||"
  d'2.  |
  %35
  d4 g e  |
  fis2. ~  |
  fis2.  |
  fis2.  |
  g4 fis e  |
  %40
  d2.  |
  b2.  |
  d2.  |
  d4 d g  |
  e2.  |
  %45
  e2.  |
  fis2 fis4  |
  fis4 e fis  |
  g2. ~  |
  g4 r2  \bar "|."
}

liniaroAb =
\relative gis'
{
  \tempo 4=120
  \clef treble
  \key e \major
  \time 2/4
  gis4 a  |
  \time 3/4   b2 b4 ~  |
  b4 e cis  |
  dis2 dis4 ~  |
  %05
  dis4 dis cis  |
  b2 b4  |
  cis4 b a  |
  gis2 e4 ~  |
  e4 e fis  |
  %10
  gis2 e4 ~  |
  e4 fis gis  |
  a2 a4 ~  |
  a4 a a  |
  b2 b4  |
  %15
  b4 cis a  |
  gis4 b a  |
  gis4 r2  |
  gis2. ~  |
  gis2.  |
  %20
  a4 gis fis  |
  b2. ~  |
  b4 ais b  |
  cis4 b a  |
  gis4 fis e ~  |
  %25
  e2.  |
  r4 gis fis  |
  e4 fis gis  |
  a2 a4 ~  |
  a4 a ais  |
  %30
  b2 fis4  |
  b4 cis a  |
  gis2. ~  |
  gis4 r2  \bar "||"
  r4 e fis  |
  %35
  gis2.  |
  r4 fis gis  |
  a4 gis fis  |
  b2.  |
  cis4 b a  |
  %40
  gis2 fis4  |
  e2 r4  | % troigo!
  e4 gis a  |
  gis4 fis e  |
  a2 fis4 ~  |
  %45
  fis4 gis a  |
  b2 b4  |
  b4 gis fis  |
  e4 b' gis  |
  e4 r2  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralles" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralles" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralles"}
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
  \header {instrument="Saxo Alt"}
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

