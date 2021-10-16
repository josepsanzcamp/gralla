\version "2.16.2"

\header {
  dedication=""
  title="No n'hi ha prou"
  subtitle=""
  subsubtitle=""
  poet="gralla i contrabaix"
  meter=""
  piece=""
  composer="Perepau Jiménez."
  arranger="desembre 2008"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative f''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { f8 a c,  f e f ~  |
  f8 c a'  a, d c ~  |
  c8 a f' g, e' f ~  |
  f2 r4  |
  %05
  f,8 a c f e f ~  |
  f8  c a' a, d c ~  |
  c8 a f' e dis d ~  |
  d2 r4  |
  d8 f \times 2/3 { a,16 f' a, } f'8 e d ~  |
  %10
  d4. c8 d ais' ~  |
  ais8 ais a g f e ~  |
  e2 r4  |
  d8 f \times 2/3 { a,16 f' a, } f'8 e4  |
  d8 d r d d r  |
  %15
  ais8 c d e f g ~  |
  g2.  |
  a8 c f, c e f ~  |
  f8 c a' f d' c ~  |
  c8 a f c e f ~  |
  %20
  f2 r4  |
  a,8 c f g e f ~  |
  f4. e8 c4  |
  d8 fis a c, a' ais ~  |
  ais2 r4 }
  %25
  \alternative { { ais8 d,4 g f8  |
  g8 g r e e r  |
  a8 c \times 2/3 { f,16 a f } a8 c ais ~  |
  ais4 r8 a4.  |
  d,8 c' d, c a' ais, ~  |
  %30
  ais8 g' ais, a e' g,  |
  g8 \times 2/3 { f16 a f } e8 f a c  |
  d8 c \times 2/3 { a16 c a } f'8 e f }
  { ais8 d,4 g f8  |
  g8 g r e e r  |
  %35
  a8 c \times 2/3 { f,16 a f } a8 c ais ~  |
  ais4 r8 a4.  |
  d,8 c' d, c a' ais, ~  |
  ais8 g' ais, a e' g,  |
  g8 \times 2/3 { f16 a f } e8 f a c  |
  %40
  d8 ais a c d e } }
  \repeat volta 2 { f4 g8 e4 f8  |
  d2. ~  |
  d8 g, d' e f g  |
  a4 a8 c4 a8  |
  %45
  g4 f2  |
  r4 f f8 g  |
  a4 ais8 e4 f8  |
  g2.  |
  g8 a, d \times 2/3 { a16 d a } e'8 f  |
  %50
  g4 ais8 a4 g8  |
  e8 f d d d d  |
  d4. a8 a a  |
  d4 d8 c d c  |
  a4 ais8 g g g }
  %55
  \alternative { { g4. a8 d e }
  { g,2. ~ } }
  g2 r4  \bar "|."
}

liniaroAb =
\relative f'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { f8 a r2  |
  r2 r4  |
  r2 r8 a ~  |
  a2 r4  | % kompletite
  %05
  r2 r4  |
  r2 r4  |
  r2 fis8 <g ais> ~ ~  |
  <g ais>2 r4  |
  ais8 f' r4 g,8 ais ~  |
  %10
  ais4. a8 ais ais ~  |
  ais8 ais a g f g ~  |
  g2 r4  |
  ais8 f' r4 g,  |
  ais8 ais r ais ais r  |
  %15
  g8 a ais c d e ~  |
  e2.  |
  r2 r4  |
  r2 f8 e ~  |
  e8 a, f c' g a ~  |
  %20
  a2 r4  |
  r2 e'8 a ~  |
  a4. c8 a4  |
  r2 dis,8 d ~  |
  d2 r4 }
  %25
  \alternative { { d8 a4 ais a8  |
  e'8 e r g, g r  |
  r2 <e' a>8 <d g> ~ ~  |
  <d g>4 r8 <d f>4.  |
  r2 r4  |
  %30
  r2 r4  |
  r2 r4  |
  r2 r4 }
  { d8 a4 ais a8  |
  e'8 e r g, g r  |
  %35
  r2 <e' a>8 <d g> ~ ~  |
  <d g>4 r8 <d f>4.  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %40
  r2 a8 g } }
  \repeat volta 2 { a4 g8 g4 a8  |
  a2. ~  |
  a8 g a g a c  |
  d4 d8 e4 c8  |
  %45
  b4 a2  |
  r4 a a8 c  |
  d4 d8 b4 c8  |
  <a d>2.  |
  <a d>8 a r4 g8 a  |
  %50
  c4 f8 e4 d8  |
  b8 c a a ais g  |
  a4. e8 e e  |
  <f ais>4 <f ais>8 <e a> <f ais> <e a>  |
  d4 g8 e e e }
  %55
  \alternative { { d2 a'8 g }
  { d2. ~ } }
  d2 r4  \bar "|."
}

liniaroAc =
\relative f,
{
  \tempo 4=120
  \clef bass
  \key c \major
  \time 3/4
  \repeat volta 2 { f4 f' c'  | % troigo!
  f,,4 f' c'  |
  f,,4 f' c'  |
  f,,4 a c  |
  %05
  f,4 f' c'  |
  f,,4 f' c'  |
  f,,4 a d  |
  g,4 ais d  |
  g,4 ais' ais  |
  %10
  c,4 c' c  |
  g,4 ais' ais  |
  c,4 ais a  |
  g4 ais' ais  |
  c,4 ais'8 r ais4  |
  %15
  r2 r4  |
  f,4 a c  |
  f,4 f' c'  |
  f,,4 f' c'  |
  f,,4 f' e  |
  %20
  f,4 a c  |
  f,4 f' c'  |
  f,,4 f' e  |
  d4 d' d  |
  g,,4 d' c }
  %25
  \alternative { { ais4 ais' d,  |
  c4 c' g,  |
  f4 g' a,  |
  d4 d' d  |
  g,,4 ais' ais  |
  %30
  c,4 c' c  |
  f,,4 r2  | % kompletite
  r2 r4 }
  { ais4 ais' d,  |
  c4 c' g,  |
  %35
  f4 g' a,  |
  d4 d' d  |
  g,,4 ais' ais  |
  c,4 c' c  |
  f,,4 r2  | % kompletite
  %40
  r2 r4 } }
  \repeat volta 2 { <d' d'>4 r8 <a c'>4 r8  |
  d4 d' d  |
  d,4 d' d  |
  <d, d'>4 r8 <a c'>4 r8  |
  %45
  d4 d' d  |
  a,4 d' d  |
  <d, d'>4 r8 <c d'>4 r8  |
  ais4 ais' ais  |
  ais,4 ais' ais  |
  %50
  <a, c'>4 r8 <a c'>4 r8  |
  d4 d' d  |
  d,4 d' <f,, f'>  |
  <ais' g,>4 r8 <a, c'>4 r8  |
  ais4 ais' ais }
  %55
  \alternative { { d,4. r8 r4 }
  { d2. ~ } }
  d2 r4  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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

