\version "2.22.1"

\header {
  dedication="Pasdoble"
  title=""
  subtitle="Dilluns"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Paquita Roig"
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
  \time 1/4
  g4  |
  \time 2/4   e'4. e8  |
  f8 f e d  |
  e4. d8  |
  %05
  c8 e d c  |
  d4. c8  |
  b8 f' e d  |
  e4. d8  |
  c4 g  |
  %10
  e'4. e8  |
  f8 f e d  |
  e4. d8  |
  c8 e d c  |
  d8 c b c  |
  %15
  d8 b c b  |
  a2  |
  r8 c b a  |
  g8 g4 a8  |
  b4 g  |
  %20
  a4. b8  |
  c4 e  |
  d8 d4 c8  |
  d4 b  |
  c4. d8  |
  %25
  e8 c b a  |
  g8 g4 a8  |
  b4 g  |
  a4. b8  |
  c4 e  |
  %30
  d4 b8 c  |
  d8 c4 b8  |
  c2  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  g4  |
  \time 2/4   g'4. g8  |
  a8 a g f  |
  g4. f8  |
  %05
  e8 g f e  |
  f4. e8  |
  d8 a' g f  |
  g4. f8  |
  e4 g,  |
  %10
  g'4. g8  |
  a8 a g f  |
  g4. f8  |
  e8 g f e  |
  f8 e d e  |
  %15
  f8 d e d  |
  c2  |
  r8 e d c  |
  b8 b4 c8  |
  d4 b  |
  %20
  c4. d8  |
  e4 g  |
  f8 f4 e8  |
  f4 d  |
  e4. f8  |
  %25
  g8 e d c  |
  b8 b4 c8  |
  d4 b  |
  c4. d8  |
  e4 g  |
  %30
  f4 d8 e  |
  f8 e4 d8  |
  c2  \bar "|."
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

