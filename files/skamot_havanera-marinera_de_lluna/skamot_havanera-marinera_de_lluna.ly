\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Americana"
  subtitle="Marinera de lluna"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Biel Ferré"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  e2  |
  d4 r  |
  f2  |
  e4 r  |
  %05
  e8. c16 e8 d16 c  |
  d2  |
  d16 b8 c16 d8 c16 b  |
  a2  \bar "||"
  \mark \markup {\musicglyph #"scripts.segno"} g16 g8 g16 c8 d  |
  %10
  e2  |
  e16 dis8 e16 a8 g  |
  f2  |
  g,16 g8 g16 b8 c  |
  d2  |
  %15
  c16 b8 a16 c8 b  |
  g2  |
  g16 g8 g16 c8 d  |
  e2  |
  e16 dis8 e16 d8 c  |
  %20
  a2  |
  a16 a8 a16 e'8 d  |
  g,16 g8 g16 d'8 c  |
  b16 a8 g16 a8 b  |
  \mark \markup {\musicglyph #"scripts.coda" ???} c2  |
  %25
  \repeat volta 2 { g4. e'8  |
  a,4. f'8  |
  b,4. g'8  |
  a8. g16 \times 2/3 { f8 d b }  |
  g4. e'8  |
  %30
  a,4. f'8 }
  \alternative { { \times 2/3 { b,8 d c } \times 2/3 { a c b }  |
  g2 }
  { g'16 f8 e16 d8 b  |
  c2 } }
  %35
  \repeat volta 2 { e16 dis8 e16 f8\fermata e  |
  d4 a  |
  d16 cis8 d16 e8 d  |
  c8. g16 g'4  |
  a16 gis8 a16 b8 a }
  %40
  \alternative { { a4 f  |
  f16 e8 f16 a8 g  |
  e2 }
  { g4 e  |
  d16 cis8 d16 f8 b,  |
  %45
  \mark \markup {D.S. e Coda} c2 } }
  \mark \markup {\musicglyph #"scripts.coda"} c4 c8 r  \bar "|."
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  <a c>2  |
  b8. e,16 f8 e  |
  <b' d>2  |
  c8. a16 b8 a  |
  %05
  c8. a16 c8 b16 a  |
  b8. e,16 f8 e  |
  b'16 e,8 gis16 b8 a16 gis  |
  a2  \bar "||"
  e4. g8  |
  %10
  c2  |
  c16 b8 c16 f8 e  |
  d2  |
  <d, b'>4. g8  |
  b2  |
  %15
  a16 g8 f16 a8 g  |
  e2  |
  e4. g8  |
  c2  |
  g16 fis8 g16 g8 a  |
  %20
  f2  |
  f2  |
  e2  |
  g16 f8 e16 f8 g  |
  e2  |
  %25
  \repeat volta 2 { e4. g8  |
  f8. f16 f8 a  |
  g4. c8  |
  f8. e16 \times 2/3 { d8 b g }  |
  e4. g8  |
  %30
  f8. f16 f8 a }
  \alternative { { g4 f  |
  e2 }
  { b'16 a8 g16 g4  |
  e2 } }
  %35
  \repeat volta 2 { c'16 b8 c16 a8\fermata g  |
  g4 f  |
  b16 ais8 b16 g8 f  |
  f8. e16 \times 2/3 { g8 c e }  |
  f16 e8 f16 g8 f }
  %40
  \alternative { { f4 d  |
  d16 cis8 d16 c8 b  |
  g2 }
  { e'8. d16 \times 2/3 { c8 b a }  |
  g16 fis8 g16 b8 g  |
  %45
  c8. g16 a8 g } }
  e4 e8 r  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  tomfl2:32  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl2:32  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  %05
  tomfl8. tomfl16 tomfl8 tomfl16 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl16 tomfl  |
  tomfl4..:32 tomfl32 tomfl  \bar "||"
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  %10
  tomfl8. tomfl16 tomfl8 tomfl:32  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  tomfl8. tomfl16 tomfl8 tomfl:32  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  tomfl8. tomfl16 tomfl8 tomfl:32  |
  %15
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  tomfl8. tomfl16 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  tomfl8. tomfl16 tomfl8 tomfl:32  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  %20
  tomfl8. tomfl16 tomfl8 tomfl:32  |
  tomfl16 tomfl8 tomfl16 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl16 tomfl8 tomfl16 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  %25
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl:32  |
  tomfl8. tomfl16 tomfl8 tomfl:32  |
  tomfl8. tomfl16 tomfl8 tomfl:32  |
  tomfl4 r  |
  tomfl8. tomfl16 tomfl8 tomfl:32  |
  %30
  tomfl8. tomfl16 tomfl8 tomfl:32 }
  \alternative { { \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32 }
  { tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32 } }
  %35
  \repeat volta 2 { tomfl16 tomfl8 tomfl16 tomfl8:32 tomfl  |
  tomfl8. tomfl16 tomfl8 \times 2/3 { tomfl16 tomfl tomfl }  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32 }
  %40
  \alternative { { tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32 }
  { tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  tomfl16 tomfl8 tomfl16 tomfl8 tomfl:32  |
  %45
  tomfl8. tomfl16 tomfl8 tomfl } }
  tomfl4 tomfl8 r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
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

