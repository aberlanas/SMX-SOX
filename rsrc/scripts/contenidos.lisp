#!/usr/bin/emacs --script

(message "Hola Mundo");

(defvar filename "./inputContenidos.txt")
(defun get-file (filename)
  (with-open-file (stream filename)
    (loop for line = (read-line stream nil)
          while line(
          (collect line)
	  (message line)))))
