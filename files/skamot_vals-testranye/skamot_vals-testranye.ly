\version "2.16.2"

\header {
  dedication=""
  title="Vals"
  subtitle="T'estranye"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Raül Forcadell"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { e2.  |
  g2 e4  |
  d2. ~  |
  d4 a' g  |
  %05
  f2.  |
  e2 d4  |
  g2. ~  |
  g2.  |
  e2.  |
  %10
  g2 e4  |
  d2. ~  |
  d4 e f  |
  a4 g d  |
  g4 f d  |
  %15
  c2. ( }
  \alternative { { c4 ) r r }
  { \mark "Fine" c4 r g } }
  e'2. ~  |
  e2 f4  | % troigo!
  %20
  e2. ~  |
  e4 e f  |
  g2.  |
  f2 e4  |
  f2. ~  |
  %25
  f4 r g,  |
  f'2. ~  |
  f2 g4  |
  f2. ~  |
  f4 f g  |
  %30
  a2.  |
  g2 f4  |
  e2. ~  |
  e4 r g,  |
  e'2. ~  |
  %35
  e2 f4  | % troigo!
  e2. ~  |
  e4 e f  |
  g2.  |
  f2 e4  |
  %40
  f2. ~  |
  f4 r g,  |
  f'2. ~  |
  f4 d f  |
  e2. ~  |
  %45
  e2 r4  |
  d4 d e  |
  f4 e d  |
  c2. ~  |
  \mark "D.C. al Fine" c4 r r  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { c2.  |
  g2 a4  |
  b2. ~  |
  b4 b c  |
  %05
  d2.  |
  c2 b4  |
  << { r2 r4 } \\ { c2. ~ } >>  |
  << { g4 a b } \\ { c4 r2 } >>  | % kompletite
  c2.  |
  %10
  g2 a4  |
  b2. ~  |
  b4 c d  |
  f4 e b  |
  d4 c b  |
  %15
  c4 e g }
  \alternative { { c,4 r r }
  { c4 r g } }
  c2. ~  |
  c2 b4  | % troigo!
  %20
  c2. ~  |
  c4 c d  |
  e2.  |
  d2 c4  |
  b2. ~  |
  %25
  b4 r g  |
  d'2. ~  |
  d2 c4  |
  d2. ~  |
  d4 d e  |
  %30
  f2.  |
  e2 d4  |
  c2.   |
  << { c4 r g } \\ { g4 a b } >>  |
  c2. ~  |
  %35
  c2 b4  | % troigo!
  c2. ~  |
  c4 c d  |
  e2.  |
  d2 c4  |
  %40
  b2. ~  |
  b4 r g  |
  d'2. ~  |
  d4 b d  |
  c2. ~  |
  %45
  c2 r4  |
  b4 b c  |
  d4 c b  |
  << { r2 r4 } \\ { c8 d16 c b8 c e g } >>  |
  c4 r r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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

