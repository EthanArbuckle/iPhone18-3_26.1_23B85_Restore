@interface CRPairingPromptFlowController
+ (id)_descriptionForStep:(unint64_t)step;
- (BOOL)_hasExistingBluetoothPairing;
- (BOOL)_isMessagingBluetoothConnected;
- (BOOL)_needsBluetoothTurnedOn;
- (BOOL)_needsToWaitOnStartSession;
- (BOOL)_needsWiFiTurnedOn;
- (BOOL)_supportsCarKeys;
- (BOOL)_supportsEnhancedIntegration;
- (BOOL)_supportsOutOfBandPairing;
- (BOOL)_supportsStartSession;
- (BOOL)_supportsThemeAssets;
- (BOOL)_supportsUSB;
- (CRPairingPromptFlowController)init;
- (CRPairingPromptFlowDelegate)promptDelegate;
- (id)_carKeyInfo;
- (unint64_t)_nextStepAfterResponse:(id)response;
- (unint64_t)_outOfBandPairingDeclineCount;
- (void)_dismiss;
- (void)_handleTimedOutWaitingOnMessagingVehicle:(id)vehicle;
- (void)_incrementOutOfBandPairingDeclineCount;
- (void)_performPresentationAction:(id)action;
- (void)_presentAllowWhileLockedPromptWithCompletion:(id)completion;
- (void)_presentAssetProgressPromptWithCompletion:(id)completion;
- (void)_presentAssetReadyPromptWithCompletion:(id)completion;
- (void)_presentAssetReadySoonPromptWithCompletion:(id)completion;
- (void)_presentAssetUnavailablePromptWithCompletion:(id)completion;
- (void)_presentBluetoothConfirmationPromptWithCompletion:(id)completion;
- (void)_presentBluetoothContactsSyncPromptWithCompletion:(id)completion;
- (void)_presentBluetoothFailedPromptWithCompletion:(id)completion;
- (void)_presentCheckSoftwareUpdatesWithCompletion:(id)completion;
- (void)_presentConnectCarPlayFromCarKeyPromptWithCompletion:(id)completion;
- (void)_presentConnectCarPlayPromptWithCompletion:(id)completion;
- (void)_presentEnhancedIntegrationPromptWithCompletion:(id)completion;
- (void)_presentNextStepAfterResponse:(id)response;
- (void)_presentSetupCarKeysWithCompletion:(id)completion;
- (void)_presentUseWirelessCarPlayPromptWithCompletion:(id)completion;
- (void)_presentWaitingOnMessagingPrompt;
- (void)_presentWaitingOnStartSessionPrompt;
- (void)_startWaitingOnMessagingVehicleTimer;
- (void)_stopWaitingOnMessagingVehicleTimer;
- (void)cancel;
- (void)handleBluetoothPairingConfirmationRequestForDeviceIdentifier:(id)identifier vehicleName:(id)name numericCode:(id)code;
- (void)handleBluetoothPairingFailedForDeviceIdentifier:(id)identifier vehicleName:(id)name isTimeout:(BOOL)timeout;
- (void)handleCarKeyInitiatedPairingFailed;
- (void)handleConnectedMessagingVehicle:(id)vehicle pairingAccepted:(id)accepted;
- (void)handleDisconnectedMessagingVehicle:(id)vehicle;
- (void)handleFailedToFindThemeAssetForMessagingVehicle:(id)vehicle shouldOfferSoftwareUpdate:(BOOL)update description:(id)description;
- (void)handleUnsupportedMessagingConnectionForDeviceIdentifier:(id)identifier;
@end

@implementation CRPairingPromptFlowController

+ (id)_descriptionForStep:(unint64_t)step
{
  if (step - 1 > 0x11)
  {
    return @"started";
  }

  else
  {
    return off_1000DEEE0[step - 1];
  }
}

