\version "2.16.2"

\header {
  dedication=""
  title="Rumba"
  subtitle="Ai, nena, si vols venir"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 1/4
  g4 \tempo 4 = 180  |
  \time 4/4   e'8 e4 dis8 e4 d  |
  c4 r r e  |
  e8 e4 dis8 e4 g  |
  %05
  f4. d g,4  |
  g'8 g4 f8 a4 f  |
  g4. d4 b d8  |
  g4 r r f  |
  e4. c g4  |
  %10
  e'8 e4 dis8 e4 d  |
  c4 r r e  |
  e8 e4 e8 f4 g  |
  a4 r r a  |
  a8 f4 d8 f4 a  |
  %15
  g8 e4 c8 e4 g  |
  f4. d g4  |
  c,8 c4 d8 e f g gis  |
  a8 f4 d8 f4 a  |
  g8 e4 c8 e4 g  |
  %20
  f4. d g4  |
  c,4 e8 e r2  |
  a2 f4. g8 ~  |
  g4 r r8 e4 e8  |
  f8 f4 f e8 f4  |
  %25
  g4 r4 r2  | % troigo!
  a2 f4. g8 ~  |
  g4 r r8 e4 e8  |
  f8 f4 f e8 d4  |
  c4 e8 e r2  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4 = 180
  \clef treble
  \key c \major
  \time 1/4
  g4  |
  \time 4/4   c8 c4 b8 c4 b  |
  a4 r r g  |
  a8 a4 b8 c4 e  |
  %05
  d4. b g4  |
  b8 b4 c8 c4 d  |
  b4. g4 g g8  |
  g4 r r b  |
  c4. c g4  |
  %10
  c8 c4 b8 c4 b  |
  a4 r r g  |
  a8 a4 g8 a4 b  |
  a4 r r f'  |
  f8 d4 b8 d4 f  |
  %15
  e8 c4 g8 c4 e  |
  d4. b b4  |
  c8 c4 b8 c4 e  |
  f8 d4 b8 d4 f  |
  e8 c4 g8 c4 e  |
  %20
  d4. b b4  |
  c4 c8 c r2  |
  f2 d4. e8 ~  |
  e4 r r8 c4 c8  |
  d8 d4 d c8 d4  |
  %25
  e4 r4 r2  | % troigo!
  f2 d4. e8 ~  |
  e4 r r8 c4 c8  |
  d8 d4 d c8 b4  |
  c4 c8 c r2  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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
  \header {instrument=""}
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

