\version "2.16.2"

\header {
  dedication=""
  title=""
  subtitle="Ballet de muntanya"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer=""
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
  \time 3/4
  \repeat volta 2 { d2 b4  |
  d2 b4  |
  c4 b a  |
  b8 a g a b c  |
  %05
  d2 b4  |
  d2 b4  |
  c4 b a  |
  g2.  | }
  \repeat volta 2 { g4 a b  |
  %10
  c2 e4  |
  d4 d8 e d c  |
  b8 c b a g4  |
  g4 a b  |
  c2 e4  |
  %15
  d8 e d c b a  |
  g2.  | }
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  \repeat volta 2 { g2 g4  |
  g2 g4  |
  e'4 d c  |
  b2 g'4  |
  %05
  g,2 g4  |
  g2 g4  |
  d'4 e fis  |
  g2.  | }
  \repeat volta 2 { b,4 c d  |
  %10
  e2 g4  |
  fis4 fis8 g fis e  |
  d8 e d c b4  |
  b4 c d  |
  e2 g4  |
  %15
  fis8 g fis e d c  |
  b2.  | }
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

