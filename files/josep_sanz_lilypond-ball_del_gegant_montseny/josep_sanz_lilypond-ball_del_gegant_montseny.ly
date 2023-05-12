\version "2.14.2"

\header {
  title="Ball del Gegant Montseny"
  subtitle="(Cardedeu)"
  tagline=""
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 2/4
  \tempo 4=120
  r4. a8 |
  a8. g16 a8 b8 |
  c4 a8 e'8 |
  d8. c16 b8 a8 |
  % 5
  g4. a8 |
  a8. g16 a8 b8 |
  c4 a8 e'8 |
  d8. c16 b8 c8 |
  d4. e8 |
  % 10
  d8. c16 b8 c8 |
  d4 a8 a8 |
  a8. g16 a8 b8 |
  c4. c8 |
  c8. b16 c8 d8 |
  % 15
  e4 e8 f8 |
  e8. d16 c8 b8 |
  a4. e'8 |
  d8. c16 b8 c8 |
  d4 a8 e'8 |
  % 20
  d8. c16  b8 c8 |
  d4. a8 |
  a8. g16 a8 b8 |
  c4 a8 e'8 |
  d8. c16 b8 c8 |
  % 25
  a4. r8
  \bar "||"
}

liniaroAb =
\relative g'
{
  \clef treble
  \key c \major
  \time 2/4
  \tempo 4=120
  r4. c8 |
  c8. b16 c8 d8 |
  e4 c8 g'8 |
  f8. e16 d8 c8 |
  % 5
  b4. c8 |
  c8. b16 c8 d8 |
  e4 c8 g'8 |
  f8. e16 d8 e8 |
  f4. g8 |
  % 10
  f8. e16 d8 e8 |
  f4 c8 c8 |
  c8. b16 c8 d8 |
  e4. e8 |
  e8. d16 e8 f8 |
  % 15
  g4 g8 a8 |
  g8. f16 e8 d8 |
  c4. g'8 |
  f8. e16 d8 e8 |
  f4 c8 g'8 |
  % 20
  f8. e16  d8 e8 |
  f4. c8 |
  c8. b16 c8 d8 |
  e4 c8 g'8 |
  f8. e16 d8 e8 |
  % 25
  c4. r8
  \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
    \midi {}
  }
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

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
    \midi {}
  }
}
