(define (big x y) (if (> x y) x y))
(define (max a b c) (if (= (big a b) (big b c)) (+ b (big a c)) (+ (big a b) (big b c))))

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))
(define (test a b) (+ a b) (- a b))
 
(define (p) (p))

(define (test x y)
    (if ( = x 0)
        0
        y))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                    x)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.0001))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (sqrt a)
    (sqrt-iter 1.0 a))


(define (sqrt-iter-improved guess x)
    (if (improved-good-enough? guess (improve guess x))
        (improve guess x)
        (sqrt-iter-improved (improve guess x)
                    x)))

(define (improved-good-enough? guess new-guess)
    (> 
        0.001 
        (/ 
            (abs (- guess new-guess)) 
            guess)))

(define (improved-sqrt x)
    (sqrt-iter-improved 1.0 x))
