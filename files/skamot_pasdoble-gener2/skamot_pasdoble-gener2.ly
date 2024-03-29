\version "2.16.2"

\header {
  dedication=""
  title="Pasdoble"
  subtitle="Gener"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Manel Rius"
  arranger="Arr. Marcel Casellas"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  g8 c  |
  \time 2/4   \repeat volta 2 { e2 ~  |
  e8 d c b  |
  d4 c ~  |
  %05
  c4 b8 c  |
  b4 a8 b  |
  a4 g8 a  |
  b2 ~  |
  b4 g  |
  %10
  f'2 ~  |
  f8 e d c  |
  e4 d ~  |
  d4 d8 c  |
  b4 c8 b  |
  %15
  a4 b8 a  |
  g2 ~  |
  g4 g8 c  |
  e2 ~  |
  e8 d c b  |
  %20
  d4 c ~  |
  c4 c8 c  |
  d4 c8 d  |
  e4 d8 e  |
  f2 ~  |
  %25
  f4 g,  |
  f'2 ~  |
  f8 f g8. f16  |
  f4 e ~  |
  e4 g8 f  |
  %30
  e4 d8 c  |
  d4 c8 b  |
  c2 ~ }
  \alternative { { c4 g8 c }
  { r4 g8 a16 b  |
  %35
  c4 r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 2/4   \repeat volta 2 { r4 g  |
  c8 b a g  |
  e2 ~  |
  %05
  e4 r  |
  r4 a8 g  |
  f4 e8 f  |
  g8. d'16 cis8 e  |
  d4 r  |
  %10
  r4 d  |
  b8 c b a  |
  g2 ~  |
  g4 r  |
  r4 a8 g  |
  %15
  f4 g8 f  |
  e8. c'16 b8 d  |
  c4 r  |
  r4 g  |
  c8 b a g  |
  %20
  e2 ~  |
  e4 r  |
  d'4 c  |
  b4 ais  |
  a8. d16 c8 f,  |
  %25
  a4 r  |
  r4 f'  |
  e4 d  |
  c8. b16 g8 e  |
  c'4 e8 d  |
  %30
  c4 b8 a  |
  g4 f  |
  e2 ~ }
  \alternative { { e4 r }
  { e4 g8. g16  |
  %35
  e4 r } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 2/4   \repeat volta 2 { tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  %05
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 r  |
  %10
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  %15
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 r  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %20
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  %25
  tomfl4 r  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %30
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl }
  \alternative { { tomfl8 tomfl tomfl tomfl }
  { tomfl4 tomfl8 tomfl16 tomfl  |
  %35
  tomfl4 r } } \bar "||"
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