- (CRPairingPromptFlowController)init
{
  v7.receiver = self;
  v7.super_class = CRPairingPromptFlowController;
  v2 = [(CRPairingPromptFlowController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentStep = 0;
    v2->_bluetoothFailureReason = 0;
    pairingAccepted = v2->_pairingAccepted;
    v2->_pairingAccepted = 0;

    receivedStartSessionWithThemeAssetInfo = v3->_receivedStartSessionWithThemeAssetInfo;
    v3->_receivedStartSessionWithThemeAssetInfo = 0;

    v3->_waitingOnMessagingVehicleTimeout = 30.0;
  }

  return v3;
}

- (void)handleBluetoothPairingConfirmationRequestForDeviceIdentifier:(id)identifier vehicleName:(id)name numericCode:(id)code
{
  nameCopy = name;
  codeCopy = code;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v11 = CarPairingLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "received Bluetooth pairing confirmation request, continuing prompt flow", v15, 2u);
  }

  bluetoothDeviceIdentifier = [(CRPairingPromptFlowController *)self bluetoothDeviceIdentifier];
  v13 = [bluetoothDeviceIdentifier isEqualToString:identifierCopy];

  if (v13)
  {
    [(CRPairingPromptFlowController *)self setVehicleName:nameCopy];
    [(CRPairingPromptFlowController *)self setNumericCode:codeCopy];
    if (![(CRPairingPromptFlowController *)self currentStep])
    {
      [(CRPairingPromptFlowController *)self _presentNextStepAfterResponse:0];
    }
  }

  else
  {
    v14 = CarPairingLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100087124();
    }
  }
}

- (void)handleBluetoothPairingFailedForDeviceIdentifier:(id)identifier vehicleName:(id)name isTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  identifierCopy = identifier;
  nameCopy = name;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10 = CarPairingLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received Bluetooth failed, adding failed prompt to flow", v16, 2u);
  }

  bluetoothDeviceIdentifier = [(CRPairingPromptFlowController *)self bluetoothDeviceIdentifier];
  v12 = bluetoothDeviceIdentifier;
  if (bluetoothDeviceIdentifier)
  {
    if (([bluetoothDeviceIdentifier isEqualToString:identifierCopy] & 1) == 0)
    {
      v13 = CarPairingLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100087158();
      }

      goto LABEL_15;
    }
  }

  else
  {
    [(CRPairingPromptFlowController *)self setBluetoothDeviceIdentifier:identifierCopy];
  }

  [(CRPairingPromptFlowController *)self setVehicleName:nameCopy];
  if (timeoutCopy)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [(CRPairingPromptFlowController *)self setBluetoothFailureReason:v14];
  currentStep = [(CRPairingPromptFlowController *)self currentStep];
  if (currentStep <= 5 && ((1 << currentStep) & 0x25) != 0)
  {
    [(CRPairingPromptFlowController *)self _presentNextStepAfterResponse:&__kCFBooleanFalse];
  }

LABEL_15:
}

- (void)handleConnectedMessagingVehicle:(id)vehicle pairingAccepted:(id)accepted
{
  acceptedCopy = accepted;
  vehicleCopy = vehicle;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = CarPairingLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = acceptedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "received messaging connection, continuing prompt flow. pairing accepted: %{public}@", &v11, 0xCu);
  }

  [(CRPairingPromptFlowController *)self setMessagingVehicle:vehicleCopy];
  [(CRPairingPromptFlowController *)self setPairingAccepted:acceptedCopy];
  vehicleName = [vehicleCopy vehicleName];

  [(CRPairingPromptFlowController *)self setVehicleName:vehicleName];
  currentStep = [(CRPairingPromptFlowController *)self currentStep];
  if (currentStep == 5 || !currentStep)
  {
    [(CRPairingPromptFlowController *)self _presentNextStepAfterResponse:&__kCFBooleanTrue];
  }
}

- (void)handleUnsupportedMessagingConnectionForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  bluetoothDeviceIdentifier = [(CRPairingPromptFlowController *)self bluetoothDeviceIdentifier];
  v6 = [bluetoothDeviceIdentifier isEqualToString:identifierCopy];

  v7 = CarPairingLogging();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "received unsupported messaging connection for current prompt flow device, finishing flow", v9, 2u);
    }

    if ([(CRPairingPromptFlowController *)self currentStep]== 5)
    {
      [(CRPairingPromptFlowController *)self _presentNextStepAfterResponse:&__kCFBooleanFalse];
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "received unsupported messaging connection for a device other than current prompt flow device, ignoring", buf, 2u);
    }
  }
}

