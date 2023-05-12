\version "2.16.2"

\header {
  dedication=""
  title=""
  subtitle="Farandola de l'Escala"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="L'Alt Empordà"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  d4 b8  |
  \time 6/8   \repeat volta 2 { d4 b8 d e fis  |
  g4 g8 d4 b8  |
  d4 b8 d e fis  |
  %05
  g4. b,4 d8  |
  c4. a8 b c  |
  e4 d8 b4 d8  |
  c4. a8 b c }
  \alternative { { b4. d4 b8 }
  %10
  { b4. r8 b c } }
  \repeat volta 2 { d4 d8 d4 d8  |
  e4 d8 c4 b8  |
  a4 b8 c4 d8  |
  c4 b b8 c  |
  %15
  d4 d8 d4 d8  |
  e4 d8 c4 b8  |
  a4 b8 c4 d8 }
  \alternative { { b4. r8 b c }
  { b4. r } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  b4 g8  |
  \time 6/8   \repeat volta 2 { b4 g8 a g fis  |
  g4 g8 b4 g8  |
  b4 g8 a g fis  |
  %05
  g4. g4 b8  |
  a4. fis8 g a  |
  c4 b8 g4 b8  |
  a4. fis8 g a }
  \alternative { { g4. b4 g8 }
  %10
  { g4. r8 g a } }
  \repeat volta 2 { b4 b8 b4 b8  |
  c4 b8 a4 g8  |
  fis4 g8 a4 b8  |
  a4 g g8 a  |
  %15
  b4 b8 b4 b8  |
  c4 b8 a4 g8  |
  fis4 g8 a4 b8 }
  \alternative { { g4. r8 g a }
  { g4. r } } \bar "||"
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

