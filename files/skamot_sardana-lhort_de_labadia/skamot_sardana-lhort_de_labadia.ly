\version "2.16.2"

\header {
  dedication=""
  title="Sardana"
  subtitle="L'hort de l'abadia"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Jaume Vidal i Vidal, 1986"
  arranger=""
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
  \key g \major
  \time 2/4
  \repeat volta 2 { g2  |
  b8. ( b16 \times 2/3 { b8 g b }  |
  d4. ) r8  |
  d8. ( d16 \times 2/3 { d8 b d }  |
  %05
  g4. ) r8  |
  g8. ( g16 \times 2/3 { g8 g a }  |
  b2 ~ )  |
  b8 a a g  |
  e8 ( c a g  |
  %10
  b4 a )  |
  g8-. b-. d-. g-.  |
  e2-^  |
  a,8-. cis-. e-. g-.  |
  fis2-^  |
  %15
  b,8 d ( e fis  |
  g8-. d4. )  |
  r8 c g' a  |
  \times 2/3 { fis4 g a }  |
  g4 r  | }
  %20
  \repeat volta 2 { g,8-. g'-. e-. c-.  |
  d8.-. b16-. g8-. r  |
  r2  |
  r2  |
  d'4 d8 d  |
  %25
  d4 r8 d (  |
  g2 ~  |
  g8 d b a  |
  g2 ~  |
  g8 ) ( a b c )  |
  %30
  e8 ( d4. ~  |
  d4 ) r  |
  r4 d (  |
  g2 ~  |
  g8 e d c  |
  %35
  b2 ~  |
  b8 ) a ( b c )  |
  a2 ~ (  |
  a4 ) d (  |
  fis8 fis fis f  |
  %40
  e4 ) b (  |
  e8 e e dis  |
  d4 ) a (  |
  d8 d d e )  |
  c4 ( a  |
  %45
  g2 ~  |
  g4 ) r  |
  r2  |
  \times 2/3 { d'4 d d }  |
  d2 ~  |
  %50
  d4 d8 ( g  \bar "||"
  b8. a16 b8 a  |
  a8 g a g )  |
  a8. ( g16 e8 g  |
  fis2 ~  |
  %55
  fis4 ) a8 ( g  |
  fis8. g16 fis8 e  |
  e8 d ) a' ( a  |
  a8. ) fis16 ( g8 a  |
  b2 ~ )  |
  %60
  b4 d,8 ( g  |
  b8. b16 a8 b  |
  a8 ) g ( d fis  |
  a8. b16 a8 g  |
  e2 ~  |
  %65
  e8 ) r r a-.  |
  c8.-. b16-. a8-. g-.  |
  fis8-. r16 c d8 fis  |
  \times 2/3 { a4^\markup{\teeny \flat} g^\markup{\teeny \flat} fis^\markup{\teeny \flat} }  |
  g2-^ ~  |
  %70
  g4 r  \bar "|."
  }
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g2  |
  g4 \times 2/3 { b8 g b }  |
  b4. r8  |
  b4 \times 2/3 { b8 g b }  |
  %05
  d4. r8  |
  d8. d16 \times 2/3 { d8 d d }  |
  d2 ~  |
  d4 e  |
  g,4 a  |
  %10
  g4 a  |
  g8 b g4  |
  g2-^  |
  a4 g8 b  |
  c2-^  |
  %15
  g4 c8 c  |
  b8-. b4.  |
  r8 b b c  |
  \times 2/3 { c4 b c }  |
  b4 r  | }
  %20
  \repeat volta 2 { r2  |
  r2  |
  r2  |
  r2  |
  d4 d8 d  |
  %25
  d4 r  |
  d4 d8 d  |
  d4 g,  |
  b4 b8 b  |
  b4 r  |
  %30
  d4 d8 d  |
  d4 r  |
  r2  |
  d4 d8 d  |
  d4 r  |
  %35
  d4 d8 d  |
  d4 d  |
  c4 c8 c  |
  c4 d  |
  a8 a a b  |
  %40
  c4 g  |
  g8 g g g  |
  b4 a  |
  a4 a8 a  |
  a4 a  |
  %45
  g4 g8 g  |
  g4 r  |
  r2  |
  \times 2/3 { b4 b b }  |
  b2 ~  |
  %50
  b4 d8 g  \bar "||"
  g8. fis16 g8 fis  |
  fis8 g fis e  |
  fis8. e16 cis8 b  |
  a2 ~  |
  %55
  a4 fis'8 e  |
  d8 e d c  |
  c8 b fis' fis  |
  fis8. d16 e8 fis  |
  g2 ~  |
  %60
  g4 d8 g  |
  g8 g fis d  |
  c8 b d fis  |
  fis8 g d b  |
  c2 ~  |
  %65
  c8 r r fis-.  |
  a8-. g-. fis-. d-.  |
  d8-. r16 c a8 d  |
  \times 2/3 { e4^\markup{\teeny \flat} d^\markup{\teeny \flat} d^\markup{\teeny \flat} }  |
  d2-^ ~  |
  %70
  d4 r  \bar "|."
  }
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g2  |
  b4 \times 2/3 { g8 e g }  |
  g4. r8  |
  g2  |
  %05
  b4 r  |
  b8. b16 \times 2/3 { b8 b c }  |
  b2 ~  |
  b8 c c b  |
  c8 a fis g  |
  %10
  g4 fis  |
  g4 b  |
  c2-^  |
  fis,4 a  |
  a2-^  |
  %15
  g4 a  |
  g8-. b4.  |
  b4 d  |
  \times 2/3 { d4 d d }  |
  d4 r  | }
  %20
  \repeat volta 2 { g,8-. g'-. e-. c-.  |
  d8.-. b16-. g8-. r  |
  g8-. g-. e-. c-.  |
  d4 d  |
  g4 g8 g  |
  %25
  g4 r  |
  b4 b8 b  |
  b4 g  |
  b4 b8 b  |
  b4 g  |
  %30
  b4 b8 b  |
  b4 d,  |
  g4 r  |
  b4 b8 b  |
  b4 d,  |
  %35
  b'4 b8 b  |
  g4 g  |
  a4 a8 a  |
  a4 a  |
  a4 d,8 g  |
  %40
  g4 e  |
  cis'2  |
  a4 fis  |
  fis8 fis fis c'  |
  a4 fis  |
  %45
  g4 g8 g  |
  g4 \times 2/3 { g8 a b }  |
  d8. c16 e8 c  |
  \times 2/3 { d4 g, g }  |
  g4 d  |
  %50
  g4 r  \bar "||"
  g4 g8 d  |
  a'4 a8 a  |
  a4 cis  |
  d2 ~  |
  %55
  d4 r  |
  a4 a8 a  |
  a4 a8 a  |
  a4 a8 a  |
  b4 b8 b  |
  %60
  b4 r  |
  b4 b8 b  |
  a4 a8 a  |
  d8 g, fis f  |
  e4 e8 e  |
  %65
  e4 r8 fis'-.  |
  fis8-. d-. a-. b-.  |
  a8-. r a a  |
  \times 2/3 { c4^\markup{\teeny \flat} a^\markup{\teeny \flat} c^\markup{\teeny \flat} }  |
  b2-^ ~  |
  %70
  b4 r  \bar "|."
  }
}

