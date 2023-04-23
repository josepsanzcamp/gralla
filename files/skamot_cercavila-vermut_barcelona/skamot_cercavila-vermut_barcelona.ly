\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Cercavila"
  subtitle="Vermut Barcelona"
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
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 2/4   \repeat volta 2 { \times 2/3 { c8 c c } \times 2/3 { c g c }  |
  \times 2/3 { e8 e e } \times 2/3 { e c e }  |
  g8 r g,4  |
  %05
  c8 e d c  |
  e2 ~  |
  e8 e d c  |
  g2  |
  r8 e' e f  |
  %10
  e4 d ~  |
  d8 d d e  |
  d4 c ~  |
  c8 e d c  |
  e2 ~  |
  %15
  e8 e d c  |
  g2  |
  r8 e' e f  |
  e4 d  |
  d4 e  |
  %20
  c4 g8 a16 b }
  \alternative { { c8 r r g }
  { c8 r r4 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 2/4   \repeat volta 2 { \times 2/3 { c8 c c } \times 2/3 { c g c }  |
  \times 2/3 { e8 e e } \times 2/3 { e c e }  |
  g8 r g,4  |
  %05
  c8 r r4  |
  r8 e d c  |
  e2  |
  r8 e d c  |
  g8 g' g a  |
  %10
  g4 f ~  |
  f8 f f g  |
  f4 e ~  |
  e4 r  |
  r8 e d c  |
  %15
  e2  |
  r8 e d c  |
  g8 g' g a  |
  g4 f  |
  f4 g  |
  %20
  e2 ~ }
  \alternative { { e8 r r4 }
  { e8 r r4 } } \bar "||"
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

