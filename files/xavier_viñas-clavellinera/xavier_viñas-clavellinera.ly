\version "2.16.2"

\header {
  dedication=""
  title="La Clavellinera"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="tradicional del Priorat"
  arranger="harmonització: Ramon Manent"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r2 a4  |
  \repeat volta 2 { e'4 e  f  |
  e2 d4    |
  c4 b d  |
  %05
  c8 b a4 a  |
  e'4 e f  |
  e2 d4  |
  b4 c b  |
  a2 a4  |
  %10
  e'4 e f  |
  e2 d4  |
  c4 b d  |
  c8 b a4 a  |
  e'4 e f  |
  %15
  e2 d4  |
  b4 c b }
  \alternative { { a2 a4 }
  { c2 b4 } }
  e2 e4  |
  %20
  e4 d c  |
  e2 e4  |
  e4 d c  |
  e2 e4  |
  e4 d c  |
  %25
  e2 f4  |
  d2 g,4  |
  d'2 d4  |
  d4 c b  |
  d2 d4  |
  %30
  d4 c b  |
  d2 e4  |
  c2 c4  |
  c4 d2  |
  e2 c4  |
  %35
  c4 d2  |
  e2 c4  |
  c4 d2  |
  e4 e c  |
  c4 d2  |
  %40
  e4 e c  |
  c4 d2  |
  e2 c4  |
  c4 d2  |
  e4 e8 e e e  |
  %45
  g4. f8 e4  |
  d4 c b  |
  a2 r4  \bar "|." % kompletite
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r2 a4  |
  \repeat volta 2 { c4 c d  |
  c2 b4  |
  a4 g b  |
  %05
  a4 a a  |
  c4 c d  |
  c2 b4  |
  g4 a g  |
  a2 a4  |
  %10
  c4 c d  |
  c2 b4  |
  a4 g b  |
  a4 a a  |
  c4 c d  |
  %15
  c2 b4  |
  g4 a g }
  \alternative { { a2 a4 }
  { a2 b4 } }
  c2 c4  |
  %20
  c4 b a  |
  c2 c4  |
  c4 b a  |
  c2 c4  |
  c4 b a  |
  %25
  c2 d4  |
  b2 g4  |
  b2 b4  |
  b4 a g  |
  b2 b4  |
  %30
  b4 a g  |
  b2 c4  |
  a2 a4  |
  a4 b2  |
  c2 a4  |
  %35
  a4 b2  |
  c2 a4  |
  a4 b2  |
  c4 c a  |
  a4 b2  |
  %40
  c4 c a  |
  a4 b2  |
  c2 a4  |
  a4 b2  |
  c4 c8 c c c  |
  %45
  e4. d8 c4  |
  b4 a g  |
  a2 r4  \bar "|." % kompletite
}

liniaroAc =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r2 a4  |
  \repeat volta 2 { e'4 e e  |
  e2 e4  |
  e4 e e  |
  %05
  e4 e e  |
  e4 e e  |
  e2 e4  |
  g4 g g  |
  e2 e4  |
  %10
  e4 e e  |
  e2 e4  |
  e4 e e  |
  e4 e e  |
  e4 e e  |
  %15
  e2 e4  |
  g4 g g }
  \alternative { { e2 a,4 }
  { e'2 a,4 } }
  c2. ~  |
  %20
  c2. ~  |
  c2. ~  |
  c2. ~  |
  c2. ~  |
  c2. ~  |
  %25
  c2.   |
  d2 d4  |
  d2. ~  |
  d2. ~  |
  d2. ~  |
  %30
  d2. ~  |
  d2.   |
  e2 e4  |
  e4 g2  |
  e2 e4  |
  %35
  e4 g2  |
  e2 e4  |
  e4 g2  |
  <e e>4 <e e> e  |
  e4 g2  |
  %40
  <e e>4 e e  |
  e4 g2  |
  e2 e4  |
  e4 g2  |
  e4 e8 e e e  |
  %45
  e4. e8 e4  |
  g4 g g  |
  e2 r4  \bar "|."
}
\addlyrics
{
  --
  neu li -- -- so --
  par, la
  més me -- lin --
  %05
  dro -- sa. -- Do --
  neu li -- so --
  par, so --
  par la ro --
  do_na De
  %10
  so -- par no_en
  vol, la
  més me -- lin --
  dro -- sa. De
  so -- par no_en
  %15
  vol, so --
  par la ro --
  --
  do_na
  --
  %20
  --
  --
  --
  --
  --
  %25
  --
  --
  --
  --
  --
  %30
  --
  --
  --
  --
  --
  %35
  --
  --
  --
  --
  --
  %40
  --
  --
  --
  --
  --
  %45
  --
  --
  --
}

liniaroAd =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r2 a4  |
  \repeat volta 2 { a4 a a  |
  a2 a4  |
  a4 a a  |
  %05
  a4 a a  |
  a4 a a  |
  a2 a4  |
  g4 g g  |
  a2 a4  |
  %10
  a4 a a  |
  a2 a4  |
  a4 a a  |
  a4 a a  |
  a4 a a  |
  %15
  a2 a4  |
  g4 g g }
  \alternative { { a2 a4 }
  { a2 a4 } }
  g2. ~  |
  %20
  g2. ~  |
  g2. ~  |
  g2. ~  |
  g2. ~  |
  g2. ~  |
  %25
  g2. (  |
  g2 ) g4  |
  g2. ~  |
  g2. ~  |
  g2. ~  |
  %30
  g2. ~  |
  g2. (  |
  a2 ) a4  |
  a4 g2  |
  a2 a4  |
  %35
  a4 g2  |
  a2 a4  |
  a4 g2  |
  a4 a a  |
  a4 g2  |
  %40
  a4 a a  |
  a4 g2  |
  a2 a4  |
  a4 g2  |
  a4 a8 a a a  |
  %45
  g4. g8 g4  |
  g4 g g  |
  a2 r4  \bar "|." % kompletite
}
\addlyrics
{
  Qui
  la ba -- lla --
  rà la
  Cla ve -- -- lli --
  %05
  ne -- ra. Qui
  la ba -- lla --
  rà i_un
  pom d'or n'hau --
  rà. Jo
  %10
  la ba -- lla --
  ré la
  Cla ve -- -- lli --
  ne -- ra. Jo
  la ba -- lla --
  %15
  ré i_un
  pom d'or n'hau --
  ré. Do --
  ré. Do --
  ne
  %20
  --
  --
  --
  --
  --
  %25
  --
  eu de --
  mà
  --
  --
  %30
  --
  --
  à. Peu
  pe ti -- --
  tó, peu
  %35
  des cal -- --
  çó, peu
  de tor --
  tu -- ga mas --
  sa po --
  %40
  ru -- ga prou
  ha brin --
  cat prou
  ha sal --
  tat i_u na -- gi ra -- --
  %45
  de ta -- per
  ca -- da cos --
  tat.
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
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
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new Staff \with {instrumentName = #"Gralla 4" shortInstrumentName = #"G"} \liniaroAd
      >>
    }
    \midi {}
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
    \midi {}
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
    \midi {}
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
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 4"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \midi {}
  }
}

