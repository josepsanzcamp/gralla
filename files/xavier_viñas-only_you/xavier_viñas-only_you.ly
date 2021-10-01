\version "2.16.2"

\header {
  dedication=""
  title="Only You"
  subtitle=""
  subsubtitle=""
  poet="The Flying Pickets"
  meter=""
  piece=""
  composer="arr. Miquel Benito i"
  arranger="Daniel Carbonell"
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
  \time 4/4
  \repeat volta 2 { e8 f g  e ~ e4 r  |
  e8 f g e ~ e4  r  |
  f8 e c g ~ g4 r }
  \alternative { { f'8 e c  g ~ g4 r }
  %05
  { f'8 e c g ~ g4 r } }
  \repeat volta 2 { e'8 e e e f e d c ~  |
  c8 c <c c> c b c b a ~  |
  a2 ~ a4 f'8 e  |
  e2 d4 r  |
  %10
  e8 e e e f e d c ~  |
  c4 c8 c b c b a ~  |
  a2 ~ a4 f'8 e  |
  e2 d4 r  |
  r4 f8 f f f e f  |
  %15
  e8 d4. d4 r  |
  r4 e8 e e e d e  |
  d8 c4. c4 r8 c  |
  f4 e d8 c4 d8 ~  |
  d2 r8 f e c ~  |
  %20
  c2. r4  |
  r1  | }
  e8 c r4 g'8 e r4  |
  f8 e c g r2  |
  f'8 e c a ~ a a g a  |
  %25
  f'8 e c g r2  |
  e'8 c r4 g'8 e r4  |
  f8 e c g r2  |
  f'8 e c a ~ a a g a  |
  f'8 e c g r2  |
  %30
  r4 f'8 f f f e f  |
  e8 d4. d4 r  |
  r4 e8 e e e d e  |
  d8 c4. c4 r8 c  |
  f4 e d8 c4 d8 ~  |
  %35
  d2 r8 f e c ~  |
  c1 ~  |
  c1 ~  |
  c1  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 2 { c1 ~  |
  c1 ~  |
  c1 ~ }
  \alternative { { c4 r r2 }
  %05
  { c1 } }
  \repeat volta 2 { c8 c c c b c b a ~  |
  a8 a a a g a g f ~  |
  f2 ~ f4 a8 b  |
  c2 b4 r  |
  %10
  c8 c c c b c b a ~  |
  a4 a8 a g a g f ~  |
  f2 ~ f4 a8 b  |
  c2 b4 r  |
  r4 a8 a a c c c  |
  %15
  c8 b4. b4 r  |
  r4 c8 c c c b c  |
  b8 a4. a4 r8 g  |
  c4 c b8 a4 b8 ~  |
  b2 r8 d c g ~  |
  %20
  g2. r4  |
  r1  | }
  r4 e'8 c r4 g'8 e  |
  r2 f8 e c g  |
  a8 c a f a c b c  |
  %25
  d8 c a c e d c b  |
  r4 e8 c r4 g'8 e  |
  r2 f,8 g a b  |
  a4. a8 c4. c8  |
  d8 c a b c4 g'8 fis  |
  %30
  f4. f8 d4. d8  |
  c4. c8 b4. b8  |
  a4. a8 g4. g8  |
  f4. f8 g4. g8  |
  a4 g f8 a4 b8 ~  |
  %35
  b2 r8 g a b  |
  c4. c8 c4. c8  |
  c4. c8 c4. c8  |
  e1  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 2 { g1 ~  |
  g1 ~  |
  g1 ~ }
  \alternative { { g4 r r2 }
  %05
  { g2 r8 g a b } }
  \repeat volta 2 { c4. c8 b4. b8  |
  a4. a8 g4. g8  |
  f4. f8 f4. f8  |
  c'2 g8 g a b  |
  %10
  c4. c8 b4. b8  |
  a4. a8 g4. g8  |
  f4. f8 f4. f8  |
  c'2 g4 g  |
  f1  |
  %15
  g2 r8 g a b  |
  c2 b  |
  a2 g  |
  f4. f8 f4. f8  |
  g4. g8 g4. g8  |
  %20
  c4. c8 c4. c8  |
  c4. c8 c g a b  | }
  c4. c8 b4. b8  |
  a4. a8 g4. g8  |
  f4. f8 f4. f8  |
  %25
  c'4. c8 g g a b  |
  c4. c8 b4. b8  |
  a4. a8 g4. g8  |
  f4. f8 f4. f8  |
  c'2 g4 g  |
  %30
  f1  |
  g2 r8 g a b  |
  c2 b  |
  a2 g  |
  f4. f8 f4. f8  |
  %35
  g4. g8 g4. g8  |
  g4. g8 g4. g8  |
  g4. g8 g4. g8  |
  c1  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAc
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

\bookpart {
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {}
  }
}

