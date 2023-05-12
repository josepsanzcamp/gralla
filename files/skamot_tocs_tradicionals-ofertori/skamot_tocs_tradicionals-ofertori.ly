\version "2.16.2"

\header {
  dedication=""
  title="Tocs tradicionals"
  subtitle="Ofertori"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Vendrell-Vilafranca"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  g2.  |
  f2.  |
  e2.  |
  f4 a2\fermata  |
  %05
  r4 g2  |
  f2 e4  |
  d2 d4  |
  g2.  |
  \repeat volta 2 { g8. fis16 fis2  |
  %10
  e8. d16 g8. f16 e8. d16  |
  g2.  | }
  d8 d ~ d4. e8  |
  f2 g4  |
  a2.\fermata  |
  %15
  g8. fis16 g2  |
  f2.  |
  e2 e4  |
  g2 e8 a  |
  a2 g4  |
  %20
  f2 e4  |
  d4 ~ \times 2/3 { d8 e f } \times 2/3 { g a g }  |
  e2 c8 d  |
  \time 2/4   e8. d16 f8. e16  |
  \time 3/4   d2 b4  |
  %25
  \time 2/4   b4. b8  |
  b4. b8  |
  \time 3/4   c2 b8 c16 d  |
  e2.\fermata  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  e2.  |
  d2.  |
  c2.  |
  d4 f2\fermata  |
  %05
  r4 e2  |
  d2 c4  |
  b2 b4  |
  e2.  |
  \repeat volta 2 { e8. d16 d2  |
  %10
  c8. b16 e8. d16 c8. b16  |
  e2.  | }
  d8 b ~ b4. b16 c  |
  d2 e4  |
  f2.\fermata  |
  %15
  e8. d16 e2  |
  d2.  |
  c2 c4  |
  e2 c8 f  |
  f2 e4  |
  %20
  d2 c4  |
  b4 ~ \times 2/3 { b8 c d } \times 2/3 { e f e }  |
  c2 a8 b  |
  \time 2/4   c8. b16 d8. c16  |
  \time 3/4   b2 g4  |
  %25
  \time 2/4   g4. g8  |
  g4. g8  |
  \time 3/4   g2 g8 a16 b  |
  c2.\fermata  \bar "|."
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

