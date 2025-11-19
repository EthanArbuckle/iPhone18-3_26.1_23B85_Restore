const char *sub_10002F16C(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

const char *sub_10002FC04(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

const char *sub_10003069C(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

uint64_t sub_100032658(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100498738;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E488 != -1)
  {
    dispatch_once(&qword_100B6E488, block);
  }

  return byte_100B6E480;
}

void sub_1000326E8(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = &off_100AE0A78;
  v3 = *(a2 + 40);
  if (v3)
  {
    sub_10000C808(v3);
  }

  *(a2 + 16) = &off_100AE0A78;
  v4 = *(a2 + 24);
  if (v4)
  {
    sub_10000C808(v4);
  }

  v5 = *a2;
}

void sub_100032784(uint64_t a1, void *a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, void *a12, char a13, char a14, char a15, char a16, char a17, void *a18, int a19, int a20, int a21)
{
  v23 = a2;
  sub_10003B304(v36, v23, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  v24 = *(a1 + 96);
  if (v24 >= *(a1 + 104))
  {
    v25 = sub_10006CAFC(a1 + 88, v36);
  }

  else
  {
    sub_100032A04(a1 + 88, *(a1 + 96), v36);
    v25 = v24 + 96;
    *(a1 + 96) = v24 + 96;
  }

  *(a1 + 96) = v25;

  v38 = &off_100AE0A78;
  if (v39)
  {
    sub_10000C808(v39);
  }

  v36[2] = &off_100AE0A78;
  if (v37)
  {
    sub_10000C808(v37);
  }

  v26 = *(a1 + 176);
  v27 = [NSMutableSet setWithSet:v26];

  [v27 addObject:v23];
  v28 = *(a1 + 176);
  *(a1 + 176) = v27;

  if (a9 == 1)
  {
    v29 = a3 >> 6;
    v30 = 1 << a3;
    *(a1 + 8 * v29 + 248) |= 1 << a3;
  }

  else
  {
    *(a1 + 312) = 1;
    v29 = a3 >> 6;
    v30 = 1 << a3;
  }

  *(a1 + 8 * v29 + 280) |= v30;
}

void sub_1000329C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100138984(va);

  _Unwind_Resume(a1);
}

void sub_100032A04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  *a2 = v5;
  *(a2 + 8) = *(a3 + 4);
  v6 = a3[3];
  *(a2 + 16) = &off_100AE0A78;
  *(a2 + 24) = v6;
  if (v6)
  {
    sub_10000C69C(v6);
  }

  v7 = a3[5];
  *(a2 + 32) = &off_100AE0A78;
  *(a2 + 40) = v7;
  if (v7)
  {
    sub_10000C69C(v7);
  }

  v8 = *(a3 + 12);
  *(a2 + 52) = *(a3 + 52);
  *(a2 + 48) = v8;
  v9 = a3[7];
  a3[7] = 0;
  *(a2 + 56) = v9;
  LODWORD(v9) = *(a3 + 16);
  *(a2 + 68) = *(a3 + 68);
  *(a2 + 64) = v9;
  v10 = a3[9];
  a3[9] = 0;
  *(a2 + 72) = v10;
  v11 = a3[10];
  *(a2 + 88) = *(a3 + 22);
  *(a2 + 80) = v11;
}

void sub_100032AE8(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  v4 = *(v1 + 24);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100032B20(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A12BC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E770 != -1)
  {
    dispatch_once(&qword_100B6E770, block);
  }

  return byte_100B6E768;
}

void sub_100032BB0(uint64_t a1)
{
  if ((byte_100B6E798 & 1) == 0)
  {
    v2 = *(a1 + 32);
    byte_100B6E798 = 1;
    if (qword_100B50910 != -1)
    {
      sub_10083161C();
    }

    sub_1005BB5D4(off_100B50908, v2 + 1352);
    if (qword_100B50AA0 != -1)
    {
      sub_100831630();
    }

    v3 = off_100B50A98 + 64;

    sub_100312650(v3, v2 + 1360);
  }
}

uint64_t sub_100032C48(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_10003663C(a1))
  {
    v323 = 1;
  }

  else
  {
    v323 = sub_1000365D8(a1);
  }

  v361 = a1;
  v331 = sub_1000365D8(a1);
  v8 = sub_10000C798();
  v321 = (*(*v8 + 656))(v8);
  v9 = *sub_10000C798();
  v320 = (*(v9 + 688))();
  v10 = *sub_10000C798();
  v336 = (*(v10 + 872))();
  v11 = *sub_10000C7D0();
  v317 = (*(v11 + 3184))();
  v12 = *sub_10000C798();
  v330 = (*(v12 + 1024))();
  v359 = +[NSMutableDictionary dictionary];
  v13 = a2;
  *a2 = 0;
  a2[2] = 0;
  *(a2 + 4) = 0;
  *(a2 + 10) = 0;
  v314 = a2 + 10;
  *(a2 + 17) = 0;
  a2[16] = 1;
  *(a2 + 7) = 0;
  a2[25] = 0;
  if (qword_100B50910 != -1)
  {
    sub_100874380();
    v13 = a2;
  }

  v14 = a1;
  v15 = sub_10003C714(off_100B50908, 0, 1u);
  if (v15)
  {
    v16 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "coexStateBitmap:0x%llX", buf, 0xCu);
    }
  }

  v367 = 0;
  v17 = sub_100017E6C();
  if ((*(*v17 + 128))(v17, &v367))
  {
    v18 = 1;
  }

  else
  {
    v18 = v367 == 0;
  }

  v19 = !v18;
  v312 = v19;
  v360 = +[NSMutableArray array];
  v20 = *(v361 + 2064);
  v21 = &xpc_dictionary_set_uint64_ptr;
  if (v20 != (v361 + 2072))
  {
    v318 = 0;
    v337 = 0;
    v339 = 0;
    v319 = 0;
    v324 = 0;
    v326 = 0;
    v315 = 0;
    v316 = 0;
    v313 = 0;
    v311 = 0;
    v322 = 0;
    v350 = 0;
    v352 = 0;
    v328 = 0;
    v334 = 0;
    v349 = 0;
    v357 = 0;
    v22 = 3;
    v345 = 1;
    v2 = 0.0;
    v332 = 4;
    WORD1(v3) = 17521;
    LODWORD(v4) = 30.0;
    v5 = 0.625;
    v23 = 0.0;
    v24 = 0.0;
    v335 = 3;
    while (1)
    {
      v25 = *(*(v20[5] + 8) + 192);
      v370 = 0;
      memset(v369, 0, sizeof(v369));
      memset(buf, 0, sizeof(buf));
      sub_10000CBF0(buf, (*(v20[5] + 8) + 320));
      v26 = +[NSMutableDictionary dictionary];
      v27 = [NSNumber numberWithBool:*(*(v20[5] + 8) + 3)];
      [v26 setObject:v27 forKeyedSubscript:@"isAllowedInScreenOff"];

      v28 = [NSNumber numberWithBool:sub_10003C8E8(v20[5])];
      [v26 setObject:v28 forKeyedSubscript:@"allowDupes"];

      v29 = [NSNumber numberWithUnsignedInt:0];
      [v26 setObject:v29 forKeyedSubscript:@"window"];

      v30 = [NSNumber numberWithUnsignedInt:0];
      [v26 setObject:v30 forKeyedSubscript:@"interval"];

      v31 = [NSNumber numberWithBool:0];
      [v26 setObject:v31 forKeyedSubscript:@"active"];

      v32 = [NSNumber numberWithBool:sub_10003A26C(v20[5])];
      [v26 setObject:v32 forKeyedSubscript:@"requiresActiveScan"];

      v33 = [NSNumber numberWithBool:*(v20[5] + 81) == 32];
      [v26 setObject:v33 forKeyedSubscript:@"daemon"];

      v34 = [NSNumber numberWithBool:*(v20[5] + 81) == 16];
      [v26 setObject:v34 forKeyedSubscript:@"ForegroundApp"];

      v35 = [NSNumber numberWithBool:sub_100028FB4(v20[5])];
      [v26 setObject:v35 forKeyedSubscript:@"isAnyHWObjectDiscoveryEnabled"];

      v36 = [NSNumber numberWithDouble:v24];
      [v26 setObject:v36 forKeyedSubscript:@"HWADVBufferWindowMs"];

      v37 = [NSNumber numberWithDouble:v23];
      [v26 setObject:v37 forKeyedSubscript:@"HWADVBufferIntervalMs"];

      v38 = [NSNumber numberWithBool:sub_10003BC78(v20[5])];
      [v26 setObject:v38 forKeyedSubscript:@"isRangeScan"];

      v39 = [NSNumber numberWithBool:sub_10003BC84(v20[5])];
      [v26 setObject:v39 forKeyedSubscript:@"isPriorityCritical"];

      v40 = [NSNumber numberWithBool:*(*(v20[5] + 8) + 171)];
      [v26 setObject:v40 forKeyedSubscript:@"holdPowerAssert"];

      v41 = [NSNumber numberWithBool:*(*(v20[5] + 8) + 172)];
      [v26 setObject:v41 forKeyedSubscript:@"isContactTracing"];

      v42 = [NSNumber numberWithUnsignedInt:*(v20[5] + 208)];
      [v26 setObject:v42 forKeyedSubscript:@"scanAgentType"];

      v43 = [NSNumber numberWithInt:*(v20[5] + 96)];
      [v26 setObject:v43 forKeyedSubscript:@"agentScanLevel"];

      v44 = [v21[477] stringWithUTF8String:sub_10002F16C(v25)];
      [v26 setObject:v44 forKeyedSubscript:@"usecase"];

      if (buf[8] == 1)
      {
        v45 = v21[477];
        sub_10003BC90(buf);
        v46 = v391[9] >= 0 ? v390 : *v390;
        v47 = [v45 stringWithUTF8String:v46];
        [v26 setObject:v47 forKeyedSubscript:@"usecaseParams"];

        if ((v391[9] & 0x80000000) != 0)
        {
          operator delete(*v390);
        }
      }

      v48 = v21[477];
      sub_100018384(v20[4], v390);
      if (v391[9] >= 0)
      {
        v49 = v390;
      }

      else
      {
        v49 = *v390;
      }

      v50 = [v48 stringWithUTF8String:v49];
      [v359 setObject:v26 forKeyedSubscript:v50];

      if ((v391[9] & 0x80000000) != 0)
      {
        operator delete(*v390);
      }

      if ((sub_1000178BC(v20[5]) & 1) == 0)
      {
        goto LABEL_200;
      }

      ++v357;
      v51 = v20[5];
      if ((*(*(v51 + 8) + 3) & 1) == 0 && *(v361 + 1988) == 2)
      {
        goto LABEL_200;
      }

      v52 = sub_100028FB4(v51);
      v53 = v20[5];
      v54 = *(v53 + 8);
      if (v52)
      {
        v55 = *(v54 + 144);
        if (v55 == 1)
        {
          v57 = *(v54 + 152);
          v56 = *(v54 + 156);
          v347 = *(v54 + 160);
        }

        else
        {
          v347 = 0;
          v56 = 0;
          v57 = 0;
        }

        v63 = v23;
        if (v63 < v57)
        {
          v63 = v57;
        }

        v23 = v63;
        v64 = v24;
        if (v64 < v56)
        {
          v64 = v56;
        }

        v24 = v64;
        v65 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v20[4], v388);
          v66 = v388;
          if (v389 < 0)
          {
            v66 = *v388;
          }

          *v390 = 136447746;
          *&v390[4] = v66;
          *&v390[12] = 2048;
          *v391 = v23;
          *&v391[8] = 2048;
          *v392 = v24;
          *&v392[8] = 1024;
          *v393 = v57;
          *&v393[4] = 1024;
          v394 = v56;
          v395 = 1024;
          v396 = v347;
          v397 = 1024;
          v398 = v55;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Client (%{public}s) HWADVBufferIntervalMs:%f HWADVBufferWindowMs:%f _interval:%d _window:%d _active:%d specifiedParams:%d", v390, 0x38u);
          if (v389 < 0)
          {
            operator delete(*v388);
          }

          v53 = v20[5];
          v54 = *(v53 + 8);
        }

        if (*(v54 + 16) == *(v54 + 8))
        {
          v67 = 0;
          v68 = 0;
          v331 = 0;
        }

        else
        {
          v67 = 0;
          v68 = 0;
          v331 = 0;
          v337 |= sub_10003C8E8(v53);
        }

        goto LABEL_143;
      }

      if (*(v54 + 172) == 1)
      {
        if (*(v361 + 1255) == 1)
        {
          v58 = v23;
          if (v58 < 965.62)
          {
            v58 = 965.62;
          }

          v23 = v58;
          v59 = v24;
          if (v59 < 30.0)
          {
            v59 = 30.0;
          }

          v24 = v59;
          v60 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v20[4], v388);
            v61 = v388;
            if (v389 < 0)
            {
              v61 = *v388;
            }

            *v390 = 136446722;
            *&v390[4] = v61;
            *&v390[12] = 2048;
            *v391 = v23;
            *&v391[8] = 2048;
            *v392 = v24;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "EN Client (%{public}s) HWADVBufferIntervalMs:%f HWADVBufferWindowMs:%f", v390, 0x20u);
            if (v389 < 0)
            {
              v62 = *v388;
              goto LABEL_77;
            }
          }
        }

        else
        {
          v75 = *(v53 + 96);
          if (v332 >= v75)
          {
            v76 = v75;
          }

          else
          {
            v76 = v332;
          }

          v332 = v76;
          v337 |= sub_10003C8E8(v53);
          v77 = qword_100BCEA38;
          if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v20[4], v390);
            v78 = v391[9] >= 0 ? v390 : *v390;
            *v388 = 136446210;
            *&v388[4] = v78;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "EN Client (%{public}s) ", v388, 0xCu);
            if ((v391[9] & 0x80000000) != 0)
            {
              v62 = *v390;
LABEL_77:
              operator delete(v62);
            }
          }
        }

        v347 = 0;
        v67 = 0;
        v68 = 0;
        goto LABEL_143;
      }

      v69 = *(v54 + 192);
      if (v69 != 265)
      {
        v70 = *(v53 + 81);
        if (v70 != 32 && v70 != 16)
        {
          v347 = 0;
          v67 = 0;
          v68 = 0;
          v71 = v361;
          goto LABEL_141;
        }
      }

      v71 = v361;
      if ((sub_10003C8E8(v20[5]) & 1) != 0 || sub_10000D124((*(v20[5] + 8) + 248), 0, 0x100uLL))
      {
LABEL_63:
        v72 = 1;
      }

      else
      {
        v94 = *(v20[5] + 8);
        v95 = *(v94 + 120);
        v96 = *(v94 + 128);
        while (v95 != v96)
        {
          if (*(v95 + 104) == 1 && *(v95 + 73))
          {
            goto LABEL_63;
          }

          v95 += 112;
        }

        v72 = 0;
      }

      v319 |= v72;
      v73 = v20[5];
      if (v69 == 265)
      {
        v74 = sub_10003C8E8(v73);
        v337 |= v74;
        v53 = v20[5];
        if (*(v53 + 81) != 32)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v79 = *(v73 + 8);
        if (v79[2] == v79[1] && v79[11] != v79[12] && (v97 = sub_10000C798(), v98 = (*(*v97 + 632))(v97), v73 = v20[5], (v98 & 1) != 0))
        {
          if (sub_10003C8E8(v73) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            sub_100877224(&v365, v366);
            v71 = v361;
          }
        }

        else
        {
          if (sub_10003C8E8(v73))
          {
            v80 = *(v20[5] + 224);
          }

          else
          {
            v80 = 0;
          }

          v337 = v80 | v337 & 1;
        }

        v53 = v20[5];
        if (*(v53 + 81) != 32)
        {
LABEL_112:
          v347 = 0;
          v67 = 0;
          v68 = 0;
          v92 = *(v53 + 96);
          if (v332 >= v92)
          {
            v93 = v92;
          }

          else
          {
            v93 = v332;
          }

          v332 = v93;
          goto LABEL_141;
        }
      }

      v74 = sub_10003D460(v53);
      v81 = v74 ^ 1;
      v53 = v20[5];
      if (v69 == 265)
      {
        v81 = 0;
      }

      if (v81)
      {
        goto LABEL_112;
      }

LABEL_88:
      v82 = *(v53 + 8);
      if (*(v82 + 144) == 1)
      {
        v68 = *(v82 + 152);
        v67 = *(v82 + 156);
        v347 = *(v82 + 160);
        if (v347 == 1)
        {
          v83 = qword_100BCE918;
          v74 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
          if (v74)
          {
            *v390 = 67109634;
            *&v390[4] = v67;
            *&v390[8] = 1024;
            *&v390[10] = v68;
            *v391 = 2082;
            *&v391[2] = "active";
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "Daemon is requesting scan parameters %d/%d (%{public}s)", v390, 0x18u);
          }
        }

        if (v312)
        {
          v84 = sub_10003C8F4(v74, v20[5]);
          if (v84)
          {
            v85 = sub_10003CEAC(v84, (v68 / 0.625), (v67 / 0.625));
            if (v85 == 5)
            {
              v67 = 30;
            }

            else
            {
              v67 = v67;
            }

            if (v85 == 5)
            {
              v68 = 300;
            }

            else
            {
              v68 = v68;
            }
          }
        }

        v86 = v326;
        if (!v326 || v68 / v67 < v324 / v326)
        {
          v86 = v67;
          v324 = v68;
        }

        v326 = v86;
        v53 = v20[5];
        v87 = *(v53 + 8);
        if (*(v87 + 313) == 1)
        {
          BYTE4(v316) = 1;
          if (v324)
          {
            if (v86)
            {
              if (HIDWORD(v315))
              {
                v88 = v315;
                v89 = HIDWORD(v315);
                v90 = SHIDWORD(v315) / v315;
                v91 = v324 / v86;
                if (SHIDWORD(v315) / v315 < v324 / v326)
                {
                  v88 = v326;
                }

                LODWORD(v315) = v88;
                if (v90 < v91)
                {
                  v89 = v324;
                }

                HIDWORD(v315) = v89;
                BYTE4(v316) = 1;
              }

              else
              {
                BYTE4(v316) = 1;
                v315 = __PAIR64__(v324, v86);
              }
            }
          }
        }

        v318 = v347 | v318 & 1;
        if (*(v87 + 170) != 1)
        {
          goto LABEL_141;
        }

        if (!v68)
        {
          goto LABEL_141;
        }

        v99 = *(v87 + 168);
        if (!v99)
        {
          goto LABEL_141;
        }

        if (v316)
        {
          if (v313)
          {
            if (SHIDWORD(v313) / v313 > v68 / v99)
            {
              goto LABEL_136;
            }
          }

          else
          {
            LODWORD(v313) = 0;
          }
        }

        else
        {
LABEL_136:
          v311 = (v67 / 0.625);
          LODWORD(v313) = (v99 / 0.625);
          HIDWORD(v313) = (v68 / 0.625);
        }

        v100 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          v101 = sub_100028FA8(v53);
          v102 = sub_10002F16C(v101);
          *v390 = 136316162;
          *&v390[4] = v102;
          *&v390[12] = 2080;
          *v391 = "Y";
          *&v391[8] = 1024;
          *v392 = v68;
          *&v392[4] = 1024;
          *&v392[6] = v311;
          *v393 = 1024;
          *&v393[2] = v313;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "%s MC preferred %s interval %d orig window %d mc only window %d", v390, 0x28u);
          v53 = v20[5];
        }

        LOBYTE(v316) = 1;
        goto LABEL_141;
      }

      v347 = 0;
      v67 = 0;
      v68 = 0;
LABEL_141:
      v331 = 0;
      v323 = 0;
      if (*(*(v53 + 8) + 3) == 1)
      {
        v322 |= *(v71 + 1988) == 2;
      }

