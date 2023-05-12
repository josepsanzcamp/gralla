\version "2.16.2"

\header {
  dedication=""
  title="Cercavila"
  subtitle="La fira"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
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
  \time 2/4
  d8 d16 c b8 b  |
  d8 d16 c b8 b  |
  c8 c16 b a8 a  |
  b8 b16 a g a b c  |
  %05
  d8 d16 c b8 b  |
  d8 d16 c b8 b  |
  c8 c16 b a8 a  |
  b8 b16 a g8 r  |
  d'4 g  |
  %10
  e8 e16 d c4  |
  a8 a d8. c16  |
  b8 c d r  |
  d4 g  |
  e8 e16 d c4  |
  %15
  a8 a d8. c16  |
  b8 a g4  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  b8 b16 a g8 g  |
  b8 b16 a g8 g  |
  a8 a16 b c8 fis  |
  g16 e d c b c b a  |
  %05
  b8 b16 a g8 g  |
  b8 b16 a g8 g  |
  a8 a16 b c8 fis  |
  g8 d16 c b8 r  |
  g4 b  |
  %10
  c8 c16 b a4  |
  fis'8 fis fis8. e16  |
  d16 e d c b8 r  |
  g4 b  |
  c8 c16 b a4  |
  %15
  fis'8 fis fis8. e16  |
  d16 e d c b4  \bar "|."
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

