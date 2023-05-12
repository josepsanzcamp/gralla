\version "2.16.2"

\header {
  dedication=""
  title="Cercavila"
  subtitle="Les Calçaes"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Morella"
  arranger="Julià Pastor"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 4 { e4. d8 \tempo 4 = 120  |
  c8 d e c  |
  a8 \espressivo g4. ~  |
  g4 g8 c  |
  %05
  e4 g  |
  a8. g16 f8 e  |
  d2 ~  |
  d4 r  |
  d4. e8  |
  %10
  d8 b d b  |
  a8 \espressivo g4. ~  |
  g4 g8 b  |
  d4 g  |
  a8. g16 f8 g  |
  %15
  e4 d  |
  e8 r r4  | % kompletite
  e4. d8  |
  c8 d e c  |
  a8 \espressivo g4. ~  |
  %20
  g4 g8 c  |
  e4 g  |
  f8. e16 d8 e  |
  f2 ~  |
  f4 r  |
  %25
  f4. e8  |
  d8 e f d  |
  e4 c  |
  g2  |
  d'4. e8  |
  %30
  g8 f e d }
  \alternative { { c2  |
  r4 dis -- }
  { c4 -. g --  |
  c4 -. -. r } } \bar "||"
}

liniaroAb =
\relative g''
{
  \tempo 4 = 120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 4 { g4. f8  |
  e8 f g e  |
  c8 \espressivo g c e  |
  g2  |
  %05
  g8 c b4  |
  c8. b16 a8 g  |
  f4 g,8 a  |
  b8 c d e  |
  f4. g8  |
  %10
  f8 g a g  |
  f8 \espressivo d b d  |
  f2  |
  f8 c' b4  |
  c8. b16 a8 b  |
  %15
  g2  |
  r8 c b a  |
  g4. f8  |
  e8 f g e  |
  c8 \espressivo g c e  |
  %20
  g2  |
  g8 c b4  |
  a8. g16 f8 g  |
  a4 b,8 c  |
  d8 e f g  |
  %25
  a4. g8  |
  f8 g a f  |
  g4 a  |
  g4 d8 e  |
  f4. g8  |
  %30
  b8 a g f }
  \alternative { { e2  |
  r4 g -- }
  { e4 -. g --  |
  c4 r } } \bar "||"
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

