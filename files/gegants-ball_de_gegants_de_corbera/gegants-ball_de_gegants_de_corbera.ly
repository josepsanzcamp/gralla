\version "2.16.0"

\header {
  dedication="Gegants"
  title="  "
  subtitle="Ball de gegants de Corbera de Llobregat"
  subsubtitle="Dedicat a la Magdalena i l'Antoni en el seu Xè aniversari"
  poet=""
  meter=""
  piece=""
  composer="Ramon Solé i Miralles, juny de 2005"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 3/4
  r2 _"Toc d'inici" r4 \tempo 2. = 68  |
  r2 r4  |
  g4 d' d  |
  b4 f' f  |
  %05
  b,4 a' a\fermata  |
  r2 r4  |
  \repeat volta 2 { e2 _"1. Vals" c4 \tempo 2. = 46  |
  g'2 e4  |
  f4 d b  |
  %10
  g2 r4  |
  g4 a b  |
  b4 c d  |
  f4 a g }
  \alternative { { e2 r4 }
  %15
  { \mark "Fine" e2 r4 } }
  \repeat volta 2 { d4 b g  |
  d'4 b g  |
  d'2 e4 }
  \alternative { { d2.  |
  %20
  a2.  |
  a4 b c  |
  d4 fis e  |
  d2 r4 }
  { d2.  |
  %25
  a4 b c  |
  d2 e8 d  |
  c4 b a } }
  \mark "D.C. al Fine" g2 r4  |
  \time 2/4   \repeat volta 2 { r2   |
  %30
  \tempo 2 = 70 r2  |
  r2  |
  r2  |
  }
  \repeat volta 2 { g'4 e  |
  c4. e8  |
  %35
  d8. c16 d8 e  |
  f4 d  |
  f4 d  |
  b4. f'8  |
  g8. f16 e8 d }
  %40
  \alternative { { e4 c }
  { \mark "Fine" c4 b8 c } }
  \repeat volta 2 { d4. e8  |
  d8. c16 b8 c  |
  d4 g  |
  %45
  d2  |
  d4. e8  |
  d8. c16 b8 c }
  \alternative { { d4 b  |
  g2 }
  %50
  { d'8 e f fis  |
  g2 } }
  \repeat volta 2 { e8 e c c  |
  f8 f d4  |
  b8. d16 f8 d  |
  %55
  e4 c  |
  e8 e c c  |
  f8 f d4  |
  b8. d16 f8 d }
  \alternative { { c4 r }
  %60
  { \mark "D.C. al Fine" c4 r } }
  \time 6/8   \repeat volta 2 { g'8 a g f g  f  |
  e4 \tempo 4. = 126 e8 c d e  |
  f4 f8 d e f  |
  a4. g  |
  %65
  g8 a g f g f  |
  e4 e8 c d e  |
  f4 f8 f e d }
  \alternative { { c2. }
  { \mark "Fine" c4. c4 d8 } }
  %70
  \repeat volta 2 { e4 e8 e4 e8  |
  f4 f8 f4 f8  |
  a4 a8 a4 a8  |
  g4 r8 c,4 d8  |
  e4 e8 e4 e8  |
  %75
  f4 f8 f4 f8  |
  g4 e d }
  \alternative { { c4 r8 c4 d8 }
  { c4. c8 b c } }
  \repeat volta 2 { d4 d8 g4 g8  |
  %80
  d4 d8 c b c  |
  d4 d8 g4 g8  |
  d4 r8 c b c  |
  d4 d8 g4 g8  |
  d4 d8 c b c  |
  %85
  d8 e d c b a }
  \alternative { { g4 r8 c b c }
  { \mark "D.C. al Fine" g4 r8 r4. } } \bar "||"
}

liniaroAb =
\relative g'
{
  \clef treble
  \key c \major
  \time 3/4
  r2 r4  |
  r2 r4  |
  g4 b b  |
  b4 d d  |
  %05
  b4 f' f\fermata  |
  r8 g, a b c d  |
  \repeat volta 2 { c4 g g  |
  e'4 c c  |
  d4 b g  |
  %10
  g4 b8 c d e  |
  d4 c b  |
  d4 c b  |
  d4 c b }
  \alternative { { c4 g e }
  %15
  { c'4. e8 d c } }
  \repeat volta 2 { b4 g r  |
  b4 g r  |
  b4 a g }
  \alternative { { a4. b8 c d  |
  %20
  c4 b a  |
  fis4 g a  |
  a4 d d  |
  b4. a8 b c }
  { a4. b8 a g  |
  %25
  fis4 g a  |
  fis4 g a  |
  a4 d fis } }
  g4. b,8 c d  |
  \time 2/4   \repeat volta 2 { r2  |
  %30
  r2  |
  r2  |
  r2  |
  }
  \repeat volta 2 { e8 e c c  |
  g4. c8  |
  %35
  b8. a16 b8 c  |
  d4 b  |
  d4 b  |
  g4. a8  |
  b8. a16 g8 b }
  %40
  \alternative { { c4. r8 } % kompletite
  { c4 g8 a } }
  \repeat volta 2 { b4. c8  |
  b8. a16 g8 a  |
  b8. c16 b8 a  |
  %45
  b2  |
  b4. c8  |
  b8. a16 g8 a }
  \alternative { { b8. c16 b8 a  |
  g4 d'8 c }
  %50
  { b8 c b a  |
  g4 e'8 d } }
  \repeat volta 2 { c4 b8 a  |
  g2  |
  g8. b16 d8 b  |
  %55
  c4 g  |
  c4 b8 a  |
  g2  |
  g8. b16 d8 b }
  \alternative { { c4 e8 d }
  %60
  { c4 e8 f } }
  \time 6/8   \repeat volta 2 { e4. d  |
  c4. a8 b c  |
  d4 d8 d c d  |
  f4. e  |
  %65
  e4. d  |
  c4. a8 b c  |
  d4 d8 d c b }
  \alternative { { c4. g8 b d }
  { c4. r } }
  %70
  \repeat volta 2 { c4 c8 c4 c8  |
  a4. ~ a8 r a  |
  f'4 f f  |
  e4 r8 r4.  |
  c4. ~ c8 r c  |
  %75
  a4. ~ a8 r a  |
  g4 a b }
  \alternative { { c4 r8 r4. }
  { c4 r8 r4. } }
  \repeat volta 2 { b4 b8 c4 c8  |
  %80
  b4 b8 a4 a8  |
  b4 b8 c4 c8  |
  b4 r8 r4.  |
  b4 b8 c4 c8  |
  b4 b8 a4 a8  |
  %85
  b4 b8 a4 a8 }
  \alternative { { b4 r8 r4. }
  { b4 r8 g b d } } \bar "||"
}

liniaroAc =
\drummode
{
  \time 3/4
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  \repeat volta 2 { tomfl4 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl4 tomfl tomfl8 tomfl  |
  tomfl4 tomfl tomfl8 tomfl  |
  %10
  tomfl4 tomfl tomfl  |
  tomfl4 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl4 tomfl tomfl8 tomfl  |
  tomfl4 tomfl tomfl8 tomfl }
  \alternative { { tomfl4 tomfl tomfl }
  %15
  { tomfl4 tomfl tomfl } }
  \repeat volta 2 { tomfl4 tomfl8. tomfl16 tomfl4  |
  tomfl4 tomfl8. tomfl16 tomfl4  |
  tomfl4 tomfl8 tomfl tomfl4 }
  \alternative { { tomfl4 tomfl tomfl  |
  %20
  tomfl4 tomfl8. tomfl16 tomfl4  |
  tomfl4 tomfl8. tomfl16 tomfl4  |
  tomfl4 tomfl8 tomfl tomfl4  |
  tomfl4 tomfl tomfl }
  { tomfl4 tomfl tomfl  |
  %25
  tomfl4 tomfl8. tomfl16 tomfl4  |
  tomfl4 tomfl8. tomfl16 tomfl4  |
  tomfl4 tomfl8 tomfl tomfl4 } }
  tomfl4 tomfl tomfl  |
  \time 2/4   \repeat volta 2 { tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  %30
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl }  |
  tomfl2  |
  }
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  %35
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl }
  %40
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl }
  { tomfl8. tomfl16 tomfl8 tomfl } }
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  %45
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl }
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl }
  %50
  { tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl } }
  \repeat volta 2 { tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  %55
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl }
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl }
  %60
  { tomfl4 tomfl } }
  \time 6/8   \repeat volta 2 { tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %65
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl }
  \alternative { { tomfl4. tomfl8 tomfl tomfl }
  { tomfl4. tomfl4 tomfl8 } }
  %70
  \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4. tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %75
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl tomfl }
  \alternative { { tomfl4 r8 r4. }
  { tomfl4 r8 r4. } }
  \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  %80
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %85
  tomfl8 tomfl tomfl tomfl tomfl tomfl }
  \alternative { { tomfl4 r8 tomfl tomfl tomfl }
  { tomfl4 r8 tomfl tomfl tomfl } } \bar "||"
}

