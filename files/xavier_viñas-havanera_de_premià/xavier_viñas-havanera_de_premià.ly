\version "2.16.2"

\header {
  dedication=""
  title="Havanera de Premià"
  subtitle=""
  subsubtitle=""
  poet="adaptació a gralla"
  meter="Xavier Viñas"
  piece=""
  composer="Rafael Sala i Jaume Arnella"
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
  \time 2/4
  r4 r8  g   |
  \repeat volta 2 { e'8. d16 c8 b16 a  |
  f8. g16 a8 b16 c  |
  b8. a16 g8 b   |
  %05
  e,4. g8  |
  e'8. e16 e8 d16 e  |
  g16 f8. r8 a,16 c  |
  b8. b16 c8 d  |
  e4. e8  |
  %10
  d8. c16 d8 c16 a  |
  b8. a16 g8 g16 b  |
  d8. g,16 e'8 d  |
  c4. e8  |
  f8. d16 d8 f  |
  %15
  g8. f16 e8 g  |
  c8. c16 b8 a  |
  g4. e8  |
  f8. d16 d8 f  |
  g8. f16 e8 e16 g  |
  %20
  b8. a16 g8 <f b>  |
  <e c'>4 r8 e  |
  d16 e8 f16 g8 a  |
  a16 g8 f16 e8 c  |
  a16 b8 c16 f8 a  |
  %25
  g8. f16 e4  |
  f16 a8 g16 f8 d  |
  e16 f g8 ~ g16 e f g  |
  g,4. g8  |
  <c g'>2  \bar "|." }
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r4 r8 g  |
  \repeat volta 2 { e'8. d16 c8 b16 a  |
  f8. g16 a8 b16 c  |
  b8. a16 g8 b  |
  %05
  e,4. g8  |
  e'8. e16 e8 d16 e  |
  g16 f8. r8 a,16 c  |
  b8. b16 c8 d  |
  e4. e8  |
  %10
  d8. c16 d8 c16 a  |
  b8. a16 g8 g16 b  |
  d8. g,16 e'8 d  |
  c4. c8  |
  d8. b16 b8 d  |
  %15
  e8. d16 c8 e  |
  a8. a16 g8 f  |
  e4. c8  |
  d8. b16 b8 d  |
  e8. d16 c8 c16 e  |
  %20
  g8. f16 e8 f  |
  g8 r4 r8  | % kompletite
  R2  |
  R2  |
  R2  |
  %25
  R2  |
  R2  |
  R2  |
  R2  |
  R2  \bar "|." }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
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
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
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
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
  }
}

