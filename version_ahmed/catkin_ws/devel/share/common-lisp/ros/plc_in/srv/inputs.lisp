; Auto-generated. Do not edit!


(cl:in-package plc_in-srv)


;//! \htmlinclude inputs-request.msg.html

(cl:defclass <inputs-request> (roslisp-msg-protocol:ros-message)
  ((data_in_module
    :reader data_in_module
    :initarg :data_in_module
    :type cl:fixnum
    :initform 0)
   (data_in_position
    :reader data_in_position
    :initarg :data_in_position
    :type cl:fixnum
    :initform 0)
   (data_in_value
    :reader data_in_value
    :initarg :data_in_value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass inputs-request (<inputs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inputs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inputs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plc_in-srv:<inputs-request> is deprecated: use plc_in-srv:inputs-request instead.")))

(cl:ensure-generic-function 'data_in_module-val :lambda-list '(m))
(cl:defmethod data_in_module-val ((m <inputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plc_in-srv:data_in_module-val is deprecated.  Use plc_in-srv:data_in_module instead.")
  (data_in_module m))

(cl:ensure-generic-function 'data_in_position-val :lambda-list '(m))
(cl:defmethod data_in_position-val ((m <inputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plc_in-srv:data_in_position-val is deprecated.  Use plc_in-srv:data_in_position instead.")
  (data_in_position m))

(cl:ensure-generic-function 'data_in_value-val :lambda-list '(m))
(cl:defmethod data_in_value-val ((m <inputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plc_in-srv:data_in_value-val is deprecated.  Use plc_in-srv:data_in_value instead.")
  (data_in_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inputs-request>) ostream)
  "Serializes a message object of type '<inputs-request>"
  (cl:let* ((signed (cl:slot-value msg 'data_in_module)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'data_in_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data_in_value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inputs-request>) istream)
  "Deserializes a message object of type '<inputs-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_in_module) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_in_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'data_in_value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inputs-request>)))
  "Returns string type for a service object of type '<inputs-request>"
  "plc_in/inputsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inputs-request)))
  "Returns string type for a service object of type 'inputs-request"
  "plc_in/inputsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inputs-request>)))
  "Returns md5sum for a message object of type '<inputs-request>"
  "6c3d38f17dcca133524ecb0488107900")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inputs-request)))
  "Returns md5sum for a message object of type 'inputs-request"
  "6c3d38f17dcca133524ecb0488107900")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inputs-request>)))
  "Returns full string definition for message of type '<inputs-request>"
  (cl:format cl:nil "int8 data_in_module~%int16 data_in_position~%bool data_in_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inputs-request)))
  "Returns full string definition for message of type 'inputs-request"
  (cl:format cl:nil "int8 data_in_module~%int16 data_in_position~%bool data_in_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inputs-request>))
  (cl:+ 0
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inputs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'inputs-request
    (cl:cons ':data_in_module (data_in_module msg))
    (cl:cons ':data_in_position (data_in_position msg))
    (cl:cons ':data_in_value (data_in_value msg))
))
;//! \htmlinclude inputs-response.msg.html

(cl:defclass <inputs-response> (roslisp-msg-protocol:ros-message)
  ((feedback_in
    :reader feedback_in
    :initarg :feedback_in
    :type cl:string
    :initform ""))
)

(cl:defclass inputs-response (<inputs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inputs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inputs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plc_in-srv:<inputs-response> is deprecated: use plc_in-srv:inputs-response instead.")))

(cl:ensure-generic-function 'feedback_in-val :lambda-list '(m))
(cl:defmethod feedback_in-val ((m <inputs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plc_in-srv:feedback_in-val is deprecated.  Use plc_in-srv:feedback_in instead.")
  (feedback_in m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inputs-response>) ostream)
  "Serializes a message object of type '<inputs-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback_in))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback_in))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inputs-response>) istream)
  "Deserializes a message object of type '<inputs-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback_in) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback_in) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inputs-response>)))
  "Returns string type for a service object of type '<inputs-response>"
  "plc_in/inputsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inputs-response)))
  "Returns string type for a service object of type 'inputs-response"
  "plc_in/inputsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inputs-response>)))
  "Returns md5sum for a message object of type '<inputs-response>"
  "6c3d38f17dcca133524ecb0488107900")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inputs-response)))
  "Returns md5sum for a message object of type 'inputs-response"
  "6c3d38f17dcca133524ecb0488107900")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inputs-response>)))
  "Returns full string definition for message of type '<inputs-response>"
  (cl:format cl:nil "string feedback_in~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inputs-response)))
  "Returns full string definition for message of type 'inputs-response"
  (cl:format cl:nil "string feedback_in~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inputs-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'feedback_in))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inputs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'inputs-response
    (cl:cons ':feedback_in (feedback_in msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'inputs)))
  'inputs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'inputs)))
  'inputs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inputs)))
  "Returns string type for a service object of type '<inputs>"
  "plc_in/inputs")