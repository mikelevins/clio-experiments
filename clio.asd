;;;; ***********************************************************************
;;;;
;;;; Name:          miniclio.asd
;;;; Project:       the clio language
;;;; Purpose:       experimental light clio system: system definition
;;;; Author:        mikel evins
;;;; Copyright:     2021 by mikel evins
;;;;
;;;; ***********************************************************************

(in-package :cl-user)

(require :asdf)

;;; ---------------------------------------------------------------------
;;; clio
;;; ---------------------------------------------------------------------

(eval-when (:compile-toplevel :load-toplevel :execute)
  (pushnew :HUNCHENTOOT-NO-SSL *features*))

(asdf:defsystem #:clio
  :serial t
  :description "An experiment in UI for Lisp"
  :author "mikel evins <mevins@me.com>"
  :license "Apache 2.0"
  :version "0.4.1"
  :depends-on (:hunchentoot :hunchensocket :cl-who)
  :components ((:module "src"
                :serial t
                :components ((:file "package")
                             (:file "ui")))))

#+nil (asdf:load-system :clio)
