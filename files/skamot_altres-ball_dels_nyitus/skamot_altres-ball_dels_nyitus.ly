\version "2.16.2"

\header {
  dedication=""
  title=""
  subtitle="Ball dels Nyitus"
  subsubtitle=""
  poet="gralla.skamot.com"
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
  \time 2/4
  \repeat volta 2 { d8. e16 d8 c  |
  b8. a16 b8 c  |
  d4 d  |
  b8. a16 g4  |
  %05
  d'8. e16 d8 c  |
  b8. a16 b8 c  |
  d4 d }
  \alternative { { g,4 r }
  { g4 r8 c16 b } }
  %10
  \repeat volta 2 { a8 a a c16 b  |
  a8 a a b16 c  |
  d8. c16 b8 a  |
  b8 g g c16 b  |
  a8 a a c16 b  |
  %15
  a8 a a b16 c  |
  d8. c16 b8 a }
  \alternative { { g4 r8 c16 b }
  { g4 r } } \bar "||"
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g8. g16 g8 g  |
  g8. g16 g8 g  |
  fis4 a  |
  g4 g  |
  %05
  g8. g16 g8 g  |
  g8. g16 g8 g  |
  fis4 a }
  \alternative { { g4 r }
  { g4 b, } }
  %10
  \repeat volta 2 { c8 e c4  |
  c8 e c4  |
  fis4 d  |
  g4 b,  |
  c8 e c4  |
  %15
  c8 e c4  |
  fis4 d }
  \alternative { { g4 r }
  { g4 r } } \bar "||"
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

