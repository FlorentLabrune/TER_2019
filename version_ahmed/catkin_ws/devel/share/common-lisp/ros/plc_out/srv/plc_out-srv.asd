
(cl:in-package :asdf)

(defsystem "plc_out-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "outputs" :depends-on ("_package_outputs"))
    (:file "_package_outputs" :depends-on ("_package"))
  ))