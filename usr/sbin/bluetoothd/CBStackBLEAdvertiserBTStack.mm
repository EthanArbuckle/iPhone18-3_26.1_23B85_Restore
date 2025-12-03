@interface CBStackBLEAdvertiserBTStack
- (BOOL)shouldAdvertiseForWPDaemon:(id)daemon advData:(void *)data advInstanceType:(unsigned __int8)type;
- (BOOL)shouldAdvertiseSafetyAlerts:(unsigned __int8)alerts advData:(void *)data;
- (CBStackBLEAdvertiserBTStack)init;
- (id)descriptionWithLevel:(int)level;
- (void)_stopAllAdvertisings;
- (void)_tearDownStackSessions;
- (void)_updateMultiInstancesAdvertising;
- (void)activate;
- (void)invalidate;
@end

@implementation CBStackBLEAdvertiserBTStack

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50B90 <= 30 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
  {
    v3 = CUDescriptionWithLevel();
    LogPrintF_safe();
  }

  [(CBStackBLEAdvertiserBTStack *)self _updateConnectable];
  [(CBStackBLEAdvertiserBTStack *)self _updateNonConnectable];
  [(CBStackBLEAdvertiserBTStack *)self _updateNonConnectableContact];
  [(CBStackBLEAdvertiserBTStack *)self _updateNonConnectableObjectDiscovery];
  if (_os_feature_enabled_impl())
  {

    [(CBStackBLEAdvertiserBTStack *)self _updateMultiInstancesAdvertising];
  }
}

