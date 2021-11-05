(in-package :clio)

(defvar *http-server*
  (make-instance 'hunchentoot:easy-acceptor :port 12345))

(defun start-http ()
  (hunchentoot:start *http-server*))

(defun stop-http ()
  (hunchentoot:stop *http-server*))
