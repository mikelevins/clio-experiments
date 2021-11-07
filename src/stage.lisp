(in-package :clio)

#+win32
(defparameter *stage-executable-path* (asdf:system-relative-pathname :clio "stage/windows/stage.exe"))

#+darwin
(defparameter *stage-executable-path* (asdf:system-relative-pathname :clio "stage/macos/stage"))

#+linux
(defparameter *stage-executable-path* (asdf:system-relative-pathname :clio "stage/linux/stage"))

(defparameter *stage-process* nil)

(defun start-stage ()
  (setf *stage-process*
        (uiop:run-program (namestring *stage-executable-path*))))
