\version "2.16.2"

\header {
  dedication=""
  title="Ball de bastons"
  subtitle="El Vicentet"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="L'Arboç"
  arranger="Vicenç Lara Bujaldón, 1987"
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g8 g b c  |
  d4 e8 d  |
  c8 b c e  |
  d4 b  |
  %05
  g8 g b c  |
  d4 e8 d  |
  c8 b c d }
  \alternative { { b4 r }
  { b4 r8 d } }
  %10
  e4 c8 d  |
  e4 c8 d  |
  e8 g fis e  |
  e4 d8 ( b )  |
  d8 d e d  |
  %15
  c4 a8 b  |
  c4 b8 c  |
  d4 b8 d  |
  e4 c8 d  |
  e4 c8 d  |
  %20
  e8 g fis e  |
  e4 d8 b  |
  d8 d e d  |
  c4 a8 b  |
  c4 b8 a  |
  %25
  g4 r  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g8 g g a  |
  b4 c8 b  |
  a8 g a c  |
  b4 g  |
  %05
  g8 g g a  |
  b4 c8 b  |
  a8 g a b }
  \alternative { { g4 r }
  { g4 r8 b } }
  %10
  c4 a8 b  |
  c4 a8 b  |
  c8 e d c  |
  c4 b8 g  |
  b8 b c b  |
  %15
  a4 a8 g  |
  a4 g8 a  |
  b4 g8 b  |
  c4 a8 b  |
  c4 a8 b  |
  %20
  c8 e d c  |
  c4 b8 g  |
  b8 b c b  |
  a4 a8 g  |
  a4 g8 a  |
  %25
  g4 r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument=""}
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

