\version "2.16.2"

\header {
  dedication=""
  title="L'Alosa"
  subtitle=""
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
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { a8 e' e c  |
  d4.  e8  |
  c8 b a4  | }
  g8 g a b  |
  %05
  c4  d8. c16  |
  b8 b c b  |
  a4 a  |
  g8 g a b  |
  c4 d8. c16  |
  %10
  b8 b c b  |
  a2  |
  \repeat volta 2 { e'8 e e e  |
  d8 r r e  |
  e8 d e4  | }
  %15
  g,4 a  |
  c4 d8. c16  |
  b8 b c b  |
  a4 a  |
  g8 g a b  |
  %20
  c4 d8. c16  |
  b8 b c b  |
  a2  \bar "|."
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { a8 a c a  |
  b8 a g a  |
  a8 g a4  | }
  g8 g a g  |
  %05
  g4 b8. a16  |
  g8 g a g  |
  c4 c  |
  g8 g a g  |
  g4 b8. a16  |
  %10
  g8 g a g  |
  c2  |
  \repeat volta 2 { c8 a c a  |
  g8 r r a  |
  c8 b a4  | }
  %15
  d8 b e c  |
  e8 e g4  |
  g8 d g4  |
  e4 e  |
  d8 b e d  |
  %20
  e8 e g4  |
  g8 d g4  |
  e2  \bar "|."
}

liniaroAc =
\transpose d f
{
\relative fis'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 2/4
  \repeat volta 2 { fis4 cis'  |
  e4 b  |
  cis2  | }
  <b b>4 b  |
  %05
  cis2  |
  b4 r8 d  |
  cis8 b a cis  |
  b4 b  |
  cis2  |
  %10
  b4 b8 c  |
  cis2  |
  \repeat volta 2 { R2  |
  R2  |
  R2  | }
  %15
  b2  |
  cis2  |
  d2  |
  cis2  |
  b2  |
  %20
  cis2  |
  e4 b  |
  cis2  \bar "|."
}
}

liniaroAd =
\transpose d c
{
\relative b'
{
  \tempo 4=120
  \clef treble
  \key d \major
  \time 2/4
  \repeat volta 2 { b4 fis'  |
  a4 e  |
  fis2  | }
  <e e>4 cis  |
  %05
  d2  |
  a4 r8 e'  |
  d8 cis b d  |
  cis4 a  |
  d2  |
  %10
  a4 cis8 a  |
  b2  |
  \repeat volta 2 { R2  |
  R2  |
  R2  | }
  %15
  a2 ~  |
  a2  |
  a2 ~  |
  a2  |
  a2 ~  |
  %20
  a2  |
  a4 ~ a  |
  b2  \bar "|."
}
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAc
        \new Staff \with {instrumentName = #"Saxo Tenor" shortInstrumentName = #"S"} \liniaroAd
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
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAc
        \new Staff \with {instrumentName = #"Saxo Tenor" shortInstrumentName = #"S"} \liniaroAd
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
  \header {instrument="Saxo Alt"}
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

\bookpart {
  \header {instrument="Saxo Tenor"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \midi {}
  }
}

