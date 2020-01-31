; Auto-generated. Do not edit!


(cl:in-package writing_actuators-msg)


;//! \htmlinclude actuators.msg.html

(cl:defclass <actuators> (roslisp-msg-protocol:ros-message)
  ((actuators_data
    :reader actuators_data
    :initarg :actuators_data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass actuators (<actuators>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <actuators>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'actuators)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name writing_actuators-msg:<actuators> is deprecated: use writing_actuators-msg:actuators instead.")))

(cl:ensure-generic-function 'actuators_data-val :lambda-list '(m))
(cl:defmethod actuators_data-val ((m <actuators>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader writing_actuators-msg:actuators_data-val is deprecated.  Use writing_actuators-msg:actuators_data instead.")
  (actuators_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <actuators>) ostream)
  "Serializes a message object of type '<actuators>"
  (cl:let* ((signed (cl:slot-value msg 'actuators_data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <actuators>) istream)
  "Deserializes a message object of type '<actuators>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actuators_data) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<actuators>)))
  "Returns string type for a message object of type '<actuators>"
  "writing_actuators/actuators")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'actuators)))
  "Returns string type for a message object of type 'actuators"
  "writing_actuators/actuators")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<actuators>)))
  "Returns md5sum for a message object of type '<actuators>"
  "4184e61fb7b8891ca90bb2790b008543")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'actuators)))
  "Returns md5sum for a message object of type 'actuators"
  "4184e61fb7b8891ca90bb2790b008543")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<actuators>)))
  "Returns full string definition for message of type '<actuators>"
  (cl:format cl:nil "int16 actuators_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'actuators)))
  "Returns full string definition for message of type 'actuators"
  (cl:format cl:nil "int16 actuators_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <actuators>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <actuators>))
  "Converts a ROS message object to a list"
  (cl:list 'actuators
    (cl:cons ':actuators_data (actuators_data msg))
))
