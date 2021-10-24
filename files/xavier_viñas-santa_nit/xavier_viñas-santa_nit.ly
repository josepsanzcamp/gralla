\version "2.16.2"

\header {
  dedication=""
  title="Santa Nit"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
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
  \key g \major
  \time 6/8
  d8. e16 d8 b4.  |
  d8. e16 d8  b4.  |
  a'4 a8 fis4.  |
  g4 g8 d4.  |
  %05
  e4 e8 g8. fis16 e8  |
  d8. e16 d8 b4.  |
  e4 e8 g8. fis16 e8  |
  d8. e16 d8 b4.  |
  a'4 a8 c8. a16 fis8  |
  %10
  g4. b  |
  g8. d16 b8 d8. c16 a8  |
  g4. ~ g  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 6/8
  b8. c16 b8 g4.  |
  b8. c16 b8 g4.  |
  c4 c8 c4.  |
  b4 b8 b4.  |
  %05
  c4 c8 e8. d16 c8  |
  b8. c16 b8 g4.  |
  c4 c8 e8. d16 c8  |
  b8. c16 b8 g4.  |
  c4 c8 e8. c16 a8  |
  %10
  b4. d  |
  b4 g8 fis8. fis16 fis8  |
  g4. ~ g  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 6/8
  g8. g16 g8 g4.  |
  g8. g16 g8 g4.  |
  fis4 fis8 a4.  |
  g4 g8 g4.  |
  %05
  g4 g8 b8. a16 g8  |
  d8. d16 d8 d4.  |
  g4 g8 b8. a16 g8  |
  d8. d16 d8 d4.  |
  fis4 fis8 fis8. fis16 fis8  |
  %10
  g4. ~ g  |
  g4 g8 fis8. fis16 fis8  |
  g2.  \bar "|."
}

liniaroAd =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key e \major
  \time 6/8
  b8. cis16 b8 gis4.  |
  b8. cis16 b8 gis4.  |
  fis'4 fis8 dis4.  |
  e4 e8 b4.  |
  %05
  cis4 cis8 e8. dis16 cis8  |
  b8. cis16 b8 gis4.  |
  cis4 cis8 e8. dis16 cis8  |
  b8. cis16 b8 gis4.  |
  fis'4 fis8 a8. fis16 dis8  |
  %10
  e4. gis  |
  e8. b16 gis8 b8. a16 fis8  |
  e4. ~ e  \bar "|."
}

liniaroAe =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key d \major
  \time 6/8
  a8. b16 a8 fis4.  |
  a8. b16 a8 fis4.  |
  e'4 e8 cis4.  |
  d4 d8 a4.  |
  %05
  b4 b8 d8. cis16 b8  |
  a8. b16 a8 fis4.  |
  b4 b8 d8. cis16 b8  |
  a8. b16 a8 fis4.  |
  e'4 e8 g8. e16 cis8  |
  %10
  d4. fis  |
  d8. a16 fis8 a8. g16 e8  |
  d4. ~ d  \bar "|."
}

liniaroAf =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 6/8
  e8. fis16 e8 cis4.  |
  e8. fis16 e8 cis4.  |
  b'4 b8 gis4.  |
  a4 a8 e4.  |
  %05
  fis4 fis8 a8. gis16 fis8  |
  e8. fis16 e8 cis4.  |
  fis4 fis8 a8. gis16 fis8  |
  e8. fis16 e8 cis4.  |
  b'4 b8 d8. b16 gis8  |
  %10
  a4. cis  |
  a8. e16 cis8 e8. d16 b8  |
  a4. ~ a  \bar "|."
}

liniaroAg =
\relative gis'
{
  \tempo 4=120
  \clef treble
  \key e \major
  \time 6/8
  gis8. a16 gis8 e4.  |
  gis8. a16 gis8 e4.  |
  a4 a8 a4.  |
  gis4 gis8 gis4.  |
  %05
  a4 a8 cis8. b16 a8  |
  gis8. a16 gis8 e4.  |
  a4 a8 cis8. b16 a8  |
  gis8. a16 gis8 e4.  |
  a4 a8 cis8. a16 fis8  |
  %10
  gis4. b  |
  gis4 e8 fis8. fis16 fis8  |
  e4. ~ e  \bar "|."
}

liniaroAh =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key e \major
  \time 6/8
  e8. e16 e8 e4.  |
  e8. e16 e8 e4.  |
  dis4 dis8 fis4.  |
  e4 e8 e4.  |
  %05
  e4 e8 gis8. fis16 e8  |
  b8. b16 b8 b4.  |
  e4 e8 gis8. fis16 e8  |
  b8. b16 b8 b4.  |
  dis4 dis8 dis8. dis16 dis8  |
  %10
  e4. ~ e  |
  e4 e8 dis8. dis16 dis8  |
  e2.  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1ª" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2ª" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3ª" shortInstrumentName = #"G"} \liniaroAc
        \new Staff \with {instrumentName = #"Saxo Alt 1ª" shortInstrumentName = #"S"} \liniaroAd
        \new Staff \with {instrumentName = #"Tible 1ª" shortInstrumentName = #"T"} \liniaroAe
        \new Staff \with {instrumentName = #"Trompeta 1ª" shortInstrumentName = #"T"} \liniaroAf
        \new Staff \with {instrumentName = #"Saxo Alt 2ª" shortInstrumentName = #"S"} \liniaroAg
        \new Staff \with {instrumentName = #"Saxo Alt 3ª" shortInstrumentName = #"S"} \liniaroAh
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1ª" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2ª" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3ª" shortInstrumentName = #"G"} \liniaroAc
        \new Staff \with {instrumentName = #"Saxo Alt 1ª" shortInstrumentName = #"S"} \liniaroAd
        \new Staff \with {instrumentName = #"Tible 1ª" shortInstrumentName = #"T"} \liniaroAe
        \new Staff \with {instrumentName = #"Trompeta 1ª" shortInstrumentName = #"T"} \liniaroAf
        \new Staff \with {instrumentName = #"Saxo Alt 2ª" shortInstrumentName = #"S"} \liniaroAg
        \new Staff \with {instrumentName = #"Saxo Alt 3ª" shortInstrumentName = #"S"} \liniaroAh
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 1ª"}
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
  \header {instrument="Gralla 2ª"}
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
  \header {instrument="Gralla 3ª"}
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
  \header {instrument="Saxo Alt 1ª"}
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

\bookpart {
  \header {instrument="Tible 1ª"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAe
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAe
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Trompeta 1ª"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAf
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAf
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Saxo Alt 2ª"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAg
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAg
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Saxo Alt 3ª"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAh
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAh
      >>
    }
    \midi {}
  }
}

