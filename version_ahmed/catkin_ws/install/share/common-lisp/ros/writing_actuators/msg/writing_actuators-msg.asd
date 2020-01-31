
(cl:in-package :asdf)

(defsystem "writing_actuators-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "actuators" :depends-on ("_package_actuators"))
    (:file "_package_actuators" :depends-on ("_package"))
  ))