LABEL_143:
      v103 = sub_10003BC84(v20[5]);
      v343 = v103;
      if (!v336)
      {
        goto LABEL_167;
      }

      v103 = v361;
      if (byte_100BC7CC6)
      {
        goto LABEL_167;
      }

      if (sub_10002904C(v361, v20[5]))
      {
        v350 = 1;
        v104 = v361;
      }

      else
      {
        v104 = v361;
        if (*(*(v20[5] + 8) + 240) == 1)
        {
          v105 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v390 = 0;
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization for double boost with allowed use cases.", v390, 2u);
          }

          v350 = 1;
        }
      }

      if ((byte_100BC7CC7 & 1) != 0 || sub_1000292A4(v104, v20[5]))
      {
        v328 = v317 | v350;
      }

      if (qword_100B50910 != -1)
      {
        sub_100874420();
      }

      v103 = sub_100028FC8();
      if ((v350 & 1) == 0)
      {
        goto LABEL_164;
      }

      v106 = v103 & 0xFFFFFFFD;
      if (v103 == 2)
      {
        v107 = sub_10000C7D0();
        v103 = (*(*v107 + 3176))(v107);
        if (v106 == 1)
        {
          v108 = 0;
        }

        else
        {
          v108 = v103;
        }

        if ((v108 & 1) == 0)
        {
LABEL_162:
          v328 &= v317;
          v109 = qword_100BCE918;
          v103 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
          if (v103)
          {
            *v390 = 0;
            _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization is not enabled with HIDs connected.", v390, 2u);
          }

LABEL_164:
          v350 = 0;
          goto LABEL_167;
        }
      }

      else if (v106 == 1)
      {
        goto LABEL_162;
      }

      v350 = 1;
LABEL_167:
      if (v330)
      {
        v103 = sub_10003D484(v20[5]);
        if ((v103 & 1) != 0 || (v103 = sub_10003CB84(v103, v20[5]), v103))
        {
          v339 = 1;
        }
      }

      if (*(v361 + 4424) == 1)
      {
        v103 = sub_1007AA218(v103, v20[5]);
        v334 |= v103;
      }

      v110 = sub_10003D490(v103, v20[5]);
      v111 = v349;
      if (v110 > v349)
      {
        v111 = v110;
      }

      v349 = v111;
      if (v345)
      {
        v345 = sub_10003BC78(v20[5]);
      }

      else
      {
        v345 = 0;
      }

      v112 = v20[5];
      v113 = *(v112 + 8);
      v114 = *(v113 + 163);
      if (!v114)
      {
        v114 = 1;
        *(v113 + 163) = 1;
      }

      a2[16] |= v114;
      v115 = *(v112 + 208);
      if (v115 == 3)
      {
        v116 = v22;
      }

      else
      {
        v116 = v115;
        if (v22 != 3)
        {
          if (v22 == v115)
          {
            v116 = v22;
          }

          else
          {
            v116 = 2;
          }
        }
      }

      v342 = v116;
      v335 = v115;
      v117 = *(v113 + 174);
      if (v117 > a2[18])
      {
        a2[18] = v117;
      }

      v118 = v21[477];
      sub_100018384(v20[4], v390);
      v119 = v391[9];
      v120 = *v390;
      v121 = [v21[477] defaultCStringEncoding];
      if (v119 >= 0)
      {
        v122 = v390;
      }

      else
      {
        v122 = v120;
      }

      v123 = [v118 stringWithCString:v122 encoding:v121];
      v340 = v68;
      v341 = v67;
      v344 = v26;
      if ((v391[9] & 0x80000000) != 0)
      {
        operator delete(*v390);
      }

      v124 = v21[477];
      v125 = v20[5];
      v126 = *(*(v125 + 8) + 3);
      v127 = sub_10003C8E8(v125);
      v128 = sub_10003A26C(v20[5]);
      v129 = v20[5];
      v130 = *(v129 + 81);
      v131 = v130 == 32;
      v132 = v130 == 16;
      v133 = sub_100028FB4(v129);
      if (sub_100028FB4(v20[5]))
      {
        v6 = v24;
      }

      else
      {
        v6 = 0.0;
      }

      if (sub_100028FB4(v20[5]))
      {
        v134 = v23;
      }

      else
      {
        v134 = 0.0;
      }

      v135 = sub_10003BC78(v20[5]);
      v136 = [v124 stringWithFormat:@"[%@] AP:%d AD:%d(%d/%d) AS:%d RAS:%d DMN:%d FG:%d ADVBF:%d(%.0f/%.0f) Rg:%d Cri:%d pBT:%d pwrAsrt:%d CT:%d type:%d level:%d MRC:%d", v123, v126, v127, v341, v340, v347, v128, v131, v132, v133, *&v6, *&v134, v135, sub_10003BC84(v20[5]), v350 & 1, *(*(v20[5] + 8) + 171), *(*(v20[5] + 8) + 172), *(v20[5] + 208), *(v20[5] + 96), v339 & 1];
      [v360 addObject:v136];

      v21 = &xpc_dictionary_set_uint64_ptr;
      v26 = v344;

      v352 |= v343;
      v22 = v342;
LABEL_200:

      *v390 = &v369[5];
      sub_10000CF30(v390);
      sub_10000CEDC(&v369[3], *(&v369[3] + 1));
      if (*(&v369[1] + 1))
      {
        *&v369[2] = *(&v369[1] + 1);
        operator delete(*(&v369[1] + 1));
      }

      *v390 = v369;
      sub_10000CFB0(v390);

      v137 = v20[1];
      if (v137)
      {
        do
        {
          v138 = v137;
          v137 = *v137;
        }

        while (v137);
      }

      else
      {
        do
        {
          v138 = v20[2];
          v18 = *v138 == v20;
          v20 = v138;
        }

        while (!v18);
      }

      v20 = v138;
      v14 = v361;
      v13 = a2;
      if (v138 == (v361 + 2072))
      {
        v139 = (v357 != 0) & v345;
        v140 = v319 ^ 1;
        v348 = 100 * v311;
        v142 = v326;
        v141 = v328;
        v144 = v350;
        v143 = v352;
        v145 = v332;
        v146 = v324;
        v147 = v337;
        v148 = v318;
        goto LABEL_210;
      }
    }
  }

  v139 = 0;
  v349 = 0;
  v334 = 0;
  v339 = 0;
  v141 = 0;
  v144 = 0;
  v143 = 0;
  v322 = 0;
  v348 = 0;
  v313 = 0;
  v315 = 0;
  v316 = 0;
  v142 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v140 = 1;
  v145 = 4;
  v24 = 0.0;
  v335 = 3;
  v23 = 0.0;
  v22 = 3;
LABEL_210:
  *(v14 + 3248) = v22;
  v353 = v143;
  v354 = v22;
  v327 = v142;
  v329 = v141;
  v351 = v144;
  v356 = v139;
  v325 = v146;
  v333 = v145;
  v355 = [v21[477] stringWithFormat:@"AD:%d RD:%d AS:%d PHYS:%d MSL:%d (%d/%d) PSV:%d Rg:%d Cri:%d pBT:%d pWiFi:%d pCfg:%d type:%d", v147 & 1, *(v14 + 2384), v148 & 1, v13[16], v145, v142, v146, *v13, v139, v143 & 1, v144 & 1, v141 & 1, v13[18], v22];
  v149 = v147;
  v150 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v151 = *(v14 + 2080);
    *buf = 134218242;
    *&buf[4] = v151;
    *&buf[12] = 2114;
    *&buf[14] = v355;
    _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "ScanParams: numScanAgents %lu, combined params %{public}@", buf, 0x16u);
  }

  v346 = v140;
  v338 = v149;
  v152 = [v360 count];
  if (v152 >= -1)
  {
    v153 = 0;
    v154 = v152 - 1;
    v155 = ((v152 - 1) / 3 + 1);
    v156 = 2;
    v157 = 1;
    do
    {
      if (v156 >= v154)
      {
        v158 = v154;
      }

      else
      {
        v158 = v156;
      }

      v159 = [v360 subarrayWithRange:{v153, v158 + v157}];
      v160 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v161 = [v159 componentsJoinedByString:@"|"];
        *buf = 138543362;
        *&buf[4] = v161;
        _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "ScanParams: %{public}@", buf, 0xCu);
      }

      v156 += 3;
      v157 -= 3;
      v153 += 3;
      --v155;
      v13 = a2;
    }

    while (v155);
  }

  if (v333 == 1)
  {
    *(v13 + 1) = 3145792;
    v162 = BYTE4(v316);
    v163 = v148;
    goto LABEL_229;
  }

  v162 = BYTE4(v316);
  v163 = v148;
  if (v333 == 4)
  {
    *(v13 + 1) = 3147273;
    *v13 = 1;
  }

  else
  {
    if (v333 == 3)
    {
      v164 = 480;
    }

    else
    {
      if (v333 != 2)
      {
        goto LABEL_229;
      }

      v164 = 96;
    }

    *(v13 + 1) = v164 | 0x300000;
  }

LABEL_229:
  if (v325)
  {
    v165 = v327 == 0;
  }

  else
  {
    v165 = 1;
  }

  v166 = !v165;
  if (v165)
  {
    v168 = *(v13 + 3);
    v167 = *(v13 + 2);
    v169 = v338;
  }

  else
  {
    if (v163)
    {
      *v13 = 0;
    }

    v167 = *(v13 + 2);
    v168 = *(v13 + 3);
    v169 = v338;
    if (v325 / v327 <= (v167 / v168))
    {
      v167 = (v325 / 0.625);
      *(v13 + 2) = v167;
      v168 = (v327 / 0.625);
      *(v13 + 3) = v168;
    }
  }

  if (qword_100B50910 != -1)
  {
    sub_100874420();
    v13 = a2;
    v169 = v338;
    v162 = BYTE4(v316);
  }

  v170 = sub_10003CE34(off_100B50908);
  v171 = sub_10000C798();
  v358 = (*(*v171 + 1032))(v171);
  if (v170 & 1 | ((v358 & 1) == 0))
  {
    v172 = 0;
  }

  else
  {
    v172 = _os_feature_enabled_impl();
  }

  *v390 = 100;
  if (SHIDWORD(v315) / v315 == *(v13 + 2) / *(v13 + 3) && _os_feature_enabled_impl())
  {
    v172 |= v162;
  }

  if ((v170 & 1) == 0)
  {
    v173 = sub_1000154A8();
    v174 = 100 * v168 / v167;
    if ((*(*v173 + 96))(v173))
    {
      goto LABEL_251;
    }

    if (v333 == 1)
    {
      if (v174 >= 0x32)
      {
LABEL_263:
        v179 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          LOWORD(v180) = *(v13 + 3);
          LOWORD(v181) = *(v13 + 2);
          *buf = 134219264;
          *&buf[4] = v180 * 0.625;
          *&buf[12] = 2048;
          *&buf[14] = v181 * 0.625;
          *&buf[22] = 1024;
          *&buf[24] = v174;
          *&buf[28] = 2048;
          *&buf[30] = 0x403E000000000000;
          *&buf[38] = 2048;
          *&buf[40] = 0x404E000000000000;
          *&buf[48] = 1024;
          *&buf[50] = v333;
          _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_INFO, "Limiting scan duty cycle based on other activities from %.2fms/%.2fms (scanPercentage %d)to %.2fms/%.2fms minScanLevel %d", buf, 0x36u);
        }

        *(v13 + 1) = 3145824;
        goto LABEL_266;
      }
    }

    else
    {
      if (v174 > 0x31)
      {
        v178 = v166;
      }

      else
      {
        v178 = 0;
      }

      if (v178)
      {
        goto LABEL_263;
      }
    }

LABEL_251:
    if (v174 < 0x22)
    {
      v172 = 0;
    }

    else
    {
      v175 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        LOWORD(v176) = *(v13 + 3);
        LOWORD(v177) = *(v13 + 2);
        *buf = 134219264;
        *&buf[4] = v176 * 0.625;
        *&buf[12] = 2048;
        *&buf[14] = v177 * 0.625;
        *&buf[22] = 1024;
        *&buf[24] = v174;
        *&buf[28] = 2048;
        *&buf[30] = 0x403E000000000000;
        *&buf[38] = 2048;
        *&buf[40] = 0x4056800000000000;
        *&buf[48] = 1024;
        *&buf[50] = v333;
        _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_INFO, "Limiting scan duty cycle based on other activities from %.2fms/%.2fms (scanPercentage %d)to %.2fms/%.2fms minScanLevel %d", buf, 0x36u);
      }

      *(v13 + 1) = 3145872;
      v390[0] = v174 + (v174 >> 1) - 50;
    }
  }

LABEL_266:
  if (*(v361 + 2376))
  {
    if (qword_100B54770 != -1)
    {
      sub_1008743D0();
      v13 = a2;
      v169 = v338;
      v162 = BYTE4(v316);
    }

    v182 = sub_100512BEC(off_100B54768);
    *(v13 + 2) = v182;
    *(v13 + 3) = 48;
    v183 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v182;
      *&buf[8] = 1024;
      *&buf[10] = 48;
      _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_INFO, "ExposureNotification scan active, setting params interval:%d window:%d", buf, 0xEu);
    }

    v172 = 0;
    v323 = 0;
  }

  if ((*v13 & 1) == 0 && ((*(v361 + 144) | v322) & 1) == 0)
  {
    v184 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "Forcing passive scans based on screen state", buf, 2u);
    }

    *v13 = 1;
    if (*(v361 + 2278) == 1)
    {
      v185 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v186 = *(v361 + 2279);
        *buf = 67109120;
        *&buf[4] = v186;
        _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "ForcePassiveScan is now %d", buf, 8u);
      }

      *v13 = *(v361 + 2279);
    }
  }

  if (v323)
  {
    v187 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = v24;
      _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_INFO, "ADV buffer only, overriding settings HWADVBufferIntervalMs:%f HWADVBufferWindowMs:%f", buf, 0x16u);
    }

    v172 = 0;
    *(v13 + 2) = (v23 / 0.625);
    *(v13 + 3) = (v24 / 0.625);
    *v13 = 1;
  }

  v188 = sub_10000C7D0();
  if ((*(*v188 + 3232))(v188))
  {
    if (qword_100B50910 != -1)
    {
      sub_100874420();
      v13 = a2;
      v169 = v338;
      v162 = BYTE4(v316);
    }

    if (*(off_100B50908 + 209) == 1)
    {
      v189 = *(v13 + 3);
      v190 = *(v13 + 2);
      if (100 * v189 / v190 >= 0xB)
      {
        v191 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          *buf = 134219264;
          *&buf[4] = v189 * 0.625;
          *&buf[12] = 2048;
          *&buf[14] = v190 * 0.625;
          *&buf[22] = 1024;
          *&buf[24] = 100 * v189 / v190;
          *&buf[28] = 2048;
          *&buf[30] = 0x403E000000000000;
          *&buf[38] = 2048;
          *&buf[40] = 0x4072C00000000000;
          *&buf[48] = 1024;
          *&buf[50] = v333;
          _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_INFO, "Limiting scan duty cycle due to BT ACL protect mode from %.2fms/%.2fms (scanPercentage %d)to %.2fms/%.2fms minScanLevel %d", buf, 0x36u);
        }

        *(v13 + 1) = 3146208;
      }
    }
  }

  v192 = *(v361 + 2368);
  if (v331)
  {
    if (v192 == 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      *(v361 + 2368) = Current;
      *(v361 + 2360) = Current;
    }
  }

  else
  {
    if (v192 != 0.0)
    {
      v194 = CFAbsoluteTimeGetCurrent();
      *(v361 + 2336) = (v194 - *(v361 + 2368) + *(v361 + 2336));
      *(v361 + 2368) = v194;
    }

    *(v361 + 2368) = 0;
  }

  if (((v321 | v320) & 1) != 0 && (*(v13 + 3) == 0xFFFF || !*(v13 + 3)) && sub_10003663C(v361))
  {
    *(v13 + 2) = 4800;
  }

  v195 = v162 | v172;
  v196 = 100 * *(v13 + 3) / *(v13 + 2);
  if (v196 < 0x1E)
  {
    if ((v351 | v329))
    {
      v197 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v198 = "No";
        if (v351)
        {
          v199 = "Yes";
        }

        else
        {
          v199 = "No";
        }

        *buf = 136315650;
        *&buf[4] = v199;
        if (v329)
        {
          v198 = "Yes";
        }

        *&buf[12] = 2080;
        *&buf[14] = v198;
        *&buf[22] = 1024;
        *&buf[24] = v196;
        _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "Do not prioritize scanning over BT %s WiFi %s for scan duty cycle %u.", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v13[24] = v351 & 1;
    v13[25] = v329 & 1;
  }

  if (*(v361 + 4424) == 1)
  {
    v200 = *(v13 + 3);
    v201 = *(v13 + 2);
    v2 = v200 * 100.0 / v201;
    v202 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      *&buf[4] = v200;
      *&buf[8] = 1024;
      *&buf[10] = v201;
      *&buf[14] = 2048;
      *&buf[16] = v200 * 100.0 / v201;
      *&buf[24] = 2048;
      *&buf[26] = 0x4008DAB7EC1DD343;
      *&buf[34] = 1024;
      *&buf[36] = v2 > 3.10679612;
      _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEFAULT, "Checking if throttling down our scan during SDP is needed window:%d interval:%d dutyCycle:%f throttledDutyCycle:%f needToThrottle:%d", buf, 0x28u);
    }

    if (v2 > 3.10679612)
    {
      v203 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "Throttling down our scan during SDP", buf, 2u);
      }

      *(v13 + 1) = 3147273;
      if (v334)
      {
        *v390 = 72745216;
        v195 = 1;
      }
    }
  }

  v204 = sub_10000C7D0();
  if ((*(*v204 + 2824))(v204))
  {
    v205 = 1;
  }

  else
  {
    v206 = sub_10000C7D0();
    v205 = (*(*v206 + 2816))(v206);
  }

  if (*a2 == 1)
  {
    v207 = sub_10000C798();
    v208 = (*(*v207 + 352))(v207);
    v209 = v169 ^ 1;
    if (v208)
    {
      v210 = v205 | v209;
      a2[3] = v210 & 1;
      v211 = a2 + 3;
      if (v210)
      {
        goto LABEL_330;
      }
    }

    else
    {
      a2[3] = v209 & 1;
      v211 = a2 + 3;
      if ((v169 & 1) == 0)
      {
        goto LABEL_330;
      }
    }

    goto LABEL_329;
  }

  a2[3] = v346 & 1;
  v211 = a2 + 3;
  if ((v346 & 1) == 0)
  {
LABEL_329:
    *(v361 + 2384) = 0;
  }

