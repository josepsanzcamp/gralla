\version "2.14.2"

\header {
  title="Shto Mi E Milo"
  tagline=""
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 7/8
  \tempo 4=120
  \repeat volta 2 {
  c4. e4 f4 |
  g4. g4 r4 |
  a4. g8 f8 e8 f8 |
  g4. g4 r4 |
  a4. g8 f8 e8 d8 |
  d4 c8 g'4 f4 |
  e4. d8 e8 d8 c8 |
  c4. c4 r4 |
  }
  \repeat volta 2 {
  c8 b8 c8 d4 d4 |
  d4. d4 r4 |
  e4. e8 d8 c8 d8 |
  e4. e4 r4 |
  g4. a8 g8 f8 e8 |
  d4 c8 g'4 f4 |
  e4. d8 e8 d8 c8 |
  c4. c4 r4
  }
}

liniaroAb =
\relative g'
{
  \clef treble
  \key c \major
  \time 7/8
  \tempo 4=120
  \repeat volta 2 {
  c4. c4 d4 |
  e4. e4 r4 |
  f4. e8 d8 c8 d8 |
  e4. e4 r4 |
  f4. e8 d8 c8 b8 |
  b4 c8 e4 d4 |
  c4. b8 c8 b8 g8 |
  g4 c8 c4 r4 |
  }
  \repeat volta 2 {
  c8 b8 c8 d4 c4 |
  b4. b4 r4 |
  c4. c8 b8 a8 b8 |
  c4. c4 r4 |
  e4. f8 e8 d8 c8 |
  b4 c8 e4 d4 |
  c4. b8 c8 b8 g8 |
  g4 c8 c4 r4
  }
}

\bookpart {
  \score { \unfoldRepeats
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
  \header {instrument="Gralla 1"}
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 2"}
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
    \midi {}
  }
}
