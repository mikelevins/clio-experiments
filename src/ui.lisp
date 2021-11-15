(in-package :clio)

(defun on-new-window (body)
  (create-div body :content "Clio")
  (run body))

(defun start ()
  (initialize #'on-new-window :static-root #P"www/")
  (open-browser))
