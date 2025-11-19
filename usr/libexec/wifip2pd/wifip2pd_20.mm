void sub_100186EB8()
{
  sub_100186F98();
  if (v0 <= 0x3F)
  {
    sub_100186FC8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AWDLStatistics.LowLatencyStatistics(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AWDLIdleActivity(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void *sub_100186F98()
{
  result = qword_10058F290;
  if (!qword_10058F290)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_10058F290);
  }

  return result;
}

void sub_100186FC8()
{
  if (!qword_10058F298)
  {
    type metadata accessor for AWDLActionFrame.Header(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10058F298);
    }
  }
}

uint64_t sub_100187030(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 42))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 41);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100187078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001870C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t sub_1001871FC()
{
  String.hash(into:)();
}

uint64_t WiFiP2PError.description.getter(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0xD000000000000016;
      }

      if (a1 == 6)
      {
        return 0xD00000000000001BLL;
      }

      return 0x616C696176616E55;
    }

    switch(a1)
    {
      case 8:
        return 0xD000000000000020;
      case 9:
        return 0xD00000000000001ELL;
      case 10:
        return 0xD000000000000018;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x73736563637553;
    }

    if (a1 == 1)
    {
      return 0xD000000000000012;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 == 2 || a1 == 3)
  {
    return 0x2064696C61766E49;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t WiFiAwareTerminationReason.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 == -1)
    {
      return 0xD000000000000011;
    }

    if (a1 == 1)
    {
      return 0x754F2064656D6954;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x7165522072657355;
      case 3:
        return 0x6961462070696843;
      case 4:
        return 0xD000000000000018;
    }
  }

  return 0x6E776F6E6B6E55;
}

unint64_t WiFiAwareReceiverMulticastError.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (!a1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (a1 == 1)
  {
    return 0xD00000000000002BLL;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1001878F0()
{
  v1 = 0x6E776F6E6B6E55;
  if (!*v0)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0 == 1)
  {
    return 0xD00000000000002BLL;
  }

  else
  {
    return v1;
  }
}

uint64_t WiFiAwareSenderMulticastError.description.getter(uint64_t a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E55;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

unint64_t sub_100187AA4()
{
  if (*v0)
  {
    result = 0x6E776F6E6B6E55;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

unint64_t WiFiP2PInternetSharingPolicy.description.getter(uint64_t a1)
{
  result = 0x63696C6F50205249;
  if (a1 <= 1)
  {
    if (!a1)
    {
      return result;
    }

    if (a1 == 1)
    {
      return 0xD000000000000014;
    }

    return 0xD000000000000011;
  }

  if (a1 == 2)
  {
    return 0xD000000000000011;
  }

  if (a1 == 3)
  {
    return 0xD00000000000001BLL;
  }

  if (a1 != 4)
  {
    return 0xD000000000000011;
  }

  return result;
}

id WiFiAwarePublisherDataSessionHandle.init(_:)(unint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = [objc_allocWithZone(WiFiMACAddress) initWithAddress:(a1 >> 8) & 0xFFFFFFFFFFFFLL];
  v4 = [v2 initWithDatapathID:a1 initiatorDataAddress:v3];

  return v4;
}

uint64_t WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter()
{
  v1 = [v0 datapathID];
  v2 = [v0 initiatorDataAddress];
  v3 = WiFiMACAddress.wifiAddress.getter();

  return v1 | ((v3 & 0xFFFFFFFFFFFFLL) << 8);
}

uint64_t WiFiAwareDataSessionLinkStatus.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x657669746361;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_100187E08()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v1 = 0x657669746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t AWDLTrafficRegistrationService.serviceType.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    goto LABEL_13;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return 2;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
LABEL_13:

    return 2;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return 2;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return 2;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
    goto LABEL_13;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    return 2;
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {
    goto LABEL_13;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    return 2;
  }

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {
    goto LABEL_13;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    return 2;
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {
    goto LABEL_13;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    return 2;
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;
  if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
  {
    goto LABEL_13;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t AWDLTrafficRegistrationService.showsInfraDisconnectUINotifications.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v9 != v10)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_6;
      }

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v15 != v16)
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_6;
        }

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if (v19 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v21 != v22)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            goto LABEL_6;
          }

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
          if (v24 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v26 != v27)
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v28)
            {
              goto LABEL_6;
            }

            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;
            if (v29 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v31 != v32)
            {
              v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
              goto LABEL_15;
            }
          }
        }
      }
    }

LABEL_14:
    v6 = 1;
LABEL_15:

    return v6 & 1;
  }

LABEL_6:
  v6 = 1;
  return v6 & 1;
}

uint64_t AWDLTrafficRegistrationService.allowsMultipleConcurrentPeers.getter()
{
  if (AWDLTrafficRegistrationService.serviceType.getter() != 2)
  {
    goto LABEL_7;
  }

  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    goto LABEL_13;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v9 != v10)
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_14:

      return v6 & 1;
    }

LABEL_13:
    v6 = 1;
    goto LABEL_14;
  }

LABEL_7:
  v6 = 1;
  return v6 & 1;
}

id AWDLTrafficRegistrationConfiguration.init(peerAddress:umiOptions:isActive:)(uint64_t a1, char a2, char *a3)
{
  v3 = 1;
  v4 = &AWDLTrafficRegistrationServiceAirPlay;
  v6 = 0;
  switch(a2)
  {
    case 1:
    case 3:
      v3 = 0;
      v4 = &AWDLTrafficRegistrationServiceAirPlay;
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 19:
    case 20:
    case 21:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
      return v6;
    case 15:
      v3 = 1;
      goto LABEL_21;
    case 16:
      v3 = 0;
LABEL_21:
      v4 = &AWDLTrafficRegistrationServiceRealTimeMode;
      break;
    case 17:
      v3 = 1;
      goto LABEL_23;
    case 18:
      v3 = 0;
LABEL_23:
      v4 = &AWDLTrafficRegistrationServiceDeviceToDeviceMigration;
      break;
    case 22:
      v3 = 1;
      goto LABEL_18;
    case 23:
      v3 = 0;
LABEL_18:
      v4 = &AWDLTrafficRegistrationServiceUniversalControl;
      break;
    case 24:
    case 26:
      v3 = 1;
      goto LABEL_5;
    case 25:
    case 27:
      v3 = 0;
LABEL_5:
      v4 = &AWDLTrafficRegistrationServiceSidecar;
      break;
    case 33:
      v3 = 1;
      goto LABEL_33;
    case 34:
      v3 = 0;
LABEL_33:
      v4 = &AWDLTrafficRegistrationServiceMPRemoteCamera;
      break;
    case 35:
      v3 = 1;
      goto LABEL_27;
    case 36:
      v3 = 0;
LABEL_27:
      v4 = &AWDLTrafficRegistrationServiceEdgeKit;
      break;
    case 37:
      v3 = 1;
      goto LABEL_29;
    case 38:
      v3 = 0;
LABEL_29:
      v4 = &AWDLTrafficRegistrationServiceRemoteCamera;
      break;
    case 39:
      v3 = 1;
      goto LABEL_14;
    case 40:
      v3 = 0;
LABEL_14:
      v4 = &AWDLTrafficRegistrationServiceTVRemoteCamera;
      break;
    case 41:
      v3 = 1;
      goto LABEL_16;
    case 42:
      v3 = 0;
LABEL_16:
      v4 = &AWDLTrafficRegistrationServiceRemoteScreen;
      break;
    case 43:
      v3 = 1;
      goto LABEL_35;
    case 44:
      v3 = 0;
LABEL_35:
      v4 = &AWDLTrafficRegistrationServiceSpatialStreaming;
      break;
    case 45:
      v3 = 1;
      goto LABEL_31;
    case 46:
      v3 = 0;
LABEL_31:
      v4 = &AWDLTrafficRegistrationServiceMacVirtualDisplay;
      break;
    default:
      break;
  }

  v7 = *v4;
  *a3 = v3;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = objc_allocWithZone(WiFiMACAddress);
  v10 = v7;
  v11 = [v9 initWithAddress:a1 & 0xFFFFFFFFFFFFLL];
  v6 = [v8 initWithUniqueIdentifier:v10 peerAddress:v11];

  return v6;
}

uint64_t WiFiP2PSPITransactionType.desiredLatency.getter(uint64_t result)
{
  if (result > 3)
  {
    switch(result)
    {
      case 4:
        return result;
      case 18:
        return 6;
      case 12:
        return 5;
    }

    return 0;
  }

  if (result != 1 && result != 2 && result != 3)
  {
    return 0;
  }

  return result;
}

