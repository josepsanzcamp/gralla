\version "2.16.2"

\header {
  dedication=""
  title="Masurca"
  subtitle="Masurca d'Albarracín"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Aragó"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { g8. g16 g8. g16 g8. e16  |
  d4 c4. e8  |
  d4 c4. a8  |
  c4 b2  |
  %05
  f'8. f16 f8. f16 f8. d16  |
  c4 b8. a16 b8. c16  |
  b4 a8. g16 a8. b16  |
  a4 g2  |
  g'8. g16 g8. g16 g8. e16  |
  %10
  d4 c4. e8  |
  d4 c b  |
  a2.  |
  a8. f'16 a,8. f'16 a,8. f'16  |
  g,8. e'16 g,8. e'16 g,8. e'16  |
  %15
  f8 d b g a b  |
  c4 c r  | }
  \repeat volta 2 { e8. e16 e8. e16 e8. f16  |
  g4 g2  |
  a4 a g  |
  %20
  f2.  |
  f8. f16 f8. f16 f8. g16  |
  a4 a2  |
  b4 b a  |
  g2.  |
  %25
  e8. e16 e8. e16 e8. f16  |
  g4 g2  |
  g8. g16 g8. g16 g8. g16  |
  a2.  |
  c8. a16 c8. a16 c8. a16  |
  %30
  g8. e16 g8. e16 g8. e16  |
  f8. d16 f8. d16 f8. d16  |
  c4 c r  | }
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { e8. e16 e8. e16 e8. c16  |
  b4 a4. c8  |
  b4 a4. f8  |
  a4 g2  |
  %05
  d'8. d16 d8. d16 d8. b16  |
  a4 g8. f16 g8. a16  |
  g4 f8. e16 f8. g16  |
  f4 e2  |
  e'8. e16 e8. e16 e8. c16  |
  %10
  b4 a4. c8  |
  b4 a g  |
  f2.  |
  f8. d'16 f,8. d'16 f,8. d'16  |
  e,8. c'16 e,8. c'16 e,8. c'16  |
  %15
  d8 b g e f g  |
  a4 g r  | }
  \repeat volta 2 { c8. c16 c8. c16 c8. d16  |
  e4 e2  |
  f4 f e  |
  %20
  d2.  |
  d8. d16 d8. d16 d8. e16  |
  f4 f2  |
  g4 g f  |
  e2.  |
  %25
  c8. c16 c8. c16 c8. d16  |
  e4 e2  |
  e8. e16 e8. e16 e8. e16  |
  f2.  |
  a8. f16 a8. f16 a8. f16  |
  %30
  e8. c16 e8. c16 e8. c16  |
  d8. b16 d8. b16 d8. b16  |
  a4 g r  | }
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/4
  \repeat volta 2 { tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  %05
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  %10
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  %15
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 tomfl r  | }
  \repeat volta 2 { tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  %20
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  %25
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  %30
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 ~ tomfl tomfl  |
  tomfl4:32 tomfl r  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

\bookpart {
  \header {instrument=""}
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

