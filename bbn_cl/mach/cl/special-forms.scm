;;;                                ********
;;;
;;; Copyright 1992 by BBN Systems and Technologies, A division of Bolt,
;;; Beranek and Newman Inc.
;;; 
;;; Permission to use, copy, modify and distribute this software and its
;;; documentation is hereby granted without fee, provided that the above
;;; copyright notice and this permission appear in all copies and in
;;; supporting documentation, and that the name Bolt, Beranek and Newman
;;; Inc. not be used in advertising or publicity pertaining to distribution
;;; of the software without specific, written prior permission.  In
;;; addition, BBN makes no respresentation about the suitability of this
;;; software for any purposes.  It is provided "AS IS" without express or
;;; implied warranties including (but not limited to) all implied warranties
;;; of merchantability and fitness.  In no event shall BBN be liable for any
;;; special, indirect or consequential damages whatsoever resulting from
;;; loss of use, data or profits, whether in an action of contract,
;;; negligence or other tortuous action, arising out of or in connection
;;; with the use or performance of this software.
;;; 
;;;                                 ********
;;; 
;;;(defmacro and args
  (if (null args)
      t
      `(if (null ,(car args))
	   nil
	   (and ,@(cdr args)))))

(defmacro or args
  (if (null args)
      nil
      `(cond (,(car args))
	     (t (or ,@(cdr args))))))

(defmacro (cond . clauses)
  (if (null clauses)
      nil
      (let ((clause (car clauses)))
	`(if ,(car clause)
	     (begin ,@(cdr clause))
	     (cond ,(cdr clauses))))))
      
