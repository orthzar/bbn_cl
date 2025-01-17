#| -*-Scheme-*-

$Header: object.scm,v 1.2 88/08/31 10:35:37 jinx Exp $
$MIT-Header: object.scm,v 4.1 87/12/04 20:04:24 GMT cph Exp $

Copyright (c) 1987 Massachusetts Institute of Technology

This material was developed by the Scheme project at the Massachusetts
Institute of Technology, Department of Electrical Engineering and
Computer Science.  Permission to copy this software, to redistribute
it, and to use it for any purpose is granted, subject to the following
restrictions and understandings.

1. Any copy made of this software must include this copyright notice
in full.

2. Users of this software agree to make their best efforts (a) to
return to the MIT Scheme project any improvements or extensions that
they make, so that these may be included in future releases; and (b)
to inform MIT of noteworthy uses of this software.

3. All materials developed as a consequence of the use of this
software shall duly acknowledge such use, in accordance with the usual
standards of acknowledging credit in academic research.

4. MIT has made no warrantee or representation that the operation of
this software will be error-free, and MIT is under no obligation to
provide any services, by way of maintenance, update, or otherwise.

5. In conjunction with products arising from the use of this material,
there shall be no use of the name of the Massachusetts Institute of
Technology nor of any adaptation thereof in any advertising,
promotional, or sales literature without prior written consent from
MIT in each case. |#

;;;; Support for tagged objects

(declare (usual-integrations))

(define-structure (vector-tag
		   (constructor %make-vector-tag (parent name index)))
  (parent false read-only true)
  (name false read-only true)
  (index false read-only true)
  (%unparser false)
  (description false)
  (method-alist '()))

(define make-vector-tag
  (let ((root-tag (%make-vector-tag false 'OBJECT false)))
    (set-vector-tag-%unparser!
     root-tag
     (lambda (object)
       (write (vector-tag-name (tagged-vector/tag object)))))
    (named-lambda (make-vector-tag parent name enumeration)
      (let ((tag
	     (%make-vector-tag (or parent root-tag)
			       name
			       (and enumeration
				    (enumeration/name->index enumeration
							     name)))))
	((access add-unparser-special-object! unparser-package)
	 tag
	 tagged-vector/unparse)
	tag))))

(define (define-vector-tag-unparser tag unparser)
  (set-vector-tag-%unparser! tag unparser)
  (vector-tag-name tag))

(define (vector-tag-unparser tag)
  (or (vector-tag-%unparser tag)
      (let ((parent (vector-tag-parent tag)))
	(if parent
	    (vector-tag-unparser parent)
	    (error "Missing unparser" tag)))))

(define (vector-tag-put! tag key value)
  (let ((entry (assq key (vector-tag-method-alist tag))))
    (if entry
	(set-cdr! entry value)
	(set-vector-tag-method-alist! tag
				      (cons (cons key value)
					    (vector-tag-method-alist tag))))))

(define (vector-tag-get tag key)
  (let ((value
	 (or (assq key (vector-tag-method-alist tag))
	     (let loop ((tag (vector-tag-parent tag)))
	       (and tag
		    (or (assq key (vector-tag-method-alist tag))
			(loop (vector-tag-parent tag))))))))
    (and value (cdr value))))

(define (define-vector-tag-method tag name method)
  (vector-tag-put! tag name method)
  name)

(define (vector-tag-method tag name)
  (or (vector-tag-get tag name)
      (error "Unbound method" name tag)))

(define-integrable make-tagged-vector
  vector)

(define-integrable (tagged-vector/tag vector)
  (vector-ref vector 0))

(define-integrable (tagged-vector/index vector)
  (vector-tag-index (tagged-vector/tag vector)))

(define-integrable (tagged-vector/unparser vector)
  (vector-tag-unparser (tagged-vector/tag vector)))

(define (tagged-vector? object)
  (and (vector? object)
       (not (zero? (vector-length object)))
       (let ((tag (tagged-vector/tag object)))
	 (or (vector-tag? tag)
	     (type-object? tag)))))

(define (->tagged-vector object)
  (let ((object (if (integer? object) (unhash object) object)))
    (and (tagged-vector? object) object)))

(define (tagged-vector/predicate tag)
  (lambda (object)
    (and (vector? object)
	 (not (zero? (vector-length object)))
	 (eq? tag (tagged-vector/tag object)))))

(define (tagged-vector/subclass-predicate tag)
  (lambda (object)
    (and (vector? object)
	 (not (zero? (vector-length object)))
	 (let loop ((tag* (tagged-vector/tag object)))
	   (or (eq? tag tag*)
	       (and (pair? tag*)
		    (loop (vector-tag-parent tag*))))))))

(define (tagged-vector/description object)
  (if (tagged-vector? object)
      (let ((tag (tagged-vector/tag object)))
	(cond ((vector-tag? tag) (vector-tag-description tag))
	      ((type-object? tag) (type-object-description tag))
	      (else (error "Unknown vector tag" tag))))
      (error "Not a tagged vector" object)))

(define (type-object-description type-object)
  (2d-get type-object type-object-description))

(define (set-type-object-description! type-object description)
  (2d-put! type-object type-object-description description))

(define (standard-unparser name unparser)
  (lambda (object)
    (unparse-with-brackets
     (lambda ()
       (standard-unparser/prefix object)
       (write name)
       (if unparser
	   (begin (write-string " ")
		  (unparser object)))))))

(define (tagged-vector/unparse vector)
  (unparse-with-brackets
   (lambda ()
     (standard-unparser/prefix vector)
     (fluid-let ((*unparser-radix* 16))
       ((tagged-vector/unparser vector) vector)))))

(define (standard-unparser/prefix object)
  (if *tagged-vector-unparse-prefix-string*
      (begin (write-string *tagged-vector-unparse-prefix-string*)
	     (write-string " ")))
  (if *tagged-vector-unparse-show-hash*
      (begin (write-string (number->string (hash object) 10))
	     (write-string " "))))

(define *tagged-vector-unparse-prefix-string* "LIAR")
(define *tagged-vector-unparse-show-hash* true)
