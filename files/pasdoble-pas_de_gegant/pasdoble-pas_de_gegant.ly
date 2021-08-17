\version "2.16.0"

\header {
  dedication="Pasdoble"
  title="  "
  subtitle="Pas de gegant"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="David Morlà, 2002"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  g8 g16 g g8 g16 g  |
  g8 r b, d  |
  \repeat volta 2 { g4. fis8  |
  g8 fis e fis  |
  %05
  d2 ~  |
  d4 b8 d  |
  g4. fis8  |
  g8 fis e fis  |
  c2 ~  |
  %10
  c4 c8 e  |
  a4. g8  |
  fis8 e fis g  |
  fis2 ~  |
  fis4 fis8 a  |
  %15
  e4 fis  |
  g4 fis8 e  |
  d2 ~  |
  d4 b8 d  |
  g4. fis8  |
  %20
  g8 fis e fis  |
  d2 ~  |
  d8 b b d  |
  f4 a  |
  g4 a  |
  %25
  e2 ~  |
  e8 c c d  |
  dis2 ~  |
  dis8 g f dis  |
  d2 ~  |
  %30
  d8 b a b  |
  c4 d  |
  fis4 a }
  \alternative { { g2 ~  |
  g4 b,8 d }
  %35
  { g2 ~  |
  g4 e8 d } }
  \key c \major   c4. d8  |
  e8. d16 e8. a16  |
  g2 ~  |
  %40
  g4 e8 d  |
  c4. d8  |
  e8. d16 e8. g16  |
  d2 ~  |
  d4 d8 e  |
  %45
  f4 e  |
  d4 c  |
  b2 ~  |
  b8 b b c  |
  d4 cis  |
  %50
  d4 dis  |
  << { r2 } \\ { e2 ~ } >>  |
  << { e8 d r4 } \\ { e4 r4 } >>  | % kompletite
  c4. d8  |
  e8. d16 e8. a16  |
  %55
  g2 ~  |
  g4 e8 d  |
  cis4. a8  |
  e'4 a,  |
  f'2 ~  |
  %60
  f4 f8 g  |
  \repeat volta 2 { a4. g8  |
  a8 g a b  |
  g4. f8  |
  e8 f g a }
  %65
  \alternative { { f4. e8  |
  d8 e f g  |
  e2  |
  e4 f8 g }
  { f4. e8  |
  %70
  f8 g a b  |
  c8-. r r4  |
  c2\fermata } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  b8 b16 b b8 b16 b  |
  b8 r g g  |
  \repeat volta 2 { b4. d8  |
  d8 d c d  |
  %05
  b2 ~  |
  b4 g8 g  |
  b4. d8  |
  d8 d c d  |
  a2 ~  |
  %10
  a4 a8 c  |
  c4. b8  |
  d8 c d b  |
  a2 ~  |
  a4 a8 c  |
  %15
  c4 d  |
  e4 d8 c  |
  b2 ~  |
  b4 g8 g  |
  b4. d8  |
  %20
  d8 d c d  |
  b2 ~  |
  b8 g g b  |
  d4 c  |
  b4 c  |
  %25
  c2 ~  |
  c8 a a b  |
  c2 ~  |
  c8 b a c  |
  b2 ~  |
  %30
  b8 g fis g  |
  a4 b  |
  a4 c }
  \alternative { { b2 ~  |
  b4 g8 b }
  %35
  { b2 ~  |
  b4 c8 b } }
  \key c \major   g4. b8  |
  c8. b16 c8. f16  |
  e2 ~  |
  %40
  e4 c8 b  |
  g4. b8  |
  c8. b16 c8. e16  |
  b2 ~  |
  b4 b8 c  |
  %45
  d4 c  |
  b4 a  |
  g2 ~  |
  g8 g g a  |
  b4 ais  |
  %50
  b4 b  |
  << { r2 } \\ { c2 ~ } >>  |
  << { c8 b r4 } \\ { c4 r4 } >>  | % kompletite
  g4. b8  |
  c8. b16 c8. f16  |
  %55
  e2 ~  |
  e4 c8 b  |
  a4. a8  |
  cis4 a  |
  <a d>2 ~ ~  |
  %60
  <a d>4 d8 e  |
  \repeat volta 2 { f4. e8  |
  f8 e f g  |
  e4. d8  |
  cis8 d e f }
  %65
  \alternative { { d4. c8  |
  b8 c d e  |
  c8 e <d f> <c fis>  |
  <ais g'>4 d8 e }
  { d4. g,8  |
  %70
  a8 b c d  |
  e8-. r r4  |
  e2\fermata } } \bar "||"
}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a4")
  #(layout-set-staff-size 20)
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a5landscape")
  #(layout-set-staff-size 16)
  #(define output-suffix "a5")
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 12)
  #(define output-suffix "a6")
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

