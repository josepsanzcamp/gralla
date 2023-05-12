\version "2.16.2"

\header {
  dedication=""
  title="Buggie Buggie"
  subtitle=""
  subsubtitle=""
  poet="2ª veu gralles: Albert Viñas."
  meter="Abril 2004"
  piece=""
  composer="Veus saxos: Perepau Jiménez,"
  arranger="per als grallers de Cassà."
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative c''
{
  \tempo 4=160
  \clef treble
  \key c \major
  \time 2/4
  c2 ~  |
  c4 a8  g  |
  a8 c r4  |
  R2  |
  %05
  c2 ~  |
  c4 a8 g   |
  a8 g r4  |
  R2  |
  c2 ~  |
  %10
  c4 a8 g  |
  a8 c r4  |
  R2  |
  g8 g4 g8  |
  a4 b  |
  %15
  c2  |
  r4 g8 g  |
  c4 c8 c  |
  r8 e g, g  |
  c4 c8 a  |
  %20
  r8 g g g  |
  c4 c8 c  |
  r8 e g, g  |
  c4 c8 c  |
  r4. g8  |
  %25
  c8 c c c  |
  c8 c g g  |
  a4 b  |
  c4 r  |
  g8 g4 g8  |
  %30
  a4 b  |
  c2  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=160
  \clef treble
  \key c \major
  \time 2/4
  e2 ~  |
  e4 e8 e  |
  f8 g r4  |
  R2  |
  %05
  e2 ~  |
  e4 e8 e  |
  f8 e r4  |
  R2  |
  e2 ~  |
  %10
  e4 e8 e  |
  f8 g r4  |
  R2  |
  a8 a4 a8  |
  g4 f  |
  %15
  e2  |
  r4 e8 e  |
  e4 e8 e  |
  r8 g e e  |
  e4 e8 f  |
  %20
  r8 e e e  |
  e4 e8 e  |
  r8 g <e e e> <e e e>  |
  <f f f>4 <f f f>8 <e e e>  |
  r4. e8  |
  %25
  e8 e e e  |
  e8 e c c  |
  f4 g  |
  g4 r  |
  g8 g4 g8  |
  %30
  f4 f  |
  e2  \bar "|."
}

liniaroAc =
\relative e''
{
  \tempo 4=160
  \clef treble
  \key d \major
  \time 2/4
  e2 ~  |
  e4 d8 cis  |
  d8 e r4  |
  R2  |
  %05
  a2 ~  |
  a4 fis8 e  |
  fis8 e r4  |
  R2  |
  e2 ~  |
  %10
  e4 d8 cis  |
  d8 e r4  |
  R2  |
  e8 e4 e8  |
  e4 e  |
  %15
  e2  |
  R2  |
  e4 cis8 fis  |
  R2  |
  e4 cis8 fis  |
  %20
  R2  |
  e4 cis8 fis  |
  r8 e <a a> <a a>  |
  <b b>4 <b b>8 <a a>  |
  R2  |
  %25
  R2  |
  R2  |
  R2  |
  r8 fis e d  |
  cis8 cis4 cis8  |
  %30
  d4 e  |
  e2  \bar "|."
}

liniaroAd =
\relative a'
{
  \tempo 4=160
  \clef treble
  \key g \major
  \time 2/4
  a2 ~  |
  a4 g8 fis  |
  g8 a r4  |
  R2  |
  %05
  d2 ~  |
  d4 b8 a  |
  b8 a r4  |
  R2  |
  a2 ~  |
  %10
  a4 g8 fis  |
  g8 a r4  |
  R2  |
  a8 a4 a8  |
  a4 a  |
  %15
  a2  |
  R2  |
  a4 fis8 b  |
  R2  |
  a4 fis8 b  |
  %20
  R2  |
  a4 fis8 b  |
  r8 a <d d> <d d>  |
  <e e>4 <e e>8 <d d>  |
  R2  |
  %25
  R2  |
  R2  |
  R2  |
  r8 b a g  |
  fis8 fis4 fis8  |
  %30
  g4 a  |
  a2  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \transpose d f \liniaroAc
        \new Staff \with {instrumentName = #"Saxo Tenor" shortInstrumentName = #"S"} \transpose d c \liniaroAd
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

\bookpart {
  \header {instrument="Saxo Alt"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \transpose d f \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Saxo Tenor"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \transpose d c \liniaroAd
      >>
    }
    \midi {}
  }
}

