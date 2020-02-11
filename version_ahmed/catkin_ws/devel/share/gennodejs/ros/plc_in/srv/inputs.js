// Auto-generated. Do not edit!

// (in-package plc_in.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class inputsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data_in_module = null;
      this.data_in_position = null;
      this.data_in_value = null;
    }
    else {
      if (initObj.hasOwnProperty('data_in_module')) {
        this.data_in_module = initObj.data_in_module
      }
      else {
        this.data_in_module = 0;
      }
      if (initObj.hasOwnProperty('data_in_position')) {
        this.data_in_position = initObj.data_in_position
      }
      else {
        this.data_in_position = 0;
      }
      if (initObj.hasOwnProperty('data_in_value')) {
        this.data_in_value = initObj.data_in_value
      }
      else {
        this.data_in_value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type inputsRequest
    // Serialize message field [data_in_module]
    bufferOffset = _serializer.int8(obj.data_in_module, buffer, bufferOffset);
    // Serialize message field [data_in_position]
    bufferOffset = _serializer.int16(obj.data_in_position, buffer, bufferOffset);
    // Serialize message field [data_in_value]
    bufferOffset = _serializer.bool(obj.data_in_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type inputsRequest
    let len;
    let data = new inputsRequest(null);
    // Deserialize message field [data_in_module]
    data.data_in_module = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [data_in_position]
    data.data_in_position = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [data_in_value]
    data.data_in_value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plc_in/inputsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9b47e75f04e0263368b339eff5b1ef4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 data_in_module
    int16 data_in_position
    bool data_in_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new inputsRequest(null);
    if (msg.data_in_module !== undefined) {
      resolved.data_in_module = msg.data_in_module;
    }
    else {
      resolved.data_in_module = 0
    }

    if (msg.data_in_position !== undefined) {
      resolved.data_in_position = msg.data_in_position;
    }
    else {
      resolved.data_in_position = 0
    }

    if (msg.data_in_value !== undefined) {
      resolved.data_in_value = msg.data_in_value;
    }
    else {
      resolved.data_in_value = false
    }

    return resolved;
    }
};

class inputsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback_in = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback_in')) {
        this.feedback_in = initObj.feedback_in
      }
      else {
        this.feedback_in = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type inputsResponse
    // Serialize message field [feedback_in]
    bufferOffset = _serializer.string(obj.feedback_in, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type inputsResponse
    let len;
    let data = new inputsResponse(null);
    // Deserialize message field [feedback_in]
    data.feedback_in = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.feedback_in.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plc_in/inputsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b9ea0bcecaca315be305f10ed29ab78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string feedback_in
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new inputsResponse(null);
    if (msg.feedback_in !== undefined) {
      resolved.feedback_in = msg.feedback_in;
    }
    else {
      resolved.feedback_in = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: inputsRequest,
  Response: inputsResponse,
  md5sum() { return '6c3d38f17dcca133524ecb0488107900'; },
  datatype() { return 'plc_in/inputs'; }
};
