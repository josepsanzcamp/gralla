\version "2.22.1"

\header {
  dedication="Cercavila"
  title="   "
  subtitle="La cirera"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Timbal: Albert Garcia"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \clef treble
  \key g \major
  \time 1/4
  <g b>8 <a c> \tempo 4 = 120  |
  \time 2/4   \repeat volta 2 { <b d>8-. r16 <b d> <b d>4 ~ ~  |
  <b d>8 <b d> <g b> <a c>  |
  <b d>8-. r16 <b d> <b d>4 ~ ~  |
  %05
  <b d>8 <b d> <c e> <b d>  |
  <a c>8-. r16 <a c> <a c>4 ~ ~  |
  <a c>8 <a c> <b d> <a c>  |
  <g b>2 ~ ~  |
  <g b>8 r <g b> <a c>  |
  %10
  <b d>8-. r16 <b d> <b d>4 ~ ~  |
  <b d>8 <g b> <a c> <b d>  |
  <c e>8-. r16 <c e> <c e>4 ~ ~  |
  <c e>8 <e g> <d fis> <c e>  |
  <b d>4 <e g>  |
  %15
  <e g>8 <d fis> <c e> <d fis> }
  \alternative { { <b g'>2 ~ ~  |
  <b g'>8 r <g b> <a c> }
  \key c \major   { <b g'>2 ~ ~  |
  <b g'>8 r g4 } }
  %20
  \repeat volta 2 { e'2 ~  |
  e8 d e-. r16 d  |
  c2 ~  |
  c8 b c-. r16 b  |
  a4 c  |
  %25
  b4 a  |
  g2 ~  |
  g8 r g4  |
  e'2 ~  |
  e8 d e-. r16 c  |
  %30
  d2 ~  |
  d8 c d-. r16 f  |
  e2  |
  d2 }
  \alternative { { c2 ~  |
  %35
  c8 r g4 }
  { c2 ~  |
  c8 r r4 } } \bar "||" % kompletite
}

liniaroAb =
\relative d''
{
  \tempo 4 = 120
  \clef treble
  \key g \major
  \time 1/4
  r4  |
  \time 2/4   \repeat volta 2 { d4. b8  |
  g2  |
  d'4. b8  |
  %05
  g2  |
  c4. c8  |
  a2  |
  r4 g8 b  |
  d2  |
  %10
  d4. b8  |
  g2  |
  e'4. c8  |
  a2  |
  r8 g' fis e  |
  %15
  d4 c }
  \alternative { { b8 e d b  |
  g8 r r4 }
  \key c \major   { b8 e d b  |
  g8 r r4 } }
  %20
  \repeat volta 2 { r8 g c d  |
  e8 r r4  |
  r8 g, c d  |
  e8 r r4  |
  r8 f f f  |
  %25
  f2  |
  g4 c,8 e  |
  g8 r r4  |
  r8 g, c d  |
  e8 r r4  |
  %30
  r8 a, d e  |
  f8 r r4  |
  r8 g g4  |
  r8 f f4 }
  \alternative { { r8 e e c  |
  %35
  g8 r r4 }
  { r8 e' e c  |
  g8 r r4 } } \bar "||" % kompletite
}

liniaroAc =
\drummode
{
  \tempo 4 = 120
  \time 1/4
  r4  |
  \time 2/4   \repeat volta 2 { tomfl8 tomfl16 -> tomfl tomfl8 tomfl ->  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl8 tomfl -> tomfl tomfl ->  |
  %05
  tomfl8 -> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl8 tomfl16 tomfl tomfl8 -> tomfl ->  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %10
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl8 -> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl8 tomfl16 -> tomfl tomfl8 tomfl ->  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  %15
  tomfl16 tomfl tomfl8 tomfl tomfl16 tomfl -> }
  \alternative { { tomfl8 -> tomfl -> tomfl16 tomfl tomfl tomfl  |
  tomfl4 r }
  { \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 r } }
  %20
  \repeat volta 2 { tomfl8 tomfl16 -> tomfl tomfl8 tomfl ->  |
  tomfl8 tomfl16 -> tomfl tomfl8 -> tomfl16 -> tomfl ->  |
  tomfl8 tomfl16 -> tomfl tomfl8 -> tomfl ->  |
  tomfl8 tomfl16 tomfl tomfl -> tomfl tomfl tomfl  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  %25
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl16 tomfl r tomfl tomfl r tomfl tomfl  |
  tomfl8 tomfl16 -> tomfl tomfl8 tomfl ->  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  %30
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl8 tomfl16 tomfl tomfl8 -> tomfl ->  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl16 tomfl tomfl8 tomfl tomfl16 -> tomfl }
  \alternative { { tomfl8 -> tomfl -> tomfl16 tomfl tomfl tomfl  |
  %35
  tomfl4 r }
  { tomfl8 -> tomfl \times 2/3 { tomfl16 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 r } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4 = 120
  \time 1/4
  r4  |
  \time 2/4   \repeat volta 2 { tomfl4 r8 tomfl  |
  tomfl8 tomfl r tomfl  |
  tomfl4 r8 tomfl  |
  %05
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 r8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 r8 tomfl16 tomfl  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %10
  tomfl4 r8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 r8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 r r tomfl  |
  %15
  r8 r tomfl r }
  \alternative { { tomfl4 tomfl16 tomfl tomfl tomfl  |
  tomfl4 r }
  { \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 r } }
  %20
  \repeat volta 2 { tomfl4 r8 tomfl16 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 r8 tomfl  |
  %25
  tomfl4 tomfl  |
  tomfl4 r8 tomfl  |
  r8 tomfl r tomfl  |
  tomfl4 r8 tomfl  |
  tomfl4 tomfl  |
  %30
  tomfl4 r8 tomfl  |
  tomfl4 tomfl  |
  r8 tomfl tomfl r  |
  tomfl8 tomfl r tomfl }
  \alternative { { tomfl8 tomfl tomfl16 tomfl tomfl tomfl  |
  %35
  tomfl4 r }
  { tomfl8 tomfl r tomfl16 tomfl  |
  tomfl4 r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1  Gralla 2" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1  Gralla 2" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAd
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Gralla 1  Gralla 2"}
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

\bookpart {
  \header {instrument=""}
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

