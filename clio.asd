;;;; ***********************************************************************
;;;;
;;;; Name:          clio.asd
;;;; Project:       the clio language
;;;; Purpose:       system definition
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
    :version "0.3.1"
    :depends-on (:hunchentoot :remote-js :parenscript :cl-who :local-time)
    :components ((:module "src"
                          :serial t
                          :components ((:file "package")
                                       (:file "http")
                                       (:file "director")))))

#+nil (asdf:load-system :clio)

#+nil (clio::start-director)
#+nil (clio::stop-director)