LABEL_330:
  v212 = *(a2 + 2);
  if (v212 != 48)
  {
    if (*(a2 + 2))
    {
      v213 = *(a2 + 3);
      if (*(a2 + 3))
      {
        if (v213 == v212)
        {
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            sub_100877258(v213);
          }

          *(a2 + 1) = 3145776;
        }
      }
    }
  }

  if ((v195 & 1) == 0 || (*a2 & 1) == 0)
  {
    v390[0] = 0;
    *&v390[2] = 0;
  }

  if (v349)
  {
    v214 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v215 = "No";
      if (v312)
      {
        v215 = "Yes";
      }

      *buf = 67109378;
      *&buf[4] = v367;
      *&buf[8] = 2080;
      *&buf[10] = v215;
      _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_DEFAULT, "powerSource %d is wall powered %s\n", buf, 0x12u);
    }
  }

  if ((v316 & 1) != 0 && ((v216 = qword_100BCE918, v217 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT), v218 = *(a2 + 3), v219 = *(a2 + 2), !v217) ? (v220 = v348 / SHIDWORD(v313)) : (*buf = 67110400, *&buf[4] = 100 * v218 / v219, *&buf[8] = 1024, v220 = v348 / SHIDWORD(v313), *&buf[10] = v348 / SHIDWORD(v313), *&buf[14] = 1024, *&buf[16] = v218, *&buf[20] = 1024, *&buf[22] = v219, *&buf[26] = 1024, *&buf[28] = v313, *&buf[32] = 1024, *&buf[34] = HIDWORD(v313), _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEFAULT, "isMCOnlyPreferred original duty %d mc only duty %d window %d interval %d windowMCOnlyPreferred %d intervalMCOnlyPreferred %d", buf, 0x26u), v218 = *(a2 + 3), v219 = *(a2 + 2)), 100 * v218 / v219 == v220))
  {
    *(a2 + 3) = v313;
    *(a2 + 2) = WORD2(v313);
    v221 = 1;
  }

  else
  {
    v221 = 0;
  }

  sub_10003D8DC(v361, a2, v321, v320, v353 & 1, v356, v390, v349, v221);
  v222 = sub_10000C7D0();
  if ((*(*v222 + 3192))(v222, *(a2 + 2), *(a2 + 3)))
  {
    a2[25] = 1;
  }

  v223 = sub_10000C798();
  v224 = (*(*v223 + 952))(v223);
  if (v224 && (*(v361 + 4360) & 1) == 0 && !(v339 & 1 | ((*a2 & 1) == 0)))
  {
    v225 = sub_100083A98(v224, *(a2 + 2), *(a2 + 3));
    if (v225 == 4)
    {
      v227 = 48;
      goto LABEL_367;
    }

    if (v225 == 5)
    {
      v226 = sub_10000C798();
      if ((*(*v226 + 384))(v226))
      {
        if (qword_100B50910 != -1)
        {
          sub_100874420();
        }

        if (sub_1005BCB34(off_100B50908))
        {
          v227 = *(a2 + 6) + *(a2 + 3);
LABEL_367:
          *(a2 + 6) = v227;
          *(a2 + 6) = 0;
        }
      }
    }
  }

  a2[15] = v339 & 1;
  v228 = _os_feature_enabled_impl();
  if (*(a2 + 2) == 144)
  {
    v229 = v228;
  }

  else
  {
    v229 = 0;
  }

  v230 = qword_100BCE918;
  if (v229 == 1 && *(a2 + 3) == 48)
  {
    *(a2 + 2) = 0;
    *(a2 + 6) = 0;
    *(a2 + 2) = 48;
    if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "Override scan parameters by 30/0/0/0 // 30 with feature flag AudioFriendlyBLEScanParams.", buf, 2u);
      v230 = qword_100BCE918;
    }
  }

  if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = *(a2 + 3);
    LOWORD(v4) = *(a2 + 2);
    LOWORD(v5) = *(a2 + 4);
    if (v321)
    {
      v231 = "supported";
    }

    else
    {
      v231 = "unsupported";
    }

    LOWORD(v3) = *(a2 + 6);
    LOWORD(v2) = *(a2 + 5);
    if (a2[14])
    {
      v232 = "concurrent";
    }

    else
    {
      v232 = "non-concurrent";
    }

    if (v320)
    {
      v233 = "supported";
    }

    else
    {
      v233 = "unspported";
    }

    if (qword_100B50910 != -1)
    {
      sub_100874420();
    }

    *buf = 134225154;
    v234 = *(off_100B50908 + 212);
    v235 = *(v361 + 144);
    if (*a2)
    {
      v236 = "passive";
    }

    else
    {
      v236 = "active";
    }

    v237 = a2[19];
    v238 = *(a2 + 10);
    if (a2[3])
    {
      v239 = "Enabled";
    }

    else
    {
      v239 = "Disabled";
    }

    v240 = *(a2 + 11);
    v241 = "No";
    v242 = a2[24];
    v243 = a2[25];
    if (v170)
    {
      v244 = "Yes";
    }

    else
    {
      v244 = "No";
    }

    *&buf[4] = *&v6 * 0.625;
    if (v237)
    {
      v241 = "Yes";
    }

    *&buf[12] = 2048;
    *&buf[14] = v4 * 0.625;
    *&buf[22] = 2048;
    if (v205)
    {
      v245 = "supported";
    }

    else
    {
      v245 = "unsupported";
    }

    *&buf[24] = v5 * 0.625;
    v246 = "N";
    *&buf[32] = 2048;
    if (v339)
    {
      v246 = "Y";
    }

    *&buf[34] = v4 * 0.625;
    *&buf[42] = 2082;
    *&buf[44] = v231;
    *&buf[52] = 2048;
    *&buf[54] = v3 * 0.625;
    *&buf[62] = 2048;
    *v369 = *&v2 * 0.625;
    WORD4(v369[0]) = 2082;
    *(v369 + 10) = v232;
    WORD1(v369[1]) = 2082;
    *(&v369[1] + 4) = v233;
    WORD6(v369[1]) = 1024;
    *(&v369[1] + 14) = v327;
    WORD1(v369[2]) = 1024;
    DWORD1(v369[2]) = v325;
    WORD4(v369[2]) = 1024;
    *(&v369[2] + 10) = v234;
    HIWORD(v369[2]) = 1024;
    LODWORD(v369[3]) = v170;
    WORD2(v369[3]) = 1024;
    *(&v369[3] + 6) = v358;
    WORD5(v369[3]) = 1024;
    HIDWORD(v369[3]) = v195 & 1;
    LOWORD(v369[4]) = 1024;
    *(&v369[4] + 2) = v322 & 1;
    WORD3(v369[4]) = 1024;
    DWORD2(v369[4]) = v235;
    WORD6(v369[4]) = 2082;
    *(&v369[4] + 14) = v236;
    WORD3(v369[5]) = 2082;
    *(&v369[5] + 1) = v239;
    LOWORD(v370) = 1024;
    *(&v370 + 2) = v333;
    HIWORD(v370) = 2082;
    v371 = v244;
    v372 = 2082;
    v373 = v241;
    v374 = 1024;
    v375 = v238;
    v376 = 1024;
    v377 = v240;
    v378 = 1024;
    v379 = v242;
    v380 = 1024;
    v381 = v243;
    v382 = 1024;
    v383 = v367;
    v384 = 2080;
    v385 = v245;
    v386 = 2080;
    v387 = v246;
    _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "Returning scan parameters: Main:%.2fms/%.2fms LP:%.2fms/%.2fms(%{public}s) SC:%.2fms/%.2fms/%{public}s(%{public}s) Dm:(m:%d/%d) Cond:%d:%d:%d:%d:%d Sc:%d (%{public}s) Dupfilter:%{public}s minScanLevel:%d HD:%{public}s Comp:%{public}s(%d,%d) Pri:%d/%d PS:%d UUIDPerRuleDup:%s mrc:%s", buf, 0xECu);
  }

  v247 = a2;
  if (*(v361 + 2246) == 1)
  {
    *(a2 + 2) = *(v361 + 2248);
    *(a2 + 6) = *(v361 + 2250);
    v248 = *(v361 + 2260);
    if (*(v361 + 2258))
    {
      v249 = *(v361 + 2260);
    }

    else
    {
      v249 = 0;
    }

    if (*(v361 + 2258))
    {
      v248 = 0;
    }

    *(a2 + 6) = v249;
    *(a2 + 5) = v248;
    v250 = sub_10000C798();
    if ((*(*v250 + 952))(v250) && (*(v361 + 4360) & 1) == 0 && *a2 == 1 && *(v361 + 2247) == 1)
    {
      if (*(v361 + 2254))
      {
        *(a2 + 6) = *(v361 + 2254);
      }

      if (*(v361 + 2256))
      {
        *v314 = *(v361 + 2256);
      }
    }

    v251 = *(v361 + 2262);
    a2[14] = v251;
    if (*(v361 + 2263) == 1)
    {
      a2[15] = *(v361 + 2264);
    }

    if (*(v361 + 2266) == 1)
    {
      a2[16] = *(v361 + 2265);
    }

    if (*(v361 + 2267) == 1)
    {
      v252 = *(v361 + 2270);
    }

    else
    {
      v252 = 0;
    }

    a2[19] = v252 & 1;
    if (*(v361 + 2268) == 1)
    {
      v253 = *(v361 + 2272);
    }

    else
    {
      v253 = 0;
    }

    *(a2 + 10) = v253;
    if (*(v361 + 2269) == 1)
    {
      v254 = *(v361 + 2274);
    }

    else
    {
      v254 = 0;
    }

    v247 = a2;
    *(a2 + 11) = v254;
    v255 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v256 = *(a2 + 2);
      v257 = *(a2 + 3);
      v258 = *(a2 + 4);
      v259 = *(a2 + 6);
      v260 = *(a2 + 5);
      v261 = "No";
      if (v251)
      {
        v262 = "Yes";
      }

      else
      {
        v262 = "No";
      }

      if (v252)
      {
        v261 = "Yes";
      }

      v263 = a2[15];
      *buf = 67112706;
      *&buf[4] = v256;
      *&buf[8] = 2048;
      *&buf[10] = v256 * 0.625;
      *&buf[18] = 1024;
      *&buf[20] = v257;
      *&buf[24] = 1024;
      *&buf[26] = v258;
      *&buf[30] = 1024;
      *&buf[32] = v259;
      *&buf[36] = 1024;
      *&buf[38] = v260;
      *&buf[42] = 2048;
      *&buf[44] = v257 * 0.625;
      *&buf[52] = 2048;
      *&buf[54] = v258 * 0.625;
      *&buf[62] = 2048;
      *v369 = v259 * 0.625;
      WORD4(v369[0]) = 2048;
      *(v369 + 10) = v260 * 0.625;
      WORD1(v369[1]) = 2082;
      *(&v369[1] + 4) = v262;
      WORD6(v369[1]) = 2082;
      *(&v369[1] + 14) = v261;
      WORD3(v369[2]) = 1024;
      DWORD2(v369[2]) = v253;
      WORD6(v369[2]) = 1024;
      *(&v369[2] + 14) = v254;
      WORD1(v369[3]) = 1024;
      DWORD1(v369[3]) = v263;
      _os_log_impl(&_mh_execute_header, v255, OS_LOG_TYPE_DEFAULT, "Returning scan parameters (overridden with ScanCore) Interval %d(%.2fms) Window %d/%d/%d/%d(%.2fms/%.2fms/%.2fms/%.2fms) Concurrent %{public}s Compensation %{public}s percent %d query %d MRC:%d", buf, 0x78u);
    }
  }

  v264 = *(v247 + 3);
  v265 = *(v247 + 2);
  v266 = +[NSMutableDictionary dictionary];
  v267 = [NSNumber numberWithBool:*v247];
  [v266 setObject:v267 forKeyedSubscript:@"scanParams.passive"];

  v268 = [NSNumber numberWithBool:a2[1]];
  [v266 setObject:v268 forKeyedSubscript:@"scanParams.limited"];

  v269 = [NSNumber numberWithBool:*v211];
  [v266 setObject:v269 forKeyedSubscript:@"scanParams.filterDups"];

  LOWORD(v270) = *(a2 + 2);
  v271 = [NSNumber numberWithDouble:v270 * 0.625];
  [v266 setObject:v271 forKeyedSubscript:@"scanParams.interval"];

  LOWORD(v272) = *(a2 + 3);
  v273 = [NSNumber numberWithDouble:v272 * 0.625];
  [v266 setObject:v273 forKeyedSubscript:@"scanParams.window"];

  LOWORD(v274) = *(a2 + 4);
  v275 = [NSNumber numberWithDouble:v274 * 0.625];
  [v266 setObject:v275 forKeyedSubscript:@"scanParams.windowLPCore"];

  LOWORD(v276) = *v314;
  v277 = [NSNumber numberWithDouble:v276 * 0.625];
  [v266 setObject:v277 forKeyedSubscript:@"scanParams.windowScanCoreELNABypass"];

  LOWORD(v278) = *(a2 + 6);
  v279 = [NSNumber numberWithDouble:v278 * 0.625];
  [v266 setObject:v279 forKeyedSubscript:@"scanParams.windowScanCoreELNAOn"];

  v280 = [NSNumber numberWithBool:a2[14]];
  [v266 setObject:v280 forKeyedSubscript:@"scanParams.concurrencyMode"];

  v281 = [NSNumber numberWithUnsignedChar:a2[16]];
  [v266 setObject:v281 forKeyedSubscript:@"scanParams.scanningPhys"];

  v282 = [NSNumber numberWithBool:a2[17]];
  [v266 setObject:v282 forKeyedSubscript:@"scanParams.retainDuplicates"];

  v283 = [NSNumber numberWithUnsignedChar:a2[18]];
  [v266 setObject:v283 forKeyedSubscript:@"scanParams.priorityConfig"];

  v284 = [NSNumber numberWithBool:a2[19]];
  [v266 setObject:v284 forKeyedSubscript:@"scanParams.isScanCoreCompensated"];

  v285 = [NSNumber numberWithUnsignedShort:*(a2 + 10)];
  [v266 setObject:v285 forKeyedSubscript:@"scanParams.scanCoreCompensationPercent"];

  v286 = [NSNumber numberWithUnsignedShort:*(a2 + 11)];
  [v266 setObject:v286 forKeyedSubscript:@"scanParams.scanCoreCoexQueryPeriod"];

  v287 = [NSNumber numberWithBool:a2[24]];
  [v266 setObject:v287 forKeyedSubscript:@"scanParams.isPrioritizedOverBT"];

  v288 = [NSNumber numberWithBool:a2[25]];
  [v266 setObject:v288 forKeyedSubscript:@"scanParams.isPrioritizedOverWiFi"];

  v289 = [NSNumber numberWithBool:*(v361 + 144)];
  [v266 setObject:v289 forKeyedSubscript:@"fScreenState"];

  v290 = [NSNumber numberWithInt:v325];
  [v266 setObject:v290 forKeyedSubscript:@"daemonInterval"];

  v291 = [NSNumber numberWithInt:v327];
  [v266 setObject:v291 forKeyedSubscript:@"daemonWindow"];

  v292 = [NSNumber numberWithInt:v333];
  [v266 setObject:v292 forKeyedSubscript:@"minScanLevel"];

  v293 = [NSNumber numberWithUnsignedInt:100 * v264 / v265];
  [v266 setObject:v293 forKeyedSubscript:@"scanPercentage"];

  v294 = [NSNumber numberWithBool:v322 & 1];
  [v266 setObject:v294 forKeyedSubscript:@"allowInPause"];

  v295 = [NSNumber numberWithBool:v323 & 1];
  [v266 setObject:v295 forKeyedSubscript:@"onlyDoingHWADVBuffer"];

  v296 = [NSNumber numberWithBool:v331 & 1];
  [v266 setObject:v296 forKeyedSubscript:@"onlyDoingENHWADVBuffer"];

  v297 = [NSNumber numberWithDouble:v23];
  [v266 setObject:v297 forKeyedSubscript:@"HWADVBufferIntervalMs"];

  v298 = [NSNumber numberWithDouble:v24];
  [v266 setObject:v298 forKeyedSubscript:@"HWADVBufferWindowMs"];

  v299 = [NSNumber numberWithBool:v321];
  [v266 setObject:v299 forKeyedSubscript:@"scanLPCoreEnable"];

  v300 = [NSNumber numberWithBool:v320];
  [v266 setObject:v300 forKeyedSubscript:@"isScanCoreEnabled"];

  v301 = [NSNumber numberWithBool:v336];
  [v266 setObject:v301 forKeyedSubscript:@"supportsDiscoveryScanPrioritization"];

  v302 = [NSNumber numberWithBool:v356];
  [v266 setObject:v302 forKeyedSubscript:@"isRangeScan"];

  v303 = [NSNumber numberWithBool:v353 & 1];
  [v266 setObject:v303 forKeyedSubscript:@"isPriorityCritical"];

  v304 = [NSNumber numberWithUnsignedInt:v354];
  [v266 setObject:v304 forKeyedSubscript:@"combinedScanAgentType"];

  v305 = [NSNumber numberWithUnsignedInt:v335];
  [v266 setObject:v305 forKeyedSubscript:@"scanAgentType"];

  v306 = [NSNumber numberWithBool:v351 & 1];
  [v266 setObject:v306 forKeyedSubscript:@"isPrioritizedOverBT"];

  v307 = [NSNumber numberWithBool:v329 & 1];
  [v266 setObject:v307 forKeyedSubscript:@"isPrioritizedOverWiFi"];

  v308 = [NSNumber numberWithUnsignedInt:*(v361 + 1988)];
  [v266 setObject:v308 forKeyedSubscript:@"fObserverState"];

  [v359 setObject:v266 forKeyedSubscript:@"Controller"];
  v363[0] = _NSConcreteStackBlock;
  v363[1] = 3221225472;
  v363[2] = sub_10003DDE4;
  v363[3] = &unk_100B0D250;
  v309 = v359;
  v364 = v309;
  sub_10000D058(v361 + 1896, v363);

  return 1;
}

void sub_100036144(_Unwind_Exception *a1)
{
  sub_100138880(&STACK[0x270]);

  _Unwind_Resume(a1);
}

uint64_t *sub_10003650C(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1000365D8(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    result = *(*(v1[5] + 8) + 172);
    if (result)
    {
      break;
    }

    v4 = v1[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

uint64_t sub_10003663C(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 != (a1 + 2072))
  {
    v3 = 0;
    while (1)
    {
      v4 = v1[5];
      v5 = *(v4 + 8);
      if (*(v5 + 192))
      {
        v21 = 0;
        v20 = 0u;
        v18 = 0u;
        memset(v19, 0, sizeof(v19));
        v16 = 0u;
        *__p = 0u;
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        sub_10000CBF0(&v12, (*(v4 + 8) + 320));
        if (v13)
        {
          v6 = BYTE8(v12);
        }

        else
        {
          v6 = 0;
        }

        v22 = &v20;
        sub_10000CF30(&v22);
        sub_10000CEDC(v19, *(&v19[0] + 1));
        if (__p[1])
        {
          *&v18 = __p[1];
          operator delete(__p[1]);
        }

        v3 |= v6;
        v22 = &v16;
        sub_10000CFB0(&v22);

        v5 = *(v4 + 8);
      }

      v7 = *(v5 + 146) != 0;
      if ((*(v5 + 282) & 4) != 0 && !*(v5 + 146))
      {
        break;
      }

      v8 = v1[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v1[2];
          v10 = *v9 == v1;
          v1 = v9;
        }

        while (!v10);
      }

      v3 |= v7;
      v1 = v9;
      if (v9 == v2)
      {
        return v3 & 1;
      }
    }
  }

  LOBYTE(v3) = 0;
  return v3 & 1;
}

uint64_t sub_100036790(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1 >> 3 < 0x271)
  {
    if (v1 - 3000 < 0x3E8)
    {
      return 1;
    }
  }

  else if (v1 >> 4 < 0x177)
  {
    return 1;
  }

  return 0;
}

void sub_1000367C8(uint64_t a1)
{
  v1 = *(a1 + 2224);
  if (v1)
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v1 + 16))(v1), v5 = 136446210, v6 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v5, 0xCu), (v1 = *(a1 + 2224)) != 0))
    {
      (*(*v1 + 8))(v1);
    }

    *(a1 + 2224) = 0;
  }
}

