\version "2.16.2"

\header {
  dedication=""
  title=""
  subtitle="Les Cucanyes"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Callosa d'en Sarrià"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  e16 d  |
  \time 2/4   c8. g16 c g c d  |
  e4 r8 e16 d  |
  c8. g16 c g c d  |
  %05
  e4 r8 e  |
  f16 f8 e16 d8 f  |
  e16 f e d c8 e  |
  d16 d8 f16 e8 d  |
  c8 r r e16 d  |
  %10
  c8. g16 c g c d  |
  e4 r8 e16 d  |
  c8. g16 c g c d  |
  e4 r8 e  |
  f8 \times 2/3 { g16 f e } d8 f  |
  %15
  e16 f e d c8 e  |
  d16 d8 f16 e8 d  |
  c8 r16 e g8 g,  |
  c8 r16 e g8 g,  |
  c8 r16 e e8 e  |
  %20
  e4. d8  |
  c8 r16 e e8 e  |
  f8. g16 f e d c  |
  b8. d16 d8 d  |
  d4. b8  |
  %25
  g4 r8 f'  |
  e16 f8 e16 d8 e  |
  c8 r16 e e8 e  |
  e4. d8  |
  c8 r16 e e8 e  |
  %30
  e4. d16 c  |
  b8 r16 d d8 d  |
  d4. b8  |
  g4 r8 e'  |
  e16 f8 e16 d8 e  |
  %35
  c8 r16 e g8 g,  |
  c16 c8 e16 g8 g,  |
  c2 ~  |
  c8 r r e16 f  |
  \repeat volta 2 { g16 g8 g16 g8 a16 b  |
  %40
  c16 c8 c16 c8 b16 a  |
  g16 g8 g16 g8 a16 f  |
  g4. f16 g  |
  a8 f4 e16 f  |
  g8 e4 d16 e  |
  %45
  f16 e d c b8 d }
  \alternative { { c4 r8 e16 f }
  { c8 r16 e g8 g, } }
  c8 r16 e g8 g,  |
  c8 r16 e e8 e  |
  %50
  e8 r r d  |
  c8 r16 e e8 e  |
  e8 r r d16 c  |
  b8 r16 d d8 d  |
  d8 r r b  |
  %55
  g8 r r f'  |
  e16 f8 e16 d8 e  |
  c8 r16 e e8 e  |
  e8 r r d  |
  c8 r16 e e8 e  |
  %60
  e8 r r d16 c  |
  b8 r16 d d8 d  |
  d8 r r b  |
  g8 r r f'  |
  e16 f8 e16 d8 e  |
  %65
  c8 r16 e g8 g,  |
  c8 r16 e g8 g,  |
  c2 ~  |
  c8 r r4  \bar "|."
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g16 f  |
  \time 2/4   e8. d16 e d e f  |
  g4 r8 g16 f  |
  e8. d16 e d e f  |
  %05
  g4 r8 g  |
  a16 a8 g16 f8 a  |
  g16 a g f e8 g  |
  f16 f8 a16 g8 f  |
  e8 r r g16 f  |
  %10
  e8. d16 e d e f  |
  g4 r8 g16 f  |
  e8. d16 e d e f  |
  g4 r8 g  |
  g8 \times 2/3 { b16 a g } f8 a  |
  %15
  g16 a g f e8 g  |
  f16 f8 a16 g8 f  |
  e8 r16 e g8 f  |
  e8 r16 e g8 f  |
  e8 r16 g g8 g  |
  %20
  g4. f8  |
  e8 r16 g g8 g  |
  a8. b16 a g f e  |
  d8. f16 f8 f  |
  f4. d8  |
  %25
  b4 r8 a'  |
  g16 a8 g16 f8 g  |
  e8 r16 g g8 g  |
  g4. f8  |
  e8 r16 g g8 g  |
  %30
  g4. f16 e  |
  d8 r16 f f8 f  |
  f4. d8  |
  b4 r8 g'  |
  g16 a8 g16 f8 g  |
  %35
  e8 r16 e g8 f  |
  e16 e8 e16 g8 f  |
  e2 ~  |
  e8 r r4  |
  \repeat volta 2 { r2  |
  %40
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %45
  r2 }
  \alternative { { r2 }
  { r8. e16 g8 f } }
  e8 r16 g g8 f  |
  e8 r16 g g8 g  |
  %50
  g8 r r f  |
  e8 r16 g g8 g  |
  g8 r r f16 e  |
  d8 r16 f f8 f  |
  f8 r r d  |
  %55
  b8 r r a'  |
  g16 a8 g16 f8 g  |
  e8 r16 g g8 g  |
  g8 r r f  |
  e8 r16 g g8 g  |
  %60
  g8 r r f16 e  |
  d8 r16 f f8 f  |
  f8 r r d  |
  b8 r r a'  |
  g16 a8 g16 f8 g  |
  %65
  e8 r16 e g8 f  |
  e8 r16 e g8 f  |
  e2 ~  |
  e8 r r4  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
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
  \header {instrument="Gralla 1"}
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

