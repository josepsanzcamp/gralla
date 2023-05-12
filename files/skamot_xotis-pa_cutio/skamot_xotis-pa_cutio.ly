\version "2.16.2"

\header {
  dedication=""
  title="Xotis"
  subtitle="Pa cutio"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Pepín Banzo"
  arranger=""
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
  \key c \major
  \time 2/4
  r8. g16 a8. b16  |
  \time 4/4   \repeat volta 2 { c4 cis d dis  |
  e4 r e8. g,16 a8. b16  |
  c4 cis d b  |
  %05
  c4 r c8. g16 a8. b16  |
  c4 cis d dis  |
  e4 r e8. g,16 a8. b16  |
  c4 cis d b  |
  c4 r c8. c16 d8. e16  |
  %10
  f8. e16 d8. e16 f4 a  |
  g8. f16 e8. f16 g4 b  |
  a8. g16 f8. g16 a4 b  |
  g4 r g8. c,16 d8. e16  |
  f8. e16 d8. e16 f4 a  |
  %15
  g8. f16 e8. f16 g4 b  |
  a8. g16 f8. g16 a4 b }
  \alternative { { c4 r c,8. g16 a8. b16 }
  { c'4 r c r } } \bar "||"
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  \time 4/4   \repeat volta 2 { e4 g, f' b,  |
  c4 r c r  |
  e4 g, f' d  |
  %05
  e4 r e r  |
  e4 g, f' b,  |
  c4 r c r  |
  e4 g, f' d  |
  e4 r e r  |
  %10
  d4 b g2  |
  e'4 c g2  |
  f'4 d g, dis'  |
  e4 r e r  |
  d4 b g2  |
  %15
  e'4 c g2  |
  g4 gis a b }
  \alternative { { c4 r c r }
  { c4 r c r } } \bar "||"
}

liniaroAc =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  \time 4/4   \repeat volta 2 { g8. g16 g8. g16 g8. g16 g8. g16  |
  g4 r g r  |
  g8. g16 g8. g16 g8. g16 g8. g16  |
  %05
  g4 r g r  |
  g8. g16 g8. g16 g8. g16 g8. g16  |
  g4 r g r  |
  g8. g16 g8. g16 g8. g16 g8. g16  |
  g4 r ais, r  |
  %10
  f'2. fis4  |
  c2. e4  |
  d2. g4  |
  c,4 r ais r  |
  f'2. fis4  |
  %15
  c2. e4  |
  b4 b c d }
  \alternative { { e4 r e r }
  { e4 r e r } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 2/4
  r2  |
  \time 4/4   \repeat volta 2 { tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl4 tomfl tomfl r  |
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  %05
  tomfl4 tomfl tomfl r  |
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl4 tomfl tomfl r  |
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl4 tomfl tomfl tomfl  |
  %10
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl4 tomfl tomfl8. tomfl16 tomfl4  |
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  %15
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 }
  \alternative { { tomfl4 tomfl tomfl r }
  { tomfl4 tomfl tomfl r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAd
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
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAd
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
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
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
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

