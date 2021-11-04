(in-package :clio)

(defvar *http-server*
  (make-instance 'hunchentoot:easy-acceptor :port 12345))

(defun start-director ()
  (hunchentoot:start *http-server*))

(defun stop-director ()
  (hunchentoot:stop *http-server*))
