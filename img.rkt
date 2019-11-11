#lang racket

(provide  imgs
          thoughtstem-logo-path
          thoughtstem-teaching-path
          metacoders-girls-path
          thrombin-thrombomodulin-path)

(require  website/bootstrap
          racket/runtime-path
          (only-in 2htdp/image bitmap/file))

(define-runtime-path 
  img "img")

(define thoughtstem-logo-path
  (list "img" "thoughtstem-logo.png"))
(define metacoders-girls-path
  (list "img" "metacoders-girls.jpg"))
(define thoughtstem-teaching-path
  (list "img" "thoughtstem-teaching.jpg"))
(define thrombin-thrombomodulin-path
  (list "img" "thrombin-thrombomodulin.png"))

(define (imgs)
  (list 
    (page thoughtstem-logo-path
          (bitmap/file (build-path img "thoughtstem-logo.png")))
    (page thoughtstem-teaching-path
          (bitmap/file (build-path img "thoughtstem-teaching.jpg")))
    (page thrombin-thrombomodulin-path
          (bitmap/file (build-path img "thrombin-thrombomodulin.png")))
    (page metacoders-girls-path
          (bitmap/file (build-path img "metacoders-girls.jpg")))))
