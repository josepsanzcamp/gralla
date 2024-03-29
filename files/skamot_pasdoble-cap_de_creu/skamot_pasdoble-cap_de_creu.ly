\version "2.16.2"

\header {
  dedication=""
  title="Pasdoble"
  subtitle="Cap de Creu"
  subsubtitle=""
  poet="gralla.skamot.com"
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
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  g16 g g8 g  |
  \time 2/4   \repeat volta 2 { g4 a8 g  |
  e4 d8 c  |
  e2 ~  |
  %05
  e4 g,8 c  |
  e4 c8 e  |
  g4 a8 e  |
  f2 ~  |
  f8 f16 f f8 f  |
  %10
  f4 g8 f  |
  d4 c8 b  |
  d2 ~  |
  d4 g,8 b  |
  d4 b8 d  |
  %15
  f4 a8 g  |
  e2 ~  |
  e8 g16 g g8 g  |
  g4 a8 g  |
  e4 d8 c  |
  %20
  e2 ~  |
  e4 g,8 c  |
  e4 c8 e  |
  g4 f8 e  |
  a2 ~  |
  %25
  a8 a16 a a8 a  |
  a4 g8 a  |
  c4 b8 a  |
  g2 ~  |
  g8 g16 g g8 g  |
  %30
  g4 f8 e }
  \alternative { { f4 a,8 b  |
  c2 ~  |
  c8 g'16 g g8 g }
  { f4 a8 b  |
  %35
  c2 ~  |
  c4 r4 } } \bar "||" % kompletite
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  e16 e e8 e  |
  \time 2/4   \repeat volta 2 { c4 e  |
  c4 g  |
  c8 b16 a g8 a16 b  |
  %05
  c4 r  |
  c4 g  |
  e'4 c  |
  d8 c16 b a8 b16 c  |
  d8 d16 d d8 d  |
  %10
  a4 d  |
  a4 g  |
  b8 g16 a b8 d16 e  |
  f4 r  |
  b,4 g  |
  %15
  d'4 b  |
  c8 b16 a g8 a16 b  |
  c8 e16 e e8 e  |
  c4 e  |
  c4 g  |
  %20
  c8 b16 a g8 a16 b  |
  c4 r  |
  c4 g  |
  e'4 d  |
  f8 a,16 b c8 d16 e  |
  %25
  f8 f16 f f8 f  |
  c4 a  |
  a'4 f  |
  e8 b16 a g8 a16 b  |
  c8 e16 e e8 e  |
  %30
  d4 a }
  \alternative { { b4 g  |
  e'2 ~  |
  e8 e16 e e8 e }
  { b4 g  |
  %35
  e'2 ~  |
  e4 r4 } } \bar "||" % kompletite
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

