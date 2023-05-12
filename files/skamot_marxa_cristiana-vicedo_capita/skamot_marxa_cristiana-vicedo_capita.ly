\version "2.16.2"

\header {
  dedication=""
  title="Marxa cristiana"
  subtitle="Vicedo Capità"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Enric Gironès"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  g8 c c  |
  \time 2/4   \repeat volta 2 { c2 ~  |
  c8 c c d  |
  e2 ~  |
  %05
  e8 e d c  |
  d2 ~  |
  d8 f e d }
  \alternative { { e2 ~  |
  e8 g, c c }
  %10
  { e2 ~  |
  e8 e e e } }
  a4. a8  |
  g8. a16 g8 f  |
  e4. d8  |
  %15
  e8 e e e  |
  a4. a8  |
  g8. a16 g8 f  |
  e2 ~  |
  e8 r e8. d16  |
  %20
  \repeat volta 2 { c4 c ~  |
  c8 d e f  |
  g4 d ~  |
  d8 g g g  |
  f8 f16 ( e d8 ) e  |
  %25
  f4 g  |
  e4 e8. d16  |
  c4 c ~  |
  c8 d e f  |
  g4 d ~  |
  %30
  d8 g g g  |
  a8. f16 g8. e16  |
  f8 d16 ( e f8 ) g  |
  a4 g }
  \alternative { { e4 e8. d16 }
  %35
  { e2 ~ } }
  e4 g,8. g16  |
  \repeat volta 2 { c2 ~  |
  c8. e16 d8. e16  |
  c2 ~  |
  %40
  c4 e8. e16  |
  d4 f  |
  e4 d  |
  e4. d8  |
  c4 g8. g16  |
  %45
  c2 ~  |
  c8. e16 d8. e16  |
  c2 ~  |
  c4 e8. e16  |
  d4 f  |
  %50
  e4 d  |
  c2 ~ }
  \alternative { { c4 g8. g16 }
  { c2 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  g8 e' e  |
  \time 2/4   \repeat volta 2 { e2 ~  |
  e8 e e f  |
  g2 ~  |
  %05
  g8 g f e  |
  f2 ~  |
  f8 a g f }
  \alternative { { g2 ~  |
  g8 g, e' e }
  %10
  { g2 ~  |
  g8 e e e } }
  f4. f8  |
  g8. f16 e8 d  |
  c8. d16 c8 b  |
  %15
  c8 e e e  |
  f4. f8  |
  g8. f16 e8 d  |
  c2 ~  |
  c8 r r4  |
  %20
  \repeat volta 2 { r4 g'8. f16  |
  e8 f g a  |
  b4. g8  |
  f8 g g g  |
  a8 a16 ( g f8 ) g  |
  %25
  a4 g  |
  g4 r  |
  r4 g8. f16  |
  e8 f g a  |
  b4. g8  |
  %30
  r8 e e e  |
  f8. d16 e8. c16  |
  d4. e8  |
  f4 e }
  \alternative { { c4 r }
  %35
  { c2 ~ } }
  c4 g'8. g16  |
  \repeat volta 2 { e2 ~  |
  e8. g16 f8. g16  |
  e2 ~  |
  %40
  e4 g8. g16  |
  f4 a  |
  g4 f  |
  g4. f8  |
  e4 g8. g16  |
  %45
  e2 ~  |
  e8. g16 f8. g16  |
  e2 ~  |
  e4 g8. g16  |
  f4 a  |
  %50
  g4 f  |
  e2 ~ }
  \alternative { { e4 g8. g16 }
  { e2 } } \bar "||"
}

liniaroAc =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  r4 r8  |
  \time 2/4   \repeat volta 2 { r8 g e c  |
  g'4 r  |
  r8 g e c  |
  %05
  g8 c b a  |
  b4 ( \times 2/3 { b8 ) d b }  |
  g8 d' c b }
  \alternative { { c2 ~  |
  c8 r r4 }
  %10
  { c2 ~  |
  c8 e d c } }
  a8. gis16 a8 b  |
  c4. b8  |
  a8. b16 a8 gis  |
  %15
  g8 e' d c  |
  a8. gis16 a8 b  |
  c4. b8  |
  a2 ~  |
  a8 r a8. a16  |
  %20
  \repeat volta 2 { c4 e8. d16  |
  c8 d \times 2/3 { e d c }  |
  d4. b8  |
  g8 e' e e  |
  d4. b8  |
  %25
  d4 e  |
  c4 g8. g16  |
  c4 e8. d16  |
  c8 d \times 2/3 { e d c }  |
  d4. b8  |
  %30
  g8 e' e e  |
  d4 c  |
  b8. c16 d8 e  |
  d4 b }
  \alternative { { c4 g8. g16 }
  %35
  { c2 ~ } }
  c4 g8. g16  |
  \repeat volta 2 { \times 2/3 { c8 g c } \times 2/3 { e c e }  |
  \times 2/3 { g8 e g } \times 2/3 { f e d }  |
  \times 2/3 { c8 g c } \times 2/3 { e c e }  |
  %40
  \times 2/3 { g8 e g } \times 2/3 { f e d }  |
  \times 2/3 { b8 g b } d4  |
  \times 2/3 { b8 g b } d4  |
  \times 2/3 { c8 g c } \times 2/3 { e c e }  |
  g4 g,8. g16  |
  %45
  \times 2/3 { c8 g c } \times 2/3 { e c e }  |
  \times 2/3 { g8 e g } \times 2/3 { f e d }  |
  \times 2/3 { c8 g c } \times 2/3 { e c e }  |
  \times 2/3 { g8 e g } \times 2/3 { f e d }  |
  \times 2/3 { g8 e g } \times 2/3 { f e d }  |
  %50
  \times 2/3 { b8 g b } \times 2/3 { d e d }  |
  \times 2/3 { c8 g c } \times 2/3 { e g e } }
  \alternative { { c4 g8. g16 }
  { c2 } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

