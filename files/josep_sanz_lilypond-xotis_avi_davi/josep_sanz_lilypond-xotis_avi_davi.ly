\version "2.14.2"

\header {
  title="Xotis Avi Davi"
  tagline=""
}

liniaroAa =
\relative a''
{
  \clef treble
  \key g \major
  \time 4/4
  \tempo 4.=120
  \bar "|:"
  d,4 d8. d16 e4 e8. g16
  d2. \times 2/3 { d8 d8 e8 }
  d4 c8. b16 d4 c4
  c4 b4 a4 g4
  d'4 d8. d16 e4 e8. g16
  d2. \times 2/3 { d8 d8 e8 }
  d4 c8. b16 d8 c8 b8 a8
  g4 b4 g4 r4
  \bar "||"
  d'4 d8. d16 e4 e8. g16
  d2. \times 2/3 { d8 d8 e8 }
  d4 c8. b16 d4 c4
  c4 b4 a4 g4
  d'4 d8. d16 e4 e8. g16
  d2. \times 2/3 { d8 d8 e8 }
  d4 c8. b16 d8 c8 b8 a8
  g4 b4 g4 r4
  \bar ":|"
  \key c \major
  r2 r2
  r2 r8 a8 b8 c8
  d4 r4 r2
  r2 r8 b8 c8 d8
  e4 r4 r2
  r2 r8 a,8 b8 c8
  e4 d4 c4 b4
  c4 e4 c4 r4
  \bar "||"
  r2 r2
  r2 r2
  r2 r2
  r2 r2
  r2 r2
  r2 r2
  r2 r2
  r2 r2
  \bar "||"
  r2 r2
  r2 r2
  r2 r2
  r2 r2
  r2 r2
  r2 r2
  r2 r2
  r2 r2
  \bar "||"
  r4 f,4 e2 ~
  e4 a4 g4 f4
  g2 f2
  e8 g8 c8 g8 e4 r4
  r4 f4 e2 ~
  e4 a4 g4 f4
  g2 g8 a8 g8 f8
  e4 g4 e4 r4
  \key g \major
  \bar "|:"
  d'4 d8. d16 e4 e8. g16
  d2. \times 2/3 { d8 d8 e8 }
  d4 c8. b16 d4 c4
  c4 b4 a4 g4
  d'4 d8. d16 e4 e8. g16
  d2. \times 2/3 { d8 d8 e8 }
  d4 c8. b16 d8 c8 b8 a8
  g4 b4 g4 r4
  \bar "||"
  d'4 d8. d16 e4 e8. g16
  d2. \times 2/3 { d8 d8 e8 }
  d4 c8. b16 d4 c4
  c4 b4 a4 g4
  d'4 d8. d16 e4 e8. g16
  d2. \times 2/3 { d8 d8 e8 }
  d4 c8. b16 d8 c8 b8 a8
  g4 b4 g4 r4
  \bar ":|"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
      >>
    }
    \layout {}
    \midi {}
  }
}
