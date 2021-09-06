\version "2.22.1"

\header {
  dedication="Cercavila"
  title="  "
  subtitle="Bou amb corda"
  subsubtitle="del repertori de Joan Blasco"
  poet=""
  meter=""
  piece=""
  composer="Moixent"
  arranger="Arr. Xavier Richart"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  e8  |
  \time 6/8   \repeat volta 2 { g4 e8 g4 e8  |
  c4. g  |
  g8 ( a ) b c d e  |
  %05
  f4. r8 r d  |
  f4 e8 d4 c8  |
  b4. g  |
  c8 ( b ) a g a b }
  \alternative { { c4. r8 r e }
  %10
  { c4. r } }
  c8 ( b ) a g a b  |
  c4. g  |
  c8 b a ( g ) a b  |
  c2.  |
  %15
  c8 ( b ) a g a b  |
  c4 g8 c4 d8  |
  e4 e8 d4.\fermata  |
  d8 ( e d ) c4. ~  |
  c4. r8 r g  |
  %20
  \repeat volta 2 { e'4 e8 e4 e8  |
  e2.  |
  d8 ( c ) b d c b  |
  a4. r8 r g  |
  d'4 d8 d4 d8  |
  %25
  d2.  |
  c8 ( b ) a c b a }
  \alternative { { g4. r8 r g }
  { g2. } }
  c8 ( b ) a g a b  |
  %30
  c4. g  |
  c8 b a g ( a ) b  |
  c2.   |
  c8 ( b a ) g a b  |
  c4 g8 c4 d8  |
  %35
  e4 e8 d4.\fermata  |
  d8 ( e d ) c4. ~  |
  c2.  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  c8  |
  \time 6/8   \repeat volta 2 { e4 c8 e4 c8  |
  g'8 ( f ) g e4.  |
  b8 ( c ) d e f g  |
  %05
  a4. r8 r b  |
  a4 g8 f4 e8  |
  g4. f  |
  e4.-. d-. }
  \alternative { { e4. r8 r c }
  %10
  { e4. r } }
  e4.-. g-.  |
  e8 ( d ) c b c d  |
  e4. d  |
  e2.  |
  %15
  e4. g  |
  e4 d8 e4 f8  |
  g4 g8 g4.\fermata  |
  f4. e  |
  e4. r8 r e  |
  %20
  \repeat volta 2 { g4 g8 g4 g8  |
  g2.  |
  f4.-. g-.  |
  f4. r8 r d  |
  f4 f8 f4 f8  |
  %25
  f2.  |
  e4.-. g-. }
  \alternative { { e4. r8 r e }
  { e4.-- d-- } }
  e4.-- g--  |
  %30
  e8 ( d ) c b c d  |
  e4.-- d--  |
  c'8 b a g ( fis f )  |
  e4.-- g--  |
  e4 d8 e4 f8  |
  %35
  g4 c8 b4.\fermata  |
  a8 ( g f ) e4. ~  |
  e2.  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
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
  \header {instrument="Gralla 1"}
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