- (void)handleDisconnectedMessagingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "disconnected messaging connection", buf, 2u);
  }

  messagingVehicle = [(CRPairingPromptFlowController *)self messagingVehicle];
  v7 = [vehicleCopy isEqual:messagingVehicle];

  if (v7)
  {
    if ([vehicleCopy transportType] == 2)
    {
      v8 = CarPairingLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ignoring disconnection for BT messaging connection", v9, 2u);
      }
    }

    else
    {
      [(CRPairingPromptFlowController *)self cancel];
    }
  }
}

- (void)handleFailedToFindThemeAssetForMessagingVehicle:(id)vehicle shouldOfferSoftwareUpdate:(BOOL)update description:(id)description
{
  updateCopy = update;
  descriptionCopy = description;
  vehicleCopy = vehicle;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10 = CarPairingLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (updateCopy)
    {
      v11 = @"YES";
    }

    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to find available asset, should offer software update: %{public}@", &v14, 0xCu);
  }

  messagingVehicle = [(CRPairingPromptFlowController *)self messagingVehicle];
  v13 = [vehicleCopy isEqual:messagingVehicle];

  if (v13)
  {
    [(CRPairingPromptFlowController *)self setAssetUnavailableDescription:descriptionCopy];
    if ([(CRPairingPromptFlowController *)self currentStep]== 12)
    {
      [(CRPairingPromptFlowController *)self _presentNextStepAfterResponse:0];
    }
  }
}

- (void)handleCarKeyInitiatedPairingFailed
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(CRPairingPromptFlowController *)self setBluetoothFailureReason:1];
  if ([(CRPairingPromptFlowController *)self currentStep]== 5)
  {

    [(CRPairingPromptFlowController *)self _presentNextStepAfterResponse:&__kCFBooleanFalse];
  }
}

- (void)cancel
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [objc_opt_class() _isRequiredStep:{-[CRPairingPromptFlowController currentStep](self, "currentStep")}];

  [(CRPairingPromptFlowController *)self _cancelWithRequiredStepsRemaining:v3];
}

- (BOOL)_isMessagingBluetoothConnected
{
  messagingVehicle = [(CRPairingPromptFlowController *)self messagingVehicle];
  v3 = (([messagingVehicle transportType] - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;

  return v3;
}

- (BOOL)_supportsUSB
{
  messagingVehicle = [(CRPairingPromptFlowController *)self messagingVehicle];
  supportsUSBCarPlay = [messagingVehicle supportsUSBCarPlay];

  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (supportsUSBCarPlay)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "supports wired: %@", &v7, 0xCu);
  }

  return supportsUSBCarPlay;
}

- (BOOL)_supportsOutOfBandPairing
{
  messagingVehicle = [(CRPairingPromptFlowController *)self messagingVehicle];
  if ([messagingVehicle supportsWirelessCarPlay])
  {
    supportsWiredBluetoothPairing = [messagingVehicle supportsWiredBluetoothPairing];
  }

  else
  {
    supportsWiredBluetoothPairing = 0;
  }

  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (supportsWiredBluetoothPairing)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "supports OOB: %@", &v7, 0xCu);
  }

  return supportsWiredBluetoothPairing;
}

- (BOOL)_hasExistingBluetoothPairing
{
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [promptDelegate hasExistingBluetoothPairingForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "has existing Bluetooth pairing: %@", &v8, 0xCu);
  }

  return v4;
}

