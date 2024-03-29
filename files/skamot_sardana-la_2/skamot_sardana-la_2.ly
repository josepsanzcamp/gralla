\version "2.16.2"

\header {
  dedication=""
  title="Sardana curta"
  subtitle="La \"2\""
  subsubtitle=""
  poet="gralla.skamot.com"
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
  \time 6/8   \repeat volta 2 { c4 e8 g4 e8  |
  c4. r8 c d  |
  e8 e e e f e  |
  %05
  e4 d r  |
  g4. f  |
  e4. r8 g g }
  \alternative { { g8 a g f e d  |
  e4. c4 g8 }
  %10
  { g'8 a g f e d  |
  c4. e4 f8 } }
  \repeat volta 2 { g8 a g e4 f8  |
  g4. e4 f8  |
  g8 a g g f e  |
  %15
  e4 d8 d4 e8  |
  f8 g f d4 e8  |
  f4. d4 e8  |
  f8 a g f e d }
  \alternative { { e4 c8 e4 f8 }
  %20
  { c4. r } } \bar "||"
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
  c4. r8 a a  |
  c4. a  |
  %05
  a4 b d8 b  |
  g4 b8 d4 b8  |
  g4. r8 b b }
  \alternative { { b8 c b a b a  |
  a4. g4 g8 }
  %10
  { b8 c b a b g  |
  c4. c8 b a } }
  \repeat volta 2 { g4. c8 b a  |
  b4 b8 c4 d8  |
  e4. c  |
  %15
  a8 c b g b c  |
  d4. b8 a g  |
  a4 c8 b4 g8  |
  a4. b }
  \alternative { { a4. c8 b a }
  %20
  { c4. r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

