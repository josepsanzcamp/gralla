\version "2.22.1"

\header {
  dedication="Ball de gegants"
  title="   "
  subtitle="Gegants de Benetússer"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Emili Borja Reig"
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
  \time 1/8
  e16 d  |
  \time 2/4   \repeat volta 2 { c8. b16 a8 g  |
  a8 a a e'16 d  |
  c8. b16 a8 g  |
  %05
  a4 r8 e'16 d  |
  c8. b16 a8 g  |
  a8 a a e'16 d  |
  c8. b16 a8 g  |
  a4 r8 g16 a  |
  %10
  b8. a16 g8 a  |
  b8 b b e16 d  |
  c8. b16 a8 g  |
  a4 r8 g16 a  |
  b8. a16 g8 a  |
  %15
  b8 b b e16 d  |
  c8. a16 b8 g }
  \alternative { { a4 r8 e'16 d }
  { a2 ~ } }
  a2  |
  %20
  r2  |
  \repeat volta 2 { a8 e' e d  |
  c8. b16 a8 g  |
  g16 a b c b8 c  |
  a16 b a g a8 a  |
  %25
  a8 e' e d  |
  c8. b16 a8 g  |
  g16 a b c b8 c }
  \alternative { { a2 }
  { a4 r8 e' } }
  %30
  \repeat volta 2 { a8. g16 fis8 d  |
  g8. f16 e8 c  |
  a16 b c d e8 f  |
  e8. d16 e8 e  |
  a8. g16 fis8 d  |
  %35
  g8. f16 e8 c  |
  a16 b c d e8 c }
  \alternative { { a4 r8 e' }
  { a,2 ~ } }
  a2  |
  %40
  r2  |
  e'16 f e d e8 c  |
  a16 b a g a4  |
  e'16 f e d c d c b  |
  a16 b a g a4  |
  %45
  e'16 f e d e8 c  |
  a16 b a g a4  |
  e'16 f e d c d c b  |
  a16 b a g a4 ~  |
  a2 ~  |
  %50
  a2  |
  r2  |
  r4 r8 e'16 c  |
  \repeat volta 2 { a8. b16 c8 d  |
  e8. f16 g8 f  |
  %55
  e8. d16 c8 b  |
  d8. c16 a8 e'16 c  |
  a8. b16 c8 d  |
  e8. f16 g8 f  |
  e8. d16 c8 b }
  %60
  \alternative { { a4 r8 e'16 c }
  { a4 r8 e' } }
  a4. g8  |
  fis4. d8  |
  g4. f8  |
  %65
  e2  |
  e8 c16 d e8 f  |
  e4 d  |
  d8. c16 b8 c  |
  a4 r8 e'16 d _"Comic Sans MS"  |
  %70
  c8. _"accelerando" d16 e8 f  |
  e4 d8 d16 c  |
  b8. c16 d8 e  |
  d4 c8 e16 d  |
  c8. d16 e8 f  |
  %75
  e4 d8 d16 c  |
  b8. c16 d8 e  |
  c4 r8 e16 d  |
  c8. d16 e8 f  |
  e4 d8 d16 c  |
  %80
  b8. c16 d8 e  |
  d4 c8 e16 d  |
  c8. d16 e8 f  |
  e4 d8 d16 c  |
  b8. c16 a8 g  |
  %85
  a2 ~  |
  a2  \bar "|."
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g16 f  |
  \time 2/4   \repeat volta 2 { e8. d16 c8 b  |
  <c e>8 <c e> <c e> g'16 f  |
  e8. d16 c8 b  |
  %05
  <c e>4 r8 g'16 f  |
  e8. d16 c8 b  |
  <c e>8 <c e> <c e> g'16 f  |
  e8. d16 c8 b  |
  <c e>4 r8 b16 c  |
  %10
  d8. c16 b8 c  |
  d8 d d g16 f  |
  e8. d16 c8 b  |
  <c e>4 r8 b16 c  |
  d8. c16 b8 c  |
  %15
  d8 d d g16 f  |
  e8. c16 d8 b }
  \alternative { { <c e>4 r8 g'16 f }
  { <c e a>2 ~ ~ ~ } }
  <c e a>2  |
  %20
  r2  |
  \repeat volta 2 { c8 g' g f  |
  e8. d16 c8 b  |
  b16 c d e d8 e  |
  c16 d c b c8 c  |
  %25
  c8 g' g f  |
  e8. d16 c8 b  |
  b16 c d e d8 e }
  \alternative { { c2 }
  { c4 r8 a } }
  %30
  \repeat volta 2 { c8. b16 a8 g  |
  d'8. c16 b8 a  |
  g8. a16 b8 c  |
  a8. g16 a8 a  |
  c8. b16 a8 g  |
  %35
  d'8. c16 b8 a  |
  g8. a16 b8 g }
  \alternative { { a4 r8 a }
  { a2 ~ } }
  a2  |
  %40
  r2  |
  c'4 b  |
  a8 g a4  |
  c4 b  |
  a16 b a g a4  |
  %45
  c4 b  |
  a8 g a4  |
  c4 b  |
  a16 b a g a4 ~  |
  a2 ~  |
  %50
  a2  |
  r2  |
  r4 r8 g16 e  |
  \repeat volta 2 { c8. d16 e8 f  |
  g8. a16 b8 a  |
  %55
  g8. f16 e8 d  |
  f8. e16 c8 g'16 e  |
  c8. d16 e8 f  |
  g8. a16 b8 a  |
  g8. f16 e8 d }
  %60
  \alternative { { c4 r8 g'16 e }
  { <c e>4 r } }
  r2  |
  r2  |
  r2  |
  %65
  r2  |
  g'8 e16 f g8 a  |
  g4 f  |
  f8. e16 d8 e  |
  a4 r8 g16 f  |
  %70
  e8. f16 g8 a  |
  g4 f8 f16 e  |
  d8. e16 f8 g  |
  f4 e8 g16 f  |
  e8. f16 g8 a  |
  %75
  g4 f8 f16 e  |
  d8. e16 f8 g  |
  e4 r8 g16 f  |
  e8. f16 g8 a  |
  g4 f8 f16 e  |
  %80
  d8. e16 f8 g  |
  f4 e8 g16 f  |
  e8. f16 g8 a  |
  g4 f8 f16 e  |
  d8. e16 <c a'>8 <b g'>  |
  %85
  <c a'>2 ~ ~  |
  <c a'>2  \bar "|."
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