void sub_1000368D8(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v176 = a3;
  if ((atomic_load_explicit(&qword_100BC7CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100BC7CE8))
  {
    dword_100BC7CE0 = *(sub_10000C7D0() + 800);
    __cxa_guard_release(&qword_100BC7CE8);
  }

  v7 = 0uLL;
  v188 = 0u;
  v189 = 0uLL;
  v198 = 1;
  v191 = 0;
  BYTE1(v188) = 1;
  *(&v188 + 2) = 0x1000000;
  BYTE6(v188) = 1;
  *(&v188 + 7) = 256;
  *&v190 = 0;
  *(&v190 + 7) = 0;
  HIBYTE(v190) = 1;
  v196 = 0;
  v197 = 0;
  memset(v194, 0, sizeof(v194));
  v192 = 0u;
  v193 = 0u;
  v195 = &v196;
  v199 = 0uLL;
  v200 = 0;
  v177 = 0u;
  v178 = 0uLL;
  v185 = 1;
  v180 = 0;
  BYTE1(v177) = 1;
  BYTE6(v177) = 1;
  *(&v177 + 7) = 0;
  *&v179 = 0;
  *(&v179 + 7) = 0;
  HIBYTE(v179) = 1;
  *(&v183 + 1) = 0;
  v184 = 0;
  memset(v181, 0, sizeof(v181));
  memset(__p_8, 0, sizeof(__p_8));
  *&v183 = &v183 + 8;
  v186 = 0uLL;
  v187 = 0;
  if (a2 < 851968)
  {
    if (a2 <= 65548)
    {
      if (a2 > 65543)
      {
        if ((a2 - 65545) < 2)
        {
          v213[5].n128_u16[7] = 0;
          memset(v213, 0, 32);
          *(v213[1].n128_u32 + 1) = 65793;
          *(&v213[1].n128_u32[1] + 3) = 33620224;
          *(&v213[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
          v213[2].n128_u32[1] = 0xFFFF;
          *(&v213[2] + 8) = 0uLL;
          *(&v213[3] + 8) = 0uLL;
          *(&v213[4] + 8) = 0uLL;
          *(v213[5].n128_u64 + 6) = 0;
          *(&v213[1].n128_u16[2] + 1) = 4764;
          if (_os_feature_enabled_impl())
          {
            LOBYTE(v185) = 0;
          }

          v42 = sub_10000C798();
          if ((*(*v42 + 416))(v42))
          {
            WORD4(v179) = 30;
            WORD6(v179) = 300;
            LOWORD(v178) = 0;
            LOBYTE(v177) = 0;
            *(&v178 + 1) = 0;
            v213[1].n128_u8[4] = *(a1 + 144);
            sub_10003ABD0(v181 + 8, v213);
            if (_os_feature_enabled_impl())
            {
              LOBYTE(v185) = *(a1 + 144);
              v207[0] = xmmword_1008A4F0C;
              v207[1].n128_u32[0] = 0;
              sub_10000D03C(v212, v207);
              sub_10000CDB8(__p_8, v212);
              if (_os_feature_enabled_impl())
              {
                v207[0] = xmmword_1008A4F20;
                v207[1].n128_u32[0] = 0;
                sub_10000D03C(v212, v207);
                sub_10000CDB8(__p_8, v212);
              }
            }
          }

          else
          {
            v91 = sub_10000C798();
            if ((*(*v91 + 408))(v91))
            {
              WORD4(v179) = 0;
              WORD6(v179) = 0;
              LOWORD(v178) = 0;
              LOBYTE(v177) = 0;
              *(&v178 + 1) = 0;
              BYTE4(v177) = 1;
              v213[1].n128_u8[4] = 1;
              sub_10003ABD0(v181 + 8, v213);
              if (_os_feature_enabled_impl())
              {
                LOBYTE(v185) = 1;
                v207[0] = xmmword_1008A4F0C;
                v207[1].n128_u32[0] = 0;
                sub_10000D03C(v212, v207);
                sub_10000CDB8(__p_8, v212);
                if (_os_feature_enabled_impl())
                {
                  v207[0] = xmmword_1008A4F20;
                  v207[1].n128_u32[0] = 0;
                  sub_10000D03C(v212, v207);
                  sub_10000CDB8(__p_8, v212);
                }
              }

              if ((*(a1 + 144) & 1) == 0)
              {
                goto LABEL_171;
              }
            }

            else
            {
              v119 = dword_100BC7CE0 - 22;
              v120 = dword_100BC7CE0 - 3000;
              v121 = (dword_100BC7CE0 - 3000) < 0x3E8;
              v122 = dword_100BC7CE0 - 5000;
              if ((dword_100BC7CE0 - 19) < 0x7BD || v122 < 0x3E8)
              {
                v121 = 1;
              }

              if (v120 < 0x3E8 || v119 < 0x7BA || v122 <= 0x3E7)
              {
                v124 = *(a1 + 144);
              }

              else
              {
                v124 = 0;
              }

              LOBYTE(v177) = v124 & 1;
              if (v121)
              {
                LOBYTE(v121) = *(a1 + 144);
              }

              v145 = v120 >= 0x3E8 && v119 >= 0x7BA && v122 >= 0x3E8;
              v213[1].n128_u8[7] = v121 & 1;
              *(&v178 + 1) = 0;
              v146 = 2 * (dword_100BC7CE0 > 0x12);
              if (!v145)
              {
                v146 = 3;
              }

              LOWORD(v178) = v146;
              v213[1].n128_u8[4] = *(a1 + 144);
              sub_10003ABD0(v181 + 8, v213);
              if (_os_feature_enabled_impl())
              {
                LOBYTE(v185) = *(a1 + 144);
                v207[0] = xmmword_1008A4F0C;
                v207[1].n128_u32[0] = 0;
                sub_10000D03C(v212, v207);
                sub_10000CDB8(__p_8, v212);
                if (_os_feature_enabled_impl())
                {
                  v207[0] = xmmword_1008A4F20;
                  v207[1].n128_u32[0] = 0;
                  sub_10000D03C(v212, v207);
                  sub_10000CDB8(__p_8, v212);
                }
              }

              WORD4(v179) = 30;
              v147 = *(a1 + 144);
              if (v147)
              {
                v148 = 300;
              }

              else
              {
                v148 = 966;
              }

              WORD6(v179) = v148;
              if ((v147 & 1) == 0 && dword_100BC7CE0 <= 0x12)
              {
                goto LABEL_171;
              }
            }
          }

          LODWORD(v180) = 1;
          BYTE8(v177) = 1;
          v149 = v179;
          *(a4 + 16) = v178;
          *(a4 + 32) = v149;
          *(a4 + 48) = 1;
          *a4 = v177;
          v150 = v181[0];
          v181[0] = 0uLL;
          *(a4 + 56) = v150;
          *(a4 + 72) = v181[1];
          v181[1] = 0uLL;
          *(a4 + 88) = *__p_8;
          memset(__p_8, 0, sizeof(__p_8));
          v151 = v183;
          *(a4 + 104) = *&__p_8[16];
          *(a4 + 112) = v151;
          v152 = *(&v183 + 1);
          v153 = v184;
          *(a4 + 120) = *(&v183 + 1);
          *(a4 + 128) = v153;
          v154 = a4 + 120;
          if (v153)
          {
            *(v152 + 16) = v154;
            *&v183 = &v183 + 8;
            *(&v183 + 1) = 0;
            v184 = 0;
          }

          else
          {
            *(a4 + 112) = v154;
          }

          *(a4 + 136) = v185;
          *(a4 + 144) = v186;
          *(a4 + 160) = v187;
          v187 = 0;
          v186 = 0uLL;
          goto LABEL_297;
        }

        if ((a2 - 65547) >= 2)
        {
          if (a2 != 65544)
          {
            goto LABEL_158;
          }

LABEL_88:
          v213[5].n128_u16[7] = 0;
          memset(v213, 0, 32);
          *(v213[1].n128_u32 + 1) = 65793;
          *(&v213[1].n128_u32[1] + 3) = 33620224;
          *(&v213[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
          v213[2].n128_u32[1] = 0xFFFF;
          *(&v213[2] + 8) = 0uLL;
          *(&v213[3] + 8) = 0uLL;
          *(&v213[4] + 8) = 0uLL;
          *(v213[5].n128_u64 + 6) = 0;
          *(&v213[1].n128_u16[2] + 1) = 4737;
          if (_os_feature_enabled_impl())
          {
            LOBYTE(v185) = 0;
          }

          v43 = sub_10000C798();
          if ((*(*v43 + 416))(v43))
          {
            WORD4(v179) = 30;
            WORD6(v179) = 300;
            LOWORD(v178) = 0;
            LOBYTE(v177) = 0;
            *(&v178 + 1) = 0;
            v213[1].n128_u8[4] = *(a1 + 144);
            sub_10003ABD0(v181 + 8, v213);
            if (_os_feature_enabled_impl())
            {
              v207[0] = xmmword_1008A4F0C;
              v207[1].n128_u32[0] = 0;
              sub_10000D03C(v212, v207);
              sub_10000CDB8(__p_8, v212);
              if (_os_feature_enabled_impl())
              {
                v207[0] = xmmword_1008A4F20;
                v207[1].n128_u32[0] = 0;
                sub_10000D03C(v212, v207);
                sub_10000CDB8(__p_8, v212);
              }

              LOBYTE(v185) = *(a1 + 144);
            }

LABEL_330:
            LODWORD(v180) = 1;
            BYTE8(v177) = 1;
            v165 = v179;
            *(a4 + 16) = v178;
            *(a4 + 32) = v165;
            *(a4 + 48) = 1;
            *a4 = v177;
            v166 = v181[0];
            v181[0] = 0uLL;
            *(a4 + 56) = v166;
            *(a4 + 72) = v181[1];
            v181[1] = 0uLL;
            *(a4 + 88) = *__p_8;
            memset(__p_8, 0, sizeof(__p_8));
            v167 = v183;
            *(a4 + 104) = *&__p_8[16];
            *(a4 + 112) = v167;
            v168 = *(&v183 + 1);
            v169 = v184;
            *(a4 + 120) = *(&v183 + 1);
            *(a4 + 128) = v169;
            v170 = a4 + 120;
            if (v169)
            {
              *(v168 + 16) = v170;
              *&v183 = &v183 + 8;
              *(&v183 + 1) = 0;
              v184 = 0;
            }

            else
            {
              *(a4 + 112) = v170;
            }

            *(a4 + 136) = v185;
            *(a4 + 144) = v186;
            *(a4 + 160) = v187;
            v187 = 0;
            v186 = 0uLL;
            goto LABEL_297;
          }

          v92 = sub_10000C798();
          if ((*(*v92 + 408))(v92))
          {
            WORD4(v179) = 0;
            WORD6(v179) = 0;
            LOWORD(v178) = 0;
            LOBYTE(v177) = 0;
            *(&v178 + 1) = 0;
            BYTE4(v177) = 1;
            v213[1].n128_u8[4] = 1;
            sub_10003ABD0(v181 + 8, v213);
            if (_os_feature_enabled_impl())
            {
              LOBYTE(v185) = 1;
              v207[0] = xmmword_1008A4F0C;
              v207[1].n128_u32[0] = 0;
              sub_10000D03C(v212, v207);
              sub_10000CDB8(__p_8, v212);
              if (_os_feature_enabled_impl())
              {
                v207[0] = xmmword_1008A4F20;
                v207[1].n128_u32[0] = 0;
                sub_10000D03C(v212, v207);
                sub_10000CDB8(__p_8, v212);
              }
            }

            if (*(a1 + 144))
            {
              goto LABEL_330;
            }

LABEL_171:
            sub_10079D428(a4, &v188);
LABEL_297:

            goto LABEL_221;
          }

          v125 = (dword_100BC7CE0 - 19) < 0x7BD;
          v126 = (dword_100BC7CE0 - 22) < 0x7BA;
          if ((dword_100BC7CE0 - 5000) < 0x3E8)
          {
            v125 = 1;
            v126 = 1;
          }

          if ((dword_100BC7CE0 - 3000) >= 0x3E8)
          {
            v127 = v126;
          }

          else
          {
            v125 = 1;
            v127 = 1;
          }

          v172 = v127;
          if (v127)
          {
            LOBYTE(v127) = *(a1 + 144);
          }

          LOBYTE(v177) = v127 & 1;
          v128 = *(a1 + 144);
          v173 = v125;
          v213[1].n128_u8[7] = v125 & v128;
          *(&v178 + 1) = 0;
          v213[1].n128_u8[4] = v128;
          memset(v212, 0, sizeof(v212));
          sub_100039F24(v212);
          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          sub_100039F24(v207);
          if (_os_feature_enabled_impl())
          {
            LOBYTE(v185) = *(a1 + 144);
            v205 = xmmword_1008A4F0C;
            v206 = 0;
            sub_10000D03C(buf, &v205);
            *(v212 + 8) = *buf;
            v212[1].n128_u32[2] = v202;
            v212[1].n128_u8[12] = -127;
            v174 = sub_10002F16C(a2);
            v129 = [NSString stringWithFormat:@"%s-standard", v174];
            v130 = v212[0].n128_u64[0];
            v212[0].n128_u64[0] = v129;

            v212[2].n128_u8[0] = *(a1 + 144);
            v212[1].n128_u8[13] = v177;
            if (_os_feature_enabled_impl())
            {
              v205 = xmmword_1008A4F20;
              v206 = 0;
              sub_10000D03C(buf, &v205);
              *(v207 + 8) = *buf;
              v207[1].n128_u32[2] = v202;
              v207[1].n128_u8[12] = -127;
              v131 = [NSString stringWithFormat:@"%s-legacy", v174];
              v132 = v207[0].n128_u64[0];
              v207[0].n128_u64[0] = v131;

              LOBYTE(v208) = *(a1 + 144);
              v207[1].n128_u8[13] = v177;
            }
          }

          if ((dword_100BC7CE0 - 3000) < 0x3E8 || (dword_100BC7CE0 - 22) < 0x7BA || (dword_100BC7CE0 - 5000) <= 0x3E7)
          {
            LOWORD(v178) = 3;
            v175 = _os_feature_enabled_impl();
            v155 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
            {
              v171 = dword_100BC7CE0;
              v156 = sub_10002F16C(a2);
              v157 = *(a1 + 144);
              *buf = 67109890;
              *&buf[4] = v175;
              *&buf[8] = 1024;
              *&buf[10] = v171;
              *&buf[14] = 2080;
              v202 = v156;
              v203 = 1024;
              v204 = v157;
              _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "bomEnabled:%d chipset:%d usecase:%s fScreenState:%d", buf, 0x1Eu);
            }

            if (v175)
            {
              if (a2 == 65559 && (*(a1 + 144) & 1) == 0)
              {
                v158 = sub_10000C798();
                if ((*(*v158 + 384))(v158))
                {
                  v159 = sub_10000C7D0();
                  if ((*(*v159 + 4128))(v159) == 25)
                  {
                    v213[1].n128_u8[4] = 1;
                    v213[2].n128_u64[1] = 0;
                    v213[3].n128_u64[0] = 0;
                    *(v213[3].n128_u64 + 7) = 0;
                    memset(v213[4].n128_u64 + 1, 0, 23);
                    *(&v213[3].n128_u16[7] + 1) = 4;
                    v213[5].n128_u16[4] = 4;
                    *(&v213[5].n128_u32[2] + 2) = 1638425;
                    v213[1].n128_u8[7] = v173;
                  }

                  v160 = sub_10000C7D0();
                  if ((*(*v160 + 4144))(v160) == 27 && _os_feature_enabled_impl())
                  {
                    memset(&v212[3].n128_f64[1] + 6, 0, 23);
                    memset(v212[2].n128_u32 + 2, 0, 24);
                    *(&v212[3].n128_u32[2] + 2) = 33488900;
                    *(&v212[5].n128_u16[2] + 1) = 4;
                    v212[5].n128_u32[2] = 1769499;
                    v212[2].n128_u16[0] = 257;
                    v212[1].n128_u8[13] = v172;
                    LOBYTE(v185) = 1;
                  }
                }
              }
            }
          }

          else if ((dword_100BC7CE0 - 19) > 0x7BC)
          {
            LOWORD(v178) = 0;
          }

          else
          {
            LOWORD(v178) = 2;
          }

          if ((dword_100BC7CE0 - 3000) < 0x3E8 || (dword_100BC7CE0 - 20) < 0x7BC || (dword_100BC7CE0 - 5000) <= 0x3E7)
          {
            v163 = *(a1 + 144) == 0;
            if (*(a1 + 144))
            {
              v164 = 30;
            }

            else
            {
              v164 = 0;
            }

            WORD4(v179) = v164;
            if (v163)
            {
              v162 = 0;
            }

            else
            {
              v162 = 300;
            }
          }

          else
          {
            if (!*(a1 + 144))
            {
              WORD4(v179) = 0;
              WORD6(v179) = 0;
              BYTE4(v177) = 1;
LABEL_326:
              sub_10003ABD0(v181 + 8, v213);
              if (_os_feature_enabled_impl())
              {
                sub_10003ACA0(&v186, v212);
                if (_os_feature_enabled_impl())
                {
                  sub_10003ACA0(&v186, v207);
                }
              }

              goto LABEL_330;
            }

            WORD4(v179) = 30;
            v162 = 300;
          }

          WORD6(v179) = v162;
          goto LABEL_326;
        }

LABEL_74:
        v213[5].n128_u16[7] = 0;
        memset(v213, 0, 32);
        *(v213[1].n128_u32 + 1) = 16843009;
        *(&v213[1].n128_u32[1] + 3) = 33620224;
        *(&v213[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
        v213[2].n128_u32[1] = 0xFFFF;
        *(&v213[2] + 8) = 0uLL;
        *(&v213[3] + 8) = 0uLL;
        *(&v213[4] + 8) = 0uLL;
        *(v213[5].n128_u64 + 6) = 0;
        *(&v213[1].n128_u16[2] + 1) = 4764;
        BYTE2(v177) = 1;
        v38 = sub_10000C798();
        if (((*(*v38 + 416))(v38) & 1) != 0 || (v39 = sub_10000C798(), (*(*v39 + 408))(v39)))
        {
          v40 = sub_10000C798();
          v213[1].n128_u8[7] = (*(*v40 + 408))(v40);
          v41 = sub_10000C798();
          LOBYTE(v177) = (*(*v41 + 408))(v41);
          WORD4(v179) = 30;
          WORD6(v179) = 30;
          LOWORD(v178) = 0;
          sub_10003ABD0(v181 + 8, v213);
          if (!_os_feature_enabled_impl())
          {
            goto LABEL_184;
          }

          v207[0] = xmmword_1008A4F0C;
          v207[1].n128_u32[0] = 0;
          sub_10000D03C(v212, v207);
          sub_10000CDB8(__p_8, v212);
          if (!_os_feature_enabled_impl())
          {
            goto LABEL_184;
          }
        }

        else
        {
          v94 = (dword_100BC7CE0 - 19) < 0x7BD;
          v95 = (dword_100BC7CE0 - 22) < 0x7BA;
          if ((dword_100BC7CE0 - 5000) < 0x3E8)
          {
            v94 = 1;
            v95 = 1;
          }

          v96 = (dword_100BC7CE0 - 3000) < 0x3E8 || v94;
          v213[1].n128_u8[7] = v96;
          v97 = (dword_100BC7CE0 - 3000) < 0x3E8 || v95;
          LOBYTE(v177) = v97;
          WORD4(v179) = 30;
          WORD6(v179) = 30;
          LOWORD(v178) = 0;
          sub_10003ABD0(v181 + 8, v213);
          if (!_os_feature_enabled_impl())
          {
            goto LABEL_184;
          }

          v207[0] = xmmword_1008A4F0C;
          v207[1].n128_u32[0] = 0;
          sub_10000D03C(v212, v207);
          sub_10000CDB8(__p_8, v212);
          if (!_os_feature_enabled_impl())
          {
            goto LABEL_184;
          }
        }

        v207[0] = xmmword_1008A4F20;
        v207[1].n128_u32[0] = 0;
        sub_10000D03C(v212, v207);
        sub_10000CDB8(__p_8, v212);
LABEL_184:
        if (a2 == 65567)
        {
          *&v179 = 6000;
          BYTE13(v177) = 1;
        }

        else if (a2 == 65547)
        {
          *&v179 = 6000;
        }

        else
        {
          v98 = sub_10000C798();
          if (((*(*v98 + 416))(v98) & 1) == 0)
          {
            *(&v178 + 1) = 39000;
            if ((a2 & 0xFFFFFFFE) == 0x1000C)
            {
              v99 = 63;
            }

            else
            {
              v99 = 0;
            }

            if (qword_100B50910 != -1)
            {
              sub_100874420();
            }

            v100 = sub_10003C714(off_100B50908, v99, 1u);
            if (~v100 & 6) == 0 || (v100)
            {
              WORD6(v179) = 90;
              BYTE7(v177) = 1;
              BYTE14(v179) = 1;
            }

            *&v179 = 120000;
            *(&v177 + 9) = 257;
            BYTE11(v177) = 1;
          }
        }

        LODWORD(v180) = 1;
        BYTE8(v177) = 1;
        v101 = v179;
        *(a4 + 16) = v178;
        *(a4 + 32) = v101;
        *(a4 + 48) = 1;
        *a4 = v177;
        v102 = v181[0];
        v181[0] = 0uLL;
        *(a4 + 56) = v102;
        *(a4 + 72) = v181[1];
        v181[1] = 0uLL;
        *(a4 + 88) = *__p_8;
        memset(__p_8, 0, sizeof(__p_8));
        v103 = v183;
        *(a4 + 104) = *&__p_8[16];
        *(a4 + 112) = v103;
        v104 = *(&v183 + 1);
        v105 = v184;
        *(a4 + 120) = *(&v183 + 1);
        *(a4 + 128) = v105;
        v106 = a4 + 120;
        if (v105)
        {
          *(v104 + 16) = v106;
          *&v183 = &v183 + 8;
          *(&v183 + 1) = 0;
          v184 = 0;
        }

        else
        {
          *(a4 + 112) = v106;
        }

        goto LABEL_254;
      }

      if (a2 > 267)
      {
        if (a2 == 268)
        {
          if (*(a1 + 144) != 1)
          {
            goto LABEL_125;
          }

          v60 = sub_10000C798();
          if (((*(*v60 + 352))(v60) & 1) == 0)
          {
LABEL_204:
            v7 = v192;
            v67 = v193;
            v68 = *v194;
            v65 = *&v194[16];
            v64 = v196;
            v66 = v195;
            v63 = v197;
            goto LABEL_205;
          }

          if (qword_100B50910 != -1)
          {
            sub_100874420();
          }

          v61 = sub_10003C714(off_100B50908, 0xFFFFu, 1u);
          WORD4(v179) = 30;
          WORD6(v179) = 40;
          *(&v177 + 9) = 257;
          BYTE11(v177) = 1;
          LODWORD(v177) = 0x1000000;
          *&v179 = 5000;
          if (~v61 & 6) == 0 || (v61)
          {
            WORD6(v179) = 90;
            BYTE7(v177) = 1;
            BYTE14(v179) = 1;
          }

          BYTE8(v177) = 1;
          v62 = &v177;
LABEL_150:
          sub_10079D428(a4, v62);
          goto LABEL_221;
        }

        if (a2 == 269)
        {
          BYTE4(v177) = 1;
          BYTE8(v177) = 1;
          LODWORD(v180) = 1;
LABEL_159:
          v89 = v178;
          *a4 = v177;
          *(a4 + 16) = v89;
          *(a4 + 32) = v179;
          *(a4 + 48) = v180;
          v181[0] = 0uLL;
          *(a4 + 56) = 0u;
          *(a4 + 72) = 0u;
          v181[1] = 0uLL;
          *(a4 + 96) = 0;
          *(a4 + 104) = 0;
          *(a4 + 88) = 0;
          memset(__p_8, 0, sizeof(__p_8));
          *(a4 + 120) = 0;
          *(a4 + 128) = 0;
          v90 = a4 + 120;
          *(v90 - 8) = v90;
          *(v90 + 16) = 1;
          *(v90 + 32) = 0;
          *(v90 + 40) = 0;
          *(v90 + 24) = 0;
LABEL_220:
          v187 = 0;
          v186 = 0uLL;
          goto LABEL_221;
        }

        goto LABEL_158;
      }

      if (a2 != 259)
      {
        if (a2 != 265)
        {
          goto LABEL_158;
        }

        if (qword_100B50910 != -1)
        {
          sub_100874420();
        }

        v19 = sub_10003C714(off_100B50908, 0x6Fu, 0);
        WORD4(v179) = 30;
        v20 = sub_10000C798();
        if ((*(*v20 + 352))(v20))
        {
          if ((~v19 & 6) == 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v111 = sub_10000C798();
          v112 = (*(*v111 + 456))(v111);
          if ((~v19 & 6) != 0)
          {
            v113 = 0;
          }

          else
          {
            v113 = v112;
          }

          if (v113)
          {
LABEL_45:
            WORD6(v179) = 60;
            v21 = sub_10000C798();
            if ((*(*v21 + 688))(v21))
            {
              BYTE14(v179) = 1;
            }

            goto LABEL_214;
          }
        }

        WORD6(v179) = 40;
LABEL_214:
        LODWORD(v177) = 16843009;
        *(&v178 + 1) = 0;
        WORD4(v177) = 257;
        BYTE10(v177) = 1;
        LODWORD(v180) = 1;
        v114 = v179;
        *(a4 + 16) = v178;
        *(a4 + 32) = v114;
        *(a4 + 48) = 1;
        *a4 = v177;
        v115 = v181[0];
        v181[0] = 0uLL;
        *(a4 + 56) = v115;
        *(a4 + 72) = v181[1];
        v181[1] = 0uLL;
        *(a4 + 88) = *__p_8;
        memset(__p_8, 0, sizeof(__p_8));
        v87 = *&__p_8[16];
        v88 = v183;
        goto LABEL_215;
      }

      if (*(a1 + 144) != 1)
      {
        goto LABEL_149;
      }

      v213[5].n128_u16[7] = 0;
      memset(v213, 0, 32);
      *(v213[1].n128_u64 + 1) = 0x101079C00010101;
      *(&v213[1].n128_u16[4] + 1) = 513;
      *(&v213[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
      v213[2].n128_u32[1] = 0xFFFF;
      *(&v213[2] + 8) = 0uLL;
      *(&v213[3] + 8) = 0uLL;
      *(&v213[4] + 8) = 0uLL;
      *(v213[5].n128_u64 + 6) = 0;
      sub_10003ABD0(v181 + 8, v213);
      if (_os_feature_enabled_impl())
      {
        LOBYTE(v185) = 0;
        v207[0] = xmmword_1008A4F0C;
        v207[1].n128_u32[0] = 0;
        sub_10000D03C(v212, v207);
        sub_10000CDB8(__p_8, v212);
        if (_os_feature_enabled_impl())
        {
          v207[0] = xmmword_1008A4F20;
          v207[1].n128_u32[0] = 0;
          sub_10000D03C(v212, v207);
          sub_10000CDB8(__p_8, v212);
        }
      }

LABEL_116:
      WORD4(v179) = 30;
      WORD6(v179) = 300;
      LOWORD(v178) = 0;
      LOWORD(v177) = 257;
      *(&v178 + 1) = 0;
      BYTE4(v177) = 1;
      BYTE8(v177) = 1;
      LODWORD(v180) = 1;
      sub_10079D428(a4, &v177);

      goto LABEL_221;
    }

    if (a2 > 65552)
    {
      if (a2 > 65558)
      {
        if (a2 == 65559)
        {
          goto LABEL_88;
        }

        if (a2 != 65567)
        {
          goto LABEL_158;
        }

        goto LABEL_74;
      }

      if (a2 == 65553)
      {
        if (*(a1 + 144) != 1)
        {
          goto LABEL_149;
        }

        v213[5].n128_u16[7] = 0;
        memset(v213, 0, 32);
        *(v213[1].n128_u64 + 1) = 0x101129C00010101;
        *(&v213[1].n128_u16[4] + 1) = 513;
        *(&v213[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
        v213[2].n128_u32[1] = 0xFFFF;
        *(&v213[2] + 8) = 0uLL;
        *(&v213[3] + 8) = 0uLL;
        *(&v213[4] + 8) = 0uLL;
        *(v213[5].n128_u64 + 6) = 0;
        sub_10003ABD0(v181 + 8, v213);
        if (_os_feature_enabled_impl())
        {
          LOBYTE(v185) = 0;
          v207[0] = xmmword_1008A4F0C;
          v207[1].n128_u32[0] = 0;
          sub_10000D03C(v212, v207);
          sub_10000CDB8(__p_8, v212);
          if (_os_feature_enabled_impl())
          {
            v207[0] = xmmword_1008A4F20;
            v207[1].n128_u32[0] = 0;
            sub_10000D03C(v212, v207);
            sub_10000CDB8(__p_8, v212);
          }
        }

        goto LABEL_116;
      }

      if (a2 != 65554)
      {
        goto LABEL_158;
      }

      v213[5].n128_u16[7] = 0;
      memset(v213, 0, 32);
      *(v213[1].n128_u64 + 1) = 0x101129C01010101;
      *(&v213[1].n128_u16[4] + 1) = 513;
      *(&v213[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
      v213[2].n128_u32[1] = 0xFFFF;
      *(&v213[2] + 8) = 0uLL;
      *(&v213[3] + 8) = 0uLL;
      *(&v213[4] + 8) = 0uLL;
      *(v213[5].n128_u64 + 6) = 0;
      LOBYTE(v177) = 1;
      WORD4(v179) = 30;
      WORD6(v179) = 30;
      LOWORD(v178) = 0;
      sub_10003ABD0(v181 + 8, v213);
      if (_os_feature_enabled_impl())
      {
        v207[0] = xmmword_1008A4F0C;
        v207[1].n128_u32[0] = 0;
        sub_10000D03C(v212, v207);
        sub_10000CDB8(__p_8, v212);
        if (_os_feature_enabled_impl())
        {
          v207[0] = xmmword_1008A4F20;
          v207[1].n128_u32[0] = 0;
          sub_10000D03C(v212, v207);
          sub_10000CDB8(__p_8, v212);
        }
      }

      LODWORD(v180) = 1;
      BYTE8(v177) = 1;
      v22 = v179;
      *(a4 + 16) = v178;
      *(a4 + 32) = v22;
      *(a4 + 48) = 1;
      *a4 = v177;
      *(a4 + 56) = v181[0];
      *(a4 + 72) = v181[1];
      memset(v181 + 8, 0, 24);
      *(a4 + 88) = *__p_8;
      *&v181[0] = 0;
      memset(__p_8, 0, sizeof(__p_8));
      v23 = v183;
      *(a4 + 104) = *&__p_8[16];
      *(a4 + 112) = v23;
      v24 = *(&v183 + 1);
      v25 = v184;
      *(a4 + 120) = *(&v183 + 1);
      *(a4 + 128) = v25;
      v26 = a4 + 120;
      if (v25)
      {
        *(v24 + 16) = v26;
        *&v183 = &v183 + 8;
        *(&v183 + 1) = 0;
        v184 = 0;
      }

      else
      {
        *(a4 + 112) = v26;
      }
    }

    else if (a2 > 65550)
    {
      if (a2 == 65551)
      {
        v213[5].n128_u16[7] = 0;
        memset(v213, 0, 32);
        *(v213[1].n128_u64 + 1) = 0x101129C01010101;
        *(&v213[1].n128_u16[4] + 1) = 513;
        *(&v213[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
        v213[2].n128_u32[1] = 0xFFFF;
        *(&v213[2] + 8) = 0uLL;
        *(&v213[3] + 8) = 0uLL;
        *(&v213[4] + 8) = 0uLL;
        *(v213[5].n128_u64 + 6) = 0;
        LOBYTE(v177) = 1;
        WORD4(v179) = 30;
        WORD6(v179) = 40;
        LOWORD(v178) = 0;
        *&v179 = 6000;
        sub_10003ABD0(v181 + 8, v213);
        if (_os_feature_enabled_impl())
        {
          v207[0] = xmmword_1008A4F0C;
          v207[1].n128_u32[0] = 0;
          sub_10000D03C(v212, v207);
          sub_10000CDB8(__p_8, v212);
          if (_os_feature_enabled_impl())
          {
            v207[0] = xmmword_1008A4F20;
            v207[1].n128_u32[0] = 0;
            sub_10000D03C(v212, v207);
            sub_10000CDB8(__p_8, v212);
          }
        }

        LODWORD(v180) = 1;
        BYTE8(v177) = 1;
        v80 = v179;
        *(a4 + 16) = v178;
        *(a4 + 32) = v80;
        *(a4 + 48) = 1;
        *a4 = v177;
        *(a4 + 56) = v181[0];
        *(a4 + 72) = v181[1];
        memset(v181 + 8, 0, 24);
        *(a4 + 88) = *__p_8;
        *&v181[0] = 0;
        memset(__p_8, 0, sizeof(__p_8));
        v81 = v183;
        *(a4 + 104) = *&__p_8[16];
        *(a4 + 112) = v81;
        v82 = *(&v183 + 1);
        v83 = v184;
        *(a4 + 120) = *(&v183 + 1);
        *(a4 + 128) = v83;
        v84 = a4 + 120;
        if (v83)
        {
          *(v82 + 16) = v84;
          *&v183 = &v183 + 8;
          *(&v183 + 1) = 0;
          v184 = 0;
        }

        else
        {
          *(a4 + 112) = v84;
        }
      }

      else
      {
        v213[5].n128_u16[7] = 0;
        memset(v213, 0, 32);
        *(v213[1].n128_u64 + 1) = 0x101129C01010101;
        *(&v213[1].n128_u16[4] + 1) = 513;
        *(&v213[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
        v213[2].n128_u32[1] = 0xFFFF;
        *(&v213[2] + 8) = 0uLL;
        *(&v213[3] + 8) = 0uLL;
        *(&v213[4] + 8) = 0uLL;
        *(v213[5].n128_u64 + 6) = 0;
        LOBYTE(v177) = 1;
        LOWORD(v178) = 0;
        *&v179 = 60000;
        v31 = *(a1 + 144);
        BYTE5(v177) = (v31 & 1) == 0;
        if (v31)
        {
          sub_10003ABD0(v181 + 8, v213);
          if (_os_feature_enabled_impl())
          {
            v207[0] = xmmword_1008A4F0C;
            v207[1].n128_u32[0] = 0;
            sub_10000D03C(v212, v207);
            sub_10000CDB8(__p_8, v212);
            if (_os_feature_enabled_impl())
            {
              v207[0] = xmmword_1008A4F20;
              v207[1].n128_u32[0] = 0;
              sub_10000D03C(v212, v207);
              sub_10000CDB8(__p_8, v212);
            }
          }

          WORD4(v179) = 30;
          WORD6(v179) = 90;
          v7 = v181[0];
          v32 = v181[1];
          v33 = *__p_8;
          v34 = *&__p_8[16];
          v35 = *(&v183 + 1);
          v37 = v183;
          v36 = v184;
        }

        else
        {
          v36 = 0;
          v35 = 0;
          v34 = 0;
          WORD4(v179) = 0;
          WORD6(v179) = 0;
          v37 = &v183 + 8;
          v32 = 0uLL;
          v33 = 0uLL;
        }

        LODWORD(v180) = 1;
        BYTE8(v177) = 1;
        v107 = v179;
        *(a4 + 16) = v178;
        *(a4 + 32) = v107;
        *(a4 + 48) = 1;
        *a4 = v177;
        v181[0] = 0uLL;
        *(a4 + 56) = v7;
        *(a4 + 72) = v32;
        v181[1] = 0uLL;
        *(a4 + 88) = v33;
        *(a4 + 104) = v34;
        memset(__p_8, 0, sizeof(__p_8));
        *(a4 + 120) = v35;
        v108 = a4 + 120;
        *(a4 + 112) = v37;
        *(a4 + 128) = v36;
        if (v36)
        {
          *(v35 + 16) = v108;
          *&v183 = &v183 + 8;
          *(&v183 + 1) = 0;
          v184 = 0;
        }

        else
        {
          *(a4 + 112) = v108;
        }
      }
    }

    else
    {
      if (a2 == 65549)
      {
        v213[5].n128_u16[7] = 0;
        memset(v213, 0, 32);
        *(v213[1].n128_u32 + 1) = 16843009;
        *(&v213[1].n128_u32[1] + 3) = 33620224;
        *(&v213[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
        v213[2].n128_u32[1] = 0xFFFF;
        *(&v213[2] + 8) = 0uLL;
        *(&v213[3] + 8) = 0uLL;
        *(&v213[4] + 8) = 0uLL;
        *(v213[5].n128_u64 + 6) = 0;
        *(&v213[1].n128_u16[2] + 1) = 4764;
        v75 = sub_10000C798();
        if ((*(*v75 + 416))(v75))
        {
          goto LABEL_172;
        }

        if (qword_100B50910 != -1)
        {
          sub_100874420();
        }

        v76 = sub_10003C714(off_100B50908, 0x3Fu, 1u);
        v213[1].n128_u8[7] = 1;
        LOBYTE(v177) = 1;
        BYTE2(v177) = 1;
        if (*(a1 + 144) != 1)
        {
LABEL_172:
          sub_10079D428(a4, &v188);
          v93 = 0;
        }

        else
        {
          v77 = v76;
          v78 = sub_10000C798();
          v79 = (*(*v78 + 408))(v78);
          WORD4(v179) = 30;
          if (v79)
          {
            WORD6(v179) = 40;
          }

          else
          {
            if ((v77 & 3) != 0)
            {
              if ((v77 & 5) != 0)
              {
                v161 = 90;
              }

              else
              {
                v161 = 60;
              }

              WORD6(v179) = v161;
              BYTE7(v177) = 1;
              BYTE14(v179) = 1;
            }

            else
            {
              WORD6(v179) = 30;
            }

            *(&v177 + 9) = 16843009;
          }

          LOWORD(v178) = 0;
          *(&v178 + 1) = 0;
          sub_10003ABD0(v181 + 8, v213);
          if (_os_feature_enabled_impl())
          {
            v207[0] = xmmword_1008A4F0C;
            v207[1].n128_u32[0] = 0;
            sub_10000D03C(v212, v207);
            sub_10000CDB8(__p_8, v212);
            if (_os_feature_enabled_impl())
            {
              v207[0] = xmmword_1008A4F20;
              v207[1].n128_u32[0] = 0;
              sub_10000D03C(v212, v207);
              sub_10000CDB8(__p_8, v212);
            }
          }

          LODWORD(v180) = 1;
          BYTE8(v177) = 1;
          sub_10079D428(a4, &v177);
          v93 = v213[0].n128_u64[1];
        }

        goto LABEL_221;
      }

      v213[5].n128_u16[7] = 0;
      memset(v213, 0, 32);
      *(v213[1].n128_u64 + 1) = 0x101129C01010101;
      *(&v213[1].n128_u16[4] + 1) = 513;
      *(&v213[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
      v213[2].n128_u32[1] = 0xFFFF;
      *(&v213[2] + 8) = 0uLL;
      *(&v213[3] + 8) = 0uLL;
      *(&v213[4] + 8) = 0uLL;
      *(v213[5].n128_u64 + 6) = 0;
      LOBYTE(v177) = 1;
      BYTE2(v177) = 1;
      WORD4(v179) = 30;
      WORD6(v179) = 300;
      LOWORD(v178) = 0;
      sub_10003ABD0(v181 + 8, v213);
      if (_os_feature_enabled_impl())
      {
        v207[0] = xmmword_1008A4F0C;
        v207[1].n128_u32[0] = 0;
        sub_10000D03C(v212, v207);
        sub_10000CDB8(__p_8, v212);
        if (_os_feature_enabled_impl())
        {
          v207[0] = xmmword_1008A4F20;
          v207[1].n128_u32[0] = 0;
          sub_10000D03C(v212, v207);
          sub_10000CDB8(__p_8, v212);
        }
      }

      *&v179 = 60000;
      LODWORD(v180) = 1;
      BYTE8(v177) = 1;
      *(a4 + 48) = 1;
      v14 = v178;
      *a4 = v177;
      *(a4 + 16) = v14;
      *(a4 + 32) = v179;
      *(a4 + 56) = v181[0];
      *(a4 + 72) = v181[1];
      memset(v181 + 8, 0, 24);
      *(a4 + 88) = *__p_8;
      *&v181[0] = 0;
      memset(__p_8, 0, sizeof(__p_8));
      v15 = v183;
      *(a4 + 104) = *&__p_8[16];
      *(a4 + 112) = v15;
      v16 = *(&v183 + 1);
      v17 = v184;
      *(a4 + 120) = *(&v183 + 1);
      *(a4 + 128) = v17;
      v18 = a4 + 120;
      if (v17)
      {
        *(v16 + 16) = v18;
        *&v183 = &v183 + 8;
        *(&v183 + 1) = 0;
        v184 = 0;
      }

      else
      {
        *(a4 + 112) = v18;
      }
    }

LABEL_254:
    *(a4 + 136) = v185;
    *(a4 + 144) = v186;
    *(a4 + 160) = v187;
    v187 = 0;
    v186 = 0uLL;

    goto LABEL_221;
  }

  if (a2 > 2147418114)
  {
    if (a2 > 2147418117)
    {
      if ((a2 - 2147418118) <= 0xC)
      {
        if (((1 << (a2 - 6)) & 0x10C8) != 0)
        {
          *&__p_8[8] = 0;
          sub_10000CEDC(&v183, 0);
          v184 = 0;
          v183 = &v183 + 8;
          WORD4(v179) = 30;
          if (a2 == 2147418125)
          {
            v13 = 300;
          }

          else
          {
            v13 = 30;
          }

          WORD6(v179) = v13;
          LOWORD(v177) = 257;
          *(&v178 + 1) = 0;
          v212[0] = xmmword_1008A4F98;
          v212[1].n128_u32[0] = 0;
          sub_10000D03C(v213, v212);
          sub_10000CDB8(__p_8, v213);
          v212[0] = xmmword_1008A4F98;
          v212[1].n128_u32[0] = 0;
          sub_10000D03C(v213, v212);
          v212[0].n128_u64[0] = v213;
          *(sub_1007B25FC(&v183, v213) + 48) = -127;
          BYTE8(v177) = 1;
          LODWORD(v180) = 1;
          LOBYTE(v185) = 1;
          if (a2 == 2147418130)
          {
            HIBYTE(v179) = 4;
          }

          else if (a2 == 2147418121)
          {
            BYTE13(v177) = 1;
          }

          v44 = v178;
          *a4 = v177;
          *(a4 + 16) = v44;
          *(a4 + 32) = v179;
          *(a4 + 48) = v180;
          v45 = v181[0];
          v181[0] = 0uLL;
          *(a4 + 56) = v45;
          *(a4 + 72) = v181[1];
          v181[1] = 0uLL;
          *(a4 + 88) = *__p_8;
          memset(__p_8, 0, sizeof(__p_8));
          v46 = v183;
          *(a4 + 104) = *&__p_8[16];
          *(a4 + 112) = v46;
          v47 = *(&v183 + 1);
          v48 = v184;
          *(a4 + 120) = *(&v183 + 1);
          *(a4 + 128) = v48;
          v49 = a4 + 120;
          if (v48)
          {
            *(v47 + 16) = v49;
            *&v183 = &v183 + 8;
            *(&v183 + 1) = 0;
            v184 = 0;
          }

          else
          {
            *(a4 + 112) = v49;
          }

          v50 = 1;
          goto LABEL_219;
        }

        if (a2 == 2147418118)
        {
          *&__p_8[8] = 0;
          WORD4(v179) = 30;
          WORD6(v179) = 30;
          LOWORD(v178) = 0;
          LOWORD(v177) = 257;
          *(&v178 + 1) = 0;
          v212[0] = xmmword_1008A4F98;
          v212[1].n128_u32[0] = 0;
          sub_10000D03C(v213, v212);
          sub_10000CDB8(__p_8, v213);
          v212[0] = xmmword_1008A4FAC;
          v212[1].n128_u32[0] = 0;
          sub_10000D03C(v213, v212);
          sub_10000CDB8(__p_8, v213);
          BYTE8(v177) = 1;
          v85 = v179;
          *(a4 + 16) = v178;
          *(a4 + 32) = v85;
          *(a4 + 48) = v180;
          *a4 = v177;
          v86 = v181[0];
          v181[0] = 0uLL;
          *(a4 + 56) = v86;
          *(a4 + 72) = v181[1];
          v181[1] = 0uLL;
          goto LABEL_157;
        }

        if (a2 == 2147418119)
        {
          WORD4(v179) = 30;
          WORD6(v179) = 30;
          LOWORD(v178) = 0;
          LOWORD(v177) = 256;
          *&v179 = 10000;
LABEL_130:
          BYTE8(v177) = 1;
          *(a4 + 48) = v180;
          v70 = v178;
          *a4 = v177;
          *(a4 + 16) = v70;
          *(a4 + 32) = v179;
          goto LABEL_131;
        }
      }

      goto LABEL_158;
    }

    if (a2 == 2147418115)
    {
      WORD4(v179) = 30;
      WORD6(v179) = 30;
      LOWORD(v178) = 0;
      v28 = 257;
      goto LABEL_128;
    }

    if (a2 == 2147418116)
    {
      WORD4(v179) = 30;
      WORD6(v179) = 30;
      LOWORD(v178) = 0;
      LOWORD(v177) = 256;
      *(&v178 + 1) = 20000;
      BYTE8(v177) = 1;
      *(a4 + 48) = v180;
      v69 = v179;
      *(a4 + 16) = v178;
      *(a4 + 32) = v69;
      *a4 = v177;
LABEL_131:
      *(a4 + 56) = 0u;
      *(a4 + 72) = 0u;
      goto LABEL_132;
    }

    WORD4(v179) = 30;
    WORD6(v179) = 30;
    LOWORD(v178) = 0;
    LOWORD(v177) = 256;
    *(&v178 + 1) = 0;
    BYTE3(v177) = 1;
    BYTE8(v177) = 1;
    *(a4 + 48) = v180;
    v27 = v178;
    *a4 = v177;
    *(a4 + 16) = v27;
    *(a4 + 32) = v179;
LABEL_111:
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
LABEL_132:
    memset(v181, 0, sizeof(v181));
    *(a4 + 88) = 0;
    *(a4 + 96) = 0;
    *(a4 + 104) = 0;
    memset(__p_8, 0, sizeof(__p_8));
    *(a4 + 120) = 0;
    *(a4 + 128) = 0;
    v71 = a4 + 120;
    *(v71 - 8) = v71;
    *(v71 + 16) = 1;
    *(v71 + 24) = 0;
    *(v71 + 32) = 0;
    *(v71 + 40) = 0;
    v186 = 0uLL;
    v187 = 0;
    goto LABEL_221;
  }

  if (a2 <= 983044)
  {
    if (a2 <= 983042)
    {
      if ((a2 - 851968) < 2)
      {
        if (*(a1 + 144) == 1)
        {
          v8 = sub_10000C798();
          if ((*(*v8 + 392))(v8) & 1) != 0 || (v9 = sub_10000C798(), ((*(*v9 + 384))(v9)))
          {
            LOBYTE(v185) = 1;
            WORD4(v179) = 30;
            WORD6(v179) = 40;
            LOBYTE(v177) = 0;
            *(&v178 + 1) = 15000;
            v212[0] = xmmword_1008A4F70;
            v212[1].n128_u32[0] = 0;
            sub_10000D03C(v213, v212);
            sub_10000CDB8(__p_8, v213);
            BYTE8(v177) = 1;
            v10 = *&v181[0];
            *&v181[0] = &stru_100B0CE28;

            v11 = v178;
            *a4 = v177;
            *(a4 + 16) = v11;
            *(a4 + 32) = v179;
            *(a4 + 48) = v180;
            v12 = v181[0];
            *&v181[0] = 0;
            *(a4 + 56) = v12;
            *(a4 + 72) = v181[1];
            memset(v181 + 8, 0, 24);
LABEL_157:
            *(a4 + 88) = *__p_8;
            memset(__p_8, 0, sizeof(__p_8));
            v87 = *&__p_8[16];
            v88 = v183;
LABEL_215:
            *(a4 + 104) = v87;
            *(a4 + 112) = v88;
            v116 = *(&v183 + 1);
            v117 = v184;
            *(a4 + 120) = *(&v183 + 1);
            *(a4 + 128) = v117;
            v118 = a4 + 120;
            if (v117)
            {
              *(v116 + 16) = v118;
              *&v183 = &v183 + 8;
              *(&v183 + 1) = 0;
              v184 = 0;
            }

            else
            {
              *(a4 + 112) = v118;
            }

            v50 = v185;
LABEL_219:
            *(a4 + 136) = v50;
            *(a4 + 144) = v186;
            *(a4 + 160) = v187;
            goto LABEL_220;
          }

          goto LABEL_204;
        }

LABEL_125:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = &v196;
        v67 = 0uLL;
        v68 = 0uLL;
LABEL_205:
        v109 = v189;
        *a4 = v188;
        *(a4 + 16) = v109;
        *(a4 + 32) = v190;
        *(a4 + 48) = v191;
        v192 = 0uLL;
        *(a4 + 56) = v7;
        *(a4 + 72) = v67;
        v193 = 0uLL;
        *(a4 + 88) = v68;
        *(a4 + 104) = v65;
        memset(v194, 0, sizeof(v194));
        *(a4 + 120) = v64;
        v110 = a4 + 120;
        *(a4 + 112) = v66;
        *(a4 + 128) = v63;
        if (v63)
        {
          v64[2] = v110;
          v195 = &v196;
          v196 = 0;
          v197 = 0;
        }

        else
        {
          *(a4 + 112) = v110;
        }

        *(a4 + 136) = v198;
        *(a4 + 144) = v199;
        *(a4 + 160) = v200;
        v200 = 0;
        v199 = 0uLL;
        goto LABEL_221;
      }

      if (a2 == 983042)
      {
        if (_os_feature_enabled_impl())
        {
          *&__p_8[8] = *__p_8;
          sub_10000CEDC(&v183, *(&v183 + 1));
          v184 = 0;
          v183 = &v183 + 8;
          WORD4(v179) = 30;
          WORD6(v179) = 30;
          LOWORD(v177) = 256;
          *(&v178 + 1) = 0;
          BYTE8(v177) = 1;
          LODWORD(v180) = 1;
          v212[0] = xmmword_1008A4F84;
          v212[1].n128_u32[0] = 0;
          sub_10000D03C(v213, v212);
          v212[0].n128_u64[0] = v213;
          *(sub_1007B25FC(&v183, v213) + 48) = -127;
          BYTE13(v177) = 1;
          memset(v213, 0, sizeof(v213));
          sub_100039F24(v213);
          LOBYTE(v185) = 1;
          v207[0] = xmmword_1008A4F84;
          v207[1].n128_u32[0] = 0;
          sub_10000D03C(v212, v207);
          *(v213 + 8) = v212[0];
          v213[1].n128_u32[2] = v212[1].n128_u32[0];
          v213[1].n128_u8[12] = -127;
          v51 = [NSString stringWithFormat:@"%s", "SOSBeaconPrecisionFindResponse"];
          v52 = v213[0].n128_u64[0];
          v213[0].n128_u64[0] = v51;

          v53 = [v176 objectForKey:@"CBUseCaseOptionSOSBeaconSubjectID"];
          v54 = [v176 objectForKey:@"CBUseCaseOptionSOSBeaconSearcherID"];
          v212[0] = xmmword_1008C5687;
          *(v212 + 11) = *(&xmmword_1008C5687 + 11);
          if (v53 && [v53 length] == 4)
          {
            [v53 getBytes:v212[0].n128_u32 + 2 length:4];
            v55 = -1;
          }

          else
          {
            v55 = 0;
          }

          if (v54 && [v54 length] == 4)
          {
            [v54 getBytes:&v212[0].n128_i32[1] + 2 length:4];
            v133 = -1;
          }

          else
          {
            v133 = 0;
          }

          *(&v213[2] + 1) = v212[0];
          *(&v213[2] + 12) = *(v212 + 11);
          v213[3].n128_u16[6] = -16144;
          *(&v213[3].n128_u32[3] + 2) = v55;
          *(v213[4].n128_u32 + 2) = v133;
          memset(&v213[4].n128_i32[1] + 2, 0, 17);
          v213[5].n128_u32[2] = 1769499;
          v213[2].n128_u8[0] = 1;
          sub_10003ACA0(&v186, v213);
          sub_10079D428(a4, &v177);

          goto LABEL_221;
        }

        goto LABEL_149;
      }

      goto LABEL_158;
    }

    if (a2 != 983043)
    {
      if (_os_feature_enabled_impl())
      {
        *&__p_8[8] = *__p_8;
        sub_10000CEDC(&v183, *(&v183 + 1));
        v184 = 0;
        v183 = &v183 + 8;
        WORD4(v179) = 30;
        WORD6(v179) = 30;
        LOWORD(v177) = 257;
        *(&v178 + 1) = 0;
        BYTE8(v177) = 1;
        LODWORD(v180) = 1;
        v212[0] = xmmword_1008A4F84;
        v212[1].n128_u32[0] = 0;
        sub_10000D03C(v213, v212);
        v212[0].n128_u64[0] = v213;
        *(sub_1007B25FC(&v183, v213) + 48) = -127;
        BYTE13(v177) = 1;
        memset(v213, 0, sizeof(v213));
        sub_100039F24(v213);
        LOBYTE(v185) = 1;
        v207[0] = xmmword_1008A4F84;
        v207[1].n128_u32[0] = 0;
        sub_10000D03C(v212, v207);
        *(v213 + 8) = v212[0];
        v213[1].n128_u32[2] = v212[1].n128_u32[0];
        v213[1].n128_u8[12] = -127;
        v29 = [NSString stringWithFormat:@"%s", "SOSBeaconScan"];
        v30 = v213[0].n128_u64[0];
        v213[0].n128_u64[0] = v29;

        v213[1].n128_u8[13] = 1;
        memset(v213[2].n128_u64 + 1, 0, 24);
        *(&v213[3] + 12) = xmmword_1008C5630;
        *(&v213[4] + 7) = *(&xmmword_1008C5630 + 11);
        v213[3].n128_u32[2] = 0;
        v213[5].n128_u32[2] = 1769499;
        v213[2].n128_u8[0] = 1;
        sub_10003ACA0(&v186, v213);
        sub_10079D428(a4, &v177);

        goto LABEL_221;
      }

      goto LABEL_149;
    }

    if (_os_feature_enabled_impl())
    {
      *&__p_8[8] = *__p_8;
      sub_10000CEDC(&v183, *(&v183 + 1));
      v184 = 0;
      v183 = &v183 + 8;
      WORD4(v179) = 30;
      v72 = sub_10000C798();
      if ((*(*v72 + 1024))(v72))
      {
        if (qword_100BC7CD8 != -1)
        {
          sub_1008743F8();
        }

        LOWORD(v73) = word_100B54F88;
        v74 = (v73 * 0.625);
      }

      else
      {
        LOWORD(v74) = 30;
      }

      WORD5(v179) = v74;
      BYTE14(v177) = 1;
      WORD6(v179) = 966;
      LOWORD(v177) = 256;
      *(&v178 + 1) = 0;
      BYTE8(v177) = 1;
      LODWORD(v180) = 1;
      v212[0] = xmmword_1008A4F84;
      v212[1].n128_u32[0] = 0;
      sub_10000D03C(v213, v212);
      v212[0].n128_u64[0] = v213;
      *(sub_1007B25FC(&v183, v213) + 48) = -127;
      BYTE13(v177) = 1;
      memset(v213, 0, sizeof(v213));
      sub_100039F24(v213);
      LOBYTE(v185) = 1;
      v207[0] = xmmword_1008A4F84;
      v207[1].n128_u32[0] = 0;
      sub_10000D03C(v212, v207);
      *(v213 + 8) = v212[0];
      v213[1].n128_u32[2] = v212[1].n128_u32[0];
      v213[1].n128_u8[12] = -127;
      v139 = [NSString stringWithFormat:@"%s", "SOSBeaconPrecisionFindRequest"];
      v140 = v213[0].n128_u64[0];
      v213[0].n128_u64[0] = v139;

      v141 = [v176 objectForKey:@"CBUseCaseOptionSOSBeaconSubjectID"];
      v142 = v141;
      v212[0] = xmmword_1008C564B;
      *(v212 + 11) = *(&xmmword_1008C564B + 11);
      if (v141 && [v141 length] == 4)
      {
        [v142 getBytes:v212[0].n128_u32 + 2 length:4];
        v143 = -1;
      }

      else
      {
        v143 = 0;
      }

      *(&v213[2] + 1) = v212[0];
      *(&v213[2] + 12) = *(v212 + 11);
      v213[3].n128_u16[6] = -7952;
      *(&v213[3].n128_u32[3] + 2) = v143;
      memset(v213[4].n128_u32 + 2, 0, 21);
      v213[5].n128_u32[2] = 1769499;
      v213[2].n128_u8[0] = 1;
      sub_10003ACA0(&v186, v213);
      sub_10079D428(a4, &v177);

      goto LABEL_221;
    }

LABEL_149:
    v62 = &v188;
    goto LABEL_150;
  }

  if (a2 > 2147418112)
  {
    if (a2 != 2147418113)
    {
      WORD4(v179) = 30;
      WORD6(v179) = 30;
      LOWORD(v178) = 0;
      v28 = 256;
LABEL_128:
      LOWORD(v177) = v28;
      goto LABEL_129;
    }

    WORD4(v179) = 30;
    WORD6(v179) = 30;
    LOWORD(v178) = 0;
    LOWORD(v177) = 256;
    *(&v178 + 1) = 0;
    BYTE4(v177) = *(a1 + 144) ^ 1;
    BYTE8(v177) = 1;
    *(a4 + 48) = v180;
    v59 = v179;
    *(a4 + 16) = v178;
    *(a4 + 32) = v59;
    *a4 = v177;
    goto LABEL_111;
  }

  if (a2 != 983045)
  {
    if (a2 == 2147418112)
    {
      WORD4(v179) = 30;
      WORD6(v179) = 30;
      LOWORD(v178) = 0;
      LOWORD(v177) = 0;
LABEL_129:
      *(&v178 + 1) = 0;
      goto LABEL_130;
    }

LABEL_158:
    BYTE8(v177) = 0;
    goto LABEL_159;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_149;
  }

  *&__p_8[8] = *__p_8;
  sub_10000CEDC(&v183, *(&v183 + 1));
  v184 = 0;
  v183 = &v183 + 8;
  WORD4(v179) = 30;
  v56 = sub_10000C798();
  if ((*(*v56 + 1024))(v56))
  {
    if (qword_100BC7CD8 != -1)
    {
      sub_1008743F8();
    }

    LOWORD(v57) = word_100B54F8A;
    v58 = (v57 * 0.625);
  }

  else
  {
    LOWORD(v58) = 30;
  }

  WORD5(v179) = v58;
  BYTE14(v177) = 1;
  WORD6(v179) = 966;
  LOWORD(v177) = 256;
  *(&v178 + 1) = 0;
  BYTE8(v177) = 1;
  LODWORD(v180) = 1;
  v212[0] = xmmword_1008A4F84;
  v212[1].n128_u32[0] = 0;
  sub_10000D03C(v213, v212);
  v212[0].n128_u64[0] = v213;
  *(sub_1007B25FC(&v183, v213) + 48) = -127;
  BYTE13(v177) = 1;
  memset(v213, 0, sizeof(v213));
  sub_100039F24(v213);
  LOBYTE(v185) = 1;
  v207[0] = xmmword_1008A4F84;
  v207[1].n128_u32[0] = 0;
  sub_10000D03C(v212, v207);
  *(v213 + 8) = v212[0];
  v213[1].n128_u32[2] = v212[1].n128_u32[0];
  v213[1].n128_u8[12] = -127;
  v134 = [NSString stringWithFormat:@"%s", "SOSBeaconActivateScan"];
  v135 = v213[0].n128_u64[0];
  v213[0].n128_u64[0] = v134;

  v136 = [v176 objectForKey:@"CBUseCaseOptionSOSBeaconSubjectID"];
  v137 = v136;
  v212[0] = xmmword_1008C5669;
  *(v212 + 11) = *(&xmmword_1008C5669 + 11);
  if (v136 && [v136 length] == 4)
  {
    [v137 getBytes:v212[0].n128_u32 + 2 length:4];
    v138 = -1;
  }

  else
  {
    v138 = 0;
  }

  *(&v213[2] + 1) = v212[0];
  *(&v213[2] + 12) = *(v212 + 11);
  v213[3].n128_u16[6] = 240;
  *(&v213[3].n128_u32[3] + 2) = v138;
  memset(v213[4].n128_u32 + 2, 0, 21);
  v213[5].n128_u32[2] = 1769499;
  v213[2].n128_u8[0] = 1;
  sub_10003ACA0(&v186, v213);
  sub_10079D428(a4, &v177);

LABEL_221:
  v213[0].n128_u64[0] = &v186;
  sub_10000CF30(v213);
  sub_10000CEDC(&v183, *(&v183 + 1));
  if (*__p_8)
  {
    *&__p_8[8] = *__p_8;
    operator delete(*__p_8);
  }

  v213[0].n128_u64[0] = v181 + 8;
  sub_10000CFB0(v213);

  *&v177 = &v199;
  sub_10000CF30(&v177);
  sub_10000CEDC(&v195, v196);
  if (*v194)
  {
    *&v194[8] = *v194;
    operator delete(*v194);
  }

  *&v177 = &v192 + 8;
  sub_10000CFB0(&v177);
}

void sub_100039C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_guard_abort(&qword_100BC7CE8);

  _Unwind_Resume(a1);
}

uint64_t sub_100039F24(uint64_t a1)
{
  *a1 = 0;
  sub_10003A364((a1 + 8));
  *(a1 + 28) = 16842881;
  *(a1 + 32) = 1;
  *(a1 + 88) = 0;
  *(a1 + 33) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 79) = 0;
  return a1;
}

uint64_t sub_100039F90(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 194) == a2)
  {
    return 1;
  }

  v3 = *(a1 + 216);
  if (!v3)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v2 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v6 = *v13;
    v7 = a2;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = v7 == [v9 longLongValue] >> 16;

        if (v10)
        {
          v2 = 1;
          goto LABEL_14;
        }
      }

      v2 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v2;
}

uint64_t sub_10003A100(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 192) == a2)
  {
    return 1;
  }

  v3 = *(a1 + 216);
  if (!v3)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v2 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v6 = *v13;
    v7 = a2;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 longLongValue] == v7;

        if (v10)
        {
          v2 = 1;
          goto LABEL_14;
        }
      }

      v2 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v2;
}

void sub_10003A278(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
  }
}

uint64_t sub_10003A2D4(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    objc_storeStrong(location, *v5);
    objc_storeStrong(location + 1, *(v5 + 8));
    *(location + 1) = *(v5 + 16);
    v7 = *(v5 + 32);
    v8 = *(v5 + 48);
    v9 = *(v5 + 64);
    *(location + 78) = *(v5 + 78);
    *(location + 3) = v8;
    *(location + 4) = v9;
    *(location + 2) = v7;
    v5 += 96;
    location += 12;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_10003A36C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  v7 = objc_retainBlock(*(a2 + 7));
  v8 = *(a1 + 56);
  *(a1 + 56) = v7;

  if (a1 == a2)
  {
    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    sub_10003A44C((a1 + 64), *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 5));
    sub_10003A598((a1 + 88), *(a2 + 11), *(a2 + 12), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 12) - *(a2 + 11)) >> 2));
    sub_10003B0E0((a1 + 112), *(a2 + 14), a2 + 15);
    *(a1 + 136) = *(a2 + 136);
    sub_10003AEF8(a1 + 144, *(a2 + 18), *(a2 + 19), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 19) - *(a2 + 18)) >> 5));
  }

  return a1;
}

void sub_10003A44C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) < a4)
  {
    sub_1000677B8(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10000CD6C(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    sub_10003A2D4(&v14, a2, a3, v8);
    sub_10003A9EC(a1, v12);
  }

  else
  {
    sub_10003A2D4(&v13, a2, a2 + v11, v8);
    a1[1] = sub_100018078(a1, a2 + v11, a3, a1[1]);
  }
}

char *sub_10003A598(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x666666666666666)
      {
        v11 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v11 = v10;
      }

      sub_10003B814(a1, v11);
    }

    sub_1000C7698();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 2) >= a4)
  {
    while (v5 != a3)
    {
      v19 = *v5;
      *(result + 4) = *(v5 + 4);
      *result = v19;
      result += 20;
      v5 = (v5 + 20);
    }

    a1[1] = result;
  }

  else
  {
    v14 = (a2 + v13);
    if (v12 != result)
    {
      do
      {
        v15 = *v5;
        *(result + 4) = *(v5 + 4);
        *result = v15;
        result += 20;
        v5 = (v5 + 20);
        v13 -= 20;
      }

      while (v13);
      v12 = a1[1];
    }

    v16 = v12;
    if (v14 != a3)
    {
      v16 = v12;
      v17 = v12;
      do
      {
        v18 = *v14;
        *(v17 + 4) = *(v14 + 4);
        *v17 = v18;
        v17 += 20;
        v14 = (v14 + 20);
        v16 += 20;
      }

      while (v14 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void sub_10003A720(uint64_t a1)
{
  v4 = *(a1 + 88);
  v3 = *(a1 + 96);
  v2 = a1 + 88;
  while (v3 != v4)
  {
    v3 -= 96;
    sub_1000326E8(v2, v3);
  }

  *(a1 + 96) = v4;
  v5 = a1 + 280;
  v6 = 0;
  sub_10003B254(&v5, 0x100uLL);
  v5 = a1 + 248;
  v6 = 0;
  sub_10003B254(&v5, 0x100uLL);
}

uint64_t sub_10003A7A8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049CC0C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E5E0 != -1)
  {
    dispatch_once(&qword_100B6E5E0, block);
  }

  return byte_100B6E5D8;
}

uint64_t sub_10003A838(uint64_t a1)
{
  sub_10003A278(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10003A870(uint64_t a1, void **a2, void **a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      *a4 = v5;
      a4[1] = *(v4 + 1);
      v6 = *(v4 + 2);
      v7 = *(v4 + 3);
      v8 = *(v4 + 4);
      *(a4 + 78) = *(v4 + 78);
      a4[3] = v7;
      a4[4] = v8;
      a4[2] = v6;
      v4 += 12;
      a4 += 6;
    }

    while (v4 != a3);
  }

  sub_10003AC58(a1, a2, a3);
}

uint64_t sub_10003A8BC(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    sub_1000180FC(a1, v6);
  }

  v7 = 96 * v2;
  v14[0] = 0;
  v14[1] = v7;
  v14[3] = 0;
  *v7 = *a2;
  v8 = *(a2 + 24);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = v8;
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 88) = v11;
  *(v7 + 72) = v10;
  *(v7 + 56) = v9;
  v14[2] = v7 + 96;
  sub_10003AD2C(a1, v14);
  v12 = a1[1];
  sub_10003AE14(v14);
  return v12;
}

