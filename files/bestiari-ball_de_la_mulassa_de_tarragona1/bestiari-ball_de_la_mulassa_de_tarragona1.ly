\version "2.22.1"

\header {
  dedication="Bestiari"
  title="         "
  subtitle="         "
  subsubtitle="Tonada del ball de la Mulassa, núm. 1"
  poet=""
  meter=""
  piece=""
  composer="Tarragona"
  arranger="Rafel Guinovart"
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
  \time 1/4
  g8 c  \bar "||"
  \time 2/4   \mark \markup {\musicglyph #"scripts.segno"} e2 ~  |
  e8 d f e  |
  c2 ~  |
  %05
  c8 g g c  |
  e4 g ~  |
  g4 e  |
  f2 ~  |
  f4 a,8 d  |
  %10
  f2 ~  |
  f8 d cis d  |
  a2 ~  |
  a8 a d f  |
  g8. f16 e8 f  |
  %15
  e8 d b a  |
  g2 ~  |
  g8 r g c  |
  \repeat volta 2 { e2 ~  |
  e8 d f e  |
  %20
  c2 ~  |
  c8 g g c  |
  e8. g,16 c8 e  |
  g8 f e g  |
  f2 ~  |
  %25
  f8 a b8. a16  |
  a2 ~  |
  a8 a b a  |
  a8. g16 g4 ~  |
  g8 g a g  |
  %30
  g8 f e f  |
  e8. d16 c8 b  |
  c2 ~  |
  \mark "Fine" c4 r  \bar "||"
  g'8. g16 b8 a  |
  %35
  g4 e  |
  f8. f16 e8 d  |
  e2  |
  d8. e16 fis8 a  |
  g8 a b4  |
  %40
  a8. g16 f8 a  |
  \mark "D.S. al Fine" g4 g,8 c  | }
}

liniaroAb =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  e8 g  \bar "||"
  \time 2/4   c2 ~  |
  c8 g a g  |
  e2 ~  |
  %05
  e8 e e g  |
  c4 e,8 g  |
  c4 cis  |
  d2 ~  |
  d4 f,8 a  |
  %10
  d2 ~  |
  d8 f, e f  |
  f2 ~  |
  f8 f a d  |
  e8. d16 cis8 d  |
  %15
  g,8 f g f  |
  e2 ~  |
  e8 r e g  |
  \repeat volta 2 { c2 ~  |
  c8 g a g  |
  %20
  e2 ~  |
  e8 e e g  |
  c8. e,16 g8 c  |
  e8 d c ais  |
  a2 ~  |
  %25
  a8 f' g8. f16  |
  f2 ~  |
  f8 f g f  |
  f8. e16 e4 ~  |
  e8 e f e  |
  %30
  e8 d cis d  |
  g,8. f16 a8 g  |
  e2 ~  |
  e4 r  \bar "||"
  b'8. b16 d8 f  |
  %35
  e4 c  |
  d8. d16 c8 b  |
  c2  |
  f,8. g16 a8 c  |
  b8 d g4  |
  %40
  c,8. b16 a8 c  |
  b4 e,8 g  | }
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  \bar "||"
  \time 2/4   tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  %05
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  %10
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  %15
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  \repeat volta 2 { tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  %20
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  %25
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  %30
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl8 tomfl tomfl r  \bar "||"
  tomfl8. tomfl16 tomfl8 tomfl  |
  %35
  tomfl4:32 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  |
  %40
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl  | }
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
  }
  \score { \unfoldRepeats
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
  \header {instrument=""}
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
  \header {instrument=""}
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

