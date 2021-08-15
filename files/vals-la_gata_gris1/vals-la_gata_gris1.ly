\version "2.16.0"

\header {
  dedication="Vals"
  title="  "
  subtitle="La gata gris"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Eugenio Gracía Marco"
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
  \time 1/4
  c4  |
  \time 3/4   \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} e2 c4  |
  a4 b c  |
  e2 c4  |
  %05
  a2 e'4  |
  g4. fis8 e4  |
  d4 c d  |
  e2 c4  |
  a2 a4  |
  %10
  e'2 c4  |
  a4 b c  |
  e2 c4  |
  a2 e'4  |
  g4. fis8 e4  |
  %15
  d4 c b  |
  a4 c4. b8 }
  \alternative { { a2 c4 }
  { a4. a8 gis a } }
  \repeat volta 2 { b4. b8 a b  |
  %20
  c4. c8 b c  |
  d4. d8 c d  |
  e4. c8 a c  |
  g'4 a g  |
  e4. c8 a c  |
  %25
  g'4 a g  |
  d4. d8 c d  |
  e4. d8 c d  |
  fis4. e8 d c  |
  d4 c b  |
  %30
  a4 c4. b8  |
  a4. a8 gis a  | }
  \repeat volta 2 { a'4 gis g  |
  e4. a,8 gis a  |
  g'4 fis f  |
  %35
  e4. a,8 gis a  |
  e'4 dis d  |
  c4 c8 c b c  |
  e4 e8 c b c }
  \alternative { { a4. a8 gis a }
  %40
  {  a4. c8 b c } }
  \mark \markup {D.S. e Coda} a2 c4  \bar "||"
  \mark \markup {\musicglyph #"scripts.coda"} a4. e'8 c e  |
  a4 a8 e c e  |
  g4 g8 e c e  |
  %45
  fis4 fis8 e c e  |
  f4 f8 e d c  |
  d4 d8 a gis a  |
  e'4 e8 d c b  |
  a4. c8 b c  |
  %50
  a4. e'8 c e  |
  a4 a8 e c e  |
  g4 g8 e c e  |
  fis4 fis8 e c e  |
  f4 f8 e d c  |
  %55
  d4 d8 a gis a  |
  e'4 e8 d c b  |
  a4. c8 b c  |
  a4. e'8 dis e  |
  a,4. c8 b c  |
  %60
  a4. c8 b c  |
  a4. c8 b c  |
  a2. ~  |
  a2 r4  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 3/4   \repeat volta 2 { r4 <c e> <c e>  |
  r4 <fis, c'> <fis c'>  |
  r4 <e g> <e g>  |
  %05
  r4 <c' e> <c e>  |
  r4 <b d> <b d>  |
  r4 <fis a> <fis a>  |
  r4 <e g> <e g>  |
  r4 <c' e> <c e>  |
  %10
  r4 <c e> <c e>  |
  r4 <fis, a> <fis a>  |
  r4 <e g> <e g>  |
  r4 <c' e> <c e>  |
  r4 <b d> <b d>  |
  %15
  r4 <fis a> <fis a>  |
  r4 <c' e> <c e> }
  \alternative { { r4 <c e> <c e> }
  { r4 <c e> <c e> } }
  \repeat volta 2 { r4 <e, g> <e g>  |
  %20
  r4 <c' e> <c e>  |
  r4 <fis, a> <fis a>  |
  r4 <a c> <a c>  |
  r4 <b d> <b d>  |
  r4 <a c> <a c>  |
  %25
  r4 <b d> <b d>  |
  r4 <fis a> <fis a>  |
  r4 <a c> <a c>  |
  r4 <fis a> <fis a>  |
  r4 <e g> <e g>  |
  %30
  r4 <a c> <a c>  |
  r4 <a c> <a c>  | }
  \repeat volta 2 { r4 <g b> <g b>  |
  r4 <a c> <a c>  |
  r4 <b d> <b d>  |
  %35
  r4 <a c> <a c>  |
  r4 <fis a> <fis a>  |
  r4 <c' e> <c e>  |
  r4 <g b> <g b> }
  \alternative { { r4 <c e> <c e> }
  %40
  { r4 <a c> <a c> } }
  r4 <a c> <a c>  \bar "||"
  r4 <a c> <a c>  |
  r4 <a c> <a c>  |
  r4 <a c> <a c>  |
  %45
  r4 <fis a> <fis a>  |
  r4 <f a> <f a>  |
  r4 <f a> <f a>  |
  r4 <g b> <g b>  |
  r4 <a c> <a c>  |
  %50
  r4 <a c> <a c>  |
  r4 <a c> <a c>  |
  r4 <a c> <a c>  |
  r4 <fis a> <fis a>  |
  r4 <f a> <f a>  |
  %55
  r4 <f a> <f a>  |
  r4 <g b> <g b>  |
  r4 <a c> <a c>  |
  r4 <a c> <a c>  |
  r4 <a c> <a c>  |
  %60
  r4 <a c> <a c>  |
  r4 <a c> <a c>  |
  r4 <a c> <a c>  |
  <a c>2.  \bar "|."
}

liniaroAc =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 3/4   \repeat volta 2 { a2.  |
  d,2.  |
  e2.  |
  %05
  a2.  |
  g2.  |
  d2.  |
  e2.  |
  a2.  |
  %10
  a2.  |
  d,2.  |
  e2.  |
  a2.  |
  g2.  |
  %15
  d2.  |
  a'2. }
  \alternative { { a2. }
  { a2. } }
  \repeat volta 2 { e2.  |
  %20
  a2.  |
  d,2.  |
  a'2.  |
  g2.  |
  a2.  |
  %25
  g2.  |
  d2.  |
  a'2.  |
  d,2.  |
  e2.  |
  %30
  a2.  |
  a2.  | }
  \repeat volta 2 { e2.  |
  a2.  |
  g2.  |
  %35
  a2.  |
  d,2.  |
  a'2.  |
  e2. }
  \alternative { { a2. }
  %40
  { a2. } }
  a2.  \bar "||"
  a2.  |
  a2.  |
  a2.  |
  %45
  d,2.  |
  f2.  |
  d2.  |
  e2.  |
  a2.  |
  %50
  a2.  |
  a2.  |
  a2.  |
  d,2.  |
  f2.  |
  %55
  d2.  |
  e2.  |
  a2.  |
  a2 e4  |
  a2. ~  |
  %60
  a2. ~  |
  a2. ~  |
  a2. ~  |
  a2.  \bar "|."
}

\book {

\paper {
  print-page-number = false
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
  }\score { \unfoldRepeats
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
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
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
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 14)
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
}

}

