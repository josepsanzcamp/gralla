\version "2.16.0"

\header {
  dedication="Polca"
  title="  "
  subtitle="Polca d'Ours"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { a8 c a c  |
  b8 g g g  |
  a8 c a c  |
  d4 c8 d  |
  %05
  e8 e d d  |
  c8 c b b  |
  a8 c b g }
  \alternative { { a4 a }
  { a4 a } }
  %10
  \repeat volta 2 { e'8 a, a16 b c d  |
  e8 a, a8. b16  |
  c8 c b c  |
  d8 b c d  |
  e8 a, e' a,  |
  %15
  e'8 a, a8. b16  |
  c8 c b g  |
  a4 a  | }
  \repeat volta 2 { a8 c a c  |
  b8 g g g  |
  %20
  a8 c a c  |
  d4 c8 d  |
  e8 e d d  |
  c8 c b b  |
  a8 c b g }
  %25
  \alternative { { a4 a }
  { a4 a } }
  \repeat volta 2 { e'8 a, a16 b c d  |
  e8 a, a8. b16  |
  c8 c b c  |
  %30
  d8 b c d  |
  e8 a, e' a,  |
  e'8 a, a8. b16  |
  c8 c b g  |
  a4 a  | }
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { e2  |
  d2  |
  c2  |
  b2  |
  %05
  g'4 f  |
  e4 d  |
  c8 e d b }
  \alternative { { c8. b16 c8 d }
  { c4 c } }
  %10
  \repeat volta 2 { e4 r  |
  e4 e8. e16  |
  e8 e d c  |
  b8 b c d  |
  g4 f  |
  %15
  e4 d  |
  g8 f e d  |
  e4 e  | }
  \repeat volta 2 { c8 e c e  |
  d8 b b4  |
  %20
  c8 e c e  |
  f4 e8 f  |
  r8 g r f  |
  r8 e r d  |
  c8 e d b }
  %25
  \alternative { { c8. b16 a8 b }
  { c4 c } }
  \repeat volta 2 { e8 a, a16 b c d  |
  e8 a, a8. b16  |
  c8 c b c  |
  %30
  d8 b c d  |
  e4 f  |
  g4 f  |
  e8 e d d  |
  e4 e  | }
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  \repeat volta 2 { tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  %05
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl }
  \alternative { { tomfl8 tomfl tomfl4 }
  { tomfl8 tomfl tomfl4 } }
  %10
  \repeat volta 2 { r8 tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl4  |
  r8 tomfl16 tomfl r8 tomfl16 tomfl  |
  %15
  r8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  r8 tomfl tomfl4  | }
  \repeat volta 2 { tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  %20
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl }
  %25
  \alternative { { tomfl8 tomfl tomfl4 }
  { tomfl8 tomfl tomfl4 } }
  \repeat volta 2 { r8 tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %30
  tomfl8 tomfl tomfl4  |
  r8 tomfl16 tomfl r8 tomfl16 tomfl  |
  r8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  r8 tomfl tomfl4  | }
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
      >>
    }
    \midi {}
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {}
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {}
  }
}

