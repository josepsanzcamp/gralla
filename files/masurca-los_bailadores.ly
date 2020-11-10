\version "2.16.0"

\header {
  dedication="Masurca"
  title="   "
  subtitle="Los Bailadores"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="dels grallers vells de Reus"
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
  \time 3/4
  g4 a8 b c d  |
  e8 r e4. d8  |
  d8 r c4. b8  |
  d8 r f,2  |
  %05
  f4 g8 a b c  |
  d8 r d4. c8  |
  c8 r b4. b8  |
  e,2.  |
  g4 a8 b c d  |
  %10
  e8 r e4. e8  |
  e8 r b4. d8  |
  d8 r c2  |
  f8 e d c b a  |
  a16-> r g8-> g4. c8->  |
  %15
  c16-> r b8 b4. d8  |
  \mark "Fine" c8 r c4 r  \bar "||"
  g4 a8 b c d  |
  e8 r e2  |
  e8 g c, e g, c  |
  %20
  b4 a2  |
  f4 g8 a b c  |
  d8 r d2  |
  d8 f b, d f, b  |
  a4 g2  |
  %25
  g4 a8 b c d  |
  e8 r e2  |
  g,8 a b c d e  |
  d8 r c2  |
  f8 e d c b a  |
  %30
  a16 r g8 g2  |
  d'8 c b a g f  |
  \mark "D.C. al Fine" e8 r e4 r  \bar "|."
}

liniaroAb =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  e4 e8 e e f  |
  g8 r g4. g8  |
  e8 r e4. e8  |
  f8 r d2  |
  %05
  d4 e8 f g a  |
  b8 r b4. a8  |
  a8 r g4. g8  |
  c,2.  |
  e4 e8 e e f  |
  %10
  g8 r g4. g8  |
  gis8 r gis4. gis8  |
  b8 r a2  |
  d8 c b a g f  |
  f16-> r e8-> e4. a8->  |
  %15
  a16-> r g8 g4. f8  |
  e8 r e4 r  \bar "||"
  e4 f8 g a b  |
  c8 r c2  |
  c8 e g, c e, g  |
  %20
  g4 f2  |
  d4 e8 f g a  |
  b8 r b2  |
  b8 d g, b d, g  |
  f4 e2  |
  %25
  e4 f8 g a b  |
  c8 r c2  |
  e,8 f g a b c  |
  b8 r a2  |
  d8 c b a g f  |
  %30
  f16 r e8 e2  |
  b'8 a g f e d  |
  c8 r c4 r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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
  \header {instrument="Gralla 2"}
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

