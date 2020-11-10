\version "2.16.0"

\header {
  dedication="Tocs tradicionals"
  title="  "
  subtitle="Ball de valencians de Reus"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="El Baix Camp"
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative c''
{
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { c4 g \tempo 4 = 100  |
  c4 g  |
  c8 c16 d e8 e  |
  d8 d16 e g f e d  |
  %05
  c4 r8 e  |
  d8 e f d  |
  e8 e16 d e d e d  |
  e4 r  | }
  g4. f16 e  |
  %10
  d8 c b a  |
  g4. a16 b  |
  c8 d e f  |
  g8. f16 e8 d  |
  c4 g  |
  %15
  c4. d16 d  |
  e4. d16 d  |
  e4 r  |
  g4. f16 e  |
  d16 e c d b c a b  |
  %20
  g4. a16 b  |
  c8 d e f  |
  g8 f e d  |
  c4 g  |
  \mark "D.C." c4 r  |
  %25
  \time 3/8   \repeat volta 2 { g'8. f16 e8  |
  d8 g,4  |
  c8. d16 c8  |
  c8. c16 d8  |
  e8. f16 e8  |
  %30
  d8 g4  |
  e8. d16 c8  |
  c8 r4  |
  g'4 f8  |
  e8 c4  |
  %35
  d4 r8  |
  r8 g,16 a b g  |
  a8 a a  |
  g8 d'4  |
  c8. a16 g8  |
  %40
  g4.  |
  a8. b16 c8  |
  d8 g,4  |
  c4. ~  |
  c4.  | }
}

liniaroAb =
\relative e''
{
  \tempo 4 = 100
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { e4 f  |
  e4 d  |
  c8 e16 f g8 g  |
  f4 d8 e16 f  |
  %05
  e8 e e c  |
  b8 c d b  |
  c8 c16 b c b c b  |
  c4 r  | }
  g2  |
  %10
  a2  |
  b8. c16 d8 c16 d  |
  e8 f g f  |
  e8. d16 c8 b  |
  c4 g  |
  %15
  a4. b16 b  |
  c4. b16 b  |
  c4 r  |
  g2  |
  a2  |
  %20
  b8. c16 d8 c16 d  |
  e8 f g f  |
  e8. d16 c8 b  |
  c4 g  |
  c4 r  |
  %25
  \time 3/8   \repeat volta 2 { c4 c8  |
  b8. c16 d8  |
  e8. f16 e8  |
  e8 g4  |
  c,8. d16 c8  |
  %30
  b8 a b  |
  c8. b16 c8  |
  g8 a b  |
  c4 c8  |
  c8 g a  |
  %35
  b8. a16 g8  |
  g8 e'4  |
  f8. d16 c8  |
  b8 g' f  |
  e8. d16 e8  |
  %40
  e8 c4  |
  f8. d16 e8  |
  f8 d4  |
  e4. ~  |
  e4.  | }
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

