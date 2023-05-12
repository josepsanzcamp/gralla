\version "2.16.2"

\header {
  dedication=""
  title="Sardana curta"
  subtitle="Bellcaire, ni poc ni gaire"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Toni Codina, 1998"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  g8 fis  |
  \time 2/4   \repeat volta 2 { g4 g8 fis  |
  e4 e8 d  |
  c4 d  |
  %05
  d2 ~  |
  d4 g8 fis  |
  g4 g8 f  |
  dis4 dis8 d  |
  c4 d  |
  %10
  b2 ~ }
  \alternative { { b4 g'8 fis }
  { b,4 d8 d } }
  \repeat volta 2 { g4 g8 g  |
  fis4 fis8 fis  |
  %15
  e8 g fis e  |
  d4 d8 d  |
  c8 e d c  |
  b8 d ~ d4  |
  a8 d ~ d4 }
  %20
  \alternative { { b8 d ~ d d }
  { b4 b } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  b8 d  |
  \time 2/4   \repeat volta 2 { b4 b8 d  |
  c4 c8 b  |
  a4 a  |
  %05
  b2 ~  |
  b4 b8 d  |
  ais4 ais8 a  |
  c4 c8 ais  |
  a4 a  |
  %10
  g2 ~ }
  \alternative { { g4 b8 d }
  { g,4 b8 c } }
  \repeat volta 2 { b4 b8 b  |
  a4 a8 a  |
  %15
  c8 e d c  |
  b4 g8 b  |
  c8 c b c  |
  b2  |
  a2 }
  %20
  \alternative { { g4 b8 c }
  { g4 g } } \bar "||"
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

