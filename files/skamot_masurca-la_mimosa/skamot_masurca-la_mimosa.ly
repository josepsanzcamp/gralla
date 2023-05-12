\version "2.16.2"

\header {
  dedication=""
  title="Masurca"
  subtitle="La mimosa"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Eugenio Gracía Marco"
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
  \time 3/4
  \repeat volta 2 { g8. e16 c8. g16 c8. e16  |
  g4 f e  |
  d16 e d c b8. g16 b8. d16  |
  c8. b16 a8. gis16 g4  |
  %05
  g'8. e16 c8. g16 c8. e16  |
  g4 f e  |
  d16 e d c b8. g16 b8. d16  |
  c4 c r  | }
  \repeat volta 2 { f8 d b d b d  |
  %10
  g8 e c e c e  |
  a8 f d f d f  |
  \times 2/3 { c'8 b a } \times 2/3 { g a g } \times 2/3 { f d b }  |
  f'8 d b d b d  |
  g8 e c e c e  |
  %15
  a8 f \times 2/3 { d gis f } \times 2/3 { d b g } }
  \alternative { { c4 c r }
  { c4 c g } }
  e'4 d c  |
  g2.  |
  %20
  g8. a16 b8. c16 d8. e16  |
  f2 g,4  |
  f'4 e d  |
  a2.  |
  a8. a'16 a,8. g'16 a,8. f'16  |
  %25
  e2 r8 g,  |
  \times 2/3 { e'8 f e } \times 2/3 { d e d } \times 2/3 { c d c }  |
  g2 r8 g  |
  \times 2/3 { e'8 f e } \times 2/3 { d e d } \times 2/3 { c d c }  |
  a2.  |
  %30
  \repeat volta 2 { d8. f16 d8. c'16 b8. a16  |
  c,8. e16 c8. b'16 a8. g16  |
  b,8. d16 b8 a'16 gis g8. fis16  |
  g2.  |
  d8. f16 d8. c'16 b8. a16  |
  %35
  c,8. e16 c8. b'16 a8. g16  |
  g,8. b16 g8 fis'16 f \times 2/3 { e8 c b } }
  \alternative { { g4 g2 }
  { g4 g2 } } \bar "||"
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { c4 e, g  |
  b4 ais b  |
  g4 f8. fis16 g8. g16  |
  g4 f e  |
  %05
  c'4 e, g  |
  b4 ais b  |
  g4 f8. fis16 g8. g16  |
  \times 2/3 { g'8 fis g } e4 r  | }
  \repeat volta 2 { a2 g4  |
  %10
  c,2 g4  |
  d'4 b a8 b  |
  \times 2/3 { g'8 f e } \times 2/3 { d e d } \times 2/3 { a b g }  |
  a'2 g4  |
  c,2 g4  |
  %15
  d'4 b a' }
  \alternative { { e4 e r }
  { e4 e r } }
  \times 2/3 { g8 a g } \times 2/3 { gis a b } \times 2/3 { a b c }  |
  e,2.  |
  %20
  g8. fis16 f8. c'16 b8. g16  |
  b2.  |
  \times 2/3 { a8 b a } \times 2/3 { g a g } \times 2/3 { f g f }  |
  d2.  |
  d8. f16 cis8. e16 c8. d16  |
  %25
  c2.  |
  g'4 f g  |
  e2.  |
  g4 gis a  |
  f2.  |
  %30
  \repeat volta 2 { a,4 b g'  |
  g,4 a f'  |
  g,8. b16 g8 fis'16 f e8. dis16  |
  e2.  |
  a,4 b g'  |
  %35
  g,4 a f'  |
  b,8. d16 b8 a'16 gis \times 2/3 { g8 e d } }
  \alternative { { c4 c2 }
  { c4 c2 } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/4
  \repeat volta 2 { tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  %05
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8-> r tomfl r tomfl r  | }
  \repeat volta 2 { \times 2/3 { tomfl8-> tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl-> tomfl tomfl }  |
  %10
  \times 2/3 { tomfl8 -> tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } tomfl -> tomfl16 tomfl  |
  \times 2/3 { tomfl8-> tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl-> tomfl tomfl }  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl -> tomfl tomfl } tomfl tomfl16 tomfl ->  |
  \times 2/3 { tomfl8-> tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl-> tomfl tomfl }  |
  \times 2/3 { tomfl8 tomfl -> tomfl } \times 2/3 { tomfl tomfl tomfl } tomfl -> tomfl16 tomfl  |
  %15
  \times 2/3 { tomfl8-> tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl-> tomfl tomfl } }
  \alternative { { \times 2/3 { tomfl8-> tomfl tomfl } tomfl-> r r4 }
  { \times 2/3 { tomfl8-> tomfl tomfl } tomfl-> r tomfl r } }
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  %20
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  %25
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  %30
  \repeat volta 2 { tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  %35
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 }
  \alternative { { tomfl8.-> tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 }
  { tomfl8.-> tomfl16 tomfl4-> r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