- (void)_stopAllAdvertisings
{
  btSessionPtrConnectable = self->_btSessionPtrConnectable;
  btSessionPtrNonConnectable = self->_btSessionPtrNonConnectable;
  advertisingStartedNonConnectable = self->_advertisingStartedNonConnectable;
  btSessionPtrNonConnectableContact = self->_btSessionPtrNonConnectableContact;
  btSessionPtrNonConnectableObjectDiscovery = self->_btSessionPtrNonConnectableObjectDiscovery;
  advertisingStartedNonConnectableObjectDiscovery = self->_advertisingStartedNonConnectableObjectDiscovery;
  advertisingStartedNonConnectableContact = self->_advertisingStartedNonConnectableContact;
  btSessionPtrMultiInstancesAdv = self->_btSessionPtrMultiInstancesAdv;
  advertisingStartedMultiInstancesAdv = self->_advertisingStartedMultiInstancesAdv;
  if (btSessionPtrConnectable && self->_advertisingStartedConnectable)
  {
    if (qword_100B50C68 != -1)
    {
      sub_1008068EC();
    }

    v8 = sub_1000689C0(off_100B50C60, btSessionPtrConnectable);
    v9 = objc_retainBlock(self->_advStoppedHandler);
    if (v9)
    {
      v39 = @"kCBMsgArgResult";
      v10 = [NSNumber numberWithInt:v8];
      v40 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v12 = [NSError errorWithInfo:v11];
      v9[2](v9, v12, 1);
    }

    if (v8 && v8 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v26 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  if (btSessionPtrNonConnectable && advertisingStartedNonConnectable)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100806900();
    }

    v13 = sub_1000689C0(off_100B50C60, btSessionPtrNonConnectable);
    v14 = objc_retainBlock(self->_advStoppedHandler);
    if (v14)
    {
      v37 = @"kCBMsgArgResult";
      v15 = [NSNumber numberWithInt:v13];
      v38 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v17 = [NSError errorWithInfo:v16];
      v14[2](v14, v17, 2);
    }

    if (v13 && v13 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v27 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  if (btSessionPtrNonConnectableContact && advertisingStartedNonConnectableContact)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100806900();
    }

    v18 = sub_1000689C0(off_100B50C60, btSessionPtrNonConnectableContact);
    if (v18 && v18 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v28 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  if (btSessionPtrNonConnectableObjectDiscovery && advertisingStartedNonConnectableObjectDiscovery)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100806900();
    }

    v19 = sub_1000689C0(off_100B50C60, btSessionPtrNonConnectableObjectDiscovery);
    v20 = objc_retainBlock(self->_advStoppedHandler);
    if (v20)
    {
      v35 = @"kCBMsgArgResult";
      v21 = [NSNumber numberWithInt:v19];
      v36 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v23 = [NSError errorWithInfo:v22];
      v20[2](v20, v23, 4);
    }

    if (v19 && v19 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v29 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  v24 = btSessionPtrMultiInstancesAdv;
  if (btSessionPtrMultiInstancesAdv && advertisingStartedMultiInstancesAdv)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100806900();
      v24 = btSessionPtrMultiInstancesAdv;
    }

    v25 = sub_1000689C0(off_100B50C60, v24);
    if (v25 && v25 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v30 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  self->_advertisingStartedConnectable = 0;
  self->_advertisingStartedNonConnectable = 0;
  self->_advertisingStartedNonConnectableContact = 0;
  self->_advertisingStartedNonConnectableObjectDiscovery = 0;
  self->_advertisingStartedMultiInstancesAdv = 0;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50B90 <= 30 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
  {
    v4 = CUDescriptionWithLevel();
    LogPrintF_safe();
  }

  v3 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100071A18;
  v5[3] = &unk_100ADF820;
  v5[4] = self;
  sub_10000CA94(v3, v5);
}

- (void)_tearDownStackSessions
{
  p_btSessionHandleConnectable = &self->_btSessionHandleConnectable;
  btSessionHandleConnectable = self->_btSessionHandleConnectable;
  p_btSessionHandleNonConnectable = &self->_btSessionHandleNonConnectable;
  btSessionHandleNonConnectable = self->_btSessionHandleNonConnectable;
  p_btSessionHandleNonConnectableContact = &self->_btSessionHandleNonConnectableContact;
  btSessionHandleNonConnectableContact = self->_btSessionHandleNonConnectableContact;
  p_btSessionHandleNonConnectableObjectDiscovery = &self->_btSessionHandleNonConnectableObjectDiscovery;
  btSessionHandleNonConnectableObjectDiscovery = self->_btSessionHandleNonConnectableObjectDiscovery;
  p_btSessionHandleMultiInstancesAdv = &self->_btSessionHandleMultiInstancesAdv;
  btSessionHandleMultiInstancesAdv = self->_btSessionHandleMultiInstancesAdv;
  if (btSessionHandleConnectable)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100806928();
    }

    v12 = sub_100079604(qword_100B50B80, btSessionHandleConnectable);
    if (v12)
    {
      v13 = v12 == -310000;
    }

    else
    {
      v13 = 1;
    }

    if (!v13 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v18 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  if (btSessionHandleNonConnectable)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100806928();
    }

    v14 = sub_100079604(qword_100B50B80, btSessionHandleNonConnectable);
    if (v14 && v14 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v19 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  if (btSessionHandleNonConnectableContact)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100806928();
    }

    v15 = sub_100079604(qword_100B50B80, btSessionHandleNonConnectableContact);
    if (v15 && v15 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v20 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  if (btSessionHandleNonConnectableObjectDiscovery)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100806928();
    }

    v16 = sub_100079604(qword_100B50B80, btSessionHandleNonConnectableObjectDiscovery);
    if (v16 && v16 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v21 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  if (btSessionHandleMultiInstancesAdv)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100806928();
    }

    v17 = sub_100079604(qword_100B50B80, btSessionHandleMultiInstancesAdv);
    if (v17 && v17 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v22 = CUPrintErrorCode();
      LogPrintF_safe();
    }
  }

  *p_btSessionHandleConnectable = 0;
  p_btSessionHandleConnectable[1] = 0;
  *p_btSessionHandleNonConnectable = 0;
  p_btSessionHandleNonConnectable[1] = 0;
  *p_btSessionHandleNonConnectableContact = 0;
  p_btSessionHandleNonConnectableContact[1] = 0;
  *p_btSessionHandleNonConnectableObjectDiscovery = 0;
  p_btSessionHandleNonConnectableObjectDiscovery[1] = 0;
  *p_btSessionHandleMultiInstancesAdv = 0;
  p_btSessionHandleMultiInstancesAdv[1] = 0;
}

- (void)_updateMultiInstancesAdvertising
{
  if (_os_feature_enabled_impl())
  {
    operator new();
  }
}

