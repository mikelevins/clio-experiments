(in-package :clio)

#+os-windows
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf trivial-open-browser::+format-string+ "start msedge ~S"))

(defun on-new-window (body)
  (js-execute
   (html-document body)
   (format nil "
var worksheet = document.getElementById('worksheet');
var output = document.getElementById('output');
var TheCodeMirror = CodeMirror(worksheet, {mode: 'commonlisp', keyMap: 'emacs', lineNumbers: true});
")))

(defun start ()
  (initialize #'on-new-window :static-root #P"www/")
  (open-browser))

#+nil (start)
