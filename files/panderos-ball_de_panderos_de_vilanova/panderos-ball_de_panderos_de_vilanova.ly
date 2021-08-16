\version "2.16.0"

\header {
  dedication="Ball de panderos"
  title="      "
  subtitle="Ball de panderos de Vilanova"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Garraf"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  d16 g  |
  \time 2/4   \repeat volta 2 { fis8 c16 e d8 a16 c  |
  b16 a g8 ~ g b  |
  a16 b c d c8 a  |
  %05
  g16 a b c d8 d16 g  |
  fis8 c16 e d8 a16 c  |
  b16 a g8 ~ g b  |
  a16 b c d c8 a  |
  g4 b16 a b c  |
  %10
  d8 d e c16 e  |
  d4 ~ d8 b16 c  |
  d16 e d cis d8 g  |
  fis4 ~ fis8 a,16 b  |
  c16 d c b c8 a  |
  %15
  fis'4. e8  |
  d16 e d c b8 a  |
  b16 a g8 ~ g b16 c  |
  d8 d e c16 e  |
  d4 ~ d8 b16 c  |
  %20
  d16 e d cis d8 g  |
  fis4 ~ fis8 a,16 b  |
  c16 d c b c8 a  |
  fis'4. e8  |
  d16 e d c b8 a }
  %25
  \alternative { { g4 r8 d'16 g }
  { g,4 r } } \bar "||"
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl8 tomfl  |
  %05
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl  |
  %10
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl tomfl  |
  %15
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  %20
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4  |
  tomfl8 tomfl tomfl4 }
  %25
  \alternative { { tomfl4 r }
  { tomfl4 r } } \bar "||"
}

\book {

\paper {
  print-page-number = false
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAb
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 14)
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

