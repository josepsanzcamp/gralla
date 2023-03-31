\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Bestiari"
  subtitle="Drac de Vallirana"
  subsubtitle="Dansa del foc"
  poet=""
  meter=""
  piece=""
  composer="Anna Folqué Francolí"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/8
  r4  |
  \time 6/8   r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 b8 a  |
  \repeat volta 2 { g4 a8 b4 c8  |
  d4 b g'8 fis  |
  e4 fis8 g ( fis ) e  |
  d4-. r b8 a  |
  %10
  g4 a8 b4 c8  |
  d4 b g'8 fis  |
  e4 fis8 g ( fis ) e  |
  d4 r e8 d  \bar "||"
  c4 d8 e4 c8  |
  %15
  d4 b c8 b  |
  a4 b8 c ( b ) a  |
  b4 r e8 d  |
  c4 d8 e4 c8  |
  d4 b c8 b  |
  %20
  a4 b8 c ( b ) a }
  \alternative { { g4 r b8 a }
  { <g b>2.  |
  r2 r4 } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/8
  r4  |
  \time 6/8   r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 b8 a  |
  \repeat volta 2 { g4. g  |
  b4 g b  |
  c4. ~ c8 d e  |
  fis4-. r b,8 a  |
  %10
  g4. g  |
  b4 g b  |
  c4. ~ c8 d c  |
  b4 a g  \bar "||"
  a4 b8 c4 a8  |
  %15
  b4 g r  |
  c4 d8 e4 fis8  |
  g4 r g8 fis  |
  e4 fis8 g4 e8  |
  fis4 g e  |
  %20
  fis4. e8 ( d ) c }
  \alternative { { b4 r b8 a }
  { g'2.  |
  r2 r4 } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/8
  tomfl8 tomfl  |
  \time 6/8   tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %05
  tomfl4 r tomfl8 tomfl  |
  \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 r tomfl8 tomfl  |
  %10
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 r tomfl8 tomfl  \bar "||"
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %15
  tomfl4 tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 r tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl tomfl8 tomfl  |
  %20
  tomfl4 tomfl8 tomfl tomfl tomfl }
  \alternative { { tomfl4 r tomfl8 tomfl }
  { tomfl4 tomfl tomfl  |
  tomfl4 r r } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 2/8
  r4  |
  \time 6/8   tomml4. tomml  |
  tomml4 tomml tomml  |
  tomml4. tomml  |
  %05
  tomml4 tomml tomml  |
  \repeat volta 2 { tomml4. tomml  |
  tomml4 tomml tomml  |
  tomml4. tomml  |
  tomml4 tomml tomml  |
  %10
  tomml4. tomml  |
  tomml4 tomml tomml  |
  tomml4. tomml  |
  tomml4 tomml tomml  \bar "||"
  tomml4. tomml  |
  %15
  tomml4 tomml tomml  |
  tomml4. tomml  |
  tomml4 tomml tomml  |
  tomml4. tomml  |
  tomml4 tomml tomml  |
  %20
  tomml4. tomml }
  \alternative { { tomml4 tomml tomml }
  { tomml4 tomml tomml  |
  tomml4 r r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAd
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
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAd
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

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Timbal fondo"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
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

