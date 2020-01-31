
(cl:in-package :asdf)

(defsystem "plc_in-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "inputs" :depends-on ("_package_inputs"))
    (:file "_package_inputs" :depends-on ("_package"))
  ))