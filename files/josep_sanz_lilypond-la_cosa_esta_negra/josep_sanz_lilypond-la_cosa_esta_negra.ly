\version "2.14.2"

\header {
  title="La cosa esta negra"
  tagline=""
}

liniaroAa =
\relative g'
{
  \clef treble
  \key g \major
  \time 2/4
  \tempo 4=120
  r4. e'8  |
  \bar "||"
  a,8. a8. e'8  |
  d8. d8. e8  |
  c8. c8. e8  |
  d4. e8  |
  a,8. a8. e'8  |
  d8. d8. e8  |
  c8. c8. b8  |
  a4. e'8  |
  \bar "||"
  a,8. a8. e'8  |
  d8. d8. e8  |
  c8. c8. e8  |
  d4. e8  |
  a,8. a8. e'8  |
  d8. d8. e8  |
  c8. c8. b8  |
  a2   |
  \bar "||"
  a2  |
  b2  |
  c2  |
  d4. e8  |
  a,2  |
  b2  |
  c8. c8. b8  |
  a2   |
  \bar "||"
  a2  |
  b2  |
  c2  |
  d4. e8  |
  a,2  |
  b2  |
  c8. c8. b8  |
  a2   |
  \bar "|."
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
