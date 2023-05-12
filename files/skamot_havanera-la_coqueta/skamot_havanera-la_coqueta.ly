\version "2.16.2"

\header {
  dedication=""
  title="Havanera"
  subtitle="La coqueta"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Josep Olivella"
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
  \key c \major
  \time 2/4
  g16 g8 g16 g8 \tempo 4 = 75 g  |
  g16 g8 g16 g8 g  |
  g16 g8 g16 g8 g  |
  g4 g  |
  %05
  r8. g,16 e'8 d  |
  \repeat volta 2 { d16 c8 b16 d8 c  |
  c16 b8 a16 g8 a  |
  b2  |
  b16 c8 a16 b8 g  |
  %10
  a2  |
  a16 b8 g16 a8 b  |
  g4. g8  |
  g8 e' e e  |
  e8 d4 d16 e  |
  %15
  \times 2/3 { d8 a b } \times 2/3 { c d c } }
  \alternative { { b8 d16 e f4  |
  r8. g,16 e'8 d }
  { b4 g' } }
  r8 e f e  |
  %20
  \repeat volta 2 { a4 g  |
  r8 e f e  |
  d4 a  |
  r8 d d c  |
  c16 b8 f'16 f8 f  |
  %25
  r8 b, b a  |
  a16 g8 e'16 e8 e  |
  r8 e f e  |
  a4 g  |
  r8 e16 f g a b c  |
  %30
  c4 a  |
  r8 d, e f  |
  f16 e8 g,16 e'8 e  |
  e16 d8 g,16 d'8 d }
  \alternative { { c2  |
  %35
  r8 e f e }
  { c2 } }
  r8 a16 b c d c b  |
  c4 g  |
  r8 a16 b c b c d  |
  %40
  e2  |
  f16 e8 d16 \times 2/3 { c8 b a }  |
  c8 g4 e'8  |
  \times 2/3 { d8 c d } f b,  |
  c4 c'  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4 = 75
  \clef treble
  \key c \major
  \time 2/4
  g16 a8 b16 a8 g  |
  b16 c8 d16 c8 b  |
  d16 e8 f16 e8 d  |
  f4 b,  |
  %05
  r2  |
  \repeat volta 2 { e,2  |
  e2  |
  f2  |
  g16 a8 f16 g8 e  |
  %10
  f2  |
  f16 g8 e16 f8 g  |
  e4. e8  |
  e8 g g g  |
  fis8 fis4 fis16 fis  |
  %15
  \times 2/3 { f8 f f } \times 2/3 { f f f } }
  \alternative { { g8 b16 c d4  |
  r2 }
  { g,4 b } }
  r2  |
  %20
  \repeat volta 2 { r2  |
  r2  |
  r2  |
  r8 b b a  |
  a16 g8 b16 b8 b  |
  %25
  r8 g g f  |
  f16 e8 g16 g8 g  |
  r2  |
  r2  |
  r8 c16 d e f e e  |
  %30
  e4 f  |
  r8 f, g a  |
  a16 g8 e16 g8 g  |
  f2 }
  \alternative { { e2  |
  %35
  r2 }
  { e2 } }
  f2  |
  e2  |
  f4. a8  |
  %40
  gis2  |
  d'16 c8 b16 \times 2/3 { a8 g f }  |
  e8 e4 g8  |
  \times 2/3 { f8 f f } f f  |
  e4 e'  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

