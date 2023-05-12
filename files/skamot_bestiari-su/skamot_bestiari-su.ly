\version "2.16.2"

\header {
  dedication=""
  title="Bestiari"
  subtitle="Su"
  subsubtitle="Cuca fera de les Piles de Gaià"
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Sergi Carreras"
  arranger="Arr. Sònia Dallà"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative c'''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  c8 b g8. e16 c4  |
  b'8 g f8. e16 d4  |
  d8 e f8. f16 f8 a  |
  g8 e g8. e16 c4  |
  %05
  c'8 b g8. e16 c4  |
  b'8 g f8. e16 d4  |
  d8 e f8. f16 f8 a  |
  g8 e c4 r  |
  c16 d e f g8. g16 g8 a  |
  %10
  g8 e g8. g16 g4  |
  c,16 d e f g8. g16 g8 b  |
  a8 g f4 r  |
  b,16 c d e f8. f16 f8 a  |
  g8 e g8. g16 g4  |
  %15
  g8 e c8. d16 e8 f  |
  e8 d c2  |
  \repeat volta 2 { g8 e' d8. c16 b4  |
  g8 f' e8. d16 c4  |
  g8 e' d8. e16 f8 g  |
  %20
  f8 d e8. d16 c4  |
  g8 e' d8. c16 b4  |
  g8 f' e8. d16 c4  |
  g8 e' d8. e16 f8 g }
  \alternative { { f8 d c2 }
  %25
  { a'8 b c2 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  g8 c b8. a16 g4  |
  g8 d' c8. b16 a4  |
  a8 c b8. a16 g8 b  |
  a8 g b8. a16 g4  |
  %05
  g8 c b8. a16 g4  |
  g8 d' c8. b16 a4  |
  a8 c b8. a16 g8 b  |
  a8 b c4 r  |
  g16 a b c d8. d16 d8 e  |
  %10
  d8 c d8. d16 d4  |
  d16 c b c d8. d16 d8 e  |
  d8 c a4 r  |
  g16 a b c c8. c16 c8 e  |
  d8 c d8. d16 d4  |
  %15
  d8 b g8. a16 b8 c  |
  b8 a g2  |
  \repeat volta 2 { g8 c b8. a16 g4  |
  g8 d' c8. b16 a4  |
  g8 c b8. c16 d8 e  |
  %20
  d8 b c8. b16 a4  |
  g8 c b8. a16 g4  |
  g8 d' c8. b16 a4  |
  g8 c b8. c16 d8 e }
  \alternative { { d8 b g2 }
  %25
  { e'8 d c2 } } \bar "||"
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

