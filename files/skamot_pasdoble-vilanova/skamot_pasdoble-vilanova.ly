\version "2.16.2"

\header {
  dedication="Pasdoble"
  title=""
  subtitle="Vilanova"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Manel Rius"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r8 d b d  |
  \repeat volta 2 { e4 g  |
  fis4 d  |
  b2 ~  |
  %05
  b8 b a b  |
  c8. b16 c8 r  |
  r8 c b c  |
  d8. b16 d8 r  |
  r8 d b d  |
  %10
  e4 g  |
  fis4 d  |
  b2 ~  |
  b8 b a b  |
  c8. b16 c8 r  |
  %15
  r8 a b a  |
  g2 ~  |
  g4 r  |
  a4 b  |
  c4 d  |
  %20
  fis2  |
  e2  |
  d4 a  |
  d4 c  |
  b2 ~  |
  %25
  b4 r  |
  a4 b  |
  c4 d  |
  fis2  |
  e2  |
  %30
  e4 fis  |
  e4 d  |
  g8 g16 g g8 g }
  \alternative { { g8 d b d }
  { g4 r } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r8 b g b  |
  \repeat volta 2 { c4 e  |
  d4 b  |
  g2 ~  |
  %05
  g8 g a g  |
  a8. g16 a8 r  |
  r8 a g a  |
  b8. g16 b8 r  |
  r8 b g b  |
  %10
  c4 e  |
  d4 b  |
  g2 ~  |
  g8 g a g  |
  a8. g16 a8 r  |
  %15
  r8 d e fis  |
  g8 d b d  |
  g,4 r  |
  a4 g  |
  a4 b  |
  %20
  d2  |
  c2  |
  b4 c  |
  b4 a  |
  g2 ~  |
  %25
  g4 r  |
  a4 g  |
  a4 b  |
  d2  |
  c2  |
  %30
  c4 d  |
  c4 a  |
  b8 b16 b b8 b }
  \alternative { { b8 b g b }
  { b4 r } } \bar "||"
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