- (BOOL)_supportsEnhancedIntegration
{
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [promptDelegate enhancedIntegrationSupportedForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_supportsStartSession
{
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [promptDelegate startSessionRequestSupportedForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_supportsThemeAssets
{
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [promptDelegate supportsThemeAssetsForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_needsToWaitOnStartSession
{
  if ([(CRPairingPromptFlowController *)self _supportsStartSession])
  {
    return 1;
  }

  return [(CRPairingPromptFlowController *)self _supportsThemeAssets];
}

- (BOOL)_needsBluetoothTurnedOn
{
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [promptDelegate needsBluetoothTurnedOnForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_needsWiFiTurnedOn
{
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [promptDelegate needsWiFiTurnedOnForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_outOfBandPairingDeclineCount
{
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [promptDelegate outOfBandPairingDeclineCountForPairingPromptFlow:self];
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "OOB pairing decline count: %lu", &v7, 0xCu);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_incrementOutOfBandPairingDeclineCount
{
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [promptDelegate incrementOutOfBandPairingDeclineCountForPairingPromptFlow:self];
    v4 = CarPairingLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "incremented OOB pairing decline count", v5, 2u);
    }
  }
}

- (id)_carKeyInfo
{
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [promptDelegate carKeyInfoForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_supportsCarKeys
{
  _carKeyInfo = [(CRPairingPromptFlowController *)self _carKeyInfo];

  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"NO";
    if (_carKeyInfo)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "supports car keys: %@", &v6, 0xCu);
  }

  return _carKeyInfo != 0;
}

- (unint64_t)_nextStepAfterResponse:(id)response
{
  responseCopy = response;
  switch([(CRPairingPromptFlowController *)self currentStep])
  {
    case 0uLL:
      if ([(CRPairingPromptFlowController *)self bluetoothFailureReason])
      {
        goto LABEL_40;
      }

      messagingVehicle = [(CRPairingPromptFlowController *)self messagingVehicle];
      if (messagingVehicle)
      {
      }

      else
      {
        numericCode = [(CRPairingPromptFlowController *)self numericCode];

        if (numericCode)
        {
          v5 = 2;
          goto LABEL_62;
        }
      }

      if ([(CRPairingPromptFlowController *)self startedFromCarKey])
      {
        v5 = 1;
      }

      else
      {
        v5 = 5;
      }

      goto LABEL_62;
    case 1uLL:
      v9 = [responseCopy BOOLValue] == 0;
      v10 = 18;
      v11 = 5;
      goto LABEL_26;
    case 2uLL:
      if ([(CRPairingPromptFlowController *)self bluetoothFailureReason])
      {
LABEL_40:
        v5 = 4;
        goto LABEL_62;
      }

      if (![responseCopy BOOLValue])
      {
        goto LABEL_2;
      }

      v9 = ![(CRPairingPromptFlowController *)self showBluetoothOnlyOption];
      v10 = 5;
      v11 = 3;
      goto LABEL_26;
    case 3uLL:
      v12 = [(CRPairingPromptFlowController *)self bluetoothFailureReason]== 0;
      v13 = 4;
      goto LABEL_30;
    case 4uLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
      goto LABEL_2;
    case 5uLL:
      if ([responseCopy BOOLValue])
      {
        if ([(CRPairingPromptFlowController *)self _isMessagingBluetoothConnected])
        {
          pairingAccepted = [(CRPairingPromptFlowController *)self pairingAccepted];

          if (!pairingAccepted)
          {
            v5 = 8;
            goto LABEL_62;
          }
        }

        if ([(CRPairingPromptFlowController *)self _supportsUSB])
        {
          pairingAccepted2 = [(CRPairingPromptFlowController *)self pairingAccepted];
          if (pairingAccepted2)
          {
          }

          else if (![(CRPairingPromptFlowController *)self _supportsThemeAssets])
          {
            v5 = 6;
            goto LABEL_62;
          }
        }

        if ([(CRPairingPromptFlowController *)self _supportsOutOfBandPairing])
        {
          v5 = 7;
        }

        else
        {
          startedFromCarKey = [(CRPairingPromptFlowController *)self startedFromCarKey];
LABEL_25:
          v9 = startedFromCarKey == 0;
          v10 = 18;
          v11 = 9;
LABEL_26:
          if (v9)
          {
            v5 = v10;
          }

          else
          {
            v5 = v11;
          }
        }
      }

      else if ([(CRPairingPromptFlowController *)self bluetoothFailureReason])
      {
        v5 = 4;
      }

      else
      {
        v5 = 18;
      }

      goto LABEL_62;
    case 6uLL:
      if (![responseCopy BOOLValue])
      {
        goto LABEL_2;
      }

      v9 = ![(CRPairingPromptFlowController *)self _supportsOutOfBandPairing];
      v10 = 9;
      v11 = 7;
      goto LABEL_26;
    case 7uLL:
      if (-[CRPairingPromptFlowController _supportsUSB](self, "_supportsUSB") && !-[CRPairingPromptFlowController _supportsThemeAssets](self, "_supportsThemeAssets") || ([responseCopy BOOLValue] & 1) != 0)
      {
        v5 = 9;
        goto LABEL_62;
      }

      [(CRPairingPromptFlowController *)self _cancelWithRequiredStepsRemaining:1];
      goto LABEL_2;
    case 8uLL:
      startedFromCarKey = [responseCopy BOOLValue];
      goto LABEL_25;
    case 9uLL:
      if (![(CRPairingPromptFlowController *)self _needsToWaitOnStartSession])
      {
        goto LABEL_5;
      }

      receivedStartSessionWithThemeAssetInfo = [(CRPairingPromptFlowController *)self receivedStartSessionWithThemeAssetInfo];

      if (receivedStartSessionWithThemeAssetInfo)
      {
        goto LABEL_5;
      }

      v5 = 10;
      goto LABEL_62;
    case 0xAuLL:
LABEL_5:
      receivedStartSessionWithThemeAssetInfo2 = [(CRPairingPromptFlowController *)self receivedStartSessionWithThemeAssetInfo];
      if ([receivedStartSessionWithThemeAssetInfo2 BOOLValue])
      {
        _supportsThemeAssets = [(CRPairingPromptFlowController *)self _supportsThemeAssets];

        if (_supportsThemeAssets)
        {
          v5 = 12;
          goto LABEL_62;
        }
      }

      else
      {
      }

      if ([(CRPairingPromptFlowController *)self _supportsEnhancedIntegration])
      {
        v5 = 11;
      }

      else
      {
LABEL_45:
        if (![(CRPairingPromptFlowController *)self _supportsCarKeys]|| [(CRPairingPromptFlowController *)self startedFromCarKey])
        {
LABEL_2:
          v5 = 18;
        }

        else
        {
          v5 = 16;
        }
      }

LABEL_62:

      return v5;
    case 0xBuLL:
      goto LABEL_45;
    case 0xCuLL:
      if (responseCopy)
      {
        v12 = [responseCopy BOOLValue] == 0;
        v13 = 14;
LABEL_30:
        if (v12)
        {
          v5 = v13 + 1;
        }

        else
        {
          v5 = v13;
        }
      }

      else
      {
        v5 = 13;
      }

      goto LABEL_62;
    case 0xDuLL:
      v12 = [responseCopy BOOLValue] == 0;
      v13 = 17;
      goto LABEL_30;
    default:
      v5 = 0;
      goto LABEL_62;
  }
}

- (void)_presentNextStepAfterResponse:(id)response
{
  responseCopy = response;
  v5 = [(CRPairingPromptFlowController *)self _nextStepAfterResponse:responseCopy];
  v6 = CarPairingLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() _descriptionForStep:v5];
    *buf = 138543362;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "next pairing step: [%{public}@]", buf, 0xCu);
  }

  [(CRPairingPromptFlowController *)self setCurrentStep:v5];
  objc_initWeak(buf, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100049230;
  v15[3] = &unk_1000DEC58;
  objc_copyWeak(&v16, buf);
  v8 = objc_retainBlock(v15);
  v9 = v8;
  switch(v5)
  {
    case 0uLL:
      v10 = CarPairingLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10008718C();
      }

      goto LABEL_7;
    case 1uLL:
      [(CRPairingPromptFlowController *)self _presentConnectCarPlayFromCarKeyPromptWithCompletion:v8];
      break;
    case 2uLL:
      [(CRPairingPromptFlowController *)self _presentBluetoothConfirmationPromptWithCompletion:v8];
      break;
    case 3uLL:
      [(CRPairingPromptFlowController *)self _presentBluetoothContactsSyncPromptWithCompletion:v8];
      break;
    case 4uLL:
      [(CRPairingPromptFlowController *)self _presentBluetoothFailedPromptWithCompletion:v8];
      break;
    case 5uLL:
      messagingVehicle = [(CRPairingPromptFlowController *)self messagingVehicle];
      v14 = messagingVehicle == 0;

      if (!v14)
      {
        goto LABEL_23;
      }

      [(CRPairingPromptFlowController *)self _presentWaitingOnMessagingPrompt];
      break;
    case 6uLL:
      [(CRPairingPromptFlowController *)self _presentAllowWhileLockedPromptWithCompletion:v8];
      break;
    case 7uLL:
      [(CRPairingPromptFlowController *)self _presentUseWirelessCarPlayPromptWithCompletion:v8];
      break;
    case 8uLL:
      [(CRPairingPromptFlowController *)self _presentConnectCarPlayPromptWithCompletion:v8];
      break;
    case 9uLL:
      (v8[2])(v8, 0);
      break;
    case 0xAuLL:
      receivedStartSessionWithThemeAssetInfo = [(CRPairingPromptFlowController *)self receivedStartSessionWithThemeAssetInfo];
      v12 = receivedStartSessionWithThemeAssetInfo == 0;

      if (v12)
      {
        [(CRPairingPromptFlowController *)self _presentWaitingOnStartSessionPrompt];
      }

      else
      {
LABEL_23:
        (v9)[2](v9, &__kCFBooleanTrue);
      }

      break;
    case 0xBuLL:
      [(CRPairingPromptFlowController *)self _presentEnhancedIntegrationPromptWithCompletion:v8];
      break;
    case 0xCuLL:
      [(CRPairingPromptFlowController *)self _presentAssetProgressPromptWithCompletion:v8];
      break;
    case 0xDuLL:
      [(CRPairingPromptFlowController *)self _presentAssetUnavailablePromptWithCompletion:v8];
      break;
    case 0xEuLL:
      [(CRPairingPromptFlowController *)self _presentAssetReadyPromptWithCompletion:v8];
      break;
    case 0xFuLL:
      [(CRPairingPromptFlowController *)self _presentAssetReadySoonPromptWithCompletion:v8];
      break;
    case 0x10uLL:
      [(CRPairingPromptFlowController *)self _presentSetupCarKeysWithCompletion:v8];
      break;
    case 0x11uLL:
      [(CRPairingPromptFlowController *)self _presentCheckSoftwareUpdatesWithCompletion:v8];
      break;
    case 0x12uLL:
LABEL_7:
      [(CRPairingPromptFlowController *)self _dismiss];
      break;
    default:
      break;
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)_performPresentationAction:(id)action
{
  actionCopy = action;
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [promptDelegate pairingPromptFlow:self wantsToPerformPresentation:actionCopy];
  }
}

- (void)_dismiss
{
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate)
  {
    v4 = promptDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v4 didCompletePairingPromptFlow:self];
    }
  }

  _objc_release_x2();
}

- (void)_presentBluetoothConfirmationPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  bluetoothDeviceIdentifier = [(CRPairingPromptFlowController *)self bluetoothDeviceIdentifier];
  vehicleName = [(CRPairingPromptFlowController *)self vehicleName];
  numericCode = [(CRPairingPromptFlowController *)self numericCode];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100049590;
  v12[3] = &unk_1000DEC80;
  v8 = vehicleName;
  v13 = v8;
  v9 = numericCode;
  v14 = v9;
  objc_copyWeak(&v17, &location);
  v10 = bluetoothDeviceIdentifier;
  v15 = v10;
  v11 = completionCopy;
  v16 = v11;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_presentBluetoothContactsSyncPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  bluetoothDeviceIdentifier = [(CRPairingPromptFlowController *)self bluetoothDeviceIdentifier];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100049920;
  v8[3] = &unk_1000DECA8;
  objc_copyWeak(&v11, &location);
  v6 = bluetoothDeviceIdentifier;
  v9 = v6;
  v7 = completionCopy;
  v10 = v7;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_presentBluetoothFailedPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  vehicleName = [(CRPairingPromptFlowController *)self vehicleName];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100049C80;
  v8[3] = &unk_1000DECD0;
  v11 = [(CRPairingPromptFlowController *)self bluetoothFailureReason]== 2;
  v9 = vehicleName;
  v10 = completionCopy;
  v6 = completionCopy;
  v7 = vehicleName;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v8];
}

