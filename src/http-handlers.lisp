(in-package :clio)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (setq cl-who:*attribute-quote-char* #\"))

(hunchentoot:define-easy-handler (index :uri "/") ()
  (setf (hunchentoot:content-type*) "text/html")
  (cl-who:with-html-output-to-string (out nil :prologue t)
    (:html 
     (:head
      (:meta :charset "utf-8")
      (:meta :http-equiv "X-UA-Compatible" :content "IE=edge")
      (:meta :name "viewport" :content "width=device-width, initial-scale=1")
      (:title "Stage"))
     (:body :style "background:#eee;"
      (:div
       (:h1 "Stage")
       (:p "clio's presentation process"))))
    out))
