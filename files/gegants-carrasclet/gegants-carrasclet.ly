\version "2.22.1"

\header {
  dedication="Ball de gegants"
  title="  "
  subtitle="Carrasclet"
  subsubtitle="Ball per a un guerriller català gegant"
  poet=""
  meter=""
  piece=""
  composer="Biel Ferré i Puig"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  c8 d e f _"Moderat"   |
  \time 3/4   \repeat volta 2 { g4 g8 e c4  |
  e4 g e  |
  f4 g8 f e4 ~  |
  %05
  e4 c8 ( d e f )  |
  g4 g8 a g4  |
  f4 e g  |
  f4 e8 cis c4 ~  |
  c4 c8 ( d e f )  |
  %10
  g4 g8 e c4  |
  e4 g e  |
  f4 g8 f e4 ~  |
  e4 c8 ( d e f )  |
  g4 g8 a g4  |
  %15
  f4 e cis }
  \alternative { { c2. ~  |
  c8 r c ( d e f ) }
  { c2. ~ } }
  c8 r c c c d  |
  %20
  \repeat volta 2 { e4. c8 g4 ~  |
  g4 e' g  |
  f4 e cis  |
  c8 r b4 c  |
  d4. b8 g4 ~  |
  %25
  g4 d' f  |
  e4 e8 f g4 ~  |
  g4 c,8 c c d  |
  e4. c8 g4 ~  |
  g4 e' g  |
  %30
  f4 e cis }
  \alternative { { c8 r b4 c  |
  d4 e f  |
  g4 f g  |
  e2. ~  |
  %35
  e8 r c c c d }
  { c4 b d  |
  g4 fis g  |
  f4 e cis  |
  c2. ~  |
  %40
  c8 r r2 } } \bar "||" % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  \time 3/4   \repeat volta 2 { r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %10
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %15
  r2 r4 }
  \alternative { { r2 r4  |
  r2 r4 }
  { r2 r4 } }
  r4 g8 g a b  |
  %20
  \repeat volta 2 { c4. g8 g4 ~  |
  g4 c e  |
  d4 c g  |
  g8 r g4 a  |
  b4. g8 g4 ~  |
  %25
  g4 b d  |
  c4 b8 a g4 ~  |
  g4 g8 g a b  |
  c4. g8 g4 ~  |
  g4 c e  |
  %30
  d4 c g }
  \alternative { { g8 r g4 a  |
  b4 c d  |
  e4 d e  |
  c2. ~  |
  %35
  c8 r g g a b }
  { g4 g b  |
  d4 cis d  |
  d4 c g  |
  c2. ~  |
  %40
  c8 r r2 } } \bar "||" % kompletite
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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

