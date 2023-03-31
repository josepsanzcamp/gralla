\version "2.16.2"

\header {
  dedication="Vals"
  title=""
  subtitle="Vals del gitano"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. A. Riera"
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
  g4 \tempo 4 = 156 e'  |
  \time 3/4   \repeat volta 2 { e2 d4  |
  f2 e4  |
  d4 c2 ~  |
  %05
  c4 g e'  |
  e2 d4  |
  c2 a'4  |
  g2. ~  |
  g4 g g  |
  %10
  a2 f4 ~  |
  f4 c a'  |
  g2 e4 ~  |
  e4 c e  |
  d4 g g  |
  %15
  f4 e d  |
  c2. ~ }
  \alternative { { c4 g e' }
  { c4  r2 } } \bar "||" % kompletite
}

liniaroAb =
\relative c''
{
  \tempo 4 = 156
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  \time 3/4   \repeat volta 2 { r4 c g  |
  r4 b g  |
  r4 c c  |
  %05
  g4 r r  |
  r4 c g  |
  r4 e' e  |
  r4 d d  |
  b4 r r  |
  %10
  r4 c c  |
  r4 a a  |
  r4 c c  |
  r4 g g  |
  r4 b b  |
  %15
  r4 g b  |
  c4 b d }
  \alternative { { c4 r r }
  { c4 r2 } } \bar "||" % kompletite
}

liniaroAc =
\relative g'
{
  \tempo 4 = 156
  \clef treble
  \key c \major
  \time 2/4
  g4 c  |
  \time 3/4   \repeat volta 2 { c2 b4  |
  d2 c4  |
  b4 a g ~  |
  %05
  g4 g c  |
  c2 b4  |
  a2 g4  |
  b2. ~  |
  b4 b b  |
  %10
  c2 a4 ~  |
  a4 a c  |
  e2 c4 ~  |
  c4 c g  |
  b4 d ^\markup {\draw-line #'(2 . 2)} e  |
  %15
  d4 c b  |
  c2. ~ }
  \alternative { { c4 r r }
  { c4  r2 } } \bar "||" % kompletite
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

