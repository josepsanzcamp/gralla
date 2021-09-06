\version "2.22.1"

\header {
  dedication="Ball de bastons"
  title="   "
  subtitle="La Boja de Ribes"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. Anna Riera"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  g8 g16 g g8 g  |
  g8 r d16 e fis e  |
  \repeat volta 2 { d8 e d e  |
  d4 g16 a b a  |
  %05
  g8 a g a }
  \alternative { { g4 e16 fis g e  |
  fis8 c c d  |
  fis4 e16 fis g e  |
  fis8 b, b c  |
  %10
  d4 d16 e fis e }
  { g4 e8 fis } }
  a8. g16 fis8 e  |
  d8 b d g  |
  b4 a  |
  %15
  g4 r8 \times 2/3 { d16 e fis }  |
  g8 \times 2/3 { d16 e fis } g8 \times 2/3 { d16 e fis }  |
  g4 r  |
  \repeat volta 2 { g8 a g4  |
  r8 a g a  |
  %20
  fis8 g fis4  |
  r8 g fis g  |
  e8 fis e4  |
  r8 fis e fis  |
  d2  |
  %25
  r2 }
  \alternative { { e8 fis e4  |
  r8 fis e fis  |
  d8 e d4  |
  r8 e d e  |
  %30
  c8 d b4  |
  r8 d b a  |
  b8 c d r  |
  d8 r r4 }
  { e8 d c4  |
  %35
  r8 e d c  |
  d8 c b4  |
  r8 d c b  |
  c8 b a4  |
  r8 e' d c  |
  %40
  b4 d  |
  g4 r } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  b8 b16 b b8 b  |
  b8 r b16 c d c  |
  \repeat volta 2 { b8 c b c  |
  b4 b16 c d c  |
  %05
  b8 c b c }
  \alternative { { b4 c16 d e c  |
  d8 a a b  |
  d4 c16 d e c  |
  d8 g, g a  |
  %10
  b4 b16 c d c }
  { b4 c8 d } }
  c8. e16 d8 c  |
  b8 g b d  |
  d4 c  |
  %15
  b4 r8 \times 2/3 { d16 e fis }  |
  g8 \times 2/3 { d16 e fis } g8 \times 2/3 { d16 e fis }  |
  g4 r  |
  \repeat volta 2 { b,8 c b4  |
  r8 c b c  |
  %20
  a8 b a4  |
  r8 b a b  |
  c8 d c4  |
  r8 d c d  |
  b2  |
  %25
  r2 }
  \alternative { { c8 d c4  |
  r8 d c d  |
  b8 c b4  |
  r8 c b c  |
  %30
  a8 b g4  |
  r8 b g a  |
  g8 a b r  |
  b8 r r4 }
  { c8 b a4  |
  %35
  r8 c b a  |
  b8 a g4  |
  r8 b a g  |
  a8 b a4  |
  r8 c b a  |
  %40
  g4 b  |
  b4 r } } \bar "||"
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

