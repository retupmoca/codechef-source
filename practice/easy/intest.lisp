(defun run-test ()
  )

(let ((nums nil))
	 (loop
		 (let ((line (read-line *standard-input* nil nil)))
			(when (not line)
			  (return))
			(let ((mypos 0))
			  (loop
				  (multiple-value-bind (int pos) (parse-integer line :start mypos :junk-allowed t)
					 (when (not int)
						(return))
					 (setf mypos pos)
					 (push int nums))))))
	 (setf nums (nreverse nums))
	 (pop nums)						;get rid of the count - we don't need it
	 (let ((k (pop nums))
			 (count 0))
		(loop
			(when (eql nums nil)
			  (return))
			(when (eql 0 (mod (pop nums) k))
			  (incf count)))
		(format t "~D~%" count)))