\version "2.22.1"

\header {
  dedication="Gegants"
  title="   "
  subtitle="Gegants de Riudoms"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Baix Camp"
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
  \repeat volta 2 { \time 1/4 a8. a16  |
  \time 2/4   a8 g a8. a16  |
  a8 c e8. f16  |
  e8 d c b  |
  %05
  c8 a a8. a16  |
  a8 g a8. a16  |
  a8 c e8. f16  |
  e8 d c b  |
  a4 b8. c16  |
  %10
  d8 e g8. f16  |
  e8 d e8. f16  |
  e8 d c b  |
  c8 a b8. c16  |
  d8 e g8. f16  |
  %15
  e8 d e8. f16  |
  e8 d c b  |
  \time 4/4   a2 r2  | % troigo!
  d8 a4 d16 e f8 e d c  |
  d8 a4. d4 f  |
  %20
  e8. d16 c8 d e2  |
  a8 d,4 f16 g a8 g f a  |
  g8 c,4. f4 e  |
  d16 c d e f8 d e16 d c d e4  |
  f16 e f g a8 f g16 f e f g8. a,16  |
  %25
  d8 a4. d4 c  |
  d8 a4. d4 f  |
  e8 a,4 a'16 g a8. g16 f8 e  |
  d1 ~  |
  d1  |
  %30
  \time 6/8   r2 r4  |
  r4. a4 a8  |
  e'4 d8 c4 d8  |
  e4 a, c8 e  |
  d8 c b c b g  |
  %35
  a4. a4 a8  |
  e'4 d8 c4 d8  |
  e4 a, c8 e  |
  d8 c b c b g  |
  a4. a4 a8  |
  %40
  b8 d4 c b8  |
  c8 a4 e' e8  |
  e8 d c b c d  |
  e4. a,4 a8  |
  b8 d4 c b8  |
  %45
  c8 a4 e' e8  |
  e8 d c b c b  |
  a4. r  | }
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \repeat volta 2 { \time 1/4 a8. a16  |
  \time 2/4   a4 a8. a16  |
  a8 a c8. d16  |
  c8 b a g  |
  %05
  a4 a8. a16  |
  a4 a8. a16  |
  a8 a c8. d16  |
  c8 b a g  |
  a4 g8. a16  |
  %10
  b8 c d8. b16  |
  c4 c8. b16  |
  c8 b e4  |
  a,4 g8. a16  |
  b8 c d8. b16  |
  %15
  c4 c8. b16  |
  c8 b d4  |
  \time 4/4   a2 r2  | % troigo!
  d2 f  |
  d2. f4  |
  %20
  c4 c2.  |
  f8 f4. f8 e d f  |
  e2 d4 a  |
  d8 a4. c4 c  |
  f2 e16 d c d e8. a,16  |
  %25
  d2 d4 c  |
  a1  |
  c2 f8. e16 d8 c  |
  d8 a4. d2  |
  a1  |
  %30
  \time 6/8   r2 r4  |
  r4. a4 a8  |
  c4 b8 a4 b8  |
  c4 a a8 a  |
  b8 a g a g4  |
  %35
  a4. a4 a8  |
  c4 b8 a4 b8  |
  c4 a a8 a  |
  b8 a g a g4  |
  a4. a4 a8  |
  %40
  b4. b  |
  a4. c4 c8  |
  c8 b a g a b  |
  c4. a4 a8  |
  b4. b  |
  %45
  a4. c4 c8  |
  c8 b a g4 g8  |
  a4. r  | }
}

liniaroAc =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \repeat volta 2 { \time 1/4 a8. a16  |
  \time 2/4   a8 e' a,8. a16  |
  a8 e' a,8. a16  |
  a8 e' a, e'  |
  %05
  a,4 a8. a16  |
  a8 e' a,8. a16  |
  a8 e' a,8. a16  |
  a8 e' a, e'  |
  a,4 g8. g16  |
  %10
  g4 g8. g16  |
  c8 b c8. d16  |
  a4 a8 g  |
  a4 g8. g16  |
  g4 g8. g16  |
  %15
  a4 a8. g16  |
  a4 a8 g  |
  \time 4/4   a2 r2  | % troigo!
  a2 c  |
  a2. c4  |
  %20
  g4 g2.  |
  d'2 d4 d  |
  c2 d4 a  |
  d8 a4. c2  |
  a2 c4 c8. a16  |
  %25
  a2 a4 g  |
  a1  |
  a2 a  |
  a2 d8 a4.  |
  a1  |
  %30
  \time 6/8   r2 r4  |
  r4. a4 a8  |
  a4. a  |
  a4. r  |
  g4. e'  |
  %35
  a,4. a4 a8  |
  a4. a  |
  a4. r  |
  g4. e'  |
  a,4. a4 a8  |
  %40
  g4. g  |
  a4. a  |
  c4. b  |
  a4. e'  |
  g,4. g  |
  %45
  a4. a  |
  a4. g  |
  a4. r  | }
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \repeat volta 2 { \time 1/4 r4  |
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
  r2  |
  r2  |
  \time 4/4   r2 r4. hhp8  |
  r2 r4. hhp8  |
  r2 r4. hhp8  |
  %20
  r2 r4. hhp8  |
  r2 r4. hhp8  |
  r2 r4. hhp8  |
  r2 r4. hhp8  |
  r2 r4. hhp8  |
  %25
  r2 r4. hhp8  |
  r2 r4. hhp8  |
  r2 r4. hhp8  |
  r2 r4. hhp8  |
  r2 r4. hhp8  |
  %30
  \time 6/8   r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %35
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4. r4 hhp8  |
  %40
  r2 r4  |
  r4. r4 hhp8  |
  r2 r4  |
  r4. r4 hhp8  |
  r2 r4  |
  %45
  r4. r4 hhp8  |
  r2 r4  |
  r2 r4  | }
}

liniaroAe =
\drummode
{
  \tempo 4=120
  \repeat volta 2 { \time 1/4 r4  |
  \time 2/4   tomfl2  |
  tomfl2  |
  tomfl2  |
  %05
  tomfl2  |
  tomfl2  |
  tomfl2  |
  tomfl2  |
  tomfl4 tomfl  |
  %10
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %15
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  \time 4/4   tomfl2 tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  %20
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  %25
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl tomfl  |
  tomfl4 tomfl2.  |
  %30
  \time 6/8   tomfl2.  |
  r4. tomfl8 tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %35
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %40
  tomfl4. tomfl  |
  tomfl4. tomfl  |
  tomfl4. tomfl  |
  tomfl4. tomfl  |
  tomfl4. tomfl  |
  %45
  tomfl4. tomfl  |
  tomfl4. tomfl  |
  tomfl8 tomfl tomfl tomfl4.  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAe
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
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAe
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
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
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
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Timbal fondo"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAe
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAe
      >>
    }
    \midi {}
  }
}

