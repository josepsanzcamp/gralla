\version "2.16.2"

\header {
  dedication=""
  title="Bestiari"
  subtitle="Ball de la cabreta d'Olot"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="La Garrotxa"
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
  \time 3/8
  r8 d g  |
  fis8. e16 d8  |
  e8 c d  |
  b4. ~  |
  %05
  b8 b c  |
  e8. d16 c8  |
  d8 b c  |
  a4. ~  |
  a8 d g  |
  %10
  fis8. e16 d8  |
  e8 c d  |
  e4. ~  |
  e8 d g  |
  fis8. e16 d8  |
  %15
  e8 c d  |
  b4 b16 c  |
  \repeat volta 2 { d4 e8  |
  d8 d16 c b c  |
  d4 e8  |
  %20
  c8 c16 b a b  |
  c4 d8  |
  c8 c16 b a b  |
  c4. }
  \alternative { { b8 b16 a b c }
  %25
  { b8 b b  |
  b4. } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  r8 g g  |
  fis4 fis8  |
  a4 a8  |
  g4. ~  |
  %05
  g8 g a  |
  c4 a8  |
  g4 a8  |
  fis4. ~  |
  fis8 g g  |
  %10
  fis4 fis8  |
  a4 a8  |
  c4. ~  |
  c8 b a  |
  fis4 fis8  |
  %15
  a4 b8  |
  g4 g16 a  |
  \repeat volta 2 { b4 c8  |
  b8 b16 a g a  |
  b4 c8  |
  %20
  a8 a16 g fis g  |
  a4 b8  |
  a8 a16 g fis g  |
  a4. }
  \alternative { { g8 g16 fis g a }
  %25
  { g8 g g  |
  g4. } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/8
  r8 tomfl tomfl  |
  tomfl8. tomfl16 tomfl8  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  %05
  tomfl8 tomfl tomfl  |
  tomfl8. tomfl16 tomfl8  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  %10
  tomfl8. tomfl16 tomfl8  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8. tomfl16 tomfl8  |
  %15
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl  |
  \repeat volta 2 { tomfl8 tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  %20
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl }
  \alternative { { tomfl8 tomfl16 tomfl tomfl tomfl }
  %25
  { tomfl8 tomfl tomfl  |
  tomfl8 r4 } } \bar "||"
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

