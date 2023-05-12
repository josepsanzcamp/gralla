\version "2.16.2"

\header {
  dedication=""
  title="Dansa Comarcal"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="F. Shubert"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  \times 2/3 { b8 c b }   |
  \time 3/4   \repeat volta 2 { a2. (  |
  d2 )  \times 2/3 { a8 ( b a } )  |
  b2. (  |
  %05
  g2 ) b4  |
  b2.  |
  d2 ( c4  )  |
  b2 ( a4 )  |
  b2 \times 2/3 { b8 ( c b } )  |
  %10
  a2. (  |
  d2 ) \times 2/3 { a8 ( b a } )  |
  b2. (  |
  g2 ) b4  |
  b2.  |
  %15
  d2 ( c4 )  |
  b2 ( a4 )  |
  b2 \times 2/3 { b8 ( c b } )  | }
  \repeat volta 2 { b2. (  |
  e2 ) \times 2/3 { b8 ( c b } )  |
  %20
  c2. (  |
  e2 ) c4  |
  d2.  |
  d2.  |
  d2. (  |
  %25
  g2 ) \times 2/3 { b,8 ( c b } )  |
  a2. (  |
  d2 ) \times 2/3 { a8 ( b a } )  |
  b2. (  |
  g2 ) b4  |
  %30
  b2.  |
  d2 ( c4 )  |
  b2 ( a4 ) }
  \alternative { { g2 \times 2/3 { b8 ( c b } ) }
  { g2 r4 } } \bar "||"
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
