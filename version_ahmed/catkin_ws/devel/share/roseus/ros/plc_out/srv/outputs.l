;; Auto-generated. Do not edit!


(when (boundp 'plc_out::outputs)
  (if (not (find-package "PLC_OUT"))
    (make-package "PLC_OUT"))
  (shadow 'outputs (find-package "PLC_OUT")))
(unless (find-package "PLC_OUT::OUTPUTS")
  (make-package "PLC_OUT::OUTPUTS"))
(unless (find-package "PLC_OUT::OUTPUTSREQUEST")
  (make-package "PLC_OUT::OUTPUTSREQUEST"))
(unless (find-package "PLC_OUT::OUTPUTSRESPONSE")
  (make-package "PLC_OUT::OUTPUTSRESPONSE"))

(in-package "ROS")





(defclass plc_out::outputsRequest
  :super ros::object
  :slots (_data_out_module _data_out_position _data_out_value ))

(defmethod plc_out::outputsRequest
  (:init
   (&key
    ((:data_out_module __data_out_module) 0)
    ((:data_out_position __data_out_position) 0)
    ((:data_out_value __data_out_value) nil)
    )
   (send-super :init)
   (setq _data_out_module (round __data_out_module))
   (setq _data_out_position (round __data_out_position))
   (setq _data_out_value __data_out_value)
   self)
  (:data_out_module
   (&optional __data_out_module)
   (if __data_out_module (setq _data_out_module __data_out_module)) _data_out_module)
  (:data_out_position
   (&optional __data_out_position)
   (if __data_out_position (setq _data_out_position __data_out_position)) _data_out_position)
  (:data_out_value
   (&optional __data_out_value)
   (if __data_out_value (setq _data_out_value __data_out_value)) _data_out_value)
  (:serialization-length
   ()
   (+
    ;; int8 _data_out_module
    1
    ;; int16 _data_out_position
    2
    ;; bool _data_out_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _data_out_module
       (write-byte _data_out_module s)
     ;; int16 _data_out_position
       (write-word _data_out_position s)
     ;; bool _data_out_value
       (if _data_out_value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _data_out_module
     (setq _data_out_module (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _data_out_module 127) (setq _data_out_module (- _data_out_module 256)))
   ;; int16 _data_out_position
     (setq _data_out_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _data_out_value
     (setq _data_out_value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass plc_out::outputsResponse
  :super ros::object
  :slots (_feedback_out ))

(defmethod plc_out::outputsResponse
  (:init
   (&key
    ((:feedback_out __feedback_out) "")
    )
   (send-super :init)
   (setq _feedback_out (string __feedback_out))
   self)
  (:feedback_out
   (&optional __feedback_out)
   (if __feedback_out (setq _feedback_out __feedback_out)) _feedback_out)
  (:serialization-length
   ()
   (+
    ;; string _feedback_out
    4 (length _feedback_out)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback_out
       (write-long (length _feedback_out) s) (princ _feedback_out s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback_out
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback_out (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass plc_out::outputs
  :super ros::object
  :slots ())

(setf (get plc_out::outputs :md5sum-) "97aea7623ae837c55d5e85ee1aae84af")
(setf (get plc_out::outputs :datatype-) "plc_out/outputs")
(setf (get plc_out::outputs :request) plc_out::outputsRequest)
(setf (get plc_out::outputs :response) plc_out::outputsResponse)

(defmethod plc_out::outputsRequest
  (:response () (instance plc_out::outputsResponse :init)))

(setf (get plc_out::outputsRequest :md5sum-) "97aea7623ae837c55d5e85ee1aae84af")
(setf (get plc_out::outputsRequest :datatype-) "plc_out/outputsRequest")
(setf (get plc_out::outputsRequest :definition-)
      "int8 data_out_module
int16 data_out_position
bool data_out_value
---
string feedback_out

")

(setf (get plc_out::outputsResponse :md5sum-) "97aea7623ae837c55d5e85ee1aae84af")
(setf (get plc_out::outputsResponse :datatype-) "plc_out/outputsResponse")
(setf (get plc_out::outputsResponse :definition-)
      "int8 data_out_module
int16 data_out_position
bool data_out_value
---
string feedback_out

")



(provide :plc_out/outputs "97aea7623ae837c55d5e85ee1aae84af")


