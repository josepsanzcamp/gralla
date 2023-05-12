\version "2.16.2"

\header {
  dedication=""
  title="Bestiari"
  subtitle=""
  subsubtitle="Tonada de la marxa de la Mulassa, núm. 2"
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Tarragona"
  arranger="Blas Coscollar"
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
  \time 1/4
  d4  |
  \time 3/4   \repeat volta 2 { g4 b a  |
  g4 c8 b a g  |
  a4 a g  |
  %05
  fis8 e fis d e fis  |
  g4 b a  |
  g4 c8 b a g  |
  a4 a fis }
  \alternative { { g2 d4 }
  %10
  \time 6/8   { g4. b4 a8 } }
  \repeat volta 2 { g4 c8 b a g  |
  fis4. fis4 g8  |
  a4 b8 a g fis  |
  a4 g8 b4 a8  |
  %15
  g4 c8 b a g  |
  fis4. fis4 g8  |
  a4 b8 a g fis }
  \alternative { { g4. b4 a8 }
  { g4. r4 r8 } } \bar "||" % kompletite
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  d4  |
  \time 3/4   \repeat volta 2 { b4 d c  |
  b4 e c8 b  |
  c4 c8 d e4  |
  %05
  a,8 b c d c4  |
  b4 d c  |
  b4 e8 d c b  |
  c8 b c a d c }
  \alternative { { b2 d4 }
  %10
  \time 6/8   { b4. d4 c8 } }
  \repeat volta 2 { b4 e8 d c b  |
  a4. d8 c b  |
  c4 d8 c b a  |
  c4 b8 d4 c8  |
  %15
  b4 e8 d c b  |
  a4. d8 c b  |
  c4 d8 c b a }
  \alternative { { b4. d4 c8 }
  { b4. r4 r8 } } \bar "||" % kompletite
}

liniaroAc =
\relative d'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  d4  |
  \time 3/4   \repeat volta 2 { g2 d4  |
  e2 e4  |
  a2 c,4  |
  %05
  d4 a'2  |
  g2 d4  |
  e2 g4  |
  d4 fis d }
  \alternative { { g2 d4 }
  %10
  \time 6/8   { g4. g } }
  \repeat volta 2 { g4. g  |
  d4. d  |
  d4. d  |
  g4. g  |
  %15
  g4. g  |
  d4. d  |
  d4. d }
  \alternative { { g4. g }
  { g4. r4 r8 } } \bar "||" % kompletite
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 1/4
  tomfl4  |
  \time 3/4   \repeat volta 2 { tomfl4.-> tomfl8 tomfl4  |
  tomfl4-> tomfl2:32  |
  tomfl4.-> tomfl8 tomfl4  |
  %05
  tomfl4-> tomfl2:32  |
  tomfl4.-> tomfl8 tomfl4  |
  tomfl4-> tomfl2:32  |
  tomfl4.-> tomfl8 tomfl4 }
  \alternative { { tomfl4-> tomfl2:32 }
  %10
  \time 6/8   { tomfl4. tomfl4 tomfl8 } }
  \repeat volta 2 { tomfl8-> tomfl tomfl tomfl-> tomfl tomfl  |
  tomfl8-> tomfl tomfl tomfl-> tomfl tomfl  |
  tomfl8-> tomfl tomfl tomfl-> tomfl tomfl  |
  tomfl8-> tomfl tomfl tomfl4.  |
  %15
  tomfl8-> tomfl tomfl tomfl-> tomfl tomfl  |
  tomfl8-> tomfl tomfl tomfl-> tomfl tomfl  |
  tomfl8-> tomfl tomfl tomfl-> tomfl tomfl }
  \alternative { { tomfl4.-> tomfl4 tomfl8 }
  { tomfl4.-> r4 r8 } } \bar "||" % kompletite
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
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
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
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

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

