
"use strict";

let simRosGetJointState = require('./simRosGetJointState.js')
let simRosBreakForceSensor = require('./simRosBreakForceSensor.js')
let simRosGetObjectParent = require('./simRosGetObjectParent.js')
let simRosAppendStringSignal = require('./simRosAppendStringSignal.js')
let simRosSetJointTargetPosition = require('./simRosSetJointTargetPosition.js')
let simRosGetObjectPose = require('./simRosGetObjectPose.js')
let simRosGetVisionSensorDepthBuffer = require('./simRosGetVisionSensorDepthBuffer.js')
let simRosReadForceSensor = require('./simRosReadForceSensor.js')
let simRosSetJointState = require('./simRosSetJointState.js')
let simRosSetObjectQuaternion = require('./simRosSetObjectQuaternion.js')
let simRosRemoveObject = require('./simRosRemoveObject.js')
let simRosSetIntegerSignal = require('./simRosSetIntegerSignal.js')
let simRosSynchronousTrigger = require('./simRosSynchronousTrigger.js')
let simRosSetObjectParent = require('./simRosSetObjectParent.js')
let simRosSetUISlider = require('./simRosSetUISlider.js')
let simRosAuxiliaryConsoleShow = require('./simRosAuxiliaryConsoleShow.js')
let simRosTransferFile = require('./simRosTransferFile.js')
let simRosSetJointForce = require('./simRosSetJointForce.js')
let simRosSetVisionSensorImage = require('./simRosSetVisionSensorImage.js')
let simRosReadProximitySensor = require('./simRosReadProximitySensor.js')
let simRosSetStringSignal = require('./simRosSetStringSignal.js')
let simRosDisablePublisher = require('./simRosDisablePublisher.js')
let simRosGetDistanceHandle = require('./simRosGetDistanceHandle.js')
let simRosSetObjectSelection = require('./simRosSetObjectSelection.js')
let simRosLoadModel = require('./simRosLoadModel.js')
let simRosReadCollision = require('./simRosReadCollision.js')
let simRosGetModelProperty = require('./simRosGetModelProperty.js')
let simRosSetUIButtonLabel = require('./simRosSetUIButtonLabel.js')
let simRosSetBooleanParameter = require('./simRosSetBooleanParameter.js')
let simRosEnableSubscriber = require('./simRosEnableSubscriber.js')
let simRosSynchronous = require('./simRosSynchronous.js')
let simRosClearStringSignal = require('./simRosClearStringSignal.js')
let simRosGetArrayParameter = require('./simRosGetArrayParameter.js')
let simRosGetObjectFloatParameter = require('./simRosGetObjectFloatParameter.js')
let simRosGetFloatSignal = require('./simRosGetFloatSignal.js')
let simRosEndDialog = require('./simRosEndDialog.js')
let simRosGetStringSignal = require('./simRosGetStringSignal.js')
let simRosSetIntegerParameter = require('./simRosSetIntegerParameter.js')
let simRosReadVisionSensor = require('./simRosReadVisionSensor.js')
let simRosSetJointTargetVelocity = require('./simRosSetJointTargetVelocity.js')
let simRosGetIntegerSignal = require('./simRosGetIntegerSignal.js')
let simRosSetModelProperty = require('./simRosSetModelProperty.js')
let simRosSetFloatSignal = require('./simRosSetFloatSignal.js')
let simRosGetBooleanParameter = require('./simRosGetBooleanParameter.js')
let simRosClearIntegerSignal = require('./simRosClearIntegerSignal.js')
let simRosGetLastErrors = require('./simRosGetLastErrors.js')
let simRosGetDialogInput = require('./simRosGetDialogInput.js')
let simRosCopyPasteObjects = require('./simRosCopyPasteObjects.js')
let simRosGetCollisionHandle = require('./simRosGetCollisionHandle.js')
let simRosGetObjects = require('./simRosGetObjects.js')
let simRosRemoveUI = require('./simRosRemoveUI.js')
let simRosLoadUI = require('./simRosLoadUI.js')
let simRosSetJointPosition = require('./simRosSetJointPosition.js')
let simRosDisableSubscriber = require('./simRosDisableSubscriber.js')
let simRosGetVisionSensorImage = require('./simRosGetVisionSensorImage.js')
let simRosGetCollectionHandle = require('./simRosGetCollectionHandle.js')
let simRosGetIntegerParameter = require('./simRosGetIntegerParameter.js')
let simRosSetArrayParameter = require('./simRosSetArrayParameter.js')
let simRosCreateDummy = require('./simRosCreateDummy.js')
let simRosGetObjectSelection = require('./simRosGetObjectSelection.js')
let simRosSetFloatingParameter = require('./simRosSetFloatingParameter.js')
let simRosAddStatusbarMessage = require('./simRosAddStatusbarMessage.js')
let simRosSetObjectPosition = require('./simRosSetObjectPosition.js')
let simRosSetObjectPose = require('./simRosSetObjectPose.js')
let simRosRemoveModel = require('./simRosRemoveModel.js')
let simRosClearFloatSignal = require('./simRosClearFloatSignal.js')
let simRosGetObjectGroupData = require('./simRosGetObjectGroupData.js')
let simRosSetObjectIntParameter = require('./simRosSetObjectIntParameter.js')
let simRosGetObjectChild = require('./simRosGetObjectChild.js')
let simRosAuxiliaryConsoleOpen = require('./simRosAuxiliaryConsoleOpen.js')
let simRosSetSphericalJointMatrix = require('./simRosSetSphericalJointMatrix.js')
let simRosCloseScene = require('./simRosCloseScene.js')
let simRosLoadScene = require('./simRosLoadScene.js')
let simRosDisplayDialog = require('./simRosDisplayDialog.js')
let simRosPauseSimulation = require('./simRosPauseSimulation.js')
let simRosGetFloatingParameter = require('./simRosGetFloatingParameter.js')
let simRosGetUIEventButton = require('./simRosGetUIEventButton.js')
let simRosEnablePublisher = require('./simRosEnablePublisher.js')
let simRosGetJointMatrix = require('./simRosGetJointMatrix.js')
let simRosGetUIButtonProperty = require('./simRosGetUIButtonProperty.js')
let simRosSetObjectFloatParameter = require('./simRosSetObjectFloatParameter.js')
let simRosGetStringParameter = require('./simRosGetStringParameter.js')
let simRosSetUIButtonProperty = require('./simRosSetUIButtonProperty.js')
let simRosAuxiliaryConsoleClose = require('./simRosAuxiliaryConsoleClose.js')
let simRosEraseFile = require('./simRosEraseFile.js')
let simRosGetInfo = require('./simRosGetInfo.js')
let simRosReadDistance = require('./simRosReadDistance.js')
let simRosGetObjectIntParameter = require('./simRosGetObjectIntParameter.js')
let simRosAuxiliaryConsolePrint = require('./simRosAuxiliaryConsolePrint.js')
let simRosStopSimulation = require('./simRosStopSimulation.js')
let simRosGetUIHandle = require('./simRosGetUIHandle.js')
let simRosGetObjectHandle = require('./simRosGetObjectHandle.js')
let simRosGetDialogResult = require('./simRosGetDialogResult.js')
let simRosStartSimulation = require('./simRosStartSimulation.js')
let simRosGetAndClearStringSignal = require('./simRosGetAndClearStringSignal.js')
let simRosGetUISlider = require('./simRosGetUISlider.js')

