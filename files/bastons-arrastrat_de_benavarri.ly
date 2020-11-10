\version "2.16.0"

\header {
  dedication=""
  title="       "
  subtitle="Arrastrat de Benavarri"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="La Baixa Ribagorça"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  \repeat volta 2 { g2 a4  |
  b4. a8 b4  |
  c2 d4  |
  b4. a8 g4  |
  %05
  d'4. c8 d4  |
  b4. a8 g4  |
  a4. b8 c4  |
  d2.  | }
  \repeat volta 2 { e2 e4  |
  %10
  d2 b4  |
  c4. d8 c4  |
  b4. a8 g4  |
  d'4. c8 d4  |
  b4. a8 g4  |
  %15
  a4. g8 fis4  |
  \mark "D.C." g2.  | }
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  \repeat volta 2 { g2 e4  |
  d4. c8 d4  |
  e2 fis4  |
  d4. c8 d4  |
  %05
  fis4. e8 fis4  |
  d4. c8 b4  |
  c4. d8 e4  |
  d2.  | }
  \repeat volta 2 { g2 g4  |
  %10
  fis2 d4  |
  e4. fis8 e4  |
  d4. c8 b4  |
  fis'4. e8 fis4  |
  d4. c8 b4  |
  %15
  c4. b8 a4  |
  g2.  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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
  \header {instrument=""}
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

