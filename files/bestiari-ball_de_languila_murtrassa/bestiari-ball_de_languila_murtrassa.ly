\version "2.22.1"

\header {
  dedication="Bestiari"
  title=""
  subtitle="Ball de l'anguila Murtrassa"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Ramon Solé i Miralles"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  r2  |
  r2  |
  r2  |
  %05
  \repeat volta 2 { c8. c16 c8 c  |
  f4 c  |
  f4 c  |
  d2  |
  d8. d16 d8 d  |
  %10
  g4 d  |
  e8 f e d }
  \alternative { { c2 }
  { c2 } }
  \repeat volta 2 { g'8 f e d  |
  %15
  c2  |
  a'8 g f e  |
  d2  |
  b'8 a g f  |
  a8 g f e }
  %20
  \alternative { { g8 f e d  |
  c2 }
  { f8 g a b  |
  c4 g8 c, } }
  \repeat volta 2 { e8. e16 e8 g  |
  %25
  g4 f  |
  \times 2/3 { f8 g a } g8. f16  |
  g4 e8 c  |
  e8. e16 e8 g  |
  g4 f  |
  %30
  \times 2/3 { a8 g f } e8. d16 }
  \alternative { { c4 g'8 c, }
  { c2 } }
  \repeat volta 2 { g'8 f e d  |
  c2  |
  %35
  a'8 g f e  |
  d2  |
  b'8 a g f  |
  a8 g f e }
  \alternative { { g8 f e d  |
  %40
  c2 }
  { f8 g a b  |
  c4. g8 } }
  c,4 c  |
  \repeat volta 2 { a2 ~  |
  %45
  a2  |
  c4 c  |
  g2 ~  |
  g2  |
  d'4 d  |
  %50
  b2 ~  |
  b2  |
  e4 e }
  \alternative { { c2 ~  |
  c2  |
  %55
  c4 c }
  { c2 ~  |
  c2 } }
  \repeat volta 2 { g'8 f e d  |
  c2  |
  %60
  a'8 g f e  |
  d2  |
  b'8 a g f  |
  a8 g f e }
  \alternative { { g8 f e d  |
  %65
  c2 }
  { f8 g a b  |
  c2  |
  r2 } } \bar "||"
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  r2  |
  r2  |
  r2  |
  %05
  \repeat volta 2 { a8. a16 a8 a  |
  c4 a  |
  c4 a  |
  f8. f16 g8 g  |
  a8. a16 a8 a  |
  %10
  g4 b  |
  g8 a g f }
  \alternative { { e4 f }
  { e8 e16 e f8 f } }
  \repeat volta 2 { g2  |
  %15
  r8 g'16 g g8 g  |
  a,2  |
  r8 a'16 a a8 a  |
  g,8 a b d  |
  f8 e d c }
  %20
  \alternative { { b8 a g f  |
  e4 f }
  { a8 g f g  |
  c4 g8 c } }
  \repeat volta 2 { g2  |
  %25
  \times 2/3 { b8 a g } \times 2/3 { a g f }  |
  a4 b  |
  c2  |
  g2  |
  \times 2/3 { b8 a g } \times 2/3 { a g f }  |
  %30
  \times 2/3 { f8 g a } g8. b16 }
  \alternative { { g4 g8 c }
  { e,8 e16 e f8 f } }
  \repeat volta 2 { g2  |
  r8 g'16 g g8 g  |
  %35
  a,2  |
  r8 a'16 a a8 a  |
  g,8 a b d  |
  f8 e d c }
  \alternative { { b8 a g f  |
  %40
  e4 f }
  { a8 g f g  |
  c2 } }
  r2  |
  \repeat volta 2 { r4. c8  |
  %45
  d8 c b a  |
  g4 r  |
  r4. e'8  |
  f8 e d c  |
  b4 r  |
  %50
  r4. d8  |
  e8 f e d  |
  c4 r }
  \alternative { { r4. d8  |
  e4 d8 c  |
  %55
  c4 r }
  { r4. f,8  |
  e8 e16 e f8 f } }
  \repeat volta 2 { g2  |
  r8 g'16 g g8 g  |
  %60
  a,2  |
  r8 a'16 a a8 a  |
  g,8 a b d  |
  f8 e d c }
  \alternative { { b8 a g f  |
  %65
  e4 f }
  { a8 g f g  |
  c2  |
  r2 } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 r  |
  %05
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  %10
  tomfl8 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl }
  \alternative { { tomfl8 tomfl tomfl tomfl }
  { tomfl8 tomfl tomfl tomfl } }
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl  |
  %15
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl }
  %20
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl }
  { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl } }
  \repeat volta 2 { tomfl8 tomfl tomfl tomfl  |
  %25
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %30
  tomfl8 tomfl tomfl tomfl }
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl }
  { tomfl4 r } }
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  %35
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl }
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl  |
  %40
  tomfl8. tomfl16 tomfl8 tomfl }
  { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl } }
  tomfl4 tomfl  |
  \repeat volta 2 { tomfl4 r8 tomfl  |
  %45
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl  |
  tomfl4 r8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl  |
  %50
  tomfl4 r8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl }
  \alternative { { tomfl4 r8 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  %55
  tomfl4 tomfl }
  { tomfl4 r8 tomfl  |
  tomfl8 tomfl tomfl tomfl } }
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  %60
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl }
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl  |
  %65
  tomfl8. tomfl16 tomfl8 tomfl }
  { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl4 r8 tomfl  |
  tomfl4 r } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 2/4
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 r  |
  %05
  \repeat volta 2 { tomfl2  |
  tomfl2  |
  tomfl4 tomfl  |
  tomfl2  |
  tomfl2  |
  %10
  tomfl2  |
  tomfl4 tomfl }
  \alternative { { tomfl2 }
  { tomfl2 } }
  \repeat volta 2 { tomfl4 tomfl  |
  %15
  tomfl2  |
  tomfl4 tomfl  |
  tomfl2  |
  tomfl4 tomfl  |
  tomfl4 r }
  %20
  \alternative { { tomfl4 tomfl  |
  tomfl4 r }
  { tomfl4 tomfl  |
  tomfl4 r } }
  \repeat volta 2 { tomfl4 r8 tomfl  |
  %25
  tomfl4 r  |
  tomfl4. tomfl8  |
  tomfl4 r  |
  tomfl4 r8 tomfl  |
  tomfl2  |
  %30
  tomfl4. tomfl8 }
  \alternative { { tomfl4 r }
  { tomfl4 r } }
  \repeat volta 2 { tomfl4 tomfl  |
  tomfl4 r  |
  %35
  tomfl4 tomfl  |
  tomfl2  |
  tomfl4 tomfl  |
  tomfl4 r }
  \alternative { { tomfl4 tomfl  |
  %40
  tomfl2 }
  { tomfl4 tomfl  |
  tomfl2 } }
  tomfl4 tomfl  |
  \repeat volta 2 { tomfl4. tomfl8  |
  %45
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 r8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %50
  tomfl4. tomfl8  |
  tomfl4 tomfl  |
  tomfl4 tomfl }
  \alternative { { tomfl4 r8 tomfl  |
  tomfl4 tomfl  |
  %55
  tomfl4 tomfl }
  { tomfl4 r8 tomfl  |
  tomfl4 tomfl } }
  \repeat volta 2 { tomfl4 tomfl  |
  tomfl4 r  |
  %60
  tomfl4 tomfl  |
  tomfl4 r  |
  tomfl4 tomfl  |
  tomfl4 r }
  \alternative { { tomfl4 tomfl  |
  %65
  tomfl4 r }
  { tomfl4 tomfl  |
  tomfl4 r8 tomfl  |
  tomfl4 r } } \bar "||"
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

