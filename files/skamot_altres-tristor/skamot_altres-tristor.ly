\version "2.16.2"

\header {
  dedication=""
  title=""
  subtitle="Tristor"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Germán Aresté"
  arranger="Flix, la Ribera d'Ebre"
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 6/8
  \repeat volta 2 { r4 g8 c4 d8  |
  e4. e8 e e  |
  d4 e8 f4 d8  |
  e4 d8 c4.  |
  %05
  r4 g8 c4 d8  |
  e4. e8 e e  |
  g4 g8 f4 e8  |
  d2.  |
  r4 g,8 g4 a8  |
  %10
  b4. b8 b b  |
  d4 d8 c4 b8  |
  c4 d8 e4.  |
  r4 g,8 g4 a8  |
  b4. b8 b b  |
  %15
  c4 b8 a4 b8  |
  g2.  | }
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 6/8
  \repeat volta 2 { r4 g8 c4 d8  |
  c2. ~  |
  c4 c8 d4 b8  |
  c4 b8 a4.  |
  %05
  r4 g8 c4 d8  |
  c2. ~  |
  c4 e8 d4 c8  |
  b2.  |
  r4 g8 g4 a8  |
  %10
  g2. ~  |
  g4 b8 a4 g8  |
  a4 b8 c4.  |
  r4 g8 g4 a8  |
  g2. ~  |
  %15
  g4 g8 a4 g8  |
  g2.  | }
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

