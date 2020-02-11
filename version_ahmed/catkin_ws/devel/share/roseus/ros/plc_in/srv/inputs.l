;; Auto-generated. Do not edit!


(when (boundp 'plc_in::inputs)
  (if (not (find-package "PLC_IN"))
    (make-package "PLC_IN"))
  (shadow 'inputs (find-package "PLC_IN")))
(unless (find-package "PLC_IN::INPUTS")
  (make-package "PLC_IN::INPUTS"))
(unless (find-package "PLC_IN::INPUTSREQUEST")
  (make-package "PLC_IN::INPUTSREQUEST"))
(unless (find-package "PLC_IN::INPUTSRESPONSE")
  (make-package "PLC_IN::INPUTSRESPONSE"))

(in-package "ROS")





(defclass plc_in::inputsRequest
  :super ros::object
  :slots (_data_in_module _data_in_position _data_in_value ))

(defmethod plc_in::inputsRequest
  (:init
   (&key
    ((:data_in_module __data_in_module) 0)
    ((:data_in_position __data_in_position) 0)
    ((:data_in_value __data_in_value) nil)
    )
   (send-super :init)
   (setq _data_in_module (round __data_in_module))
   (setq _data_in_position (round __data_in_position))
   (setq _data_in_value __data_in_value)
   self)
  (:data_in_module
   (&optional __data_in_module)
   (if __data_in_module (setq _data_in_module __data_in_module)) _data_in_module)
  (:data_in_position
   (&optional __data_in_position)
   (if __data_in_position (setq _data_in_position __data_in_position)) _data_in_position)
  (:data_in_value
   (&optional __data_in_value)
   (if __data_in_value (setq _data_in_value __data_in_value)) _data_in_value)
  (:serialization-length
   ()
   (+
    ;; int8 _data_in_module
    1
    ;; int16 _data_in_position
    2
    ;; bool _data_in_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _data_in_module
       (write-byte _data_in_module s)
     ;; int16 _data_in_position
       (write-word _data_in_position s)
     ;; bool _data_in_value
       (if _data_in_value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _data_in_module
     (setq _data_in_module (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _data_in_module 127) (setq _data_in_module (- _data_in_module 256)))
   ;; int16 _data_in_position
     (setq _data_in_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _data_in_value
     (setq _data_in_value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass plc_in::inputsResponse
  :super ros::object
  :slots (_feedback_in ))

(defmethod plc_in::inputsResponse
  (:init
   (&key
    ((:feedback_in __feedback_in) "")
    )
   (send-super :init)
   (setq _feedback_in (string __feedback_in))
   self)
  (:feedback_in
   (&optional __feedback_in)
   (if __feedback_in (setq _feedback_in __feedback_in)) _feedback_in)
  (:serialization-length
   ()
   (+
    ;; string _feedback_in
    4 (length _feedback_in)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback_in
       (write-long (length _feedback_in) s) (princ _feedback_in s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback_in
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback_in (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass plc_in::inputs
  :super ros::object
  :slots ())

(setf (get plc_in::inputs :md5sum-) "6c3d38f17dcca133524ecb0488107900")
(setf (get plc_in::inputs :datatype-) "plc_in/inputs")
(setf (get plc_in::inputs :request) plc_in::inputsRequest)
(setf (get plc_in::inputs :response) plc_in::inputsResponse)

(defmethod plc_in::inputsRequest
  (:response () (instance plc_in::inputsResponse :init)))

(setf (get plc_in::inputsRequest :md5sum-) "6c3d38f17dcca133524ecb0488107900")
(setf (get plc_in::inputsRequest :datatype-) "plc_in/inputsRequest")
(setf (get plc_in::inputsRequest :definition-)
      "int8 data_in_module
int16 data_in_position
bool data_in_value
---
string feedback_in

")

(setf (get plc_in::inputsResponse :md5sum-) "6c3d38f17dcca133524ecb0488107900")
(setf (get plc_in::inputsResponse :datatype-) "plc_in/inputsResponse")
(setf (get plc_in::inputsResponse :definition-)
      "int8 data_in_module
int16 data_in_position
bool data_in_value
---
string feedback_in

")



(provide :plc_in/inputs "6c3d38f17dcca133524ecb0488107900")


