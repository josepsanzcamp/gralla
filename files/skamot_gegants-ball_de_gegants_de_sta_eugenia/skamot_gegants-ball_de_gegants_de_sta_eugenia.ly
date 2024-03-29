\version "2.16.2"

\header {
  dedication=""
  title="Ball de gegants"
  subtitle="Ball de gegants de Santa Eugènia de Berga"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Sebastià Bardolet, 1998"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative b'
{
  \clef treble
  \key g \major
  \time 1/8
  b16 c \tempo 4. = 55  |
  \time 3/8   \repeat volta 2 { d8 e d  |
  b4 d8  |
  c16 b a8 e'  |
  %05
  d8 b b16 c  |
  d8 e d  |
  b4 d8 }
  \alternative { { c16 b c b c a  |
  g4 b16 c }
  %10
  { c16 b c d e fis } }
  \repeat volta 2 {
  g4 b,8  |
  a16 a a8 c  |
  b16 b b8 d  |
  c16 c c8 e  |
  %15
  e8 d b  |
  a16 a a8 c  |
  b16 b b8 d }
  \alternative { { c16 b c b c a  |
  g4 b8 }
  %20
  { c16 b c d e fis } }
  \time 2/8   g4  |
  \repeat volta 2 { \times 2/3 { d16 e d } \times 2/3 { c b c }  |
  d8 g  |
  \times 2/3 { d16 e d } \times 2/3 { c b a } }
  %25
  \alternative { { g4 }
  { g8 g'16. d32 } }
  \repeat volta 2 {
  g16. d32 \times 2/3 { g16 fis e }  |
  d8 \times 2/3 { d16 e d } }
  \alternative { { c16. c32 \times 2/3 { c16 b c }  |
  %30
  d8 g16. d32 }
  { c16. c32 \times 2/3 { d16 e fis }  |
  g4 \fermata } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4. = 55
  \clef treble
  \key g \major
  \time 1/8
  g16 a  |
  \time 3/8   \repeat volta 2 { b8 c b  |
  g4 b8  |
  a16 g fis8 c'  |
  %05
  b8 g g16 a  |
  b8 c b  |
  g4 b8 }
  \alternative { { a16 g a g a fis  |
  g4 r8 }
  %10
  { fis16 g a b c a } }
  \repeat volta 2 {
  b4 r8  |
  fis16 fis fis8 fis  |
  g16 g g8 g  |
  a16 a a8 fis  |
  %15
  g4 g8  |
  fis16 fis fis8 fis  |
  g16 g g8 b }
  \alternative { { a16 g a8 fis  |
  g4 r8 }
  %20
  { a16 g a b c d } }
  \time 2/8   b4  |
  \repeat volta 2 { b8 a  |
  b8 c  |
  b8 a }
  %25
  \alternative { { g4 }
  { g8 b16. a32 } }
  \repeat volta 2 {
  b16. a32 \times 2/3 { e'16 d c }  |
  b8 \times 2/3 { b16 c b } }
  \alternative { { a16. a32 \times 2/3 { a16 g a }  |
  %30
  b8 b16. a32 }
  { a16. a32 \times 2/3 { b16 c d }  |
  b4 \fermata } } \bar "||"
}

liniaroAc =
\relative g,
{
  \tempo 4. = 55
  \clef bass
  \key g \major
  \time 1/8
  r8  |
  \time 3/8   \repeat volta 2 { g8 g' g  |
  g,8 g' g  |
  d8 d' d  |
  %05
  g,,8 g' g  |
  g,8 g' g  |
  g,8 g' g }
  \alternative { { d8 d' d  |
  g,8 g, r }
  %10
  { d'8 d' d } }
  \repeat volta 2 {
  g,8 g, r  |
  d'8 c' d  |
  g,8 b d  |
  d,8 fis c'  |
  %15
  c8 b4  |
  d,8 c' d  |
  g,8 b d }
  \alternative { { d,8 fis c'  |
  b8 g r }
  %20
  { d8 fis c' } }
  \time 2/8   b8 g,  |
  \repeat volta 2 { g'8 d  |
  g8 d  |
  g8 fis }
  %25
  \alternative { { g8 g, }
  { g'8 g } }
  \repeat volta 2 {
  g8 g  |
  g8 g }
  \alternative { { d8 d  |
  %30
  g8 g }
  { d8 d  |
  g4 \fermata } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Baix" shortInstrumentName = #"B"} \liniaroAc
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
        \new Staff \with {instrumentName = #"Baix" shortInstrumentName = #"B"} \liniaroAc
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
  \header {instrument="Baix"}
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

