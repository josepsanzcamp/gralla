\version "2.16.2"

\header {
  dedication=""
  title="Jota"
  subtitle="Jota hurtada"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Albarracín, Aragó"
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
  \time 3/4
  r2 r4  |
  c4 d e ~  |
  e2 ~ e16 c8 d16 ~  |
  \time 3/8   d16 e8 f8.  |
  %05
  e16 d8. e8  |
  \times 2/3 { d8 c4 } r32 b16. ~  |
  b8. c ~  |
  c4.  |
  r4 r8  |
  %10
  r4 g8  |
  \repeat volta 2 { e'8 e16 d c8 ~  |
  c8 b16 c b c  |
  d8 d16 c b8 ~  |
  b8 r g  |
  %15
  f'8 f16 e d8 ~  |
  d8 g f }
  \alternative { { e16 f e d c8 ~  |
  c8 r g }
  { e'16 f e d c8 ~ } }
  %20
  c8 e16 f e f  |
  \repeat volta 2 { e8 e16 d c8 ~  |
  c8 b16 c b c  |
  d8 d16 c b8 ~  |
  b8 d16 e d e  |
  %25
  d8 d16 c b8 ~  |
  b8 d f }
  \alternative { { e16 f e d c8 ~  |
  c8 e16 f e f }
  { e16 f e d c8 ~ } }
  %30
  c8 r g  |
  \repeat volta 2 { c8 r g  |
  e'8 r g,  |
  c8 d16 c b a  |
  b8 r g  |
  %35
  f'8 g16 f e d  |
  e8 f16 e d c  |
  d8 e16 d c b }
  \alternative { { c8 r g }
  { c4 \times 2/3 { r16 d c }  |
  %40
  c4 r8 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r2 r4  |
  r2 r4  |
  r2 r4  |
  \time 3/8   r4 r8  |
  %05
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %10
  r4 g8  |
  \repeat volta 2 { c8 c16 b g8 ~  |
  g8 g16 a g a  |
  b8 b16 a g8 ~  |
  g8 r g  |
  %15
  d'8 d16 c b8 ~  |
  b8 g b }
  \alternative { { c16 d c b c8 ~  |
  c8 r g }
  { c16 d c b c8 ~ } }
  %20
  c8 c16 d c d  |
  \repeat volta 2 { c8 c16 b g8 ~  |
  g8 g16 a g a  |
  b8 b16 a g8 ~  |
  g8 b16 c b c  |
  %25
  b8 b16 a g8 ~  |
  g8 g b }
  \alternative { { c16 d c b c8 ~  |
  c8 c16 d c d }
  { c16 d c b c8 ~ } }
  %30
  c8 r g  |
  \repeat volta 2 { e8 r g  |
  c8 r g  |
  a8 b16 a g f  |
  g8 r g  |
  %35
  d'8 e16 d c b  |
  c8 d16 c b a  |
  b8 c16 b a b }
  \alternative { { g8 r g }
  { c4 \times 2/3 { r16 d c }  |
  %40
  c4 r8 } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/4
  tomfl2.:64 ~  |
  tomfl2.:64 ~  |
  tomfl2.:64 ~  |
  \time 3/8   tomfl4.:64 ~  |
  %05
  tomfl4.:64 ~  |
  tomfl4.:64 ~  |
  tomfl4.:64  |
  <tomfl tomfl>8 r4  |
  <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  %10
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  \repeat volta 2 { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %15
  <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  \alternative { { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } }
  %20
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  \repeat volta 2 { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %25
  <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  \alternative { { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 } }
  %30
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  \repeat volta 2 { <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %35
  <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8  |
  tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  <tomfl tomfl>8 \times 2/3 { tomfl16 tomfl tomfl } tomfl8 }
  \alternative { { tomfl8 \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  { <tomfl tomfl tomfl>16 tomfl <tomfl tomfl tomfl> tomfl <tomfl tomfl tomfl> tomfl  |
  %40
  tomfl4. } } \bar "||"
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