uint64_t WiFiAwarePublishConfiguration.furtherServiceDiscoveryFunction.getter()
{
  if ([v0 furtherServiceDiscoveryRequired])
  {
    return [v0 jumboServiceDiscoveryMessages];
  }

  else
  {
    return 2;
  }
}

unint64_t WiFiAwarePublishDatapathServiceSpecificInfo.genericServiceProtocol.getter()
{
  v1 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  __chkstk_darwin();
  v3 = v23 - v2;
  v4 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v6 = (v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v8 = v23 - v7;
  __chkstk_darwin();
  v10 = v23 - v9;
  v25 = sub_100082620(_swiftEmptyArrayStorage);
  *v10 = [v0 protocolType] != 0;
  v11 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  v12 = 1;
  swift_storeEnumTagMultiPayload();
  v13 = *(v11 - 8);
  v14 = *(v13 + 56);
  v23[1] = v13 + 56;
  v24 = v14;
  v14(v10, 0, 1, v11);
  sub_100012400(v10, v8, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v8, 1);
  sub_100016290(v10, &qword_10058BB48, &unk_100483040);
  [v0 servicePort];
  NWEndpoint.Port.init(rawValue:)();
  NANGenericServiceProtocol.port.setter(v3);
  v15 = [v0 hostname];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = _s7CoreP2P14NANServiceNameVyACSgSScfC_0(v17, v19);
    if (v21)
    {
      *v6 = v20;
      v6[1] = v21;
      swift_storeEnumTagMultiPayload();
      v12 = 0;
    }
  }

  v24(v6, v12, 1, v11);
  sub_100012400(v6, v10, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v10, 2);
  sub_100016290(v6, &qword_10058BB48, &unk_100483040);
  return v25;
}

id WiFiAwareDiscoveryResult.init(nanDiscoveryResultEvent:serviceName:serviceDescriptor:serviceDescriptorExtension:extraServiceSpecificInfo:pairSetupRequired:pairingConfiguration:pairedUUID:pairedDeviceName:signature:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = a1;
  v50 = a4;
  v51 = a5;
  v54 = a2;
  v55 = a3;
  v57 = a11;
  v18 = *a7;
  v17 = a7[1];
  v52 = a1 >> 16;
  v20 = a7[2];
  v19 = a7[3];
  v21 = a7[4];
  v22 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v24 = &v48 - v23;
  v25 = v20;
  v56 = a6;
  if (v20 != 5)
  {
    if (a8)
    {
      *&v59 = v18;
      *(&v59 + 1) = v17;
      v60 = v20;
      v61 = v19;
      v62 = v21;
      sub_100197F08(&v59, v58);
      v26 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(a8);

      if (v26)
      {
LABEL_17:
        v33 = v26;
        sub_100016290(a7, &qword_10058F2D8, &qword_100491AB8);
        if ((v18 & 0x10000) != 0)
        {
          v31 = (v18 >> 17) & 1;
        }

        else
        {
          v31 = 2;
        }

        v49 = (WORD1(v18) >> 2) & 1;
        v48 = (v18 >> 22) & 1;
        goto LABEL_21;
      }

      if (v25 != 2)
      {
LABEL_16:
        v26 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      *&v59 = v18;
      *(&v59 + 1) = v17;
      v60 = v20;
      v61 = v19;
      v62 = v21;
      sub_100197F08(&v59, v58);
      if (v20 != 2)
      {
        goto LABEL_16;
      }
    }

    sub_10000AB0C(v19, v21);
    v32 = sub_1000D201C(v19, v21);
    sub_100016290(a7, &qword_10058F2D8, &qword_100491AB8);
    if (v32)
    {
      v26 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(v32);

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!a8 || (v26 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(a8), , !v26))
  {
    v59 = *(a6 + 56);
    v60 = *(a6 + 72);
    if (v59 == 2 && (v28 = *(&v59 + 1), v27 = v60, sub_10000AB0C(*(&v59 + 1), v60), v29 = sub_1000D201C(v28, v27), sub_100016290(&v59, &qword_10058F2E0, qword_100491AC0), v29))
    {
      v26 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(v29);
    }

    else
    {
      v26 = 0;
    }
  }

  v30 = v26;
  v48 = 0;
  v49 = 0;
  v31 = 2;
LABEL_21:
  v50 = String._bridgeToObjectiveC()();

  v34 = objc_allocWithZone(WiFiMACAddress);
  v35 = [v34 initWithAddress:v52];
  sub_100012400(v57, v24, &qword_10058F4D0, &qword_100491AB0);
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  isa = 0;
  if ((*(v37 + 48))(v24, 1, v36) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v37 + 8))(v24, v36);
  }

  if (a13)
  {
    v39 = String._bridgeToObjectiveC()();
  }

  else
  {
    v39 = 0;
  }

  v40 = 1;
  if (v31)
  {
    v40 = 2;
  }

  if (v31 == 2)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  LOBYTE(v47) = a9 & 1;
  v46 = v41;
  v43 = v50;
  v44 = [v42 initWithServiceName:v50 serviceSpecificInfo:v26 publishID:BYTE1(v53) subscribeID:v53 publisherAddressKey:v35 datapathSupported:v49 datapathCipherSuite:v48 fsdFunction:v46 rssi:v54 pairSetupRequired:v47 pairingConfiguration:a10 pairedUUID:isa pairedDeviceName:v39 signature:a14];

  sub_100197EB4(v56);
  sub_100016290(a7, &qword_10058F2D8, &qword_100491AB8);
  sub_100016290(v57, &qword_10058F4D0, &qword_100491AB0);
  return v44;
}

id NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(uint64_t a1)
{
  v2 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
  if (*(a1 + 16) && (v7 = sub_10007CD10(3), (v8 & 1) != 0) && (sub_100198748(*(a1 + 56) + *(v2 + 72) * v7, v5, type metadata accessor for NANGenericServiceProtocol.Attribute), sub_1000C8C44(), v10 = v9, sub_100197F64(v5), v10))
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v6 setInstanceName:v11];

  v12 = NANGenericServiceProtocol.textInfo.getter(a1);
  if (v13 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v15 = v12;
    v16 = v13;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100017554(v15, v16);
  }

  [v6 setTxtRecordData:isa];

  v17 = NANGenericServiceProtocol.blob.getter(a1);
  if (v18 >> 60 == 15)
  {
    NANGenericServiceProtocol.vendorSpecificData.getter(a1);
    if (v20 >> 60 == 15)
    {
      v21 = 0;
      goto LABEL_14;
    }

    v17 = v19;
    v18 = v20;
  }

  v22 = v17;
  v23 = v18;
  v21 = Data._bridgeToObjectiveC()().super.isa;
  sub_1000124C8(v22, v23);
