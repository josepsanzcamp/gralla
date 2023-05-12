\version "2.16.2"

\header {
  dedication=""
  title="Vals"
  subtitle="La perra Isabel"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Aragó"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 1/4
  g4 \tempo 4 = 160  |
  \time 3/4   \repeat volta 2 { e'4 e d\prall  |
  c4 c g  |
  f'4 f e\prall  |
  %05
  d2 b4  |
  d4 d c\prall  |
  b4 b g  |
  e'4 e d\prall  |
  c2 g4  | }
  %10
  \repeat volta 2 { e'2 d4  |
  c4 d e  |
  f2 e4  |
  d2 b4  |
  d2 c4  |
  %15
  b4 c d  |
  e2 d4 }
  \alternative { { c2 g4 }
  { \mark "D.C." c2. } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4 = 160
  \clef treble
  \key c \major
  \time 1/4
  g4  |
  \time 3/4   \repeat volta 2 { c4 c b\prall  |
  g4 g g  |
  d'4 d c\prall  |
  %05
  b2 g4  |
  b4 b a\prall  |
  g4 g g  |
  c4 c b\prall  |
  c2 g4  | }
  %10
  \repeat volta 2 { g'2 f4  |
  e4 f g  |
  a2 g4  |
  f2 d4  |
  f2 e4  |
  %15
  d4 e f  |
  g2 f4 }
  \alternative { { e2 g,4 }
  { c2. } } \bar "||"
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

