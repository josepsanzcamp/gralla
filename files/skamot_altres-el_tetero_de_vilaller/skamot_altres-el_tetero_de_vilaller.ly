\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title=""
  subtitle="El tereto de Vilaller"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="L'Alta Ribagorça"
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
  \time 3/8
  d4\fermata c8\fermata  |
  \time 6/8   \repeat volta 2 { b8 a b c b c  |
  d8 c d e4 d8  |
  c8 b c e d c  |
  %05
  d4 b8 d4 c8  |
  b8 a b c b c  |
  d8 c d e4 d8  |
  c8 b c e d c }
  \alternative { { b4. d4 c8 }
  %10
  { b4. r4 g'8 } }
  \repeat volta 2 { g4 g8 fis4 e8  |
  e4 d8 d4 d8  |
  e4 e8 fis4 fis8  |
  g4. r4 g8  |
  %15
  g4 g8 fis4 e8  |
  e4 d8 d4 d8  |
  e4 e8 d4 c8 }
  \alternative { { b4. r4 g'8 }
  { b,4. r } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  b4\fermata a8\fermata  |
  \time 6/8   \repeat volta 2 { g8 fis g a g a  |
  b8 a b c4 b8  |
  a8 g a c b a  |
  %05
  b4 g8 b4 a8  |
  g8 fis g a g a  |
  b8 a b c4 b8  |
  a8 g a c b a }
  \alternative { { g4. b4 a8 }
  %10
  { g4. r4 e'8 } }
  \repeat volta 2 { e4 e8 d4 c8  |
  c4 b8 b4 b8  |
  c4 c8 d4 d8  |
  b4. r4 e8  |
  %15
  e4 e8 d4 c8  |
  c4 b8 b4 b8  |
  c4 c8 b4 a8 }
  \alternative { { g4. r4 e'8 }
  { g,4. r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