- (void)_presentWaitingOnMessagingPrompt
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "waiting on messaging connection", v4, 2u);
  }

  [(CRPairingPromptFlowController *)self _startWaitingOnMessagingVehicleTimer];
  [(CRPairingPromptFlowController *)self _performPresentationAction:&stru_1000DED10];
}

- (void)_presentAllowWhileLockedPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  vehicleName = [(CRPairingPromptFlowController *)self vehicleName];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100049F38;
  v8[3] = &unk_1000DED60;
  v6 = vehicleName;
  v9 = v6;
  objc_copyWeak(&v11, &location);
  v7 = completionCopy;
  v10 = v7;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_presentUseWirelessCarPlayPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CRPairingPromptFlowController *)self _hasExistingBluetoothPairing])
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "already paired, will not present OOB prompt";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  _outOfBandPairingDeclineCount = [(CRPairingPromptFlowController *)self _outOfBandPairingDeclineCount];
  if (_outOfBandPairingDeclineCount >= 4)
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "at maximum decline count for OOB prompt, will not present";
      goto LABEL_7;
    }

LABEL_8:

    completionCopy[2](completionCopy, 0);
    goto LABEL_30;
  }

  v8 = _outOfBandPairingDeclineCount;
  _needsBluetoothTurnedOn = [(CRPairingPromptFlowController *)self _needsBluetoothTurnedOn];
  _needsWiFiTurnedOn = [(CRPairingPromptFlowController *)self _needsWiFiTurnedOn];
  v11 = _needsWiFiTurnedOn;
  if (_needsBluetoothTurnedOn)
  {
    v12 = CarPairingLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "OOB prompt will ask to enable Bluetooth", buf, 2u);
    }

    v13 = 1;
    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v13 = 0;
  if (_needsWiFiTurnedOn)
  {
LABEL_15:
    v14 = CarPairingLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "OOB prompt will ask to enable Wi-Fi", buf, 2u);
    }

    v13 |= 2uLL;
  }

