\version "2.14.2"

\header {
  title="Tarantella"
  tagline=""
}

liniaroAa =
\relative a''
{
  \clef treble
  \key c \major
  \time 6/8
  \tempo 4.=160
  r4. a4 a8 |
  \bar "||"
  e4 e8 a4 a8  |
  e4. e4 e8  |
  f4 f8 f g f  |
  e4. e8 f e  |
  d4 d8 d e d  |
  c4. b4 c8  |
  e8 d c b c b  |
  a4. a'4 a8  |
  \bar "||"
  e4 e8 a4 a8  |
  e4. e4 e8  |
  f4 f8 f g f  |
  e4. e8 f e  |
  d4 d8 d e d  |
  c4. b4 c8  |
  e8 d c b c b  |
  a4. a4 b8  |
  \bar "||"
  c8 b c d c b  |
  c4 a8 a4 b8  |
  c8 b c d c d  |
  e4. e8 f e  |
  d4 d8 d e d  |
  c4. b4 c8  |
  e8 d c b c b  |
  a4. a4 b8  |
  \bar "||"
  c8 b c d c b  |
  c4 a8 a4 b8  |
  c8 b c d c d  |
  e4. e8 f e  |
  d4 d8 d e d  |
  c4. b4 c8  |
  e8 d c b c b  |
  a4. a8 c e  |
  \bar "||"
  a4. a  |
  a4. ~ a8 g f  |
  e8 f e d c b  |
  c8 e c a4.  |
  a'4 e8 a4 e8  |
  a4. ~ a8 g f  |
  e8 f e d c b  |
  a4. a8 c e  |
  \bar "||"
  a4. a  |
  a4. ~ a8 g f  |
  e8 f e d c b  |
  c8 e c a4.  |
  a'4 e8 a4 e8  |
  a4. ~ a8 g f  |
  e8 f e d c b  |
  a4. e'4 f8  |
  \bar "||"
  g8 e c g' e c  |
  g'4 g8 g a g  |
  f8 e f d e f  |
  g8 e c e~e f  |
  g8 e c g' e c  |
  g'4 g8 g a g  |
  b8 a g f e d
  c4. e4 f8  |
  \bar "||"
  g8 e c g' e c  |
  g'4 g8 g a g  |
  f8 e f d e f  |
  g8 e c e~e f  |
  g8 e c g' e c  |
  g'4 g8 g a g  |
  b8 a g f e d  |
  c4. r4.
  \bar "|."
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
