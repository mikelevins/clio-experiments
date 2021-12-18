(in-package :clio)

(defparameter +open-browser-command+
  #+(or win32 mswindows windows) "start msedge --app=~S"
  #+(or macos darwin) "open ~S"
  #-(or win32 mswindows macos darwin windows) "xdg-open ~S")

(defun open-browser (url)
  (uiop:run-program (format nil +open-browser-command+ url)))

#+nil (open-browser "http://apple.com")
