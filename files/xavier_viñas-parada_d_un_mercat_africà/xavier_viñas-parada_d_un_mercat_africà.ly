\version "2.16.2"

\header {
  dedication=""
  title="Parada d'un mercat africà"
  subtitle=""
  subsubtitle=""
  poet="adaptació a gralla"
  meter="Xavier Viñas"
  piece=""
  composer="(Dharma)"
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
  r4 r  r g8 c   |
  \repeat volta 2 { e8 e4 e2 d8  |
  f4 e d c  |
  d4. c8 e4 d8 e  }
  %05
  \alternative { { c2 r4 g8 c }
  { c2 r4 r } }
  g'8 g4 g2 e8  |
  a4 g f e  |
  d4. c8 d4 c8 d  |
  %10
  b2 r4 g8 c  |
  e8 e4 e2 d8  |
  f4 e d c  |
  d4. c8 e4 d8 e  |
  c2 r  |
  %15
  \mark \markup {\musicglyph #"scripts.segno"} g8 e'4 ~ e16 dis e2  |
  dis8 dis e4 dis8 dis dis4  |
  d4 g,8 e'4 ~ e16 dis e4  |
  dis8 dis e4 dis d ~  |
  d4 g,8 e'4 ~ e16 dis e4  |
  %20
  dis8 dis e4 dis8 dis dis4  |
  d4 g,8 e'4 ~ e16 dis e4  |
  dis8 dis e4 dis d ~  |
  d4 g,8 e'4 ~ e16 dis e4  |
  dis8 dis e4 dis8 dis dis4  |
  %25
  d4 g,8 e'4 ~ e16 dis e4  |
  f4 fis2 g,8 c  |
  \repeat volta 2 { e8 e4 e2 d8  |
  f4 e d c  |
  d4. c8 e4 d8 e }
  %30
  \alternative { { c2 r4 g8 c }
  { c2 r4 r } }
  g'8 g4 g2 e8  |
  a4 g f e  |
  d4. b8 d4 c8 d  |
  %35
  b2 r4 g8 c  |
  e8 e4 e2 d8  |
  f4 e d c  |
  d4. c8 e4 d8 e  |
  \mark "D.S." c2 r  \bar "|."
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
