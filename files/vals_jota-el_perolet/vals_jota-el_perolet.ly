\version "2.22.1"

\header {
  dedication="Vals-jota"
  title=""
  subtitle="El perolet"
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
\relative g'
{
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { g2. \tempo 4 = 190  |
  g2.  |
  e'4 e8 d c4 ~  |
  c4 b a  |
  %05
  b4 b8 a g4 ~  |
  g4 g g  |
  d'4 d8 c b4 ~  |
  b4 a g  |
  a8 g a b c4 ~  |
  %10
  c4 g g  |
  e'4 e8 d c4 ~  |
  c4 d e  |
  f2. ~  |
  f4 d f  |
  %15
  e4 c e  |
  d4 b d  |
  c4 r2  |
  r4 g8 g g g  |
  g2. ~  |
  %20
  g4 b8 b b b  |
  b2. ~  |
  b4 d8 d d d  |
  d2.  |
  r4 <f g>8 <f g> <f g> <f g>  |
  %25
  <f g>2. ~ ~  |
  <f g>2.  | }
}

liniaroAb =
\relative g''
{
  \tempo 4 = 190
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  r4 g8 f e d  |
  e8 f g4 r  |
  %05
  r4 f8 g f e  |
  d8 e f4 r  |
  r4 f8 e d e  |
  f4 r2  |
  e4 e8 d c d  |
  %10
  e4 r2  |
  r4 g8 f e d  |
  e4 f g  |
  c,2. ~  |
  c4 r2  |
  %15
  e4 -. r2  |
  d4 -. r2  |
  e4 -. r2  |
  r2 r4  |
  r2 r4  |
  %20
  r4 g,8 g g g  |
  g2. ~  |
  g4 b8 b b b  |
  b2. ~  |
  b4 d8 d d d  |
  %25
  d2. ~  |
  d2.  | }
}

liniaroAc =
\relative c''
{
  \tempo 4 = 190
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  c2.  |
  e2.  |
  %05
  d2.  |
  b2 r4  |
  b2.  |
  d2.  |
  c2.  |
  %10
  g2 r4  |
  c2.  |
  g2.  |
  a2. ~  |
  a4 r2  |
  %15
  c4 -. r2  |
  b4 -. r2  |
  c4 -. e -. g -.  |
  c,4 -. r2  |
  r2 r4  |
  %20
  r2 r4  |
  r2 r4  |
  r4 g8 g g g  |
  g2. ~  |
  g4 <g b>8 <g b> <g b> <g b>  |
  %25
  <g b>2. ~ ~  |
  <g b>2.  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

