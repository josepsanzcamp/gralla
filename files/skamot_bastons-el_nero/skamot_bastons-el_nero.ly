\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Ball de bastons"
  subtitle="El Nero"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="Castellar del Vallès"
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  g16 a  |
  \time 2/4   \repeat volta 2 { b8 a16 g a8 g16 a  |
  b8 a16 g a4  |
  d8 b16 d e8 c16 e }
  %05
  \alternative { { d8 c b g16 a }
  { d8 c b4 } }
  \repeat volta 2 { d8 b d b  |
  e16 d c b c8 a  |
  c8 a c a }
  %10
  \alternative { { d16 c b a b4 }
  { d16 c b a g4 } } \bar "||"
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  d16 c  |
  \time 2/4   \repeat volta 2 { d8 c16 b a8 d16 c  |
  d8 c16 b c4  |
  b8 g16 b c8 a16 c }
  %05
  \alternative { { b8 a g d'16 c }
  { b8 a g4 } }
  \repeat volta 2 { b8 g b g  |
  c16 b a g a8 fis  |
  a8 fis a fis }
  %10
  \alternative { { a16 g fis a g4 }
  { a16 g fis a g4 } } \bar "||"
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
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
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
  \header {instrument=""}
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

