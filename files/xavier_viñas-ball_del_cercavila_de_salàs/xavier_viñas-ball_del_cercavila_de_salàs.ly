\version "2.16.2"

\header {
  dedication=""
  title="Ball de Cercavila de Salàs"
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
  \key g \major
  \time 2/4
  \repeat volta 2 { g8. a16 b8 g   |
  a4 r8 d16 e  |
  d8 c b a  |
  b16 c b a g4  |
  %05
  g8. a16 b8 g   |
  a4 r8 d16 e  |
  d8 c b a  |
  g4 r  |
  d'8 g fis e  |
  %10
  d4 r8 c16 b  |
  a8 c b a  |
  b16 c b a g4  |
  d'8 g fis e  |
  d4 r8 c16 b  |
  %15
  a8 b c a  |
  g4 r  | }
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { b8. c16 d8 d  |
  c8. b16 a8 d  |
  fis8. e16 d8 fis  |
  g16 e d c b c b a  |
  %05
  b8. c16 d8 d  |
  c8. b16 a8 d  |
  fis8. d16 e8 fis  |
  g4 r  |
  b,4. c8  |
  %10
  d4 r8 e16 d  |
  c8 \times 2/3 { d16 c b } c8 e  |
  d2  |
  b4. c8  |
  d4 r8 e16 d  |
  %15
  c8 \times 2/3 { d16 c b } a8 \times 2/3 { c16 b a }  |
  b4 r  | }
}

liniaroAc =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key e \major
  \time 2/4
  \repeat volta 2 { b8. b16 b8 b  |
  b4 r  |
  r8 b cis dis  |
  e16 dis e fis e8 r  |
  %05
  b8. b16 b8 b  |
  b4 r  |
  a'8 fis e fis  |
  gis4 r  |
  b,4 b  |
  %10
  b4 r  |
  r8 dis cis dis  |
  e4 e,16 fis gis a  |
  b4 b  |
  b4 r  |
  %15
  b16 cis dis e fis8 dis  |
  e4 r  | }
}

liniaroAd =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 2/4
  \repeat volta 2 { a8. a16 a8 a  |
  b4 r  |
  r8 e fis gis  |
  a16 gis a b a8 r  |
  %05
  a,8. a16 a8 a  |
  b4 r  |
  d8 b a gis  |
  a4 r  |
  e'4 d  |
  %10
  cis4 r  |
  r8 gis' fis e  |
  e4 a,16 b cis d  |
  e4 d  |
  cis4 r  |
  %15
  e16 d e fis e8 e  |
  e4 r  | }
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

