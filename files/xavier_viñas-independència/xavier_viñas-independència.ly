\version "2.16.2"

\header {
  dedication=""
  title="Independència"
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
\relative d''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { d8. c16 b8 c   |
  d4. e8  |
  c8 c c e  |
  d4 b  |
  %05
  d8. c16  b8 c  |
  d4. e8  |
  c8 c c d  |
  b4 r8 g  |
  e'8 e e e  |
  %10
  e4. e8  |
  e8 g fis e  |
  e4 d8 b  |
  d8 d d d  |
  d4. e8  |
  %15
  c8 c c d  |
  b2  | }
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { b8. a16 g8 a  |
  b4. c8  |
  a8 a a c  |
  b4 g  |
  %05
  b8. a16 g8 a  |
  b4. c8  |
  a8 a a b  |
  g4 r8 e  |
  c'8 c c c  |
  %10
  c4. c8  |
  c8 e <d d> c  |
  c4 b8 g  |
  b8 b b b  |
  b4. c8  |
  %15
  a8 a a b  |
  g2  | }
}

liniaroAc =
\transpose d f
{
\relative gis'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 2/4
  \repeat volta 2 { r8 gis r g  |
  r8 gis r g  |
  r8 a r g  |
  r8 gis gis r  |
  %05
  r8 gis r g  |
  r8 gis r g  |
  r8 a r g  |
  gis8 r gis4  |
  a8 gis fis e  |
  %10
  cis'8 r r cis  |
  cis8 e dis cis  |
  cis4 b8 r  |
  r8 gis r g  |
  r8 gis r g  |
  %15
  r8 a r g  |
  gis8 r r4  | }
}
}

liniaroAd =
\transpose d c
{
\relative a'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 2/4
  \repeat volta 2 { r8 a r e  |
  r8 a r gis  |
  r8 f r gis  |
  r8 a a r  |
  %05
  r8 a r e  |
  r8 a r gis  |
  r8 f r gis  |
  a8 r g4  |
  fis8 a gis fis  |
  %10
  d'8 r r d  |
  d8 fis <e e> d  |
  d4 cis8 r  |
  r8 a r e  |
  r8 a r gis  |
  %15
  r8 f r gis  |
  a8 r r4  | }
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

