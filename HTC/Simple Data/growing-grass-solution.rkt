;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname growing-grass-solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;; growing-grass-starter.rkt
#;
(place-image
   (rectangle 8  14 "solid" " Green")
   24 (-(image-height MTC) 7)
   MTC)
;; grass grows 

;; =================
;; Constants:
(define WIDTH  400)
(define HEIGHT 400)
(define MTC (rectangle 400 400 "solid" "Medium Cyan"))
(define Y HEIGHT)




;; =================
;; Data definitions:
(define-struct grass (x height))
;; grass is (make-grass Number Number)
;; interp. a grass speed is x and grow is height 

(define grass1 (make-grass 8 2))

#;
(define (fn-for-grow g)
  (... (grow-x g)        ;Number
       (grow-height g)))   ;Number
;; Template rules used:
;;  - compound: 2 fields

;; =================
;; Functions:

;; grass -> grass
;; start the world with (main 0 1)
;; 
(define (main grass)
  (big-bang grass                ; grass
            (on-tick   tock )     ; grass -> grass
            (to-draw   render)   ; grass -> Image
           ))

;; grass -> grass
;; grow grass height by 10 and increass x 
;; !!!
(check-expect (tock grass1) (make-grass 11 7))
;(define (tock grass) 0)
(define (tock g)
  (make-grass (+ 3(grass-x g)) (+ 5 (grass-height g))))  

;; grass -> Image
;; draw grass
;; !!!
(check-expect (render grass1 )(place-image (rectangle 8  (grass-height grass1) "solid" " Green") (grass-x grass1) 
(- Y (/ (grass-height grass1) 2)) MTC))
;(define (render grass) 0)

(define (render g)
  (place-image (rectangle 8  (grass-height g) "solid" " Green") (grass-x g) 
(- Y (/ (grass-height g) 2)) MTC))