LABEL_14:
  [v6 setBlob:v21];

  v24 = [v6 instanceName];
  if (v24)
  {
  }

  else
  {
    v25 = [v6 txtRecordData];
    if (v25 || (v25 = [v6 blob]) != 0)
    {
      v26 = v25;
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      sub_1000124C8(v27, v29);
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

uint64_t Layer3Protocol.init(apiProtocolType:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return a1 != 0;
  }
}

void WiFiAwareDataSessionStatisticsReport.difference(from:)(void *a1)
{
  v3 = [v1 dfsChannelsCount];
  v4 = [v3 integerValue];

  v5 = [a1 dfsChannelsCount];
  v6 = [v5 integerValue];

  if (__OFSUB__(v4, v6))
  {
    __break(1u);
    goto LABEL_33;
  }

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v8 = v1;
  [v8 setDfsChannelsCount:isa];

  v9 = [v8 csaCount];
  v10 = [v9 integerValue];

  v11 = [a1 csaCount];
  v12 = [v11 integerValue];

  if (__OFSUB__(v10, v12))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v13 = Int._bridgeToObjectiveC()().super.super.isa;
  v14 = v8;
  [v14 setCsaCount:v13];

  v15 = [v14 quietIECount];
  v16 = [v15 integerValue];

  v17 = [a1 quietIECount];
  v18 = [v17 integerValue];

  if (__OFSUB__(v16, v18))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v19 = Int._bridgeToObjectiveC()().super.super.isa;
  v20 = v14;
  [v20 setQuietIECount:v19];

  v21 = [v20 txErrorCount];
  v22 = [v21 integerValue];

  v23 = [a1 txErrorCount];
  v24 = [v23 integerValue];

  if (__OFSUB__(v22, v24))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v25 = Int._bridgeToObjectiveC()().super.super.isa;
  v26 = v20;
  [v26 setTxErrorCount:v25];

  v27 = [v26 packetsOn2GCount];
  v28 = [v27 integerValue];

  v29 = [a1 packetsOn2GCount];
  v30 = [v29 integerValue];

  if (__OFSUB__(v28, v30))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v31 = Int._bridgeToObjectiveC()().super.super.isa;
  v32 = v26;
  [v32 setPacketsOn2GCount:v31];

  v33 = [v32 packetsNAVOn2GCount];
  v34 = [v33 integerValue];

  v35 = [a1 packetsNAVOn2GCount];
  v36 = [v35 integerValue];

  if (__OFSUB__(v34, v36))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v37 = Int._bridgeToObjectiveC()().super.super.isa;
  v38 = v32;
  [v38 setPacketsNAVOn2GCount:v37];

  v39 = [v38 packetsHOFOn2GCount];
  v40 = [v39 integerValue];

  v41 = [a1 packetsHOFOn2GCount];
  v42 = [v41 integerValue];

  if (__OFSUB__(v40, v42))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v43 = Int._bridgeToObjectiveC()().super.super.isa;
  v44 = v38;
  [v44 setPacketsHOFOn2GCount:v43];

  v45 = [v44 packetsOn5GCount];
  v46 = [v45 integerValue];

  v47 = [a1 packetsOn5GCount];
  v48 = [v47 integerValue];

  if (__OFSUB__(v46, v48))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v49 = Int._bridgeToObjectiveC()().super.super.isa;
  v50 = v44;
  [v50 setPacketsOn5GCount:v49];

  v51 = [v50 packetsOverridenOn5GCount];
  v52 = [v51 integerValue];

  v53 = [a1 packetsOverridenOn5GCount];
  v54 = [v53 integerValue];

  if (__OFSUB__(v52, v54))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v55 = Int._bridgeToObjectiveC()().super.super.isa;
  v56 = v50;
  [v56 setPacketsOverridenOn5GCount:v55];

  v57 = [v56 infraRelayRequestersCount];
  v58 = [v57 integerValue];

  v59 = [a1 infraRelayRequestersCount];
  v60 = [v59 integerValue];

  if (__OFSUB__(v58, v60))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v61 = Int._bridgeToObjectiveC()().super.super.isa;
  v62 = v56;
  [v62 setInfraRelayRequestersCount:v61];

  v63 = [v62 txExpiredCount];
  v64 = [v63 integerValue];

  v65 = [a1 txExpiredCount];
  v66 = [v65 integerValue];

  if (__OFSUB__(v64, v66))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v67 = Int._bridgeToObjectiveC()().super.super.isa;
  v68 = v62;
  [v68 setTxExpiredCount:v67];

  v69 = [v68 txNoACKCount];
  v70 = [v69 integerValue];

  v71 = [a1 txNoACKCount];
  v72 = [v71 integerValue];

  if (__OFSUB__(v70, v72))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v73 = Int._bridgeToObjectiveC()().super.super.isa;
  v74 = v68;
  [v74 setTxNoACKCount:v73];

  v75 = [v74 txFailedCount];
  v76 = [v75 integerValue];

  v77 = [a1 txFailedCount];
  v78 = [v77 integerValue];

  if (__OFSUB__(v76, v78))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v79 = Int._bridgeToObjectiveC()().super.super.isa;
  v80 = v74;
  [v80 setTxFailedCount:v79];

  v81 = [v80 txNoResourcesCount];
  v82 = [v81 integerValue];

  v83 = [a1 txNoResourcesCount];
  v84 = [v83 integerValue];

  if (__OFSUB__(v82, v84))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v85 = Int._bridgeToObjectiveC()().super.super.isa;
  v86 = v80;
  [v86 setTxNoResourcesCount:v85];

  v87 = [v86 txIOErrorCount];
  v88 = [v87 integerValue];

  v89 = [a1 txIOErrorCount];
  v90 = [v89 integerValue];

  if (__OFSUB__(v88, v90))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v91 = Int._bridgeToObjectiveC()().super.super.isa;
  v92 = v86;
  [v92 setTxIOErrorCount:v91];

  v93 = [v92 txMemoryErrorCount];
  v94 = [v93 integerValue];

  v95 = [a1 txMemoryErrorCount];
  v96 = [v95 integerValue];

  if (__OFSUB__(v94, v96))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v97 = Int._bridgeToObjectiveC()().super.super.isa;
  v98 = v92;
  [v98 setTxMemoryErrorCount:v97];

  v99 = [v98 txChipModeErrorCount];
  v100 = [v99 integerValue];

  v101 = [a1 txChipModeErrorCount];
  v102 = [v101 integerValue];

  if (__OFSUB__(v100, v102))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v103 = Int._bridgeToObjectiveC()().super.super.isa;
  v104 = v98;
  [v104 setTxChipModeErrorCount:v103];

  v105 = [v104 txNoRemotePeerCount];
  v106 = [v105 integerValue];

  v107 = [a1 txNoRemotePeerCount];
  v108 = [v107 integerValue];

  if (__OFSUB__(v106, v108))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v109 = Int._bridgeToObjectiveC()().super.super.isa;
  v110 = v104;
  [v110 setTxNoRemotePeerCount:v109];

  v111 = [v110 txInternalErrorCount];
  v112 = [v111 integerValue];

  v113 = [a1 txInternalErrorCount];
  v114 = [v113 integerValue];

  if (__OFSUB__(v112, v114))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v115 = Int._bridgeToObjectiveC()().super.super.isa;
  v116 = v110;
  [v116 setTxInternalErrorCount:v115];

  v117 = [v116 txDroppedCount];
  v118 = [v117 integerValue];

  v119 = [a1 txDroppedCount];
  v120 = [v119 integerValue];

  if (__OFSUB__(v118, v120))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v121 = Int._bridgeToObjectiveC()().super.super.isa;
  v122 = v116;
  [v122 setTxDroppedCount:v121];

  v123 = [v122 txFirmwareFreePacketCount];
  v124 = [v123 integerValue];

  v125 = [a1 txFirmwareFreePacketCount];
  v126 = [v125 integerValue];

  if (__OFSUB__(v124, v126))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v127 = Int._bridgeToObjectiveC()().super.super.isa;
  v128 = v122;
  [v128 setTxFirmwareFreePacketCount:v127];

  v129 = [v128 txMaxRetriesCount];
  v130 = [v129 integerValue];

  v131 = [a1 txMaxRetriesCount];
  v132 = [v131 integerValue];

  if (__OFSUB__(v130, v132))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v133 = Int._bridgeToObjectiveC()().super.super.isa;
  v134 = v128;
  [v134 setTxMaxRetriesCount:v133];

  v135 = [v134 txForceLifetimeExpiredCount];
  v136 = [v135 integerValue];

  v137 = [a1 txForceLifetimeExpiredCount];
  v138 = [v137 integerValue];

  if (__OFSUB__(v136, v138))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v139 = Int._bridgeToObjectiveC()().super.super.isa;
  v140 = v134;
  [v140 setTxForceLifetimeExpiredCount:v139];

  v141 = [v140 channelSequenceMismatchOn5GCount];
  v142 = [v141 integerValue];

  v143 = [a1 channelSequenceMismatchOn5GCount];
  v144 = [v143 integerValue];

  if (__OFSUB__(v142, v144))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v145 = Int._bridgeToObjectiveC()().super.super.isa;
  v146 = v140;
  [v146 setChannelSequenceMismatchOn5GCount:v145];

  v147 = [v146 channelSequenceMismatchOn2GCount];
  v148 = [v147 integerValue];

  v149 = [a1 channelSequenceMismatchOn2GCount];
  v150 = [v149 integerValue];

  if (__OFSUB__(v148, v150))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v151 = Int._bridgeToObjectiveC()().super.super.isa;
  v152 = v146;
  [v152 setChannelSequenceMismatchOn2GCount:v151];

  v153 = [v152 infraScanCount];
  v154 = [v153 integerValue];

  v155 = [a1 infraScanCount];
  v156 = [v155 integerValue];

  if (__OFSUB__(v154, v156))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v157 = Int._bridgeToObjectiveC()().super.super.isa;
  v158 = v152;
  [v158 setInfraScanCount:v157];

  v159 = [v158 infraAssocCount];
  v160 = [v159 integerValue];

  v161 = [a1 infraAssocCount];
  v162 = [v161 integerValue];

  if (__OFSUB__(v160, v162))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v163 = Int._bridgeToObjectiveC()().super.super.isa;
  v164 = v158;
  [v164 setInfraAssocCount:v163];

  v165 = [v164 infraDisassocCount];
  v166 = [v165 integerValue];

  v167 = [a1 infraDisassocCount];
  v168 = [v167 integerValue];

  if (__OFSUB__(v166, v168))
  {
LABEL_59:
    __break(1u);
    return;
  }

  v169 = Int._bridgeToObjectiveC()().super.super.isa;
  v170 = v164;
  [v170 setInfraDisassocCount:v169];

  KeyPath = swift_getKeyPath();
  sub_10018A25C(KeyPath, v170, a1);

  v172 = swift_getKeyPath();
  sub_10018A25C(v172, v170, a1);

  v173 = swift_getKeyPath();
  sub_10018A25C(v173, v170, a1);

  v174 = swift_getKeyPath();
  sub_10018A25C(v174, v170, a1);

  v175 = swift_getKeyPath();
  sub_10018A25C(v175, v170, a1);

  v176 = swift_getKeyPath();
  sub_10018A25C(v176, v170, a1);
}

void sub_10018A25C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  swift_getAtKeyPath();

  v5 = a3;
  swift_getAtKeyPath();

  if (v21 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (v20 < 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = v20 & 0xFFFFFFFFFFFFFF8;
    }

    v19 = v7;
    v8 = 4;
    while (1)
    {
      v9 = v8 - 4;
      if ((v21 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v10 = *(v21 + 8 * v8);
      }

      v11 = v10;
      v12 = v8 - 3;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v20 >> 62)
      {
        if (v9 == _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_24:

          return;
        }
      }

      else if (v9 == *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v13 = *(v20 + 8 * v8);
      }

      v14 = v13;
      [v11 value];
      v16 = v15;
      [v14 value];
      v18 = v16 - v17;
      if (v18 <= 0.0)
      {
        v18 = 0.0;
      }

      [v11 setValue:v18];

      ++v8;
      if (v12 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
}

void sub_10018A46C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  sub_100198868();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a3 = v5;
}

void sub_10018A4CC(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = *a2;
  sub_100198868();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v7 *a5];
}

uint64_t DNSRecords.Identifier.serviceType.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (sub_100178C7C(0x79616C707269615FLL, 0xE800000000000000, 256, a1, a2, a3 & 0xFF01) || sub_100178C7C(0x79616C707269615FLL, 0xEC0000007032702DLL, 256, a1, a2, a3 & 0xFF01) || sub_100178C7C(0x706F61725FLL, 0xE500000000000000, 256, a1, a2, a3 & 0xFF01) || sub_100178C7C(0x696E61706D6F635FLL, 0xEF6B6E696C2D6E6FLL, 256, a1, a2, a3 & 0xFF01))
  {
    return 2;
  }

  if (sub_100178C7C(0x6B6E696C64725FLL, 0xE700000000000000, 256, a1, a2, a3 & 0xFF01))
  {
    return 2;
  }

  return 0;
}

