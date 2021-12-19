;;;; ***********************************************************************
;;;; 
;;;; Name:          ui.lisp
;;;; Project:       clio
;;;; Purpose:       clio main UI
;;;; Author:        mikel evins
;;;; Copyright:     2021 by mikel evins
;;;;
;;;; ***********************************************************************

(in-package :clio)

(defun landing-page ()
  (with-html-output-to-string (out nil :prologue t)
    (:html
     (:head
      (:link :rel "stylesheet" :href "css/normalize.css")
      (:link :rel "stylesheet" :href "css/clio.css")
      (:link :rel "stylesheet" :href "css/fontawesome-all.min.css")
      (:link :rel "icon":type "image/png" :href "clio-icon.png")
      (:title "clio"))
     (:body
      ;; preloaded Javascript
      (:script :src "js/htmx.min.js")
      (:script :src "js/clio.js")

      ;; actual contents
      (:div :class "content"
            (:div :id "banner" "clio")
            (:div :id "worksheet")
            (:div :id "listener"
                  (:form
                   (:span :id "prompt" "clio>&nbsp;")
                   (:input :id "listener-input" :type "text")
                   (:input :id "listener-submit" :type "submit" :value "Evaluate"))))))
    (values)))
