\version "2.16.0"

\header {
  dedication="Havanera"
  title="  "
  subtitle="Calavera"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. Blas Coscollar"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \clef treble
  \key g \major
  \time 1/8
  d16 c \tempo 4 = 75  |
  \time 2/4   \repeat volta 2 { c16 b8. r8 b16 c  |
  d16 d8 d16 d8 c16 b  |
  d16 d8 d16 d8 c16 b  |
  %05
  d16 c8. r8 c16 b  |
  b16 a8. r8 c16 d  |
  e16 e8 e16 e8 d16 c  |
  e16 e8 e16 e8 d16 c  |
  e16 d8. r8 d16 c  |
  %10
  c16 b8. r8 b16 c  |
  d16 d8 d16 d8 c16 b  |
  d16 d8 d16 f8 f16 f  |
  e4 r8 c16 d  |
  e16 e8 e16 e8 fis16 e  |
  %15
  e16 d8 d16 d e8 d16  |
  d16 c8 d16 e8 d16 c  |
  d2  |
  r8. d16 d8 e16 fis  |
  g2  |
  %20
  r8. c,16 c8 d16 e  |
  fis8. c16 c8 d16 e  |
  fis8. fis16 g8 fis16 e  |
  d2  |
  r8. d16 d8 e16 fis  |
  %25
  g2  |
  r8. f16 f8 f16 f  |
  e2  |
  r8. e16 e8 fis16 e  |
  e16 d8 d16 d8 g  |
  %30
  fis16 fis8 fis16 fis8 e16 fis }
  \alternative { { g2  |
  r4 r8 d16 c }
  { g'2 } }
  g4 r  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4 = 75
  \clef treble
  \key g \major
  \time 1/8
  b16 a  |
  \time 2/4   \repeat volta 2 { a16 g8. r8 g16 a  |
  b16 b8 b16 b8 a16 g  |
  b16 b8 b16 b8 a16 g  |
  %05
  b16 a8. r8 a16 g  |
  g16 fis8. r8 a16 b  |
  c16 c8 c16 c8 b16 a  |
  c16 c8 c16 c8 b16 a  |
  c16 b8. r8 b16 a  |
  %10
  a16 g8. r8 g16 a  |
  b16 b8 b16 b8 a16 g  |
  b16 b8 g16 g8 a16 b  |
  c4 r8 a16 b  |
  c16 c8 c16 c8 d16 c  |
  %15
  c16 b8 b16 b c8 b16  |
  b16 a8 b16 c8 b16 a  |
  b2  |
  r8. b16 b8 c16 b  |
  d2  |
  %20
  r8. a16 a8 b16 c  |
  d8. a16 a8 b16 c  |
  d8. d16 e8 d16 c  |
  b2  |
  r8. d16 c8 c16 c  |
  %25
  b2  |
  r8. g16 g8 a16 b  |
  c2  |
  r8. c16 c8 d16 c  |
  c16 b8 b16 b8 b  |
  %30
  d16 d8 d16 d8 c16 d }
  \alternative { { b2  |
  r4 r8 b16 a }
  { b2 } }
  b4 r  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4 = 75
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  %05
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  %10
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  %15
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  %20
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  %25
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  %30
  tomfl8. tomfl32 tomfl tomfl8 tomfl }
  \alternative { { tomfl8. tomfl32 tomfl tomfl8 tomfl  |
  tomfl4 r }
  { tomfl8. tomfl32 tomfl tomfl8 tomfl } }
  tomfl4 r  \bar "|."
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
  \header {instrument=""}
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
  \header {instrument=""}
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