unint64_t NANGenericServiceProtocol.init(apiDatapathServiceSpecificInfo:)(id a1)
{
  v2 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  __chkstk_darwin();
  v4 = &v25 - v3;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v9 = &v25 - v8;
  __chkstk_darwin();
  v11 = &v25 - v10;
  v26 = sub_100082620(_swiftEmptyArrayStorage);
  if (a1)
  {
    *v11 = [a1 protocolType] != 0;
    v12 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  sub_100012400(v11, v9, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v9, 1);
  sub_100016290(v11, &qword_10058BB48, &unk_100483040);
  if (!a1)
  {
    v22 = type metadata accessor for NWEndpoint.Port();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    NANGenericServiceProtocol.port.setter(v4);
LABEL_9:
    v23 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    goto LABEL_10;
  }

  a1 = a1;
  [a1 servicePort];
  NWEndpoint.Port.init(rawValue:)();

  NANGenericServiceProtocol.port.setter(v4);
  v14 = [a1 hostname];
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = _s7CoreP2P14NANServiceNameVyACSgSScfC_0(v16, v18);
  if (!v20)
  {
    goto LABEL_9;
  }

  *v7 = v19;
  v7[1] = v20;
  v21 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
LABEL_10:
  sub_100012400(v7, v9, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v9, 2);
  sub_100016290(v7, &qword_10058BB48, &unk_100483040);

  return v26;
}

unint64_t NANGenericServiceProtocol.init(apiPublishServiceSpecificInfo:)(void *a1)
{
  v2 = sub_100198008(a1);

  return v2;
}

unint64_t NANGenericServiceProtocol.init(apiPublishServiceSpecificInfo:apiPairingMetadata:)(void *a1, void *a2)
{
  v4 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = (&v29 - v7);
  v9 = sub_100198008(a1);
  v30 = v9;
  if (a2)
  {
    v10 = WiFiAwarePairingMetadata.txtRecordData.getter();
    v12 = v11;
    v13 = objc_allocWithZone(NSMutableData);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = [v13 initWithData:isa];

    sub_1000124C8(v10, v12);
    if (a1 && (v16 = [a1 txtRecordData]) != 0)
    {
      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xC000000000000000;
    }

    v21 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v18, v20);
    [v15 appendData:v21];

    v22 = v15;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *v8 = v23;
    v8[1] = v25;
    v26 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
    sub_100012400(v8, v6, &qword_10058BB48, &unk_100483040);
    sub_10000AB0C(v23, v25);
    sub_100072F88(v6, 4);

    sub_1000124C8(v23, v25);
    sub_100016290(v8, &qword_10058BB48, &unk_100483040);
    return v30;
  }

  else
  {
    v28 = v9;

    return v28;
  }
}

uint64_t WiFiAwarePairingMetadata.txtRecordData.getter()
{
  v65 = type metadata accessor for String.Encoding();
  v1 = *(v65 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v64 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BDF8, &qword_100481970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F30;
  *(inited + 32) = 0x4E676E6972696170;
  *(inited + 40) = 0xEB00000000656D61;
  v5 = [v0 selfPairingName];
  if (v5)
  {

    v6 = [v0 selfPairingName];
    if (!v6)
    {
      goto LABEL_45;
    }

    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    sub_100223578(v69);
    if (v70)
    {
      if (swift_dynamicCast())
      {
        v8 = v67;
        v10 = v68;
        goto LABEL_9;
      }
    }

    else
    {
      sub_100016290(v69, &qword_10058BA80, &qword_1004818C0);
    }

    v8 = 0;
    v10 = 0xE000000000000000;
  }

LABEL_9:
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 64) = 0x614E726F646E6576;
  *(inited + 72) = 0xEA0000000000656DLL;
  *(inited + 80) = 0x6E4920656C707041;
  *(inited + 88) = 0xEA00000000002E63;
  *(inited + 96) = 0x6D614E6C65646F6DLL;
  *(inited + 104) = 0xE900000000000065;
  sub_100223578(v69);
  if (v70)
  {
    if (swift_dynamicCast())
    {
      v11 = v67;
      v12 = v68;
      goto LABEL_14;
    }
  }

  else
  {
    sub_100016290(v69, &qword_10058BA80, &qword_1004818C0);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_14:
  *(inited + 112) = v11;
  *(inited + 120) = v12;
  v13 = sub_1000824E4(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BCB8, &qword_1004818D0);
  swift_arrayDestroy();
  v14 = sub_100082950(_swiftEmptyArrayStorage);
  v15 = v13 + 64;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 64);
  v19 = (v16 + 63) >> 6;
  v63 = (v1 + 8);
  v66 = v13;

  v20 = 0;
  v62 = v13 + 64;
LABEL_17:
  v21 = v20;
  if (!v18)
  {
    goto LABEL_19;
  }

  do
  {
    v20 = v21;
LABEL_22:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = (v20 << 10) | (16 * v22);
    v24 = (*(v66 + 48) + v23);
    v26 = *v24;
    v25 = v24[1];
    v27 = (*(v66 + 56) + v23);
    v29 = *v27;
    v28 = v27[1];
    swift_bridgeObjectRetain_n();

    v30 = v64;
    static String.Encoding.utf8.getter();
    v31 = String.data(using:allowLossyConversion:)();
    v33 = v32;
    (*v63)(v30, v65);
    if (v33 >> 60 != 15)
    {
      LODWORD(v61) = swift_isUniquelyReferenced_nonNull_native();
      v69[0] = v14;
      v37 = sub_1000102E8(v26, v25);
      v39 = v14[2];
      v40 = (v38 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        goto LABEL_43;
      }

      v43 = v38;
      if (v14[3] >= v42)
      {
        if ((v61 & 1) == 0)
        {
          v61 = v37;
          sub_100197280();
          v37 = v61;
          if (v43)
          {
            goto LABEL_35;
          }

          goto LABEL_38;
        }
      }

      else
      {
        sub_1001904FC(v42, v61);
        v37 = sub_1000102E8(v26, v25);
        if ((v43 & 1) != (v44 & 1))
        {
          goto LABEL_46;
        }
      }

      if (v43)
      {
LABEL_35:
        v47 = v37;

        v14 = v69[0];
        v48 = (*(v69[0] + 56) + 16 * v47);
        v49 = *v48;
        v50 = v48[1];
        *v48 = v31;
        v48[1] = v33;
        sub_1000124C8(v49, v50);
LABEL_36:

LABEL_40:
        v15 = v62;
        goto LABEL_17;
      }

LABEL_38:
      v14 = v69[0];
      *(v69[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
      v51 = (v14[6] + 16 * v37);
      *v51 = v26;
      v51[1] = v25;
      v52 = (v14[7] + 16 * v37);
      *v52 = v31;
      v52[1] = v33;

      v53 = v14[2];
      v41 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v41)
      {
        goto LABEL_44;
      }

      v14[2] = v54;
      goto LABEL_40;
    }

    v34 = sub_1000102E8(v26, v25);
    v36 = v35;

    if (v36)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69[0] = v14;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100197280();
        v14 = v69[0];
      }

      v46 = *(v14[6] + 16 * v34 + 8);

      sub_1000124C8(*(v14[7] + 16 * v34), *(v14[7] + 16 * v34 + 8));
      sub_100193DB4(v34, v14);
      goto LABEL_36;
    }

    v21 = v20;
    v15 = v62;
  }

  while (v18);
