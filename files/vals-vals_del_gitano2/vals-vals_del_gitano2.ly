\version "2.22.1"

\header {
  dedication="Vals"
  title=""
  subtitle="Vals del gitano"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. Toni Codina"
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
  \time 2/4
  g4 e' \tempo 4 = 156  |
  \time 3/4   e2 d4  |
  f2 e4  |
  d4 c2  |
  %05
  r4 g e'  |
  e2 d4  |
  c2 a'4  |
  g2.  |
  r4 g g  |
  %10
  \repeat volta 2 { a2 f4  |
  r4 c a'  |
  g2 e4  |
  r4 c e  |
  d4 g g  |
  %15
  f4 e d }
  \alternative { { c2.  |
  r4 g' g }
  { c,2. } } \bar "||"
}

liniaroAb =
\relative c''
{
  \tempo 4 = 156
  \clef treble
  \key c \major
  \time 2/4
  r4 r  |
  \time 3/4   c2 b4  |
  d2 b4  |
  c4 g a  |
  %05
  g2.  |
  c2 b4  |
  c4 g a  |
  b2.  |
  r4 b b  |
  %10
  \repeat volta 2 { c2 a4  |
  r4 a c  |
  c2 g4  |
  r4 g a  |
  b4 a g  |
  %15
  g4 a b }
  \alternative { { c2.  |
  r4 b b }
  { c2. } } \bar "||"
}

liniaroAc =
\relative g'
{
  \tempo 4 = 156
  \clef treble
  \key c \major
  \time 2/4
  g4 g  |
  \time 3/4   c2.  |
  g2.  |
  e2.  |
  %05
  r4 g g  |
  c2.  |
  g2.  |
  f2.  |
  r4 g g  |
  %10
  \repeat volta 2 { f2 c'4  |
  c2 a4  |
  e2 c'4  |
  c2 r4  |
  g2.  |
  %15
  f2. }
  \alternative { { e2.  |
  r4 g g }
  { e2. } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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

\bookpart {
  \header {instrument=""}
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

