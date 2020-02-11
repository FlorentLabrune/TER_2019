// Auto-generated. Do not edit!

// (in-package plc_out.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class outputsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data_out_module = null;
      this.data_out_position = null;
      this.data_out_value = null;
    }
    else {
      if (initObj.hasOwnProperty('data_out_module')) {
        this.data_out_module = initObj.data_out_module
      }
      else {
        this.data_out_module = 0;
      }
      if (initObj.hasOwnProperty('data_out_position')) {
        this.data_out_position = initObj.data_out_position
      }
      else {
        this.data_out_position = 0;
      }
      if (initObj.hasOwnProperty('data_out_value')) {
        this.data_out_value = initObj.data_out_value
      }
      else {
        this.data_out_value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type outputsRequest
    // Serialize message field [data_out_module]
    bufferOffset = _serializer.int8(obj.data_out_module, buffer, bufferOffset);
    // Serialize message field [data_out_position]
    bufferOffset = _serializer.int16(obj.data_out_position, buffer, bufferOffset);
    // Serialize message field [data_out_value]
    bufferOffset = _serializer.bool(obj.data_out_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type outputsRequest
    let len;
    let data = new outputsRequest(null);
    // Deserialize message field [data_out_module]
    data.data_out_module = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [data_out_position]
    data.data_out_position = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [data_out_value]
    data.data_out_value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plc_out/outputsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f395eff070e43eb81cba235ff59111a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 data_out_module
    int16 data_out_position
    bool data_out_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new outputsRequest(null);
    if (msg.data_out_module !== undefined) {
      resolved.data_out_module = msg.data_out_module;
    }
    else {
      resolved.data_out_module = 0
    }

    if (msg.data_out_position !== undefined) {
      resolved.data_out_position = msg.data_out_position;
    }
    else {
      resolved.data_out_position = 0
    }

    if (msg.data_out_value !== undefined) {
      resolved.data_out_value = msg.data_out_value;
    }
    else {
      resolved.data_out_value = false
    }

    return resolved;
    }
};

class outputsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback_out = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback_out')) {
        this.feedback_out = initObj.feedback_out
      }
      else {
        this.feedback_out = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type outputsResponse
    // Serialize message field [feedback_out]
    bufferOffset = _serializer.string(obj.feedback_out, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type outputsResponse
    let len;
    let data = new outputsResponse(null);
    // Deserialize message field [feedback_out]
    data.feedback_out = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.feedback_out.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plc_out/outputsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcdceee3a74b2fb5d19ad48da0766c7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string feedback_out
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new outputsResponse(null);
    if (msg.feedback_out !== undefined) {
      resolved.feedback_out = msg.feedback_out;
    }
    else {
      resolved.feedback_out = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: outputsRequest,
  Response: outputsResponse,
  md5sum() { return '97aea7623ae837c55d5e85ee1aae84af'; },
  datatype() { return 'plc_out/outputs'; }
};