liniaroAd =
\drummode
{
  \time 3/4
  tomfl4 tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl2 r4  |
  tomfl2 r4  |
  %05
  tomfl2 r4  |
  tomfl2 r4  |
  \repeat volta 2 { tomfl2 tomfl4  |
  tomfl2 tomfl4  |
  tomfl2 tomfl4  |
  %10
  tomfl2 tomfl4  |
  tomfl2 tomfl4  |
  tomfl2 tomfl4  |
  tomfl2 tomfl4 }
  \alternative { { tomfl2 tomfl4 }
  %15
  { tomfl2 tomfl4 } }
  \repeat volta 2 { tomfl4 tomfl2  |
  tomfl4 tomfl2  |
  tomfl4 tomfl2 }
  \alternative { { tomfl4 tomfl2  |
  %20
  tomfl4 tomfl2  |
  tomfl4 tomfl2  |
  tomfl4 tomfl2  |
  tomfl4 tomfl2 }
  { tomfl4 tomfl2  |
  %25
  tomfl4 tomfl2  |
  tomfl4 tomfl2  |
  tomfl4 tomfl2 } }
  tomfl2 r4  |
  \time 2/4   \repeat volta 2 { tomfl2  |
  %30
  tomfl2  |
  tomfl2  |
  tomfl2  |
  }
  \repeat volta 2 { tomfl2  |
  tomfl2  |
  %35
  tomfl2  |
  tomfl4 tomfl  |
  tomfl2  |
  tomfl2  |
  tomfl2 }
  %40
  \alternative { { tomfl4 tomfl }
  { tomfl4 tomfl } }
  \repeat volta 2 { tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  %45
  tomfl4 tomfl  |
  tomfl4 tomfl  |
  tomfl4 tomfl }
  \alternative { { tomfl4 tomfl  |
  tomfl4 tomfl8 tomfl }
  %50
  { tomfl4 tomfl  |
  tomfl2 } }
  \repeat volta 2 { tomfl2  |
  tomfl2  |
  tomfl2  |
  %55
  tomfl4 tomfl  |
  tomfl2  |
  tomfl2  |
  tomfl2 }
  \alternative { { tomfl4 tomfl }
  %60
  { tomfl4 tomfl } }
  \time 6/8   \repeat volta 2 { tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4.  |
  %65
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4 tomfl8 }
  \alternative { { tomfl4 r8 r4. }
  { tomfl4 r8 r4. } }
  %70
  \repeat volta 2 { tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 tomfl4 r8  |
  tomfl4 r8 r4.  |
  tomfl4 r8 tomfl4 r8  |
  %75
  tomfl4 r8 tomfl4 r8  |
  tomfl4 tomfl tomfl }
  \alternative { { tomfl4 r8 r4. }
  { tomfl4 r8 r4. } }
  \repeat volta 2 { tomfl4 r8 r4 tomfl8  |
  %80
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4 tomfl8  |
  tomfl4 r8 r4 tomfl8  |
  %85
  tomfl4 r8 r4 tomfl8 }
  \alternative { { tomfl4 r8 r4. }
  { tomfl4 r8 r4. } } \bar "||"
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
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAd
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
  \header {instrument="Gralla 2"}
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
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Timbal fondo"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
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
}

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {instrument="Timbal fondo"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }
}

}

