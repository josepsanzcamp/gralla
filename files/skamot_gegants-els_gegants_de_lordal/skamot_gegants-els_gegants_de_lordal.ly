\version "2.16.2"

\header {
  dedication=""
  title="Gegants"
  subtitle="Els gegants de l'Ordal"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="L'Alt Penedès"
  arranger="Arr. Esteve Grau, juliol del 94"
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  g4.  |
  \time 6/8   e'4 e8 d e d  |
  c4 c8 b c b  |
  a8 b a g4. ~  |
  %05
  g4. g  |
  e'4 e8 d e d  |
  c4 c8 b c b  |
  a2. ~  |
  a4. a  |
  %10
  f'4 f8 e f e  |
  d4. g,  |
  e'4 e8 d e d  |
  c2. ~  |
  c8 a b c b a  |
  %15
  g2. ~  |
  g8 d' e f e d  |
  g2. ~  |
  g8 d e f e d  |
  c2. ~  |
  %20
  \mark "Fine" c4. r  \bar "||"
  \time 2/4   e8 e16 e c8 c  |
  e4. e8  |
  f8 g16 f e8 d  |
  e4 c  |
  %25
  g'8 g16 g d8 d  |
  g4. g8  |
  a8 b16 a g8 fis  |
  g4. f16 e  |
  f4. e16 d  |
  %30
  e4. d16 c  |
  \times 2/3 { d8 c b } \times 2/3 { c b a }  |
  g2 ~  |
  \mark "D.C. al Fine" g4 r  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  g4.  |
  \time 6/8   c4 c8 b c b  |
  g4 g8 g a g  |
  a8 b a g4. ~  |
  %05
  g4. g  |
  c4 c8 b c b  |
  g4 g8 g a g  |
  a2. ~  |
  a4. a  |
  %10
  d4 d8 c d c  |
  b4. g  |
  g4. gis  |
  a2. ~  |
  a4. r  |
  %15
  g'8 f e d c a  |
  g4. r  |
  g'8 f e d c d  |
  e8 b c d c b  |
  c2. ~  |
  %20
  c4. r  \bar "||"
  \time 2/4   c8 c16 c c8 c  |
  c4. c8  |
  d8 e16 d c8 b  |
  c4 c  |
  %25
  d8 d16 d b8 b  |
  d4. d8  |
  c8 d16 c b8 a  |
  b4. a16 b  |
  c4. c16 b  |
  %30
  c4. g16 a  |
  \times 2/3 { b8 c d } \times 2/3 { e f fis }  |
  g2 ~  |
  g4 r  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  r4.  |
  \time 6/8   g4 g8 g4.  |
  e4 e8 e4.  |
  f8 g f e4. ~  |
  %05
  e4. r  |
  g4 g8 g4.  |
  e4 e8 e4.  |
  f2. ~  |
  f4. r  |
  %10
  a4. gis  |
  g4. r  |
  g4. f  |
  e2. ~  |
  e4. r  |
  %15
  e4. f  |
  e4. r  |
  e4. f  |
  g4. f8 g f  |
  e2. ~  |
  %20
  e4. r  \bar "||"
  \time 2/4   g4 e  |
  g8 e f g  |
  b4 a  |
  g4 e  |
  %25
  b'4 g  |
  b8 d c b  |
  a4 fis  |
  g2  |
  a2  |
  %30
  g2  |
  g4 a  |
  b2 ~  |
  b4 r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

