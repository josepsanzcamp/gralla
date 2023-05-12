\version "2.16.2"

\header {
  dedication=""
  title="El submarino malvado"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Jaume Vidal"
  arranger="cercavila"
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
  \key g \major
  \time 2/4
  g8 g16 g g8 d'  |
  b4 r   |
  b8 b16 b b8 g'  |
  d4 r  |
  %05
  d8 d16 d d8 d   |
  d8 e fis e  |
  d8 c b a  |
  g4 r  |
  r8 g' ( fis a  |
  %10
  \repeat volta 2 { g4 d  |
  fis4 g  |
  \times 2/3 { e16 fis e } d4. ~  |
  d8 ) g fis a  |
  g4 d  |
  %15
  g4 e  |
  fis2 ~  |
  fis8 a, c d  |
  fis4 a8 g  |
  e4 c8 d  |
  %20
  fis8 e4. ~  |
  e8 d e fis  |
  d4. e8  |
  d4 c  |
  b2 ~  }
  %25
  \alternative { { b8 g' fis a }
  { b,8 b a b } }
  c2 ~  |
  c8 a b c  |
  d2 ~  |
  %30
  d8 e fis g  |
  c,8 c16 c c8 c  |
  c8 d e fis  |
  b,8 b16 b b8 b  |
  b8 b a b  |
  %35
  d4 c8 b  |
  c8 c b c  |
  e4 d8 cis  |
  d8 d g e  |
  fis4 e8 d  |
  %40
  c4 a  |
  g4 r  \bar "||"
  R2  |
  R2  |
  R2  |
  %45
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %50
  g'8 fis e fis  |
  g8 r r fis  |
  \times 2/3 { e16 fis e } d4. ~  |
  d4 r  |
  g8 fis e fis  |
  %55
  g8 r r e  |
  \times 2/3 { d16 e d } c4. ~  |
  c4 r  |
  fis8 e d fis  |
  fis8 r r e  |
  %60
  \times 2/3 { d16 e d } c4. ~  |
  c4 a8 c  |
  e4. fis8  |
  d4 e8 d  |
  b2 ~  |
  %65
  b4 r  |
  g'8 fis e fis  |
  g8 r r fis  |
  \times 2/3 { e16 fis e } d4. ~  |
  d4 r  |
  %70
  f8 e d e  |
  f8 r r e  |
  f4 g  |
  e2  |
  g8 e c e  |
  %75
  g4 r  |
  fis8 d b d  |
  fis4 r  |
  e8 d c d  |
  e2  |
  %80
  fis4. d8  |
  g2 ~  |
  g4 r  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  g8 g16 g g8 d'  |
  r8 g,16 g g4  |
  R2  |
  r8 b16 b b4  |
  %05
  b4 a  |
  b4 a  |
  d8 c b a  |
  g4 r  |
  r8 b d c  |
  %10
  \repeat volta 2 { b2  |
  d2  |
  c8 b4. ~  |
  b8 b d c  |
  b2  |
  %15
  b4 c  |
  d2 ~  |
  d8 a c b  |
  d2  |
  c4 a8 b  |
  %20
  c2 ~  |
  c8 b c d  |
  b2  |
  a2  |
  g2 ~ ( }
  %25
  \alternative { { g8 b d c }
  { g8 ) b a b } }
  a2 ~  |
  a8 a b c  |
  b2 ~  |
  %30
  b8 c d d  |
  c8 c16 c c8 c  |
  c8 b c d  |
  b8 b16 b b8 b  |
  b8 b a b  |
  %35
  b4 a8 g  |
  a8 a g a  |
  b4. c8  |
  d8 d g e  |
  d4 c8 b  |
  %40
  c4 a  |
  g4 r  \bar "||"
  g8 a16 b a8 g  |
  d'2  |
  g,8 a16 b a8 g  |
  %45
  a2  |
  c8 d16 c b8 a  |
  b4 d8 c  |
  a4 c8 b  |
  g4 r  |
  %50
  b8 d c c  |
  b8 r r d  |
  c8 b4. ~  |
  b4 r  |
  b8 d c c  |
  %55
  b8 r r c  |
  a2 ~  |
  a4 r  |
  d8 c b d  |
  d8 r r c  |
  %60
  b8 a4. ~  |
  a4 a8 a  |
  e'4. fis8  |
  d4 e8 d  |
  b2 ~  |
  %65
  b4 r  |
  g'8 fis e fis  |
  g8 r r fis  |
  c8 b4. ~  |
  b4 r  |
  %70
  g8 a b c  |
  d8 r r g,  |
  a4 b  |
  c2  |
  e8 c a c  |
  %75
  e4 r  |
  a,4 b  |
  d4 r  |
  c4 a  |
  e'2  |
  %80
  a,4. c8  |
  b2 ~  |
  b4 r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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

