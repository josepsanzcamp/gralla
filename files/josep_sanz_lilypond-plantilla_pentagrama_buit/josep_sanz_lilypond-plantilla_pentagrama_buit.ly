\version "2.24.0"

\header {
  title="Plantilla Pentagrama Buit"
  subtitle="Versió per DinA4 i DinA5"
  composer="Josep Sanz Campderrós"
}

freeLayout = \layout {
  indent = 0\mm
  \context {
    \Staff
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
    \remove "Bar_engraver"
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\book {
  \paper {
    #(set-paper-size "a4")
    top-margin = 34\mm
    tagline = ##f
    ragged-last-bottom = ##f
  }
  \score {
    \new Staff { \repeat unfold 18 { s1 \break } }
    \layout { \freeLayout }
  }
}

\book {
  \paper {
    #(set-paper-size "a4")
    tagline = ##f
    ragged-last-bottom = ##f
  }
  \score {
    \new Staff { \repeat unfold 20 { s1 \break } }
    \layout { \freeLayout }
  }
}

\book {
  \paper {
    #(set-paper-size "a5landscape")
    top-margin = 17\mm
    tagline = ##f
    ragged-last-bottom = ##f
  }
  \score {
    \new Staff { \repeat unfold 9 { s1 \break } }
    \layout { \freeLayout }
  }
}

\book {
  \paper {
    #(set-paper-size "a5landscape")
    tagline = ##f
    ragged-last-bottom = ##f
  }
  \score {
    \new Staff { \repeat unfold 10 { s1 \break } }
    \layout { \freeLayout }
  }
}
