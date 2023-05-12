\version "2.14.2"

\header {
  title="Vesprades"
  tagline=""
}

liniaroAa =
\relative a''
{
  \clef treble
  \key c \major
  \time 2/4
  \tempo 4.=120
  r4 g,4
  \bar "|:"
  c2
  e8. d16 c8. a16
  g2
  e'2
  e4 f8. e16
  d4 c4
  b2 ~
  b4 g4
  d'2
  f8. e16 d8. c16
  b2
  d4 g,8. a16
  b4 c4
  d4 dis4
  e2 ~
  e4 g,4
  c2
  e8. d16 c8. a16
  g2
  e'2
  e8. c16 b8. c16
  d4 e4
  f2 ~
  f4 a,8. c16
  f2 ~
  f4 a,8. c16
  e2 ~
  e4 g,8. b16
  d4 f8. e16
  d4 b4
  \bar "||"
  c2 ~
  c4 g4
  \bar ":|:"
  c2
  e8. d16 c8. a16
  g2
  e'2
  e4 f8. e16
  d4 c4
  b2 ~
  b4 g4
  d'2
  f8. e16 d8. c16
  b2
  d4 g,8. a16
  b4 c4
  d4 dis4
  e2 ~
  e4 g,4
  c2
  e8. d16 c8. a16
  g2
  e'2
  e8. c16 b8. c16
  d4 e4
  f2 ~
  f4 a,8. c16
  f2 ~
  f4 a,8. c16
  e2 ~
  e4 g,8. b16
  d4 f8. e16
  d4 b4
  \bar "||"
  c2 ~
  c4 r4
  \bar ":|"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
      >>
    }
    \layout {}
    \midi {}
  }
}