LABEL_19:
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      v55 = objc_opt_self();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v57 = [v55 dataFromTXTRecordDictionary:isa];

      v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      return v58;
    }

    v18 = *(v15 + 8 * v20);
    ++v21;
    if (v18)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id NANGenericServiceProtocol.apiDatapathServiceSpecificInfo.getter(uint64_t a1)
{
  v2 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  __chkstk_darwin();
  v4 = &v29 - v3;
  v5 = type metadata accessor for NWEndpoint.Port();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v29 - v14;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v16 = sub_10007CD10(1);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = *(v10 + 72);
  sub_100198748(*(a1 + 56) + v18 * v16, v15, type metadata accessor for NANGenericServiceProtocol.Attribute);
  v19 = sub_1000C8A08();
  sub_100197F64(v15);
  if (v19 == 2)
  {
    return 0;
  }

  NANGenericServiceProtocol.port.getter(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100016290(v4, &qword_10058BA40, &qword_100480D90);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  v21 = [objc_allocWithZone(WiFiAwarePublishDatapathServiceSpecificInfo) initWithProtocolType:v19 & 1 servicePort:NWEndpoint.Port.rawValue.getter()];
  if (*(a1 + 16))
  {
    v22 = v21;
    v23 = sub_10007CD10(2);
    if ((v24 & 1) != 0 && (sub_100198748(*(a1 + 56) + v23 * v18, v13, type metadata accessor for NANGenericServiceProtocol.Attribute), sub_1000C8B1C(), v26 = v25, sub_100197F64(v13), v26))
    {
      v27 = String._bridgeToObjectiveC()();
    }

    else
    {
      v27 = 0;
    }

    v21 = v22;
  }

  else
  {
    v27 = 0;
  }

  v28 = v21;
  [v21 setHostname:v27];

  (*(v6 + 8))(v9, v5);
  return v28;
}

uint64_t NANAttribute.PairingBootstrapping.Method.init(apiValue:advertise:)(uint64_t a1, char a2, char a3)
{
  if (a2)
  {
LABEL_2:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 16);
  }

  if (a1 <= 2)
  {
    if (!a1)
    {
      v3 = 0;
      v4 = 0;
      return v3 | (v4 << 16);
    }

    if (a1 == 1)
    {
      v4 = 0;
      v3 = 1;
      return v3 | (v4 << 16);
    }

    if (a1 != 2)
    {
      goto LABEL_2;
    }

    v4 = 0;
    if (a3)
    {
      v3 = 2;
    }

    else
    {
      v3 = 32;
    }
  }

  else if (a1 > 4)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        v4 = 0;
        v3 = 0x8000;
        return v3 | (v4 << 16);
      }

      goto LABEL_2;
    }

    v4 = 0;
    if (a3)
    {
      v3 = 16;
    }

    else
    {
      v3 = 256;
    }
  }

  else if (a1 == 3)
  {
    v4 = 0;
    if (a3)
    {
      v3 = 4;
    }

    else
    {
      v3 = 64;
    }
  }

  else
  {
    v4 = 0;
    if (a3)
    {
      v3 = 8;
    }

    else
    {
      v3 = 128;
    }
  }

  return v3 | (v4 << 16);
}

char *NANAttribute.PairingBootstrapping.Method.validAdvertiseAPIValues.getter(unsigned __int16 a1)
{
  v1 = 0;
  v2 = a1;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v4 = *(&off_1005565B8 + v1 + 32);
    if ((v4 & ~v2) != 0)
    {
      goto LABEL_3;
    }

    if (*(&off_1005565B8 + v1 + 32) <= 0xFu)
    {
      if (*(&off_1005565B8 + v1 + 32) <= 1u)
      {
        if (*(&off_1005565B8 + v1 + 32))
        {
          v4 = 1;
        }

        goto LABEL_26;
      }

      if (v4 == 2)
      {
        goto LABEL_23;
      }

      if (v4 != 4)
      {
        if (v4 != 8)
        {
          goto LABEL_3;
        }

LABEL_25:
        v4 = 4;
        goto LABEL_26;
      }
    }

    else
    {
      if (*(&off_1005565B8 + v1 + 32) > 0x7Fu)
      {
        if (v4 == 128)
        {
          goto LABEL_25;
        }

        if (v4 != 256)
        {
          if (v4 != 0x8000)
          {
            goto LABEL_3;
          }

          v4 = 6;
          goto LABEL_26;
        }

LABEL_24:
        v4 = 5;
        goto LABEL_26;
      }

      if (v4 == 16)
      {
        goto LABEL_24;
      }

      if (v4 == 32)
      {
LABEL_23:
        v4 = 2;
        goto LABEL_26;
      }

      if (v4 != 64)
      {
        goto LABEL_3;
      }
    }

    v4 = 3;
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1001174BC(0, *(v3 + 2) + 1, 1, v3);
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_1001174BC((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    *&v3[8 * v6 + 32] = v4;
LABEL_3:
    v1 += 2;
  }

  while (v1 != 14);
  return v3;
}

uint64_t NANAttribute.PairingBootstrapping.Method.apiValue.getter(uint64_t result)
{
  if (result > 0xFu)
  {
    if (result <= 0x7Fu)
    {
      if (result != 16)
      {
        if (result != 32)
        {
          if (result != 64)
          {
            return 0;
          }

          return 3;
        }

        return 2;
      }

      return 5;
    }

    if (result != 128)
    {
      if (result != 256)
      {
        if (result == 0x8000)
        {
          return 6;
        }

        return 0;
      }

      return 5;
    }

    return 4;
  }

  if (result > 1u)
  {
    if (result == 2)
    {
      return 2;
    }

    if (result == 4)
    {
      return 3;
    }

    if (result != 8)
    {
      return 0;
    }

    return 4;
  }

  if (result)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t WiFiAwarePairingMethod.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x74655320746F4ELL;
      case 1:
        return 0x6E7574726F70704FLL;
      case 2:
        return 5130576;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 4408910;
    }

    if (a1 == 6)
    {
      return 0x64657070696B53;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 3)
  {
    return 0x6172687073736150;
  }

  else
  {
    return 21073;
  }
}

uint64_t sub_10018BB18()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    if (!v1)
    {
      return 0x74655320746F4ELL;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 5130576;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6E7574726F70704FLL;
  }

  else if (v1 > 4)
  {
    if (v1 != 5)
    {
      if (v1 == 6)
      {
        return 0x64657070696B53;
      }

      return 0x6E776F6E6B6E75;
    }

    return 4408910;
  }

  else
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return 21073;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6172687073736150;
  }
}

uint64_t WiFiAwarePairingSetupStatus.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x7463656A6552;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x747065636341;
  }
}

uint64_t sub_10018BC64()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v1 = 0x7463656A6552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x747065636341;
  }
}

uint64_t WiFiAwarePairingStorageClass.description.getter(uint64_t a1)
{
  v1 = 0x7261726F706D6554;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x6E656E616D726550;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t sub_10018BD34()
{
  v1 = *v0;
  v2 = 0x7261726F706D6554;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x6E656E616D726550;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t WiFiAwarePairingClient.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 4803651;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1230324804;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 4936513;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1701736270;
  }
}

uint64_t sub_10018BE30()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 4803651;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1230324804;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 4936513;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1701736270;
  }
}

uint64_t NANPairing.Metadata.This.init(bundleID:deviceName:storageClass:lifetime:pairingClient:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a8;
  *(a7 + 48) = a6;
  return result;
}

void NANPairing.Metadata.This.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  String.hash(into:)();
  if (*(v0 + 3))
  {
    v3 = *(v0 + 2);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + 4));
  v4 = v0[5];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(*(v0 + 6));
}

