\version "2.22.1"

\header {
  dedication="Tocs tradicionals"
  title=""
  subtitle="Portant el pilar al balcó"
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
  \time 1/8
  d8  |
  \time 3/8   \repeat volta 2 { e8 e d  |
  g4 d8  |
  e8 e d  |
  %05
  c4 c8  |
  d8 d c  |
  fis4 d8  |
  e8 d c }
  \alternative { { b4 d8 }
  %10
  { b8 b c } }
  \repeat volta 2 { d8 e d ~  |
  d8 c b  |
  d8 d c ~  |
  c8 a b  |
  %15
  c8 d c ~  |
  c8 b a  |
  c8 c b ~ }
  \alternative { { b8 b c }
  { b4  r8 } } \bar "||" % kompletite
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  b8  |
  \time 3/8   \repeat volta 2 { c8 c b  |
  e4 b8  |
  c8 c b  |
  %05
  a4 a8  |
  b8 b a  |
  d4 b8  |
  c8 b a }
  \alternative { { g4 b8 }
  %10
  { g8 g a } }
  \repeat volta 2 { b8 c b ~  |
  b8 a g  |
  b8 b a ~  |
  a8 fis g  |
  %15
  a8 b a ~  |
  a8 g fis  |
  a8 a g ~ }
  \alternative { { g8 g a }
  { b4  r8 } } \bar "||" % kompletite
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

