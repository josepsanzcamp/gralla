\version "2.16.2"

\header {
  dedication="Pasdoble"
  title=""
  subtitle="Dolors de Munt"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Enric Montsant i Damià"
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
  \time 4/4
  e2 ~ e8 e d c  |
  b4 a2 a'4  |
  g2 ~ g8 f e d  |
  e1  |
  %05
  f2 ~ f8 f e d  |
  c4. b8 a4 c  |
  b4 d c b  |
  a2 ~ a8 r r4  \bar "||"
  e'2 ~ e8 e d c  |
  %10
  b4 a2 a'4  |
  g2 ~ g8 f e d  |
  e1  |
  f2 ~ f8 f e d  |
  c4. b8 a4 c  |
  %15
  e4 d c b  |
  a2 ~ a8 r r4  |
  \repeat volta 2 { r1  |
  r1  |
  r1  |
  %20
  r1  |
  g'8 g g g g f e d  |
  e1  |
  f8 f f f f e d c }
  \alternative { { b2 r }
  %25
  { b2 r } }
  e2 g,4 c  |
  b1  |
  f'2 a,4 f'  |
  e1  |
  %30
  r1  |
  r1  |
  r1  |
  r1  \bar "||"
  e2 g,4 c  |
  %35
  b1  |
  f'2 a,4 f'  |
  e1  |
  r1  |
  r1  |
  %40
  r1  |
  r1  \bar "||"
  e2 ~ e8 e d c  |
  b4 a2 a'4  |
  g2 ~ g8 f e d  |
  %45
  e1  |
  f2 ~ f8 f e d  |
  c4. b8 a4 c  |
  e4 d c b  |
  a2. c4  |
  %50
  e4 d c b  |
  a2. a4  |
  e'4 d c d  |
  e2. r8 e16 e  |
  e8 r r4 r2  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r1  |
  r1  |
  r1  |
  r1  |
  %05
  r1  |
  r1  |
  r1  |
  r1  \bar "||"
  e2 ~ e8 e d c  |
  %10
  b4 a2 a4  |
  b2 ~ b8 b b b  |
  c1  |
  d2 ~ d8 d c b  |
  a1  |
  %15
  b4 d c b  |
  c2 ~ c8 r r4  |
  \repeat volta 2 { e8 e16 e e8 e d c b c  |
  a1  |
  e'8 e16 e e8 e d c b c  |
  %20
  a1  |
  b8 b b b b b b b  |
  c1  |
  d8 d d d d c b a }
  \alternative { { gis2 r }
  %25
  { gis2 r } }
  r1  |
  r1  |
  r1  |
  r1  |
  %30
  g2 d'4 e  |
  d1  |
  a2. d4  |
  e8 f e d c d c b  \bar "||"
  e8 c g e' c g e' c  |
  %35
  d8 b g d' b g d' b  |
  f'8 c a f' c a f' c  |
  e8 f e d c d c b  |
  e8 c g e' c g e' c  |
  d8 b g d' b g d' b  |
  %40
  f'8 c a f' c a f' c  |
  e8 f e d c d c b  \bar "||"
  r1  |
  r2. a4  |
  b2 ~ b8 b b b  |
  %45
  c1  |
  d2 ~ d8 d c b  |
  a1  |
  b4 d c b  |
  c2. a4  |
  %50
  b4 d c b  |
  c2. a4  |
  b4 d c b  |
  c2. r8 c16 c  |
  c8 r r4 r2  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r1  |
  r1  |
  r1  |
  r1  |
  %05
  r1  |
  r1  |
  r1  |
  r1  \bar "||"
  r1  |
  %10
  r1  |
  g4 b d f  |
  e4 d c b  |
  a4 c d f  |
  e4 c2 a4  |
  %15
  gis4 b a gis  |
  a8 a16 a a8 a a r r4  |
  \repeat volta 2 { r1  |
  r1  |
  r1  |
  %20
  r1  |
  g4 b d f  |
  e4 d c b  |
  d4 a d f }
  \alternative { { e4 d c b }
  %25
  { e8 e16 e e8 e e d c b } }
  r1  |
  r1  |
  r1  |
  r1  |
  %30
  e2 g,4 c  |
  b1  |
  f'2 a,4 f'  |
  e1  \bar "||"
  r1  |
  %35
  r1  |
  r1  |
  r1  |
  e2 g,4 c  |
  b1  |
  %40
  f'2 a,4 f'  |
  e8 e16 e e8 e e d c b  \bar "||"
  r8 a r a r a16 a a8 a  |
  r8 a r a r a r a  |
  g4 b d f  |
  %45
  e4 d c b  |
  d4 a d f  |
  a4 e c a  |
  gis4 b a gis  |
  a2. a4  |
  %50
  gis4 b a gis  |
  a2. a4  |
  gis4 b a gis  |
  a2. r8 a16 a  |
  a8 r r4 r2  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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

