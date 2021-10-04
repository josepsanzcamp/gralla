\version "2.16.2"

\header {
  dedication=""
  title="El cantiret d'aigua"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="(cançó de Porqueres;"
  arranger="Pla de l'Estany)"
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
  r4 r8 g   |
  \repeat volta 2 { e'8. g16 f8 d  |
  c4. e8  |
  g8. f16 e8 f  |
  %05
  g4 e8 g,  |
  e'8. g16 e8 d  |
  c4. e8  |
  g8. f16 e8 d  |
  c4 e8 e  |
  %10
  d8 e f d  |
  e4 d8 e  |
  f8 g a b  |
  g8 e e e  |
  d8 e f d  |
  %15
  e4 d8 e  |
  f8 g e d }
  \alternative { { c4 r8 g }
  { c4 r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r4 r8 g  |
  \repeat volta 2 { c8. d16 c8 a  |
  g4. b8  |
  d8. c16 b8 c  |
  %05
  d4 b8 g  |
  c8. d16 b8 a  |
  g4. b8  |
  d8. c16 b8 a  |
  g4 b8 b  |
  %10
  a8 b c a  |
  b4 a8 b  |
  c8 d e fis  |
  d8 b b b  |
  a8 b c a  |
  %15
  b4 a8 b  |
  c8 d b a }
  \alternative { { g4 r8 g }
  { g4 r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"G" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"G" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="G"}
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

