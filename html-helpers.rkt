#lang at-exp racket

(provide normal-content
         homepage-content)

(require website/bootstrap
         "./css.rkt"
         "./img.rkt")

(define (include-font-awesome-js)
  (list 
    (include-js "https://kit.fontawesome.com/e96e32bc1c.js")))

(define (normal-content . more)
  (content
    (normal-navbar)
    (container 
      id: "main"
      more)
    (include-font-awesome-js)
    (normal-footer)))

(define (homepage-content . more)
  (content 
    (normal-navbar)
    (div id: "main"
         more)
    (include-font-awesome-js)
    (normal-footer)))

(define (normal-navbar)

  (list
   (style/inline
     @~a{
      .navbar.solid {
          background-color: #343a40 !important; 
          transition: background-color 1s ease 0s;
        }
     }) 
   (script/inline
     @~a{
        $(document).ready(function() {
                // Transition effect for navbar 
                $(window).scroll(function() {
                  // checks if window is scrolled more than 500px, adds/removes solid class
                  if($(this).scrollTop() > 475) { 
                      $('.navbar').addClass('solid');
                  } else {
                      $('.navbar').removeClass('solid');
                  }
                });
        });
     })
  (nav class: "navbar fixed-top navbar-expand-md bg-transparent" 
    (a class: "navbar-brand" 
       href: "/index.html"
       style: (properties color: "white") 
       "Lindsey Handley, Ph.D.") 
    (ul class: "navbar-nav ml-auto"
      (my-nav-link 
        "/index.html" "Homepage")))))

(define (my-nav-link to text)
  (nav-item
    (a class: "nav-link mr-3 text-white"
       href: (pathify (add-path-prefix to))
       text)))

(define (normal-footer)
  (list
    (style/inline
      @~a{
      .fab {
        padding: 10px;
        font-size: 30px;
        text-align: center;
        text-decoration: none;
      }

      /* Add a hover effect if you want */
      .fab:hover {
        opacity: 0.7;
      }

      })
    (footer class: "pt-4"
            style: (properties background-color: "#343a40")
      (row style: (properties margin: 15 
                              color: "white")
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
                (p style: (properties margin-bottom:"0") "lindseyhandley [at] gmail [dot] com"))
              (li
                (row
                  (col-12
                    (a href: "www.facebook.com" 
                       style: (properties padding-left: "0px") 
                       class: "fab fa-facebook-square fa-2x")
                    (a href: "www.twitter.com" class: "fab fa-twitter-square fa-2x")
                    (a href: "www.linkedin.com" class: "fab fa-linkedin fa-2x")
                    (a href: "www.instagram.com" class: "fab fa-instagram fa-2x")
)))
              (li 
                (p "Copyright 2020"))
              (li
                (p "All rights reserved"))))))))
