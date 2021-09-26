\version "2.16.2"

\header {
  dedication=""
  title="Com Goses?"
  subtitle="Mesclat"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Veus saxos: Perepau Jiménez,"
  arranger="per als grallers de Cassà. 2005"
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
  \time 2/4
  \repeat volta 2 { e4 e  |
  e4.  c8  |
  d4  c8 c  |
  r8 g4.  |
  %05
  e'4 e  |
  e4. c8  |
  d4  c8 b ~  |
  b2  |
  b4 b  |
  %10
  b4. c8  |
  d4 c8 b ~  |
  b2  |
  e4 e  |
  e4. e8  |
  %15
  d4 d8 c ~  |
  c2  | }
  a'8 a a a  |
  c8 a4.  |
  g8 g g g  |
  %20
  c8 g4.  |
  f8 f f f  |
  f8 f4 f8  |
  a8 g4 fis8  |
  g2  |
  %25
  a8 a a a  |
  c8 a4.  |
  g8 g g g  |
  c8 g4.  |
  f8 f f f  |
  %30
  f8 f4 f8  |
  a8 g4 fis8  |
  g2  \bar "|."
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 2/4
  \repeat volta 2 { a8 g fis e  |
  d4 fis8 fis  |
  r4 d  |
  cis8 r e4  |
  %05
  r4 e  |
  a8 r e e  |
  r4 cis  |
  b8 r e4  |
  r4 cis  |
  %10
  b8 r e e  |
  r4 d  |
  b8 r e4  |
  r4 cis  |
  b8 r e e  |
  %15
  r4 e  |
  cis8 e fis gis  | }
  d'8 d d d  |
  fis8 d4.  |
  cis8 cis cis cis  |
  %20
  e8 cis4.  |
  b8 b b b  |
  b8 b4 b8  |
  d8 cis4 c8  |
  cis2  |
  %25
  d8 d d d  |
  fis8 d4.  |
  cis8 cis cis cis  |
  e8 cis4.  |
  b8 b b b  |
  %30
  b8 b4 b8  |
  d8 cis4 c8  |
  cis2  \bar "|."
}

liniaroAc =
\relative fis'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { fis8 g fis e  |
  d4 g8 g  |
  r4 d  |
  d8 r fis4  |
  %05
  r4 fis  |
  d8 r fis fis  |
  r4 d  |
  a8 r e'4  |
  r4 d  |
  %10
  cis8 r g' g  |
  r4 e  |
  a,8 r e'4  |
  r4 d  |
  cis8 r g' g  |
  %15
  r4 e  |
  d8 e d e  | }
  b'8 b b b  |
  d8 b4.  |
  a8 a a a  |
  %20
  d8 a4.  |
  g8 g g g  |
  g8 g4 g8  |
  b8 a4 gis8  |
  a2  |
  %25
  b8 b b b  |
  d8 b4.  |
  a8 a a a  |
  d8 a4.  |
  g8 g g g  |
  %30
  g8 g4 g8  |
  b8 a4 gis8  |
  a2  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAb
        \new Staff \with {instrumentName = #"Saxo Tenor" shortInstrumentName = #"S"} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \transpose d f \liniaroAb
        \new Staff \with {instrumentName = #"Saxo Tenor" shortInstrumentName = #"S"} \transpose d c \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla"}
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
  \header {instrument="Saxo Alt"}
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
        \new Staff \transpose d f \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Saxo Tenor"}
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
        \new Staff \transpose d c \liniaroAc
      >>
    }
    \midi {}
  }
}

