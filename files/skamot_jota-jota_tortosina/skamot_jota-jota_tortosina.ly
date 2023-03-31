\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Jota"
  subtitle="Jota tortosina"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Baix Ebre"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  r8 g16 g g g  |
  a8 g f  |
  e8 d c  |
  g'8. a16 g8  |
  %05
  r8 g,16 a b c  |
  d8. e16 f8  |
  a8 g f  |
  e16 f d e c8  |
  r8 e16 f d e  |
  %10
  c8 g e'  |
  c8 g e'  |
  f8. e16 d8  |
  r8 d16 e c d  |
  b8 g d'  |
  %15
  b8 g d'  |
  e8. d16 c8  |
  r8 e16 f d e  |
  c8 g e'  |
  c8 g e'  |
  %20
  f8. e16 d8  |
  r8 d16 e c d  |
  b8 g d'  |
  b8 g d'  |
  e8. d16 c8  |
  %25
  r8 g'16 g g g  |
  a8 g f  |
  e8 d c  |
  b8. a16 g8  |
  r8 g16 a b c  |
  %30
  d8. b16 g8  |
  r8 g16 a b c  |
  d8 g,16 d' c8  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  r8 e16 e e e  |
  f8 e d  |
  c8 b a  |
  b8. c16 b8  |
  %05
  r8 g16 a b c  |
  b8. c16 d8  |
  f8 e d  |
  c16 b a b c8  |
  r8 c16 d b c  |
  %10
  g8 e c'  |
  g8 e c'  |
  d8. c16 b8  |
  r8 b16 c a b  |
  g8 g b  |
  %15
  g8 g b  |
  c8. b16 c8  |
  r8 c16 d b c  |
  g8 e c'  |
  g8 e c'  |
  %20
  d8. c16 b8  |
  r8 b16 c a b  |
  g8 g b  |
  g8 g b  |
  c8. b16 c8  |
  %25
  r8 e16 e e e  |
  f8 e d  |
  c8 b a  |
  g8. a16 g8  |
  r8 g16 a g a  |
  %30
  b8. g16 g8  |
  r8 g16 a g a  |
  b8 g16 b c8  \bar "|."
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

