\version "2.22.1"

\header {
  dedication="Vals"
  title="  "
  subtitle="D'r Vehrele"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Alsàcia"
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
  \key c \major
  \time 1/8
  g8  |
  \time 3/8   c8 c c  |
  c8 c c  |
  b8 b c  |
  %05
  d4 g,8  |
  d'8 r d  |
  d8. c16 d8  |
  e4. ~  |
  e8 r e  |
  %10
  f8 f f  |
  f4 d8  |
  e8 e e  |
  e4 c8  |
  d4 d8  |
  %15
  d8. c16 d8  |
  g4. ~  |
  g8 r e  |
  f8 f f  |
  f4 d8  |
  %20
  e8 e e  |
  e4 c8  |
  d4 d8  |
  b8 a b  |
  c4. ~  |
  %25
  \mark "D.C." c8 r4  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 3/8   e4 e8  |
  f4 f8  |
  g8. a16 g8  |
  %05
  f4 r8  |
  g4.  |
  b4.  |
  c8. b16 a8  |
  g8 r c  |
  %10
  a8 b c  |
  b8 a g  |
  c4 g8  |
  g4 e8  |
  f8 e f  |
  %15
  a4 g8  |
  g8. g16 a8  |
  b8 r c  |
  d8. b16 g8  |
  g4 b8  |
  %20
  c4 g8  |
  g4 a8  |
  g8 f e  |
  f4 f8  |
  e4. ~  |
  %25
  e8 r4  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/8
  r8  |
  \time 3/8   tomfl8 tomfl16 tomfl tomfl8  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8  |
  %05
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  %10
  tomfl8 tomfl16 tomfl tomfl8  |
  tomfl8 tomfl tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  %15
  tomfl8 tomfl16 tomfl tomfl8  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8  |
  tomfl8 tomfl tomfl16 tomfl  |
  %20
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  %25
  tomfl8 r4  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
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
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
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

\bookpart {
  \header {instrument="Timbal"}
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

