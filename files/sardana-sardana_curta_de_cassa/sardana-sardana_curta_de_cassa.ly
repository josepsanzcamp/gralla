\version "2.22.1"

\header {
  dedication="Sardana curta"
  title="  "
  subtitle="Sardana curta de Cassà de la Selva"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Gironès"
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
  \time 3/8
  g8 b d  |
  \time 6/8   \repeat volta 2 { g4 g8 fis4 fis8  |
  a,4. a8 b c  |
  e4 e8 d4 b8  |
  %05
  g4. g8 b d  |
  g4 g8 g fis e  |
  a,4. a8 b c  |
  d8 e d c b a }
  \alternative { { g4. g8 b d }
  %10
  { g,4 d'8 b4 d8 } }
  \repeat volta 2 { b4 d8 d c b  |
  c4 c8 a4 c8  |
  a4 c8 c b a  |
  b4 d8 b4 d8  |
  %15
  b4 b8 b c d  |
  e4. c8 d e  |
  d8 e d c b a }
  \alternative { { g4 d'8 b4 d8 }
  { g,4. r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  g8 g g  |
  \time 6/8   \repeat volta 2 { b4 b8 a4 g8  |
  fis4. fis8 g a  |
  c4 c8 b4 g8  |
  %05
  g4. g8 g g  |
  b4 b8 b a g  |
  fis4. fis8 g a  |
  b8 c b a g fis }
  \alternative { { g4. g8 g g }
  %10
  { g4 b8 g4 b8 } }
  \repeat volta 2 { g4 b8 b a g  |
  a4 a8 fis4 a8  |
  fis4 a8 a g fis  |
  g4 b8 g4 b8  |
  %15
  g4 g8 g a b  |
  c4. a8 b c  |
  b8 c b a g fis }
  \alternative { { g4 b8 g4 b8 }
  { g4. r } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/8
  tomfl8 tomfl tomfl  |
  \time 6/8   \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %05
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl }
  \alternative { { tomfl4. tomfl8 tomfl tomfl }
  %10
  { tomfl4 tomfl8 tomfl4 tomfl8 } }
  \repeat volta 2 { tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %15
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl }
  \alternative { { tomfl4 tomfl8 tomfl4 tomfl8 }
  { tomfl8 tomfl tomfl tomfl4. } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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

\bookpart {
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

