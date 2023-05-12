\version "2.16.2"

\header {
  dedication=""
  title="Marxa dels Manaies de Llagostera"
  subtitle="(marxa de processó)"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="grup Gralla de Boix"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 4/4
  \repeat volta 2 { d2 b8. a16 b8. c16   |
  d2 d8.  e16 fis8. g16  |
  d2 c8. b16 c8. d16  |
  c2 b4.  b8  |
  %05
  e4 d c b  |
  a2 c  |
  b2 d  |
  d4 e c8. d16 e8. d16  |
  b4. d8 c4 b  |
  %10
  a2 c  |
  b2 r  | }
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 4/4
  \repeat volta 2 { b2 g8. fis16 g8. a16  |
  b2 b8. c16 d8. e16  |
  b2 a8. g16 a8. b16  |
  a2 g4. g8  |
  %05
  c4 b a g  |
  fis2 a  |
  g2 b  |
  b4 c a8. b16 c8. b16  |
  g4. b8 a4 g  |
  %10
  fis2 a  |
  g2 r  | }
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

