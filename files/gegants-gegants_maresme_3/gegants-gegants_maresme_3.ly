\version "2.16.0"

\header {
  dedication="Gegants"
  title="   "
  subtitle="Ball de gegants del Maresme"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Aniol Noguera/Santi Prat"
  arranger="Maig de 2002"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative a'
{
  \clef treble
  \key c \major
  \time 1/4
  a4 \mf _"Introducció" \tempo 4 = 90  |
  \time 4/4   a2 r4 \tempo 4 = 100 g  |
  g2 r4 g  |
  g2 r4 a  |
  %05
  a2 fis4 e  |
  e2 r4 b'  |
  b2 r4 b  |
  b2 r4 c  |
  c2 r4 \fermata c  \bar "||"
  %10
  \key f \major   \time 3/4   f,2. _"rit....................." \mp  |
  r2 r4  |
  f2.  |
  g2.  |
  a2.  |
  %15
  d4 d8 des d4  |
  f,2 e8 f  |
  g2. \tempo 4 = 150  |
  g2 aes4  |
  a2.  |
  %20
  f2.  |
  e4 c' g  |
  bes2 a4  |
  d2. \fermata  |
  \key g \major   \time 6/8   r4. r8 b a  |
  %25
  \repeat volta 2 { g2 _"D" r4   |
  b4. g  |
  d'4. g,  |
  a4. r8 b a  |
  g2 r4  |
  %30
  b4. d  |
  b8 -. a -. g -. fis4. -> }
  \alternative { { g4. r8 -. b a }
  { g4. r } }
  g4. a8 g a  |
  %35
  b4. r \tempo 4 = 125  |
  c4 d8 c4 a8  |
  g4 r r8 g  |
  e4. a8 g a  |
  b4. r   |
  %40
  g4 f fis  |
  g4. \fermata r  |
  \key c \major   \time 3/4   \repeat volta 2 { a2 a4   |
  f2 a4  |
  e2 b'4  |
  %45
  a2.  |
  a2 a4  |
  f4 b a  |
  g2 f4  |
  e2.  |
  %50
  a2 a4  |
  f2 a4  |
  e2 \tempo 4 = 160 b'4  |
  a4 e8 f e4  |
  a2 a4  |
  %55
  f2 g4  |
  a2 e4 }
  \alternative { { e2 r4 }
  { a2. } }
  \key g \major   \time 6/8   r4. r8 b a  |
  %60
  \repeat volta 2 { g2  r4  |
  b4. g  |
  d'4. g,  |
  a4. r8 b a  |
  g2 r4  |
  %65
  b4. d  |
  b8 -. a -. g -. fis4. -> }
  \alternative { { g4. -. r8 b a }
  { g4. r -.  } }
  g4. a8 g a  |
  %70
  b4. r  |
  c4 \tempo 4 = 100 d8 c4 a8  |
  g4 r r8 g  |
  e4. a8 g a  |
  b4. r  |
  %75
  g4 f fis  |
  g4. \fermata r8 d'4  |
  \time 3/4   \repeat volta 2 { g,2.  \mf  |
  r2 r4  |
  g2.  |
  %80
  a2.  |
  b2.  |
  e4 e8 dis e4  |
  g,2 fis8 g  |
  a2.  |
  %85
  a2 ais4 \tempo 4 = 150  |
  b2.  |
  g2.  |
  fis4 d' a  |
  c2 b4 }
  %90
  \alternative { { e8 c b a g fis }
  { e'2. } }
  \time 6/8   r4. g,8 a b  |
  \repeat volta 2 { g4. g8  a b  |
  g4. e'8 d c  |
  %95
  b4 b8 b d e  |
  d4 b8 g a b  |
  g4. g8 a b  |
  g4. e'8 d c  |
  b4 b8 a b a  |
  %100
  g4. g8 a b  | }
  g4. g8 a b  |
  g4. e'8 d c  |
  b4 b8 b d e  |
  d4 b8 g4 fis8  |
  %105
  e4 e8 fis g a  |
  g4 g8 g a b  |
  a4 b a  |
  g4 \fermata r g8 -> g ->  |
  g4. -. r  \bar "|."
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
      \new Staff \with {instrumentName = #"Gralla 3"} \liniaroAa
    >>
  }
  \layout {}
}\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 3"} \liniaroAa
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

\score {
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 3"} \liniaroAa
    >>
  }
  \layout {}
}

}

}
