\version "2.16.2"

\header {
  dedication=""
  title="Algibenca"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="(contrapas)"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { g8. g16 c8 \> r \!  |
  e,8. \> e16  g8 \! r  |
  c,8. d16 e8. c16  |
  d8. b16 g4  |
  %05
  g'8. g16 \> c8 r \!  |
  e,8. \> e16 g8 r \!  |
  b,8. c16 d8. b16  |
  c4 c8 r  | }
  \repeat volta 2 { c8.  b16 c8. d16  |
  %10
  e8. f16 e8. d16  |
  c8. b16 c8. e16  |
  g8. a16 g4  |
  e8. d16 e8. f16  |
  g8. c16 g8. e16  |
  %15
  d8. f16 d8. b16  |
  c4 c8 r  | }
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { g8. g16 c8 r  |
  e,8. e16 g8 r  |
  c,8. d16 e8. c16  |
  d8. b16 g4  |
  %05
  e'8. f16 e8. d16  |
  c8. b16 a8. a16  |
  g8. a16 b8. g16  |
  e4 e8 r  | }
  \repeat volta 2 { c'8. b16 _"molt dolça  (molt lligat)" c8. d16  |
  %10
  e8. f16 e8. d16  |
  c8. b16 c8. e16  |
  g8. a16 g4  |
  c,8. b16 c8. d16  |
  e8. f16 b,8. a16  |
  %15
  g8. a16 f8. g16  |
  e4 e8 r  | }
}

liniaroAc =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { g8. f16 e8 r  |
  e8. d16 c8 r  |
  a8. b16 c8. <fis, fis'>16  |
  g'8. d16 b4  |
  %05
  e8. f16 e8. d16  |
  c8. b16 a8. gis16  |
  g8. a16 g8. f16  |
  e4 e  | }
  \repeat volta 2 { c'8. b16 _"1ª Tacet" c8. d16  |
  %10
  e8. f16 e8. d16  |
  c8. b16 a8. c16  |
  b8. c16 d4  |
  c8. b16 c8. d16  |
  e8. f16 e8. c16  |
  %15
  b8. a16 f8. g16  |
  e4 e8 r  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument=""}
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
  \header {instrument=""}
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
  \header {instrument=""}
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

