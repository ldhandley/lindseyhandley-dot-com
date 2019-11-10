#lang racket
 
(require website/bootstrap
          "./css.rkt")
 
(define my-site
  (list
    (bootstrap-files) 
    (my-css)
    (page index.html 
      (content
        (jumbotron style: (properties
                            text-align: "center"
                            margin: 0
                            background-image: "url(https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/52818271_10100521841507480_8053906936699027456_o.jpg?_nc_cat=101&_nc_eui2=AeFC_kBeAKLsazK1nnwD58qrLgay9OeK0ZKb_Fzkeuf9vRSlYSu7WWFoZdQylqxBp8t3ysDYPyucr9nd7SoG8RAxRryOqW4Gi7vegfxi0rv02A&_nc_oc=AQmKkd6hu9x5d5udaF9x_qGhC4HTMYK6Y5yts8JoEVBJohwXTH9H9ACj02JvwY1JKjo&_nc_ht=scontent-lax3-2.xx&oh=1bdc32f4c0a3fb389e5a86dc0ce5d691&oe=5E610C66)"
                            background-size: "cover"
                            height: "100%")
                   class: "vertical-center"
                          (h1 "Lindsey Handley, Ph.D.")
                          (h3 "Scientist, Entrepreneur, Coder"))
        (jumbotron style: (properties
                            text-align: "center")
                          (h1 "My Projects")
                          (br)
                          (card-deck
                            (card
                              (card-img-top)
                              (card-body
                                (card-title "ThoughtSTEM")
                                (card-subtitle "My first startup")
                                (card-text "Developing EdTech software for teaching coding.")
                                (button-primary
                                  "Learn More")))
                            (card
                              (card-img-top)
                              (card-body
                                (card-title "MetaCoders")
                                (card-subtitle "My 1st Non-Profit")
                                (card-text "Teaching kids how to code everywhere!")
                                (button-primary
                                  "Learn More")))
                            (card
                              (card-img-top)
                              (card-body
                                (card-title "Scientific Publications")
                                (card-subtitle "Biochemistry / Biophysical")
                                (card-text "Studied Thrombin/Thrombomodulin at UCSD.")
                                (button-primary
                                  "Learn More")))))))))


(render my-site #:to "output")
