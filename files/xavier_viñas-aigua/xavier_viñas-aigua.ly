\version "2.16.2"

\header {
  dedication=""
  title="Aigua"
  subtitle=""
  subsubtitle=""
  poet="(gralla i contrabaix)"
  meter=""
  piece=""
  composer="Enric Montsant"
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
  \time 2/4
  R2   |
  R2  |
  R2   |
  R2  |
  %05
  r8 e f e  |
  a,2 ~   |
  a8 e' f e  |
  b2 ~  |
  b8 e f e  |
  %10
  c2 ~  |
  c8 e f e  |
  d8 c b c  |
  a2 ~  \bar "||"
  a8 e' f e  |
  %15
  a,2 ~  |
  a8 e' f e  |
  b2 (  |
  b8 ) e f e  |
  c2 ~  |
  %20
  c8 e f e  |
  d8 c b c  |
  a2 ~  \bar "||"
  a8 e' f e  |
  a,2 ~  |
  %25
  a8 e' f e  |
  b2 ~  |
  b8 e f e  |
  c2 ~  |
  c8 e f e  |
  %30
  d8 c b c  |
  \times 2/3 { a8 c e } \times 2/3 { a e c }  |
  <b b>16 d e f <e e> d <b b> c  |
  \times 2/3 { a8 <c c> e } a c  |
  b8 a g f  |
  %35
  e2 ~  |
  <e e>8 e <f f> e  |
  a2 ~  |
  a8 <e e> f e  |
  b'2 ~  |
  %40
  b8 e, f e  |
  c'4 a ~  |
  a4. c8  |
  b8 a g f  |
  e2 ~  |
  %45
  e8 e f e  |
  d8 c b <c c>  |
  a2  \bar "||"
  r2  |
  \repeat volta 2 { R2  |
  %50
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %55
  R2  |
  R2 }
  \alternative { { R2 }
  { r8 a b c } }
  r8 a b c  |
  %60
  r8 b c d  |
  r8 a b c  |
  r8 a b c  |
  r8 b c d  |
  r8 c d e  |
  %65
  r8 a, b c  |
  r8 b c d  |
  r8 c d e  |
  r8 a, b c  |
  r8 b c d  |
  %70
  r8 c d e  |
  r8 f g a  |
  g8 f e d  |
  r8 c d e  |
  r8 f g a  |
  %75
  b8 a g f  \bar "||"
  \mark \markup {\musicglyph #"scripts.segno"} r8 e e e  |
  d8 c <b b> a ~  |
  <a a>8 c c c  |
  b8 a g a ~  |
  %80
  a8 e' e e  |
  d8 c <b b> a ~  |
  <a a>8 c c c  |
  b8 a g a ~  |
  a8 e' e e (  |
  %85
  a4 ) g8 f ~  |
  f8 e d c  |
  d4 e8 a, ~  |
  a8 e' e e  |
  b'4 c8 a ~  |
  %90
  a8 a b c  |
  d4 c8 b ~  |
  b8 a g f  |
  \mark \markup {\musicglyph #"scripts.coda" ???} e2 ~ \coda  \bar "||"
  \time 3/4   e8 g, a b <c c> d  |
  %95
  \time 2/4   \repeat volta 2 { e8 c r <c c>  |
  <e e>8 c r b  |
  d8 <b b> r <b b>  |
  d8 b r <a a>  |
  c8 a r a  |
  %100
  c8 a r g  |
  b8 g r g  |
  <b b>8 g r <g g> }
  \alternative { { <a a>8 b <c c> <d d> }
  { <a a>8 b <c c> <d d> } }
  %105
  r8 e e e  |
  d8 c <b b> a ~  |
  <a a>8 c c c  |
  b8 a g a ~  |
  a8 e' e e  |
  %110
  d8 c <b b> a ~  |
  <a a>8 c c c  |
  b8 a g a ~  |
  a8 e' e e (  |
  a4 g8 ) f ~  |
  %115
  f8 e d c  |
  d4 e8 a, ~  |
  a8 e' e e  |
  b'4 c8 a ~  |
  a8 a b c  |
  %120
  d4 c8 b ~  |
  b8 a g f  |
  e2 ~  \bar "||"
  \time 3/4   e8 g, a b c d  |
  \time 2/4   \repeat volta 2 { e8 c r <c c>  |
  %125
  <e e>8 c r b  |
  d8 <b b> r <b b>  |
  d8 b r <a a>  |
  c8 a r a  |
  c8 a r g  |
  %130
  b8 g r g  |
  <b b>8 g r <g g> }
  \alternative { { <a a>8 b <c c> <d d> }
  { \mark \markup {D.S. e Coda} <a a>8 b <c c> <d d> } }
  e2 ~  |
  %135
  \mark \markup {\musicglyph #"scripts.coda"} e8 e f e  |
  a2 ~  |
  a8 e f e  |
  b'2 ~  |
  b8 e, f e  |
  %140
  c'4 a ~  |
  a4. c8  |
  b8 a g f  |
  e2 ~  |
  e8 e f e  |
  %145
  <d d>8 c b r  |
  g2  |
  a2 ~  |
  a2 \fermata  \bar "|."
}

liniaroAb =
\relative c
{
  \tempo 4=120
  \clef bass
  \key c \major
  \time 2/4
  c4 c  |
  c4 c  |
  c4 c  |
  c4 c  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %10
  r2  |
  r2  |
  r2  |
  r2  \bar "||"
  r8 c' d c  |
  %15
  c8 a a4 ~  |
  a8 c d c  |
  b8 a g f  |
  g8 g b d  |
  f,2 ~  |
  %20
  f8 a a b  |
  g8 e d e  |
  c2 ~  \bar "||"
  c8 r r4  |
  a'8 g f g  |
  %25
  a2  |
  d8 c b a  |
  g2  |
  a8 g e d  |
  e8 a a b  |
  %30
  g8 f e g,  |
  c2  |
  g'2  |
  a4 f  |
  g4 b  |
  %35
  c,2 ~  |
  c8 r r4  |
  r8. f16 f8. f16  |
  f2  |
  r8. e16 e8. e16  |
  %40
  g2  |
  f2 ~  |
  f2  |
  d2  |
  e2 ~  |
  %45
  e8 r r4  |
  g4 e  |
  c'2  \bar "||"
  r8 e, f e  |
  \repeat volta 2 { a,2 ~  |
  %50
  a8 e' f e  |
  b2 ~  |
  b8 e f e  |
  c2 ~  |
  c8 e f e  |
  %55
  d8 c b c  |
  a2 ~ }
  \alternative { { a8 e' f e }
  { r8 c d e } }
  r8 f, g a  |
  %60
  r8 g a b  |
  r8 c d e  |
  r8 f, g a  |
  r8 g a b  |
  r8 a b c  |
  %65
  r8 f, g a  |
  r8 g a b  |
  r8 a b c  |
  r8 f, g a  |
  r8 g a b  |
  %70
  r8 a' b c  |
  r8 f, g a  |
  r8 g a b  |
  r8 a b c  |
  r8 f, g a  |
  %75
  r8 g a b  \bar "||"
  e,4 r8 e ~  |
  e8 r r g ~  |
  g4 r8 g ~  |
  g8 r r e ~  |
  %80
  e4 r8 a ~  |
  a8 r r f ~  |
  f4 r8 d ~  |
  d8 r r c ~  |
  c8 r r f ~  |
  %85
  f8 r r f ~  |
  f4 r8 gis ~  | % troigo!
  gis8 r r e ~  |
  e4 r8 <f f> ~  |
  f8 r r f ~  |
  %90
  f4 r8 e ~  |
  e8 r r d ~  |
  d8 r e  r8  | % kompletite
  e4 e  \bar "||"
  \time 3/4   r8 b c d e f  |
  %95
  \time 2/4   \repeat volta 2 { r8 c4 c8  |
  r8 c4 c8  |
  r8 g'4 g8  |
  r8 g4 g8  |
  r8 a4 a8  |
  %100
  r8 f4 f8  |
  r8 g4 g8  |
  r8 f4 f8 }
  \alternative { { f4 f }
  { f2 } }
  %105
  r8 g r g  |
  r8 g r g  |
  r8 a r a  |
  r8 b r b  |
  r8 a r a  |
  %110
  r8 a r a  |
  r8 g r g  |
  r8 b r b  |
  r8 c r c  |
  r8 c r c  |
  %115
  r8 d r d  |
  r8 b r b  |
  r8 c r c  |
  r8 d r d  |
  r8 c r c  |
  %120
  r8 c r c  |
  r8 d r d  |
  r8 b r b  \bar "||"
  \time 3/4   r8 b, c d e f  |
  \time 2/4   \repeat volta 2 { r8 c4 c8  |
  %125
  r8 c4 c8  |
  r8 g'4 g8  |
  r8 g4 g8  |
  r8 a4 a8  |
  r8 a4 a8  |
  %130
  r8 g4 g8  |
  r8 g4 g8 }
  \alternative { { f4 f }
  { f2 } }
  r2  |
  %135
  r2  |
  r8. f16 f8. f16  |
  f2  |
  r8. e16 e8. e16  |
  e2  |
  %140
  f2 ~  |
  f2  |
  g2  |
  e2 ~  |
  e8 r r4  |
  %145
  e4 e8 r  |
  r2  |
  r8 a r gis  |
  r4 e \fermata  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Contrabaix" shortInstrumentName = #"C"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Contrabaix" shortInstrumentName = #"C"} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla"}
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
  \header {instrument="Contrabaix"}
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

