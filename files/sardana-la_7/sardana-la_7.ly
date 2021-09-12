\version "2.22.1"

\header {
  dedication="Sardana curta"
  title=""
  subtitle="La '7'"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="del repertori d'en Peret Blanc"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 1/8
  g8 \tempo 4. = 90  |
  \time 6/8   \repeat volta 2 { c8 e g f d b  |
  c4 g8 g4 g8  |
  c8 e g f d b  |
  %05
  c4. r4 g'8  |
  a4 a8 f4 d8  |
  g4 g8 e4 c8  |
  f4 f8 d4 b8  |
  c4. r4 g8  | }
  %10
  \repeat volta 2 { c4 b8 d4 c8  |
  e4 d8 f4 e8  |
  g4 e8 d4 c8  |
  d4 b8 g4 g8  |
  c4 b8 d4 c8  |
  %15
  e4 d8 f4 e8  |
  g4 f8 d4 b8 }
  \alternative { { c4. r4 g8 }
  { c4. r4 e8 } }
  \repeat volta 2 { a4 a8 gis4 e8  |
  %20
  f4. e  |
  d4 c8 b4 a8  |
  gis8 b gis a4 e'8  |
  a4 a8 gis4 e8  |
  f4. e  |
  %25
  d8 f d c4 b8 }
  \alternative { { a4. r4 e'8 }
  { a,4. r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4. = 90
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 6/8   \repeat volta 2 { c4. g  |
  g4 r8 r4 g8  |
  c4. g  |
  %05
  c4. r4 b8  |
  f'8 c f d4 b8  |
  e8 b e c4 a8  |
  d8 a d b4 g8  |
  c4. r4 g8  | }
  %10
  \repeat volta 2 { a4. b  |
  c4. d  |
  c4. b  |
  b4. g4 g8  |
  a4. b  |
  %15
  c4. d  |
  e4. f }
  \alternative { { g4. r4 g,8 }
  { g'4. r } }
  \repeat volta 2 { a,4. b  |
  %20
  d8 c b c b a  |
  b4 c8 d4 e8  |
  e4. e  |
  c4. b  |
  a8 b c e d c  |
  %25
  b4. e }
  \alternative { { a,4. r }
  { a4. r } } \bar "||"
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

