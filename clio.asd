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

;;; make sure we load hunchentoot at the start with
;;; :hunchentoot-no-ssl on *features*, so that we don't run into
;;; problems loading cl+ssl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (pushnew :HUNCHENTOOT-NO-SSL *features*))

(asdf:defsystem #:clio
  :serial t
  :description "An experiment in UI for Lisp"
  :author "mikel evins <mevins@me.com>"
  :license "Apache 2.0"
  :version "0.4.1"
  :depends-on (:hunchentoot :trivial-ws :parenscript :st-json :cl-who :lass)
  :components ((:module "src"
                :serial t
                :components ((:file "package")
                             (:file "parameters")
                             (:file "http-server")
                             (:file "routes")
                             (:file "ui")
                             (:file "browser")))))

#+nil (asdf:load-system :clio)

;;; ---------------------------------------------------------------------
;;; server
;;; ---------------------------------------------------------------------

#+nil (clio::start-server 8000)
#+nil (clio::stop-server)
