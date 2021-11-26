(in-package :clio)

#+os-windows
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf trivial-open-browser::+format-string+ "start msedge ~S"))

(defun on-new-window (body)
  (load-script (html-document body) "https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.64.0/codemirror.min.js")
  (load-css (html-document body) "https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.64.0/codemirror.min.css")
  (load-script (html-document body) "https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.64.0/keymap/emacs.min.js")
  (load-script (html-document body) "https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.64.0/mode/commonlisp/commonlisp.min.js")
  ;;(js-execute (html-document body) (format nil "var myCodeMirror = CodeMirror(document.body, {mode: 'commonlisp'});"))
  )

(defun start ()
  (initialize #'on-new-window :static-root #P"www/")
  (open-browser))

#+nil (start)
