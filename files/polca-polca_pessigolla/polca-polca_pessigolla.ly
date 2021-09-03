\version "2.22.1"

\header {
  dedication="Polca"
  title="  "
  subtitle="Polca pessigolla"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Joan Moliner"
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
  \repeat volta 4 { g4. e8  |
  c4. g8  |
  \times 2/3 { a16 b a } g8 c d  |
  \times 2/3 { c16 d c } b8 b4  |
  %05
  f'4. d8  |
  b4. g8  |
  \times 2/3 { a16 b a } g8 d' e  |
  \times 2/3 { d16 e d } c8 c4  |
  g'4. e8  |
  %10
  c4. a8  |
  \times 2/3 { ais16 c ais } a8 e' f  |
  \times 2/3 { e16 f e } d8 d4  |
  \times 2/3 { e16 f e } d8 \times 2/3 { e16 f e } d8  |
  \times 2/3 { d16 e d } c8 \times 2/3 { d16 e d } c8  |
  %15
  \times 2/3 { c16 d c } b8 \times 2/3 { c16 d c } b8  |
  c8 e e4  |
  \times 2/3 { e16 f e } d8 \times 2/3 { e16 f e } d8  |
  \times 2/3 { d16 e d } c8 \times 2/3 { d16 e d } c8 }
  \alternative { { d8 a16 b c d e fis  |
  %20
  g8 g g4 }
  { \times 2/3 { c,16 d c } b8 e d  |
  \mark "Fine" c8 c c4 } }
  \key f \major   \times 2/3 { c16 d c } a8 c f  |
  c2  |
  %25
  \times 2/3 { c16 d c } bes8 g d'  |
  c2  |
  \times 2/3 { c16 d c } a8 c f  |
  c2  |
  \times 2/3 { e16 f e } d8 b d  |
  %30
  c8 c16 d e8 d  |
  \times 2/3 { c16 d c } a8 c f  |
  c2  |
  \times 2/3 { des16 d des } a8 des e  |
  d8 d16 e f4  |
  %35
  \times 2/3 { e16 f e } d8 bes d  |
  c4 c16 d e f  |
  e8 d16 e a8 g  |
  f8 f f4  \bar "||"
  \key c \major   g8 g16 g g8 g  |
  %40
  g8 g16 g g8 fis  |
  f16 e d c b8 a  |
  g4 g  |
  g'4. e8  |
  c4. g8  |
  %45
  \times 2/3 { a16 b a } g8 c d  |
  \times 2/3 { c16 d c } b8 b4  |
  f'4. d8  |
  b4. g8  |
  \times 2/3 { a16 b a } g8 d' e  |
  %50
  \times 2/3 { d16 e d } c8 c4  |
  g'4. e8  |
  c4. a8  |
  \times 2/3 { ais16 c ais } a8 e' f  |
  \times 2/3 { e16 f e } d8 d4  |
  %55
  \times 2/3 { e16 f e } d8 \times 2/3 { e16 f e } d8  |
  \times 2/3 { d16 e d } c8 \times 2/3 { d16 e d } c8  |
  \times 2/3 { c16 d c } b8 \times 2/3 { c16 d c } b8  |
  c8 e e4  |
  \times 2/3 { e16 f e } d8 \times 2/3 { e16 f e } d8  |
  %60
  \times 2/3 { d16 e d } c8 \times 2/3 { d16 e d } c8  |
  d8 a16 b c d e fis  |
  \mark "D.C. al Fine" g8 g g4  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { e4. c8  |
  g4. c8  |
  e4 e8 f  |
  \times 2/3 { e16 f e } d8 d4  |
  %05
  d4. b8  |
  g4. b8  |
  d4 f8 g  |
  \times 2/3 { f16 g f } e8 e4  |
  e4. c8  |
  %10
  g4. c8  |
  cis4 g'8 a  |
  \times 2/3 { g16 a g } f8 f4  |
  \times 2/3 { g16 a g } f8 \times 2/3 { g16 a g } f8  |
  \times 2/3 { f16 g f } e8 \times 2/3 { f16 g f } e8  |
  %15
  \times 2/3 { e16 f e } d8 \times 2/3 { e16 f e } d8  |
  e8 g g4  |
  \times 2/3 { g16 a g } f8 \times 2/3 { g16 a g } f8  |
  \times 2/3 { f16 g f } e8 \times 2/3 { f16 g f } e8 }
  \alternative { { fis8 fis16 e d8 c  |
  %20
  b8 a g4 }
  { \times 2/3 { e'16 f e } d8 g, b  |
  c8 c c4 } }
  \key f \major   a4. c8  |
  f8 g16 f e8 d  |
  %25
  e4. bes'8  |
  a8 a16 g f8 c  |
  a4. c8  |
  f8 g16 f e8 d  |
  \times 2/3 { c16 d c } b8 g b  |
  %30
  c8 g a bes  |
  a4. c8  |
  f8 g16 f e8 d  |
  e4. g8  |
  f8 f16 g a4  |
  %35
  \times 2/3 { g16 a g } f8 d bes  |
  a4 a16 bes c d  |
  c8 b16 c d8 e  |
  f8 f f4  \bar "||"
  \key c \major   g,8 g16 g g8 a  |
  %40
  b8 b16 b b8 c  |
  d8 d16 e f8 fis  |
  g4 g  |
  e4. c8  |
  g4. c8  |
  %45
  e4 e8 f  |
  \times 2/3 { e16 f e } d8 d4  |
  d4. b8  |
  g4. b8  |
  d4 f8 g  |
  %50
  \times 2/3 { f16 g f } e8 e4  |
  e4. c8  |
  g4. c8  |
  cis4 g'8 a  |
  \times 2/3 { g16 a g } f8 f4  |
  %55
  \times 2/3 { g16 a g } f8 \times 2/3 { g16 a g } f8  |
  \times 2/3 { f16 g f } e8 \times 2/3 { f16 g f } e8  |
  \times 2/3 { e16 f e } d8 \times 2/3 { e16 f e } d8  |
  e8 g g4  |
  \times 2/3 { g16 a g } f8 \times 2/3 { g16 a g } f8  |
  %60
  \times 2/3 { f16 g f } e8 \times 2/3 { f16 g f } e8  |
  fis8 fis16 e d8 c  |
  b8 a g4  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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