void sub_10003A9D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003AE14(va);
  _Unwind_Resume(a1);
}

void sub_10003A9EC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 96)
  {

    v5 = *(i - 96);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_10003AA40()
{
  if (qword_100B6E358 != -1)
  {
    sub_1008312EC();
  }

  return byte_100B6E350;
}

uint64_t sub_10003AA78(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10000CD14(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  v9 = *(a2 + 48);
  v8 = *(a2 + 64);
  v10 = *(a2 + 32);
  *(v7 + 78) = *(a2 + 78);
  *(v7 + 48) = v9;
  *(v7 + 64) = v8;
  *(v7 + 32) = v10;
  *&v19 = v7 + 96;
  v11 = *(a1 + 8);
  v12 = (v7 + *a1 - v11);
  sub_10003A870(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10003A838(&v17);
  return v16;
}

void sub_10003ABBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10003A838(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003ABD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_10003AA78(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 16) = *(a2 + 16);
    v6 = *(a2 + 48);
    v5 = *(a2 + 64);
    v7 = *(a2 + 32);
    *(v4 + 78) = *(a2 + 78);
    *(v4 + 48) = v6;
    *(v4 + 64) = v5;
    *(v4 + 32) = v7;
    result = v4 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_10003AC58(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 12;
    }

    while (v4 != a3);
  }
}

uint64_t sub_10003ACA0(void *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_10003A8BC(a1, a2);
  }

  else
  {
    *v4 = *a2;
    v5 = *(a2 + 24);
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 24) = v5;
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    *(v4 + 40) = *(a2 + 40);
    *(v4 + 88) = v8;
    *(v4 + 72) = v7;
    *(v4 + 56) = v6;
    result = v4 + 96;
  }

  a1[1] = result;
  return result;
}

