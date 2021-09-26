\version "2.16.2"

\header {
  dedication="Gegants"
  title=""
  subtitle="Marxa dels gegants de Lleida"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. Joan Moliner"
  arranger=""
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
  e8. d16 c8 b  |
  d8. c16 b8 a  |
  c8. b16 a8 b  |
  gis2  |
  %05
  e'8. d16 c8 b  |
  d8. c16 b8 a  |
  c8 b16 c d8 c16 d  |
  e4 b8 b  |
  e4 b8 b  |
  %10
  e4. r8  |
  \repeat volta 2 { a,8. b16 c8 d  |
  e4. f8  |
  e8 d c b  |
  c16 d c b a4  |
  %15
  a8. b16 c8 d  |
  e4. f8  |
  e8 d c b  |
  a2  | }
  a4 b  |
  %20
  c4. d8  |
  c8 b a b  |
  gis2  |
  a4 b  |
  c4. d8  |
  %25
  c8 b a gis  |
  a2  |
  \repeat volta 2 { b8. b16 b8 d  |
  c16 d c b a4  |
  b8. b16 b8 d  |
  %30
  c16 d c b a4  |
  e'8. f16 e8 d  |
  c8 b a b16 c  |
  d8 c16 d e4  |
  a,2  | }
}

liniaroAb =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  e4 e  |
  a4. g8  |
  f4 d  |
  e4 r4  | % kompletite
  %05
  e4 e  |
  f4. e8  |
  d4 b  |
  e4 d8 c  |
  b8 c b a  |
  %10
  e'4. r8  |
  \repeat volta 2 { a4. g8  |
  c4 e,  |
  fis4 gis  |
  a4 r  |
  %15
  a4. g8  |
  c,4 f  |
  e4 e  |
  a2  | }
  a4 g  |
  %20
  e4. f8  |
  e8 d c d  |
  e2  |
  a4 g  |
  e4. f8  |
  %25
  e8 d c b  |
  a2  |
  \repeat volta 2 { b8. b16 b8 b  |
  c8. c16 c8 c  |
  b8. b16 b8 b  |
  %30
  c8. c16 c8 c  |
  a'4 g  |
  c,4 f  |
  d4 e  |
  a2  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

