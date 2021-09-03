\version "2.22.1"

\header {
  dedication="Havanera"
  title="   "
  subtitle="Luna plena"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Pepín Banzo"
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
  \time 2/4
  r8 g c e  |
  \time 4/4   g8 g4 g8 a4 a  |
  g8 e4. r8 g, c e  |
  g8 g4 g8 a4 e  |
  %05
  f2 r8 b, b d  |
  f8 f4 f8 g4 g  |
  f8 d4. r8 g, b d  |
  f8 f4 f8 g4 dis  |
  e2 r8 g, c e  |
  %10
  g8 g4 g8 a4 a  |
  g8 e4. r8 e e d  |
  cis8 cis4 cis8 d4 e  |
  f2 ~ f4 f8 g  |
  a8 c4 a8 c4 b  |
  %15
  g8 b4 g8 b4 a  |
  f8 a4 f8 a4 g  |
  e8 e4 f8 g4 f8 g  |
  a8 c4 a8 c4 b  |
  g8 b4 g8 b4 a  |
  %20
  f8 a4 g8 e4 d  |
  c8 c'4 b8 ais2  |
  r4. c8 a4 c  |
  g8 f4. ~ f2 ~  |
  f4 r8 f g4 f  |
  %25
  e1 ~  |
  e4 r8 ais g4 ais  |
  f8 e4. ~ e2 ~  |
  e4 r8 e \times 2/3 { f4 e d }  |
  c1 ~  |
  %30
  c4 r8 c' a4 c  |
  g8 f4. ~ f2 ~  |
  f4 r8 f g4 a  |
  ais1 ~  |
  ais4 r8 ais c4 ais  |
  %35
  a8 f4 f8 e4 d  |
  d8 c4. ~ c2 ~  |
  c4 r8 c d4 e  |
  \mark "D.C." f4 r r2  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  \time 4/4   e8 e4 e8 f4 f  |
  e8 c4 c8 g4 r  |
  e'8 e4 e8 f4 cis  |
  %05
  d2 r  |
  d8 d4 d8 e4 e  |
  d8 b4 b8 g4 r  |
  d'8 d4 d8 e4 c  |
  c2 r  |
  %10
  e8 e4 e8 f4 f  |
  e8 c4. r8 g' g f  |
  e8 e4 e8 f4 g  |
  a2 ~ a4 d,8 e  |
  f8 a4 f8 a4 g  |
  %15
  e8 g4 e8 g4 f  |
  d8 f4 d8 f4 e  |
  c8 c4 d8 e4 d8 e  |
  f8 a4 f8 a4 g  |
  e8 g4 e8 g4 f  |
  %20
  d8 f4 e8 c4 f  |
  e4 r r c  |
  f4 r r2  |
  r4 r8 g16 a ais a g a ais8 a  |
  f4 r r2  |
  %25
  r8 c4 c8 c4 b  |
  ais4 r r2  |
  r4 r8 e'16 f g f e f g8 e  |
  c4 r8 c \times 2/3 { d4 c ais }  |
  a4 r8 c f4 g  |
  %30
  a4 r r2  |
  r4 r8 g16 a ais a g a ais8 a  |
  f4 r r2  |
  r8 d4 d8 d4 c  |
  ais4 r8 g a4 g  |
  %35
  c8 a'4 a8 g4 f  |
  f8 e4 c8 d4 c  |
  e4 r8 c' c4 ais  |
  a4 r r2  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  r2  |
  \time 4/4   tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  %05
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  %10
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 r  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  %15
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 r  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  %20
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl4 r r2  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %25
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl \times 2/3 { tomfl4 tomfl tomfl }  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl  |
  %30
  tomfl4. tomfl8 tomfl4 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %35
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl \times 2/3 { tomfl4 tomfl tomfl }  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl tomfl4 tomfl  |
  tomfl4 r r2  \bar "|."
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
  }
  \score { \unfoldRepeats
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
  }
  \score { \unfoldRepeats
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
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {}
  }
}

