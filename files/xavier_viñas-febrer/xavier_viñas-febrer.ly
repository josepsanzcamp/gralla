\version "2.16.2"

\header {
  dedication=""
  title="Febrer"
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
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r4 g8 c  |
  \repeat volta 2 { e8. e16 e8 e  |
  f8  f e d  |
  e16 d c8 ~ c4 ~  |
  %05
  c4 g8 c  |
  e8.  e16 e8 e  |
  g8 g f e  |
  d2 ~  |
  d4 d8 e  |
  %10
  f8. f16 f8 f  |
  f8 f g f  |
  e8 c4 d8  |
  e8 e f e  |
  d8 b4 c8  |
  %15
  d8 d c b }
  \alternative { { c4 g8 c }
  { c2 } }
  r8 c c c  |
  b16 c d8 r4  |
  %20
  r8 d d d  |
  c16 d e8 r4  |
  r4 d8 e  |
  f4 r8 d  |
  b4 g  |
  %25
  a8 g4.  |
  r8 c c c  |
  b16 c d8 r4  |
  r8 d d d  |
  c16 d e8 r4  |
  %30
  r4 d8 e  |
  f4 r8 d  |
  b4 g  |
  c2 ~  |
  c4 r  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r4 g8 c  |
  \repeat volta 2 { e8. e16 e8 e  |
  f8 f e d  |
  e16 d c8 ~ c4 ~  |
  %05
  c4 g8 c  |
  e8. e16 e8 e  |
  g8 g f e  |
  d2 ~  |
  d4 f8 g  |
  %10
  a8. a16 a8 a  |
  a8 a b a  |
  g8 e4 f8  |
  g8 g a g  |
  f8 d4 e8  |
  %15
  f8 f e d }
  \alternative { { e4 g,8 c }
  { e2 } }
  r8 e e e  |
  d16 e f8 r4  |
  %20
  r8 f f f  |
  e16 f g8 r4  |
  r4 f8 g  |
  a4 r8 f  |
  d4 f  |
  %25
  f8 e4.  |
  r8 e e e  |
  d16 e f8 r4  |
  r8 f f f  |
  e16 f g8 r4  |
  %30
  r4 f8 g  |
  a4 r8 f  |
  d4 b  |
  e2 ~  |
  e4 r  \bar "|."
}

liniaroAc =
\relative cis'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 2/4
  r4 r  |
  \repeat volta 2 { cis4 e  |
  fis4 gis  |
  e8 fis16 e d8 e  |
  %05
  cis4 r  |
  a'4 gis  |
  a4 g  |
  gis8 a16 gis fis8 a  |
  gis4 r  |
  %10
  a4 gis  |
  a4 b  |
  a4 gis  |
  fis4 e  |
  d4 e  |
  %15
  e4 d }
  \alternative { { cis4 r }
  { cis8 b16 cis d8 b } }
  cis4 r  |
  r8 e16 fis gis a b cis  |
  %20
  d4 r  |
  r8 fis,16 gis a b cis d  |
  e4 r  |
  e,2  |
  e2  |
  %25
  e2  |
  R2  |
  r8 e16 fis gis a b cis  |
  d4 r  |
  r8 fis,16 gis a b cis d  |
  %30
  e4 r  |
  d8 e fis4 ~  |
  fis4. e8  |
  e2 ~  |
  e4 r  \bar "|."
}

liniaroAd =
\relative d'
{
  \tempo 4=120
  \clef treble
  \key d \major
  \time 2/4
  r4 r  |
  \repeat volta 2 { d4 fis  |
  g4 a  |
  fis8 g16 fis e8 fis  |
  %05
  d4 r  |
  fis4 a  |
  b4 a  |
  a8 b16 a gis8 b  |
  a4 r  |
  %10
  b4 a  |
  b4 cis  |
  a4 g  |
  fis4 dis  |
  e4 g  |
  %15
  fis4 e }
  \alternative { { d4 r }
  { d8 cis16 d e8 cis } }
  d4 r  |
  r8 cis16 d e fis g a  |
  %20
  b4 r  |
  r8 g16 a b cis d e  |
  fis4 r  |
  e,2  |
  f2  |
  %25
  fis2  |
  R2  |
  r8 cis16 d e fis g a  |
  b4 r  |
  r8 g16 a b cis d e  |
  %30
  fis4 r  |
  e8 fis g4 ~  |
  g4. g8  |
  fis2 ~  |
  fis4 r  \bar "|."
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
        \new Staff \transpose d c \liniaroAd
      >>
    }
    \midi {}
  }
}