- (CBStackBLEAdvertiserBTStack)init
{
  v5.receiver = self;
  v5.super_class = CBStackBLEAdvertiserBTStack;
  v2 = [(CBStackBLEAdvertiserBTStack *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 12;
  }

  v95 = v3;
  if ((level & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v94 = 0;
    v53 = [objc_opt_class() description];
    CUAppendF();
    v4 = 0;
  }

  v93 = v4;
  CUAppendF();
  v5 = v4;

  v92 = v5;
  CUAppendF();
  v6 = v5;

  v91 = v6;
  advertiseRate = self->_advertiseRate;
  if (advertiseRate <= 39)
  {
    if (advertiseRate <= 19)
    {
      if (advertiseRate != 10)
      {
        if (advertiseRate == 15)
        {
          v8 = "1022.5 ms";
          goto LABEL_27;
        }

        goto LABEL_18;
      }

      v8 = "2 seconds";
      goto LABEL_27;
    }

    if (advertiseRate == 20)
    {
      v8 = "350 ms";
      goto LABEL_27;
    }

LABEL_18:
    v8 = "270 ms";
    goto LABEL_27;
  }

  if (advertiseRate <= 44)
  {
    if (advertiseRate == 40)
    {
      v8 = "181.25 ms";
      goto LABEL_27;
    }

    if (advertiseRate == 42)
    {
      v8 = "120 ms";
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  switch(advertiseRate)
  {
    case '-':
      v8 = "60 ms";
      break;
    case '2':
      v8 = "30 ms";
      break;
    case '<':
      v8 = "20 ms";
      break;
    default:
      goto LABEL_18;
  }

LABEL_27:
  v54 = v8;
  CUAppendF();
  v9 = v91;

  v10 = self->_nearbyActionData;
  if (v10)
  {
    v90 = v9;
    v54 = CUPrintNSDataHex();
    CUAppendF();
    v11 = v9;

    v9 = v11;
  }

  v12 = self->_wpDaemonData;
  if (v12)
  {
    v89 = v9;
    v54 = CUPrintNSObjectOneLine();
    CUAppendF();
    v13 = v9;
  }

  else
  {
    v13 = v9;
  }

  selfCopy5 = self;
  proximityServiceSubType = self->_proximityServiceSubType;
  if (self->_proximityServiceSubType)
  {
    v88 = v13;
    v16 = CUPrintNSDataHex();
    v17 = v16;
    proximityServiceUseCase = self->_proximityServiceUseCase;
    if (proximityServiceUseCase < 0x20000)
    {
      if (proximityServiceUseCase <= 0x20000)
      {
        switch(proximityServiceUseCase)
        {
          case 65536:
            v19 = "FindMyAction";
            break;
          case 65537:
            v19 = "FindMyBackground";
            break;
          case 65538:
            v19 = "FindMyActionHELE";
            break;
          case 65539:
            v19 = "FindMyBackgroundHELE";
            break;
          case 65540:
            v19 = "FindMyActionTransient";
            break;
          case 65541:
            v19 = "FindMyBackgroundTransient";
            break;
          case 65542:
            v19 = "FindMyActionHELETransient";
            break;
          case 65543:
            v19 = "FindMyBackgroundHELETransient";
            break;
          case 65544:
            v19 = "FindMyNotOptedIn";
            break;
          case 65545:
            v19 = "FindMyOptedIn";
            break;
          case 65546:
            v19 = "FindMySepAlertsEnabled";
            break;
          case 65547:
            v19 = "FindMyTemporaryAggressiveLegacy";
            break;
          case 65548:
            v19 = "FindMyTemporaryLongAggressive";
            break;
          case 65549:
            v19 = "FindMyBTFindingUserInitiated";
            break;
          case 65550:
            v19 = "FindMyHELE";
            break;
          case 65551:
            v19 = "FindMyBeaconOnDemand";
            break;
          case 65552:
            v19 = "FindMyWildTimedScan";
            break;
          case 65553:
            v19 = "FindMyBackgroundLeechScan";
            break;
          case 65554:
            v19 = "FindMySnifferMode";
            break;
          case 65555:
            v19 = "FindMyUnpair";
            break;
          case 65556:
            v19 = "FindMyUnpairHELE";
            break;
          case 65557:
            v19 = "FindMyPlaySound";
            break;
          case 65558:
            v19 = "FindMyPlaySoundHELE";
            break;
          case 65559:
            v19 = "FindMyNotOptedInBeepOnMoveWaking";
            break;
          case 65560:
            v19 = "FindMyUTTransient";
            break;
          case 65561:
            v19 = "FindMyUTHELETransient";
            break;
          case 65562:
            v19 = "FindMyActionExtendedRange";
            break;
          case 65563:
            v19 = "FindMyActionExtendedRangeLE2M";
            break;
          case 65564:
            v19 = "FindMyActionExtendedRangeTransient";
            break;
          case 65565:
            v19 = "FindMyPlaySoundExtendedRange";
            break;
          case 65566:
            v19 = "FindMyPair";
            break;
          case 65567:
            v19 = "FindMyTemporaryAggressiveLegacyExtendedRange";
            break;
          default:
            JUMPOUT(0);
        }
      }

      else
      {
        v19 = "Unspecified";
        switch(proximityServiceUseCase)
        {
          case 0:
            goto LABEL_243;
          case 1:
            v19 = "HealthKit";
            break;
          case 2:
            v19 = "HomeKit";
            break;
          case 3:
            v19 = "FindMyObjectConnection";
            break;
          case 4:
            v19 = "FindMyObjectConnectionTransient";
            break;
          case 5:
            v19 = "MIDI";
            break;
          case 6:
            v19 = "Continuity";
            break;
          case 7:
            v19 = "InstantHotSpot";
            break;
          case 8:
            v19 = "NearBy";
            break;
          case 9:
            v19 = "Sharing";
            break;
          case 10:
            v19 = "HearingSupport";
            break;
          case 11:
            v19 = "Magnet";
            break;
          case 12:
            v19 = "HID";
            break;
          case 13:
            v19 = "LEA";
            break;
          case 14:
            v19 = "External";
            break;
          case 15:
            v19 = "ExternalMedical";
            break;
          case 16:
            v19 = "ExternalLock";
            break;
          case 17:
            v19 = "ExternalWatch";
            break;
          case 18:
            v19 = "SmartRouting";
            break;
          case 19:
            v19 = "DigitalID";
            break;
          case 20:
            v19 = "DigitalKey";
            break;
          case 21:
            v19 = "DigitalCarKey";
            break;
          case 22:
            v19 = "HeySiri";
            break;
          case 23:
            v19 = "ThirdPartyApp";
            break;
          case 24:
            v19 = "CNJ";
            break;
          default:
            switch(proximityServiceUseCase)
            {
              case 256:
                v19 = "DevicePresenceDetection";
                break;
              case 257:
                v19 = "AudioBox";
                break;
              case 258:
                v19 = "SIMTransfer";
                break;
              case 259:
                v19 = "ProximityScreenOnLeechScan";
                break;
              case 260:
                v19 = "MacMigrate";
                break;
              case 263:
                v19 = "HIDUARTService";
                break;
              case 264:
                v19 = "AccessibilitySwitchControlPairing";
                break;
              case 265:
                v19 = "BaseBandFastConnect";
                break;
              case 266:
                v19 = "SafetyAlerts";
                break;
              case 267:
                v19 = "LECarPlay";
                break;
              case 268:
                v19 = "TCCBluetooth";
                break;
              case 269:
                v19 = "AOPBufferLeech";
                break;
              case 270:
                v19 = "HighPriorityScanWiFi";
                break;
              default:
                goto LABEL_242;
            }

            break;
        }
      }

      goto LABEL_243;
    }

    if (proximityServiceUseCase > 0x80000)
    {
      if (proximityServiceUseCase < 0x100000)
      {
        if (proximityServiceUseCase <= 851968)
        {
          if (proximityServiceUseCase >= 655360)
          {
            if (proximityServiceUseCase <= 720896)
            {
              if (proximityServiceUseCase == 655360)
              {
                v19 = "AccessDigitalHomeKey";
                goto LABEL_243;
              }

              if (proximityServiceUseCase == 720896)
              {
                v19 = "SoftwareUpdateBTWake";
                goto LABEL_243;
              }
            }

            else
            {
              switch(proximityServiceUseCase)
              {
                case 720897:
                  v19 = "SofrwareUpdateOutboxControllerAuth";
                  goto LABEL_243;
                case 786432:
                  v19 = "ProxControlDeviceClose";
                  goto LABEL_243;
                case 851968:
                  v19 = "DCTProtocolTelephony";
                  goto LABEL_243;
              }
            }
          }

          else
          {
            if (proximityServiceUseCase <= 524290)
            {
              if (proximityServiceUseCase == 524289)
              {
                v19 = "ADPDBuffer";
              }

              else
              {
                v19 = "MicroLocation";
              }

              goto LABEL_243;
            }

            switch(proximityServiceUseCase)
            {
              case 524291:
                v19 = "MicroLocationLeech";
                goto LABEL_243;
              case 589824:
                v19 = "FindNearbyRemote";
                goto LABEL_243;
              case 589825:
                v19 = "FindNearbyPencil";
                goto LABEL_243;
            }
          }
        }

        else if (proximityServiceUseCase <= 983041)
        {
          if (proximityServiceUseCase <= 917504)
          {
            if (proximityServiceUseCase == 851969)
            {
              v19 = "DCTProtocolDataAndTelephony";
              goto LABEL_243;
            }

            if (proximityServiceUseCase == 917504)
            {
              v19 = "NearbyFaceTime";
              goto LABEL_243;
            }
          }

          else
          {
            switch(proximityServiceUseCase)
            {
              case 917505:
                v19 = "NearbyFaceTimeData";
                goto LABEL_243;
              case 983040:
                v19 = "SOSBeaconPartA";
                goto LABEL_243;
              case 983041:
                v19 = "SOSBeaconPartB";
                goto LABEL_243;
            }
          }
        }

        else
        {
          if (proximityServiceUseCase <= 983044)
          {
            if (proximityServiceUseCase == 983042)
            {
              v19 = "SOSBeaconPrecisionFindResponse";
            }

            else if (proximityServiceUseCase == 983043)
            {
              v19 = "SOSBeaconPrecisionFindRequest";
            }

            else
            {
              v19 = "SOSBeaconScan";
            }

            goto LABEL_243;
          }

          switch(proximityServiceUseCase)
          {
            case 983045:
              v19 = "SOSBeaconActivateScan";
              goto LABEL_243;
            case 983046:
              v19 = "SOSBeaconActivateAdvA";
              goto LABEL_243;
            case 983047:
              v19 = "SOSBeaconActivateAdvB";
              goto LABEL_243;
          }
        }
      }

      else
      {
        if (proximityServiceUseCase > 2147418111)
        {
          switch(proximityServiceUseCase)
          {
            case 2147418112:
              v19 = "InternalTestNoLockScan";
              break;
            case 2147418113:
              v19 = "InternalTestNoScreenOffScan";
              break;
            case 2147418114:
              v19 = "InternalTestScanWithNoDups";
              break;
            case 2147418115:
              v19 = "InternalTestScanWithDups";
              break;
            case 2147418116:
              v19 = "InternalTestScanFor20Seconds";
              break;
            case 2147418117:
              v19 = "InternalTestActiveScan";
              break;
            case 2147418118:
              v19 = "InternalTestUUIDScan";
              break;
            case 2147418119:
              v19 = "InternalTestScanFor10ClockSeconds";
              break;
            case 2147418120:
              v19 = "InternalTestScanBoost";
              break;
            case 2147418121:
              v19 = "InternalTestDiscoveryScanWithMRC";
              break;
            case 2147418122:
              v19 = "InternalTestAdvWithHigherPower";
              break;
            case 2147418123:
              v19 = "InternalTestScanLowDutyCycleMCOnly";
              break;
            case 2147418124:
              v19 = "InternalTestUUIDScanWithMinRSSI";
              break;
            case 2147418125:
              v19 = "InternalTestUUIDScanWithMinRSSIMediumLow";
              break;
            case 2147418126:
              v19 = "InternalTestAdvWithHigherPowerServiceDataConnectable";
              break;
            case 2147418127:
              v19 = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
              break;
            case 2147418128:
              v19 = "InternalTestAdvWithHigherPowerServiceDataS2";
              break;
            case 2147418129:
              v19 = "InternalTestAdvWithHigherPowerServiceDataS8";
              break;
            case 2147418130:
              v19 = "InternalTestDiscoveryScanCodedPHY";
              break;
            default:
              goto LABEL_242;
          }

          goto LABEL_243;
        }

        switch(proximityServiceUseCase)
        {
          case 1048576:
            v19 = "DOS";
            goto LABEL_243;
          case 1048577:
            v19 = "DOD";
            goto LABEL_243;
          case 1114112:
            v19 = "ProximityServiceDeviceSetup";
            goto LABEL_243;
        }
      }
    }

    else
    {
      if (proximityServiceUseCase < 196608)
      {
        switch(proximityServiceUseCase)
        {
          case 131072:
            v19 = "SharingDefault";
            break;
          case 131073:
            v19 = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            v19 = "SharingSiriWatchAuth";
            break;
          case 131075:
            v19 = "SharingMacAutoUnlock";
            break;
          case 131076:
            v19 = "SharingEDTScreenOn";
            break;
          case 131077:
            v19 = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            v19 = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            v19 = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            v19 = "SharingWombatBackground";
            break;
          case 131081:
            v19 = "SharingUniversalControl";
            break;
          case 131082:
            v19 = "SharingPeopleProximity";
            break;
          case 131083:
            v19 = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            v19 = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            v19 = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            v19 = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            v19 = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            v19 = "SharingOYAutoUnlock";
            break;
          case 131090:
            v19 = "SharingAirDrop";
            break;
          case 131091:
            v19 = "SharingNearbyInvitationHost";
            break;
          case 131092:
            v19 = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            v19 = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            v19 = "SharingAirDropTempIdentity";
            break;
          case 131095:
            v19 = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            v19 = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            v19 = "SharingCountryCodeUpdate";
            break;
          case 131098:
            v19 = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            v19 = "SharingVisionProDiscovery";
            break;
          case 131100:
            v19 = "SharingVisionProStateChange";
            break;
          case 131101:
            v19 = "SharingContinuityScreen";
            break;
          case 131102:
            v19 = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            v19 = "SharingHomePodSetup";
            break;
          default:
            goto LABEL_242;
        }

        goto LABEL_243;
      }

      if (proximityServiceUseCase > 393218)
      {
        if (proximityServiceUseCase > 458752)
        {
          switch(proximityServiceUseCase)
          {
            case 0x70001:
              v19 = "PrecisionFindingFindee";
              goto LABEL_243;
            case 0x70002:
              v19 = "SpatialHandoffHome";
              goto LABEL_243;
            case 0x80000:
              v19 = "ADPD";
              goto LABEL_243;
          }
        }

        else
        {
          switch(proximityServiceUseCase)
          {
            case 393219:
              v19 = "AppleIDSignIn";
              goto LABEL_243;
            case 393220:
              v19 = "AppleIDSignInSettings";
              goto LABEL_243;
            case 458752:
              v19 = "PrecisionFindingFinder";
              goto LABEL_243;
          }
        }
      }

      else
      {
        if (proximityServiceUseCase >= 393216)
        {
          if (proximityServiceUseCase == 393216)
          {
            v19 = "CaptiveNetworkJoin";
          }

          else if (proximityServiceUseCase == 393217)
          {
            v19 = "UseCaseSIMTransfer";
          }

          else
          {
            v19 = "MacSetup";
          }

          goto LABEL_243;
        }

        switch(proximityServiceUseCase)
        {
          case 196608:
            v19 = "DigitalIDTSA";
            goto LABEL_243;
          case 262144:
            v19 = "DigitalCarKeyThirdParty";
            goto LABEL_243;
          case 327680:
            v19 = "RapportThirdParty";
LABEL_243:
            v58 = v16;
            v60 = v19;
            v54 = proximityServiceSubType;
            CUAppendF();
            proximityServiceSubType = v88;

            v13 = proximityServiceSubType;
            selfCopy5 = self;
            goto LABEL_244;
        }
      }
    }

LABEL_242:
    v19 = "?";
    goto LABEL_243;
  }

LABEL_244:
  if ([(NSArray *)selfCopy5->_saAddressDataArray count:v54])
  {
    v87 = v13;
    CUAppendF();
    v20 = v13;

    v86 = 8;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v21 = self->_saAddressDataArray;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v82 objects:v99 count:16];
    if (v22)
    {
      v23 = *v83;
      do
      {
        v24 = 0;
        v25 = v20;
        do
        {
          if (*v83 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v82 + 1) + 8 * v24);
          v81 = v25;
          if (!v26)
          {
            proximityServiceSubType = +[NSData data];
          }

          v56 = CUPrintNSDataHex();
          CUAppendF();
          v27 = v26 == 0;
          v20 = v81;

          if (v27)
          {
          }

          v24 = v24 + 1;
          v25 = v20;
        }

        while (v22 != v24);
        v22 = [(NSArray *)v21 countByEnumeratingWithState:&v82 objects:v99 count:16, v56];
      }

      while (v22);
    }

    v13 = v20;
    selfCopy5 = self;
  }

  if ([(NSArray *)selfCopy5->_saServiceDataArray count])
  {
    v80 = v13;
    CUAppendF();
    v28 = v13;

    v86 = 8;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = self->_saServiceDataArray;
    v29 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v98 count:16];
    if (v29)
    {
      v30 = *v77;
      do
      {
        v31 = 0;
        v32 = v28;
        do
        {
          if (*v77 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v76 + 1) + 8 * v31);
          v75 = v32;
          serviceUUID16 = [v33 serviceUUID16];
          serviceData = [v33 serviceData];
          if (!serviceData)
          {
            proximityServiceSubType = +[NSData data];
          }

          CUPrintNSDataHex();
          v59 = v55 = serviceUUID16;
          CUAppendF();
          v28 = v75;

          if (!serviceData)
          {
          }

          v31 = v31 + 1;
          v32 = v28;
        }

        while (v29 != v31);
        v29 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v98 count:16, v55, v59];
      }

      while (v29);
    }

    v13 = v28;
    selfCopy5 = self;
  }

  if ([(NSArray *)selfCopy5->_serviceDataArray count])
  {
    v74 = v13;
    CUAppendF();
    v36 = v13;

    v86 = 8;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obja = self->_serviceDataArray;
    v37 = [(NSArray *)obja countByEnumeratingWithState:&v70 objects:v97 count:16];
    if (v37)
    {
      v38 = *v71;
      do
      {
        v39 = 0;
        v40 = v36;
        do
        {
          if (*v71 != v38)
          {
            objc_enumerationMutation(obja);
          }

          v41 = *(*(&v70 + 1) + 8 * v39);
          v69 = v40;
          serviceUUID162 = [v41 serviceUUID16];
          serviceData2 = [v41 serviceData];
          if (!serviceData2)
          {
            proximityServiceSubType = +[NSData data];
          }

          CUPrintNSDataHex();
          v59 = v55 = serviceUUID162;
          CUAppendF();
          v36 = v69;

          if (!serviceData2)
          {
          }

          v39 = v39 + 1;
          v40 = v36;
        }

        while (v37 != v39);
        v37 = [(NSArray *)obja countByEnumeratingWithState:&v70 objects:v97 count:16, v55, v59];
      }

      while (v37);
    }

    v13 = v36;
    selfCopy5 = self;
  }

  if (_os_feature_enabled_impl() && [(NSArray *)selfCopy5->_swupPayloadDataArray count])
  {
    v68 = v13;
    CUAppendF();
    v44 = v13;

    v86 = 8;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v45 = self->_swupPayloadDataArray;
    v46 = [(NSArray *)v45 countByEnumeratingWithState:&v64 objects:v96 count:16];
    if (v46)
    {
      v47 = *v65;
      do
      {
        v48 = 0;
        v49 = v44;
        do
        {
          if (*v65 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v64 + 1) + 8 * v48);
          if (!v50)
          {
            proximityServiceSubType = +[NSData data];
          }

          v57 = CUPrintNSDataHex();
          CUAppendF();
          v51 = v50 == 0;
          v44 = v49;

          if (v51)
          {
          }

          v48 = v48 + 1;
          v49 = v44;
        }

        while (v46 != v48);
        v46 = [(NSArray *)v45 countByEnumeratingWithState:&v64 objects:v96 count:16, v57];
      }

      while (v46);
    }
  }

  else
  {
    v44 = v13;
  }

  return v44;
}

