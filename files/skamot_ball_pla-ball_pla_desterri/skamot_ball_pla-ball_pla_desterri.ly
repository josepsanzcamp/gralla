\version "2.16.2"

\header {
  dedication=""
  title="Ball pla"
  subtitle="Ball pla d'Esterri d'Àneu"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="El Pallars Sobirà"
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
  \time 1/4
  d8 g  |
  \time 3/4   \repeat volta 2 { fis4. g8 fis e  |
  d4 b d  |
  c4. d8 e fis  |
  %05
  d4 b d8 g  |
  fis4. g8 fis e  |
  d4 b d  |
  c4. d8 e fis }
  \alternative { { g2 d8 g }
  %10
  { g4 r r } }
  \repeat volta 2 { fis8. fis16 fis4 g  |
  a8. a16 a4 g  |
  fis8. fis16 fis4 e  |
  d4 r d  |
  %15
  g4 fis g  |
  e4 r e  |
  fis4 r fis  |
  g4 r r  | }
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  b8 g  |
  \time 3/4   \repeat volta 2 { a4. g8 a c  |
  b4 g b  |
  a4. a8 g a  |
  %05
  b4 g b8 g  |
  a4. g8 a c  |
  b4 g b  |
  a4. d8 c a }
  \alternative { { b2 b8 g }
  %10
  { b4 r r } }
  \repeat volta 2 { d8. d16 d4 b  |
  c8. c16 c4 e  |
  d8. d16 d4 c  |
  b4 r d  |
  %15
  b4 a b  |
  c4 r c  |
  a4 r a  |
  b4 r r  | }
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

