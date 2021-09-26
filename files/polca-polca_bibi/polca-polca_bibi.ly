\version "2.16.2"

\header {
  dedication="Polca"
  title=""
  subtitle="Polca Bibí"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="San Juan de Plan"
  arranger="Aragó"
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
  \time 2/4
  r8 g16 g g8 g  |
  \repeat volta 2 { c8. d16 e8 f  |
  g8. a16 g8 e  |
  f8. g16 f8 d  |
  %05
  e4 c8 g  |
  c8. d16 e8 f  |
  g8. a16 g8 e  |
  f8. g16 f8 d }
  \alternative { { c8 g16 g g8 g }
  %10
  { c4 r8 g' } }
  \repeat volta 2 { c4 r8 a  |
  b4 r8 g  |
  f8 r f r  |
  f8 r r g  |
  %15
  b4 r8 a  |
  g4 r8 f  |
  e8 r e r  |
  e8 r r g  |
  c8 r c r  |
  %20
  c8 r r g  |
  b8 r b r  |
  b8 r r g  |
  b8 c16 b a8 g  |
  f8 g16 f e8 d }
  %25
  \alternative { { c8 r r g' }
  { c,8 r c r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r8 g16 g g8 g  |
  \repeat volta 2 { e8. f16 g8 a  |
  b8. c16 b8 g  |
  a8. b16 a8 f  |
  %05
  g4 e8 g  |
  e8. f16 g8 a  |
  b8. c16 b8 g  |
  a8. b16 a8 f }
  \alternative { { e8 g16 g g8 g }
  %10
  { e4 r } }
  \repeat volta 2 { r4 g8 r  |
  r4 g8 r  |
  r4 f8 r  |
  f8 r r4  |
  %15
  r4 f8 r  |
  r4 f8 r  |
  r4 g8 r  |
  g8 r r4  |
  r4 g8 r  |
  %20
  g8 r r4  |
  r4 f8 r  |
  f8 r r g  |
  g8 a16 g f8 g  |
  a8 g16 f e8 f }
  %25
  \alternative { { e8 r r4 }
  { e8 r g r } } \bar "||"
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

