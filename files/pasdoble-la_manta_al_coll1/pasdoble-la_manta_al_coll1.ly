\version "2.22.1"

\header {
  dedication="Pasdoble"
  title="   "
  subtitle="La manta al coll"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="País Valencià"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  e8 e d  |
  \time 2/4   \mark \markup {\musicglyph #"scripts.segno"} c2 ~  |
  c8 b a g  |
  b2 ~  |
  %05
  b8 f' f e  |
  d2 ~  |
  d8 c b a  |
  c2 ~  |
  c8 e e d  |
  %10
  c2 ~  |
  c8 c d e  |
  f2 ~  |
  f8 f g f  |
  e8 e f e  |
  %15
  d8 f e d  |
  c4 g8 a16 b  \bar "||"
  \mark "Fine" c8 c g c  |
  e4 g,8 a16 b  |
  c8 c g c  |
  %20
  e4 r8 g,  \bar "||"
  g8 e' e8. d16  |
  d8 c4 c8  |
  d8 c d8. c16  |
  c8 b4 g8  |
  %25
  g8 d' d8. c16  |
  c8 b4 b8  |
  c8 b c8. b16  |
  a8 g4 g8  |
  g8 e' e8. d16  |
  %30
  d8 c4 c8  |
  d8 c d e  |
  f4 r8 f16 f  |
  f8 f g f  |
  e8 e f e  |
  %35
  d8 f e d  |
  \mark "D.S. al Fine" c8 e e d  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  r4 r8  |
  \time 2/4   r8 e g e  |
  c8 r r4  |
  r8 d f d  |
  %05
  b8 r r4  |
  r8 f' a f  |
  d8 r r4  |
  r8 e g e  |
  c8 r r4  |
  %10
  r8 e g e  |
  c8 r r4  |
  r8 a'16 a a8 a  |
  c8 c b a  |
  g8 g a g  |
  %15
  f8 a g f  |
  e4 g,8 a16 b  \bar "||"
  c8 c g c  |
  e4 g,8 a16 b  |
  c8 c g c  |
  %20
  e4 r8 g,  \bar "||"
  g8 c c8. b16  |
  b8 a4 a8  |
  b8 a b8. a16  |
  a8 g4 g8  |
  %25
  g8 f' f8. e16  |
  e8 d4 d8  |
  e8 d e8. d16  |
  d8 c4 g8  |
  g8 g' g8. f16  |
  %30
  f8 e4 e8  |
  f8 e f g  |
  a4 r8 a16 a  |
  a8 a b a  |
  g8 g a g  |
  %35
  f8 a g f  |
  e8 r r4  \bar "|."
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
  }
  \score { \unfoldRepeats
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
  \header {instrument="Gralla 2"}
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

