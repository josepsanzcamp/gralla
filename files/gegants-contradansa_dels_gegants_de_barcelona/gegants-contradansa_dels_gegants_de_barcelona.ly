\version "2.16.0"

\header {
  dedication="Gegants"
  title="         "
  subtitle="Contradansa dels gegants de Barcelona"
  subsubtitle="versió per als grallers de Sant Antoni"
  poet=""
  meter=""
  piece=""
  composer="Arr. Josep M. Mayol"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 6/8   \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} c4 g8 e'4 c8  |
  g'4. f8 e d  |
  c4 c8 c d e  |
  %05
  d4 b8 g4 g8  |
  c4 g8 e'4 c8  |
  g'4. f8 e d  |
  c4 c8 d e d }
  \alternative { { c4. ~ c8 r g }
  %10
  { \mark "Fine" c4. ~ c8 r e } }
  \repeat volta 2 { d4 b8 g4 e'8  |
  d4 b8 g4 e'8  |
  d4 d8 d e fis  |
  a4 g8 d4 e8  |
  %15
  d4 b8 g4 e'8  |
  d4 b8 g4 e'8  |
  d4 d8 d e fis }
  \alternative { { g4. g8 r e }
  { \mark "D.S. al Fine" g4. g8 r g, } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 6/8   \repeat volta 2 { c4 g8 c4 g8  |
  c4. d8 c b  |
  c4 c8 a b c  |
  %05
  b4 b8 g4 g8  |
  c4 g8 c4 g8  |
  c4 c8 d c b  |
  a4 c8 c4 b8 }
  \alternative { { g4. ~ g8 r g }
  %10
  { g4. ~ g8 r c } }
  \repeat volta 2 { b8 r r r4 c8  |
  b8 r r r4 b8  |
  a4 a8 d4. ~  |
  d4. ~ d8 r c  |
  %15
  b8 r r r4 c8  |
  b8 r r r g a  |
  b8 c b a4 d8 }
  \alternative { { g,4. g8 r c }
  { g4. g8 r g } } \bar "||"
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 6/8   \repeat volta 2 { e4 e8 g4 f8  |
  e4. g4 g8  |
  a4 e8 fis4 fis8  |
  %05
  g4 a8 g4 f8  |
  e4 e8 g4 f8  |
  e4. g4 e8  |
  f8 g a g4 g8 }
  \alternative { { e4. ~ e8 r g }
  %10
  { e4. ~ e8 r r } }
  \repeat volta 2 { r4 fis8 g r r  |
  r4 fis8 g4 g8  |
  g4 g8 fis g a  |
  c4 b8 b r r  |
  %15
  r4 fis8 g r r  |
  r4 fis8 g4 g8  |
  g4 g8 fis g a }
  \alternative { { b4. b8 r r }
  { b8 c b a g f } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
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
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {}
  }
}