Swift::Int NANPairing.Metadata.This.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANPairing.Metadata.This.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10018C270(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7CoreP2P10NANPairingV8MetadataV4ThisV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7);
}

Swift::Int sub_10018C2D0()
{
  Hasher.init(_seed:)();
  NANPairing.Metadata.This.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NANPairing.Metadata.Peer.modelName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NANPairing.Metadata.Peer.description.getter()
{
  _StringGuts.grow(_:)(52);
  v1._object = 0x80000001004BA910;
  v1._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x726F646E6576202CLL;
  v2._object = 0xEE00203A656D614ELL;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._countAndFlagsBits = 0x4E6C65646F6D202CLL;
  v3._object = 0xED0000203A656D61;
  String.append(_:)(v3);
  String.append(_:)(v0[2]);
  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t NANPairing.Metadata.Peer.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];

  return String.hash(into:)();
}

Swift::Int NANPairing.Metadata.Peer.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10018C4D8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s7CoreP2P10NANPairingV8MetadataV4PeerV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v8) & 1;
}

Swift::Int sub_10018C520()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10018C5A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10018C610()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NANPairing.Metadata.peer.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t NANPairing.Metadata.init(this:peer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 8);
  if (!*(result + 8))
  {
    v12 = &unk_100491C50;
    result = a2;
    v13 = &unk_1005974A0;
LABEL_6:
    result = sub_100016290(result, v13, v12);
    v6 = 0;
    v11 = 0;
    v5 = 0;
    v4 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    goto LABEL_7;
  }

  v5 = *(a2 + 8);
  if (!v5)
  {
    v13 = &unk_100595C10;
    v12 = &unk_100499060;
    goto LABEL_6;
  }

  v6 = *result;
  v7 = *(result + 24);
  v8 = *(result + 40);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *a2;
LABEL_7:
  *a3 = v6;
  *(a3 + 8) = v4;
  *(a3 + 24) = v7;
  *(a3 + 40) = v8;
  *(a3 + 56) = v11;
  *(a3 + 64) = v5;
  *(a3 + 72) = v9;
  *(a3 + 88) = v10;
  return result;
}

unint64_t NANPairing.Metadata.pairedDeviceMetadata.getter@<X0>(void *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[7];
  v5 = v1[8];
  v8 = v1[9];
  v7 = v1[10];
  v10 = v1[11];
  v9 = v1[12];

  result = sub_1000824E4(_swiftEmptyArrayStorage);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v10;
  a1[7] = v9;
  a1[8] = result;
  return result;
}

unint64_t NANPairing.Metadata.description.getter()
{
  _StringGuts.grow(_:)(39);

  v1._countAndFlagsBits = NANPairing.Metadata.This.description.getter(v0);
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x203A72656550202CLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = NANPairing.Metadata.Peer.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD00000000000001ALL;
}

uint64_t NANPairing.Metadata.hash(into:)()
{
  NANPairing.Metadata.This.hash(into:)();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[11];
  v5 = v0[12];
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int NANPairing.Metadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANPairing.Metadata.This.hash(into:)();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[11];
  v5 = v0[12];
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10018CA08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s7CoreP2P10NANPairingV8MetadataV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v13);
}

Swift::Int sub_10018CA74()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  Hasher.init(_seed:)();
  NANPairing.Metadata.This.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10018CB08()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  NANPairing.Metadata.This.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10018CB8C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  Hasher.init(_seed:)();
  NANPairing.Metadata.This.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

id WiFiAwarePairingMetadata.selfMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 bundleID];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [v1 peerDeviceName];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [v1 storageClass];
  [v1 lifetime];
  v14 = v13;
  result = [v1 pairingClient];
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = result;
  return result;
}

unint64_t WiFiAwarePublishServiceSpecificInfo.pairingSSI.getter()
{
  v1 = [v0 txtRecordData];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = [v6 dictionaryFromTXTRecordData:isa];

    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000124C8(v3, v5);
    return v9;
  }

  else
  {

    return sub_100082950(_swiftEmptyArrayStorage);
  }
}

uint64_t WiFiAwarePublishServiceSpecificInfo.pairingMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v5 = [v1 txtRecordData];
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = [v10 dictionaryFromTXTRecordData:isa];

    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000124C8(v7, v9);
    if (!*(v13 + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = sub_100082950(_swiftEmptyArrayStorage);
    if (!*(v13 + 16))
    {
LABEL_10:

      v19 = 0;
      v21 = 0;
LABEL_11:
      v32 = 0;
      v33 = 0;
LABEL_12:
      v34 = 0;
      v35 = 0;
      goto LABEL_13;
    }
  }

  v14 = sub_1000102E8(0x4E676E6972696170, 0xEB00000000656D61);
  if ((v15 & 1) == 0)
  {
    goto LABEL_10;
  }

  v16 = (*(v13 + 56) + 16 * v14);
  v17 = *v16;
  v18 = v16[1];
  sub_10000AB0C(*v16, v18);

  static String.Encoding.utf8.getter();
  v19 = String.init(data:encoding:)();
  v21 = v20;
  result = sub_1000124C8(v17, v18);
  if (!v21)
  {
    v19 = 0;
    goto LABEL_11;
  }

  v23 = [v2 txtRecordData];
  if (v23)
  {
    v24 = v23;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = objc_opt_self();
    v29 = Data._bridgeToObjectiveC()().super.isa;
    v30 = [v28 dictionaryFromTXTRecordData:v29];

    v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000124C8(v25, v27);
    if (!*(v31 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v31 = sub_100082950(_swiftEmptyArrayStorage);
    if (!*(v31 + 16))
    {
LABEL_21:

      goto LABEL_10;
    }
  }

  v36 = sub_1000102E8(0x614E726F646E6576, 0xEA0000000000656DLL);
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

  v38 = (*(v31 + 56) + 16 * v36);
  v39 = *v38;
  v40 = v38[1];
  sub_10000AB0C(*v38, v40);

  static String.Encoding.utf8.getter();
  v32 = String.init(data:encoding:)();
  v33 = v41;
  sub_1000124C8(v39, v40);
  if (!v33)
  {

    v19 = 0;
    v21 = 0;
    v32 = 0;
    goto LABEL_12;
  }

  v42 = [v2 txtRecordData];
  if (v42)
  {
    v43 = v42;
    v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = objc_opt_self();
    v47 = Data._bridgeToObjectiveC()().super.isa;
    v48 = [v46 dictionaryFromTXTRecordData:v47];

    v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000124C8(v56, v45);
    if (!*(v49 + 16))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v49 = sub_100082950(_swiftEmptyArrayStorage);
    if (!*(v49 + 16))
    {
LABEL_27:

      goto LABEL_21;
    }
  }

  v50 = sub_1000102E8(0x6D614E6C65646F6DLL, 0xE900000000000065);
  if ((v51 & 1) == 0)
  {
    goto LABEL_27;
  }

  v52 = (*(v49 + 56) + 16 * v50);
  v53 = *v52;
  v54 = v52[1];
  sub_10000AB0C(*v52, v54);

  static String.Encoding.utf8.getter();
  v34 = String.init(data:encoding:)();
  v35 = v55;
  result = sub_1000124C8(v53, v54);
  if (!v35)
  {

    v19 = 0;
    v21 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

LABEL_13:
  *a1 = v19;
  a1[1] = v21;
  a1[2] = v32;
  a1[3] = v33;
  a1[4] = v34;
  a1[5] = v35;
  return result;
}

uint64_t WiFiAwareDatapathType.description.getter(uint64_t a1)
{
  v1 = 0x65646E6F70736552;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x6F74616974696E49;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t sub_10018D360()
{
  v1 = *v0;
  v2 = 0x65646E6F70736552;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x6F74616974696E49;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 1701736270;
  }
}

id WiFiAwarePairingMethod.asNSNumber.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger:a1];
}

uint64_t sub_10018D424(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_1005952E0, &unk_1004B1850);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100085188(v25, v37);
      }

      else
      {
        sub_100002B30(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100085188(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10018D6DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F3C0, &unk_100492340);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 40 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 24);
      v43 = *(v24 + 16);
      v44 = *(v24 + 32);
      v42 = *(v24 + 33);
      v28 = *(v23 + 8 * v22);
      if ((v41 & 1) == 0)
      {

        v29 = v28;
      }

      v30 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v42);
      result = Hasher._finalize()();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v17 = v25;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v17 = v25;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 40 * v16;
      *v18 = v17;
      *(v18 + 8) = v26;
      *(v18 + 16) = v43;
      *(v18 + 24) = v27;
      *(v18 + 32) = v44;
      *(v18 + 33) = v42;
      *(*(v8 + 56) + 8 * v16) = v28;
      ++*(v8 + 16);
      v5 = v40;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10018DA48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F300, &unk_100492260);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 56);
      v25 = *(v5 + 48) + 40 * v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 24);
      v46 = *(v25 + 16);
      v47 = *(v25 + 32);
      v45 = *(v25 + 33);
      v29 = v24 + 16 * v23;
      v30 = *v29;
      v44 = *(v29 + 8);
      if ((v43 & 1) == 0)
      {

        v31 = v30;
      }

      v32 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v45);
      result = Hasher._finalize()();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v17 = v26;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v17 = v26;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 40 * v16;
      *v18 = v17;
      *(v18 + 8) = v27;
      *(v18 + 16) = v46;
      *(v18 + 24) = v28;
      *(v18 + 32) = v47;
      *(v18 + 33) = v45;
      v19 = *(v8 + 56) + 16 * v16;
      *v19 = v30;
      *(v19 + 8) = v44;
      ++*(v8 + 16);
      v5 = v42;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_35;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v10, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10018DDCC(uint64_t a1, int a2)
{
  v3 = v2;
  v38 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin();
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v9 = *(*v3 + 24);
  }

  sub_10005DC58(&qword_10058BB58, &unk_100492320);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v37 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v8 + 48) + v23);
      v25 = *(v38 + 72);
      v26 = *(v8 + 56) + v25 * v23;
      if (v39)
      {
        sub_1001988B4(v26, v40, type metadata accessor for NANGenericServiceProtocol.Attribute);
      }

      else
      {
        sub_100198748(v26, v40, type metadata accessor for NANGenericServiceProtocol.Attribute);
      }

      v27 = *(v11 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0xDD06050403020100 >> (8 * v24));
      result = Hasher._finalize()();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + v19) = v24;
      result = sub_1001988B4(v40, *(v11 + 56) + v25 * v19, type metadata accessor for NANGenericServiceProtocol.Attribute);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

