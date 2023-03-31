\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title=""
  subtitle="Valset valencià"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="País Valencià"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r4 e e  |
  e2 c4 ~  |
  c4 d f  |
  e2 c4 ~  |
  %05
  c4 d8 c b a  |
  g4 g8 a b4 ~  |
  b4 e f  |
  e2 c4 ~  |
  c4 e e  |
  %10
  e2 c4 ~  |
  c4 d f  |
  e2 c4 ~  |
  c4 d8 c b a  |
  g4 g8 a b4 ~  |
  %15
  b4 e8 f e d  |
  c2.  |
  \repeat volta 2 { r4 d8 e d c  |
  b4 b8 c d4 ~  |
  d4 e f  |
  %20
  e2 c4 ~  |
  c4 d8 e d c  |
  b4 b8 c d4 ~  |
  d4 e8 f e d  |
  c2.  | }
  %25
  r2 g4  |
  c4 c4. g8  |
  e'4 e4. c8  |
  g'4 g e  |
  c2 e4  |
  %30
  d4 d f  |
  b,4 b d  |
  c4 c8 d e c  |
  g4 r g  |
  c4 c4. g8  |
  %35
  e'4 e4. c8  |
  g'4 g e  |
  c2 e4  |
  d4 d f  |
  b,4 b d  |
  %40
  \mark "D.C. al Fine" c2.  |
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r4 g g  |
  g2 e4 ~  |
  e4 f a  |
  g2 e4 ~  |
  %05
  e4 f8 e d c  |
  b4 b8 c d4 ~  |
  d4 g a  |
  g2 e4 ~  |
  e4 g g  |
  %10
  g2 e4 ~  |
  e4 f a  |
  g2 e4 ~  |
  e4 f8 e d c  |
  b4 b8 c d4 ~  |
  %15
  d4 g8 a g f  |
  e2.  |
  \repeat volta 2 { r4 f8 g f e  |
  d4 d8 e f4 ~  |
  f4 g a  |
  %20
  g2 e4 ~  |
  e4 f8 g f e  |
  d4 d8 e f4 ~  |
  f4 g8 a g f  |
  e2.  | }
  %25
  r2 g,4  |
  c4 c4. g8  |
  e'4 e4. c8  |
  g'4 g e  |
  c2 e4  |
  %30
  d4 d f  |
  b,4 b d  |
  c4 c8 d e c  |
  g4 r g  |
  c4 c4. g8  |
  %35
  e'4 e4. c8  |
  g'4 g e  |
  c2 e4  |
  d4 d f  |
  b,4 b d  |
  %40
  c2. _"D.C. a FI"  |
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

