\version "2.16.2"

\header {
  dedication=""
  title="Masurca"
  subtitle="Masurca de la suite-89"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Marcel Casellas"
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
  \time 3/4
  r8 d e d e d  |
  r8 e fis e fis e  |
  r8 d cis d e fis  |
  g4 r d  |
  %05
  \repeat volta 2 { g4 fis8 g e fis  |
  d4 b d  |
  e4 fis8 e d c  |
  c4 b d  |
  g4 fis8 g e fis  |
  %10
  d4 b d }
  \alternative { { e4 fis8 e d c ~  |
  c8 b c d e fis }
  { e8 d cis d e fis  |
  g4 r g } }
  %15
  \repeat volta 2 { fis4 a8 g fis e  |
  e4 d g  |
  fis4 a8 g fis e  |
  d4 r b  |
  c8 b a g a b  |
  %20
  d4 c e }
  \alternative { { fis8 e d fis a c  |
  b4 g g }
  { fis8 e d e fis a  |
  g4 g r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  g4 r b  |
  c4 r cis  |
  d4 a c  |
  b4 g r  |
  %05
  \repeat volta 2 { r4 d' c  |
  b4 g b  |
  c4 b a  |
  a2 g4 ~  |
  g4 d' c  |
  %10
  b4 g b }
  \alternative { { c4 b a  |
  g2. }
  { c8 b a b c d  |
  g,4 g r } }
  %15
  \repeat volta 2 { r8 d' c b a c  |
  c4 b2  |
  r8 d c b a c  |
  b4 g2  |
  r8 g' fis e fis g  |
  %20
  a4 r c,8 cis }
  \alternative { { d8 c c b c a  |
  g4 g2 }
  { d'8 c c b a c  |
  b4 g r } } \bar "||"
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

