\version "2.16.2"

\header {
  dedication=""
  title="El Nyitus"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Veus saxos: Perepau Jiménez,"
  arranger="per als grallers de Cassà. 2005"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { d8. e16 d8 c  |
  b8.  a16 b8 c  |
  d4 d  |
  b8.  a16 g4  |
  %05
  d'8. e16 d8 c  |
  b8. a16 b8 c  |
  d4 d  |
  g,4 r8 c16 b  |
  a4 r8 c16 b  |
  %10
  a4 r8 b16 c  |
  d8. c16 b8 a  |
  b8 g g c16 b  |
  a4 r8 c16 b  |
  a4 r8 b16 c  |
  %15
  d8. c16 b8 a  |
  g4 r  \bar "|." }
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { b8. c16 b8 a  |
  g4 g8 a  |
  b4 b  |
  g2  |
  %05
  b8. c16 b8 a  |
  g4 g8 a  |
  b4 b  |
  g4 r8 g  |
  r8 d' d r  |
  %10
  r8 d d r  |
  fis8. e16 d8 c  |
  d8 b g r  |
  r8 d' d r  |
  r8 d d r  |
  %15
  fis8. e16 d8 c  |
  b4 r  \bar "|." }
}

liniaroAc =
\transpose d f
{
\relative e'
{
  \tempo 4=120
  \clef treble
  \key e \major
  \time 2/4
  \repeat volta 2 { e8 e' r e  |
  e,8 e' r e  |
  e4 dis  |
  cis4 dis  |
  %05
  e,8 e' r e  |
  e,8 e' r e  |
  dis4 cis  |
  b4 r  |
  r8 a a r  |
  %10
  r8 a a r  |
  a'8. fis16 e8 fis  |
  e8 e e r  |
  r8 a, a r  |
  r8 a a r  |
  %15
  a'8. fis16 e8 fis  |
  e4 r  \bar "|." }
}
}

liniaroAd =
\transpose d c
{
\relative a'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 2/4
  \repeat volta 2 { a8 e' r e  |
  a,8 e' r e  |
  a,8 e' r e  |
  a,8 e' r e  |
  %05
  a,8 e' r e  |
  a,8 e' r e  |
  a,8 e' r d  |
  cis4 r  |
  r8 b b r  |
  %10
  r8 b b r  |
  d8. e16 fis8 gis  |
  fis8 e e r  |
  r8 b b r  |
  r8 b b r  |
  %15
  d8. e16 fis8 gis  |
  a4 r  \bar "|." }
}
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAc
        \new Staff \with {instrumentName = #"Saxo Tenor  Clarinet" shortInstrumentName = #"S"} \liniaroAd
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
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAc
        \new Staff \with {instrumentName = #"Saxo Tenor  Clarinet" shortInstrumentName = #"S"} \liniaroAd
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
  \header {instrument="Saxo Alt"}
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
  \header {instrument="Saxo Tenor  Clarinet"}
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

