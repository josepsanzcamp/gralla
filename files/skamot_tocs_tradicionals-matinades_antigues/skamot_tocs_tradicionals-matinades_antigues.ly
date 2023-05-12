\version "2.16.2"

\header {
  dedication=""
  title="Tocs tradicionals"
  subtitle="Matinades antigues"
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
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  \times 2/3 { b8 c d }  |
  \time 4/4   \repeat volta 2 { e4. d8 e8. d16 e8. f16  |
  g8. a16 g8. f16 e8. d16 e8. g16  |
  f8. g16 f8. e16 d8. e16 f8. d16  |
  %05
  e8. f16 g8. f16 e8 r \times 2/3 { b c d }  |
  e4. d8 e8. d16 e8. f16  |
  g8. a16 g8. f16 e8 r \times 2/3 { e d e }  |
  f1 ~  |
  f1 ~  |
  %10
  f4 r e2  |
  d1 ~  |
  d1 ~  |
  d4 r g2  |
  e1 ~  |
  %15
  e1 ~ }
  \alternative { { e4 r r \times 2/3 { b8 c d } }
  { e1 ~ } }
  e1 ~  |
  e4 r r2  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  \times 2/3 { g8 a b }  |
  \time 4/4   \repeat volta 2 { c4. b8 c8. b16 c8. d16  |
  e8. f16 e8. d16 c8. b16 c8. e16  |
  d8. e16 d8. c16 b8. c16 d8. b16  |
  %05
  c8. d16 e8. d16 c8 r \times 2/3 { g a b }  |
  c4. b8 c8. b16 c8. d16  |
  e8. f16 e8. d16 c8 r \times 2/3 { c b c }  |
  d1 ~  |
  d1 ~  |
  %10
  d4 r c2  |
  b1 ~  |
  b1 ~  |
  b4 r g2  |
  c1 ~  |
  %15
  c1 ~ }
  \alternative { { c4 r r \times 2/3 { g8 a b } }
  { c1 ~ } }
  c1 ~  |
  c4 r r2  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { tomfl1:32  |
  tomfl1:32  |
  tomfl1:32  |
  %05
  tomfl1:32  |
  tomfl1:32  |
  tomfl1:32  |
  tomfl1:32  |
  tomfl1:32  |
  %10
  tomfl1:32  |
  tomfl1:32  |
  tomfl1:32  |
  tomfl1:32  |
  tomfl1:32  |
  %15
  tomfl1:32 }
  \alternative { { tomfl1:32 }
  { tomfl1:32 } }
  tomfl1:32  |
  tomfl4 r r2  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
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

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

