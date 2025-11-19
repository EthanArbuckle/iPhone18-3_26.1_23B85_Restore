@interface CRPairingPromptFlowController
+ (id)_descriptionForStep:(unint64_t)a3;
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
- (unint64_t)_nextStepAfterResponse:(id)a3;
- (unint64_t)_outOfBandPairingDeclineCount;
- (void)_dismiss;
- (void)_handleTimedOutWaitingOnMessagingVehicle:(id)a3;
- (void)_incrementOutOfBandPairingDeclineCount;
- (void)_performPresentationAction:(id)a3;
- (void)_presentAllowWhileLockedPromptWithCompletion:(id)a3;
- (void)_presentAssetProgressPromptWithCompletion:(id)a3;
- (void)_presentAssetReadyPromptWithCompletion:(id)a3;
- (void)_presentAssetReadySoonPromptWithCompletion:(id)a3;
- (void)_presentAssetUnavailablePromptWithCompletion:(id)a3;
- (void)_presentBluetoothConfirmationPromptWithCompletion:(id)a3;
- (void)_presentBluetoothContactsSyncPromptWithCompletion:(id)a3;
- (void)_presentBluetoothFailedPromptWithCompletion:(id)a3;
- (void)_presentCheckSoftwareUpdatesWithCompletion:(id)a3;
- (void)_presentConnectCarPlayFromCarKeyPromptWithCompletion:(id)a3;
- (void)_presentConnectCarPlayPromptWithCompletion:(id)a3;
- (void)_presentEnhancedIntegrationPromptWithCompletion:(id)a3;
- (void)_presentNextStepAfterResponse:(id)a3;
- (void)_presentSetupCarKeysWithCompletion:(id)a3;
- (void)_presentUseWirelessCarPlayPromptWithCompletion:(id)a3;
- (void)_presentWaitingOnMessagingPrompt;
- (void)_presentWaitingOnStartSessionPrompt;
- (void)_startWaitingOnMessagingVehicleTimer;
- (void)_stopWaitingOnMessagingVehicleTimer;
- (void)cancel;
- (void)handleBluetoothPairingConfirmationRequestForDeviceIdentifier:(id)a3 vehicleName:(id)a4 numericCode:(id)a5;
- (void)handleBluetoothPairingFailedForDeviceIdentifier:(id)a3 vehicleName:(id)a4 isTimeout:(BOOL)a5;
- (void)handleCarKeyInitiatedPairingFailed;
- (void)handleConnectedMessagingVehicle:(id)a3 pairingAccepted:(id)a4;
- (void)handleDisconnectedMessagingVehicle:(id)a3;
- (void)handleFailedToFindThemeAssetForMessagingVehicle:(id)a3 shouldOfferSoftwareUpdate:(BOOL)a4 description:(id)a5;
- (void)handleUnsupportedMessagingConnectionForDeviceIdentifier:(id)a3;
@end

@implementation CRPairingPromptFlowController

+ (id)_descriptionForStep:(unint64_t)a3
{
  if (a3 - 1 > 0x11)
  {
    return @"started";
  }

  else
  {
    return off_1000DEEE0[a3 - 1];
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

- (void)handleBluetoothPairingConfirmationRequestForDeviceIdentifier:(id)a3 vehicleName:(id)a4 numericCode:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v11 = CarPairingLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "received Bluetooth pairing confirmation request, continuing prompt flow", v15, 2u);
  }

  v12 = [(CRPairingPromptFlowController *)self bluetoothDeviceIdentifier];
  v13 = [v12 isEqualToString:v10];

  if (v13)
  {
    [(CRPairingPromptFlowController *)self setVehicleName:v8];
    [(CRPairingPromptFlowController *)self setNumericCode:v9];
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

- (void)handleBluetoothPairingFailedForDeviceIdentifier:(id)a3 vehicleName:(id)a4 isTimeout:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10 = CarPairingLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received Bluetooth failed, adding failed prompt to flow", v16, 2u);
  }

  v11 = [(CRPairingPromptFlowController *)self bluetoothDeviceIdentifier];
  v12 = v11;
  if (v11)
  {
    if (([v11 isEqualToString:v8] & 1) == 0)
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
    [(CRPairingPromptFlowController *)self setBluetoothDeviceIdentifier:v8];
  }

  [(CRPairingPromptFlowController *)self setVehicleName:v9];
  if (v5)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [(CRPairingPromptFlowController *)self setBluetoothFailureReason:v14];
  v15 = [(CRPairingPromptFlowController *)self currentStep];
  if (v15 <= 5 && ((1 << v15) & 0x25) != 0)
  {
    [(CRPairingPromptFlowController *)self _presentNextStepAfterResponse:&__kCFBooleanFalse];
  }

