\version "2.16.2"

\header {
  dedication=""
  title="Cercavila"
  subtitle="Cant dels Maulets"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Ximo Caffarena"
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
  \repeat volta 2 { r2  |
  r2  |
  r2  |
  r2  | }
  %05
  \repeat volta 2 { e8. f16 g8 e  |
  c8. d16 e8 c  |
  g8 a b c  |
  d8 e c4  | }
  \repeat volta 2 { g'8. a16 g8 f  |
  %10
  e8 f g e  |
  c8 d e f  |
  e8 d c4  | }
  \repeat volta 2 { b8. c16 d8 e  |
  d8 \espressivo c b8. c16  |
  %15
  d8 e d \espressivo c }
  \alternative { { b8. c16 d4 }
  { b8. c16 c4 _"D.C i fins al final" } }
  \time 1/4   r4  \bar "||"
  \time 2/4   g'8. a16 g8 f  |
  %20
  e8 f g e  |
  c8 d r4  | % kompletite
  c8 b a4  |
  a2 ~  |
  a2 ~  |
  %25
  a4 r  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { r2  |
  r2  |
  r2  |
  r2  | }
  %05
  \repeat volta 2 { r2  |
  e8. f16 g8 e  |
  d8 e f g  |
  f8 g e4  | }
  \repeat volta 2 { e4 d8 a  |
  %10
  c4 b8 g  |
  a4 g8 a  |
  g2  | }
  \repeat volta 2 { f'8. e16 d8 c  |
  d8 e f8. e16  |
  %15
  d8 c d e }
  \alternative { { f8. e16 d4 }
  { f8. e16 e4 } }
  \time 1/4   r4  \bar "||"
  \time 2/4   e2  |
  %20
  c4 e  |
  e8 _"rit." d  r4  | % kompletite
  c8 b a4  |
  a2 ~  |
  a2 ~  |
  %25
  a4 r  \bar "|."
}

liniaroAc =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { r2  |
  r2  |
  r2  |
  r2  | }
  %05
  \repeat volta 2 { r2  |
  r2  |
  b8 c d e  |
  g,8 b c4  | }
  \repeat volta 2 { g4. c8  |
  %10
  g4. c8  |
  f4 c  |
  g2  | }
  \repeat volta 2 { g4 d'8 g  |
  d4 g,  |
  %15
  d'8 g d4 }
  \alternative { { g,4 d' }
  { g,4 g } }
  \time 1/4   r4  \bar "||"
  \time 2/4   c2  |
  %20
  c2  |
  g8 d' r4  | % kompletite
  gis,4 a  |
  a2 ~  |
  a2 ~  |
  %25
  a4 r  \bar "|."
}

liniaroAd =
\relative e
{
  \tempo 4=120
  \clef bass
  \key c \major
  \time 2/4
  \repeat volta 2 { e4:16 e8 e  |
  e4 :16 e8 e  |
  e4 :16 e8 e  |
  << { r8 e e r } >>  | }
  %05
  \repeat volta 2 { e4 :16 e8 e  |
  e4 :16 e8 e  |
  e4 :16 e8 e  |
  << { r8 e e r } >>  | }
  \repeat volta 2 { e4 e8 :16 e  |
  %10
  e4 :16 e8 e  |
  e4 :16 e8 e  |
  << { r8 e e r } >>  | }
  \repeat volta 2 { e4 :16 e8 e  |
  e4 :16 e :16  |
  %15
  e8 e e4 :16 }
  \alternative { { e4 :16 e }
  { e4 :16 e } }
  \time 1/4   e8 e16 e  \bar "||"
  \time 2/4   e4 :16 e8 e  |
  %20
  e4 :16 e8 e  |
  e8 e  r4  | % kompletite
  << { e8 e e4 } >>  |
  e2 ~ :16  |
  e2 ~ :16  |
  %25
  e4 r  \bar "|."
}

liniaroAe =
\relative a,
{
  \tempo 4=120
  \clef bass
  \key c \major
  \time 2/4
  \repeat volta 2 { a4 r8 a  |
  a4 r8 a  |
  r8 a r a  |
  r8 a a4  | }
  %05
  \repeat volta 2 { a4 r8 a  |
  a4 r8 a  |
  r8 a r a  |
  r8 a a4  | }
  \repeat volta 2 { a4 r8 a  |
  %10
  a4 r8 a  |
  r8 a r a  |
  r8 a a4  | }
  \repeat volta 2 { a4 r8 a  |
  a4 a  |
  %15
  r8 a a4 }
  \alternative { { a4 a }
  { a4 a } }
  \time 1/4   a8 a  \bar "||"
  \time 2/4   a4 r8 a  |
  %20
  a4 a  |
  a4 r4  | % kompletite
  a4 a  |
  a4 r  |
  r2  |
  %25
  a4 r  \bar "|."
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
        \new Staff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAe
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
        \new Staff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAe
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

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAe
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAe
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