LABEL_18:
  if (v8 == 3)
  {
    v15 = CarPairingLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v16 = 2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "OOB prompt will have don't use decline variant", buf, 2u);
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    _supportsUSB = [(CRPairingPromptFlowController *)self _supportsUSB];
    v15 = CarPairingLogging();
    v18 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (_supportsUSB)
    {
      if (v18)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "supports USB - OOB prompt will have USB decline variant", buf, 2u);
      }

      v16 = 0;
    }

    else
    {
      if (v18)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "OOB prompt will have not now decline variant", buf, 2u);
      }

      v16 = 1;
    }
  }

  objc_initWeak(buf, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004A4C4;
  v19[3] = &unk_1000DEDB0;
  objc_copyWeak(v21, buf);
  v22 = _needsBluetoothTurnedOn;
  v23 = v11;
  v19[4] = self;
  v20 = completionCopy;
  v21[1] = v13;
  v21[2] = v16;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v19];

  objc_destroyWeak(v21);
  objc_destroyWeak(buf);
LABEL_30:
}

- (void)_presentConnectCarPlayPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  showBluetoothOnlyOption = [(CRPairingPromptFlowController *)self showBluetoothOnlyOption];
  _needsWiFiTurnedOn = [(CRPairingPromptFlowController *)self _needsWiFiTurnedOn];
  v7 = _needsWiFiTurnedOn;
  if (_needsWiFiTurnedOn)
  {
    v8 = CarPairingLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connect prompt will ask to enable Wi-Fi", buf, 2u);
    }

    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004A884;
  v11[3] = &unk_1000DEE00;
  objc_copyWeak(v13, buf);
  v14 = v7;
  v10 = completionCopy;
  v11[4] = self;
  v12 = v10;
  v15 = showBluetoothOnlyOption;
  v13[1] = v9;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(buf);
}

