;;;; ***********************************************************************
;;;;
;;;; Name:          routes.lisp
;;;; Project:       clio
;;;; Purpose:       HTTP API endpoints
;;;; Author:        mikel evins
;;;; Copyright:     2021 by mikel evins
;;;;
;;;; ***********************************************************************

(in-package :clio)

(hunchentoot:define-easy-handler (landing :uri "/") ()
  (setf (hunchentoot:content-type*) "text/html")
  (landing-page))

(hunchentoot:define-easy-handler (evaluate :uri "/evaluate") (listener-input)
  (setf (hunchentoot:content-type*) "text/html")
  (let ((vals (multiple-value-list (eval (read-from-string listener-input)))))
    (with-html-output-to-string (s)
      (loop for val in vals
            do (htm (:p (:pre (str val))))))))
