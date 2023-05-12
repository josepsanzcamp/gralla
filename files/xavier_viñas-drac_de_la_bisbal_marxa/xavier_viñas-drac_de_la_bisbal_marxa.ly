\version "2.16.2"

\header {
  dedication=""
  title="El Drac de la Bisbal"
  subtitle="marxa"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="grup gralla de Boix"
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
  b8. c16  |
  \time 2/4   \repeat volta 2 { d8.  d16 b8. c16   |
  d8. d16 \times 2/3 { d8 e d }  |
  c8.  c16 \times 2/3 { c8 d c }  |
  %05
  b4 b8. c16  |
  d8. d16 b8. c16  |
  d8. d16 \times 2/3 { d8 e d }  |
  c8. c16 \times 2/3 { c8 d c }  |
  b4 c8. d16  |
  %10
  e4 e  |
  e4 fis8. e16  |
  d4 d  |
  d4 c8. b16  |
  a4 c  |
  %15
  d8. e16 fis8. d16  |
  g4 d }
  \alternative { { g4 b,8. c16 }
  { g'4 r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  g8. a16  |
  \time 2/4   \repeat volta 2 { b8. b16 g8. a16  |
  b8. b16 \times 2/3 { b8 c b }  |
  a8. a16 \times 2/3 { a8 b a }  |
  %05
  g4 g8. a16  |
  b8. b16 g8. a16  |
  b8. b16 \times 2/3 { b8 c b }  |
  a8. a16 \times 2/3 { a8 b a }  |
  g4 a8. b16  |
  %10
  c4 a8. b16  |
  c4 d8. c16  |
  b4 g8. a16  |
  b4 a8. g16  |
  a2  |
  %15
  a8. c16 d8. a16  |
  b4 b }
  \alternative { { b4 g8. a16 }
  { b4 r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
  }
}