- (void)_presentConnectCarPlayFromCarKeyPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  showBluetoothOnlyOption = [(CRPairingPromptFlowController *)self showBluetoothOnlyOption];
  _needsWiFiTurnedOn = [(CRPairingPromptFlowController *)self _needsWiFiTurnedOn];
  v7 = _needsWiFiTurnedOn;
  if (_needsWiFiTurnedOn)
  {
    v8 = CarPairingLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connect prompt will ask to enable Wi-Fi", buf, 2u);
    }

    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004AC64;
  v11[3] = &unk_1000DEE00;
  objc_copyWeak(v13, buf);
  v14 = v7;
  v10 = completionCopy;
  v11[4] = self;
  v12 = v10;
  v15 = showBluetoothOnlyOption;
  v13[1] = v9;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(buf);
}

- (void)_presentWaitingOnStartSessionPrompt
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "waiting on start session", v4, 2u);
  }

  [(CRPairingPromptFlowController *)self _performPresentationAction:&stru_1000DEE20];
}

- (void)_presentEnhancedIntegrationPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  vehicleName = [(CRPairingPromptFlowController *)self vehicleName];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004B0B0;
  v8[3] = &unk_1000DED60;
  v6 = vehicleName;
  v9 = v6;
  objc_copyWeak(&v11, &location);
  v7 = completionCopy;
  v10 = v7;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_presentAssetProgressPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  vehicleName = [(CRPairingPromptFlowController *)self vehicleName];
  promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
  if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [promptDelegate assetProgressForPairingPromptFlow:self];
  }

  else
  {
    v7 = 0;
  }

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004B43C;
  v11[3] = &unk_1000DEE48;
  v8 = vehicleName;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v10 = completionCopy;
  v14 = v10;
  objc_copyWeak(&v15, &location);
  [(CRPairingPromptFlowController *)self _performPresentationAction:v11];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

