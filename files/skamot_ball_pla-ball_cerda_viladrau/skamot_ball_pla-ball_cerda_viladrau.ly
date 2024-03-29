\version "2.16.2"

\header {
  dedication=""
  title="Ball pla"
  subtitle="Ball cerdà de Viladrau"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="Les Guilleries"
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \clef treble
  \key g \major
  \time 3/8
  \repeat volta 2 { d8 b16 c \tempo 4. = 72 d e  |
  d8 e16 d c b  |
  c8 d16 c b a  |
  b16 a b c d8  |
  %05
  d8 _"Viladrau" b16 c d e  |
  d8 e16 d c b  |
  c8 d16 c b a  |
  b4.  | }
  \repeat volta 2 { d8 c16 b a b  |
  %10
  c16 b a4  |
  d8 c16 b a b  |
  c16 b a4  |
  d8 c16 b a g  |
  fis16 g a b c e  |
  %15
  d8. e16 fis8  |
  g4.  | }
}

liniaroAb =
\relative b'
{
  \tempo 4. = 72
  \clef treble
  \key g \major
  \time 3/8
  \repeat volta 2 { b8 g16 a b c  |
  b8 c16 b a g  |
  a8 b16 a g fis  |
  g16 fis g a b8  |
  %05
  b8 g16 a b c  |
  b8 c16 b a g  |
  a8 b16 a g fis  |
  g4.  | }
  \repeat volta 2 { b8 a16 g fis g  |
  %10
  a16 g fis4  |
  b8 a16 g fis g  |
  a16 g fis4  |
  b8 a16 g fis g  |
  fis16 g fis g a c  |
  %15
  b8. c16 d8  |
  b4.  | }
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

