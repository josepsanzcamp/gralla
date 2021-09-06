\version "2.22.1"

\header {
  dedication="Concert"
  title="  "
  subtitle="Coral graller número 3"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Marcel Casellas, 2001"
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
  \time 1/4
  r4  |
  \time 3/4   \repeat volta 2 { e2.  |
  gis2.  |
  a2. ~  |
  %05
  a2 r4  |
  c2.  |
  b2 a4 }
  \alternative { { gis2. ~  |
  gis2 r4 }
  %10
  { g2 e4 } }
  g4. a8 f4  |
  e2 g4  |
  f4 a g  |
  c2.  |
  %15
  b2 a4  |
  a2 g4  |
  f4 a g  |
  e2 dis4  |
  d2 f4  \bar "||"
  %20
  e2.  |
  gis2.  |
  a2. ~  |
  a2 r4  |
  c2.  |
  %25
  b2 a4  |
  gis2. ~  |
  gis2 b4  |
  b2 a4  |
  a2.  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 3/4   \repeat volta 2 { c2.  |
  d2 b4  |
  c4. e8 d4  |
  %05
  c2 r4  |
  e2.  |
  d2. ~ }
  \alternative { { d4. f8 e4  |
  d2 r4 }
  %10
  { d2. ~ } }
  d4 b2  |
  c2.  |
  b4. c8 d4  |
  e2 c4  |
  %15
  c2. ~  |
  c4 d e  |
  b4. c8 d4  |
  c4 b a  |
  gis2 d'4  \bar "||"
  %20
  c2.  |
  d2 b4  |
  c4. e8 d4  |
  c2 r4  |
  e2.  |
  %25
  d2. ~  |
  d4. f8 e4  |
  d2 d4  |
  c2. ~  |
  c2.  \bar "|."
}

liniaroAc =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  e4  |
  \time 3/4   \repeat volta 2 { a2.  |
  e2.  |
  f2. ~  |
  %05
  f4. g8 f4  |
  e2.  |
  g2 f4 }
  \alternative { { e2. ~  |
  e2 e4 }
  %10
  { e2. } }
  r4 g2  |
  g2.  | % troigo!
  g2.  | % troigo!
  g2.  | % troigo!
  %15
  g2.  | % troigo!
  g2.  | % troigo!
  g2.  | % troigo!
  g2 f4  | % troigo!
  e2 gis4  \bar "||"
  %20
  a2.  |
  e2.  |
  f2. ~  |
  f4. g8 f4  |
  e2.  |
  %25
  g2 f4  |
  e2. ~  |
  e2 e4  |
  a2. ~  |
  a2.  \bar "|."
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

