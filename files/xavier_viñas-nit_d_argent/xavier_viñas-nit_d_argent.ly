\version "2.16.2"

\header {
  dedication=""
  title="Nit d'Argent (sardana)"
  subtitle=""
  subsubtitle="commemorant el 25è aniversari de la Nit dels Músics de Cassà, en què una gran cobla integrada per músics vinculats amb el poble (residents o que formen part de cobles relacionades amb Cassà) enceta amb una audició de sardanes la Festa Major."
  poet=""
  meter=""
  piece=""
  composer="Antoni Mas i Bou"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g2 ~   |
  \times 2/3 { g8 fis e } \times 2/3 { d c b }  |
  \times 2/3 { e8  d c } \times 2/3 { b a g }  |
  \times 2/3 { c4 b g }  |
  %05
  a2 ~  |
  a8 d  e fis  |
  g2 ~  |
  g8 r r4  |
  d4 g8 e  |
  %10
  d4 ~ d8 b16 a  |
  g8 g a a  |
  b8. a16 b8 c  |
  d4 g8 e  |
  d2  |
  %15
  R2  |
  r4 r8 d16 c  |
  b8 b c c  |
  d8. c16 d8 e  |
  fis4 g8 e  |
  %20
  d2  |
  R2  |
  e4 c8 b  |
  a2 ~  |
  a2  |
  %25
  a8 b16 c d8 e  |
  fis2 ~  |
  fis8 r r4  |
  d4 g8 e  |
  d2 ~  |
  %30
  d8. d16 c8 a  |
  g8 g' fis e  |
  d2 ~  |
  d8 r r4  | }
  \repeat volta 2 { R2  |
  %35
  R2  |
  R2  |
  R2  |
  b2 ~  |
  b4 d  |
  %40
  c2 ~  |
  c2  |
  c2 ~  |
  c4 e  |
  d2 ~  |
  %45
  d2  |
  g2 ~  |
  g8 fis e b  |
  d4. cis8  |
  c2  |
  %50
  b2 ~  |
  b8 a g e  |
  a2 ~  |
  a4 b  |
  b2 ~  |
  %55
  b4 d  |
  c2 ~  |
  c2  |
  c2 ~  |
  c4 e  |
  %60
  d2 ~  |
  d2  |
  g2 ~  |
  g8 fis e b  |
  d4. cis8  |
  %65
  c2  |
  b4. c8  |
  a4. b8  |
  g2 ~  |
  g4 r  |
  %70
  a8. a16 g8 g  |
  fis2  |
  c'8. c16 b8 b  |
  a2  |
  e'8. e16 d8 d  |
  %75
  c8 c b b  |
  a8 a g g  |
  fis8 r r4  |
  r4 r8 d'16 d  |
  b8 d b d  |
  %80
  g4. d8  |
  c8 c b b  |
  a4. c8  |
  a8. c16 a8 c  |
  fis8. g16 fis8 e  |
  %85
  d8 d16 d d8 c  |
  b4. d8  |
  b8 d b d  |
  c4. e8  |
  c8 e c e  |
  %90
  d4. b'8  |
  a8. g16 fis8 e  |
  d8 b16 c d8 e  |
  fis2 ~  |
  fis4 r8 d  |
  %95
  b8 d b d  |
  g4. d8  |
  c8 c b b  |
  a4. c8  |
  a8. c16 a8 c  |
  %100
  fis8. g16 fis8 e  |
  d8 d16 d d8 c  |
  b4. d8  |
  b8 d b d  |
  c4. e8  |
  %105
  cis8 e cis e  |
  d4. e8  |
  a8 a e8. a16  |
  g8 g d8. g16  |
  fis8 fis e fis  |
  %110
  d4. e8  |
  a8 a e8. a16  |
  g8 g d8. g16  |
  fis2 ~  |
  fis8 d16 d fis8 a  |
  %115
  g2 ~ }
  \alternative { { g8 r r4  }
  { g8 r g r } } \bar "||"
}
\addlyrics
{
  \tempo 4=120
  -
  --
  --
  --
  %05
  --
  --
  --
  --
  Sa lut -- Cas --
  %10
  sà els a --
  mics de la sar --
  da -- na_en tor -- nen
  a con -- vi --
  dar
  %15
  --
  tot el
  po -- ble s'en -- ga --
  la na -- per tor --
  nar los -- sen --
  %20
  tir
  --
  Com a com --
  panys
  --
  %25
  i bons ca -- ta --
  lans
  --
  vint -- i -- cinc
  anys
  %30
  dant nos -- les
  mans vint i -- cinc
  --
  --
  --
  %35
  --
  --
  --
  Dels
  re --
  %40
  cords
  --
  han
  flo --
  rit
  %45
  --
  als
  ulls u -- na
  llà -- gri --
  ma
  %50
  i
  la jo -- ia_al
  pit
  tot
  es --
  %55
  col --
  tant
  --
  ins --
  tru --
  %60
  ments
  --
  pre --
  lu -- diant la
  fe -- es --
  %65
  ta
  la gran
  nit d'ar --
  gent
  --
  %70
  Ja tot és a
  punt
  tot -- hom ha arri --
  bat
  Cas sà -- i_els seus
  %75
  mú sics -- un cop
  més a -- ger ma -- --
  nats
  Fla -- bi --
  ol i tam bo -- --
  %80
  rí ja
  fan el con tra -- --
  punt fis --
  corns i con -- tra --
  baix mar -- cant el
  %85
  rit -- me se -- em -- -- blen
  un Trom --
  pe tes -- i trom --
  bó els
  ti bles -- i_els te --
  %90
  nors, es --
  col teu -- -- los can --
  tar que can ten -- l'a
  mor --
  I_ai --
  %95
  xí la co bla_a --
  vent amb
  jo ia -- va_es cam -- --
  pant el
  cant de tot un
  %100
  po ble -- que la
  mú si -- -- i -- ca_ha fet
  gran els
  cors de dos en
  dos, mú --
  %105
  sics i ba lla -- --
  dors, que
  to quen -- i que
  dan sen -- al com --
  pàs d'un ma teix --
  %110
  so, en
  u na -- gran sar --
  da na -- cant de
  Pau
  i de ger -- ma
  %115
  nor --
  --
  sí.
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { R2  |
  R2  |
  R2  |
  R2  |
  %05
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %10
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %15
  d4 g8 e  |
  d4 ~ d8 b16 a  |
  g8 g a a  |
  b8. a16 b8 c  |
  d4 e8 c  |
  %20
  a2  |
  e'4 c8 b  |
  a2  |
  r8 a16 b c8 d  |
  e16 fis e d c8 b  |
  %25
  a8 fis16 g a8 b  |
  c2 ~  |
  c8 r r4  |
  R2  |
  r4 e8 c  |
  %30
  b8. d16 c8 a  |
  g2 ~  |
  g2 ~  |
  g8 r r4  | }
  \repeat volta 2 { g2 ~  |
  %35
  g2  |
  g2 ~  |
  g2  |
  b2 ~  |
  b4 d  |
  %40
  c2 ~  |
  c2  |
  c2 ~  |
  c4 e  |
  d2 ~  |
  %45
  d2  |
  g2 ~  |
  g8 fis e b  |
  d4. cis8  |
  c2  |
  %50
  b2 ~  |
  b8 a g e  |
  a2 ~  |
  a4 b  |
  b2 ~  |
  %55
  b4 d  |
  c2 ~  |
  c2  |
  c2 ~  |
  c4 e  |
  %60
  d2 ~  |
  d2  |
  g2 ~  |
  g8 fis e b  |
  d4. cis8  |
  %65
  c2  |
  b4. c8  |
  a4. b8  |
  g2 ~  |
  g4 r  |
  %70
  a8. a16 g8 g  |
  fis2 ~  |
  fis2 ~  |
  fis2  |
  a'8. a16 g8 g  |
  %75
  fis8 fis e e  |
  d8 d cis cis  |
  c8 r r4  |
  r4 r8 d16 d  |
  b8 d b d  |
  %80
  g4. d8  |
  c8 c b b  |
  a4. c8  |
  a8. c16 a8 c  |
  fis8. g16 fis8 e  |
  %85
  d8 d16 d d8 c  |
  b4. d8  |
  b8 d b d  |
  c4. e8  |
  c8 e c e  |
  %90
  d4. b'8  |
  a8. g16 fis8 e  |
  d8 b16 c d8 e  |
  fis2 ~  |
  fis4 r8 d  |
  %95
  b8 d b d  |
  g4. d8  |
  c8 c b b  |
  a4. c8  |
  a8. c16 a8 c  |
  %100
  fis8. g16 fis8 e  |
  d8 d16 d d8 c  |
  b4. d8  |
  b8 d b d  |
  c4. e8  |
  %105
  cis8 e cis e  |
  d4. e8  |
  a8 a e8. a16  |
  g8 g d8. g16  |
  fis8 fis e fis  |
  %110
  d4. e8  |
  a8 a e8. a16  |
  g8 g d8. g16  |
  fis2 ~  |
  fis8 d16 d fis8 a  |
  %115
  g2 ~ }
  \alternative { { g8 r r4  }
  { g8 r g r  } } \bar "||"
}
\addlyrics
{
  \tempo 4=120
  -
  --
  --
  --
  %05
  --
  --
  --
  --
  --
  %10
  --
  --
  --
  --
  --
  %15
  Heu -- los a --
  quí tot el
  po -- ble s'en -- ga -- --
  la na -- per tor --
  nar vos -- sen --
  %20
  tir
  Com a com --
  panys
  si -- au ben vin --
  guts i com a bons com --
  %25
  panys i bons ca -- ta --
  lans
  --
  --
  fent ca --
  %30
  mí dant nos -- les
  --
  --
  --
  La
  %35
  --
  La
  --
  Dels
  re --
  %40
  cords
  --
  han
  flo --
  rit
  %45
  --
  als
  ulls u -- na
  llà -- gri --
  ma
  %50
  i
  la jo -- ia_al
  pit
  tot
  es --
  %55
  col --
  tant
  --
  ins --
  tru --
  %60
  ments
  --
  Pre --
  lu diant -- la
  fe -- es --
  %65
  ta
  la gran
  nit d'ar --
  gent
  --
  %70
  Ja tot és a
  punt
  --
  --
  Cas sà -- i_els seus
  %75
  mú sics -- un cop
  més a -- ger ma -- --
  nats
  -
  -
  %80
  -
  -
  -
  -
  -
  %85
  -
  -
  -
  -
  -
  %90
  -
  -
  -
  -
  -
  %95
  -
  -
  -
  -
  -
  %100
  -
  -
  -
  -
  -
  %105
  -
  -
  -
  -
  -
  %110
  -
  -
  -
  -
  -
  %115
  -
  -
  -
}

