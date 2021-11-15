(in-package :clio)

#+os-windows
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf trivial-open-browser::+format-string+ "start msedge ~S"))

(defun on-new-window (body)
  (create-div body :content "Clio")
  (create-div body :content (format nil "body: ~A"
                                    (with-output-to-string (out) (describe body out))))
  (run body))

(defun start ()
  (initialize #'on-new-window :static-root #P"www/")
  (open-browser))
