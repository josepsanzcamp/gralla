\version "2.16.2"

\header {
  dedication=""
  title="Ball de gitanes"
  subtitle="Ball de gitanes de Sant Celoni"
  subsubtitle="Galop d'entrada"
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="El Vallès Oriental"
  arranger="Arr. Cesc Alexandri"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative f''
{
  \tempo 4=120
  \clef treble
  \key f \major
  \time 2/4
  f8-> f16-> f-> f8-> \f c->  |
  f8-> f16-> f-> f8-> c->  |
  f8-> c-> f-> a->  |
  g4-> r8 g16 ( a )  |
  %05
  bes8 a g f  |
  e8. f16 g8 f   |
  e8 f d e  |
  c4 r  |
  f8-> f16-> f-> f8-> c->  |
  %10
  f8-> f16-> f-> f8-> c->  |
  f8-> c-> f-> a->  |
  g4-> r8 g16 a   |
  bes8 a g f  |
  e8. f16 ( g8 ) f  |
  %15
   e8 d c g'  \bar "||"
  f4 r  \bar "||"
  a,2 \p (  |
  c2 )  |
  bes8 bes16 a bes8 e  |
  %20
  g4 r  |
  bes,2 (  |
  bes2  |
  a8 ) c16 bes a8 g  |
  a4 r  |
  %25
  a2 (  |
  c2  |
  bes8 ) bes16 a bes8 e  |
  g4 r  |
  bes,2 (  |
  %30
  c2 )  |
  a2 ~  |
  a8 f \mf ( g ) a  \bar "||"
  \key bes \major   bes4 c  |
  d4 f  |
  %35
  d2 ~  |
  d8 f, ( g ) a  |
  bes4 c  |
  d4 f  |
  ees2 ~  |
  %40
  ees8 \f a, ( bes ) b  |
  c4 d  |
  ees4 f8 g  |
  a2 ~  |
  a8 g f g  |
  %45
  a8 \times 2/3 { g16 ( a g ) } f8 ees  |
  d4 c  |
  f2 ~  |
  f8 f, ( g ) a  |
  bes4 c  |
  %50
  d4 f  |
  d2 ~  |
  d8 f, ( g ) a  |
  bes4 c  |
  d4 f  |
  %55
  ees2 ~  |
  ees8 \f a, ( bes ) b  |
  c4 d  |
  ees4 f8 g  |
  a2 ~  |
  %60
  a8 g f g  |
  a8 \times 2/3 { g16 a g } f8 ( ees )  |
  d4 c  |
  d2 ~  |
  \mark \markup {D.C. e Coda} d8 r r4  \bar "||"
  %65
  \mark \markup {\musicglyph #"scripts.coda"} f4 f8. f16  |
  f8 r r4  \bar "|."
}

liniaroAb =
\relative f''
{
  \tempo 4=120
  \clef treble
  \key f \major
  \time 2/4
  f8-> f16-> f-> f8-> \f c->  |
  f8-> f16-> f-> f8-> c->  |
  f8-> c-> a-> c->  |
  bes4-> r8 e16 ( f )  |
  %05
  g8 f e d  |
  c8. d16 e8 d   |
  c8 d bes a  |
  g4 r  |
  f'8-> f16-> f-> f8-> c->  |
  %10
  f8-> f16-> f-> f8-> c->  |
  f8-> c-> a-> c->  |
  bes4-> r8 e16 f   |
  g8 f e d  |
  c8. d16 ( e8 ) d  |
  %15
  c8 bes a bes  \bar "||"
  a8 a \mf ( bes ) b  \bar "||"
  c4. d8  |
  e8 f g ( f )  |
  e2 ~  |
  %20
  e8 bes' bes a  |
  a8 ( g ) f e  |
  d4 e  |
  c2 ~  |
  c8 a ( bes ) b  |
  %25
  c4. d8  |
  e8 ( f ) g f  |
  e2 ~  |
  e8 bes' bes a  |
  a8 ( g ) f e  |
  %30
  d4 e  |
  f2 ~  |
  f4 r  \bar "||"
  \key bes \major   r2  |
  r2  |
  %35
  r8 bes,16 bes bes8 bes  |
  bes8 a g f  |
  f4 r  |
  r2  |
  r8 bes16 bes bes8 bes  |
  %40
  bes8 a g ges  |
  f4 r  |
  r8 \f bes16 bes bes8 bes  |
  a8. aes16 a8 c  |
  f,4 r  |
  %45
  f2  |
  f2  |
  f8. e16 f8 bes  |
  d4 \mf r  |
  r2  |
  %50
  r2  |
  r8 \mf bes16 bes bes8 bes  |
  bes8 a g f  |
  f4 r  |
  r2  |
  %55
  r8 bes16 bes bes8 bes  |
  bes8 a g ges  |
  f4 r  |
  r8 \f bes16 bes bes8 bes  |
  a8. aes16 a8 c  |
  %60
  f,4 r  |
  f2  |
  f2  |
  f8. bes16 d8 f  |
  bes,8 r r4  \bar "||"
  %65
  a4 a8. a16  |
  a8 r r4  \bar "|."
}

liniaroAc =
\relative f''
{
  \tempo 4=120
  \clef treble
  \key f \major
  \time 2/4
  f8-> f16-> f-> f8-> \f c->  |
  f8-> f16-> f-> f8-> c->  |
  f8-> c-> f-> f->  |
  e4-> r  |
  %05
  g,4 c  |
  g4 c  |
  g4 f  |
  e4 r  |
  f'8-> f16-> f-> f8-> c->  |
  %10
  f8-> f16-> f-> f8-> c->  |
  f8-> c-> f-> f->  |
  e4-> r  |
  g,4 c  |
  g4 c  |
  %15
  g4 e  \bar "||"
  f4 r  \bar "||"
  f2 \p (  |
  a2 )  |
  g8 g16 f e8 g  |
  %20
  bes4 r  |
  g2 (  |
  e2  |
  f8 ) a16 g f8 e  |
  f4 r  |
  %25
  f2 (  |
  a2  |
  g8 ) g16 f e8 g  |
  bes4 r  |
  r8 e,16 f g8 bes  |
  %30
  a8 bes16 a g8 e  |
  f8. f16 a f a c  |
  f,4 r  \bar "||"
  \key bes \major   r8 f \mf g a   |
  bes8 a bes c  |
  %35
  d4 r  |
  r2  |
  r8 f, g a   |
  bes8 a bes d  |
  c4 r  |
  %40
  r2  |
  r8 \f a ( bes ) b  |
  c4 d  |
  ees2 ~  |
  ees8 ees d ees  |
  %45
  f8 ees d c  |
  bes4 a  |
  d2 ~  |
  d4 r  |
  r8 f, g a \mf   |
  %50
  bes8 a bes c  |
  d4 r  |
  r2  |
  r8 f, ( g ) a  |
  bes8 a bes d  |
  %55
  c4 r  |
  r2  |
  r8 \f a ( bes ) b  |
  c4 d  |
  ees2 ~  |
  %60
  ees8 ees d ees  |
  f8 ees d c  |
  bes4 a  |
  bes2 ~  |
  bes8 r r4  \bar "||"
  %65
  f4 f8. f16  |
  f8 r r4  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