LABEL_15:
}

- (void)handleConnectedMessagingVehicle:(id)a3 pairingAccepted:(id)a4
{
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = CarPairingLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "received messaging connection, continuing prompt flow. pairing accepted: %{public}@", &v11, 0xCu);
  }

  [(CRPairingPromptFlowController *)self setMessagingVehicle:v7];
  [(CRPairingPromptFlowController *)self setPairingAccepted:v6];
  v9 = [v7 vehicleName];

  [(CRPairingPromptFlowController *)self setVehicleName:v9];
  v10 = [(CRPairingPromptFlowController *)self currentStep];
  if (v10 == 5 || !v10)
  {
    [(CRPairingPromptFlowController *)self _presentNextStepAfterResponse:&__kCFBooleanTrue];
  }
}

- (void)handleUnsupportedMessagingConnectionForDeviceIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(CRPairingPromptFlowController *)self bluetoothDeviceIdentifier];
  v6 = [v5 isEqualToString:v4];

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

- (void)handleDisconnectedMessagingVehicle:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "disconnected messaging connection", buf, 2u);
  }

  v6 = [(CRPairingPromptFlowController *)self messagingVehicle];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    if ([v4 transportType] == 2)
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

- (void)handleFailedToFindThemeAssetForMessagingVehicle:(id)a3 shouldOfferSoftwareUpdate:(BOOL)a4 description:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10 = CarPairingLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v5)
    {
      v11 = @"YES";
    }

    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to find available asset, should offer software update: %{public}@", &v14, 0xCu);
  }

  v12 = [(CRPairingPromptFlowController *)self messagingVehicle];
  v13 = [v9 isEqual:v12];

  if (v13)
  {
    [(CRPairingPromptFlowController *)self setAssetUnavailableDescription:v8];
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
  v2 = [(CRPairingPromptFlowController *)self messagingVehicle];
  v3 = (([v2 transportType] - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;

  return v3;
}

- (BOOL)_supportsUSB
{
  v2 = [(CRPairingPromptFlowController *)self messagingVehicle];
  v3 = [v2 supportsUSBCarPlay];

  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "supports wired: %@", &v7, 0xCu);
  }

  return v3;
}

- (BOOL)_supportsOutOfBandPairing
{
  v2 = [(CRPairingPromptFlowController *)self messagingVehicle];
  if ([v2 supportsWirelessCarPlay])
  {
    v3 = [v2 supportsWiredBluetoothPairing];
  }

  else
  {
    v3 = 0;
  }

  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "supports OOB: %@", &v7, 0xCu);
  }

  return v3;
}

- (BOOL)_hasExistingBluetoothPairing
{
  v3 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 hasExistingBluetoothPairingForPairingPromptFlow:self];
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
  v3 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 enhancedIntegrationSupportedForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_supportsStartSession
{
  v3 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 startSessionRequestSupportedForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_supportsThemeAssets
{
  v3 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 supportsThemeAssetsForPairingPromptFlow:self];
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
  v3 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 needsBluetoothTurnedOnForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_needsWiFiTurnedOn
{
  v3 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 needsWiFiTurnedOnForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_outOfBandPairingDeclineCount
{
  v3 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 outOfBandPairingDeclineCountForPairingPromptFlow:self];
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
  v3 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 incrementOutOfBandPairingDeclineCountForPairingPromptFlow:self];
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
  v3 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 carKeyInfoForPairingPromptFlow:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_supportsCarKeys
{
  v2 = [(CRPairingPromptFlowController *)self _carKeyInfo];

  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "supports car keys: %@", &v6, 0xCu);
  }

  return v2 != 0;
}