liniaroAd =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g2  |
  g4 \times 2/3 { g8 e g }  |
  g4. r8  |
  d2  |
  %05
  d4 r  |
  g8. g16 \times 2/3 { g8 g a }  |
  g2 ~  |
  g4 fis  |
  g4 d  |
  %10
  d4 d  |
  g4 f  |
  e2-^  |
  c4 g'  |
  d2-^  |
  %15
  d4 d  |
  d8-. d4.  |
  g4 b  |
  \times 2/3 { a4 g fis }  |
  g4 r  | }
  %20
  \repeat volta 2 { r2  |
  r2  |
  g8-. g-. e-. c-.  |
  d4 d  |
  b'4 b8 b  |
  %25
  b4 r  |
  g4 g8 g  |
  g4 d  |
  g4 g8 g  |
  g4 d  |
  %30
  g4 g8 g  |
  g4 d  |
  g4 r  |
  g4 g8 g  |
  g4 d  |
  %35
  g4 g8 g  |
  g4 g8 e  |
  d4 d8 d  |
  d4 d8 d  |
  d4 d8 d  |
  %40
  c4 c  |
  a'2  |
  d,4 d  |
  d4 d8 d  |
  d4 d8 d  |
  %45
  g4 g8 g  |
  g4 \times 2/3 { g8 a b }  |
  d8. c16 e8 c  |
  \times 2/3 { d4 g, g }  |
  g4 d  |
  %50
  g4 r  \bar "||"
  g4 g8 g  |
  d4 d8 d  |
  d4 fis8 fis  |
  d2 ~  |
  %55
  d4 r  |
  d4 d8 d  |
  d4 d8 d  |
  d4 d8 d  |
  g4 g8 g  |
  %60
  g4 r  |
  g4 d8 d  |
  d4 d8 d  |
  d4 d8 d  |
  c4 c8 c  |
  %65
  c4 r  |
  d'8 r c4  |
  d,8 r d d  |
  \times 2/3 { d4^\markup{\teeny \flat} g^\markup{\teeny \flat} a^\markup{\teeny \flat} }  |
  g2-^ ~  |
  %70
  g4 r  \bar "|."
  }
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

