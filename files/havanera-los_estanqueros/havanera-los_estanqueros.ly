\version "2.16.0"

\header {
  dedication="Havanera"
  title=""
  subtitle="Los estanqueros"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Eugenio Gracía Marco"
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
  \key g \major
  \time 1/8
  g8  |
  \time 2/4   d'4. b8  |
  c8 b4 c8  |
  d4. b8  |
  %05
  c8 b4 c8  |
  d4 fis8 g  |
  fis4 e8 fis  |
  e4 ~ e8 fis16 e  |
  d4 r8 g,  |
  %10
  c4. a8  |
  b8 a4 b8  |
  c4. a8  |
  b8 a4 b8  |
  c4 a8 c  |
  %15
  fis8 e4 cis8  |
  d2  |
  r4. g,8  |
  d'4. b8  |
  c8 b4 c8  |
  %20
  d4. b8  |
  c8 b4 c8  |
  d4 cis8 d  |
  e8 f4 e8  |
  f2  |
  %25
  e2 ~  |
  e4 c8 d  |
  e8 a4 d,8  |
  e8 a4 e8  |
  d8 g4 d8  |
  %30
  g4 fis8 e  |
  fis8 e4 d8  |
  c4 b8 c  |
  d2 ~  |
  d4 c8 d  |
  %35
  e8 a4 d,8  |
  e8 a4 e8  |
  d8 g4 d8  |
  g4 fis8 e  |
  fis8 e4 d8  |
  %40
  c4 b8 a  |
  g2 ~  |
  g4 d'8 e  |
  d4. b8  |
  d4 g  |
  %45
  b2 ~  |
  b4 a8 b  |
  c4. b8  |
  a4 g  |
  fis2 ~  |
  %50
  fis4 c8 d  |
  c4. a8  |
  c4 fis  |
  a2 ~  |
  a4 g8 a  |
  %55
  b8 a4 g8  |
  a8 g4 e8  |
  d2 ~  |
  d4 d8 e  |
  d4. b8  |
  %60
  d4 g  |
  b2 ~  |
  b4 a8 b  |
  c4. b8  |
  a4 g  |
  %65
  fis2 ~  |
  fis4 c8 d  |
  c4. a8  |
  c4 fis  |
  a2 ~  |
  %70
  a4 g8 a  |
  b8 a4 g8  |
  a8 g4 e8  |
  g2 ~  |
  g4 c,8 d  |
  %75
  e8 a4 d,8  |
  e8 a4 e8  |
  d8 g4 d8  |
  g4 fis8 e  |
  fis8 e4 d8  |
  %80
  c4 b8 c  |
  d2 ~  |
  d4 c8 d  |
  e8 a4 d,8  |
  e8 a4 e8  |
  %85
  d8 g4 d8  |
  g4 fis8 e  |
  fis8 e4 d8  |
  c4 b8 a  |
  g2 ~  |
  %90
  \mark "D.C." g4 r  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  r8  |
  \time 2/4   b2  |
  a8 g4.  |
  b2  |
  %05
  a8 g4.  |
  b4 d8 e  |
  d4 c8 d  |
  c4 ~ c8 d16 c  |
  b2  |
  %10
  e2  |
  d8 fis4.  |
  e2  |
  d8 fis4.  |
  e4 c8 e  |
  %15
  a8 g4 ais,8  |
  b2  |
  r2  |
  b2  |
  a8 g4.  |
  %20
  b2  |
  a8 g4.  |
  b4 ais8 b  |
  c8 d4 c8  |
  d2  |
  %25
  c2 ~  |
  c4 e8 fis  |
  g8 c,4 b8  |
  g'8 c,4 g'8  |
  fis8 b,4 b8  |
  %30
  e4 d8 c  |
  d8 c4 b8  |
  a4 g8 a  |
  g2 ~  |
  g4 e'8 fis  |
  %35
  g8 c,4 b8  |
  g'8 c,4 g'8  |
  fis8 b,4 b8  |
  e4 d8 c  |
  d8 c4 b8  |
  %40
  a4 d8 fis  |
  g2 ~  |
  g4 r  |
  b,4. g8  |
  g'4 c,  |
  %45
  d2 ~  |
  d4 r  |
  a8 b c fis  |
  d8 g, c g  |
  a2 ~  |
  %50
  a4 r  |
  e'4. e8  |
  g4 a,  |
  d2 ~  |
  d4 e8 fis  |
  %55
  g8 fis d b  |
  fis'8 e c g  |
  b2 ~  |
  b4 r  |
  b4. g8  |
  %60
  g'4 c,  |
  d2 ~  |
  d4 r  |
  a8 b c fis  |
  d8 g, c g  |
  %65
  a2 ~  |
  a4 r  |
  e'4. e8  |
  g4 a,  |
  d2 ~  |
  %70
  d4 e8 fis  |
  g8 fis d b  |
  fis'8 e c g  |
  g2 ~  |
  g4 e'8 fis  |
  %75
  g8 c,4 b8  |
  g'8 c,4 g'8  |
  fis8 b,4 b8  |
  e4 d8 c  |
  d8 c4 b8  |
  %80
  a4 g8 a  |
  b2 ~  |
  b4 e8 fis  |
  g8 c,4 a8  |
  g'8 a,4 g'8  |
  %85
  fis8 b,4 b8  |
  e4 d8 c  |
  d8 c4 b8  |
  a4 d8 fis  |
  g2 ~  |
  %90
  g4 r  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/8
  r8  |
  \time 2/4   tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  %05
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  %10
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  %15
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  %20
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  %25
  tomfl4 tomfl  |
  tomfl4 r  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  %30
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl2  |
  %35
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  %40
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 r  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %45
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  %50
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %55
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  %60
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %65
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  %70
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl16 tomfl tomfl tomfl  |
  %75
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  %80
  tomfl4 tomfl  |
  tomfl8. tomfl16 ~ tomfl8 tomfl  |
  tomfl8. tomfl16 ~ tomfl8 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  %85
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4. tomfl8  |
  %90
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