- (void)_presentAssetUnavailablePromptWithCompletion:(id)completion
{
  completionCopy = completion;
  assetUnavailableDescription = [(CRPairingPromptFlowController *)self assetUnavailableDescription];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004B7E8;
  v8[3] = &unk_1000DED60;
  v6 = assetUnavailableDescription;
  v9 = v6;
  objc_copyWeak(&v11, &location);
  v7 = completionCopy;
  v10 = v7;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_presentAssetReadyPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  vehicleName = [(CRPairingPromptFlowController *)self vehicleName];
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004BB94;
  v14[3] = &unk_1000DEE98;
  objc_copyWeak(&v17, &location);
  v6 = vehicleName;
  v15 = v6;
  v7 = completionCopy;
  v16 = v7;
  v8 = objc_retainBlock(v14);
  if (_os_feature_enabled_impl())
  {
    v9 = CarPairingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App Clips feature enabled", buf, 2u);
    }

    promptDelegate = [(CRPairingPromptFlowController *)self promptDelegate];
    if (promptDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004BD88;
      v11[3] = &unk_1000DE290;
      v12 = v8;
      [promptDelegate fetchAppClipIdentifiersForPairingPromptFlow:self completion:v11];
    }
  }

  else
  {
    (v8[2])(v8, &__NSArray0__struct);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_presentAssetReadySoonPromptWithCompletion:(id)completion
{
  completionCopy = completion;
  [(CRPairingPromptFlowController *)self vehicleName];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004BE5C;
  v8 = v7[3] = &unk_1000DE680;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = v8;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v7];
}

- (void)_presentSetupCarKeysWithCompletion:(id)completion
{
  completionCopy = completion;
  vehicleName = [(CRPairingPromptFlowController *)self vehicleName];
  [(CRPairingPromptFlowController *)self _carKeyInfo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004C058;
  v9[3] = &unk_1000DEE70;
  v11 = v10 = vehicleName;
  v12 = completionCopy;
  v6 = completionCopy;
  v7 = v11;
  v8 = vehicleName;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v9];
}

- (void)_presentCheckSoftwareUpdatesWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004C20C;
  v5[3] = &unk_1000DEEC0;
  completionCopy = completion;
  v4 = completionCopy;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v5];
}

- (void)_startWaitingOnMessagingVehicleTimer
{
  [(CRPairingPromptFlowController *)self _stopWaitingOnMessagingVehicleTimer];
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "starting waiting on messaging vehicle timer", v5, 2u);
  }

  [(CRPairingPromptFlowController *)self waitingOnMessagingVehicleTimeout];
  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"_handleTimedOutWaitingOnMessagingVehicle:" selector:0 userInfo:0 repeats:?];
  [(CRPairingPromptFlowController *)self setWaitingOnMessagingVehicleTimer:v4];
}

- (void)_stopWaitingOnMessagingVehicleTimer
{
  waitingOnMessagingVehicleTimer = [(CRPairingPromptFlowController *)self waitingOnMessagingVehicleTimer];
  v4 = waitingOnMessagingVehicleTimer;
  if (waitingOnMessagingVehicleTimer && [waitingOnMessagingVehicleTimer isValid])
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "stopping waiting on messaging vehicle timer", v6, 2u);
    }

    [v4 invalidate];
    [(CRPairingPromptFlowController *)self setWaitingOnMessagingVehicleTimer:0];
  }
}

- (void)_handleTimedOutWaitingOnMessagingVehicle:(id)vehicle
{
  if ([(CRPairingPromptFlowController *)self currentStep]== 5)
  {
    v4 = CarPairingLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000871C0();
    }

    [(CRPairingPromptFlowController *)self _presentNextStepAfterResponse:&__kCFBooleanFalse];
  }
}

- (CRPairingPromptFlowDelegate)promptDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_promptDelegate);

  return WeakRetained;
}

@end