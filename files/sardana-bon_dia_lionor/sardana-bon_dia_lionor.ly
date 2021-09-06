\version "2.22.1"

\header {
  dedication="Sardana curta"
  title="  "
  subtitle="Bon dia Lionor"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Banyoles"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 1/8
  g8 \tempo 4. = 90  |
  \time 6/8   \repeat volta 2 { c4 e8 d4 b8  |
  c4. ~ c4 e8  |
  c4 c c8 d  |
  %05
  e4. e8 d c  |
  b4 c d8 e  |
  f4. f8 e d  |
  c4 c b  |
  c4. r4 g8  | }
  %10
  \repeat volta 2 { c4 c8 c4 b8  |
  a4. a8 b c  |
  d4 c8 b4 a8  |
  g4. ~ g4 e'8  |
  c4 c c8 d  |
  %15
  e4. e8 d c  |
  b4 c d8 e  |
  f4. f8 e d  |
  c4 c b }
  \alternative { { c4 r8 r4 g8 }
  %20
  { c4 r8 r4. } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4. = 90
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 6/8   \repeat volta 2 { e'4 g8 f4 d8  |
  e8. d16 c8 b c d  |
  e4 e e8 f  |
  %05
  g4. g8 f e  |
  f4 e f8 g  |
  a4. a8 g f  |
  e4 e g8 g  |
  e4. r4 g,8  | }
  %10
  \repeat volta 2 { e'4 e8 e4 d8  |
  c4. c8 d e  |
  f4 e8 f4 a8  |
  g8. f16 e8 d e f  |
  g4 e e8 f  |
  %15
  g4. g8 f e  |
  f4 e f8 g  |
  a4. a8 g f  |
  e4 e g8 g }
  \alternative { { e4 r8 r4 g,8 }
  %20
  { e'4 r8 r4. } } \bar "||"
}

liniaroAc =
\relative g'
{
  \tempo 4. = 90
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 6/8   \repeat volta 2 { c4 e8 d4 b8  |
  c4 g8 c b a  |
  g4 g g8 f  |
  %05
  e4. e8 f g  |
  f4 e f8 g  |
  a4. a8 g f  |
  e4 e g  |
  e4. r4 g8  | }
  %10
  \repeat volta 2 { e4 e8 e4 e8  |
  f4. f8 g a  |
  f4 a8 g4 f8  |
  g4. ~ g4 g8  |
  g4 g g8 f  |
  %15
  e4. e8 f g  |
  f4 e f8 g  |
  a4. a8 g f  |
  e4 e g }
  \alternative { { e4 r8 r4 g8 }
  %20
  { e4 r8 r4. } } \bar "||"
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

