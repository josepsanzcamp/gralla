\version "2.16.2"

\header {
  dedication=""
  title="Dona Nobis Pacem"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="(Atr. W. A. Mozart)"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { c8 ^\markup {\circle {1}} g  e'2   |
  d8 g, f'2  |
  e4 ( d ) c  |
  c4  b2  |
  %05
  a'4 ( g8 ) f e d  |
  g4. ( f8 ) e4  |
  e8 ( d c4 b )  |
  c2.  |
  g'2. ^\markup {\circle {2}}   |
  %10
  g2.  |
  g4 ( f ) e  |
  e4 d2  |
  a'4 a2  |
  g4 g2  |
  %15
  g8 ( f e4 d )  |
  c2. \fermata  |
  c2. ^\markup {\circle {3}}   |
  b2.  |
  c4. ( d8 ) e f  |
  %20
  g4 g,2  |
  f'4 f2  |
  e4 e2  |
  b8 ( d g4 g, )  |
  c2. \fermata  | }
}
\addlyrics
{
  Do -- o -- na
  no -- o -- bis
  pa_a -- cem --
  pa cem. --
  %05
  Do_o -- o -- -- na a --
  no_o -- -- bis
  pa_-_a_a_-_a
  cem.
  Do --
  %10
  na
  no_o -- bis --
  pa cem. --
  Do na --
  no bis --
  %15
  pa_-_a_a_-_a
  cem.
  Do --
  na
  no_o -- bi -- -- is
  %20
  pa -- cem.
  Do na --
  no bis --
  pa_-_a_a_-_a
  cem.
}

\score {
  \new StaffGroup {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \layout {}
}
\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \midi {}
}
