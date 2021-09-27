\version "2.16.2"

\header {
  dedication=""
  title="Aria de la Sonata de Violone"
  subtitle=""
  subsubtitle=""
  poet="(Gralla)"
  meter=""
  piece=""
  composer="Giovanino, (S. XVII)"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r4  r8 g c8. c16 d8. d16    |
  \repeat volta 2 { e8 c r d e f16 g f8. e16   |
  d4 r8 g, c8. c16 d8. d16  |
  e8 c r d e f16 g f8. e16   |
  %05
  d4 r8 g, c16 b c d c a b c  |
  d16 c d e d b c d e d e f e c d e  |
  f16 e f g f d e f g4 r8 g,  |
  c16 b c d c a b c d c d e d b c d  |
  e16 d e f e c d e f e f g f d e f  |
  %10
  g4 r8 c c8. b16 ( b8. ) a16   |
  a8. ( g16 ) g8.  f16 e d e f d8. c16  |
  c4 r8 c' c8. ( b16 ) b8.  a16  |
  a8. g16 ( g8. f16 ) e  d e f d8. c16 }
  \alternative { { c4 r8 g c8. c16 d8. d16 }
  %15
  { c2 r } } \bar "||"
}

\score {
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Tible" shortInstrumentName = #"T"} \liniaroAa
    >>
  }
  \layout {}
}
\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Tible" shortInstrumentName = #"T"} \liniaroAa
    >>
  }
  \midi {}
}
