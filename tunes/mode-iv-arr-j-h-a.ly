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
    \voiceOne
    \set Score.timing = ##f
    \override Stem.direction = #up
    g8 ef g bf c (c) af bf \divisioMinima
    bf c af bf af g f g4 \divisioMaior
    bf8 af f g af g f ef \divisioMinima
    ef g af bf af g f g4 \bar  "||"
}

alto = \relative c' {
    \global
    \voiceTwo
    d8 ef4 f g8 af d, 
    (d) ef4 (ef2) d4
    (d8) c2 (c4) (c8) (c)
    d2 c4 bf
}

tenor = \relative c {
    \global

}

bass = \relative c {
    \global
    \voiceFour
    \set Score.timing = ##f
    bf8 c4 d ef8 f g 
    (g) c,4 ef2 bf4
    (bf8) f'2 c4 (c8)
    (c8) bf2 af4 g
}
