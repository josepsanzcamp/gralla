\version "2.16.0"

\header {
  dedication="Ball de bastons"
  title="    "
  subtitle="Ball de bastons de Reus"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="El Baix Camp"
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
  \time 1/4
  g8 g16 a  |
  \time 2/4   b8 g d' d16 e  |
  d4 g,8 g16 a  |
  b8 g d' d16 e  |
  %05
  d4 g8 g16 g  |
  f8 f e16 f g e  |
  d4 c16 d e c  |
  b16 c d b a b c a  |
  g4 g'8 g16 g  |
  %10
  f8 f e16 f g e  |
  d4 c16 d e c  |
  b16 c d b a b c a  |
  g8 g16 a b c a b  |
  g8 g16 a b c a b  |
  %15
  g2  |
  r4 g8 g16 a  |
  b8 g d' d16 e  |
  d4 g,8 g16 a  |
  b8 g d' d16 e  |
  %20
  d4 g8 g16 g  |
  f8 f e16 f g e  |
  d4 c16 d e c  |
  b16 c d b a b c a  |
  g4 g'8 g16 g  |
  %25
  f8 f e16 f g e  |
  d4 c16 d e c  |
  b16 c d b a b c a  |
  g8 g16 a b c a b  |
  g8 g16 a b c a b  |
  %30
  g2  \bar "|."
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 2/4   r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %10
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %15
  r8 tomfl tomfl4  |
  r4 tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  %20
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  %25
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl tomfl tomfl  |
  %30
  tomfl8 tomfl tomfl4  \bar "|."
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