void sub_10003AD2C(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = *(v7 + 1);
      *(v8 + 24) = *(v7 + 3);
      *(v8 + 8) = v10;
      v11 = *(v7 + 5);
      v12 = *(v7 + 7);
      v13 = *(v7 + 9);
      *(v8 + 88) = *(v7 + 22);
      *(v8 + 72) = v13;
      *(v8 + 56) = v12;
      *(v8 + 40) = v11;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v4);
    do
    {
      v14 = *v5;
      v5 += 12;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  *(a1 + 8) = v15;
  a2[1] = v15;
  v16 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

uint64_t sub_10003AE14(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10003AE68(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      objc_storeStrong(location, *v5);
      v7 = *(v5 + 8);
      *(location + 6) = *(v5 + 24);
      *(location + 1) = v7;
      v8 = *(v5 + 28);
      v9 = *(v5 + 44);
      v10 = *(v5 + 60);
      *(location + 76) = *(v5 + 76);
      *(location + 60) = v10;
      *(location + 44) = v9;
      *(location + 28) = v8;
      v5 += 96;
      location += 12;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10003AEF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    sub_1007B1B10(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
      {
        v9 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_100018154(a1, v9);
    }

    sub_1000C7698();
  }

  v10 = *(a1 + 8) - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 5) >= a4)
  {
    sub_10003AE68(&v23, a2, a3, v7);
    v19 = v18;
    v20 = *(a1 + 8);
    if (v20 != v18)
    {
      do
      {
        v21 = *(v20 - 96);
        v20 -= 96;
      }

      while (v20 != v19);
    }

    *(a1 + 8) = v19;
  }

  else
  {
    v11 = a2 + v10;
    sub_10003AE68(&v22, a2, a2 + v10, v7);
    v12 = *(a1 + 8);
    if (v11 != a3)
    {
      v13 = *(a1 + 8);
      do
      {
        *v13 = *v11;
        v14 = *(v11 + 24);
        *(v13 + 8) = *(v11 + 8);
        *(v13 + 24) = v14;
        v15 = *(v11 + 56);
        v16 = *(v11 + 72);
        v17 = *(v11 + 88);
        *(v13 + 40) = *(v11 + 40);
        *(v13 + 88) = v17;
        *(v13 + 72) = v16;
        *(v13 + 56) = v15;
        v11 += 96;
        v13 += 96;
        v12 += 96;
      }

      while (v11 != a3);
    }

    *(a1 + 8) = v12;
  }
}

