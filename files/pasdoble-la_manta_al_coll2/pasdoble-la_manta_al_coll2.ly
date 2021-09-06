\version "2.22.1"

\header {
  dedication="Marxa"
  title="  "
  subtitle="La manta al coll"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. Xavier Richart"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r8 e e d  |
  \mark \markup {\musicglyph #"scripts.segno"} c2 ~  |
  c8 b a g  |
  b2  |
  %05
  r8 f' f e  |
  d2 ~  |
  d8 c b a  |
  c2  |
  r8 e e d  |
  %10
  c2 ~  |
  c8 c d e  |
  f2 ~  |
  f8 f g f  |
  e8 e f e  |
  %15
  d8 f e d  |
  c4 g  |
  \mark "Fine" c8 c g c  |
  e4 g,  |
  c8 c g c  |
  %20
  e4 r8 g,  |
  g8 e' e d  |
  d8 c4 c8  |
  c4 d8 c  |
  c8 b4 g8  |
  %25
  g8 d' d c  |
  c8 b4 b8  |
  b4 c8 b  |
  a8 g4 g8  |
  g8 e' e d  |
  %30
  d8 c4 c8  |
  d8 c d e  |
  f4 r8 f16 f  |
  f8 f g f  |
  e4 f8 e  |
  %35
  d8 f e d  |
  \mark "D.S. al Fine" c8 e e d  \bar "|."
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r8 g g f  |
  e2 ~  |
  e8 g f e  |
  d2  |
  %05
  r8 a' a g  |
  f2 ~  |
  f8 a g f  |
  e2  |
  r8 g g f  |
  %10
  e2 ~  |
  e8 e f g  |
  a2 ~  |
  a8 a b a  |
  g8 g a g  |
  %15
  f8 a g f  |
  e4 g  |
  e8 e e f  |
  g4 g  |
  e8 e e f  |
  %20
  g4 r8 g,  |
  g8 g' g f  |
  f8 e4 e8  |
  e4 f8 e  |
  e8 d4 g,8  |
  %25
  g8 f' f e  |
  e8 d4 d8  |
  d4 e8 g  |
  f8 e4 g,8  |
  g8 g' g f  |
  %30
  f8 e4 e8  |
  f8 e f g  |
  a4 r8 a16 a  |
  a8 a b a  |
  g4 a8 g  |
  %35
  f8 a g f  |
  e8 g g f  \bar "|."
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

