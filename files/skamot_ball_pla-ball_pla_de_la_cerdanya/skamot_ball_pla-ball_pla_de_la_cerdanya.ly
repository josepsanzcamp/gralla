\version "2.16.2"

\header {
  dedication="Ball pla"
  title=""
  subtitle="Ball pla de la Cerdanya"
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
  \time 1/4
  d4  |
  \time 3/4   \repeat volta 2 { g,8 fis g a b c  |
  d2 g4  |
  d8 e d c b a  |
  %05
  b8 c b a g4  |
  g8 fis g a b c  |
  d2 g4  |
  d8 e d c b a }
  \alternative { { g2 d'4 }
  %10
  { g,2 g'4 } }
  \repeat volta 2 { f4 d f  |
  e4 c e  |
  d4 b d  |
  c8 b a b c e }
  %15
  \alternative { { d2 g4 }
  { d2 d4 } }
  \repeat volta 2 { g,4 b d  |
  g,4 b d  |
  c4 a fis }
  %20
  \alternative { { a2 g4 }
  { g2. } } \bar "||"
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  d4  |
  \time 3/4   \repeat volta 2 { g,8 fis g a g a  |
  b2 b4  |
  b8 c b a g fis  |
  %05
  g8 a g fis g4  |
  g8 fis g a g a  |
  b2 b4  |
  b8 c b a g fis }
  \alternative { { g2 d'4 }
  %10
  { g,2 b4 } }
  \repeat volta 2 { d4 b d  |
  c4 a c  |
  b4 g b  |
  a8 g fis g a c }
  %15
  \alternative { { b2 b4 }
  { b2 b4 } }
  \repeat volta 2 { g4 g g  |
  g4 g g  |
  a4 fis a }
  %20
  \alternative { { a2 g4 }
  { g2. } } \bar "||"
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