- (BOOL)shouldAdvertiseSafetyAlerts:(unsigned __int8)alerts advData:(void *)data
{
  alertsCopy = alerts;
  v7 = self->_saAddressDataArray;
  v8 = self->_saServiceDataArray;
  if ([(NSArray *)v7 count]<= alertsCopy || [(NSArray *)v8 count]<= alertsCopy)
  {
    v16 = 0;
  }

  else
  {
    v29 = [(NSArray *)v7 objectAtIndexedSubscript:alertsCopy];
    if ([v29 length] == 6)
    {
      v33 = 0;
      v34 = 0;
      sub_10000C704(&v33, [v29 bytes], objc_msgSend(v29, "length"));
      v9 = sub_10072502C(&v33, 0);
      v10 = sub_10072502C(&v33, 1uLL);
      v11 = sub_10072502C(&v33, 2uLL);
      v12 = sub_10072502C(&v33, 3uLL);
      v13 = sub_10072502C(&v33, 4uLL);
      v14 = sub_10072502C(&v33, 5uLL) | (v13 << 8) | (v11 << 24) | (v12 << 16) | (v9 << 40) | (v10 << 32) | 0x1000000000000;
      if ((v9 & 0xC0) == 0x80)
      {
        if (dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
        {
          sub_10000C250(&v33, __p);
          v15 = sub_100063D0C();
          LogPrintF_safe();

          if (v37 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v16 = 0;
      }

      else
      {
        if (dword_100B50B90 <= 30 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
        {
          sub_10000C250(&v33, __p);
          v17 = sub_100063D0C();
          LogPrintF_safe();

          if (v37 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v18 = *(data + 1);
        *(v18 + 256) = v14;
        *(v18 + 464) = 1;
        v32 = 0;
        sub_1000216B4(&v32);
        sub_1002D24BC(1);
        sub_100022214(&v32);
        v19 = [(NSArray *)v8 objectAtIndexedSubscript:alertsCopy];
        serviceData = [v19 serviceData];
        v21 = [serviceData length];
        v16 = v21 < 0x1C;
        if (v21 < 0x1C)
        {
          v30 = 0;
          v31 = 0;
          v22 = serviceData;
          bytes = [serviceData bytes];
          v24 = [serviceData length];
          v25 = bytes ? bytes : "";
          sub_10000C704(&v30, v25, v24);
          v26 = *(data + 1);
          sub_10006C96C(__p, [v19 serviceUUID16]);
          v35 = __p;
          v27 = sub_100099408(v26 + 112, __p);
          sub_10000AE20(v27 + 56, &v30);
          v30 = &off_100AE0A78;
          if (v31)
          {
            sub_10000C808(v31);
          }
        }

        sub_10002249C(&v32);
      }

      v33 = &off_100AE0A78;
      if (v34)
      {
        sub_10000C808(v34);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)shouldAdvertiseForWPDaemon:(id)daemon advData:(void *)data advInstanceType:(unsigned __int8)type
{
  typeCopy = type;
  daemonCopy = daemon;
  v8 = daemonCopy;
  if (!daemonCopy || [daemonCopy advInstanceType] != typeCopy)
  {
    goto LABEL_34;
  }

  mfgData = [v8 mfgData];
  advDataPerType = [v8 advDataPerType];
  if (mfgData && [mfgData length] && objc_msgSend(mfgData, "length") <= 0x1C)
  {
    v29 = 0;
    v30[0] = 0;
    sub_10000C704(&v29, [mfgData bytes], objc_msgSend(mfgData, "length"));
    sub_10000AE20(*(data + 1) + 48, &v29);
    v29 = &off_100AE0A78;
    if (v30[0])
    {
      sub_10000C808(v30[0]);
    }

    goto LABEL_11;
  }

  if (!advDataPerType || ![advDataPerType count])
  {

LABEL_34:
    v19 = 0;
    goto LABEL_35;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100112D54;
  v31[3] = &unk_100AE09A0;
  v31[4] = data;
  [advDataPerType enumerateKeysAndObjectsUsingBlock:v31];
LABEL_11:
  v11 = *(data + 1);
  *(v11 + 222) = [v8 advInterval];
  if ([v8 enableObjectLocatorResponseOnAdvertisingInstance])
  {
    *(*(data + 1) + 308) = 1;
  }

  if ([v8 stopOnAdvertisingAddressChange])
  {
    *(*(data + 1) + 307) = 1;
  }

  if ([v8 enableAdvertisingWithPowerAssertion])
  {
    *(*(data + 1) + 360) = 1;
  }

  if ([v8 enableEPAForAdvertisement])
  {
    *(*(data + 1) + 409) = 1;
  }

  listOfClients = [v8 listOfClients];
  v13 = listOfClients == 0;

  if (!v13)
  {
    v30[0] = 0;
    v30[1] = 0;
    v29 = v30;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    listOfClients2 = [v8 listOfClients];
    v15 = [listOfClients2 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v15)
    {
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(listOfClients2);
          }

          sub_100007E30(__p, [*(*(&v25 + 1) + 8 * i) UTF8String]);
          sub_100071970(&v29, __p);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v15 = [listOfClients2 countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v15);
    }

    v18 = *(data + 1);
    sub_100068968(&v21, &v29);
    if ((v18 + 416) != &v21)
    {
      sub_1000717E8((v18 + 416), v21, &v22);
    }

    sub_10004B61C(&v21, v22);
    sub_10004B61C(&v29, v30[0]);
  }

  v19 = 1;
LABEL_35:

  return v19;
}

@end