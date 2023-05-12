\version "2.16.2"

\header {
  dedication=""
  title="NIÑA HECHICERA (masurca)"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="pericon"
  arranger="(A. Falques arr J. Vidal)"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  e2.  |
  f2.   |
  e4 d c  |
  d2 dis4  |
  %05
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} e4 c4. g8  |
  a4 g4. e'8  |
  e4  d ^\markup {\box {Z}} c  |
  c4 b2  |
  f'4. e8 d c  |
  %10
  d4. c8 b a  |
  b4. d8 c b  |
  a4 g2  |
  e'4 c4. g8  |
  a4 g4. e'8  |
  %15
  e4 d e  |
  f4 a,2  |
  f'4. f8 e d  |
  e4. e8 d c  |
  d4. f8 e d  |
  %20
  c4 c r  | }
  \repeat volta 2 { e2.  |
  c2.  |
  g8 a b c d e  |
  f2.  |
  %25
  f4 d b  |
  g2.  |
  g8 a b c d dis  |
  e2.  |
  g2.  |
  %30
  e2.  |
  g,8 a b c d e  |
  f4 a,2  |
  c4 b a  |
  a4 g8 g c e  |
  %35
  g4 g8 f e d  |
  \mark "Fine" c4 c r  | }
  \repeat volta 2 { d8 e d b e b  |
  d4 c2  |
  fis8 g fis e fis g  |
  %40
  a8 g fis e d4  |
  d8 e d b e b  |
  d4 c2  |
  fis8 e d fis b a  |
  g4 g r  | }
  %45
  r2 r4  |
  r2 r4  |
  r2 r4  |
  \mark "D.S. al Fine" r2 r4  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  <c e>4 g2  |
  d'4 a2  |
  g4 b g  |
  b2 a4  |
  %05
  \repeat volta 2 { g2.  |
  a4 g2  |
  c4 b a  |
  g4 g2  |
  d'4. c8 b a  |
  %10
  b4. a8 g a  |
  g4. b8 a <g b>  |
  a4 g2  |
  g2.  |
  a4 g2  |
  %15
  c4 b c  |
  d4 a2  |
  d4. d8 c b  |
  c4. c8 b a  |
  b4. g8 a b  |
  %20
  c4 c r  | }
  \repeat volta 2 { c4 g c  |
  a4 g a  |
  g8 a g a b c  |
  d2.  |
  %25
  d4 b g  |
  g2.  |
  g8 a g a b b  |
  c2.  |
  g2 b4  |
  %30
  c2.  |
  g8 a g a b c  |
  d4 a2  |
  g2 a4  |
  a4 g8 g g c  |
  %35
  g4. g8 a b  |
  c4 c r  | }
  \repeat volta 2 { b8 c b g c g  |
  b4 a2  |
  a4 c d  |
  %40
  fis8 e d c b4  |
  b8 c b g c g  |
  b4 a2  |
  d8 c b d d c  |
  b4 b r  | }
  %45
  g8 a g4 r  |
  g8 a g4 r  |
  g8. a16 g8. a16 g8. a16  |
  b4 g r  \bar "|."
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

