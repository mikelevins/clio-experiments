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
