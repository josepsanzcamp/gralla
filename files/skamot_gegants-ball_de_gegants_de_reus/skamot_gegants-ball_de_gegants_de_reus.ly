\version "2.16.2"

\header {
  dedication=""
  title="Ball de gegants"
  subtitle="Ball de gegants de Reus"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="El Baix Camp"
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
  \time 3/8
  \repeat volta 2 { g8. e16 c8  |
  g'8 e c  |
  g'8. f16 d8  |
  r8 g,16 a b c  |
  %05
  d8. e16 f8  |
  f8 g f  |
  e8. d16 c8 }
  \alternative { { c4 r8 }
  { r8 e8. d16 } }
  %10
  \repeat volta 2 {
  e8 e16 d e8  |
  r8 e8. d16  |
  e8 e16 f d8  |
  r8 b d  |
  d8 b d  |
  %15
  d8 b d }
  \alternative { { d4 e8  |
  r8 e8. d16 }
  { d4 e8 } }
  e4. ~  |
  %20
  e4 \fermata r8  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  \repeat volta 2 { r4 r8  |
  r4 r8  |
  r4 r8  |
  r8 g16 a b c  |
  %05
  b8. c16 d8  |
  d8 e d  |
  c8. g16 g8 }
  \alternative { { g4 r8 }
  { r8 c8. g16 } }
  %10
  \repeat volta 2 {
  c8 c16 b c8  |
  r8 c8. g16  |
  c8 c16 d b8  |
  r8 g16 a b c  |
  d8 b g  |
  %15
  d'8 b g }
  \alternative { { b4 c8  |
  r8 c8. g16 }
  { b4 c8 } }
  c4. ~  |
  %20
  c4 \fermata r8  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/8
  \repeat volta 2 { tomfl8. tomfl16 tomfl8  |
  tomfl8 tomfl tomfl  |
  tomfl8. tomfl16 tomfl8  |
  tomfl8 tomfl tomfl  |
  %05
  tomfl8. tomfl16 tomfl8  |
  tomfl8 tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 }
  \alternative { { tomfl8 tomfl tomfl }
  { tomfl4 r8 } }
  %10
  \repeat volta 2 {
  tomfl8 tomfl:16 tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl:16 tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl:16 tomfl  |
  %15
  tomfl8 tomfl:16 tomfl }
  \alternative { { tomfl8 tomfl:16 tomfl  |
  tomfl4 r8 }
  { tomfl8 tomfl:16 tomfl } }
  tomfl8 tomfl tomfl  |
  %20
  tomfl4 r8 \fermata  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
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

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

