\version "2.16.2"

\header {
  dedication=""
  title="El minuto"
  subtitle="(vals-jota)"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Francesc Toldrà"
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
  \time 3/8
  e8 e16 d c d  |
  e8 f  g  |
  e8 e16 d c d  |
  e8 f g  |
  %05
  a8 a,16  d f a  |
  g8 g,16 c e g  |
  \times 2/3 { f16 g f } e8 d  |
  c8 r g  |
  \repeat volta 2 { g'8. f16 e8 ~  |
  %10
  e16 e e8 e  |
  \times 2/3 { e16 f e } d e f8 ~  |
  f4.  |
  a8. g16 f8 ~  |
  f16 f f8 f  |
  %15
  \times 2/3 { f16 g f } e f g8 ~  |
  g4.  |
  g,8 a b  |
  c8 d e  |
  g8 r g  |
  %20
  r8 g8. a16  |
  g8 f16 e d c  |
  b8 e8. d16  |
  c4. ~ }
  \alternative { { c8 r g }
  %25
  { c16 g a b c d } }
  \repeat volta 2 { e8 e e  |
  e8 f8. g16  |
  e8 e e  |
  e8 d16 e f a  |
  %30
  g8 e16 c g8 ~  |
  g8 d'8. e16  |
  c4 ~ } % kompletite
  \alternative { { c16 g a b c d }
  { c8 d16 c d e } }
  %35
  \repeat volta 2 { f8 f16 e e8  |
  e16 d e f r8  | % kompletite
  g8 g16 f g8  |
  r8 f16 e f g  |
  a8 a16 g a8  |
  %40
  a16 g a8 d,  |
  g4. ~  |
  g8 g,16 c e g  |
  c8 e,16 f g8  |
  r8 e,16 g c e  |
  %45
  g8 c,16 d e8  |
  r8 g16 a g e  |
  c8 c f  |
  e8 r f }
  \alternative { { e8 g g  |
  %50
  g8 g g }
  { e8 g,16 g g g } }
  c16 c a a c c  |
  b8 g16 g g g  |
  d'16 d a a b b  |
  %55
  c8 g'16 g g8  |
  r8 g16 g g8  |
  r8 g16 g g8  |
  r8 g16 g g8  |
  c,8 e16 f g e  |
  %60
  c8 r r32 c d e  |
  \key f \major   \repeat volta 2 { f16 e d c d e  |
  f16 e d c d f  |
  e4. ~  |
  e8 d16 c b c  |
  %65
  g'16 f e d c8 ~  |
  c8 d16 e f g  |
  a8 g16 f e f  |
  g8 f16 e d e  |
  f16 e d c d e  |
  %70
  f16 e d c b c  |
  a'4.  |
  d,16 e f8 e16 d  |
  c8 f,16 a c f  |
  a8 g e  |
  %75
  f8 r r }
  \alternative { { r16 a, bes c d e }
  { \mark "D.C." r4 r8 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  g8 g16 g g g  |
  c8 d b  |
  g8 g16 g g g  |
  c8 d b  |
  %05
  c8 r r  |
  c8 r r  |
  b16 b b8 b  |
  e,8 r g  |
  \repeat volta 2 { e'8. d16 c8 ~  |
  %10
  c16 c c8 c  |
  c8 b16 c d8 ~  |
  d4.  |
  f8. e16 d8 ~  |
  d16 d d8 d  |
  %15
  d8 c16 d e8 ~  |
  e4.  |
  e,8 f g  |
  a8 b c  |
  e8 r e  |
  %20
  r8 e8. f16  |
  e8 d16 c b a  |
  g8 g8. f16  |
  e4. ~ }
  \alternative { { e8 r g }
  %25
  { e8 r r } }
  \repeat volta 2 { g8 r g16 g  |
  g4 r8  |
  g8 r g16 g  |
  g8 r r  |
  %30
  c8 r r  |
  b8 r b  |
  c8 g16 f e d }
  \alternative { { c8 r r }
  { c8 b'16 a b c } }
  %35
  \repeat volta 2 { d8 d16 c d8  |
  c16 b c d r8  | % kompletite
  e8 e16 d e8  |
  r8 d16 c d e  |
  f8 f16 e f8  |
  %40
  f16 e f8 b,  |
  e4. ~  |
  e8 r r  |
  r8 c16 d e8  |
  r4 r8  |
  %45
  e,16 f g8 r8  | % kompletite
  r8 e'16 f e c  |
  a8 a c  |
  g16 a b c d b }
  \alternative { { c8 g g  |
  %50
  g8 g g }
  { c8 r e,16 e } }
  e8 e e  |
  f4 <f f>16 f  |
  f8 f f  |
  %55
  e8 g16 g g g  |
  c16 c a a c c  |
  b8 g16 g g g  |
  d'16 d a a b b  |
  c8 e16 f g e  |
  %60
  c8 r r  |
  \key f \major   \repeat volta 2 { a4 bes8  |
  a4 bes8  |
  g16 a bes c bes a  |
  g8 r r  |
  %65
  bes8 bes bes ~  |
  bes8 bes16 c d e  |
  f8 e16 d c d  |
  bes8 bes bes  |
  a4 bes8  |
  %70
  a4 g8  |
  c4.  |
  bes16 c d8 c16 bes  |
  a8 r r  |
  r8 g bes  |
  %75
  a8 c a }
  \alternative { { f8 r r }
  { f8 r r } } \bar "||"
}

liniaroAc =
\relative c'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/8
  c8 c e  |
  g4 g8  |
  c,8 c e  |
  g4 g8  |
  %05
  f8 r r  |
  g8 r r  |
  g8 g g  |
  c,8 r r  |
  \repeat volta 2 { c8 e g  |
  %10
  c,4 e8  |
  g8. r8 r16  | % kompletite
  g8 a16 g fis g  |
  g8 d' b  |
  g4 g8  |
  %15
  c,4.  |
  c8 a'16 g fis g  |
  c,4 g'8  |
  c,4 g'8  |
  c,8 e g  |
  %20
  c8 r r  |
  g4 r8  |
  r8 b8. a16  |
  c8 g e }
  \alternative { { c8 r r }
  %25
  { c8 r r } }
  \repeat volta 2 { c8 r c16 c  |
  c4 r8  |
  c8 r c16 c  |
  c8 r r  |
  %30
  e8 r r  |
  f8 r g  |
  c,8 g'16 f e d }
  \alternative { { c8 r r }
  { c8 r r } }
  %35
  \repeat volta 2 { b'4 g8  |
  b4 g8  |
  c4 g8  |
  c4 g8  |
  d'4 b8  |
  %40
  g4 g8  |
  c8 g e  |
  c8 r r  |
  c8 e g  |
  c8 r r  |
  %45
  e,8 g c  |
  e8 r r  |
  f,8 f d  |
  g8 r g }
  \alternative { { c,8 r r  |
  %50
  r4 r8 }
  { c8 r c16 c } }
  c8 c c  |
  d4 d16 d  |
  g8 r g  |
  %55
  g8 e c  |
  g'8 e c  |
  g'8 b d  |
  g,8 f d  |
  c8 e16 f g e  |
  %60
  c8 r r  |
  \key f \major   \repeat volta 2 { f8 c4  |
  f8 c4  |
  g'8 c,4  |
  c'8 r r  |
  %65
  e,8 g c,  |
  e8 g c,  |
  f8 a f  |
  e8 g c,  |
  f8 c4  |
  %70
  f8 c e  |
  f8 f f  |
  g8 g r8  | % kompletite
  c,8 r r  |
  r8 e c  |
  %75
  f8 c' a }
  \alternative { { f8 r r }
  { f8 r r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
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
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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

