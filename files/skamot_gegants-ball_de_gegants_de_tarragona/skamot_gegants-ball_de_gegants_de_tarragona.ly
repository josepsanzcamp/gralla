\version "2.16.2"

\header {
  dedication=""
  title="Ball de gegants"
  subtitle="Ball de gegants de Tarragona"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Tarragona"
  arranger="Anònim - Arr. Xavier Fort"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative b'
{
  \clef treble
  \key c \major
  \time 1/8
  b16 c \tempo 4 = 90  |
  \time 2/4   \repeat volta 2 { d8. e16 f e f g  |
  f8 e d c  |
  d4 b8 b16 c  |
  %05
  d8. e16 f e f g  |
  f8 e c d  |
  b2 ~  |
  b2 ~ }
  \alternative { { b4 r8 b16 c }
  %10
  { b4 r8 d16 e } }
  \repeat volta 2 { f8 e d c  |
  d8. b16 g8 a  |
  b8 b16 a b8 c  |
  d4. e8  |
  %15
  c4. d8  |
  b8 g d'8. c16  |
  b2 ~ }
  \alternative { { b4 r8 d16 e }
  { b4 r4 } } \bar "||" % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4 = 90
  \clef treble
  \key c \major
  \time 1/8
  g16 a  |
  \time 2/4   \repeat volta 2 { b8. c16 d c d e  |
  d8 c b a  |
  b4 g8 g16 a  |
  %05
  b8. c16 d c d e  |
  d8 c a b  |
  b2 ~  |
  b2 ~ }
  \alternative { { b4 r8 g16 a }
  %10
  { b4 r8 b16 c } }
  \repeat volta 2 { d8 c b a  |
  b8. g16 <e g>8 <f a>  |
  g8 g16 <f a> g8 a  |
  b4. c8  |
  %15
  a4. b8  |
  g8 <e g> b'8. a16  |
  g2 ~ }
  \alternative { { g4 r8 b16 c }
  { g4 r4 } } \bar "||" % kompletite
}

liniaroAc =
\relative d''
{
  \tempo 4 = 90
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { d4. d16 b  |
  d8 g f e  |
  d4. r8  |
  %05
  d4. d16 b  |
  d8 g e f  |
  d2 ~  |
  d8. f16 d4 ~ }
  \alternative { { d8. e16 d8 r }
  %10
  { d4 r } }
  \repeat volta 2 { f8 c f e  |
  f8. d16 d8. c16  |
  d8 d16 e d8 e  |
  d8 d f g  |
  %15
  e8 e c f  |
  d8 r f8. e16  |
  d4 ~ d8. c16 }
  \alternative { { d4 r }
  { d4 r4 } } \bar "||" % kompletite
}

liniaroAd =
\relative g'
{
  \tempo 4 = 90
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { g4 f8 a  |
  f8 a g r  |
  g4. r8  |
  %05
  g4 f8 a  |
  f8 a f a  |
  g8. g16 g g g g  |
  g8 g g8. f16 }
  \alternative { { g8 g g r }
  %10
  { g8 g g r } }
  \repeat volta 2 { f16 a f a g8 g  |
  g8 g g f  |
  g8 r g f  |
  g8 g16 f g8 a  |
  %15
  f8 r g16 g g g  |
  g4 g8 f16 g  |
  g8 g g8. f16 }
  \alternative { { g4 r }
  { g4 r4 } } \bar "||" % kompletite
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new Staff \with {instrumentName = #"Gralla 4" shortInstrumentName = #"G"} \liniaroAd
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
        \new Staff \with {instrumentName = #"Gralla 4" shortInstrumentName = #"G"} \liniaroAd
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
  \header {instrument="Gralla 4"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

