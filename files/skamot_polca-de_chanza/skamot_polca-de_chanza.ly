\version "2.16.2"

\header {
  dedication=""
  title="Polca"
  subtitle="De chanza"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Pepín Banzo"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  c8. b16 c8 d  |
  e8 e c4  |
  f8 f d4  |
  g8 g e4  |
  %05
  c8. b16 c8 d  |
  e8 e c4  |
  f8 f d d  |
  c8 c c4  |
  c8. b16 c8 d  |
  %10
  e8 e c4  |
  f8 f d4  |
  g8 g e4  |
  c8. b16 c8 d  |
  e8 e c4  |
  %15
  f8 f d d  |
  c8 c c4  |
  \repeat volta 2 { b8. c16 d8 b  |
  c8 d e c  |
  b8. c16 d8 b  |
  %20
  c8 c c4  | }
  \repeat volta 2 { g'16 a g e f g f d  |
  e8 f g e  |
  g16 a g e f g f d  |
  e8 e e4  | }
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  e8. d16 e8 f  |
  %10
  g8 g e4  |
  a8 a f4  |
  b8 b g4  |
  e8. d16 e8 f  |
  g8 g e4  |
  %15
  a8 a f f  |
  e8 e e4  |
  \repeat volta 2 { gis,8. a16 b8 gis  |
  a8 b c a  |
  gis8. a16 b8 gis  |
  %20
  a8 a a4  | }
  \repeat volta 2 { e'16 f e c d e d b  |
  c8 d e c  |
  e16 f e c d e d b  |
  c8 c c4  | }
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  %05
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  %10
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  %15
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  \repeat volta 2 { tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %20
  tomfl8 tomfl tomfl4  | }
  \repeat volta 2 { tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  | }
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

