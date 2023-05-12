\version "2.16.2"

\header {
  dedication=""
  title="Repeal of the licensig laws"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="The Pogues"
  arranger="grup Gralla de Boix"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r8 c16 d   |
  \time 2/4   \repeat volta 2 { e8 e e d   |
  c8 a g4  |
  c8. d16 e8 e  |
  %05
  d4. c16 d  |
  e8 e e d  |
  c8 a g4   |
  c8. d16  e8 d  |
  c4. c8  |
  %10
  d8 d d c16 d  |
  e8 e e4  |
  d8. c16 d8 e  |
  d4. c16 d  |
  e8 e e d  |
  %15
  c8 a g4  |
  c8. d16 e8 d }
  \alternative { { c4. c16 d }
  { c4. g'8 } }
  g4. a8  |
  %20
  g4. e8  |
  d8 c d e  |
  d4. g8  |
  g4. a8  |
  g4. e8  |
  %25
  d8 c c c  |
  c4. g'8  |
  g4. a8  |
  c4. a8  |
  g8 e d c  |
  %30
  d4. c16 d  |
  e8 e e d  |
  c8 a g4  |
  c8. d16 e8 d  |
  c2  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r8 r  |
  \time 2/4   \repeat volta 2 { c8 g a g  |
  c4 c  |
  c8. g16 a8 g  |
  %05
  b8 d c b  |
  c8 g a g  |
  c4 c  |
  c8. g16 b8 d  |
  c4. r8  |
  %10
  g4 ~ g8 r  |
  r8 g c e  |
  g,4 ~ g8 r  |
  b8 d c b  |
  c8 g a g  |
  %15
  c4 c  |
  c8. g16 b8 d }
  \alternative { { c4. r8 }
  { c4. e8 } }
  r8 e r e  |
  %20
  r8 e r e  |
  r8 e r e  |
  r8 b b4  |
  r8 e r e  |
  r8 e r e  |
  %25
  r8 e r e  |
  r8 b b4  |
  r8 e r e  |
  r8 e r e  |
  r8 e r e  |
  %30
  r8 b b4  |
  r8 e r e  |
  r8 e r e  |
  r8 e r e  |
  r8 c c4  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  R4  |
  \time 2/4   \repeat volta 2 { R2  |
  R2  |
  R2  |
  %05
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %10
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %15
  R2  |
  R2 }
  \alternative { { R2 }
  { r4 r8 g } }
  c4 g  |
  %20
  c4 g  |
  c4 g  |
  r8 g g4  |
  c4 g  |
  c4 g  |
  %25
  c4 g  |
  r8 g g4  |
  c4 g  |
  c4 g  |
  c4 g  |
  %30
  r8 g g4  |
  c4 g  |
  c4 g  |
  c4 g  |
  r8 g g4  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 1"}
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
  \header {instrument="Gralla 2"}
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

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {}
  }
}

