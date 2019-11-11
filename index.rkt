#lang at-exp racket
 
(require website/bootstrap
          racket/runtime-path
          "./css.rkt"
          "./img.rkt")

(define (header-jumbotron)
  (jumbotron style: (properties
                      text-align: "center"
                      margin: 0
                      background-image: "url(https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/52818271_10100521841507480_8053906936699027456_o.jpg?_nc_cat=101&_nc_eui2=AeFC_kBeAKLsazK1nnwD58qrLgay9OeK0ZKb_Fzkeuf9vRSlYSu7WWFoZdQylqxBp8t3ysDYPyucr9nd7SoG8RAxRryOqW4Gi7vegfxi0rv02A&_nc_oc=AQmKkd6hu9x5d5udaF9x_qGhC4HTMYK6Y5yts8JoEVBJohwXTH9H9ACj02JvwY1JKjo&_nc_ht=scontent-lax3-2.xx&oh=1bdc32f4c0a3fb389e5a86dc0ce5d691&oe=5E610C66)"
                      background-size: "cover"
                      height: "100%")
             class: "d-flex align-items-center"
                    (container
                      (div style: (properties
                                    display: "inline-block"
                                    padding: 15
                                    background: "rgba(0, 0, 0, 0.5)") 
                        (h1 style: (properties
                                    color: "white") "Lindsey Handley, Ph.D.")
                        (h4 style: (properties
                                    color: "white") "Scientist, Entrepreneur, Coder")))))

(define (my-projects-section)
  (jumbotron style: (properties text-align: "center"
                      margin: 0)
    (h1 "My Projects")
    (br)
    (card-deck
      (card
        (card-img-top src: (pathify thoughtstem-teaching-path))
        (card-body
          (card-title "ThoughtSTEM")
          (card-subtitle "My 1st Startup")
          (card-text "Developing EdTech software for teaching coding.")
          (button-primary
            "Learn More")))
      (card
        (card-img-top src: (pathify metacoders-girls-path))
        (card-body
          (card-title "MetaCoders")
          (card-subtitle "My 1st Non-Profit")
          (card-text "Teaching kids how to code everywhere!")
          (button-primary
            "Learn More")))
      (card
        (card-img-top src: (pathify thrombin-thrombomodulin-path))
        (card-body
          (card-title "Scientific Publications")
          (card-subtitle "Biochemistry / Biophysical")
                      (card-text "Studied Thrombin/Thrombomodulin at UCSD.")
                      (button-primary
                        "Learn More"))))))

(define (my-blog)
  (jumbotron style: (properties text-align: "center"
                      margin: 0)
    (h1 "My Blog")
    (br)
    (card-columns
      (card
        (card-img-top)
        (card-body
          (card-title "Blog 1")
          (card-subtitle "Blog summary")
          (card-text "Lots of blog content")
          (button-primary
            "Read More")))
      (card
        (card-img-top)
        (card-body
          (card-title "Blog 2")
          (card-subtitle "Blog summary")
          (card-text "Lots of blog content")
          (button-primary
            "Read More")))
      (card
        (card-img-top)
        (card-body
          (card-title "Blog 3")
          (card-subtitle "Blog summary")
          (card-text "Lots of blog content")
          (button-primary
            "Read More")))
      (card class: "bg-primary text-white text-center p-3"
        (blockquote class: "blockquote mb-0"
          (p "\"It's a quote!\""))
        (footer class: "blockquote-footer text-white"
          (small class: "text-white" 
            "Someone famous")))
      )))

(define (my-footer)
  (footer class: "pt-4"
    (row style: (properties margin: 15)
      (col-6
        (row
          (col-3
            (img  class: "img-fluid rounded-circle"
                  src: "https://scontent-lax3-1.xx.fbcdn.net/v/t31.0-8/p960x960/27503701_10100408522873930_2950324374038593153_o.jpg?_nc_cat=100&_nc_oc=AQly12clcDf1W7jSyVelBFu587Trr6mwLbN82RsTGSjp_itfZX-8znn7H-XVh-umEas&_nc_ht=scontent-lax3-1.xx&oh=404ef0b0573d2363d37f115cb6ba68ef&oe=5E42131F"))
          (col-9
            (h3 "WHO AM I?")
            (p  
               "Summary of who I am..."))))
      (col-3
        (h3 "LINKS")
          (ul class: "list-unstyled"
            (li 
              (p "My Projects")
            (li 
              (p "Blog")))))
      (col-3
        (h3 "CONNECT")
          (ul class: "list-unstyled"
            (li 
              (p "lindseyhandley [at] gmail [dot] com"))
            (li
              (p "INSERT SOCIAL MEDIA LINKS"))
            (li 
              (p "\u00a9 2020 copyright: lindsey handley")))))))
 

(define my-site
  (list
    (bootstrap-files) 
    (my-css)
    (imgs)
    (page index.html 
      (content
        (header-jumbotron)
        (my-projects-section)
        (my-blog)
        (my-footer)))))

(render my-site #:to "output")
