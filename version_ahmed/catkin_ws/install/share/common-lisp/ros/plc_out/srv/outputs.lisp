; Auto-generated. Do not edit!


(cl:in-package plc_out-srv)


;//! \htmlinclude outputs-request.msg.html

(cl:defclass <outputs-request> (roslisp-msg-protocol:ros-message)
  ((data_out_module
    :reader data_out_module
    :initarg :data_out_module
    :type cl:fixnum
    :initform 0)
   (data_out_position
    :reader data_out_position
    :initarg :data_out_position
    :type cl:fixnum
    :initform 0)
   (data_out_value
    :reader data_out_value
    :initarg :data_out_value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass outputs-request (<outputs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <outputs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'outputs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plc_out-srv:<outputs-request> is deprecated: use plc_out-srv:outputs-request instead.")))

(cl:ensure-generic-function 'data_out_module-val :lambda-list '(m))
(cl:defmethod data_out_module-val ((m <outputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plc_out-srv:data_out_module-val is deprecated.  Use plc_out-srv:data_out_module instead.")
  (data_out_module m))

(cl:ensure-generic-function 'data_out_position-val :lambda-list '(m))
(cl:defmethod data_out_position-val ((m <outputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plc_out-srv:data_out_position-val is deprecated.  Use plc_out-srv:data_out_position instead.")
  (data_out_position m))

(cl:ensure-generic-function 'data_out_value-val :lambda-list '(m))
(cl:defmethod data_out_value-val ((m <outputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plc_out-srv:data_out_value-val is deprecated.  Use plc_out-srv:data_out_value instead.")
  (data_out_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <outputs-request>) ostream)
  "Serializes a message object of type '<outputs-request>"
  (cl:let* ((signed (cl:slot-value msg 'data_out_module)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'data_out_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data_out_value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <outputs-request>) istream)
  "Deserializes a message object of type '<outputs-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_out_module) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_out_position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'data_out_value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<outputs-request>)))
  "Returns string type for a service object of type '<outputs-request>"
  "plc_out/outputsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'outputs-request)))
  "Returns string type for a service object of type 'outputs-request"
  "plc_out/outputsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<outputs-request>)))
  "Returns md5sum for a message object of type '<outputs-request>"
  "97aea7623ae837c55d5e85ee1aae84af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'outputs-request)))
  "Returns md5sum for a message object of type 'outputs-request"
  "97aea7623ae837c55d5e85ee1aae84af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<outputs-request>)))
  "Returns full string definition for message of type '<outputs-request>"
  (cl:format cl:nil "int8 data_out_module~%int16 data_out_position~%bool data_out_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'outputs-request)))
  "Returns full string definition for message of type 'outputs-request"
  (cl:format cl:nil "int8 data_out_module~%int16 data_out_position~%bool data_out_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <outputs-request>))
  (cl:+ 0
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <outputs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'outputs-request
    (cl:cons ':data_out_module (data_out_module msg))
    (cl:cons ':data_out_position (data_out_position msg))
    (cl:cons ':data_out_value (data_out_value msg))
))
;//! \htmlinclude outputs-response.msg.html

(cl:defclass <outputs-response> (roslisp-msg-protocol:ros-message)
  ((feedback_out
    :reader feedback_out
    :initarg :feedback_out
    :type cl:string
    :initform ""))
)

(cl:defclass outputs-response (<outputs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <outputs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'outputs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plc_out-srv:<outputs-response> is deprecated: use plc_out-srv:outputs-response instead.")))

(cl:ensure-generic-function 'feedback_out-val :lambda-list '(m))
(cl:defmethod feedback_out-val ((m <outputs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plc_out-srv:feedback_out-val is deprecated.  Use plc_out-srv:feedback_out instead.")
  (feedback_out m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <outputs-response>) ostream)
  "Serializes a message object of type '<outputs-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback_out))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <outputs-response>) istream)
  "Deserializes a message object of type '<outputs-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback_out) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback_out) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<outputs-response>)))
  "Returns string type for a service object of type '<outputs-response>"
  "plc_out/outputsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'outputs-response)))
  "Returns string type for a service object of type 'outputs-response"
  "plc_out/outputsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<outputs-response>)))
  "Returns md5sum for a message object of type '<outputs-response>"
  "97aea7623ae837c55d5e85ee1aae84af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'outputs-response)))
  "Returns md5sum for a message object of type 'outputs-response"
  "97aea7623ae837c55d5e85ee1aae84af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<outputs-response>)))
  "Returns full string definition for message of type '<outputs-response>"
  (cl:format cl:nil "string feedback_out~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'outputs-response)))
  "Returns full string definition for message of type 'outputs-response"
  (cl:format cl:nil "string feedback_out~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <outputs-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'feedback_out))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <outputs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'outputs-response
    (cl:cons ':feedback_out (feedback_out msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'outputs)))
  'outputs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'outputs)))
  'outputs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'outputs)))
  "Returns string type for a service object of type '<outputs>"
  "plc_out/outputs")