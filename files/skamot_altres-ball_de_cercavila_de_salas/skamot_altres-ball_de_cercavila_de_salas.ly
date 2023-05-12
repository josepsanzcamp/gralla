\version "2.16.2"

\header {
  dedication=""
  title=""
  subtitle="Ball de cercavila de Salàs"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Pallars Jussà"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  g8. a16 b8 g  |
  a4 r8 d16 e  |
  d8 c b a  |
  b16 c b a g4  |
  %05
  g8. a16 b8 g  |
  a4 r8 d16 e  |
  d8 c b a  |
  g4 r  \bar "||"
  d'8 g fis e  |
  %10
  d4. c16 b  |
  a8 c b a  |
  b16 c b a g4  |
  d'8 g fis e  |
  d4. c16 b  |
  %15
  a8 c b a  |
  g4 r  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  b8. c16 d8 d  |
  c8. b16 a8 d  |
  fis8. e16 d8 fis  |
  g16 e d c b c b a  |
  %05
  b8. c16 d8 d  |
  c8. b16 a8 d  |
  fis8. d16 e8 fis  |
  g4 r  \bar "||"
  b,4. c8  |
  %10
  d4. e16 d  |
  c8 c c e  |
  d2  |
  b4. c8  |
  d4. e16 d  |
  %15
  c8 c a c  |
  b4 r r  \bar "|." % troigo!
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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
  \header {instrument=""}
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

