\version "2.22.1"

\header {
  dedication="Polca"
  title="   "
  subtitle="Carnamusa"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Blas Coscollar"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { g8 e16 c a'8 g16 c,  |
  c8 b b4  |
  a'8 f16 d b'8 g16 d  |
  d8 c c4  |
  %05
  g'8 e16 c a'8 g16 e  |
  e8 d d4  |
  a16 gis a b c8 e  |
  g4 g  |
  g8 e16 c a'8 g16 c,  |
  %10
  c8 b b4  |
  a'8 f16 d b'8 g16 d  |
  d8 c c4  |
  g'8 e16 c a'8 g16 e  |
  e8 d d4  |
  %15
  a16 a b c e8 d  |
  c4 c'  \bar "||"
  e,8 dis16 e f8 e16 f  |
  a8 g r16 e d e  |
  g8 f r16 d e f  |
  %20
  e8 c g4  |
  e'8 dis16 e f8 e16 f  |
  a8 g r16 g fis g  |
  b16 d, g b a d, fis a  |
  g4 f  |
  %25
  e8 dis16 e f8 e16 f  |
  a8 g r16 e c e  |
  g8 f r16 d a b  |
  d8 c g4  |
  \times 2/3 { a8 gis a } \times 2/3 { b c d }  |
  %30
  e8 g r16 b a g  |
  f16 a, gis a e'8 e  |
  c4 c  | }
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { e8 g, c c  |
  b8 g g16 b d f  |
  f8 d d b  |
  g8 g g16 c e f  |
  %05
  e8 c cis cis  |
  a8 a a4  |
  <f a>4 a  |
  b4 f'  |
  e8 g, c c  |
  %10
  b8 g g16 b d f  |
  f8 d d b  |
  g8 g g16 c e f  |
  e8 c cis cis  |
  a8 a a gis  |
  %15
  g4 f  |
  <e c'>4 <e c'>  \bar "||"
  g4 g  |
  <e g>8 <e g> <e g>4  |
  g8 b d4  |
  %20
  c8 g <e g>4  |
  g4 a  |
  <e g>8 <e g> <e g>4  |
  d'8 b c4  |
  b4 b  |
  %25
  g4 g  |
  e16 g c e g8 e  |
  f16 g, b d f8 g,  |
  r16 g c d e8 c  |
  <f, a>4 gis  |
  %30
  c4 cis  |
  d8 f, <f d'> <f b>  |
  <e g>4 <c' e>  | }
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  \repeat volta 2 { tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  %05
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %10
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  %15
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 tomfl  \bar "||"
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %20
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  %25
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %30
  tomfl8 tomfl tomfl4:64  |
  tomfl8:16 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 tomfl  | }
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

