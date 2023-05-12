\version "2.16.2"

\header {
  dedication=""
  title="Concert"
  subtitle="Coral graller número 1"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Marcel Casellas, 2001"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g''
{
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { r4 g \tempo 4 = 60  |
  a2  |
  g2 ~  |
  g8 a fis g  |
  %05
  e4. fis8  |
  g8 d b d  |
  e8 cis a cis  |
  d2  | }
  r8 d g g  |
  %10
  r8 d f f  |
  r8 c e e  |
  r8 e a a  |
  r4 e ~  |
  e4 g  |
  %15
  a4 b  |
  c4 fis,  \bar "||"
  g2  |
  a2  |
  g2 ~  |
  %20
  g8 a fis g  |
  e4. fis8  |
  g8 d b d  |
  e8 cis a cis  |
  d2  |
  %25
  g4 e  |
  g4 r  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4 = 60
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { b2  |
  c2 ~  |
  c4 b8 c  |
  d2  |
  %05
  c2  |
  b2  |
  a2 ~  |
  a8 b d c  | }
  b2 ~  |
  %10
  b2  |
  c2 ~  |
  c2  |
  r8 a cis cis  |
  r8 cis e e  |
  %15
  r8 a, d d  |
  r8 e d c  \bar "||"
  b2  |
  c2 ~  |
  c4 b8 c  |
  %20
  d2  |
  c2  |
  b2  |
  a2 ~  |
  a8 b d c  |
  %25
  b4 c  |
  b4 r  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4 = 60
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g2  |
  fis2  |
  e8 e16 fis g8 a  |
  b2  |
  %05
  c4 b8 a  |
  g2 ~  |
  g8 g fis e  |
  fis4. a8  | }
  g4 g  |
  %10
  g4 g  |
  g4 g  |
  g4 g  |
  a4 a  |
  a4 a  |
  %15
  fis2 ~  |
  fis4 a  \bar "||"
  r4 g  |
  fis2  |
  e8 e16 fis g8 a  |
  %20
  b2  |
  c4 b8 a  |
  g2 ~  |
  g8 g fis e  |
  fis4. a8  |
  %25
  g2 ~  |
  g4 r  \bar "|."
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

