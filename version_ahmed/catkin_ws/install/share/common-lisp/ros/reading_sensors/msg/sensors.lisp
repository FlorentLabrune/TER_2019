; Auto-generated. Do not edit!


(cl:in-package reading_sensors-msg)


;//! \htmlinclude sensors.msg.html

(cl:defclass <sensors> (roslisp-msg-protocol:ros-message)
  ((sensors_data
    :reader sensors_data
    :initarg :sensors_data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass sensors (<sensors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reading_sensors-msg:<sensors> is deprecated: use reading_sensors-msg:sensors instead.")))

(cl:ensure-generic-function 'sensors_data-val :lambda-list '(m))
(cl:defmethod sensors_data-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reading_sensors-msg:sensors_data-val is deprecated.  Use reading_sensors-msg:sensors_data instead.")
  (sensors_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensors>) ostream)
  "Serializes a message object of type '<sensors>"
  (cl:let* ((signed (cl:slot-value msg 'sensors_data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensors>) istream)
  "Deserializes a message object of type '<sensors>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensors_data) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensors>)))
  "Returns string type for a message object of type '<sensors>"
  "reading_sensors/sensors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensors)))
  "Returns string type for a message object of type 'sensors"
  "reading_sensors/sensors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensors>)))
  "Returns md5sum for a message object of type '<sensors>"
  "1b6ffe1aca3f59adbad300aae9fa69b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensors)))
  "Returns md5sum for a message object of type 'sensors"
  "1b6ffe1aca3f59adbad300aae9fa69b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensors>)))
  "Returns full string definition for message of type '<sensors>"
  (cl:format cl:nil "int16 sensors_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensors)))
  "Returns full string definition for message of type 'sensors"
  (cl:format cl:nil "int16 sensors_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensors>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensors>))
  "Converts a ROS message object to a list"
  (cl:list 'sensors
    (cl:cons ':sensors_data (sensors_data msg))
))