uint64_t **sub_10003B0E0(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v10 = *(v9 + 28);
          *(v8 + 11) = *(v9 + 11);
          *(v8 + 28) = v10;
          *(v8 + 48) = *(v9 + 48);
          sub_100713EE8(v5, v8);
          v8 = v14;
          v15 = v14;
          if (v14)
          {
            v14 = sub_100083B10(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100084E60(&v13);
  }

  if (a2 != a3)
  {
    sub_1007B1A4C();
  }

  return result;
}

void sub_10003B240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

void sub_10003B254(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_10003B304(uint64_t a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, void *a12, char a13, char a14, char a15, char a16, char a17, void *a18, int a19, int a20, int a21)
{
  v28 = a2;
  v29 = a12;
  v30 = a18;
  v31 = v28;
  *a1 = v31;
  *(a1 + 8) = a3;
  *(a1 + 9) = a4;
  v32 = *(a5 + 8);
  *(a1 + 16) = &off_100AE0A78;
  *(a1 + 24) = v32;
  if (v32)
  {
    sub_10000C69C(v32);
  }

  v33 = *(a6 + 8);
  *(a1 + 32) = &off_100AE0A78;
  *(a1 + 40) = v33;
  if (v33)
  {
    sub_10000C69C(v33);
  }

  *(a1 + 48) = a7;
  *(a1 + 49) = a8;
  *(a1 + 50) = a9;
  *(a1 + 51) = a10;
  *(a1 + 52) = a11;
  *(a1 + 56) = v29;
  *(a1 + 64) = a13;
  *(a1 + 65) = a14;
  *(a1 + 66) = a15;
  *(a1 + 67) = a16;
  *(a1 + 68) = a17;
  *(a1 + 72) = v30;
  *(a1 + 80) = a19;
  *(a1 + 84) = a20;
  *(a1 + 88) = a21;

  return a1;
}

void sub_10003B454(_Unwind_Exception *a1)
{
  *(v1 + 16) = v5;
  v7 = *(v1 + 24);
  if (v7)
  {
    sub_10000C808(v7);
  }

  _Unwind_Resume(a1);
}

void sub_10003B48C(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13)
{
  v17 = *a4;
  v18 = *(a4 + 16);
  sub_10003B610(v19, a2, a3, &v17, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  v15 = a1[16];
  if (v15 >= a1[17])
  {
    v16 = sub_10006E108((a1 + 15), v19);
  }

  else
  {
    sub_100018288((a1 + 15), a1[16], v19);
    v16 = v15 + 112;
    a1[16] = v15 + 112;
  }

  a1[16] = v16;

  v22 = &off_100AE0A78;
  if (v23)
  {
    sub_10000C808(v23);
  }

  v20 = &off_100AE0A78;
  if (v21)
  {
    sub_10000C808(v21);
  }

  sub_10000CDB8(a1 + 1, a4);
}

void sub_10003B5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1001388F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003B610(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13)
{
  v20 = a2;
  v21 = a3;
  v22 = v20;
  *a1 = v22;
  v23 = v21;
  *(a1 + 8) = v23;
  *(a1 + 16) = 0;
  v24 = *(a4 + 16);
  *(a1 + 20) = *a4;
  *(a1 + 36) = v24;
  v25 = *(a5 + 8);
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = v25;
  if (v25)
  {
    sub_10000C69C(v25);
  }

  v26 = *(a6 + 8);
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = v26;
  if (v26)
  {
    sub_10000C69C(v26);
  }

  *(a1 + 72) = a7;
  *(a1 + 73) = a8;
  *(a1 + 75) = a9;
  *(a1 + 76) = a10;
  *(a1 + 77) = a11;
  *(a1 + 78) = a12;
  *(a1 + 79) = a13;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;

  return a1;
}

void sub_10003B748(_Unwind_Exception *a1)
{
  *(v1 + 40) = v4;
  v6 = *(v1 + 48);
  if (v6)
  {
    sub_10000C808(v6);
  }

  _Unwind_Resume(a1);
}

void sub_10003B78C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 96;
        sub_1000326E8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10003B814(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    sub_100018404(a1, a2);
  }

  sub_1000C7698();
}

size_t sub_10003B85C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v10 = 0u;
  v3 = ((*a1 >> 1) | (*a1 << 7));
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v8 = *(a1 + 4);
      v4 = "0x%08X";
      goto LABEL_10;
    }

    if (v3 == 8)
    {
      snprintf(__str, 0x80uLL, "%02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X", *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8), *(a1 + 9));
      goto LABEL_11;
    }

LABEL_19:
    v7 = sub_10000E92C();
    sub_100693F74(v7, 0);
  }

  if (!((*a1 >> 1) | (*a1 << 7)))
  {
    strcpy(__str, "(empty)");
    goto LABEL_11;
  }

  if (v3 != 1)
  {
    goto LABEL_19;
  }

  v8 = *(a1 + 4);
  v4 = "0x%04X";
LABEL_10:
  snprintf(__str, 0x80uLL, v4, v8);
LABEL_11:
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v6] = 0;
  return result;
}

void sub_10003BA40(uint64_t a1, unsigned int a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100024C50;
  v6[3] = &unk_100AF6AC8;
  v7 = a3;
  v5 = v7;
  sub_100028B38(a1, a2, v6);
}

void sub_10003BAFC(uint64_t a1)
{
  if (qword_100BC7D08 != -1)
  {
    sub_100874624();
  }

  v2 = sub_10000C7D0();
  if ((*(*v2 + 4072))(v2) && !*(a1 + 2232))
  {
    sub_100088DD4();
  }

  if (qword_100B50910 != -1)
  {
    sub_100874420();
  }

  sub_10003C364(off_100B50908, 0);
  sub_10007AE00(a1);
}

uint64_t sub_10003BC90(uint64_t a1)
{
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v36 = 0u;
  v37 = 0u;
  *v35 = 0u;
  memset(v34, 0, sizeof(v34));
  v33 = 0u;
  v2 = &v33;
  sub_100008760(&v33);
  if ((*(a1 + 5) & 1) == 0)
  {
    if (*(a1 + 8) == 1)
    {
      sub_100007774(&v33);
      v3 = std::ostream::operator<<();
      sub_100007774(v3);
      sub_100007774(&v33);
      v4 = std::ostream::operator<<();
      sub_100007774(v4);
      sub_100007774(&v33);
      v5 = std::ostream::operator<<();
      sub_100007774(v5);
      sub_100007774(&v33);
      v6 = std::ostream::operator<<();
      sub_100007774(v6);
      sub_100007774(&v33);
      v7 = std::ostream::operator<<();
      sub_100007774(v7);
      sub_100007774(&v33);
      v8 = std::ostream::operator<<();
      sub_100007774(v8);
      sub_100007774(&v33);
      v9 = std::ostream::operator<<();
      sub_100007774(v9);
      sub_100007774(&v33);
      v10 = std::ostream::operator<<();
      sub_100007774(v10);
      sub_100007774(&v33);
      v11 = std::ostream::operator<<();
      sub_100007774(v11);
      sub_100007774(&v33);
      v12 = std::ostream::operator<<();
      sub_100007774(v12);
      sub_100007774(&v33);
      v13 = std::ostream::operator<<();
      sub_100007774(v13);
      sub_100007774(&v33);
      v14 = std::ostream::operator<<();
      sub_100007774(v14);
      sub_100007774(&v33);
      v15 = std::ostream::operator<<();
      sub_100007774(v15);
      v16 = sub_100007774(&v33);
      LOBYTE(__p) = *(a1 + 47);
      v17 = sub_100007774(v16);
      sub_100007774(v17);
      sub_100007774(&v33);
      v18 = std::ostream::operator<<();
      sub_100007774(v18);
      v19 = sub_100007774(&v33);
      sub_100007774(v19);
      sub_100007774(&v33);
      v20 = std::ostream::operator<<();
      sub_100007774(v20);
      sub_100007774(&v33);
      v22 = *(a1 + 64);
      v21 = *(a1 + 72);
      if (v21 == v22)
      {
        sub_100007774(&v33);
      }

      else
      {
        do
        {
          v23 = std::ostream::operator<<();
          v24 = sub_100007774(v23);
          v25 = sub_100007774(v24);
          sub_100007774(v25);
          v22 += 96;
        }

        while (v22 != v21);
      }

      sub_100007774(&v33);
      v26 = *(a1 + 88);
      v27 = *(a1 + 96);
      if (v27 == v26)
      {
        sub_100007774(&v33);
      }

      else
      {
        do
        {
          sub_10003B85C(v26, &__p);
          v28 = sub_100007774(&v33);
          sub_100007774(v28);
          if (v32 < 0)
          {
            operator delete(__p);
          }

          v26 += 20;
        }

        while (v26 != v27);
      }

      sub_100007774(&v33);
      v29 = sub_100007774(&v33);
      v2 = sub_100007774(v29);
    }

    else
    {
      v2 = &v33;
    }
  }

  sub_100007774(v2);
  std::stringbuf::str();
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[1]);
  }

  std::locale::~locale(v34);
  std::ostream::~ostream();
  return std::ios::~ios();
}

BOOL sub_10003C330()
{
  v0 = *(sub_10000C7D0() + 800);
  v1 = v0 - 5000;
  v2 = v0 - 1;
  return v1 < 0x3E8 || v2 < 0x12;
}

void sub_10003C364(uint64_t a1, char a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003C3E8;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_10003C3E8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 != *(v3 + 516))
  {
    v7 = v1;
    v8 = v2;
    *(v3 + 516) = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10007BA24;
    v5[3] = &unk_100AFF980;
    v6 = *(a1 + 40);
    sub_100015514(v3 + 128, v5);
  }
}

void sub_10003C478(uint64_t a1)
{
  v2 = sub_10000C7D0();
  if ((*(*v2 + 4072))(v2))
  {
    v3 = *(a1 + 2232);
    if (v3)
    {
      v4 = qword_100BCE9C8;
      if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v5 = (*(*v3 + 16))(v3), v6 = 136446210, v7 = v5, _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v6, 0xCu), (v3 = *(a1 + 2232)) != 0))
      {
        (*(*v3 + 8))(v3);
      }

      *(a1 + 2232) = 0;
    }
  }

  if (qword_100B50910 != -1)
  {
    sub_100874420();
  }

  sub_10003C364(off_100B50908, 1);
  sub_10003C5EC(a1);
}

void sub_10003C5EC(uint64_t a1)
{
  if (*(a1 + 2744) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(a1 + 2744);
    if (Current <= v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = ((Current - v3) * 1000.0);
    }

    v5 = *(a1 + 2752);
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100874674();
    }

    v6 = a1 + 176 * v5;
    v7 = v6 + 2392;
    v8 = v4;
    v9 = *(v6 + 2524);
    if (v9 >= v4)
    {
      LOWORD(v9) = v4;
    }

    *(v6 + 2524) = v9;
    if (*(v6 + 2526) > v4)
    {
      v8 = *(v6 + 2526);
    }

    *(v6 + 2526) = v8;
    v10 = v4 / 0xA;
    if (v4 > 0xC7)
    {
      v10 = 19;
    }

    ++*(v7 + 4 * v10 + 8);
    if (*(a1 + 2753) == 1)
    {
      *(v7 + 152) += v4;
    }

    if (*(a1 + 2754) == 1)
    {
      *(v7 + 164) += v4;
    }

    *(a1 + 2751) = 0;
    *(a1 + 2744) = 0;
  }
}

uint64_t sub_10003C714(uint64_t a1, unsigned __int16 a2, unsigned __int8 a3)
{
  if ((*(a1 + 386) & a2 & 0x7FLL) != 0 && *(a1 + 280) == 1 && *(a1 + 284) == 1)
  {
    v3 = 4;
  }

  else if (*(a1 + 288) == 1 && *(a1 + 280) == 1)
  {
    if (((*(a1 + 284) == 1) & a3) != 0)
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 205) & 1) != 0 || (*(a1 + 206) & 1) != 0 || (*(a1 + 208))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 212);
  }

  if (*(a1 + 280) == 1)
  {
    v5 = 2 * (*(a1 + 284) == 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10003C888(a1);
  v7 = 8;
  if (!v6)
  {
    v7 = 0;
  }

  return v4 | v3 | v5 | v7;
}

uint64_t sub_10003C804()
{
  if (qword_100B6E510 != -1)
  {
    sub_1008313F0();
  }

  return byte_100B6E508;
}

BOOL sub_10003C83C(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0x7CF)
  {
    return v1 > 0x15;
  }

  if (v1 <= 0xF9F)
  {
    return v1 != 2000;
  }

  return v1 - 5000 < 0x3E8;
}

uint64_t sub_10003C888(uint64_t a1)
{
  if ((*(a1 + 205) & 1) == 0 && *(a1 + 206) != 1)
  {
    return 0;
  }

  if (qword_100B50B60 != -1)
  {
    sub_10084AA90();
  }

  v2 = qword_100B50B58;

  return sub_100379610(v2);
}

