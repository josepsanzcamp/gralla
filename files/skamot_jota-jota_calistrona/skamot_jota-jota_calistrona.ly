\version "2.16.2"

\header {
  dedication=""
  title="Jota"
  subtitle="Jota calistrona"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Mallorca"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  d8 e d c  |
  \time 3/4   \repeat volta 2 { b4 b8 c d4 ~  |
  d4 e8 d c b  |
  d2 c4 ~  |
  %05
  c4 c8 d c b  |
  a4 a8 b c4 ~  |
  c4 d8 c b a  |
  c2 b4 ~ }
  \alternative { { b4 d8 e d c }
  %10
  { b4 b8 a b c } }
  \repeat volta 2 { d4 d d  |
  e4 e e  |
  fis4 fis fis  |
  g4 fis8 e d4 ~  |
  %15
  d4 d8 e d e  |
  fis4 e8 d c4 ~  |
  c4 c8 d c d  |
  e4 d8 c b4 ~ }
  \alternative { { b4 b8 a b c }
  %20
  { b4 d e } }
  g4 d e  |
  fis4 d c  |
  b4 r d  |
  g2. ~  |
  %25
  g4 b,8 a b c  |
  \repeat volta 2 { d2 g4  |
  e2 fis4  |
  d4 d8 c b4 ~  |
  b4 d e  |
  %30
  c4 c8 b a4 ~  |
  a4 d e  |
  d4 d8 c b4 ~ }
  \alternative { { b4 b8 a b c }
  { b4 b c } }
  %35
  \repeat volta 2 { d4 e d ~  |
  d4 e8 d c b  |
  d2 c4 ~  |
  c4 a b  |
  c4 d c ~  |
  %40
  c4 e8 e e e  |
  d4 d8 c b4 ~ }
  \alternative { { b4 b c }
  { b4 r r } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  b8 c b a  |
  \time 3/4   \repeat volta 2 { g4 g8 a b4 ~  |
  b4 c8 b a g  |
  b2 a4 ~  |
  %05
  a4 a8 b a g  |
  fis4 fis8 g a4 ~  |
  a4 b8 a g fis  |
  a2 g4 ~ }
  \alternative { { g4 b8 c b a }
  %10
  { g4 g8 fis g a } }
  \repeat volta 2 { fis4 fis fis  |
  a4 a a  |
  d4 d d  |
  b4 d8 c b4 ~  |
  %15
  b4 b8 c b c  |
  d4 c8 b a4 ~  |
  a4 a8 b a b  |
  c4 b8 a g4 ~ }
  \alternative { { g4 g8 fis g a }
  %20
  { g4 b c } }
  b4 b c  |
  d4 b a  |
  g4 r b  |
  g2. ~  |
  %25
  g4 g8 fis g a  |
  \repeat volta 2 { b2 b4  |
  c2 d4  |
  b4 b8 a g4 ~  |
  g4 b c  |
  %30
  a4 a8 g fis4 ~  |
  fis4 b c  |
  b4 b8 a g4 ~ }
  \alternative { { g4 g8 fis g a }
  { g4 g a } }
  %35
  \repeat volta 2 { b4 c b ~  |
  b4 c8 b a g  |
  b2 a4 ~  |
  a4 fis g  |
  a4 b a ~  |
  %40
  a4 c8 c c c  |
  b4 b8 a g4 ~ }
  \alternative { { g4 g a }
  { g4 r r } } \bar "||"
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