module.exports = {
  simRosGetJointState: simRosGetJointState,
  simRosBreakForceSensor: simRosBreakForceSensor,
  simRosGetObjectParent: simRosGetObjectParent,
  simRosAppendStringSignal: simRosAppendStringSignal,
  simRosSetJointTargetPosition: simRosSetJointTargetPosition,
  simRosGetObjectPose: simRosGetObjectPose,
  simRosGetVisionSensorDepthBuffer: simRosGetVisionSensorDepthBuffer,
  simRosReadForceSensor: simRosReadForceSensor,
  simRosSetJointState: simRosSetJointState,
  simRosSetObjectQuaternion: simRosSetObjectQuaternion,
  simRosRemoveObject: simRosRemoveObject,
  simRosSetIntegerSignal: simRosSetIntegerSignal,
  simRosSynchronousTrigger: simRosSynchronousTrigger,
  simRosSetObjectParent: simRosSetObjectParent,
  simRosSetUISlider: simRosSetUISlider,
  simRosAuxiliaryConsoleShow: simRosAuxiliaryConsoleShow,
  simRosTransferFile: simRosTransferFile,
  simRosSetJointForce: simRosSetJointForce,
  simRosSetVisionSensorImage: simRosSetVisionSensorImage,
  simRosReadProximitySensor: simRosReadProximitySensor,
  simRosSetStringSignal: simRosSetStringSignal,
  simRosDisablePublisher: simRosDisablePublisher,
  simRosGetDistanceHandle: simRosGetDistanceHandle,
  simRosSetObjectSelection: simRosSetObjectSelection,
  simRosLoadModel: simRosLoadModel,
  simRosReadCollision: simRosReadCollision,
  simRosGetModelProperty: simRosGetModelProperty,
  simRosSetUIButtonLabel: simRosSetUIButtonLabel,
  simRosSetBooleanParameter: simRosSetBooleanParameter,
  simRosEnableSubscriber: simRosEnableSubscriber,
  simRosSynchronous: simRosSynchronous,
  simRosClearStringSignal: simRosClearStringSignal,
  simRosGetArrayParameter: simRosGetArrayParameter,
  simRosGetObjectFloatParameter: simRosGetObjectFloatParameter,
  simRosGetFloatSignal: simRosGetFloatSignal,
  simRosEndDialog: simRosEndDialog,
  simRosGetStringSignal: simRosGetStringSignal,
  simRosSetIntegerParameter: simRosSetIntegerParameter,
  simRosReadVisionSensor: simRosReadVisionSensor,
  simRosSetJointTargetVelocity: simRosSetJointTargetVelocity,
  simRosGetIntegerSignal: simRosGetIntegerSignal,
  simRosSetModelProperty: simRosSetModelProperty,
  simRosSetFloatSignal: simRosSetFloatSignal,
  simRosGetBooleanParameter: simRosGetBooleanParameter,
  simRosClearIntegerSignal: simRosClearIntegerSignal,
  simRosGetLastErrors: simRosGetLastErrors,
  simRosGetDialogInput: simRosGetDialogInput,
  simRosCopyPasteObjects: simRosCopyPasteObjects,
  simRosGetCollisionHandle: simRosGetCollisionHandle,
  simRosGetObjects: simRosGetObjects,
  simRosRemoveUI: simRosRemoveUI,
  simRosLoadUI: simRosLoadUI,
  simRosSetJointPosition: simRosSetJointPosition,
  simRosDisableSubscriber: simRosDisableSubscriber,
  simRosGetVisionSensorImage: simRosGetVisionSensorImage,
  simRosGetCollectionHandle: simRosGetCollectionHandle,
  simRosGetIntegerParameter: simRosGetIntegerParameter,
  simRosSetArrayParameter: simRosSetArrayParameter,
  simRosCreateDummy: simRosCreateDummy,
  simRosGetObjectSelection: simRosGetObjectSelection,
  simRosSetFloatingParameter: simRosSetFloatingParameter,
  simRosAddStatusbarMessage: simRosAddStatusbarMessage,
  simRosSetObjectPosition: simRosSetObjectPosition,
  simRosSetObjectPose: simRosSetObjectPose,
  simRosRemoveModel: simRosRemoveModel,
  simRosClearFloatSignal: simRosClearFloatSignal,
  simRosGetObjectGroupData: simRosGetObjectGroupData,
  simRosSetObjectIntParameter: simRosSetObjectIntParameter,
  simRosGetObjectChild: simRosGetObjectChild,
  simRosAuxiliaryConsoleOpen: simRosAuxiliaryConsoleOpen,
  simRosSetSphericalJointMatrix: simRosSetSphericalJointMatrix,
  simRosCloseScene: simRosCloseScene,
  simRosLoadScene: simRosLoadScene,
  simRosDisplayDialog: simRosDisplayDialog,
  simRosPauseSimulation: simRosPauseSimulation,
  simRosGetFloatingParameter: simRosGetFloatingParameter,
  simRosGetUIEventButton: simRosGetUIEventButton,
  simRosEnablePublisher: simRosEnablePublisher,
  simRosGetJointMatrix: simRosGetJointMatrix,
  simRosGetUIButtonProperty: simRosGetUIButtonProperty,
  simRosSetObjectFloatParameter: simRosSetObjectFloatParameter,
  simRosGetStringParameter: simRosGetStringParameter,
  simRosSetUIButtonProperty: simRosSetUIButtonProperty,
  simRosAuxiliaryConsoleClose: simRosAuxiliaryConsoleClose,
  simRosEraseFile: simRosEraseFile,
  simRosGetInfo: simRosGetInfo,
  simRosReadDistance: simRosReadDistance,
  simRosGetObjectIntParameter: simRosGetObjectIntParameter,
  simRosAuxiliaryConsolePrint: simRosAuxiliaryConsolePrint,
  simRosStopSimulation: simRosStopSimulation,
  simRosGetUIHandle: simRosGetUIHandle,
  simRosGetObjectHandle: simRosGetObjectHandle,
  simRosGetDialogResult: simRosGetDialogResult,
  simRosStartSimulation: simRosStartSimulation,
  simRosGetAndClearStringSignal: simRosGetAndClearStringSignal,
  simRosGetUISlider: simRosGetUISlider,
};