uint64_t sub_10018E13C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058BAA8, &qword_100480DF0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56) + 24 * v21;
      v23 = *(*(v5 + 48) + v21);
      v24 = *(v22 + 20);
      v37 = *(v22 + 4);
      v25 = *v22;
      v26 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v23;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v25;
      *(v17 + 4) = v37;
      *(v17 + 20) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10018E3D0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10005DC58(&qword_10058BA78, &unk_100480DC0);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_100085188((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_100002B30(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_100085188(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10018E770(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058BAA0, &unk_100492270);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = a2;
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + 32 * v21;
      v24 = *(v23 + 24);
      v25 = *(v23 + 16);
      v26 = *(v23 + 8);
      v27 = *v23;
      v28 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v27;
      *(v17 + 8) = v26;
      *(v17 + 16) = v25;
      *(v17 + 24) = v24;
      ++*(v8 + 16);
      v5 = v39;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v37)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10018EA08(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = *(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin();
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_10005DC58(&qword_10058BAC8, &qword_100480E10);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v12 + 16))
  {
    v42 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v43 = (v9 + 16);
    v44 = v9;
    v48 = (v9 + 32);
    v22 = result + 64;
    v45 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v49 = *(v9 + 72);
      v29 = v28 + v49 * v27;
      if (v47)
      {
        (*v48)(v50, v29, v8);
        v30 = *(v12 + 56);
        v31 = *(v46 + 72);
        sub_1001988B4(v30 + v31 * v27, v51, type metadata accessor for NANPairedDeviceSharedAssociation);
      }

      else
      {
        (*v43)(v50, v29, v8);
        v32 = *(v12 + 56);
        v31 = *(v46 + 72);
        sub_100198748(v32 + v31 * v27, v51, type metadata accessor for NANPairedDeviceSharedAssociation);
      }

      v33 = *(v15 + 40);
      sub_1001987B0(&unk_10058BB00, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v15 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v22 + 8 * v36);
          if (v40 != -1)
          {
            v23 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v48)((*(v15 + 48) + v49 * v23), v50, v8);
      result = sub_1001988B4(v51, *(v15 + 56) + v31 * v23, type metadata accessor for NANPairedDeviceSharedAssociation);
      ++*(v15 + 16);
      v9 = v44;
      v12 = v45;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_10018EEA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F3B8, &qword_100492338);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(v5 + 56);
      v26 = *(*(v5 + 48) + v24);
      v27 = v25 + 24 * v24;
      v28 = *v27;
      v40 = *(v27 + 8);
      v29 = *(v27 + 16);
      if ((v39 & 1) == 0)
      {

        v30 = v28;
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v16) >> 6;
        while (++v18 != v33 || (v32 & 1) == 0)
        {
          v34 = v18 == v33;
          if (v18 == v33)
          {
            v18 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v18);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v26;
      v20 = (*(v8 + 56) + 24 * v19);
      *v20 = v28;
      v20[1] = v40;
      v20[2] = v29;
      ++*(v8 + 16);
      v5 = v38;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10018F20C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F3B0, &qword_100492330);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10018F4B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058BAD8, &qword_100480E20);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_100085188(v22, v34);
      }

      else
      {
        sub_100002B30(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_1001987B0(&qword_10058BAE8, type metadata accessor for CFString);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_100085188(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10018F794(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_10058BB60, &qword_100480E90);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10018FA54(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = *(type metadata accessor for StorageEntry(0) - 8);
  v6 = *(v42 + 64);
  __chkstk_darwin();
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v9 = *(*v3 + 24);
  }

  sub_10005DC58(&qword_10058F388, &qword_1004922E8);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = *(v8 + 56);
      v26 = (*(v8 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v42 + 72);
      v30 = v25 + v29 * v24;
      if (v43)
      {
        sub_1001988B4(v30, v44, type metadata accessor for StorageEntry);
      }

      else
      {
        sub_100198748(v30, v44, type metadata accessor for StorageEntry);
      }

      v31 = *(v11 + 40);
      Hasher.init(_seed:)();
      String.lowercased()();
      String.hash(into:)();

      result = Hasher._finalize()();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v27;
      v20[1] = v28;
      result = sub_1001988B4(v44, *(v11 + 56) + v29 * v19, type metadata accessor for StorageEntry);
      ++*(v11 + 16);
      v8 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

uint64_t sub_10018FDE8(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin();
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_10005DC58(&qword_10058F398, &unk_100492300);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v12 + 16))
  {
    v42 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v43 = (v9 + 16);
    v44 = v9;
    v48 = (v9 + 32);
    v22 = result + 64;
    v45 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v49 = *(v9 + 72);
      v29 = v28 + v49 * v27;
      if (v47)
      {
        (*v48)(v50, v29, v8);
        v30 = *(v12 + 56);
        v31 = *(v46 + 72);
        sub_1001988B4(v30 + v31 * v27, v51, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      }

      else
      {
        (*v43)(v50, v29, v8);
        v32 = *(v12 + 56);
        v31 = *(v46 + 72);
        sub_100198748(v32 + v31 * v27, v51, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      }

      v33 = *(v15 + 40);
      sub_1001987B0(&unk_10058BB00, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v15 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v22 + 8 * v36);
          if (v40 != -1)
          {
            v23 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v48)((*(v15 + 48) + v49 * v23), v50, v8);
      result = sub_1001988B4(v51, *(v15 + 56) + v31 * v23, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      ++*(v15 + 16);
      v9 = v44;
      v12 = v45;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_100190288(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F390, &unk_1004922F0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1001904FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_10058BB30, &unk_100480E60);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_10000AB0C(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1001907B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058BB10, &qword_100480E40);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100190A60(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = *(sub_10005DC58(&qword_10058F3A0, &qword_100492310) - 8);
  v6 = *(v42 + 64);
  __chkstk_darwin();
  v45 = &v40 - v7;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F3A8, &qword_100492318);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v2;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = *(v8 + 56);
      v26 = *(v8 + 48) + 40 * v24;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 24);
      v47 = *(v26 + 16);
      v48 = *(v26 + 32);
      v46 = *(v26 + 33);
      v30 = v25 + *(v42 + 72) * v24;
      v44 = *(v42 + 72);
      if (v43)
      {
        sub_1001987F8(v30, v45);
      }

      else
      {
        sub_100012400(v30, v45, &qword_10058F3A0, &qword_100492310);
      }

      v31 = *(v11 + 40);
      Hasher.init(_seed:)();
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v46);
      result = Hasher._finalize()();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = *(v11 + 48) + 40 * v19;
      *v20 = v27;
      *(v20 + 8) = v28;
      *(v20 + 16) = v47;
      *(v20 + 24) = v29;
      *(v20 + 32) = v48;
      *(v20 + 33) = v46;
      result = sub_1001987F8(v45, *(v11 + 56) + v44 * v19);
      ++*(v11 + 16);
      v8 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

uint64_t sub_100190E74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F340, &qword_1004948F0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100191118(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F380, &qword_1004922E0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_100085188(v22, v33);
      }

      else
      {
        sub_100002B30(v22, v33);
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_100085188(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1001913FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F378, &qword_1004922D8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_100085188(v25, v33);
      }

      else
      {
        sub_100002B30(v25, v33);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_100085188(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_19;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100191770(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F370, &qword_1004922D0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_100085188(v22, v33);
      }

      else
      {
        sub_100002B30(v22, v33);
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_100085188(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100191A60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F368, &qword_1004922C8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_100085188(v22, v33);
      }

      else
      {
        sub_100002B30(v22, v33);
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_100085188(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100191DF0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_10005DC58(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v8 + 48) + v23);
      v25 = (*(v8 + 56) + 32 * v23);
      if (a2)
      {
        sub_100085188(v25, v37);
      }

      else
      {
        sub_100002B30(v25, v37);
      }

      v26 = *(v11 + 40);
      Hasher.init(_seed:)();
      a5(v24);
      String.hash(into:)();

      result = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + v19) = v24;
      result = sub_100085188(v37, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v6 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v8 + 32);
    v6 = v35;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_1001920A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F330, &qword_100492288);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_100085188(v25, v33);
      }

      else
      {
        sub_100002B30(v25, v33);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_100085188(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_37;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_1001924A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058F328, &qword_100492280);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_100085188(v25, v33);
      }

      else
      {
        sub_100002B30(v25, v33);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_100085188(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_37;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_100192928(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100192AD8(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v32 = a2 + 64;
    v31 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v34 = v3;
      v8 = 40 * v6;
      v9 = *(v2 + 40);
      v10 = *(v2 + 48) + 40 * v6;
      v11 = v7;
      v12 = *v10;
      v13 = *(v10 + 8);
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = *(v10 + 32);
      v17 = *(v10 + 33);
      Hasher.init(_seed:)();
      String.lowercased()();

      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();

      v7 = v11;
      v3 = v34;

      v19 = v18 & v7;
      if (v34 >= v31)
      {
        if (v19 < v31)
        {
          v4 = v32;
          v2 = a2;
        }

        else
        {
          v4 = v32;
          v2 = a2;
          if (v34 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v32;
        v2 = a2;
        if (v19 >= v31 || v34 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = v20 + 40 * v34;
          v22 = (v20 + v8);
          if (40 * v34 < v8 || v21 >= v22 + 40 || v34 != v6)
          {
            v23 = *v22;
            v24 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v23;
            *(v21 + 16) = v24;
          }

          v25 = *(v2 + 56);
          v26 = (v25 + 8 * v34);
          v27 = (v25 + 8 * v6);
          if (v34 != v6 || v26 >= v27 + 1)
          {
            *v26 = *v27;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_100192D78(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v32 = a2 + 64;
    v31 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v34 = v3;
      v8 = 40 * v6;
      v9 = *(v2 + 40);
      v10 = *(v2 + 48) + 40 * v6;
      v11 = v7;
      v12 = *v10;
      v13 = *(v10 + 8);
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = *(v10 + 32);
      v17 = *(v10 + 33);
      Hasher.init(_seed:)();
      String.lowercased()();

      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();

      v7 = v11;
      v3 = v34;

      v19 = v18 & v7;
      if (v34 >= v31)
      {
        if (v19 < v31)
        {
          v4 = v32;
          v2 = a2;
        }

        else
        {
          v4 = v32;
          v2 = a2;
          if (v34 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v32;
        v2 = a2;
        if (v19 >= v31 || v34 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = v20 + 40 * v34;
          v22 = (v20 + v8);
          if (40 * v34 < v8 || v21 >= v22 + 40 || v34 != v6)
          {
            v23 = *v22;
            v24 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v23;
            *(v21 + 16) = v24;
          }

          v25 = *(v2 + 56);
          v26 = (v25 + 16 * v34);
          v27 = (v25 + 16 * v6);
          if (16 * v34 != 16 * v6 || (v3 = v6, v26 >= v27 + 1))
          {
            *v26 = *v27;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_100193024(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1001932D8(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100193530(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001936F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100193880(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin();
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_1001987B0(&unk_10058BB00, &type metadata accessor for UUID);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100193BD0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0xDD06050403020100 >> (8 * v10));
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100193DB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100193F64(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      String.lowercased()();

      String.hash(into:)();

      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for StorageEntry(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10019416C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100194358(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1001945D8(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1001947DC(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1001949C4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100194F64(Swift::Int result, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v12 = *(a2 + 40);
      v13 = *(*(a2 + 48) + v7);
      Hasher.init(_seed:)();
      a3(v13);
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = result & v9;
      if (v4 >= v10)
      {
        if (v14 < v10)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v10)
      {
        goto LABEL_10;
      }

      if (v4 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + v4);
        v17 = (v15 + v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v4);
        v20 = (v18 + 32 * v7);
        if (v4 != v7 || v19 >= v20 + 2)
        {
          v11 = v20[1];
          *v19 = *v20;
          v19[1] = v11;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10019511C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100195414(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_100195788()
{
  v1 = v0;
  sub_10005DC58(&qword_1005952E0, &unk_1004B1850);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100002B30(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100085188(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_10019592C()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F3C0, &unk_100492340);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 40 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v2 + 56) + 8 * v17);
        LOBYTE(v18) = *(v18 + 33);
        v25 = *(v4 + 48) + 40 * v17;
        *v25 = v20;
        *(v25 + 8) = v19;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 33) = v18;
        *(*(v4 + 56) + 8 * v17) = v24;

        result = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100195AC4()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F300, &unk_100492260);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        LOBYTE(v19) = *(v19 + 33);
        v17 *= 16;
        v25 = *(v2 + 56) + v17;
        v26 = *v25;
        LOBYTE(v25) = *(v25 + 8);
        v27 = *(v4 + 48) + v18;
        *v27 = v21;
        *(v27 + 8) = v20;
        *(v27 + 16) = v22;
        *(v27 + 24) = v23;
        *(v27 + 32) = v24;
        *(v27 + 33) = v19;
        v28 = *(v4 + 56) + v17;
        *v28 = v26;
        *(v28 + 8) = v25;

        result = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100195C70()
{
  v1 = v0;
  v24 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v2 = *(v24 + 64);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BB58, &unk_100492320);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_100198748(*(v5 + 56) + v22, v4, type metadata accessor for NANGenericServiceProtocol.Attribute);
        *(*(v7 + 48) + v20) = v21;
        result = sub_1001988B4(v4, *(v7 + 56) + v22, type metadata accessor for NANGenericServiceProtocol.Attribute);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_100195EA4()
{
  v1 = v0;
  sub_10005DC58(&qword_10058BAA8, &qword_100480DF0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 20) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *v17;
      v19 = *(v17 + 20);
      v20 = *(v17 + 4);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v21 = *(v4 + 56) + 24 * v14;
      *v21 = v18;
      *(v21 + 4) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100196010()
{
  v1 = v0;
  v27 = type metadata accessor for CodingUserInfoKey();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin();
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BA78, &unk_100480DC0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_100002B30(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_100085188(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_100196294()
{
  v1 = v0;
  sub_10005DC58(&qword_10058BAA0, &unk_100492270);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v22 + 24) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 32 * v14;
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      result = *(v4 + 48);
      v21 = *v17;
      *(result + v14) = *(*(v2 + 48) + v14);
      v22 = *(v4 + 56) + 32 * v14;
      *v22 = v21;
      *(v22 + 8) = v18;
      *(v22 + 16) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_100196404()
{
  v1 = v0;
  v37 = *(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin();
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v38 = *(v35 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin();
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BAC8, &qword_100480E10);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v39 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v18 = v34;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v38;
        v24 = *(v38 + 72) * v22;
        v25 = v35;
        (*(v38 + 16))(v18, *(v6 + 48) + v24, v35);
        v26 = v36;
        v27 = *(v37 + 72) * v22;
        sub_100198748(*(v6 + 56) + v27, v36, type metadata accessor for NANPairedDeviceSharedAssociation);
        v28 = v39;
        (*(v23 + 32))(*(v39 + 48) + v24, v18, v25);
        result = sub_1001988B4(v26, *(v28 + 56) + v27, type metadata accessor for NANPairedDeviceSharedAssociation);
        v16 = v40;
      }

      while (v40);
    }

    v20 = v12;
    v8 = v39;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_100196730()
{
  v1 = v0;
  sub_10005DC58(&qword_10058F3B8, &qword_100492338);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}