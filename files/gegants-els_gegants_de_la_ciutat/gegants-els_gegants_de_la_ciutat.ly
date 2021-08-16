\version "2.16.0"

\header {
  dedication="Gegants"
  title="  "
  subtitle="Els Gegants de la Ciutat"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Xavier Muixench"
  arranger="Arr. Quim Soler"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  e8 g  |
  \time 2/4   g8 f e d  |
  c4 e8 g  |
  g8 f e f  |
  %05
  f8 e e g  |
  g8 f e d  |
  c4 d8 d  |
  d8 d c b  |
  c4 r  |
  %10
  g'8. f16 e8 d  |
  c4 d8 e  |
  f4. f8  |
  f4 e  |
  g8. f16 e8 d  |
  %15
  c4 d8 d  |
  d8 r b4  |
  c4 d  |
  e8 d c d  |
  e8 r c4  |
  %20
  d4 e  |
  f8 e d e  |
  f8 r d4  |
  e4 f  |
  g8 f e f  |
  %25
  g2  |
  g8 a g f  |
  e8 f e d  |
  c8 d e d  |
  c8 r e8. e16  |
  %30
  c2 ~  |
  c4 r  |
  r2  |
  r2  |
  r2  |
  %35
  r8 d e d  |
  c8 d e4  |
  c2  |
  r8 e f e  |
  d8 e f4  |
  %40
  d2  |
  r8 f g f  |
  e8 f g4 ~  |
  g4 r8 g  |
  g8 a g f  |
  %45
  e8 f e d  |
  c8 e g e  |
  c8 r g'4  |
  c,2 ~  |
  c2  |
  %50
  \time 4/4   r1  |
  \repeat volta 2 { g4 g8 a b4 g  |
  a4 a8 b c2  |
  a4 a8 b c4 a  |
  b8 a b4 c d }
  %55
  \alternative { { b4 b8 c d4 b  |
  c8 b c d e2  |
  e4 e8 f e4 c  |
  d8 d d4 e d  |
  c4 a8 b c4 a  |
  %60
  d8 c b a g2 }
  { b4 b8 c d4 b } }
  c4 d e2  \bar "||"
  g4 f8 e f4 e8 d  |
  e4 d8 c d4 c8 b  |
  %65
  c4 d e d  |
  c2. r4  \bar "||"
  \time 2/4   r4 g16 a b c  |
  \repeat volta 2 { d8 d e e  |
  d4 d16 e d c  |
  %70
  b8 b c c  |
  d8 b g16 a b c  |
  d8 d e e  |
  d4 d16 e d c }
  \alternative { { d8 d c c  |
  %75
  b8 r g16 a b c }
  { b8 r c c } }
  g'8 d e e16 d  |
  \repeat volta 2 { c4 f8 f16 e  |
  d4 g8 g16 f  |
  %80
  e8 d c d  |
  e8 c e e16 d  |
  c8 r f f16 e }
  \alternative { { d8 r g g16 f  |
  e4 c8 d  |
  %85
  b8 r e e16 d }
  { d8 r g16 f e d } }
  c8 d16 e d8 b  |
  c8 d e d  |
  c8 r g'4  |
  %90
  <f a>4 <d g>  |
  <e c'>2  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  e8 g  |
  \time 2/4   g8 f e d  |
  c4 e8 g  |
  g8 f e f  |
  %05
  f8 e e g  |
  g8 f e d  |
  c4 d8 d  |
  d8 d c b  |
  c4 r  |
  %10
  e8. d16 c8 d  |
  e4 f8 e  |
  d2 ~  |
  d2  |
  e8. d16 c8 d  |
  %15
  e4 d8 d  |
  d8 r b4  |
  c4 d  |
  c2 ~  |
  c8 r c4  |
  %20
  d4 e  |
  d2 ~  |
  d8 r d4  |
  e4 f  |
  <b, d>2 ~ ~  |
  %25
  <b d>2  |
  <b d>2  |
  <c e>2  |
  <c e>2  |
  c8 r g'8. g16  |
  %30
  e2 ~  |
  e4 r  |
  r2  |
  r2  |
  r2  |
  %35
  g,2  |
  e2  |
  f2  |
  a2  |
  f2  |
  %40
  g2  |
  b2  |
  g2  |
  g2 ~  |
  g2  |
  %45
  r4 a8 b  |
  c2 ~  |
  c8 r c d  |
  e2 ~  |
  e2  |
  %50
  \time 4/4   r1  |
  \repeat volta 2 { b4 b8 c d4 b  |
  c4 c8 d e d c4  |
  c4 c8 d e4 c  |
  d8 c d4 e d }
  %55
  \alternative { { g,4 g8 a b4 g  |
  a8 g a b c2  |
  c4 c8 d c4 a  |
  b8 b b4 c b  |
  c4 c8 d e4 c  |
  %60
  d8 c d a g2 }
  { g4 g8 a b4 g } }
  a4 b c2  \bar "||"
  c4 c b b  |
  c4 b8 a b4 a8 g  |
  %65
  a4 a g g  |
  g2. r4  \bar "||"
  \time 2/4   r4 g16 a g a  |
  \repeat volta 2 { b8 b c c  |
  b4 b16 c b a  |
  %70
  g8 g a a  |
  b8 g g16 a g a  |
  b8 b c c  |
  b4 b16 c b a }
  \alternative { { b8 b a a  |
  %75
  g8 r g16 a g a }
  { g8 r a a } }
  a8 b c c16 b  |
  \repeat volta 2 { a4 d8 d16 c  |
  b4 e8 e16 d  |
  %80
  c8 b a b  |
  c8 a c c16 b  |
  a8 r d d16 c }
  \alternative { { b8 r e e16 d  |
  c4 a8 b  |
  %85
  g8 r c c16 b }
  { b8 r e16 d c b } }
  a8 b16 c d8 d  |
  <c e>8 f <b, g'> f'  |
  c8 r c4  |
  %90
  d4 b  |
  c2  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 2/4   r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  tomfl4:64 tomfl8 tomfl  |
  %10
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  %15
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  %20
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  %25
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  %30
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  %35
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  %40
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  %45
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 tomfl8 tomfl  |
  tomfl4:64 ~ tomfl:64 ~  |
  tomfl4:64 ~ tomfl:64  |
  %50
  \time 4/4   tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl }
  %55
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  %60
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl }
  { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl } }
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  \bar "||"
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  %65
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl2:64 tomfl4 r  \bar "||"
  \time 2/4   r2  |
  \repeat volta 2 { tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  %70
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl }
  \alternative { { tomfl8 tomfl tomfl tomfl16 tomfl  |
  %75
  tomfl8 tomfl tomfl tomfl16 tomfl }
  { tomfl8 tomfl tomfl tomfl16 tomfl } }
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  \repeat volta 2 { tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  %80
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl }
  \alternative { { tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  %85
  tomfl8 tomfl tomfl tomfl16 tomfl }
  { tomfl8 tomfl tomfl tomfl16 tomfl } }
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  tomfl8 r tomfl4:32  |
  %90
  tomfl4:32 tomfl:32  |
  tomfl2:32  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 2/4   r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  tomfl4 tomfl  |
  %10
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %15
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %20
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %25
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %30
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %35
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %40
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %45
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %50
  \time 4/4   tomfl4 r tomfl r  |
  \repeat volta 2 { tomfl4 r tomfl r  |
  tomfl4 r tomfl r  |
  tomfl4 r tomfl r  |
  tomfl4 r tomfl r }
  %55
  \alternative { { tomfl4 r tomfl r  |
  tomfl4 r tomfl r  |
  tomfl4 r tomfl r  |
  tomfl4 r tomfl r  |
  tomfl4 r tomfl r  |
  %60
  tomfl4 r tomfl r }
  { tomfl4 r tomfl r } }
  tomfl4 r tomfl r  \bar "||"
  tomfl4 r tomfl r  |
  tomfl4 r tomfl r  |
  %65
  tomfl4 r tomfl r  |
  tomfl4 r r tomfl  \bar "||"
  \time 2/4   tomfl4 r  |
  \repeat volta 2 { tomfl4 tomfl  |
  tomfl4 tomfl  |
  %70
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl }
  \alternative { { tomfl4 tomfl  |
  %75
  tomfl4 tomfl }
  { tomfl4 tomfl } }
  tomfl4 tomfl  |
  \repeat volta 2 { tomfl4 tomfl  |
  tomfl4 tomfl  |
  %80
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl }
  \alternative { { tomfl4 tomfl  |
  tomfl4 tomfl  |
  %85
  tomfl4 tomfl }
  { tomfl4 tomfl } }
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl8 r tomfl4  |
  %90
  tomfl4 tomfl  |
  tomfl4 r  \bar "|."
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
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Timbal fondo" } \liniaroAd
      >>
    }
    \layout {}
  }
}

}

