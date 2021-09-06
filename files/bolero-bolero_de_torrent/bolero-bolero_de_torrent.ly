\version "2.22.1"

\header {
  dedication="Bolero"
  title="  "
  subtitle="Bolero de Torrent"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="l'Horta"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \repeat volta 2 { \time 3/8 g8 a b  |
  \time 3/4   c8. b16 c8. e16 g f e d  |
  c8. b16 c8. c16 d8 e  |
  f8. e16 f8. a16 gis8 a  |
  %05
  e8. f16 e8. a16 gis8 a  |
  e8. f16 e8. f16 g f e d  |
  e8. f16 e8. d16 c8 b  |
  a8. a16 a8 a' g16 f e g  |
  f8. f16 f8 f16 d e8 e  |
  %10
  a,8 c16 c c8 c16 c d8 d  |
  a8 c16 c c8 c16 c d8 d  |
  a8 c16 c c8 c16 c d8 d  |
  a8 c16 c c8 c16 c d8 d  |
  c8 c16 c c8 r r4  | }
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \repeat volta 2 { \time 3/8 r4 r8  |
  \time 3/4   r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %10
  r8 a16 a a8 a16 a gis8 gis  |
  a8 a16 a a8 a16 a gis8 gis  |
  a8 a16 a a8 a16 a gis8 gis  |
  a8 a16 a a8 a16 a gis8 gis  |
  a8 a16 a a8 r r4  | }
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

