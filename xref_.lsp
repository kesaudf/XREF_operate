(defun C:FREEZE_XREF_  ()
  (setq XrefItem (entget (car (nentsel "\nChoose xref layer for freeze : ")))
        XrefName (cdr (assoc 8 XrefItem))
  )
  (command "_.layer" "З" XrefName "")
  (princ "\n XREF layer name: ")(princ XrefName)(princ " freezed.")
(princ))

(defun C:PLOT_XREF_  ()
  (setq XrefItem (entget (car (nentsel "\nChoose xref layer for set plot : ")))
        XrefName (cdr (assoc 8 XrefItem))
  )
  (command "_.layer" "Ч" "П" XrefName "")
  (princ "\n XREF layer name: ")(princ XrefName)(princ " set plot.")
(princ))

(defun C:NOTPLOT_XREF_  ()
  (setq XrefItem (entget (car (nentsel "\nChoose xref layer for set unplot : ")))
        XrefName (cdr (assoc 8 XrefItem))
  )
  (command "_.layer" "Ч" "Н" XrefName "")
  (princ "\n XREF layer name: ")(princ XrefName)(princ " set unplot.")
(princ))
(defun C:NAMEXREF_  ()
  (setq XrefItem (entget (car (nentsel "\nChoose xref layer for showing name : ")))
        XrefName (cdr (assoc 8 XrefItem))
  )
  (princ "\n XREF layer name: ")
  (princ XrefName)
(prin1))
