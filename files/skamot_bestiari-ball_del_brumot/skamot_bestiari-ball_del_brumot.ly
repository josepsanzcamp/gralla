\version "2.16.2"

\header {
  dedication=""
  title="Bestiari"
  subtitle="Ball del Brumot"
  subsubtitle=""
  poet="gralla.skamot.com"
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
\relative g'
{
  \tempo 4 = 120
  \clef treble
  \key c \major
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4. g8 a b  |
  %05
  \repeat volta 2 { c4 e8 e4 d8  |
  c4. g8 a b  |
  d4 f8 f4 e8  |
  d4. g,8 a b  |
  d4 f8 f4 e8  |
  %10
  d4. g,8 a b }
  \alternative { { c4 e8 g4 e8  |
  c4. g8 a b }
  { g'8 f e f e d  |
  c4. ~ c8 r e } }
  %15
  g8 f e g f e  |
  d4. r4 f8  |
  a8 g f a g f  |
  e4. r4 e8  |
  g8 f e g f e  |
  %20
  d4. r4 f8  |
  a8 g f e d b  |
  c4 e8 e f g  \bar "||"
  a4 d,8 d e f  |
  g4 c,8 c d e  |
  %25
  f4 e8 d4 c8  |
  g'4 e8 e f g  |
  a4 d,8 d e f  |
  g4 c,8 c d e  |
  f4 e8 d4 g8  |
  %30
  c,4. g8 a b  |
  \repeat volta 2 { c4 e8 e4 d8  |
  c4. g8 a b  |
  d4 f8 f4 e8  |
  d4. g,8 a b  |
  %35
  d4 f8 f4 e8  |
  d4. g,8 a b }
  \alternative { { c4 e8 g4 e8  |
  c4. g8 a b }
  { g'8 f e f e d  |
  %40
  c4. r4 c8 } }
  a'4 a8 a g f  |
  g4 e8 c4 c8  |
  f4 e8 f4 g8  |
  e4. r4 c8  |
  %45
  a'4 a8 a g f  |
  g4 e8 c4 c8  |
  d4 e8 f4 d8  |
  \time 2/4   c4 r8 e16 d \bar "||"
  c8 c f d  |
  %50
  e4 c8 e16 d  |
  c8 c f g  |
  e4 r8 e16 d  |
  c8 c f d  |
  e4 c8 d16 e  |
  %55
  f8 d c b  |
  c4 \times 2/3 { g8 a b }  |
  \time 6/8   \repeat volta 2 { c4 e8 e4 d8  |
  c4. g8 a b  |
  d4 f8 f4 e8  |
  %60
  d4. g,8 a b  |
  d4 f8 f4 e8  |
  d4. g,8 a b }
  \alternative { { c4 e8 g4 e8  |
  c4. g8 a b }
  %65
  { g'8 f e f e d  |
  c4. r } } \bar "||"
}

liniaroAb =
\relative e'
{
  \tempo 4 = 120
  \clef treble
  \key c \major
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  \repeat volta 2 { e4 g8 g4 f8  |
  e4. r  |
  f4 g8 a4 g8  |
  f4. r  |
  f4 g8 a4 g8  |
  %10
  f4. r }
  \alternative { { e4 g8 g4 g8  |
  e4. r }
  { b'4 g8 a4 f8  |
  e4 g8 c4 c8 } }
  %15
  e4. d  |
  b4 g8 b4 r8  |
  f'4. e  |
  c4 g8 c4 r8  |
  e4. d  |
  %20
  b4 g8 b4 r8  |
  f'4. g  |
  e4. r4 c8  \bar "||"
  c4. r4 b8  |
  b4. r4 a8  |
  %25
  a4. r4 g8  |
  g4. b  |
  c4. r4 b8  |
  b4. r4 a8  |
  a4. b  |
  %30
  c4. r  |
  \repeat volta 2 { e,4 g8 g4 f8  |
  e4. r  |
  f4 g8 a4 g8  |
  f4. r  |
  %35
  f4 g8 a4 g8  |
  f4. r }
  \alternative { { e4 g8 g4 g8  |
  e4. r }
  { b'4 g8 a4 f8  |
  %40
  e4. r4 a8 } }
  f'4 f8 f e d  |
  e4 c8 a4 a8  |
  d4 c8 d4 e8  |
  c4. r4 a8  |
  %45
  f'4 f8 f e d  |
  e4 c8 a4 a8  |
  b4 c8 d4 b8  |
  \time 2/4   e,4 r  \bar "||"
  r4 r8 f'16 d  |
  %50
  c8 c f d  |
  e4 r8 e16 d  |
  c8 c f g  |
  e4 r8 f16 d  |
  c4 e8 f16 g  |
  %55
  a8 f e d  |
  e2  |
  \time 6/8   \repeat volta 2 { e,4 g8 g4 f8  |
  e4. r  |
  f4 g8 a4 g8  |
  %60
  f4. r  |
  f4 g8 a4 g8  |
  f4. r }
  \alternative { { e4 g8 g4 g8  |
  e4. r }
  %65
  { b'4 g8 a4 f8  |
  e4 g8 c4 r8 } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4 = 120
  \time 6/8
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 r8 tomfl4 r8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 r8 tomfl tomfl tomfl  |
  %05
  \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %10
  tomfl4 tomfl8 tomfl tomfl tomfl }
  \alternative { { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 r8 tomfl tomfl tomfl }
  { tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 r8 } }
  %15
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %20
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 r8 r4.  \bar "||"
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %25
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %30
  tomfl4 r8 tomfl tomfl tomfl  |
  \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %35
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl }
  \alternative { { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 r8 tomfl tomfl tomfl }
  { tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %40
  tomfl4 r8 tomfl4 r8 } }
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %45
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  \time 2/4   tomfl4 r  \bar "||"
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  %50
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl4 tomfl8 tomfl16 tomfl  |
  %55
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl }  |
  \time 6/8   \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %60
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl }
  \alternative { { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 r8 tomfl tomfl tomfl }
  %65
  { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 r8 } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4 = 120
  \time 6/8
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 r8 tomfl4 r8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 r8 tomfl tomfl tomfl  |
  %05
  \repeat volta 2 { tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl tomfl tomfl  |
  tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl tomfl tomfl  |
  tomfl4 r8 tomfl4 r8  |
  %10
  tomfl4 r8 tomfl tomfl tomfl }
  \alternative { { tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl tomfl tomfl }
  { tomfl4 r8 tomfl4 r8  |
  tomfl4 tomfl8 tomfl4 r8 } }
  %15
  tomfl4 r8 tomfl4 r8  |
  tomfl4 tomfl8 tomfl4 r8  |
  tomfl4 r8 tomfl4 r8  |
  tomfl4 tomfl8 tomfl4 r8  |
  tomfl4 r8 tomfl4 r8  |
  %20
  tomfl4 tomfl8 tomfl4 r8  |
  tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 r4 tomfl8  \bar "||"
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4 tomfl8  |
  %25
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 tomfl4 r8  |
  %30
  tomfl4 r8 tomfl tomfl tomfl  |
  \repeat volta 2 { tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl tomfl tomfl  |
  tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl tomfl tomfl  |
  %35
  tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl tomfl tomfl }
  \alternative { { tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl tomfl tomfl }
  { tomfl4 r8 tomfl4 r8  |
  %40
  tomfl4 r8 tomfl4 r8 } }
  tomfl4 r8 tomfl4 r8  |
  tomfl4 tomfl8 tomfl4 r8  |
  tomfl4 r8 tomfl4 r8  |
  tomfl4 tomfl8 tomfl4 r8  |
  %45
  tomfl4 r8 tomfl4 r8  |
  tomfl4 tomfl8 tomfl4 r8  |
  tomfl4 r8 tomfl4 tomfl8  |
  \time 2/4   tomfl4 r  \bar "||"
  tomfl4 r  |
  %50
  tomfl4 r  |
  tomfl4 r  |
  tomfl4 r  |
  tomfl4 r  |
  tomfl4 r  |
  %55
  tomfl4 r  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl }  |
  \time 6/8   \repeat volta 2 { tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl tomfl tomfl  |
  tomfl4 r8 tomfl4 r8  |
  %60
  tomfl4 r8 tomfl tomfl tomfl  |
  tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl tomfl tomfl }
  \alternative { { tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl tomfl tomfl }
  %65
  { tomfl4 r8 tomfl4 r8  |
  tomfl4 tomfl8 tomfl4 r8 } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

\bookpart {
  \header {instrument="Timbal fondo"}
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

