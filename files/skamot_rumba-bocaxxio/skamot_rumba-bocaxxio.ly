\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Rumba"
  subtitle="BocaXXio"
  subsubtitle="(una rumba que havia de ser polca)"
  poet=""
  meter=""
  piece=""
  composer="Pol Ducable"
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
  \repeat volta 2 { g16 g8 g16 g'8 f  |
  e8 d c8. c16  |
  f8 d e f  |
  g4 g  |
  %05
  g,16 g8 g16 g'8 f  |
  e8 d c8. c16  |
  d16 f8 d16 b8 d }
  \alternative { { e2 }
  { c4. d16 e } }
  %10
  \repeat volta 2 { f8 e d b  |
  g8 r16 g'-> ~ g8 d16 e  |
  f8 e d b  |
  g4 r8 d'16 e  |
  f8 e d b  |
  %15
  g8 r16 g'-> ~ g8 d16 e  |
  f8 e d g }
  \alternative { { r4 r8 d16 e }
  { r16 e8 e16 e4 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { g16 g8 g16 e'8 d  |
  c8 b g8. gis16  |
  a8 b c d  |
  b4 b  |
  %05
  g16 g8 g16 e'8 d  |
  c8 b g8. g16  |
  b16 d8 b16 g8 b }
  \alternative { { c2 }
  { c4. b16 c } }
  %10
  \repeat volta 2 { d8 c b g  |
  g8 r16 g-> ~ g8 b16 c  |
  d8 c b g  |
  \times 2/3 { b8 c d } g, b16 c  |
  d8 c b g  |
  %15
  g8 r16 g-> ~ g8 b16 c  |
  d8 c b g }
  \alternative { { r4 r8 b16 c }
  { r16 c8 c16 c4 } } \bar "||"
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

