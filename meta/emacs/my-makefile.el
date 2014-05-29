;;; my-makefile.el --- utilities for Makefiles manipulation

;; Copyright (C) 2014 Marco Maggi

;; Author: Marco Maggi <marco.maggi-ipsu@poste.it>
;; Created: Tue Jan  7, 2014
;; Time-stamp: <2014-01-07 10:23:19 marco>
;; Keywords: convenience, files

;; This file is part of Marco's Home Directory.
;;
;; This  program  is free  software:  you  can redistribute  it
;; and/or modify it  under the terms of the  GNU General Public
;; License as published by the Free Software Foundation, either
;; version  3 of  the License,  or (at  your option)  any later
;; version.
;;
;; This  program is  distributed in  the hope  that it  will be
;; useful, but  WITHOUT ANY WARRANTY; without  even the implied
;; warranty  of  MERCHANTABILITY or  FITNESS  FOR A  PARTICULAR
;; PURPOSE.   See  the  GNU  General Public  License  for  more
;; details.
;;
;; You should  have received a  copy of the GNU  General Public
;; License   along   with    this   program.    If   not,   see
;; <http://www.gnu.org/licenses/>.
;;

;;; Commentary:

;;

;;; Change Log:

;;

;;; Code:

(defun my-makefile-reformat-list-of-files (START END &optional NUMBER-OF-NAMES-PER-LINE NAME-PREFIX)
  "Reformat a list of files in Makefile style.

Delete the region  from START to END from the  current buffer and
interpret  its contents  as  a  list of  files  from a  Makefile.
Reinsert at  position START  the list  of files  with tabulations
between them.  For example, if the selected region is:

\tciao-01.c ciao-02.c ciao-03.c \\
\thello-01.c hello-02.c hello-03.c

this function (with default arguments) will reformat it as:

\tciao-01.c\tciao-02.c\t\\
\tciao-03.c\thello-01.c\t\\
\thello-02.c\thello-03.c

Optional argument NUMBER-OF-NAMES-PER-LINE is  the number of file
names to insert in each line; it defaults to 2.

Optional argument NAME-PREFIX is a  string that will be prepended
to  every name  before inserting  it  in the  current buffer;  it
defaults to the empty string."
  (interactive "*r\nsNumber of names per line [default 2]: \nsPrefix for each name [default nothing]: ")
  ;;Validate the number of names per line.
  (progn
    (setq NUMBER-OF-NAMES-PER-LINE
	  (if (zerop (length NUMBER-OF-NAMES-PER-LINE))
	      2
	    (string-to-number NUMBER-OF-NAMES-PER-LINE)))
    (when (<= NUMBER-OF-NAMES-PER-LINE 0)
      (error "Expected non-negative number of names per line: %d"
	     NUMBER-OF-NAMES-PER-LINE)))
  (let ((input (delete-and-extract-region START END)))
    ;;If an error occurs: we want to reinsert the original region.
    (condition-case err
	(let ((filenames (split-string input "[ \\\f\t\n\r\v]+" t)))
	  (goto-char START)
	  (let ((i 0))
	    (dolist (name filenames)
	      (when (zerop i)
		(insert "\t\\\n"))
	      (insert (concat "\t" NAME-PREFIX name))
	      (setq i (+ 1 i))
	      (if (= i NUMBER-OF-NAMES-PER-LINE)
		  (setq i 0))))
	  (insert "\n"))
      (error
       (delete-and-extract-region START (point))
       (goto-char START)
       (insert input)
       ;;Rethrow the signal.
       (signal (car err) (cdr err))))))


(provide 'my-makefile)
;;; my-makefile.el ends here
