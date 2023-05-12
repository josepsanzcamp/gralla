\version "2.16.2"

\header {
  dedication=""
  title="A la Noneta Nona"
  subtitle="(A la nanita nana - Galí­cia)"
  subsubtitle=""
  poet="versió del disc \"un món de"
  meter="Nadales\", de Cris Juanico"
  piece=""
  composer="Nadala"
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
  \key bes \major
  \time 3/4
  \repeat volta 2 { g4  g8 a bes c _"1ª volta tocant / 2ª volta tacet"   |
  d4 d8 d ees c  |
  d4 d8 d ees c  |
  g'4 d2  |
  %05
  ees4  ees8 ees f ees  |
  d16 c bes8 bes c d  bes  |
  c16 bes a8  a bes c a  |
  bes16 a g8 ( g2 )  | }
  \key g \major   r8 d' g g g g  |
  %10
  fis4 d2  |
  e4 d c  |
  b8 c d2  |
  r8 d g g g g  |
  fis4 d2  |
  %15
  e4 d c  |
  b8 c d2  |
  r8 g g g g g  |
  g4 d2  |
  d4 c a  |
  %20
  b8 c d2  |
  r8 g g g g g  |
  g4 d2  |
  d4 c a  |
  b8 a g2  |
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key bes \major
  \time 3/4
  \repeat volta 2 { g4 g8 a bes _"1ª volta tocant / 2ª volta tacet" c  |
  bes4 bes8 bes c a  |
  bes4 bes8 bes c a  |
  d4 bes2  |
  %05
  c4 c8 c d c  |
  bes16 a g8 g a bes  g (  |
  a16 g ges8 ) ges  g a ges  |
  a4 g2  | }
  \key g \major   r8 b  b' b b b  |
  %10
  a4 fis2  |
  g4 fis e  |
  d8 e g2  |
  r8 b, b' b b b  |
  a4 fis2  |
  %15
  g4 fis e  |
  d8 e g2  |
  r8 b b b b c  |
  b4 g2  |
  fis4 fis fis  |
  %20
  g4 d2  |
  r8 b' b b b c  |
  b4 g2  |
  fis4 fis fis  |
  g4 d2  |
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
  \header {instrument="Gralla 2"}
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

