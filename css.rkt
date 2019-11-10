#lang racket

(provide my-css)

(require website/bootstrap
          racket/runtime-path)

(define-runtime-path 
  css-path "./css")

(define (my-css)
  (page css/custom.css
    (file->string
      (build-path css-path
                  "custom.css"))))

