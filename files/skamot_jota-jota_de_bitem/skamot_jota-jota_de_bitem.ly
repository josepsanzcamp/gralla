\version "2.16.2"

\header {
  dedication=""
  title="Jota"
  subtitle="Jota de Bítem"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="El Baix Ebre"
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
  \key g \major
  \time 3/4
  g4 g4. g8  |
  g4 b, c  |
  \repeat volta 2 { d4 e d ~  |
  d4 e e  |
  %05
  fis4 e8 d c4 ~  |
  c4 a b  |
  c4 d c ~  |
  c4 d d  |
  e4 d8 c b4 ~  |
  %10
  b4 b c  |
  d4 e d ~  |
  d4 e e  |
  fis4 e8 d c4 ~  |
  c4 a b  |
  %15
  c4 d c ~  |
  c4 d d }
  \alternative { { e4 d8 c b4 ~  |
  b4 b c }
  { e4 d8 c b4  |
  %20
  g'4 r2 } }
  \repeat volta 2 { fis4 fis fis  |
  fis4 e fis  |
  g4 fis8 e d4 ~  |
  d2.  |
  %25
  e4 e e  |
  e4 d e }
  \alternative { { fis4 e8 d c4 ~  |
  c2. }
  { fis4 e8 d c4 ~  |
  %30
  c4 fis fis } }
  g4 fis8 e d4 ~  |
  d4 d d  |
  e4 d8 c b4 ~  |
  b2.  |
  %35
  e4 e e  |
  e4 d e  |
  fis4 e8 d c4 ~  |
  c4 fis fis  |
  g4 fis8 e d4 ~  |
  %40
  d4 d d  |
  e4 d8 c b4  |
  \mark "D.C." g'4 r2  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  b4 b4. b8  |
  b4 g a  |
  \repeat volta 2 { b4 c b ~  |
  b4 c c  |
  %05
  d4 c8 b a4 ~  |
  a4 fis g  |
  a4 b a ~  |
  a4 b b  |
  c4 b8 a g4 ~  |
  %10
  g4 g a  |
  b4 c b ~  |
  b4 c c  |
  d4 c8 b a4 ~  |
  a4 fis g  |
  %15
  a4 b a ~  |
  a4 b b }
  \alternative { { c4 b8 a g4 ~  |
  g4 g a }
  { c4 b8 a g4  |
  %20
  b4 r2 } }
  \repeat volta 2 { fis4 r2  |
  fis4 r2  |
  g4 r b  |
  g4 b d  |
  %25
  g,4 r2  |
  g4 r2 }
  \alternative { { fis4 r a  |
  fis4 a c }
  { fis,4 r a  |
  %30
  fis4 a c } }
  g4 d'8 c b4  |
  g4 b8 d b g  |
  c4 b8 a g4  |
  b4 d g  |
  %35
  g,4 r2  |
  g4 r g  |
  fis4 r a  |
  fis4 a c  |
  g4 d'8 c b4  |
  %40
  g4 b8 d b g  |
  c4 b8 a g4  |
  b4 r2  \bar "|."
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

