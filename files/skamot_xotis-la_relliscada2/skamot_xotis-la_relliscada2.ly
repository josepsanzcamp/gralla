\version "2.16.2"

\header {
  dedication=""
  title="Xotis"
  subtitle="La relliscada"
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
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r8 d e fis  |
  \time 4/4   \repeat volta 2 { g4 g g fis  |
  e4 e r8 c d e  |
  fis4 fis fis \times 2/3 { e8 fis e }  |
  %05
  d2 r8 b c d  |
  e4 e e d  |
  c4 c r8 a b c  |
  d4 d d c }
  \alternative { { b8 a b c d d \breathe e fis }
  %10
  { b,2 r4 d } }
  \repeat volta 2 { b4 d b d  |
  c8. c16 c8. c16 c4 e8 g  |
  fis4. g8 fis g fis e  |
  d8 c b c d4 d  |
  %15
  b4 d b d  |
  c8. c16 c8. c16 c4 e8. g16  |
  fis4. fis8 fis d e fis }
  \alternative { { g2 r4 d }
  { g2 r1 } } \bar "||" % troigo!
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r8 d c a  |
  \time 4/4   \repeat volta 2 { b4 b b \times 2/3 { d8 e d }  |
  c4 c r8 a b c  |
  a4 a a \times 2/3 { c8 d c }  |
  %05
  b2 r8 g a b  |
  c4 c c b  |
  a4 a r8 a g a  |
  b4 b b a }
  \alternative { { g2 r8 d' c a }
  %10
  { g2 r4 b } }
  \repeat volta 2 { g4 b g b  |
  a8. a16 a8. a16 a4 c8 e  |
  d4. e8 d e d c  |
  b2 r4 b  |
  %15
  g4 b g b  |
  a8. a16 a8. a16 a4 c8. e16  |
  d4. d8 d b c a }
  \alternative { { b2 r4 b }
  { b2 r1 } } \bar "||" % troigo!
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

