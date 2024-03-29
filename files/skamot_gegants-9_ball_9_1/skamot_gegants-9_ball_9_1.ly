\version "2.16.2"

\header {
  dedication=""
  title="Gegants"
  subtitle="Ball de l'aniversari (9.ball.9)"
  subsubtitle="Entrada"
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer=""
  arranger="Marcel Casellas, 25/02/1998"
  opus="A en Jordi Fàbregas i la Dolors Capdevila"
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \clef treble
  \key g \major
  \time 7/8
  e2.. \tempo 8 = 140  |
  e2..  |
  dis2..  |
  e4. ~ e8 d e fis  |
  %05
  g8 a b b a a g  |
  fis2..  |
  a8 b c c b b a  |
  g4 a8 fis4 e  |
  dis2..  |
  %10
  b8 c d f e e d  |
  g4. ~ g4 a  |
  fis2.. ~  |
  fis4. r2  |
  r2 r4 r8  \bar "||"
  %15
  e8 e16 f e d e8 d16 c d8 c16 b  |
  c8 a'16 b a g a8 g16 fis g8 fis16 e  |
  fis8 a,16 b c d e d e fis g fis g a  |
  b4. ~ b4 r  |
  c4. ~ c4 r  |
  %20
  c2.. ~  |
  c4. b4 a  |
  b2.. ~  |
  \time 3/4   b4. r4 r  \bar "|." % troigo!
}

liniaroAb =
\relative b'
{
  \tempo 8 = 140
  \clef treble
  \key g \major
  \time 7/8
  b2..  |
  c2..  |
  b2..  |
  b4. ~ b8 c b a  |
  %05
  b8 c d d c c b  |
  d2..  |
  c8 d dis e d d cis  |
  d8 e fis fis e d c  |
  c4 d8 b4 a  |
  %10
  b2..  |
  c4. ~ c4 r  |
  d2.. ~  |
  d4. r2  |
  r2 r4 r8  \bar "||"
  %15
  c8 c16 d c b c8 b16 a b8 a16 gis  |
  a8 fis'16 g fis e fis8 e16 d e8 d16 c  |
  d8 a16 g a b c b c d e d e fis  |
  g4. ~ g4 r  |
  a4. ~ a4 r  |
  %20
  fis4. ~ fis4 e8 fis  |
  g2.. ~  |
  g2.. ~  |
  \time 3/4   g4. r4 r  \bar "|." % troigo!
}

liniaroAc =
\relative g'
{
  \tempo 8 = 140
  \clef treble
  \key g \major
  \time 7/8
  g2..  |
  g2..  |
  a2..  |
  g4. ~ g4 r  |
  %05
  r2 r4 r8  |
  a8 b c c b b a  |
  g4. ~ g8 g g a  |
  b4 c8 a4 g  |
  fis2..  |
  %10
  gis2..  |
  a4. ~ a4 r  |
  c2.. ~  |
  c4. r2  |
  r2 r4 r8  \bar "||"
  %15
  r2 r4 r8  |
  r2 r4 r8  |
  r2 r4 r8  |
  d4. ~ d4 r  |
  dis4. ~ dis4 r  |
  %20
  d2.. ~  |
  d2.. ~  |
  d2.. ~  |
  \time 3/4   d4. r4 r  \bar "|." % troigo!
}

liniaroAd =
\relative e,
{
  \tempo 8 = 140
  \clef bass
  \key g \major
  \time 7/8
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  %05
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  %10
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  \bar "||"
  %15
  e8 e16-> e e e e8 e16-> e e8 e16-> e  |
  e8 e16-> e e e e8 e16-> e e8 e16-> e  |
  e8 e16 e e e e e e e e e e e  |
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  %20
  e8-> e e e-> e e-> e  |
  e8-> e e e-> e e-> e  |
  e2.. ~  |
  \time 3/4   e4. r4 r  \bar "|." % troigo!
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new Staff \with {instrumentName = #"Caixa" shortInstrumentName = #"C"} \liniaroAd
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
        \new Staff \with {instrumentName = #"Caixa" shortInstrumentName = #"C"} \liniaroAd
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
  \header {instrument="Caixa"}
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