liniaroAc =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g2 ~  |
  \times 2/3 { g8 fis e } \times 2/3 { d c b }  |
  \times 2/3 { e8 d c } \times 2/3 { b a g }  |
  \times 2/3 { c4 b g }  |
  %05
  a2 ~  |
  a8 d e fis  |
  g2 ~  |
  g8 r r4  |
  d4 g8 e  |
  %10
  d4 ~ d8 b16 a  |
  g8 g a a  |
  b8. a16 b8 c  |
  d4 g8 e  |
  d2  |
  %15
  R2  |
  r4 r8 b16 a  |
  g8 g a a  |
  b8. a16 b8 c  |
  d4 e8 c  |
  %20
  a2  |
  e'4 c8 b  |
  a2  |
  r8 a16 b c8 d  |
  e16 fis e d c8 b  |
  %25
  a8 d16 e fis8 g  |
  a2 ~  |
  a8 r r4  |
  d,4 g8 e  |
  d2 ~  |
  %30
  d8. d16 c8 a  |
  g2 ~  |
  g8 d' e fis  |
  g8 r r4  | }
  \repeat volta 2 { r4 b,8 b  |
  %35
  c4 ( d )  |
  r4 b8 b  |
  c4 ( d )  |
  r4 fis,8 fis  |
  fis2  |
  %40
  r4 e8 e  |
  g4 fis   |
  r4 fis8 fis  |
  fis2  |
  r4 fis8 fis  |
  %45
  a4 ( g )  |
  r4 b8 b  |
  b2  |
  r4 a8 a  |
  a2  |
  %50
  r4 g8 g  |
  g2  |
  r4 e8 g  |
  fis4 r  |
  R2  |
  %55
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %60
  R2  |
  \times 2/3 { r8 b c } \times 2/3 { d e fis }  |
  b,2 ~  |
  b8 a g fis  |
  fis4. f8  |
  %65
  e2  |
  fis4. g8  |
  e4. fis8  |
  b2 ~  |
  b4 r  |
  %70
  R2  |
  R2  |
  R2  |
  R2  |
  c8. c16 b8 b  |
  %75
  a8 a g g  |
  fis8 fis f f  |
  e8 r r4  |
  r4 r8 d'16 d  |
  g,8 b g b  |
  %80
  b4. b8  |
  a8 a g g  |
  fis4. a8  |
  fis8. a16 fis8 a  |
  d8. e16 d8 c  |
  %85
  b8 b16 b a8 a  |
  g4. d'8  |
  b8 d b d  |
  c4. e8  |
  c8 e c e  |
  %90
  d4. b8  |
  a8. g16 a8 ais  |
  <b b>8 b16 c d8 e  |
  fis2 ~  |
  fis4 r8 d  |
  %95
  g,8 b g b  |
  b4. b8  |
  a8 a g g  |
  fis4. a8  |
  fis8. a16 fis8 a  |
  %100
  d8. e16 d8 c  |
  b8 b16 b a8 a  |
  g4. d'8  |
  b8 d b d  |
  c4. e8  |
  %105
  cis8 e cis e  |
  d4. e8  |
  c8 c c8. c16  |
  b8 b b8. b16  |
  c8 c c c  |
  %110
  b4. e8  |
  c8 c c8. c16  |
  b8 b b8. b16  |
  c2 ~  |
  c8 fis,16 g a8 c  |
  %115
  b2 ~ }
  \alternative { { b8 r r4 ( }
  { b8 ) r b r } } \bar "||"
}
\addlyrics
{
  \tempo 4=120
  -
  --
  --
  --
  %05
  --
  --
  --
  --
  Sa lut -- Cas --
  %10
  sà els a
  mics -- de la sar --
  da na_en -- tor nen --
  a con -- vi --
  dar
  %15
  --
  tot el
  po -- ble s'en -- ga -- --
  la na -- per tor --
  nar -- vos sen --
  %20
  tir
  Com a com --
  panys
  si -- au ben vin --
  guts i com a bons com --
  %25
  panys i bons ca -- ta --
  lans
  --
  vint i -- -- cinc
  anys
  %30
  dant -- nos les
  mans
  dant -- nos les
  mans
  La La
  %35
  La -- Ra
  La La
  La -- Ra
  La La
  La
  %40
  Dels Re --
  co -- ords
  La La
  La
  Han flo --
  %45
  ri -- it
  La La
  La
  La La
  La
  %50
  La La
  La
  jo ia_al --
  pit
  --
  %55
  --
  --
  --
  --
  --
  %60
  --
  --
  Pre --
  lu diant -- la
  fe -- es --
  %65
  ta
  la gran
  nit d'ar --
  gent
  --
  %70
  --
  --
  --
  --
  Cas -- sà i_els seus
  %75
  mú sics -- un cop
  més a -- ger ma -- --
  nats
  -
  -
  %80
  -
  -
  -
  -
  -
  %85
  -
  -
  -
  -
  -
  %90
  -
  -
  -
  -
  -
  %95
  -
  -
  -
  -
  -
  %100
  -
  -
  -
  -
  -
  %105
  -
  -
  -
  -
  -
  %110
  -
  -
  -
  -
  -
  %115
  -
  -
  -
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

