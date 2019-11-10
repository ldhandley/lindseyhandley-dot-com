#lang racket

(require website/bootstrap
          racket/runtime-path)

(provide my-css)

(define-runtime-path 
  css-path "./css")

(define (my-css)
  (page css/custom.css
    (file->string
      (build-path css-path
                  "custom.css"))))