- (unint64_t)_nextStepAfterResponse:(id)a3
{
  v4 = a3;
  switch([(CRPairingPromptFlowController *)self currentStep])
  {
    case 0uLL:
      if ([(CRPairingPromptFlowController *)self bluetoothFailureReason])
      {
        goto LABEL_40;
      }

      v14 = [(CRPairingPromptFlowController *)self messagingVehicle];
      if (v14)
      {
      }

      else
      {
        v18 = [(CRPairingPromptFlowController *)self numericCode];

        if (v18)
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
      v9 = [v4 BOOLValue] == 0;
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

      if (![v4 BOOLValue])
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
      if ([v4 BOOLValue])
      {
        if ([(CRPairingPromptFlowController *)self _isMessagingBluetoothConnected])
        {
          v16 = [(CRPairingPromptFlowController *)self pairingAccepted];

          if (!v16)
          {
            v5 = 8;
            goto LABEL_62;
          }
        }

        if ([(CRPairingPromptFlowController *)self _supportsUSB])
        {
          v17 = [(CRPairingPromptFlowController *)self pairingAccepted];
          if (v17)
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
          v15 = [(CRPairingPromptFlowController *)self startedFromCarKey];
LABEL_25:
          v9 = v15 == 0;
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
      if (![v4 BOOLValue])
      {
        goto LABEL_2;
      }

      v9 = ![(CRPairingPromptFlowController *)self _supportsOutOfBandPairing];
      v10 = 9;
      v11 = 7;
      goto LABEL_26;
    case 7uLL:
      if (-[CRPairingPromptFlowController _supportsUSB](self, "_supportsUSB") && !-[CRPairingPromptFlowController _supportsThemeAssets](self, "_supportsThemeAssets") || ([v4 BOOLValue] & 1) != 0)
      {
        v5 = 9;
        goto LABEL_62;
      }

      [(CRPairingPromptFlowController *)self _cancelWithRequiredStepsRemaining:1];
      goto LABEL_2;
    case 8uLL:
      v15 = [v4 BOOLValue];
      goto LABEL_25;
    case 9uLL:
      if (![(CRPairingPromptFlowController *)self _needsToWaitOnStartSession])
      {
        goto LABEL_5;
      }

      v6 = [(CRPairingPromptFlowController *)self receivedStartSessionWithThemeAssetInfo];

      if (v6)
      {
        goto LABEL_5;
      }

      v5 = 10;
      goto LABEL_62;
    case 0xAuLL:
LABEL_5:
      v7 = [(CRPairingPromptFlowController *)self receivedStartSessionWithThemeAssetInfo];
      if ([v7 BOOLValue])
      {
        v8 = [(CRPairingPromptFlowController *)self _supportsThemeAssets];

        if (v8)
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
      if (v4)
      {
        v12 = [v4 BOOLValue] == 0;
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
      v12 = [v4 BOOLValue] == 0;
      v13 = 17;
      goto LABEL_30;
    default:
      v5 = 0;
      goto LABEL_62;
  }
}

- (void)_presentNextStepAfterResponse:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self _nextStepAfterResponse:v4];
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
      v13 = [(CRPairingPromptFlowController *)self messagingVehicle];
      v14 = v13 == 0;

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
      v11 = [(CRPairingPromptFlowController *)self receivedStartSessionWithThemeAssetInfo];
      v12 = v11 == 0;

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

- (void)_performPresentationAction:(id)a3
{
  v5 = a3;
  v4 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 pairingPromptFlow:self wantsToPerformPresentation:v5];
  }
}

- (void)_dismiss
{
  v3 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v4 didCompletePairingPromptFlow:self];
    }
  }

  _objc_release_x2();
}

- (void)_presentBluetoothConfirmationPromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self bluetoothDeviceIdentifier];
  v6 = [(CRPairingPromptFlowController *)self vehicleName];
  v7 = [(CRPairingPromptFlowController *)self numericCode];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100049590;
  v12[3] = &unk_1000DEC80;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  objc_copyWeak(&v17, &location);
  v10 = v5;
  v15 = v10;
  v11 = v4;
  v16 = v11;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_presentBluetoothContactsSyncPromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self bluetoothDeviceIdentifier];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100049920;
  v8[3] = &unk_1000DECA8;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_presentBluetoothFailedPromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self vehicleName];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100049C80;
  v8[3] = &unk_1000DECD0;
  v11 = [(CRPairingPromptFlowController *)self bluetoothFailureReason]== 2;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
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

- (void)_presentAllowWhileLockedPromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self vehicleName];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100049F38;
  v8[3] = &unk_1000DED60;
  v6 = v5;
  v9 = v6;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v10 = v7;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_presentUseWirelessCarPlayPromptWithCompletion:(id)a3
{
  v4 = a3;
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

  v7 = [(CRPairingPromptFlowController *)self _outOfBandPairingDeclineCount];
  if (v7 >= 4)
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "at maximum decline count for OOB prompt, will not present";
      goto LABEL_7;
    }

LABEL_8:

    v4[2](v4, 0);
    goto LABEL_30;
  }

  v8 = v7;
  v9 = [(CRPairingPromptFlowController *)self _needsBluetoothTurnedOn];
  v10 = [(CRPairingPromptFlowController *)self _needsWiFiTurnedOn];
  v11 = v10;
  if (v9)
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
  if (v10)
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
    v17 = [(CRPairingPromptFlowController *)self _supportsUSB];
    v15 = CarPairingLogging();
    v18 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v17)
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
  v22 = v9;
  v23 = v11;
  v19[4] = self;
  v20 = v4;
  v21[1] = v13;
  v21[2] = v16;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v19];

  objc_destroyWeak(v21);
  objc_destroyWeak(buf);
LABEL_30:
}

- (void)_presentConnectCarPlayPromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self showBluetoothOnlyOption];
  v6 = [(CRPairingPromptFlowController *)self _needsWiFiTurnedOn];
  v7 = v6;
  if (v6)
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
  v10 = v4;
  v11[4] = self;
  v12 = v10;
  v15 = v5;
  v13[1] = v9;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(buf);
}

- (void)_presentConnectCarPlayFromCarKeyPromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self showBluetoothOnlyOption];
  v6 = [(CRPairingPromptFlowController *)self _needsWiFiTurnedOn];
  v7 = v6;
  if (v6)
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
  v10 = v4;
  v11[4] = self;
  v12 = v10;
  v15 = v5;
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

- (void)_presentEnhancedIntegrationPromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self vehicleName];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004B0B0;
  v8[3] = &unk_1000DED60;
  v6 = v5;
  v9 = v6;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v10 = v7;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_presentAssetProgressPromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self vehicleName];
  v6 = [(CRPairingPromptFlowController *)self promptDelegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 assetProgressForPairingPromptFlow:self];
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
  v8 = v5;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v10 = v4;
  v14 = v10;
  objc_copyWeak(&v15, &location);
  [(CRPairingPromptFlowController *)self _performPresentationAction:v11];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

- (void)_presentAssetUnavailablePromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self assetUnavailableDescription];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004B7E8;
  v8[3] = &unk_1000DED60;
  v6 = v5;
  v9 = v6;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v10 = v7;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_presentAssetReadyPromptWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self vehicleName];
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004BB94;
  v14[3] = &unk_1000DEE98;
  objc_copyWeak(&v17, &location);
  v6 = v5;
  v15 = v6;
  v7 = v4;
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

    v10 = [(CRPairingPromptFlowController *)self promptDelegate];
    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004BD88;
      v11[3] = &unk_1000DE290;
      v12 = v8;
      [v10 fetchAppClipIdentifiersForPairingPromptFlow:self completion:v11];
    }
  }

  else
  {
    (v8[2])(v8, &__NSArray0__struct);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_presentAssetReadySoonPromptWithCompletion:(id)a3
{
  v4 = a3;
  [(CRPairingPromptFlowController *)self vehicleName];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004BE5C;
  v8 = v7[3] = &unk_1000DE680;
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v7];
}

- (void)_presentSetupCarKeysWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRPairingPromptFlowController *)self vehicleName];
  [(CRPairingPromptFlowController *)self _carKeyInfo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004C058;
  v9[3] = &unk_1000DEE70;
  v11 = v10 = v5;
  v12 = v4;
  v6 = v4;
  v7 = v11;
  v8 = v5;
  [(CRPairingPromptFlowController *)self _performPresentationAction:v9];
}

- (void)_presentCheckSoftwareUpdatesWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004C20C;
  v5[3] = &unk_1000DEEC0;
  v6 = a3;
  v4 = v6;
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
  v3 = [(CRPairingPromptFlowController *)self waitingOnMessagingVehicleTimer];
  v4 = v3;
  if (v3 && [v3 isValid])
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

- (void)_handleTimedOutWaitingOnMessagingVehicle:(id)a3
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