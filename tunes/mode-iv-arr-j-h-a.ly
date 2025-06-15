\version "2.22.2"
\language "english"
\include "gregorian.ly"

global = {
    \key ef \major
}

cantus = {
    \clef "vaticana-fa2"
    e8 c e g a a f g \divisioMinima
    g a f g f e d e4 \divisioMaior
    g8 f d e f e d c \divisioMinima
    c e f g f e d e 
}

soprano = \relative c'' {
    \global
    \set Score.timing = ##f
    \override Stem.direction = #up
    g8 ef g bf c (c) af bf \divisioMinima
    bf c af bf af g f g4 \divisioMaior
    bf8 af f g af g f ef \divisioMinima
    ef g af bf af g f g4
}

bass = {
    \global
    \set Score.timing = ##f

}

\score {
    \new StaffGroup <<
        \new VaticanaVoice \cantus
        \new PianoStaff <<
            \new Staff <<
                \new Voice <<
                    \soprano
                >>
            >>
            \new Staff <<
                \clef "bass"
            >>
        >>
  >>
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}