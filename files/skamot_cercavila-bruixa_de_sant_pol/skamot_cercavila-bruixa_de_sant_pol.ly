\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Cercavila"
  subtitle="La Bruixa"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Ferran Puigvert i Joan Talamàs"
  arranger="Arr. Aniol Noguera"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \clef treble
  \key c \major
  \time 1/8
  e16 \tempo 4 = 120 c _"staccato"  |
  \time 2/4   a8 -. \mf a-. a-. e'16 c  |
  a8 a a b16 c  |
  d8. d16 b8 g  |
  %05
  a16 g a b c8-. e16 \breathe c  |
  a8 a a e'16 c  |
  a8 a a b16 c  |
  d8. d16 b8 g  |
  a4-. r8 a16 c  |
  %10
  e8 \p e e f16 e  |
  d8 d d e16 d  |
  c8 c b c  |
  d8 b c a16 \breathe c  |
  e8 e  e f16 e  |
  %15
  d8 d d e16 d  |
  c8 \f c b g  |
  a4-. r8 e'16 f  |
  \repeat volta 2 { g8 \mf g g f16 e  |
  d8 c b d16 \breathe e  |
  %20
  f8 f f \mp e16 d  |
  c8 a a r  |
  a4 <a c>8 <a e'>  |
  d4 <g, b>8 g  |
  c4 <g b>8 g }
  %25
  \alternative { { a4-. r8 e'16 f }
  { a,4\fermata r4 } } \bar "||" % kompletite
}

liniaroAb =
\relative c''
{
  \tempo 4 = 120
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   c8-. c-. c-. r  |
  c8 c c r  |
  d8. d16 f8 g  |
  %05
  c,16 b c d e8-. r  |
  c8 c c r  |
  c8 c c r  |
  d8. d16 f8 g  |
  e4-. r  |
  %10
  c8 \p c c r  |
  b8 b b r  |
  a2 \< (  |
  b8-. ) \! r r4  |
  c8 c _"FONT" c r  |
  %15
  b8 b b r  |
  e8 \f e b b  |
  e4-. r  |
  \repeat volta 2 { b4. r8  |
  b4. r8  |
  %20
  c4. \mp r8  |
  e8 a a r  |
  c,4 \f \f c16 b a g  |
  b4 d16 e f a  |
  g4. g8 }
  %25
  \alternative { { a4-. r }
  { a4\fermata r4 } } \bar "||" % kompletite
}

liniaroAc =
\relative e'
{
  \tempo 4 = 120
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   e8-. \mf \mf e-. e-. r  |
  e8 e e r  |
  g4-> g->  |
  %05
  e4-- a8-. r  |
  e8 e e r  |
  e8 e e r  |
  g4-> g->  |
  a4-. r  |
  %10
  a8 \p a a r  |
  g8 g g r  |
  f2 \< (  |
  g8-. ) r \! r4  |
  a8 a  a r  |
  %15
  g8 g g r  |
  e4 \f g  |
  c4-. r  |
  \repeat volta 2 { e,8 \mf \mf e e r  |
  g4. r8  |
  %20
  a8 a \mp a r  |
  e4. r8  |
  f4. \f r8  |
  f4. r8  |
  e4. r8 }
  %25
  \alternative { { a4-. r }
  { a4\fermata r4 } } \bar "||" % kompletite
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
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