uint64_t sub_10003C8F4(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 8))
  {
    return 0;
  }

  v3 = sub_100028FA8(a2);
  if (v3 == 2147418120 || v3 == 131101)
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_100028FA8(a2);
      *buf = 136315138;
      v25 = sub_10002F16C(v5);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wall power scan boost for %s is allowed", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v8 = sub_100032B14(a2);
    v9 = v8;
    if (v8 && [v8 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = [v14 longLongValue];
            if (v15 == 2147418120 || v15 == 131101)
            {
              v17 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v18 = sub_10002F16C([v14 longLongValue]);
                *buf = 136315138;
                v25 = v18;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Wall power scan boost for %s is allowed", buf, 0xCu);
              }

              v6 = 1;
              goto LABEL_29;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          v6 = 0;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_29:
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_10003CB84(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 8))
  {
    return 0;
  }

  v3 = sub_100028FA8(a2);
  if ((v3 - 983043) < 3 || v3 == 2147418121 || v3 == 65567)
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_100028FA8(a2);
      *buf = 136315138;
      v26 = sub_10002F16C(v5);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MRC for %s is allowed", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v8 = sub_100032B14(a2);
    v9 = v8;
    if (v8 && [v8 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = *v21;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            v15 = [v14 longLongValue];
            if (v15 - 983043 < 3 || v15 == 2147418121 || v15 == 65567)
            {
              v18 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_10002F16C([v14 longLongValue]);
                *buf = 136315138;
                v26 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MRC for %s is allowed", buf, 0xCu);
              }

              v6 = 1;
              goto LABEL_33;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v6 = 0;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_33:
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_10003CE34(_BYTE *a1)
{
  if (a1[205] & 1) != 0 || (a1[206] & 1) != 0 || (a1[207])
  {
    v1 = 0;
  }

  else
  {
    v1 = a1[212] ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_10003CEAC(uint64_t a1, int a2, int a3)
{
  if (a2 == 48 && a3 == 48)
  {
    return 0;
  }

  if (a2 == 64 && a3 == 48)
  {
    return 1;
  }

  if (a2 == 96 && a3 == 48)
  {
    return 2;
  }

  if (a2 == 144 && a3 == 48)
  {
    return 3;
  }

  if (a2 == 480 && a3 == 48)
  {
    return 4;
  }

  if (a3 == 48 && (a2 & 0xFFFE) == 0x608)
  {
    return 5;
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2 == 4800;
  }

  if (v4)
  {
    return 6;
  }

  else
  {
    return 7;
  }
}

BOOL sub_10003CF58(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (a4)
  {
    v6 = 100 * (WORD1(a2) + WORD2(a2)) / a4 < 0x32;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_10000C798();
  v8 = (*(*v7 + 944))(v7);
  if (a3 == 6)
  {
    return (a2 & 0xFFFFFFFFFFFFLL) == 0x2000000020;
  }

  if (a3 != 5)
  {
    return 0;
  }

  if (v8 != 1)
  {
    return v8 == 2;
  }

  return v6;
}

uint64_t sub_10003D024(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A0434;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E6D8 != -1)
  {
    dispatch_once(&qword_100B6E6D8, block);
  }

  return dword_100B6E6D0;
}

uint64_t sub_10003D0B4()
{
  if (qword_100B6E4E8 != -1)
  {
    sub_1008313DC();
  }

  return byte_100B6E4E0;
}

uint64_t sub_10003D0EC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_100B6E6E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6E6E8))
  {
    v2 = (*(*a1 + 352))(a1);
    if (v2)
    {
      v3 = sub_10000C7D0();
      v2 = (*(*v3 + 2592))(v3);
      if (v2)
      {
        LOBYTE(v2) = sub_10000C60C(a1);
      }
    }

    byte_100B6E6E0 = v2;
    __cxa_guard_release(&qword_100B6E6E8);
  }

  if (qword_100B6E6F0 != -1)
  {
    sub_100831508();
  }

  return byte_100B6E6E0;
}

void sub_10003D1F8(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 224);
  v4 = (a1 + 232);
  if (v3 != (a1 + 232))
  {
    do
    {
      v5 = v3[5];
      if (!(*(*v5 + 16))(v5))
      {
        sub_10003D2E0(v5, v9);
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }
}

void sub_10003D2E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 357) == 1 && *(a1 + 120))
  {
    sub_100052C08(a1, 141, v3);
  }
}

uint64_t sub_10003D35C(uint64_t a1, int *a2)
{
  v3 = IOPSCopyExternalPowerAdapterDetails();
  if (!v3)
  {
    v10 = IOPSCopyPowerSourcesInfo();
    if (!v10)
    {
      LODWORD(v6) = 0;
      return v6 ^ 1;
    }

    v4 = v10;
    v11 = IOPSGetProvidingPowerSourceType(v10);
    if (v11 && CFEqual(v11, @"Battery Power"))
    {
      *a2 = 0;
      LODWORD(v6) = 1;
      goto LABEL_15;
    }

LABEL_14:
    LODWORD(v6) = 0;
    goto LABEL_15;
  }

  v4 = v3;
  if (!CFDictionaryContainsKey(v3, @"FamilyCode"))
  {
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(v4, @"FamilyCode");
  v6 = Value;
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      v8 = CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      LODWORD(v6) = v8 != 0;
      if (v8)
      {
        if (valuePtr == -536723452)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        *a2 = v9;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  CFRelease(v4);
  return v6 ^ 1;
}

uint64_t sub_10003D460(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 1) == 1)
  {
    v2 = *(v1 + 144);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10003D490(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 8))
  {
    v3 = sub_100028FA8(a2);
    if (v3 == 2147418120 || v3 == 131101)
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    if (v3 == 2147418120 || v3 == 131101)
    {
      v6 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_100028FA8(a2);
        *buf = 134218242;
        v28 = v5 * 0.625;
        v29 = 2080;
        v30 = sub_10002F16C(v7);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scan boost incremental window %.2f msec for %s", buf, 0x16u);
      }
    }

    v8 = sub_100032B14(a2);
    v9 = v8;
    if (v8 && [v8 count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v21 = v9;
      if (v11)
      {
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            v15 = [v14 longLongValue];
            if (v15 == 2147418120 || v15 == 131101)
            {
              v17 = 32;
            }

            else
            {
              v17 = 0;
            }

            if (v17 > v5)
            {
              v18 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_10002F16C([v14 longLongValue]);
                *buf = 134218242;
                v28 = v17 * 0.625;
                v29 = 2080;
                v30 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Scan boost incremental window %.2f msec for %s", buf, 0x16u);
              }

              LOWORD(v5) = 32;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }

      v9 = v21;
    }
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

uint64_t sub_10003D7A4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A0308;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E6C8 != -1)
  {
    dispatch_once(&qword_100B6E6C8, block);
  }

  return dword_100B6E6C0;
}

uint64_t sub_10003D834(uint64_t a1)
{
  if (*(a1 + 1392) == 1)
  {
    v2 = *(a1 + 1393);
  }

  else
  {
    v3 = *(a1 + 800);
    v4 = v3 - 1 > 0x7CE || v3 > 0x13;
    v5 = (1 << v3) & 0x83000;
    v6 = v4 || v5 == 0;
    if (v6 || (v7 = sub_10000C798(), !(*(*v7 + 392))(v7)))
    {
      v2 = 0;
      *(a1 + 1393) = 0;
    }

    else
    {
      v2 = 1;
      *(a1 + 1393) = 1;
    }
  }

  return v2 & 1;
}

void sub_10003D8DC(uint64_t a1, unsigned __int8 *a2, char a3, int a4, unsigned int a5, unsigned int a6, uint64_t a7, int a8, char a9)
{
  v17 = sub_10003CEAC(a1, *(a2 + 2), *(a2 + 3));
  if (v17 != 7 && (a9 & 1) == 0)
  {
    v18 = v17;
    if (!a4 || (a3 & 1) != 0)
    {
      v19 = sub_10000C798();
      v20 = (*(*v19 + 936))(v19);
      v21 = v20;
      if ((v20 - 2) >= 2)
      {
        if (v20 == 1)
        {
          v29 = *a2;
          v22 = *(a1 + (v18 << 6) + 32 * v29 + 16 * a5 + 8 * a6 + 3304);
          v30 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            v31 = *(a2 + 3);
            v32 = *(a2 + 2);
            *buf = 67111424;
            *&buf[4] = v31;
            *&buf[8] = 1024;
            *&buf[10] = v32;
            *&buf[14] = 1024;
            *&buf[16] = v18;
            *&buf[20] = 1024;
            *&buf[22] = v29;
            v40 = 1024;
            v41 = a5;
            v42 = 1024;
            v43 = a6;
            v44 = 1024;
            v45 = v22;
            v46 = 1024;
            v47 = WORD1(v22);
            v48 = 1024;
            v49 = WORD2(v22);
            v50 = 1024;
            v51 = BYTE6(v22);
            _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "scanParamsMainCoreELNABypassTable: input [window %d interval %d type %d passive %d critical %d range %d] output [MCELNABypass %d SCELNAOn %d SCELNABypass %d concurrent %d]", buf, 0x3Eu);
          }
        }

        else
        {
          v22 = 0;
        }

        v27 = 0;
        v26 = 0;
        v28 = 0;
      }

      else
      {
        v22 = *(a1 + (v18 << 6) + 32 * *a2 + 16 * a5 + 8 * a6 + 3816);
        v38 = v22;
        if (*a7 || *(a7 + 2))
        {
          *buf = *a2;
          *&buf[10] = *(a2 + 10);
          v20 = sub_1007AA094(v20, &v38, v18, buf, a7);
          v22 = v38;
        }

        v23 = sub_10003CF58(v20, v22, v18, *(a2 + 2));
        v37 = v23;
        v24 = sub_10003DCB4(v23, &v38);
        v25 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(a2 + 3);
          v34 = *(a2 + 2);
          v35 = *a2;
          v36 = "N";
          *buf = 67112194;
          if (v37)
          {
            v36 = "Y";
          }

          *&buf[4] = v33;
          *&buf[8] = 1024;
          *&buf[10] = v34;
          *&buf[14] = 1024;
          *&buf[16] = v18;
          *&buf[20] = 1024;
          *&buf[22] = v35;
          v40 = 1024;
          v41 = a5;
          v42 = 1024;
          v43 = a6;
          v44 = 1024;
          v45 = v22;
          v46 = 1024;
          v47 = WORD1(v22);
          v48 = 1024;
          v49 = WORD2(v22);
          v50 = 1024;
          v51 = BYTE6(v22);
          v52 = 2082;
          v53 = v36;
          v54 = 1024;
          v55 = v24;
          v56 = 1024;
          v57 = 1;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "scanParamsScanCoreTable: input [window %d interval %d type %d passive %d critical %d range %d] output [MCELNABypass %d SCELNAOn %d SCELNABypass %d concurrent %d] compensation [%{public}s, %d, query %d]", buf, 0x54u);
          v22 = v38;
        }

        v26 = v24 << 16;
        v27 = &_mh_execute_header;
        v28 = v37;
      }

      sub_10003DD48(a1, a2, v22, v26 | v27 | v28);
      if (a8 && v18 == 5 && v21 <= 3)
      {
        *&a2[qword_1008C56D0[v21]] += a8;
      }
    }

    else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008771A0();
    }
  }
}

uint64_t sub_10003DCB4(uint64_t a1, _WORD *a2)
{
  v3 = sub_10000C798();
  v4 = (*(*v3 + 944))(v3);
  if (v4 == 2)
  {
    return 100;
  }

  if (v4 != 1 || !a2[1] && !a2[2])
  {
    return 0;
  }

  if (*a2)
  {
    return 100;
  }

  return 50;
}

uint64_t sub_10003DD48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 8) = a3;
  *(a2 + 12) = WORD1(a3);
  *(a2 + 10) = WORD2(a3);
  *(a2 + 14) = BYTE6(a3) & 1;
  if (*(result + 2276) == 1)
  {
    v6 = sub_10000C798();
    result = (*(*v6 + 712))(v6);
    if (result)
    {
      *(a2 + 19) = a4 & 1;
      *(a2 + 20) = WORD1(a4);
      *(a2 + 22) = WORD2(a4);
    }
  }

  return result;
}

void sub_10003DE9C()
{
  v0 = CUPrintPID();
  LogPrintF_safe();
}

void sub_10003DF04(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  if (qword_100B508D0 == -1)
  {
    v3 = a1;
  }

  else
  {
    sub_100856AE8();
    v3 = a1;
  }

  v4 = sub_10003E228(off_100B508C8, *(v3 + 40));
  [v2 addObjectsFromArray:v4];

  v5 = a1;
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
      v5 = a1;
    }

    sub_10003EF30(off_100B508C8);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(v5 + 32);
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (!sub_1007868D4(off_100B508C8, v10))
          {
            v12 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            *buf = 138412290;
            v24 = v10;
            v13 = v12;
            v14 = "Device %@ does not exist";
            goto LABEL_24;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if (sub_1003AF1AC(off_100B512F0, *(v1 + 128), v10))
          {
            v11 = sub_10005201C(v10, *(v1 + 168), *(v1 + 80));
            xpc_array_append_value(*(a1 + 64), v11);
            xpc_release(v11);
            goto LABEL_21;
          }

          v15 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v10;
            v13 = v15;
            v14 = "Cannot access device %@";
LABEL_24:
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
          }

LABEL_21:
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v16 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
        v7 = v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  v17 = *(*(*(v5 + 48) + 8) + 24);
  if (v17)
  {
    xpc_dictionary_set_value(v17, "kCBMsgArgDevices", *(v5 + 64));
    xpc_connection_send_message(*(v1 + 16), *(*(*(a1 + 48) + 8) + 24));
    xpc_release(*(*(*(a1 + 48) + 8) + 24));
    v5 = a1;
  }

  xpc_release(*(v5 + 64));
}

id sub_10003E228(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_100045AC4(*(a1 + 256), v3, &v15);
  v5 = v15;
  for (i = v16; v5 != i; v5 = (v5 + 24))
  {
    __p[1] = 0;
    v14 = 0;
    __p[0] = 0;
    if (*(v5 + 23) < 0)
    {
      sub_100008904(__p, *v5, *(v5 + 1));
    }

    else
    {
      v7 = *v5;
      v14 = *(v5 + 2);
      *__p = v7;
    }

    v8 = [NSUUID alloc];
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = [NSString stringWithUTF8String:v9, __p[0], __p[1], v14];
    v11 = [v8 initWithUUIDString:v10];

    [v4 addObject:v11];
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = &v15;
  sub_1000161FC(__p);

  return v4;
}

void sub_10003E3E8(uint64_t a1)
{
  if (*a1)
  {
    sub_1000E3B80(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_10003E428(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10035FD6C(result, a4);
  }

  return result;
}

void sub_10003E488(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v6 = sub_10003ED64(value, "kCBMsgArgTags");
  v7 = objc_opt_new();
  v8 = sub_100007EE8();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003E5D4;
  v11[3] = &unk_100B04C20;
  v14 = a1;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  v15 = v4;
  v16 = a2;
  sub_10000D334(v8, v11);
}

void sub_10003E5D4(uint64_t a1)
{
  v24 = *(a1 + 48);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v3)
  {
    v4 = *v32;
    do
    {
      v5 = 0;
      do
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v31 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        v8 = off_100B508C8;
        v9 = v6;
        sub_100007E30(__p, [v6 UTF8String]);
        v10 = sub_10003E9C4(v8, __p);
        [v7 addObjectsFromArray:v10];

        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v3);
  }

  if (*(a1 + 40))
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    sub_10003EF30(off_100B508C8);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = *(a1 + 40);
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v12)
    {
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v25 + 1) + 8 * v14);
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (!sub_1007868D4(off_100B508C8, v15))
          {
            v17 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_30;
            }

            *buf = 138412290;
            v36 = v15;
            v18 = v17;
            v19 = "Device %@ does not exist";
            goto LABEL_33;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if (sub_1003AF1AC(off_100B512F0, *(v24 + 128), v15))
          {
            v16 = sub_10005201C(v15, *(v24 + 168), *(v24 + 80));
            xpc_array_append_value(*(a1 + 56), v16);
            xpc_release(v16);
            goto LABEL_30;
          }

          v20 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = v15;
            v18 = v20;
            v19 = "Cannot access device %@";
LABEL_33:
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
          }

LABEL_30:
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v21 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
        v12 = v21;
      }

      while (v21);
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 64));
  v23 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", *(a1 + 56));
    xpc_connection_send_message(*(v24 + 16), v23);
    xpc_release(v23);
  }

  xpc_release(*(a1 + 56));
}

id sub_10003E9C4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableArray array];
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 176);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [*(a1 + 176) objectForKey:{v9, __p[0], __p[1], v14}];
        if (*(a2 + 23) < 0)
        {
          sub_100008904(__p, *a2, *(a2 + 8));
        }

        else
        {
          *__p = *a2;
          v14 = *(a2 + 16);
        }

        v11 = sub_1000463C8((v10 + 176), __p);
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p[0]);
        }

        if (v10 + 184 != v11)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }

  sub_10000801C(v19);
  sub_1000088CC(v19);

  return v4;
}

void sub_10003EB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1000088CC(&a24);

  _Unwind_Resume(a1);
}

void sub_10003EBD4(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = xpc_dictionary_create_reply(a2);
  v6 = sub_10003ED64(value, "kCBMsgArgCustomProperties");
  v7 = objc_opt_new();
  v8 = sub_100007EE8();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003DF04;
  v11[3] = &unk_100B04830;
  v15 = a1;
  v9 = v7;
  v12 = v9;
  v10 = v6;
  v16 = v4;
  v13 = v10;
  v14 = v17;
  sub_10000D334(v8, v11);

  _Block_object_dispose(v17, 8);
}

void sub_10003ED1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003ED64(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  v3 = value;
  if (value)
  {
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      v4 = +[NSMutableArray array];
      for (i = 0; ; ++i)
      {
        if (i >= xpc_array_get_count(v3))
        {
          v3 = v4;
          goto LABEL_16;
        }

        v6 = xpc_array_get_value(v3, i);
        v7 = v6;
        if (!v6)
        {
          break;
        }

        if (xpc_get_type(v6) != &_xpc_type_string)
        {
          break;
        }

        v8 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v7)];
        if (!v8)
        {
          break;
        }

        [v4 addObject:v8];
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820DB0();
      }

      v3 = 0;
LABEL_16:
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820D40();
      }

      v3 = 0;
    }
  }

  return v3;
}

void sub_10003EF38(id a1)
{
  v1 = +[LeDeviceCache sharedInstance];
  [v1 tryLoadProtectedCache];
}

id sub_10003F060()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

void sub_10003F094(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void *sub_10003F120()
{

  return sub_10000C0FC();
}

void sub_10003F158(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10003F1B4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_10003F1EC(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_10003F204(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *result = a4;
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = a3;
  return result;
}

void sub_10003F250(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void sub_10003F280(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_10003F298(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_10003F2DC(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t sub_10003F2E8(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  return result;
}

void sub_10003F35C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

id sub_10003F390(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);

  return v3;
}

id sub_10003F3E8(uint64_t a1)
{
  v2 = *(a1 + 16);

  return v2;
}

void sub_10003F45C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10003F484(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10003F4E4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_10003F578(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_10003F594(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_10003F5E4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 8u);
}

void sub_10003F618(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10003F634(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 8u);
}

void sub_10003F668(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_10003F6A8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_10003F710(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 4) = v2;
  *(a1 + 12) = 2082;
  *(a1 + 14) = a2;
}

uint64_t sub_100042184(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042194(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042214(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042224(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042234(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042254(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042264(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042274(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042284(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042294(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000422A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 51) = *(a2 + 51);
  *(result + 48) = v2;
  return result;
}

__n128 sub_1000422B8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

__n128 sub_1000422C4(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 sub_1000422E8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void *sub_10004230C(void *result, void *a2)
{
  result[6] = result + 6;
  result[7] = result + 6;
  result[8] = 0;
  v2 = a2[8];
  if (v2)
  {
    v4 = a2[6];
    v3 = a2[7];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[6];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[6] = v4;
    *(v4 + 8) = result + 6;
    result[8] = v2;
    a2[8] = 0;
  }

  return result;
}

__n128 sub_100042354(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100042368(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042378(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 51) = *(a2 + 51);
  *(result + 48) = v2;
  return result;
}