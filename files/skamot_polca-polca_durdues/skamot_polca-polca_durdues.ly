\version "2.16.2"

\header {
  dedication=""
  title="Polca"
  subtitle="Polca d'Urdués"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Valls d'Hecho i Ansó, Aragó"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { b16 d b d a8 g  |
  b16 d b d a8 g  |
  d'8. d16 e8 e  |
  fis2  |
  %05
  c16 e c e b8 a  |
  c16 e c e b8 a  |
  e'8. e16 fis8 fis  |
  d2  |
  b16 d b d a8 g  |
  %10
  b16 d b d a8 g  |
  d'8. d16 e8 e  |
  c2  |
  e8. dis16 e dis e fis  |
  g8 d16 b d8 b  |
  %15
  e8 c16 a d8 d  |
  e2  |
  e8. dis16 e dis e fis  |
  g8 d16 b d8 b  |
  e8 c16 a d8 d }
  %20
  \alternative { { g,2 }
  { \mark "Fine" g4 ~ g16. d'32 e16. fis32 } }
  \repeat volta 2 { g8 g16. g32 b8 b  |
  d,4 ~ d16. d32 e16. fis32  |
  g8 g16. g32 c8 c  |
  %25
  e,4 ~ e16. e32 fis16. g32  |
  a16 g fis e a g fis e  |
  g8 d16 b d8 b  |
  e8 c16 a d8 d }
  \alternative { { e4 ~ e16. d32 e16. fis32 }
  %30
  { g,2 } }
  b16 d b d a8 g  |
  b16 d b d a8 g  |
  d'8. d16 e8 e  |
  fis2  |
  %35
  c16 e c e b8 a  |
  c16 e c e b8 a  |
  e'8. e16 fis8 fis  |
  d2  |
  b16 d b d a8 g  |
  %40
  b16 d b d a8 g  |
  d'8. d16 e8 e  |
  c2  |
  e8. dis16 e dis e fis  |
  g8 d16 b d8 b  |
  %45
  e8 c16 a d8 d  |
  e2  |
  e8. dis16 e dis e fis  |
  g8 d16 b d8 b  |
  e8 c16 a d8 d  |
  %50
  g,2  |
  \repeat volta 2 { r8 <g b> r <g b>  |
  r8 <g b> r <g b>  |
  r8 <g b> r <g b>  |
  cis4 c  |
  %55
  r8 <fis, c'> r <fis c'>  |
  r8 <fis c'> r <fis c'>  |
  r8 <fis c'> r <fis c'>  |
  <g ais>4 <g b>  |
  r8 <g b> r <g b>  |
  %60
  r8 <g b> r <g b>  |
  r8 <g b> r <fis b>  |
  r8 <e g> r <e g>  |
  r8 <e g> r <e g>  |
  r8 <g b> r <g b>  |
  %65
  r8 <a c> r <a c>  |
  r8 <e g> r <e g>  |
  r8 <e g> r <e g>  |
  r8 <g b> r <g b>  |
  r8 <fis c'> r <fis c'> }
  %70
  \alternative { { r8 <g b> r <g b> }
  { \mark "D.C. al Fine" r8 <g b> <g b> r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g16 b g b fis8 _"(tacet)" e  |
  g16 b g b fis8 e  |
  b'8. b16 c8 c  |
  d2  |
  %05
  a16 c a c g8 fis  |
  a16 c a c g8 fis  |
  c'8. c16 d8 d  |
  b2  |
  g16 b g b fis8 e  |
  %10
  g16 b g b fis8 e  |
  b'8. b16 c8 c  |
  a2  |
  c8. b16 c b c d  |
  e8 b16 g b8 g  |
  %15
  c8 a16 fis b8 b  |
  c2  |
  c8. b16 c b c d  |
  e8 b16 g b8 g  |
  c8 a16 fis b8 b }
  %20
  \alternative { { g2 }
  { g2 } }
  \repeat volta 2 { r2  |
  r2  |
  r2  |
  %25
  r2  |
  r2  |
  r2  |
  r2 }
  \alternative { { r2 }
  %30
  { r2 } }
  g16 b g b fis8 e  |
  g16 b g b fis8 e  |
  b'8. b16 c8 c  |
  d2  |
  %35
  a16 c a c g8 fis  |
  a16 c a c g8 fis  |
  c'8. c16 d8 d  |
  b2  |
  g16 b g b fis8 e  |
  %40
  g16 b g b fis8 e  |
  b'8. b16 c8 c  |
  a2  |
  c8. b16 c b c d  |
  e8 b16 g b8 g  |
  %45
  c8 a16 fis b8 b  |
  c2  |
  c8. b16 c b c d  |
  e8 b16 g b8 g  |
  c8 a16 fis b8 b  |
  %50
  g4 ~ g16 d e fis  |
  \repeat volta 2 { g8 g16. g32 b8 b  |
  e4 ~ e16 d b g  |
  e'16 d b g e' d b g  |
  cis4 d16 d, e f  |
  %55
  a8 a16. a32 c8 c  |
  d4 ~ d16 c a fis  |
  d'16 c a fis d' c a fis  |
  ais4 b16 d, e fis  |
  g8 g16. g32 b8 b  |
  %60
  e4 ~ e16 d b g  |
  e'16 d b g e' d b g  |
  e'2  |
  e8. dis16 e dis e fis  |
  g8 d16 b d8 b  |
  %65
  e8 c16 a d8 d  |
  e2  |
  e8. dis16 e dis e fis  |
  g8 d16 b d8 b  |
  e8 c16 a d8 d }
  %70
  \alternative { { g,4 r16 d e fis }
  { g2 } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  \repeat volta 2 { tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl:32 tomfl16. tomfl32 tomfl8  |
  %05
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl:32 tomfl16. tomfl32 tomfl8  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  %10
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl:32 tomfl16. tomfl32 tomfl8  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  %15
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl:32 tomfl16. tomfl32 tomfl8  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl }
  %20
  \alternative { { tomfl8 tomfl:32 tomfl16. tomfl32 tomfl8 }
  { tomfl8 tomfl:32 tomfl16. tomfl32 tomfl8 } }
  \repeat volta 2 { tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  %25
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl }
  \alternative { { tomfl8 tomfl16. tomfl32 tomfl8 tomfl }
  %30
  { tomfl8 tomfl16. tomfl32 tomfl8 tomfl } }
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl:32 tomfl16. tomfl32 tomfl8  |
  %35
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl:32 tomfl16. tomfl32 tomfl8  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  %40
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl:32 tomfl16. tomfl32 tomfl8  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  %45
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl:32 tomfl16. tomfl32 tomfl8  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  %50
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  \repeat volta 2 { tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  %55
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  %60
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  %65
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl  |
  tomfl8 tomfl16. tomfl32 tomfl8 tomfl }
  %70
  \alternative { { tomfl8 tomfl16. tomfl32 tomfl8 tomfl }
  { tomfl8 tomfl16. tomfl32 tomfl8 r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
  \header {instrument=""}
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
  \header {instrument=""}
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

