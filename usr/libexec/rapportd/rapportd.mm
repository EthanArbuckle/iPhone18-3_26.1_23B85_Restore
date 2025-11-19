void sub_100002438()
{
  nw_agent_client_copy_endpoint();
  sub_100088E7C();
  LogPrintF();
}

void sub_1000024A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [RPNWUtils createTokenForClient:v5];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100002438();
  }

  v8 = nw_agent_client_copy_parameters();
  if (v8)
  {
    v40 = [*(a1 + 32) _isTCPTransport:v8];
    v9 = [RPNWAgentClient findAgentClient:"findAgentClient:tryPort:isTCP:isFlowHandler:" tryPort:v5 isTCP:1 isFlowHandler:?];
    v10 = v9;
    if (v9)
    {
      if ([v9 type] != 1 || (objc_msgSend(v10, "flowClient"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
      {
        v39 = v6;
        v12 = v10;
        v10 = 0;
        goto LABEL_22;
      }

      if (dword_1001D4638 > 30 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
      {
LABEL_20:
        v13 = +[RPNWAgentClient addAgentClient];
        if (!v13)
        {
          if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
          {
            sub_100121BD0();
          }

          goto LABEL_50;
        }

        v12 = v13;
        v39 = v6;
        [v13 setFlowToken:v7];
        v14 = [v10 applicationService];
        [v12 setApplicationService:v14];

LABEL_22:
        [v12 setControlFlags:{objc_msgSend(*(a1 + 32), "convertConnectionParametersToControlFlags:", v8)}];
        v41 = v7;
        [v12 setFlowToken:v7];
        v15 = [*(a1 + 32) _quicProtocolOptionsFromParameters:v8];
        v37 = v15 != 0;

        pid = nw_parameters_get_pid();
        v16 = [*(a1 + 32) getPersonaFromParameters:v8];
        if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          if (v15)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          if (v40)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          v35 = v8;
          v36 = [v12 controlFlags];
          v33 = v17;
          v34 = v18;
          v32 = v41;
          LogPrintF();
        }

        *uu = 0;
        v54 = 0;
        v19 = nw_agent_client_copy_endpoint();
        v20 = v19;
        if (v19 && nw_endpoint_get_type(v19) == (nw_endpoint_type_url|nw_endpoint_type_host))
        {
          nw_endpoint_get_service_identifier();
        }

        if (uuid_is_null(uu) || (v22 = [[NSUUID alloc] initWithUUIDBytes:uu]) == 0)
        {
          v21 = 0;
        }

        else
        {
          v23 = v22;
          v24 = [RPNWNearbyInvitationEndpoint findEndpoint:v22];

          v21 = v24 != 0;
        }

        v25 = [v10 nearbyInvitationConnection];

        if (v25)
        {
          v26 = 1;
        }

        else
        {
          v26 = v21;
        }

        v27 = *(a1 + 32);
        if (v26)
        {
          v28 = 0;
        }

        else
        {
          v28 = v16;
        }

        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100003688;
        v42[3] = &unk_1001ADC00;
        v43 = v12;
        v44 = v5;
        v10 = v10;
        v51 = v37;
        v52 = v40;
        v50 = pid;
        v45 = v10;
        v46 = v16;
        v29 = *(a1 + 32);
        v47 = v8;
        v48 = v29;
        v6 = v39;
        v49 = v39;
        v30 = v16;
        v31 = v12;
        [v27 executeAgentLogicInPersona:v28 pid:pid handlerDescription:@"Flow Request" handler:v42];

        v7 = v41;
LABEL_50:

        goto LABEL_51;
      }
    }

    else if (dword_1001D4638 > 30 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_20;
    }

    sub_1000035D0();
    goto LABEL_20;
  }

  if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121C10();
  }

LABEL_51:
}

uint64_t sub_1000029BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000029CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000029DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000029EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000029FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002A0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002A1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002A2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002A3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002A4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1000031C4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6[31] == *(a1 + 40))
  {
    if ((*(a1 + 44) & a3) != 0)
    {
      v7 = v5;
      [v6 _clientBLEDiscoveryDeviceFound:v5 deviceFlags:1];
    }

    else
    {
      if ((*(a1 + 48) & a3) == 0)
      {
        goto LABEL_7;
      }

      v7 = v5;
      [v6 _clientBLEDiscoveryDeviceLastSeenChange:v5];
    }

    v5 = v7;
  }

LABEL_7:
}

BOOL sub_10000329C()
{
  if (qword_1001D6020 != -1)
  {
    sub_10010E668();
  }

  return byte_1001D6018 == 1 && IsAppleInternalBuild() != 0;
}

uint64_t sub_10000357C()
{

  return LogPrintF();
}

id sub_100003688(uint64_t a1)
{
  LODWORD(v10) = 0;
  HIDWORD(v9) = *(a1 + 88);
  LOWORD(v9) = *(a1 + 92);
  [*(a1 + 32) updateAgentClientInfo:*(a1 + 40) browseResponse:0 listener:*(a1 + 48) advertiseDescriptor:0 browseDescriptor:0 isFlowHandler:1 isUsingQUIC:v9 isTCP:*(a1 + 56) agentClientPID:v10 persona:*(a1 + 64) context:? parameters:?];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 64);

  return [v5 startFlow:v4 listener:v2 client:v3 assign:v6 parameters:v7];
}

void *sub_1000039D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[53])
  {
    return [result _rangingBLEActionScannerDeviceLost:a2];
  }

  return result;
}

_DWORD *sub_100003AD0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[22] == *(a1 + 40))
  {
    return [result _clientBLEDiscoveryDeviceLost:a2 force:0 deviceFlags:2];
  }

  return result;
}

void sub_100003AFC(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = +[RPCloudDaemon sharedCloudDaemon];
  v4 = [v3 idsDeviceMap];
  v5 = [v4 objectForKeyedSubscript:v9];

  v6 = [v5 nsuuid];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 nsuuid];
    [v7 addObject:v8];
LABEL_3:

    goto LABEL_8;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v8 = [*(a1 + 40) client];
    LogPrintF();
    goto LABEL_3;
  }

LABEL_8:
}

void sub_100003C74(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 event];
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if ([v4 isEqual:@"discovery"])
  {
    CFStringGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if ([v5 isEqual:@"RPUserNotificationAppSignIn"])
    {
      v6 = 0x4000000;
    }

    else
    {
      if (![v5 isEqual:@"com.apple.CompanionAuthentication"])
      {
LABEL_7:

        goto LABEL_8;
      }

      v6 = 0x2000000000;
    }

    *(*(*(a1 + 32) + 8) + 24) |= v6;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t sub_100003DE8()
{

  return LogPrintF();
}

void sub_1000099AC()
{

  _Block_object_dispose(v0, 8);
}

BOOL sub_100009D00()
{
  if (qword_1001D6030 != -1)
  {
    sub_10010E67C();
  }

  return (byte_1001D6028 & 1) == 0;
}

_DWORD *sub_10000B298(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[31] == *(a1 + 40))
  {
    return [result _clientBLEDiscoveryDeviceFound:a2 deviceFlags:1];
  }

  return result;
}

void sub_10000B62C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7 != [v6 state])
  {
    v8 = [v6 event];
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if ([v9 isEqual:@"discovery"])
    {
      CFStringGetTypeID();
      v10 = CFDictionaryGetTypedValue();
      if ([v10 isEqual:@"_companion-link._tcp"])
      {
        LOBYTE(v11) = *(a1 + 40);
        objc_opt_class();
        v12 = NSDictionaryGetNSArrayOfClass();
        if (![v12 count])
        {
          goto LABEL_18;
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = v12;
        v11 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          v23 = v12;
          v14 = *v25;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(v13);
              }

              if ([*(a1 + 32) containsObject:*(*(&v24 + 1) + 8 * i)])
              {
                LODWORD(v11) = 1;
                goto LABEL_15;
              }
            }

            v11 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }

LABEL_15:
          v12 = v23;
        }

        if (v11 != [v6 state])
        {
LABEL_18:
          if (!CFDictionaryGetInt64() || (v11 & 1) != 0)
          {
            [v6 setState:v11 & 1];
            v16 = [v5 unsignedLongLongValue];
            if (dword_1001D3228 <= 30)
            {
              v17 = v16;
              if (dword_1001D3228 != -1 || _LogCategory_Initialize())
              {
                v21 = v17;
                v22 = v11 & 1;
                LogPrintF();
              }
            }

            v18 = [v6 handler];
            v19 = v18;
            if (v18)
            {
              if (v11)
              {
                v20 = 6;
              }

              else
              {
                v20 = 5;
              }

              (*(v18 + 16))(v18, v20, 0, 0);
            }
          }
        }
      }
    }
  }
}

void sub_10000BAA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000BB0C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000BB44()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  v9 = v2 + 13;
  v8 = v2[13];
  v53 = enum case for DispatchPredicate.onQueue(_:);
  v8(v5);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = v2[1];
  result = v11(v5, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v8;
  v51 = v11;
  v14 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_systemMonitor;
  if (!*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_systemMonitor))
  {
    v32 = [objc_allocWithZone(CUSystemMonitor) init];
    v33 = *(v0 + v14);
    *(v0 + v14) = v32;

    v34 = *(v0 + v14);
    if (v34)
    {
      [v34 setDispatchQueue:*(v0 + v6)];
      if (*(v0 + v14))
      {
        v52 = *(v0 + v14);
        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v58 = sub_1000E9CC4;
        v59 = v35;
        aBlock = _NSConcreteStackBlock;
        v55 = 1107296256;
        v49 = &v56;
        v56 = sub_1000D36FC;
        v57 = &unk_1001B04F8;
        v36 = _Block_copy(&aBlock);
        v50 = v59;
        v37 = v52;

        [v37 setScreenOnChangedHandler:v36];
        _Block_release(v36);

        if (*(v0 + v14))
        {
          v52 = *(v0 + v14);
          v38 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v58 = sub_1000E95C8;
          v59 = v38;
          aBlock = _NSConcreteStackBlock;
          v55 = 1107296256;
          v56 = sub_1000E9CC0;
          v57 = &unk_1001B0520;
          v39 = _Block_copy(&aBlock);
          v50 = v59;
          v40 = v52;

          [v40 activateWithCompletion:v39];
          _Block_release(v39);
        }
      }
    }
  }

  v50 = v14;
  v15 = *(v0 + v6);
  *v5 = v15;
  v16 = v53;
  v17 = v13;
  v13(v5, v53, v1);
  v18 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v19 = v1;
  v20 = v1;
  v21 = v9;
  v22 = v51;
  result = v51(v5, v19);
  if ((v15 & 1) == 0)
  {
    goto LABEL_20;
  }

  v23 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_activeSenders;
  swift_beginAccess();
  v24 = v17;
  v25 = *(*(v0 + v23) + 16);
  v49 = v6;
  v26 = *(v0 + v6);
  *v5 = v26;
  v27 = v16;
  v28 = v24;
  v52 = v21;
  v24(v5, v27, v20);
  v29 = v26;
  v30 = _dispatchPreconditionTest(_:)();
  result = v22(v5, v20);
  v31 = v20;
  if (v25)
  {
    if ((v30 & 1) == 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_1000E2C78();
LABEL_13:
    v41 = v49;
    v42 = *(v49 + v0);
    *v5 = v42;
    v43 = v53;
    v28(v5, v53, v31);
    v44 = v42;
    LOBYTE(v42) = _dispatchPreconditionTest(_:)();
    result = v22(v5, v31);
    if (v42)
    {
      v45 = *(v0 + v50);
      if (v45 && [v45 screenOn])
      {
        return sub_10000C20C();
      }

      v46 = *(v41 + v0);
      *v5 = v46;
      v28(v5, v43, v31);
      v47 = v46;
      v48 = _dispatchPreconditionTest(_:)();
      result = v22(v5, v31);
      if (v48)
      {
        sub_1000E2EBC();
        sub_10000C9D8();
        return sub_1000E14CC(0);
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v30)
  {
    sub_10000C0BC();
    goto LABEL_13;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10000C05C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

_DWORD *sub_10000C094(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[22] == *(a1 + 40))
  {
    return [result _clientBLEDiscoveryDeviceFound:a2 deviceFlags:2];
  }

  return result;
}

void sub_10000C0BC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionAdvertiser;
    v10 = *(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionAdvertiser);
    if (v10)
    {
      [v10 invalidate];
      v11 = *(v0 + v9);
      *(v0 + v9) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000C20C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v8 = *(v1 + v7);
  *v6 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v3[13];
  v10(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v3[1];
  v13(v6, v2);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = *(v1 + v7);
  *v6 = v12;
  v10(v6, v9, v2);
  v14 = v12;
  v15 = _dispatchPreconditionTest(_:)();
  v13(v6, v2);
  if ((v15 & 1) == 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
LABEL_13:
    v19 = type metadata accessor for Logger();
    sub_10000BB0C(v19, qword_1001D88A0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Posting com.apple.rapport.application-service-pairing notification", v22, 2u);
    }

    result = notify_post("com.apple.rapport.application-service-pairing");
    v23 = 0;
    goto LABEL_17;
  }

  v16 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_systemMonitor);
  if (v16 && [v16 screenOn])
  {
    sub_10000C508();
  }

  else
  {
    sub_1000E2EBC();
  }

  sub_1000E304C();
  sub_1000E3228();
  if (sub_1000E3568())
  {
    sub_1000E372C();
  }

  else
  {
    sub_10000C9D8();
  }

  v17 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
  result = swift_beginAccess();
  v12 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_shouldPostPairingNotification;
  if (*(*(v1 + v17) + 16))
  {
    if (*(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_shouldPostPairingNotification) != 1)
    {
      return result;
    }

    if (qword_1001D8898 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  v23 = 1;
LABEL_17:
  *(v1 + v12) = v23;
  return result;
}

void sub_10000C508()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionDiscovery;
    if (!*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionDiscovery))
    {
      v10 = [objc_allocWithZone(SFDeviceDiscovery) init];
      [v10 setScanRate:10];
      [v10 setChangeFlags:1];
      [v10 setDiscoveryFlags:16];
      [v10 setDispatchQueue:*(v0 + v6)];
      v11 = String._bridgeToObjectiveC()();
      [v10 setPurpose:v11];

      [v10 setRssiThreshold:-80];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = sub_1000E9638;
      v27 = v12;
      aBlock = _NSConcreteStackBlock;
      v23 = 1107296256;
      v24 = sub_10000BAA4;
      v25 = &unk_1001B0548;
      v13 = _Block_copy(&aBlock);

      [v10 setDeviceFoundHandler:v13];
      _Block_release(v13);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = sub_1000E9658;
      v27 = v14;
      aBlock = _NSConcreteStackBlock;
      v23 = 1107296256;
      v24 = sub_1000E48C0;
      v25 = &unk_1001B0570;
      v15 = _Block_copy(&aBlock);

      [v10 setDeviceChangedHandler:v15];
      _Block_release(v15);
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = sub_1000E97D0;
      v27 = v16;
      aBlock = _NSConcreteStackBlock;
      v23 = 1107296256;
      v24 = sub_10000BAA4;
      v25 = &unk_1001B0598;
      v17 = _Block_copy(&aBlock);

      [v10 setDeviceLostHandler:v17];
      _Block_release(v17);
      v26 = sub_1000E4DA0;
      v27 = 0;
      aBlock = _NSConcreteStackBlock;
      v23 = 1107296256;
      v24 = sub_1000D36FC;
      v25 = &unk_1001B05C0;
      v18 = _Block_copy(&aBlock);
      [v10 setInterruptionHandler:v18];
      _Block_release(v18);
      v26 = sub_1000E4DC0;
      v27 = 0;
      aBlock = _NSConcreteStackBlock;
      v23 = 1107296256;
      v24 = sub_1000C7408;
      v25 = &unk_1001B05E8;
      v19 = _Block_copy(&aBlock);
      [v10 activateWithCompletion:v19];
      _Block_release(v19);
      v20 = *(v0 + v9);
      *(v0 + v9) = v10;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000C9D8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v7)
  {
    v10 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListenerStarted;
    if (*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListenerStarted) == 1)
    {
      v11 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListener;
      if (*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListener))
      {
        v12 = *(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListener);

        NWListener.cancel()();

        v13 = *(v0 + v11);
      }

      *(v0 + v11) = 0;

      *(v0 + v10) = 0;
      return sub_1000E0E70(0, 0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000D198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_10011C82C(v9, &a9);
}

void sub_10000D3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D514(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_unfair_lock_s *a13, uint64_t a14)
{
  a11 = v15;
  a12 = v14;
  a13 = a1;
  a14 = a3;

  sub_10011C82C(a1, &a9);
}

id sub_10000D5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10000D680(a1, a2, a3, a4, a5);
  sub_1000099AC();

  return v6;
}

id sub_10000D660(void **a1)
{
  v2 = *a1;

  return [v2 processIdentifier];
}

id sub_10000D680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(*a1 + 40);
  *a5 = v6;

  return v6;
}

id sub_10000D6B0(uint64_t a1)
{
  v2 = *(a1 + 48);

  return [v2 processIdentifier];
}

void sub_10000D76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000F224(uint64_t *a1)
{
  if (*a1 < 1)
  {
    v2 = 0;
  }

  else
  {
    v5 = a1[1];
    v6 = a1[2];
    v4 = *a1;
    NSAppendPrintF();
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10000F400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_servicesByDeviceID;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (*(v13 + 16) && (v14 = sub_1000C39E8(a2, a3), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    result = swift_endAccess();
    v18 = (v16 + 56);
    v19 = *(v16 + 16) + 1;
    while (--v19)
    {
      v20 = *(v18 - 1);
      v21 = *v18;
      if (*(v18 - 3) != a4 || *(v18 - 2) != a5)
      {
        v18 += 4;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      result = sub_1000C66E4(v20, v21);
      goto LABEL_13;
    }
  }

  else
  {
    result = swift_endAccess();
  }

  v20 = 0;
  v21 = 0xF000000000000000;
LABEL_13:
  *a6 = v20;
  a6[1] = v21;
  return result;
}

uint64_t sub_10000F500()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_10000F640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10000F880(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[53])
  {
    return [result _rangingBLEActionScannerDeviceFound:a2];
  }

  return result;
}

_DWORD *sub_10000F89C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  result = *(a1 + 32);
  if (v2 == result[58])
  {
    return [result _serverBLENeedsCLinkScannerDeviceFound:a2];
  }

  return result;
}

_DWORD *sub_10000F8BC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[30] == *(a1 + 40))
  {
    return [result _serverBLENeedsAWDLScannerDeviceFound:a2];
  }

  return result;
}

void sub_100010A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id RPErrorF()
{
  v0 = NSErrorV();

  return v0;
}

void sub_100011860(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [a3 bleDevice];
  v8 = [v7 bleDevice];

  if (v8)
  {
    [v8 lastSeen];
    if (v9 > 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [v8 lastSeen];
      if (Current - v11 > 300.0)
      {
        [*(a1 + 32) addObject:v12];
      }

      *a4 = 0;
    }
  }
}

uint64_t sub_10001266C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000126A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000126F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001272C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012764()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000127B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000127EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012824()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012874()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000128CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012904()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012950()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001298C()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000129E4()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012A24()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012A6C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012AA4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012ADC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012B68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012BA0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012BD8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012C10()
{
  v1 = type metadata accessor for LSKStatusOptions.DeviceType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100012D08()
{
  v1 = type metadata accessor for AppExtensionIdentity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100012DD4()
{
  v1 = type metadata accessor for AppExtensionIdentity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

_DWORD *sub_100012E74@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100012E90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_1000C4AA4(v0[5], v0[6]);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100012ED8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012F10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100013080(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000131B0()
{
  v1 = *(v0 + 16);

  _Block_release(*(v0 + 24));
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000131FC()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001324C()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000132B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10001337C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001343C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013488()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000134D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100013A80(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D640();
    }

    [*(a1 + 32) setIsConnected:1];
    v5 = [*(a1 + 32) framer];
    v6 = [*(a1 + 40) flowToken];
    [RPNWFramer startConnection:v5 token:v6];
  }

  else
  {
    if (dword_1001D2EF0 <= 90 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D600();
    }

    v5 = [*(a1 + 32) framer];
    v6 = [*(a1 + 40) flowToken];
    [RPNWFramer writeErrorOnFramer:v5 token:v6 error:61];
  }
}

uint64_t sub_100013BC4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setFramer:v3];
  if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
  {
    sub_10010D660();
  }

  v4 = [*(a1 + 40) flowToken];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013D40;
  v8[3] = &unk_1001AA948;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100013E20;
  v6[3] = &unk_1001AA970;
  v7 = *(a1 + 32);
  [RPNWFramer setupDaemonFramer:v3 token:v4 receiveHandler:v8 closeHandler:v6];

  return 2;
}

void sub_100013D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [NSData dataWithBytes:a2 length:a3];
  if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
  {
    sub_10010D6A0(v6, a1);
  }

  v4 = [*(a1 + 32) framer];
  v5 = [*(a1 + 40) flowToken];
  [RPNWFramer writeErrorOnFramer:v4 token:v5 error:50];
}

void sub_1000140AC(uint64_t a1)
{
  if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
  {
    sub_10010D838(a1);
  }
}

void sub_100014114(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D908(a1);
    }

    [*(a1 + 32) setPairingSession:*(a1 + 40)];
    goto LABEL_10;
  }

  if (dword_1001D2EF0 <= 90)
  {
    v6 = v3;
    if (dword_1001D2EF0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10010D898(a1);
LABEL_10:
      v4 = v6;
    }
  }
}

void sub_100014BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014BD0(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = v4;
    is_quic = nw_protocol_options_is_quic(v4);
    v5 = v7;
    if (is_quic)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v5 = v7;
    }
  }
}

Class sub_100014F00()
{
  if (qword_1001D5FF8 != -1)
  {
    sub_10010DC54();
  }

  result = objc_getClass("LSApplicationWorkspace");
  qword_1001D5FF0 = result;
  off_1001D2FD0 = sub_100014F54;
  return result;
}

void sub_100015D90(id a1)
{
  v1 = objc_alloc_init(RPCloudDaemon);
  v2 = qword_1001D6008;
  qword_1001D6008 = v1;
}

id sub_100016200(uint64_t a1)
{
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010DFE8();
  }

  v2 = *(a1 + 32);
  if (!v2[16])
  {
    v3 = objc_alloc_init(CUSystemMonitor);
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    [*(*(a1 + 32) + 128) setDispatchQueue:*(*(a1 + 32) + 136)];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100016388;
    v12[3] = &unk_1001AA970;
    v13 = *(a1 + 32);
    [*(v13 + 128) setFirstUnlockHandler:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100016390;
    v10[3] = &unk_1001AA970;
    v11 = *(a1 + 32);
    [*(v11 + 128) setPrimaryAppleIDChangedHandler:v10];
    v6 = *(a1 + 32);
    v7 = *(v6 + 128);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100016398;
    v9[3] = &unk_1001AA970;
    v9[4] = v6;
    [v7 activateWithCompletion:v9];
    v2 = *(a1 + 32);
  }

  return [v2 prefsChanged];
}

void sub_100016F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 136));
  *(*(a1 + 32) + 84) = 0;
  if (!*(*(a1 + 32) + 8))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = v3;
    obj = [v3 allValues];
    v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v29;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * i);
              v15 = [v14 senderCorrelationIdentifier];

              if (v15)
              {
                v16 = [v14 senderCorrelationIdentifier];
                if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
                {
                  v20 = *(*(a1 + 32) + 8);
                  v21 = v16;
                  v19 = *(a1 + 40);
                  LogPrintF();
                }

                v17 = *(a1 + 32);
                v18 = *(v17 + 8);
                *(v17 + 8) = v16;

                goto LABEL_21;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:

        if (*(*(a1 + 32) + 8))
        {
          break;
        }

        if (++v7 == v5)
        {
          v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v3 = v22;
    if (!*(*(a1 + 32) + 8) && dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E118();
    }
  }
}

void sub_10001769C(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  *(*(a1 + 32) + 84) = 0;
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E168();
  }

  dispatch_assert_queue_V2(*(*(a1 + 32) + 136));
  v6 = +[NSDate date];
  v7 = *(a1 + 32);
  v8 = *(v7 + 88);
  *(v7 + 88) = v6;

  if (v5)
  {
    if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E184();
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 88);
    *(v9 + 88) = 0;
  }

  else
  {
    v30 = a1;
    v11 = objc_alloc_init(NSMutableArray);
    v12 = objc_alloc_init(NSMutableDictionary);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [v33 allKeys];
    v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v34)
    {
      v32 = *v42;
      do
      {
        v13 = 0;
        do
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [v33 objectForKey:{*(*(&v41 + 1) + 8 * v13), v30}];
          v15 = [v14 endpoints];

          if (v15)
          {
            v35 = v14;
            v36 = v13;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v16 = [v14 endpoints];
            v17 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v38;
              do
              {
                v20 = 0;
                do
                {
                  if (*v38 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v37 + 1) + 8 * v20);
                  [v11 addObject:v21];
                  v22 = [v21 familyEndpointData];
                  v23 = [v22 deviceUniqueID];

                  if (v23)
                  {
                    [v12 setObject:v21 forKeyedSubscript:v23];
                  }

                  else if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
                  {
                    sub_10010E1C4();
                  }

                  v20 = v20 + 1;
                }

                while (v18 != v20);
                v24 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
                v18 = v24;
              }

              while (v24);
            }

            v14 = v35;
            v13 = v36;
          }

          else if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
          {
            sub_10010E1F8();
          }

          v13 = v13 + 1;
        }

        while (v13 != v34);
        v25 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
        v34 = v25;
      }

      while (v25);
    }

    v26 = *(v30 + 32);
    v27 = *(v26 + 48);
    *(v26 + 48) = v12;
    v28 = v12;

    v29 = +[RPDaemon sharedDaemon];

    [v29 postDaemonInfoChanges:2048];
    v5 = 0;
  }
}

const char *sub_1000183B0(int a1)
{
  if (a1 > 47)
  {
    if (a1 <= 63)
    {
      if (a1 == 48)
      {
        return "WatchIdentityRequest";
      }

      if (a1 == 49)
      {
        return "WatchIdentityResponse";
      }
    }

    else
    {
      switch(a1)
      {
        case '@':
          return "FriendIdentityRequest";
        case 'A':
          return "FriendIdentityResponse";
        case 'B':
          return "FriendIdentityUpdate";
      }
    }

    return "?";
  }

  else
  {
    result = "Invalid";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "NoOp";
        break;
      case 3:
        result = "PS_Start";
        break;
      case 4:
        result = "PS_Next";
        break;
      case 5:
        result = "PV_Start";
        break;
      case 6:
        result = "PV_Next";
        break;
      case 7:
        result = "U_OPACK";
        break;
      case 8:
        result = "E_OPACK";
        break;
      case 9:
        result = "P_OPACK";
        break;
      case 10:
        result = "PA_Req";
        break;
      case 11:
        result = "PA_Rsp";
        break;
      case 16:
        result = "SessionStartRequest";
        break;
      case 17:
        result = "SessionStartResponse";
        break;
      case 18:
        result = "SessionData";
        break;
      case 32:
        result = "FamilyIdentityRequest";
        break;
      case 33:
        result = "FamilyIdentityResponse";
        break;
      case 34:
        result = "FamilyIdentityUpdate";
        break;
      default:
        return "?";
    }
  }

  return result;
}

id sub_10001AC60(void *a1)
{
  v1 = [a1 componentsSeparatedByString:{@", "}];
  if ([v1 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v2 rangeOfString:@"iPad"];
    if (v4)
    {
      v5 = [v2 substringFromIndex:&v3[v4]];

      v6 = [v5 intValue];
      v2 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id sub_10001AD0C(void *a1)
{
  v1 = [a1 componentsSeparatedByString:{@", "}];
  if ([v1 count] < 2)
  {
    v3 = 0;
  }

  else
  {
    v2 = [v1 objectAtIndexedSubscript:1];
    if ([v2 length])
    {
      v3 = [v2 intValue];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

id sub_10001AD94(void *a1)
{
  v1 = [a1 componentsSeparatedByString:{@", "}];
  if ([v1 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v2 rangeOfString:@"AppleTV"];
    if (v4)
    {
      v5 = [v2 substringFromIndex:&v3[v4]];

      v6 = [v5 intValue];
      v2 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id RPNestedErrorF()
{
  v0 = NSErrorNestedV();

  return v0;
}

id RPVersionToSourceVersionString()
{
  SourceVersionToCString();

  return 0;
}

id sub_10001AF18(uint64_t a1, unsigned int *a2)
{
  GestaltProductTypeStringToDeviceClass();
  v3 = *a2;
  v4 = a2[2];
  v5 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v9 = *a2;
  v10 = a2[2];
  v11 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v12 = *a2;
  v13 = a2[2];
  v14 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v15 = *a2;
  v16 = a2[2];
  v17 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v18 = *a2;
  v19 = a2[2];
  v20 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v21 = *a2;
  v22 = a2[2];
  v23 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v24 = *a2;
  v25 = a2[2];
  v26 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v27 = *a2;
  v28 = a2[2];
  v29 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v30 = *a2;
  v31 = a2[2];
  v32 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v33 = *a2;
  v34 = a2[2];
  v35 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v36 = *a2;
  v37 = a2[2];
  v38 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v39 = *a2;
  v40 = a2[2];
  v41 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v42 = *a2;
  v43 = a2[2];
  v44 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v45 = *a2;
  v46 = a2[2];
  v47 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v48 = *a2;
  v49 = a2[2];
  v50 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v51 = *a2;
  v52 = a2[2];
  v53 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v54 = *a2;
  v55 = a2[2];
  v56 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v57 = *a2;
  v58 = a2[2];
  v59 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v60 = *a2;
  v61 = a2[2];
  v62 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v63 = *a2;
  v64 = a2[2];
  v65 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v66 = *a2;
  v67 = a2[2];
  v68 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v69 = *a2;
  v70 = a2[2];
  v71 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v72 = *a2;
  v73 = a2[2];
  v74 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v75 = *a2;
  v76 = a2[2];
  v77 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v78 = *a2;
  v79 = a2[2];
  v80 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v81 = *a2;
  v82 = a2[2];
  v83 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v84 = *a2;
  v85 = a2[2];
  v86 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v87 = *a2;
  v88 = a2[2];
  v89 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v90 = *a2;
  v91 = a2[2];
  v92 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v93 = *a2;
  v94 = a2[2];
  v95 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v96 = *a2;
  v97 = a2[2];
  v98 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v99 = *a2;
  v100 = a2[2];
  v101 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v102 = *a2;
  v103 = a2[2];
  v104 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v107 = *a2;
  v108 = a2[2];
  v109 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v110 = *a2;
  v111 = a2[2];
  v112 = a2[4];
  if (NADyFF4UGjtVGBmEW6h() || (v113 = *a2, v114 = a2[2], v115 = a2[4], (TN6sBSnEP2() & 1) != 0) || (v116 = *a2, v117 = a2[2], v118 = a2[4], wInTP56r94EFs9NAAi()))
  {
LABEL_35:
    v105 = RPVersionToSourceVersionString();
  }

  else
  {
    v105 = 0;
  }

  return v105;
}

void *sub_10001B924(uint64_t a1)
{
  NSAppendPrintF();
  v1 = 0;
  v2 = [v1 rangeOfString:{@":", a1}];
  v3 = 0;
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 substringWithRange:{0, v2}];
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v4;
}

void sub_10001B9C0(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = [a1 componentsSeparatedByString:@"."];
  v3 = [v8 count];
  if (v3)
  {
    v4 = v3;
    v5 = [v8 objectAtIndexedSubscript:0];
    *a2 = [v5 integerValue];

    if (v4 != 1)
    {
      v6 = [v8 objectAtIndexedSubscript:1];
      a2[1] = [v6 integerValue];

      if (v4 >= 3)
      {
        v7 = [v8 objectAtIndexedSubscript:2];
        a2[2] = [v7 integerValue];
      }
    }
  }
}

void sub_10001BAAC(id a1)
{
  if ((os_variant_has_internal_content() & 1) == 0)
  {
    byte_1001D6028 = 1;
  }

  if (CFPrefs_GetInt64())
  {
    byte_1001D6028 = 0;
  }
}

id sub_10001BB10(uint64_t a1, int a2)
{
  v3 = [NSMutableString stringWithCString:a1 encoding:4];
  v4 = v3;
  if (a2)
  {
    v5 = @"'%@'";
  }

  else
  {
    v5 = @"'%~@'";
  }

  [v3 appendString:v5];
  v6 = [v4 UTF8String];

  return v6;
}

void sub_10001BE5C(id a1)
{
  v1 = objc_alloc_init(RPCompanionLinkDaemon);
  v2 = qword_1001D6038;
  qword_1001D6038 = v1;
}

BOOL sub_10001C0A0(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 hasPrefix:@"AudioAccessory1, "]|| [(NSString *)v2 hasPrefix:@"AudioAccessory5, "]|| [(NSString *)v2 hasPrefix:@"AudioAccessory6, "])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(NSString *)v2 hasPrefix:@"HomePod"];
  }

  return v3;
}

void sub_10001C34C(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v18 = v5;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v6 = _LogCategory_Initialize(), v5 = v18, v6))
    {
      sub_10010EB20(v5);
      v5 = v18;
    }
  }

  v7 = [v5 peerIdentifier];
  if ([v7 isEqualToString:a1[4]])
  {

    v8 = v18;
  }

  else
  {
    v9 = [v18 peerDeviceInfo];
    v10 = [v9 idsDeviceIdentifier];
    v11 = [v10 isEqual:a1[5]];

    v8 = v18;
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v12 = _LogCategory_Initialize(), v8 = v18, v12))
    {
      sub_10010EBE0(v8);
      v8 = v18;
    }
  }

  v13 = [v8 peerDeviceInfo];
  v15 = a1[6];
  v14 = (a1 + 6);
  v16 = *(v15 + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v13;

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010EC3C(v14);
  }

  *a3 = 1;
  v8 = v18;
LABEL_14:
}

void sub_10001C6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C6C8(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 peerDeviceInfo];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

void sub_10001DF6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v5 = [a3 bleDevice];
  v6 = *(a1 + 40);
  v7 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v4 + 40), obj);
}

void sub_10001DFF4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = *(a1 + 56);
  v9 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v5 + 40), obj);

  v7 = ++*(*(*(a1 + 40) + 8) + 24);
  if (v7 >= 9)
  {
    v8 = *(*(a1 + 32) + 8);
    v11 = *(v8 + 40);
    v10 = *(a1 + 48) - v7;
    NSAppendPrintF();
    objc_storeStrong((v8 + 40), v11);
    *a3 = 1;
  }
}

void sub_10001E0DC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_10001E148(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_10001E1B4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_10001E220(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = *(a1 + 56);
  v10 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v6 + 40), obj);

  v8 = ++*(*(*(a1 + 40) + 8) + 24);
  if (v8 >= 0x11)
  {
    v9 = *(*(a1 + 32) + 8);
    v12 = *(v9 + 40);
    v11 = *(a1 + 48) - v8;
    NSAppendPrintF();
    objc_storeStrong((v9 + 40), v12);
    *a4 = 1;
  }
}

void sub_10001E304(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = *(a1 + 56);
  v10 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v6 + 40), obj);

  v8 = ++*(*(*(a1 + 40) + 8) + 24);
  if (v8 >= 0x11)
  {
    v9 = *(*(a1 + 32) + 8);
    v12 = *(v9 + 40);
    v11 = *(a1 + 48) - v8;
    NSAppendPrintF();
    objc_storeStrong((v9 + 40), v12);
    *a4 = 1;
  }
}

void sub_10001E3E8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = *(a1 + 56);
  v10 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v6 + 40), obj);

  v8 = ++*(*(*(a1 + 40) + 8) + 24);
  if (v8 >= 0x11)
  {
    v9 = *(*(a1 + 32) + 8);
    v12 = *(v9 + 40);
    v11 = *(a1 + 48) - v8;
    NSAppendPrintF();
    objc_storeStrong((v9 + 40), v12);
    *a4 = 1;
  }
}

void sub_10001E4CC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = *(a1 + 56);
  v10 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v6 + 40), obj);

  v8 = ++*(*(*(a1 + 40) + 8) + 24);
  if (v8 >= 0x11)
  {
    v9 = *(*(a1 + 32) + 8);
    v12 = *(v9 + 40);
    v11 = *(a1 + 48) - v8;
    NSAppendPrintF();
    objc_storeStrong((v9 + 40), v12);
    *a4 = 1;
  }
}

void sub_10001E5B0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = *(a1 + 56);
  v10 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v6 + 40), obj);

  v8 = ++*(*(*(a1 + 40) + 8) + 24);
  if (v8 >= 0x11)
  {
    v9 = *(*(a1 + 32) + 8);
    v12 = *(v9 + 40);
    v11 = *(a1 + 48) - v8;
    NSAppendPrintF();
    objc_storeStrong((v9 + 40), v12);
    *a4 = 1;
  }
}

void sub_10001E694(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_10001E700(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 event];
  v8 = [v7 objectForKeyedSubscript:@"type"];
  v9 = [v7 objectForKeyedSubscript:@"serviceType"];
  v10 = *(*(a1 + 32) + 8);
  obj = *(v10 + 40);
  [v5 state];

  NSAppendPrintF();
  objc_storeStrong((v10 + 40), obj);
}

void sub_10001E7E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v5 = a3;
  v6 = [v5 serviceType];
  v7 = [v5 peerID];
  [v5 sessionID];
  v8 = *(a1 + 40);
  [v5 startTicks];

  UpTicksToSeconds();
  NSAppendPrintF();
  objc_storeStrong((v4 + 40), obj);
}

id sub_10001E920(id result)
{
  v1 = *(result + 4);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    return [*(result + 4) _activate];
  }

  return result;
}

void *sub_10001EC0C(uint64_t a1)
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010ECA4(a1);
  }

  *(*(a1 + 32) + 608) = 0;
  result = *(a1 + 32);
  if (!result[68])
  {

    return [result _update];
  }

  return result;
}

void sub_10001EC9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1096);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ED10;
  block[3] = &unk_1001AA970;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_10001ED10(uint64_t a1)
{
  *(*(a1 + 32) + 644) = 1;
  [*(a1 + 32) _localDeviceUpdate];
  v1 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v1 updateSharedTVIdentities];
}

void sub_100020848(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 event];
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if ([v8 isEqual:@"discovery"])
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if ([v9 isEqual:@"RPUserNotificationAppSignIn"])
    {
      v13[0] = @"type";
      v13[1] = @"serviceType";
      v14[0] = v8;
      v14[1] = v9;
      v13[2] = @"deviceID";
      v14[2] = *(a1 + 32);
      v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10010F704();
      }

      v11 = [v6 handler];
      v12 = v11;
      if (v11)
      {
        (*(v11 + 16))(v11, 0, v10, 0);
      }
    }
  }
}

void sub_100020ADC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 event];
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if ([v8 isEqual:@"discovery"])
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if ([v9 isEqual:@"com.apple.CompanionAuthentication"])
    {
      v13[0] = @"type";
      v13[1] = @"serviceType";
      v14[0] = v8;
      v14[1] = v9;
      v13[2] = @"deviceID";
      v14[2] = *(a1 + 32);
      v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10010F77C();
      }

      v11 = [v6 handler];
      v12 = v11;
      if (v11)
      {
        (*(v11 + 16))(v11, 0, v10, 0);
      }
    }
  }
}

id sub_100020CA8(uint64_t a1)
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010F7F4(a1);
  }

  v2 = *(a1 + 32);

  return [v2 _update];
}

void sub_100020D48(uint64_t a1)
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010F890(a1);
  }
}

void sub_100020DA4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001D3228 <= 90)
    {
      v5 = v2;
      if (dword_1001D3228 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_10010F904();
        v3 = v5;
      }
    }
  }
}

void sub_10002120C(uint64_t a1)
{
  if (*(*(a1 + 32) + 1152))
  {
    v2 = [RBSProcessPredicate predicateMatchingIdentifiers:?];
    if (*(*(a1 + 32) + 736))
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10010FA64();
      }

      v3 = *(*(a1 + 32) + 736);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100021724;
      v11[3] = &unk_1001AB1A8;
      v4 = &v12;
      v12 = v2;
      v5 = v2;
      [v3 updateConfiguration:v11];
    }

    else
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10010FA80();
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000213B8;
      v13[3] = &unk_1001AB180;
      v4 = v14;
      v6 = *(a1 + 32);
      v14[0] = v2;
      v14[1] = v6;
      v7 = v2;
      v8 = [RBSProcessMonitor monitorWithConfiguration:v13];
      v9 = *(a1 + 32);
      v10 = *(v9 + 736);
      *(v9 + 736) = v8;
    }
  }
}

void sub_1000213B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(RBSProcessStateDescriptor);
  [v4 setValues:1];
  [v3 setStateDescriptor:v4];
  v5 = [NSArray arrayWithObject:*(a1 + 32)];
  [v3 setPredicates:v5];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000214A0;
  v6[3] = &unk_1001AB158;
  v6[4] = *(a1 + 40);
  [v3 setUpdateHandler:v6];
}

void sub_1000214A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10010FA9C(v8, v9);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 1096);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000215B8;
  block[3] = &unk_1001AB130;
  block[4] = v10;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(v11, block);
}

void sub_1000215B8(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 944);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 xpcCnx];
        v9 = [v8 processIdentifier];
        v10 = [*(a1 + 40) pid];

        if (v9 == v10)
        {
          v11 = [*(a1 + 48) state];
          v12 = [v11 taskState];

          if (v12 == 3)
          {
            v13 = [v7 xpcCnx];
            [v13 invalidate];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_100021724(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [NSArray arrayWithObject:v2];
  [v3 setPredicates:v4];
}

_DWORD *sub_10002183C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[22] == *(a1 + 40))
  {
    return [result _clientBLEDiscoveryDeviceFound:a2 deviceFlags:2];
  }

  return result;
}

uint64_t sub_100021864(uint64_t result)
{
  if (*(*(result + 32) + 88) == *(result + 40) && dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000218FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010FBC0();
    }

    [*(*(a1 + 32) + 80) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = 0;

    goto LABEL_6;
  }

  if (dword_1001D3228 <= 30)
  {
    v8 = 0;
    if (dword_1001D3228 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
    {
      sub_10010FC00();
LABEL_6:
      v4 = v8;
    }
  }
}

_DWORD *sub_100021B6C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[31] == *(a1 + 40))
  {
    return [result _clientBLEDiscoveryDeviceLost:a2 force:0 deviceFlags:1];
  }

  return result;
}

uint64_t sub_100021B98(uint64_t result)
{
  if (*(*(result + 32) + 124) == *(result + 40) && dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_100021C30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10010FD88();
    }

    [*(*(a1 + 32) + 104) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 104);
    *(v5 + 104) = 0;

    goto LABEL_6;
  }

  if (dword_1001D3228 <= 30)
  {
    v8 = 0;
    if (dword_1001D3228 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
    {
      sub_10010FDC8();
LABEL_6:
      v4 = v8;
    }
  }
}

void sub_100021FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    if (dword_1001D3228 <= 90)
    {
      if (dword_1001D3228 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        sub_10010FE28();
        v4 = v7;
      }
    }

    if (*(a1 + 40))
    {
      v6 = v4;
      v4 = v7;
      **(a1 + 40) = v7;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

id sub_100022D8C(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 704));
  v2 = *(a1 + 32);
  v3 = *(v2 + 704);
  *(v2 + 704) = 0;

  v4 = *(a1 + 32);

  return [v4 _processPendingLostBLEDevices];
}

void sub_1000239A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100110864();
    }

    [*(*(a1 + 32) + 192) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 192);
    *(v4 + 192) = 0;
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001108A4(a1);
    }

    v6 = *(*(a1 + 32) + 200);
    v7 = v6;
    if (v6)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            v13 = +[RPAssertionTracker sharedTracker];
            [v13 startTracking:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }
}

void sub_100023F04(id a1, RPAssertionInfo *a2)
{
  v2 = a2;
  v4 = +[RPMetrics sharedMetrics];
  v3 = [(RPAssertionInfo *)v2 processName];

  [v4 logNeedsAWDLAdvertisementClient:v3 actionType:51 bluetoothType:15];
}

void sub_100023F88(id a1, RPAssertionInfo *a2)
{
  v7 = a2;
  v2 = +[RPAutoBugCapture sharedReporter];
  v3 = [(RPAssertionInfo *)v7 assertionType];
  if (v3 > 7)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1001AC120[v3];
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [(RPAssertionInfo *)v7 processName];
  [v2 reportIssueOfType:1 issueContext:v5 processName:v6];
}

void sub_1000241F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[RPMetrics sharedMetrics];
  v4 = [v3 processName];

  [v5 logNeedsAWDLAdvertisementClient:v4 actionType:objc_msgSend(*(*(a1 + 32) + 176) bluetoothType:{"nearbyActionV2Type"), 21}];
}

void sub_10002428C(id a1, RPAssertionInfo *a2)
{
  v7 = a2;
  v2 = +[RPAutoBugCapture sharedReporter];
  v3 = [(RPAssertionInfo *)v7 assertionType];
  if (v3 > 7)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1001AC120[v3];
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [(RPAssertionInfo *)v7 processName];
  [v2 reportIssueOfType:1 issueContext:v5 processName:v6];
}

void sub_1000245DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    [*(v4 + 152) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 152);
    *(v5 + 152) = 0;
  }

  else
  {
    v7 = *(v4 + 160);
    v8 = v7;
    if (v7)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            v14 = +[RPAssertionTracker sharedTracker];
            [v14 startTracking:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }
}

void sub_100024C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100024C4C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    if (*(*(a1[6] + 8) + 24) != 1)
    {
      goto LABEL_11;
    }

    v10 = 0;
    v6 = *(a1[4] + 664);
    if (!v6)
    {
      v7 = +[NSMutableSet set];
      v8 = a1[4];
      v9 = *(v8 + 664);
      *(v8 + 664) = v7;

      v6 = *(a1[4] + 664);
    }

    [v6 addObject:a1[5]];
    goto LABEL_10;
  }

  if (dword_1001D3228 <= 30)
  {
    v10 = v3;
    if (dword_1001D3228 != -1 || (v5 = _LogCategory_Initialize(), v4 = v10, v5))
    {
      sub_1001109F8();
LABEL_10:
      v4 = v10;
    }
  }

LABEL_11:
}

void *sub_100024D28(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[38])
  {
    return [result _clientBonjourFoundDevice:a2 reevaluate:0];
  }

  return result;
}

void *sub_100024D44(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[38])
  {
    return [result _clientBonjourLostDevice:a2];
  }

  return result;
}

void *sub_100024D5C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[38])
  {
    return [result _clientBonjourFoundDevice:a2 reevaluate:0];
  }

  return result;
}

id sub_100025600(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v1 descriptionWithLevel:50];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v3 = v2;

  return v3;
}

void *sub_100026158(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[43])
  {
    [result _clientBonjourResetReevaluationRateLimit];
    v4 = *(a1 + 40);

    return [v4 _clientBonjourReevaluateAllDevices];
  }

  return result;
}

void *sub_10002653C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[39])
  {
    return [result _clientBonjourAWDLBrowserFoundDevice:a2];
  }

  return result;
}

void *sub_100026554(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[39])
  {
    return [result _clientBonjourAWDLBrowserLostDevice:a2];
  }

  return result;
}

void *sub_10002656C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[39])
  {
    return [result _clientBonjourAWDLBrowserFoundDevice:a2];
  }

  return result;
}

void sub_100026584(id a1, RPAssertionInfo *a2)
{
  v2 = a2;
  v4 = +[RPMetrics sharedMetrics];
  v3 = [(RPAssertionInfo *)v2 processName];

  [v4 logAWDLBrowseClient:v3];
}

void sub_100026600(id a1, RPAssertionInfo *a2)
{
  v7 = a2;
  v2 = +[RPAutoBugCapture sharedReporter];
  v3 = [(RPAssertionInfo *)v7 assertionType];
  if (v3 > 7)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1001AC120[v3];
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [(RPAssertionInfo *)v7 processName];
  [v2 reportIssueOfType:1 issueContext:v5 processName:v6];
}

id sub_100027D0C(uint64_t a1)
{
  [*(a1 + 32) _clientConnectionEnded:*(a1 + 40) uniqueID:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 _clientBonjourReevaluateAllDevices];
}

void sub_100027D4C(uint64_t a1)
{
  [*(a1 + 32) _stereoDeviceUpdate:0];
  [*(a1 + 32) _personalDeviceUpdate];
  v2 = [*(a1 + 40) peerDeviceInfo];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) _activeDeviceChanged:v2 changes:2];
    v2 = v3;
  }
}

void sub_100027E10(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) peerDeviceInfo];
  v3 = [v6 homeKitUserIdentifiers];
  v4 = [v2 _filterHomeKitUserIdentifiers:v3];
  v5 = [*(a1 + 32) peerDeviceInfo];
  [v5 setHomeKitUserIdentifiers:v4];
}

void sub_100027EA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) peerIdentifier];
  [v1 _sendProxyDeviceUpdateToPeer:v2];
}

id sub_100028B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) passwordTypeActual];

  return [v5 promptForPasswordType:v6 flags:a2 throttleSeconds:a3];
}

void sub_100028B94(uint64_t a1)
{
  [*(a1 + 32) _clientOnDemandConnectionEnded:*(a1 + 40) uniqueID:*(a1 + 48)];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 944);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 netCnx];
        v9 = v8;
        if (v8 == *(a1 + 40))
        {
        }

        else
        {
          v10 = [v7 session];
          v11 = [v10 cnx];
          v12 = *(a1 + 40);

          if (v11 != v12)
          {
            continue;
          }
        }

        [v7 handleDisconnect];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

id sub_100028D3C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    if ([*(a1 + 32) isEqualToDevice:*(*(a1 + 40) + 176)])
    {
      [*(a1 + 40) _clientBLENearbyActionV2AdvertiserRestart];
    }

    if ([*(a1 + 32) isEqualToDevice:*(*(a1 + 40) + 208)])
    {
      [*(a1 + 40) _clientBLENeedsCLinkAdvertiserRestart];
    }
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v4 _connectionStateChanged:a2 cnx:v5];
}

void sub_100028DB0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) peerDeviceInfo];
  v3 = [v6 homeKitUserIdentifiers];
  v4 = [v2 _filterHomeKitUserIdentifiers:v3];
  v5 = [*(a1 + 32) peerDeviceInfo];
  [v5 setHomeKitUserIdentifiers:v4];
}

void sub_100028E48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) peerIdentifier];
  [v1 _sendProxyDeviceUpdateToPeer:v2];
}

id sub_1000297CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) passwordTypeActual];

  return [v5 promptForPasswordType:v6 flags:a2 throttleSeconds:a3];
}

id sub_100029820(uint64_t a1)
{
  [*(a1 + 32) _clientConnectionEndedUnauth:*(a1 + 40) publicID:*(a1 + 48)];
  v2 = *(a1 + 56);

  return [v2 handleDisconnect];
}

void sub_1000298AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) peerDeviceInfo];
  v3 = [v6 homeKitUserIdentifiers];
  v4 = [v2 _filterHomeKitUserIdentifiers:v3];
  v5 = [*(a1 + 32) peerDeviceInfo];
  [v5 setHomeKitUserIdentifiers:v4];
}

void sub_100029944(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) peerIdentifier];
  [v1 _sendProxyDeviceUpdateToPeer:v2];
}

id sub_100029CBC(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 _clientOnDemandAWDLDiscoveryTimedOutForDevice:v3 xpcCnx:v4];
}

id sub_100029EDC(uint64_t a1)
{
  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011228C();
  }

  dispatch_source_cancel(*(a1 + 32));
  [*(a1 + 40) setDiscoveryTimer:0];
  [*(a1 + 40) setNeedsCLink:0];
  *(*(a1 + 48) + 440) = 0;
  v2 = *(a1 + 48);

  return [v2 _update];
}

void sub_10002AAFC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([v7 uiTriggered] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

id sub_10002AB74(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 appSignIn];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id *sub_10002ADDC(id *result, uint64_t a2, uint64_t a3)
{
  if (result[4] == *(result[5] + 112))
  {
    return [result[5] _clientUINoteAction:a2 error:a3 device:result[6]];
  }

  return result;
}

id sub_10002B27C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 1096));
  v2 = *(a1 + 32);

  return [v2 _update];
}

void *sub_10002B2BC(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    dispatch_assert_queue_V2(*(result[4] + 1096));
    v3 = v2[4];

    return [v3 _serverNearbyActionV2DiscoveryEnsureStopped];
  }

  return result;
}

void sub_10002B49C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1096);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  [*(a1 + 32) _serverNearbyInfoV2DeviceFound:v4 deviceFlags:4];
}

void sub_10002B500(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1096);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  [*(a1 + 32) _serverNearbyInfoV2DeviceLost:v4 idsIdentifier:0 force:0 deviceFlags:4];
}

void sub_10002B56C(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 1096));
  if (a2)
  {
    v4 = *(a1 + 32);

    [v4 _serverNearbyInfoV2DiscoveryEnsureStopped];
  }
}

_DWORD *sub_10002B5C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  result = *(a1 + 32);
  if (v2 == result[58])
  {
    return [result _serverBLENeedsCLinkScannerDeviceFound:a2];
  }

  return result;
}

_DWORD *sub_10002B5E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  result = *(a1 + 32);
  if (v2 == result[58])
  {
    return [result _serverBLENeedsCLinkScannerDeviceLost:a2];
  }

  return result;
}

void sub_10002B600(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112474();
    }

    [*(*(a1 + 32) + 224) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 224);
    *(v5 + 224) = 0;

    goto LABEL_6;
  }

  if (dword_1001D3228 <= 30)
  {
    v8 = 0;
    if (dword_1001D3228 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
    {
      sub_1001124B4();
LABEL_6:
      v4 = v8;
    }
  }
}

id sub_10002BCBC(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 712));
  v2 = *(a1 + 32);
  v3 = *(v2 + 712);
  *(v2 + 712) = 0;

  v4 = *(a1 + 32);

  return [v4 _processPendingLostNeedsCLinkDevices];
}

void sub_10002CF00(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 672);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 672);
    *(v4 + 672) = 0;
  }

  if (*(*(a1 + 32) + 656))
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112B2C();
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 656);
    *(v6 + 656) = 0;

    v8 = *(a1 + 32);

    [v8 _update];
  }
}

void sub_10002CFC8(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) _shouldReceiveActivityLevelOverWiFi:{objc_msgSend(v5, "deviceType")}])
  {
    v3 = *(a1 + 40);
    v4 = [v5 uniqueID];
    [v3 addObject:v4];
  }
}

void sub_10002D048(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001D3228 <= 30)
    {
      v5 = v2;
      if (dword_1001D3228 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100112BA4();
        v3 = v5;
      }
    }
  }
}

void *sub_10002D55C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[110])
  {
    return [result _serverTCPHandleConnectionStarted:a2];
  }

  return result;
}

id sub_10002D930(uint64_t a1)
{
  result = [*(a1 + 32) invalidationHandled];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _serverTCPHandleConnectionEnded:v4];
  }

  return result;
}

void sub_10002D97C(uint64_t a1)
{
  if (([*(a1 + 32) controlFlags] & 0x200) == 0)
  {
    [*(a1 + 40) _stereoDeviceUpdate:0];
    [*(a1 + 40) _personalDeviceUpdate];
    v2 = [*(a1 + 32) peerDeviceInfo];
    if (v2)
    {
      v3 = v2;
      [*(a1 + 40) _activeDeviceChanged:v2 changes:2];
      v2 = v3;
    }
  }
}

void sub_10002DA10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  [*(a1 + 40) _receivedEventID:v10 event:v9 options:v8 unauth:objc_msgSend(v7 cnx:{"flags") & 1, *(a1 + 32)}];
}

void sub_10002DAAC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  [*(a1 + 40) _receivedRequestID:v13 request:v12 options:v11 responseHandler:v10 unauth:objc_msgSend(v9 cnx:{"flags") & 1, *(a1 + 32)}];
}

id sub_10002DB5C(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) invalidationHandled];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v5 _connectionStateChanged:a2 cnx:v6];
  }

  return result;
}

void sub_10002DBB0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) peerDeviceInfo];
  v3 = [v6 homeKitUserIdentifiers];
  v4 = [v2 _filterHomeKitUserIdentifiers:v3];
  v5 = [*(a1 + 32) peerDeviceInfo];
  [v5 setHomeKitUserIdentifiers:v4];
}

void sub_10002DC48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) peerIdentifier];
  [v1 _sendProxyDeviceUpdateToPeer:v2];
}

void sub_10002DD40(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) pairVerifyAuthType] == 9)
  {
    [v3 setCopyIdentityHandler:&stru_1001AB720];
  }
}

CUPairingIdentity *__cdecl sub_10002DDA4(id a1, unint64_t a2, id *a3)
{
  v4 = a2;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100112D3C();
  }

  v5 = +[RPIdentityDaemon sharedIdentityDaemon];
  v17 = 0;
  v6 = [v5 identityOfTemporarySelfAndReturnError:&v17];
  v7 = v17;

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112D7C();
      if (a3)
      {
        goto LABEL_13;
      }
    }

    else if (a3)
    {
LABEL_13:
      v9 = v7;
      v10 = 0;
      *a3 = v7;
      goto LABEL_19;
    }

    v10 = 0;
    goto LABEL_19;
  }

  v10 = objc_alloc_init(CUPairingIdentity);
  v11 = +[RPIdentityDaemon sharedIdentityDaemon];
  v12 = [v11 adHocPairingIdentifier];
  [v10 setIdentifier:v12];

  v13 = [v6 deviceIRKData];
  [v10 setAltIRK:v13];

  v14 = [v6 edPKData];
  [v10 setPublicKey:v14];

  if ((v4 & 2) != 0)
  {
    v15 = [v6 edSKData];
    [v10 setSecretKey:v15];

    [v10 rp_setSEPPrivateKey:{objc_msgSend(v6, "sepPrivateKey")}];
  }

LABEL_19:

  return v10;
}

void sub_10002E2F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100112E50();
    }

    [*(*(a1 + 32) + 248) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 248);
    *(v5 + 248) = 0;

    goto LABEL_6;
  }

  if (dword_1001D3228 <= 30)
  {
    v8 = 0;
    if (dword_1001D3228 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
    {
      sub_100112E90(a1);
LABEL_6:
      v4 = v8;
    }
  }
}

id sub_10002E810(uint64_t a1)
{
  result = [*(a1 + 32) invalidationHandled];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _bleServerHandleConnectionEnded:v4];
  }

  return result;
}

void sub_10002E85C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  [*(a1 + 40) _receivedEventID:v10 event:v9 options:v8 unauth:objc_msgSend(v7 cnx:{"flags") & 1, *(a1 + 32)}];
}

void sub_10002E8F8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  [*(a1 + 40) _receivedRequestID:v13 request:v12 options:v11 responseHandler:v10 unauth:objc_msgSend(v9 cnx:{"flags") & 1, *(a1 + 32)}];
}

id sub_10002E9A8(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) invalidationHandled];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v5 _connectionStateChanged:a2 cnx:v6];
  }

  return result;
}

void sub_10002E9FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) peerDeviceInfo];
  v3 = [v6 homeKitUserIdentifiers];
  v4 = [v2 _filterHomeKitUserIdentifiers:v3];
  v5 = [*(a1 + 32) peerDeviceInfo];
  [v5 setHomeKitUserIdentifiers:v4];
}

void sub_10002EA94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) peerIdentifier];
  [v1 _sendProxyDeviceUpdateToPeer:v2];
}

id *sub_10002ECB0(id *result)
{
  if (result[4])
  {
    return [result[5] _btPipeHandleStateChanged:?];
  }

  return result;
}

void sub_10002ECC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*(a1 + 32))
    {
      if (dword_1001D3228 <= 90)
      {
        v6 = v3;
        if (dword_1001D3228 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
        {
          sub_100112F58();
          v4 = v6;
        }
      }
    }
  }
}

void sub_10002ED54(uint64_t a1)
{
  if ([*(*(a1 + 32) + 392) state] == 1)
  {
    v2 = [*(*(a1 + 32) + 392) peerDeviceInfo];
    if (v2)
    {
      v6 = v2;
      v3 = [v2 statusFlags];
      v4 = [*(*(a1 + 32) + 384) peerHostState] == 1;
      v2 = v6;
      v5 = v4;
      if ((v3 & 0xFFFFFFFFFFFFFFDFLL | (32 * v5)) != v3)
      {
        [v6 setStatusFlags:?];
        [*(a1 + 32) _activeDeviceChanged:v6 changes:2];
        v2 = v6;
      }
    }
  }
}

void sub_10002F448(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    v4 = GestaltGetDeviceClass() == 6;
    v3 = v5;
    if (v4)
    {
      [*(a1 + 32) _btPipeSyncKeysIfNeeded];
      v3 = v5;
    }
  }
}

void sub_10002F4A8(uint64_t a1)
{
  v2 = [*(a1 + 32) peerDeviceInfo];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) _activeDeviceChanged:v2 changes:2];
    v2 = v3;
  }
}

void sub_10002F53C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) peerDeviceInfo];
  v3 = [v6 homeKitUserIdentifiers];
  v4 = [v2 _filterHomeKitUserIdentifiers:v3];
  v5 = [*(a1 + 32) peerDeviceInfo];
  [v5 setHomeKitUserIdentifiers:v4];
}

void sub_10002F5D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) peerIdentifier];
  [v1 _sendProxyDeviceUpdateToPeer:v2];
}

void sub_10002FC74(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = v7;
  v9 = (a1 + 32);
  if (*(a1 + 32) != v7)
  {
    v10 = [v7 peerDeviceInfo];
    v11 = [v10 idsDeviceIdentifier];
    v12 = [v11 isEqual:*(a1 + 40)];

    if (v12)
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100113260(v9);
      }

      v13 = *v9;
      v14 = RPErrorF();
      [v13 invalidateWithError:v14];

      *a4 = 1;
    }
  }
}

void sub_10003048C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) showPasswordHandler];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v7);
  }
}

void sub_100030504(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) hidePasswordHandler];
  if (v3)
  {
    v4 = v3;
    v3[2](v3, a2);
    v3 = v4;
  }
}

void sub_10003109C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identityResolved];
  if ([v4 type] == 9)
  {
    v5 = [v4 identifier];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) identifier];
          v12 = [v11 isEqual:v5];

          if (v12)
          {

            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011353C();
    }

    [v3 invalidate];
LABEL_15:
  }
}

void sub_100031434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identityVerified];
  if ([v4 type] == 8)
  {
    v5 = [v4 identifier];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) identifier];
          v12 = [v11 isEqual:v5];

          if (v12)
          {

            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001135D4();
    }

    [v3 invalidate];
LABEL_15:
  }
}

void sub_1000319C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000319D8(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = [v6 linkType];
  v8 = *(a1 + 56);
  if (((v8 & 0x400000) == 0 || v7 != 4) && ((v8 & 0x200000) == 0 || (v7 & 0xFFFFFFFE) != 6) && (((v8 & 0x200000) == 0 || (*(*(a1 + 32) + 993) & 1) == 0) && ((v8 >> 42) & 1) == 0 || v7 != 8) && ((v8 & 0x10000000) == 0 || v7 == 10) && ((v8 & 0x20000000000) == 0 || v7 != 1))
  {
    v9 = [v6 peerDeviceInfo];
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = [v6 peerIdentifier];
    v11 = [v10 isEqual:*(a1 + 40)];

    if (v11)
    {
      goto LABEL_17;
    }

    v12 = [v9 identifier];
    v13 = [v12 isEqual:*(a1 + 40)];

    if (v13 & 1) != 0 || ([v9 idsDeviceIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqual:", *(a1 + 40)), v14, (v15))
    {
LABEL_17:
      v16 = 1;
    }

    else
    {
LABEL_18:
      v17 = [v6 identityVerified];
      v18 = [v17 idsDeviceID];
      v16 = [v18 isEqual:*(a1 + 40)];
    }

    if ((*(a1 + 60) & 4) != 0)
    {
      v19 = [v6 proxyDevices];

      if (!v19)
      {
        if (!v16)
        {
LABEL_37:

          goto LABEL_38;
        }

LABEL_34:
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9);
        v27 = *(a1 + 64);
        if (v27)
        {
          objc_storeStrong(v27, a2);
        }

        *a3 = 1;
        goto LABEL_37;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = [v6 proxyDevices];
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v21)
      {
        v22 = v21;
        v28 = v9;
        v23 = *v30;
        while (2)
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [*(*(&v29 + 1) + 8 * i) identifier];
            v26 = [v25 isEqual:*(a1 + 40)];

            if (v26)
            {

              v9 = v28;
              goto LABEL_34;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }

        v9 = v28;
        goto LABEL_37;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

LABEL_38:
}

void sub_100031DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100031DD0(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 peerDeviceInfo];
  v7 = [v6 idsDeviceIdentifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8 && [v9 linkType] == 6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_1000321C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000321E0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 peerDeviceInfo];
  if (v5)
  {
    obj = v5;
    v6 = [v5 publicIdentifier];
    v7 = [v6 isEqual:*(a1 + 32)];

    v5 = obj;
    if (v7)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
      v5 = obj;
      *a3 = 1;
    }
  }
}

uint64_t sub_100032624(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_100032680(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1000326DC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

void sub_1000327F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _destinationID:*(a1 + 40) matchesCnx:?])
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100032944(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 peerDeviceInfo];
  v4 = [v3 identifier];

  v5 = [v8 peerDeviceInfo];
  v6 = [v5 idsDeviceIdentifier];

  if (!(v4 | v6))
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001136A4();
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = [*(a1 + 32) containsObject:v4];
  if (v6)
  {
LABEL_8:
    v7 |= [*(a1 + 32) containsObject:v6];
  }

LABEL_9:
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  if ((v7 & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_15:
}

void sub_100032AE4(id a1, RPAssertionInfo *a2)
{
  v2 = a2;
  v4 = +[RPMetrics sharedMetrics];
  v3 = [(RPAssertionInfo *)v2 processName];

  [v4 logAWDLBrowseClient:v3];
}

void sub_100032B60(id a1, RPAssertionInfo *a2)
{
  v7 = a2;
  v2 = +[RPAutoBugCapture sharedReporter];
  v3 = [(RPAssertionInfo *)v7 assertionType];
  if (v3 > 7)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1001AC120[v3];
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [(RPAssertionInfo *)v7 processName];
  [v2 reportIssueOfType:1 issueContext:v5 processName:v6];
}

void sub_100033880(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 server];
  v6 = [v4 serviceType];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

void sub_100033C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(a1 + 32) + 641) = 0;
  if (a2 && !a3)
  {
    v4 = MRPairedDeviceCopyIdentifier();
    v5 = v4;
    if (!v4)
    {
      if (dword_1001D3228 > 90 || (v14 = 0, dword_1001D3228 == -1) && (v11 = _LogCategory_Initialize(), v5 = 0, !v11))
      {
LABEL_26:

        return;
      }

      sub_100113B3C();
LABEL_25:
      v5 = v14;
      goto LABEL_26;
    }

    v14 = v4;
    v6 = [*(*(a1 + 32) + 1104) mediaRemoteIdentifier];
    v7 = v14;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v8)
      {
        v10 = [v7 isEqual:v8];

        if (v10)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v12 = v9;
        v13 = v7;
        LogPrintF();
      }

      [*(*(a1 + 32) + 1104) setMediaRemoteIdentifier:{v7, v12, v13}];
      [*(*(a1 + 32) + 1104) setChanged:1];
      [*(a1 + 32) _update];
      v7 = +[RPDaemon sharedDaemon];
      [v7 postDaemonInfoChanges:0x20000];
    }

LABEL_24:
    goto LABEL_25;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113B58();
  }
}

void sub_100033F1C(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  [*(a1 + 32) invalidate];
  *(*(a1 + 40) + 642) = 0;
  if (v15 && !v5)
  {
    v6 = [*(*(a1 + 40) + 1104) mediaRouteIdentifier];
    v7 = [v15 identifier];
    v8 = [v7 UUIDString];

    if (v8)
    {
      v9 = v8;
      v10 = v6;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        if (v10)
        {
          v12 = [v9 isEqual:v10];

          if (v12)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }

        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          v13 = v11;
          v14 = v9;
          LogPrintF();
        }

        [*(*(a1 + 40) + 1104) setMediaRouteIdentifier:{v9, v13, v14}];
        [*(*(a1 + 40) + 1104) setChanged:1];
        [*(a1 + 40) _update];
        v9 = +[RPDaemon sharedDaemon];
        [v9 postDaemonInfoChanges:0x20000];
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113B98();
  }

LABEL_21:
}

void sub_100034458(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = objc_alloc(off_1001D32B0());
    v3 = *(a1 + 32);
    v17 = 0;
    v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v17];
    v5 = v17;
    if (v4)
    {
      v6 = [v4 supportsMultiwindow];
    }

    else
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v14 = *(a1 + 32);
        LogPrintF();
      }

      v6 = 0;
    }

    v8 = off_1001D32B8();
    v18[0] = v8;
    v19[0] = &__kCFBooleanTrue;
    v9 = off_1001D32C0();
    v18[1] = v9;
    v10 = [NSNumber numberWithBool:v6];
    v19[1] = v10;
    v7 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v7 = 0;
  }

  v11 = [(objc_class *)off_1001D32C8() optionsWithDictionary:v7];
  v12 = [(objc_class *)off_1001D32D0() serviceWithDefaultShellEndpoint];
  v13 = *(a1 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000346B8;
  v15[3] = &unk_1001ABA30;
  v15[4] = v13;
  v16 = *(a1 + 40);
  [v12 openApplication:v13 withOptions:v11 completion:v15];
}

void sub_1000346B8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v6 = *(a1 + 32);
      LogPrintF();
    }
  }

  else if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100113C4C(a1);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), &__NSDictionary0__struct);
}

void sub_1000347D8(uint64_t a1)
{
  v2 = [(objc_class *)off_1001D32D8() defaultWorkspace];
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v2 openURL:v3 withOptions:&__NSDictionary0__struct error:&v9];
  v5 = v9;

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v8 = *(a1 + 32);
      LogPrintF();
    }

    v6 = *(a1 + 40);
    v7 = RPNestedErrorF();
    (*(v6 + 16))(v6, 0, 0, v7);
  }
}

id sub_100034A90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  (*(v4 + 16))(v4, v5, 0, a2);
  v6 = *(a1 + 32);

  return [v6 invalidate];
}

id sub_100034CDC(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 809) == 1)
  {
    *(v1 + 808) = *(result + 40);
    return [*(result + 4) _stereoDeviceUpdate:0];
  }

  return result;
}

_BYTE *sub_100034D04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[640] == 1)
  {
    return [result _serverBonjourUpdateTXT];
  }

  return result;
}

void sub_100034E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100034EB4(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 statusFlags] & 0x80000) != 0 && (objc_msgSend(v7, "controlFlags") & 0x200) == 0)
  {
    v4 = [v7 peerDeviceInfo];
    v5 = [v4 idsDeviceIdentifier];
    if ([v5 isEqual:*(a1 + 32)])
    {
      if (([v4 isPersonal] & 1) == 0)
      {
        [v4 setPersonal:1];
LABEL_8:
        [v4 setStatusFlags:{objc_msgSend(v4, "statusFlags") | 0x80}];
        [*(a1 + 40) _activeDeviceChanged:v4 changes:2];
      }
    }

    else
    {
      v6 = [v4 statusFlags] & 0x10000080000;
      if ([v4 isPersonal] != (v6 == 0x10000080000))
      {
        [v4 setPersonal:v6 == 0x10000080000];
        if (v6 != 0x10000080000)
        {
          [v4 setStatusFlags:{objc_msgSend(v4, "statusFlags") & 0xFFFFFFFFFFFFFF7FLL}];
          [*(a1 + 40) _activeDeviceChanged:v4 changes:2];
          goto LABEL_11;
        }

        goto LABEL_8;
      }

      if (v6 != 0x10000080000)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    goto LABEL_11;
  }

LABEL_12:
}

void sub_100035B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_100035BC8(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([v9 statusFlags] & 0x80000) != 0 && (objc_msgSend(v9, "controlFlags") & 0x200) == 0 && objc_msgSend(v9, "state") == 1)
  {
    v4 = [v9 peerDeviceInfo];
    if ([v4 mediaSystemRole] == *(a1 + 56))
    {
      v5 = [v4 mediaSystemIdentifier];
      v6 = [v5 isEqual:*(a1 + 32)];

      if (v6)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        v7 = [v9 peerIdentifier];
        v8 = v7;
        if (v7 && *(*(*(a1 + 48) + 8) + 40) && ([v7 caseInsensitiveCompare:?] & 0x8000000000000000) != 0)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
        }
      }
    }
  }
}

void sub_100035E44(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 552) resolvableAccessories];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1096);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100035EDC;
  v5[3] = &unk_1001AB488;
  v5[4] = v3;
  v5[5] = v2;
  dispatch_async(v4, v5);
}

void *sub_100035EDC(void *result)
{
  if (*(result[4] + 552))
  {
    v1 = result;
    v2 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v2 resolvableAccessoriesUpdated:v1[5]];

    v3 = v1[4];

    return [v3 _clientBonjourReevaluateUnauthDevices];
  }

  return result;
}

void sub_100035F40(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 552) selfAccessoryMediaAccessFlags];
  v3 = [*(*(a1 + 32) + 552) selfAccessoryMediaAccessPassword];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1096);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035FF4;
  block[3] = &unk_1001ABB20;
  v7 = v2;
  block[4] = v4;
  block[5] = v3;
  dispatch_async(v5, block);
}

void *sub_100035FF4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[69])
  {
    return [result _homeKitSelfAccessoryMediaAccessUpdated:*(a1 + 48) password:*(a1 + 40)];
  }

  return result;
}

void sub_100036014(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 552) selfAccessoryMediaSystem];
  v3 = [*(*(a1 + 32) + 552) selfAccessoryMediaSystemRole];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1096);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000360D0;
  block[3] = &unk_1001AB130;
  block[4] = v4;
  block[5] = v2;
  block[6] = v3;
  dispatch_async(v5, block);
}

id sub_1000360D0(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 552))
  {
    v2 = result;
    objc_storeStrong((v1 + 592), *(result + 5));
    objc_storeStrong((*(v2 + 4) + 600), *(v2 + 6));
    v3 = *(v2 + 4);

    return [v3 _homeKitSelfAccessoryMediaSystemUpdated:0];
  }

  return result;
}

void sub_100036134(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 552) selfAccessory];
  v3 = [*(*(a1 + 32) + 552) selfAccessorySiriEnabled];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1096);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000361E0;
  block[3] = &unk_1001ABB48;
  block[4] = v4;
  block[5] = v2;
  v7 = v3;
  dispatch_async(v5, block);
}

id sub_1000361E0(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 552))
  {
    v2 = result;
    objc_storeStrong((v1 + 576), *(result + 5));
    *(v2[4] + 584) = *(v2 + 48);
    v3 = v2[4];

    return [v3 _homeKitSelfAccessoryUpdated];
  }

  return result;
}

void sub_10003623C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 552) selfAccessorySiriEnabled];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1096);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000362D0;
  v5[3] = &unk_1001ABAD0;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

id sub_1000362D0(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 552))
  {
    *(v1 + 584) = *(result + 40);
    return [*(result + 4) _homeKitSelfAccessoryUpdated];
  }

  return result;
}

void sub_1000362F0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1096);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100036368;
  v4[3] = &unk_1001AB2A0;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

void *sub_100036368(void *result)
{
  v1 = result[4];
  if (*(v1 + 552))
  {
    v2 = result;
    *(v1 + 560) = *(result + 10);
    result = result[4];
    if (*(result + 140) == 1)
    {
      if ((result[66] & 1) == 0 && (*(result + 529) & 1) == 0)
      {
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100113E10();
        }

        *(v2[4] + 528) = 1;
        result = v2[4];
      }

      return [result _homeKitEnsureStarted];
    }
  }

  return result;
}

void sub_100036620(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1096);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000366E8;
  block[3] = &unk_1001AB130;
  block[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

id sub_1000366E8(id result)
{
  *(*(result + 4) + 529) = 0;
  if (*(*(result + 4) + 552))
  {
    return [*(result + 4) _homeKitIdentityUpdated:*(result + 5) error:*(result + 6)];
  }

  return result;
}

void sub_100036DB4(id a1, RPConnection *a2, BOOL *a3)
{
  v3 = a2;
  if (([(RPConnection *)v3 controlFlags]& 0x200) == 0)
  {
    [(RPConnection *)v3 homeKitIdentityUpdated];
  }
}

void sub_1000383C8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001D3228 <= 90)
    {
      v5 = v2;
      if (dword_1001D3228 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_10011437C();
        v3 = v5;
      }
    }
  }
}

void sub_1000385A8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001D3228 <= 90)
    {
      v5 = v2;
      if (dword_1001D3228 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_10011441C();
        v3 = v5;
      }
    }
  }
}

void sub_100039130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

void sub_10003916C(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  dispatch_group_enter(*(a1 + 32));
  [v3 canDecode128bit];
  v4 = *(a1 + 40);
  Data = OPACKEncoderCreateData();
  if (!Data)
  {
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v6 = RPErrorF();
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    dispatch_group_leave(*(a1 + 32));
  }

  v9 = *(a1 + 80);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003929C;
  v13[3] = &unk_1001ABC20;
  v12 = *(a1 + 64);
  v13[4] = *(a1 + 32);
  v13[5] = v12;
  [v3 sendEncryptedEventID:v10 data:Data xid:v9 options:v11 completion:v13];
  ++*(*(*(a1 + 72) + 8) + 24);
}

void sub_10003929C(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100039308(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  dispatch_group_enter(*(a1 + 32));
  [v3 canDecode128bit];
  v4 = *(a1 + 40);
  Data = OPACKEncoderCreateData();
  if (!Data)
  {
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v6 = RPErrorF();
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    dispatch_group_leave(*(a1 + 32));
  }

  v9 = *(a1 + 80);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100039438;
  v13[3] = &unk_1001ABC20;
  v12 = *(a1 + 64);
  v13[4] = *(a1 + 32);
  v13[5] = v12;
  [v3 sendEncryptedEventID:v10 data:Data xid:v9 options:v11 completion:v13];
  ++*(*(*(a1 + 72) + 8) + 24);
}

void sub_100039438(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_1000394A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_10003A158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10003A170(void *result, void *a2, _BYTE *a3)
{
  v3 = *(result[8] + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    result = [a2 sendEncryptedRequestID:result[4] request:result[5] xpcID:*(result + 18) options:result[6] responseHandler:result[7]];
    *a3 = 1;
  }

  return result;
}

void sub_10003B994(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001D3228 <= 90)
    {
      v5 = v2;
      if (dword_1001D3228 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100114964();
        v3 = v5;
      }
    }
  }
}

void sub_10003C1B0(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v4 = [*(*(a1 + 40) + 616) objectForKeyedSubscript:*(a1 + 48)];
  [v4 setTimer:0];
  [*(*(a1 + 40) + 616) setObject:0 forKeyedSubscript:*(a1 + 48)];
  mach_absolute_time();
  [v4 sendTicks];
  UpTicksToSecondsF();
  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100114B78(v4);
  }

  v2 = [v4 responseHandler];
  v3 = RPErrorF();
  (v2)[2](v2, 0, 0, v3);
}

void sub_10003C800(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(*(a1 + 32) + 616) objectForKeyedSubscript:*(a1 + 40)];
  if (v8)
  {
    [*(*(a1 + 32) + 616) setObject:0 forKeyedSubscript:*(a1 + 40)];
    v9 = [v8 timer];
    [v8 setTimer:0];
    if (v9)
    {
      dispatch_source_cancel(v9);
    }

    v10 = [v8 responseHandler];
    if (v7)
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100114C28(a1);
      }

      (v10)[2](v10, 0, 0, v7);
    }

    else
    {
      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100114CA0((a1 + 40));
      }

      v14[0] = @"dlt";
      v14[1] = @"senderID";
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v15[0] = &off_1001B7D80;
      v15[1] = v11;
      v14[2] = @"xid";
      v15[2] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
      (v10)[2](v10, v6, v13, 0);
    }
  }

  else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100114CE8(a1 + 40);
  }
}

void sub_10003CF58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100114D3C(a1);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    Int64 = CFDictionaryGetInt64();
    if (Int64)
    {
      v11 = *(a1 + 88) | (Int64 << 32);
      v12 = [NSNumber numberWithUnsignedLongLong:v11];
      v13 = [*(a1 + 64) peerIdentifier];
      [*(a1 + 56) setPeerID:v13];

      [*(a1 + 56) setSessionID:v11];
      v14 = [*(*(a1 + 72) + 720) objectForKey:*(a1 + 48)];
      if (v14)
      {
        v15 = v14;
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          v29 = v11;
          v30 = *(a1 + 48);
          v25 = *(a1 + 32);
          v27 = *(a1 + 40);
          LogPrintF();
        }

        [*(*(a1 + 72) + 720) removeObjectForKey:{*(a1 + 48), v25, v27, v29, v30}];
        [*(a1 + 72) sessionStopSend:*(a1 + 64) session:*(a1 + 56) xpcID:*(a1 + 96) completion:v15];
        v24 = RPErrorF();
        (*(*(a1 + 80) + 16))();
      }

      else
      {
        v18 = *(*(a1 + 72) + 1128);
        if (!v18)
        {
          v19 = objc_alloc_init(NSMutableDictionary);
          v20 = *(a1 + 72);
          v21 = *(v20 + 1128);
          *(v20 + 1128) = v19;

          v18 = *(*(a1 + 72) + 1128);
        }

        [v18 setObject:*(a1 + 56) forKeyedSubscript:v12];
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          v31 = *(a1 + 48);
          v26 = *(a1 + 32);
          v28 = *(a1 + 40);
          LogPrintF();
        }

        (*(*(a1 + 80) + 16))(*(a1 + 80), 0, v22, v23);
      }
    }

    else
    {
      v12 = RPErrorF();
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_100114D84(a1);
      }

      (*(*(a1 + 80) + 16))(*(a1 + 80), v12, v16, v17);
    }
  }
}

void sub_10003D618(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100114DCC(a1);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10003DE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a52, 8);
  (*(a15 + 16))();
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003DF24(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1001D3228 <= 90)
  {
    if (dword_1001D3228 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

void sub_10003DFF4(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [v10 server];
  v8 = [v7 serviceType];
  v9 = [v8 isEqual:a1[4]];

  if (v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    objc_storeStrong((*(a1[6] + 8) + 40), v7);
    *a4 = 1;
  }
}

void sub_10003E0B0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1[7];
    v5 = RPNestedErrorF();
    (*(v4 + 16))(v4, 0, 0, v5);

    [*(a1[4] + 1128) setObject:0 forKeyedSubscript:a1[5]];
    v6 = a1[6];

    [v6 invalidate];
  }

  else
  {
    v9 = @"_sid";
    v7 = [NSNumber numberWithUnsignedLongLong:a1[8]];
    v10 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

    (*(a1[7] + 16))();
  }
}

void sub_10003E634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  (*(v14 + 16))(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003E678(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1001D3228 <= 90)
  {
    if (dword_1001D3228 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

void sub_10003EAB4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if (v4)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v11 = v3;
    v6 = [v3 session];
    v7 = [v6 cnx];
    v8 = v7;
    if (v7 == a1[5])
    {

      v3 = v11;
    }

    else
    {
      v9 = [v11 netCnx];
      v10 = a1[5];

      v3 = v11;
      if (v9 != v10)
      {
        goto LABEL_10;
      }
    }

    ++*(*(a1[6] + 8) + 24);
  }

LABEL_10:
}

void sub_10003EB88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 cnx];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void sub_100040114(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5 && dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v3 = *(a1 + 32);
    v4 = v5;
    LogPrintF();
  }

  [*(a1 + 40) connectionInvalidatedCore];
}

void sub_100040438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040450(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([*(a1 + 32) _connectionHasActiveSessions:v5] & 1) == 0 && (objc_msgSend(v5, "controlFlags") & 0x200) != 0)
  {
    v6 = [v5 client];
    if (!v6 || (v7 = v6, [v5 client], v8 = objc_claimAutoreleasedReturnValue(), v9 = *(*(a1 + 32) + 48), v8, v7, v8 == v9))
    {
      [v5 invalidate];
      [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
    }
  }
}

void sub_100040528(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(a1 + 32) + 104) identifier];
  if (v3)
  {
    v4 = v3;
    v5 = v7;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 48) destinationDevice];
    v4 = [v6 identifier];

    v5 = v7;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  [*(*(a1 + 32) + 96) interestDeregisterEventID:v5 peerIdentifier:v4 owner:?];

  v5 = v7;
LABEL_5:
}

void sub_1000405D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1001D3228 <= 30)
  {
    v5 = v2;
    if (dword_1001D3228 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1001150C8();
      v3 = v5;
    }
  }
}

void sub_100040CA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) launchInstanceID];
  LODWORD(v4) = [v4 shouldReportDevice:v6 toXPCConnectionWithLaunchInstanceID:v5 outReason:0];

  if (v4)
  {
    [*(a1 + 48) addObject:v6];
  }
}

void sub_100040D28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) launchInstanceID];
  LODWORD(v4) = [v4 shouldReportDevice:v6 toXPCConnectionWithLaunchInstanceID:v5 outReason:0];

  if (v4)
  {
    [*(a1 + 48) addObject:v6];
  }
}

void sub_100040DB0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) launchInstanceID];
  LODWORD(v4) = [v4 shouldReportDevice:v6 toXPCConnectionWithLaunchInstanceID:v5 outReason:0];

  if (v4)
  {
    [*(a1 + 48) addObject:v6];
  }
}

void sub_100040E38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) launchInstanceID];
  LODWORD(v4) = [v4 shouldReportDevice:v6 toXPCConnectionWithLaunchInstanceID:v5 outReason:0];

  if (v4)
  {
    [*(a1 + 48) addObject:v6];
  }
}

void sub_100040EC0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) launchInstanceID];
  LODWORD(v4) = [v4 shouldReportDevice:v6 toXPCConnectionWithLaunchInstanceID:v5 outReason:0];

  if (v4)
  {
    [*(a1 + 48) addObject:v6];
  }
}

void sub_100040F48(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) launchInstanceID];
  LODWORD(v4) = [v4 shouldReportDevice:v6 toXPCConnectionWithLaunchInstanceID:v5 outReason:0];

  if (v4)
  {
    [*(a1 + 48) addObject:v6];
  }
}

void sub_1000414E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a2;
  v10 = [v7 _updateOptionsWithProcessInfo:a3];
  (*(*(a1 + 40) + 16))();
}

void sub_100042B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  (*(a13 + 16))();
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100042BCC(uint64_t result)
{
  v1 = result + 56;
  if (*(*(*(result + 56) + 8) + 40))
  {
    v2 = result;
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001151B4(v2, v1);
    }

    result = *(v2 + 48);
    if (result)
    {
      v3 = *(*(*v1 + 8) + 40);
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

void sub_100042C78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [*(*(a1 + 32) + 184) cnx];
    v5 = [v4 statusFlags];

    v6 = [*(a1 + 40) flags];
    if ((v5 & 0x70000AE000) == 0 && (v6 & 1) == 0)
    {
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v10 = *(a1 + 48);
        LogPrintF();
      }

      v3 = RPErrorF();
    }

    else
    {
      v3 = 0;
    }
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    if (v3)
    {
      v9 = 0;
    }

    else
    {
      v9 = &__NSArray0__struct;
    }

    v11 = v3;
    (*(v8 + 16))(v8, v9);
    v3 = v11;
  }
}

void sub_100043E38(void *a1, void *a2, void *a3, void *a4)
{
  v20 = a2;
  v7 = a3;
  v8 = a4;
  v9 = NSDictionaryGetNSNumber();
  v10 = v9;
  if (v9)
  {
    v11 = [v9 unsignedLongLongValue];
    if (v11 >> 23)
    {
      v12 = v11;
      v13 = sub_10001B924([*(a1[4] + 200) processIdentifier]);
      v14 = [NSString stringWithFormat:@"len:%zu, check:%d", v12, 0x7FFFFFLL];
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v18 = a1[5];
        v19 = v13;
        v17 = v12;
        LogPrintF();
      }

      v15 = [RPAutoBugCapture sharedReporter:v17];
      [v15 reportIssueOfType:4 issueContext:@"receivedResponse" processName:v13 triggerThresholdValues:v14];
    }
  }

  v16 = a1[6];
  if (v16)
  {
    (*(v16 + 16))(v16, v20, v7, v8);
  }
}

void sub_100044864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  (*(a12 + 16))();
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000448C8(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1001D3228 <= 90)
  {
    if (dword_1001D3228 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

void sub_100044990(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 200);
  v5 = a3;
  v6 = [v4 remoteObjectProxy];
  [v6 xpcServerShowPassword:v5 flags:a2];
}

void sub_100044A04(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 200) remoteObjectProxy];
  [v3 xpcServerHidePassword:a2];
}

Class sub_100044F9C()
{
  if (qword_1001D6060 != -1)
  {
    sub_10011562C();
  }

  result = objc_getClass("SFDeviceDiscovery");
  qword_1001D6058 = result;
  off_1001D3298 = sub_100044FF0;
  return result;
}

Class sub_100045028()
{
  if (qword_1001D6060 != -1)
  {
    sub_10011562C();
  }

  result = objc_getClass("SFService");
  qword_1001D6070 = result;
  off_1001D32A0 = sub_10004507C;
  return result;
}

Class sub_100045088()
{
  if (qword_1001D6060 != -1)
  {
    sub_10011562C();
  }

  result = objc_getClass("SFClient");
  qword_1001D6078 = result;
  off_1001D32A8 = sub_1000450DC;
  return result;
}

Class sub_1000450E8()
{
  if (qword_1001D6088 != -1)
  {
    sub_100115640();
  }

  result = objc_getClass("LSApplicationRecord");
  qword_1001D6080 = result;
  off_1001D32B0 = sub_10004513C;
  return result;
}

id sub_100045174()
{
  if (qword_1001D6098 != -1)
  {
    sub_100115654();
  }

  v1 = qword_1001D6048;

  return v1;
}

void sub_1000451B8(id a1)
{
  if (qword_1001D60A0 != -1)
  {
    sub_100115668();
  }

  v1 = dlsym(qword_1001D60A8, "FBSOpenApplicationOptionKeyActivateSuspended");
  if (v1)
  {
    objc_storeStrong(&qword_1001D6048, *v1);
  }

  off_1001D32B8 = sub_100045220;
}

id sub_100045258()
{
  if (qword_1001D60B0 != -1)
  {
    sub_10011567C();
  }

  v1 = qword_1001D6050;

  return v1;
}

void sub_10004529C(id a1)
{
  if (qword_1001D60B8 != -1)
  {
    sub_100115690();
  }

  v1 = dlsym(qword_1001D60C0, "SBSOpenApplicationOptionKeyLaunchSceneless");
  if (v1)
  {
    objc_storeStrong(&qword_1001D6050, *v1);
  }

  off_1001D32C0 = sub_100045304;
}

Class sub_10004533C()
{
  if (qword_1001D60A0 != -1)
  {
    sub_100115668();
  }

  result = objc_getClass("FBSOpenApplicationOptions");
  qword_1001D60C8 = result;
  off_1001D32C8 = sub_100045390;
  return result;
}

Class sub_10004539C()
{
  if (qword_1001D60A0 != -1)
  {
    sub_100115668();
  }

  result = objc_getClass("FBSOpenApplicationService");
  qword_1001D60D0 = result;
  off_1001D32D0 = sub_1000453F0;
  return result;
}

Class sub_1000453FC()
{
  if (qword_1001D60E0 != -1)
  {
    sub_1001156A4();
  }

  result = objc_getClass("LSApplicationWorkspace");
  qword_1001D60D8 = result;
  off_1001D32D8 = sub_100045450;
  return result;
}

void sub_100045654(uint64_t a1)
{
  v2 = (a1 + 32);
  nw_framer_write_output(*(a1 + 32), (a1 + 48), 0x10uLL);
  if (*(a1 + 68))
  {
    if (dword_1001D3460 > 30 || dword_1001D3460 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    sub_100115740(a1, (a1 + 68), v2, &v4);
  }

  else
  {
    if (dword_1001D3460 > 30 || dword_1001D3460 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    sub_100115828(a1, v2, &v4);
  }

  v3 = v4;
}

void sub_100045840(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = [*(a1 + 32) bytes];
  v4[0] = 0;
  v4[1] = v2;
  nw_framer_write_output(*(a1 + 40), v4, 0x10uLL);
  if (dword_1001D3460 <= 30 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
  {
    sub_100115930();
  }

  nw_framer_write_output(*(a1 + 40), v3, v2);
  if (dword_1001D3460 <= 30 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
  {
    sub_100115974();
  }
}

void sub_100045C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100045C40(uint64_t a1, void *a2)
{
  v6 = a2;
  while (1)
  {
    do
    {
      v7 = *(a1 + 64);
      if (*(*(v7 + 8) + 24))
      {
        break;
      }

      v27 = 0;
      v28 = &v27;
      v29 = 0x3010000000;
      v30 = &unk_10017AC26;
      v31 = 0;
      v32 = 0;
      parse[0] = _NSConcreteStackBlock;
      parse[1] = 3221225472;
      parse[2] = sub_100046004;
      parse[3] = &unk_1001AC2D8;
      v26 = 16;
      parse[4] = &v27;
      parse[5] = v7;
      v25 = *(a1 + 72);
      if (!nw_framer_parse_input(v6, 0x10uLL, 0x10uLL, 0, parse))
      {
        _Block_object_dispose(&v27, 8);
        v14 = 16;
        goto LABEL_36;
      }

      if (dword_1001D3460 <= 40 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
      {
        v8 = [RPNWFramer controlCodeToString:*(*(*(a1 + 72) + 8) + 24), v16, v17, v18, v19];
        v9 = *(v28 + 33);
        v18 = strerror(*(v28 + 33));
        v19 = *(*(*(a1 + 80) + 8) + 24);
        v16 = v8;
        v17 = v9;
        LogPrintF();
      }

      _Block_object_dispose(&v27, 8);
    }

    while ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0);
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      if (*(*(*(a1 + 72) + 8) + 24) == 3)
      {
        if (dword_1001D3460 <= 40 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
        {
          sub_1001159F4(a1);
        }
      }

      else
      {
        if (dword_1001D3460 <= 90 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
        {
          sub_100115AD4(a1);
        }

        nw_framer_mark_failed_with_error(*(a1 + 40), 57);
      }

      (*(*(a1 + 56) + 16))(*(a1 + 56), v3, v4, v5);
      goto LABEL_35;
    }

    if (!*(*(*(a1 + 80) + 8) + 24))
    {
      break;
    }

    if (dword_1001D3460 <= 40 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
    {
      sub_100115A38();
    }

    v10 = *(a1 + 80);
    v11 = *(*(v10 + 8) + 24);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100046074;
    v20[3] = &unk_1001AC300;
    v22 = v10;
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v21 = v12;
    v23 = v13;
    if (!nw_framer_parse_input(v6, 1uLL, v11, 0, v20))
    {
      if (dword_1001D3460 <= 40 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
      {
        sub_100115A6C();
      }

LABEL_35:
      v14 = 0;
      goto LABEL_36;
    }
  }

  if (dword_1001D3460 <= 40 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
  {
    sub_100115AA0();
  }

  v14 = 0;
  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_36:

  return v14;
}

uint64_t sub_100046004(void *a1, _OWORD *a2, unint64_t a3)
{
  if (!a2 || a1[8] > a3)
  {
    return 0;
  }

  *(*(a1[4] + 8) + 32) = *a2;
  *(*(a1[5] + 8) + 24) = 1;
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 8) + 32);
  *(*(a1[7] + 8) + 24) = *(*(a1[4] + 8) + 40);
  return a1[8];
}

unint64_t sub_100046074(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a3;
  if (*(*(a1[5] + 8) + 24) <= a3)
  {
    if (dword_1001D3460 <= 40 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
    {
      sub_100115B18();
    }

    (*(a1[4] + 16))();
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 24) = 0;
  }

  else
  {
    if (dword_1001D3460 <= 40 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
    {
      sub_100115B58();
    }

    (*(a1[4] + 16))();
    *(*(a1[5] + 8) + 24) -= v3;
  }

  return v3;
}

void sub_100046198(id a1, OS_nw_framer *a2, OS_nw_protocol_metadata *a3, unint64_t a4, BOOL a5)
{
  v7 = a2;
  v6 = a3;
  if (dword_1001D3460 <= 90 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
  {
    sub_100115B98();
  }
}

void sub_10004621C(id a1, OS_nw_framer *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1001D3460 <= 30)
  {
    v5 = v2;
    if (dword_1001D3460 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100115BB8();
      v3 = v5;
    }
  }
}

nw_protocol_definition_t nwrapport_copy_protocol_definition()
{
  definition = nw_framer_create_definition("rapport-client-peer", 0, &stru_1001AC3E8);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "registering rapport peer protocol", v2, 2u);
  }

  return definition;
}

int sub_100046318(id a1, OS_nw_framer *a2)
{
  v2 = a2;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3010000000;
  v12[4] = 0;
  v12[5] = 0;
  v12[3] = &unk_10017AC26;
  v3 = nw_framer_message_create(v2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100046484;
  v7[3] = &unk_1001AC438;
  v10 = v13;
  v11 = v12;
  v4 = v2;
  v8 = v4;
  v5 = v3;
  v9 = v5;
  nw_framer_set_input_handler(v4, v7);
  nw_framer_set_output_handler(v4, &stru_1001AC458);
  nw_framer_set_stop_handler(v4, &stru_1001AC498);
  nw_framer_set_cleanup_handler(v4, &stru_1001AC4B8);

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);

  return 2;
}

void sub_100046460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100046484(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(*(v4 + 8) + 24);
  v6 = 16;
  do
  {
    if (v5)
    {
      break;
    }

    parse[0] = _NSConcreteStackBlock;
    parse[1] = 3221225472;
    parse[2] = sub_1000467EC;
    parse[3] = &unk_1001AC410;
    parse[5] = v4;
    parse[6] = 16;
    parse[4] = *(a1 + 56);
    if (!nw_framer_parse_input(v3, 0x10uLL, 0x10uLL, 0, parse))
    {
      goto LABEL_31;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v7 = [RPNWFramer controlCodeToString:*(*(*(a1 + 56) + 8) + 32)];
      v8 = *(*(*(a1 + 56) + 8) + 33);
      v9 = strerror(v8);
      v10 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136315906;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Client RX framer msg header={%s error: %d (%s), length: %zu}", buf, 0x26u);
    }

    v5 = 0;
    v4 = *(a1 + 48);
  }

  while ((*(*(v4 + 8) + 24) & 1) == 0);
  v11 = nw_framer_connection_state_copy_object_value();
  v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v12)
    {
      sub_100115BF8(a1 + 56);
    }

    v13 = *(*(a1 + 56) + 8);
    if (!*(v13 + 32) && *(v13 + 40))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100115C90(a1 + 56);
      }

      nw_framer_deliver_input_no_copy(v3, *(*(*(a1 + 56) + 8) + 40), *(a1 + 40), 0);
      goto LABEL_30;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100115D18(a1 + 56);
    }

    v14 = *(a1 + 32);
    v15 = *(*(*(a1 + 56) + 8) + 33);
  }

  else
  {
    if (v12)
    {
      sub_100115D98();
    }

    if (*(*(*(a1 + 56) + 8) + 36) == 320017171)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100115E60(a1 + 56);
      }

      v16 = *(a1 + 32);
      nw_framer_connection_state_set_object_value();
      nw_framer_mark_ready(*(a1 + 32));
      goto LABEL_30;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100115DDC(a1 + 56);
    }

    v17 = *(*(a1 + 56) + 8);
    v15 = *(v17 + 33);
    if (!*(v17 + 33))
    {
      *(v17 + 33) = 53;
      v15 = *(*(*(a1 + 56) + 8) + 33);
    }

    v14 = *(a1 + 32);
  }

  nw_framer_mark_failed_with_error(v14, v15);
LABEL_30:
  *(*(*(a1 + 48) + 8) + 24) = 0;

  v6 = 0;
LABEL_31:

  return v6;
}

uint64_t sub_1000467EC(void *a1, _OWORD *a2, unint64_t a3)
{
  if (!a2 || a1[6] > a3)
  {
    return 0;
  }

  *(*(a1[4] + 8) + 32) = *a2;
  v4 = a1[5];
  result = a1[6];
  *(*(v4 + 8) + 24) = 1;
  return result;
}

void sub_100046828(id a1, OS_nw_framer *a2, OS_nw_protocol_metadata *a3, unint64_t a4, BOOL a5)
{
  v6 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100115EE0();
  }

  v7[0] = 0;
  v7[1] = a4;
  nw_framer_write_output(v6, v7, 0x10uLL);
  nw_framer_write_output_no_copy(v6, a4);
}

BOOL sub_10004689C(id a1, OS_nw_framer *a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100115F5C(v2);
  }

  [RPNWFramer writeControlOnFramer:v2 type:3 error:0 token:0];

  return 1;
}

void sub_100046904(id a1, OS_nw_framer *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Cleanup handler called for framer=%@", &v3, 0xCu);
  }
}

void sub_1000469E8(id a1)
{
  v1 = qword_1001D60F0;
  qword_1001D60F0 = &off_1001B80D8;
}

void sub_1000475C8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1001D34D0 <= 90)
  {
    v5 = v2;
    if (dword_1001D34D0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_10011627C();
      v3 = v5;
    }
  }
}

void sub_100047794(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) dispatchQueue];
  dispatch_assert_queue_V2(v4);

  if (a2)
  {
    v5 = [*(a1 + 40) tapEvent];
    v8 = [v5 contactID];
  }

  else
  {
    v8 = 0;
  }

  v6 = [*(a1 + 40) tapEvent];
  [v6 setContactID:v8];

  v7 = [*(a1 + 32) _remoteObjectProxy];
  [v7 didUpdateTransaction:*(a1 + 40)];
}

void sub_100047F68(id a1)
{
  v1 = qword_1001D6100;
  qword_1001D6100 = &off_1001B80F0;
}

void sub_100048040(id a1)
{
  v1 = qword_1001D6110;
  qword_1001D6110 = &off_1001B8118;
}

id sub_100049A4C(uint64_t a1)
{
  if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116948(a1);
  }

  v2 = [*(a1 + 32) ageOutListenerTimer];
  dispatch_source_cancel(v2);

  [*(a1 + 32) setAgeOutListenerTimer:0];
  v3 = *(a1 + 40);

  return [RPNWListener removeListenerForApplicationService:v3];
}

void sub_10004AC40(id a1)
{
  v1 = objc_alloc_init(RPEndpoint);
  v2 = qword_1001D6130;
  qword_1001D6130 = v1;
}

uint64_t start(int a1, uint64_t a2)
{
  if (a1 >= 2)
  {
    v2 = 0;
    v3 = (a2 + 8);
    v4 = a1 - 1;
    while (1)
    {
      v5 = *v3;
      if (!strcmp(*v3, "--system"))
      {
        v2 = 1;
      }

      else
      {
        if (*v5 == 45 && v5[1] == 86 && !v5[2] || !strcmp(v5, "--version") || !strcmp(v5, "version"))
        {
          fprintf(__stdoutp, "Rapport daemon version %s\n", "715.2");
          return 0;
        }

        fprintf(__stderrp, "warning: unknown option '%s'\n", v5);
      }

      ++v3;
      if (!--v4)
      {
        goto LABEL_14;
      }
    }
  }

  v2 = 0;
LABEL_14:
  v6 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0 && dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_100116F28();
  }

  if (!confstr(65537, v14, 0x400uLL) && dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_100116F70();
  }

  signal(13, 1);
  LogSetAppID();
  LogControl();
  if (v2)
  {
    if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117000();
    }
  }

  else
  {
    if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100116FB8();
    }

    v7 = objc_alloc_init(_TtC8rapportd27RPSwiftMemoryTest_objCClass);
    [(RPSwiftMemoryTest_objCClass *)v7 performLog];
    v8 = objc_alloc_init(CUPairingDaemon);
    v9 = dispatch_queue_create("CUPairingDaemon", 0);
    [v8 setDispatchQueue:v9];

    [v8 activate];
    v10 = +[RPDaemon sharedDaemon];
    v11 = dispatch_queue_create("com.apple.rapport.RPDaemonQueue", 0);
    [v10 setDispatchQueue:v11];

    [v10 activate];
  }

  objc_autoreleasePoolPop(v6);
  v12 = +[NSRunLoop currentRunLoop];
  [v12 run];

  return 0;
}

void sub_10004E798(id a1)
{
  v1 = objc_alloc_init(RPDaemon);
  v2 = qword_1001D6140;
  qword_1001D6140 = v1;
}

void sub_10004EB38(id a1)
{
  v1 = +[RPDaemon sharedDaemon];
  [v1 postDaemonInfoChanges:0x80000];
}

uint64_t sub_10004FCE8(uint64_t result)
{
  if (*(*(result + 32) + 32) != -1)
  {
    v2 = result;
    if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001170D4();
    }

    *(*(v2 + 32) + 144) = 1;

    return _xpc_transaction_exit_clean();
  }

  return result;
}

void sub_10004FD6C(uint64_t a1)
{
  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(*(a1 + 32) + 145) = 1;
  [*(a1 + 32) _prefsChanged];
  exit(0);
}

id sub_10004FDE8(uint64_t a1)
{
  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_1001170F0();
  }

  v2 = *(a1 + 32);

  return [v2 _updateErrorFlags];
}

id sub_10004FE50(uint64_t a1)
{
  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_10011710C();
  }

  v2 = *(a1 + 32);

  return [v2 _updateErrorFlags];
}

id sub_10004FEB8(uint64_t a1)
{
  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_100117128();
  }

  v2 = *(a1 + 32);

  return [v2 _updateErrorFlags];
}

uint64_t sub_10004FF28(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (result && (result = strcmp(result, "com.apple.rapport.prefsChanged"), !result))
  {
    if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117144();
    }

    v4 = *(a1 + 32);

    return [v4 _prefsChanged];
  }

  else if (dword_1001D3730 <= 60)
  {
    if (dword_1001D3730 != -1)
    {
      return sub_100117160();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100117160();
    }
  }

  return result;
}

void *sub_100050008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result[15])
  {
    return [result _xpcPublisherAction:a2 token:a3 event:a4];
  }

  return result;
}

uint64_t sub_100050028(uint64_t result)
{
  if (*(*(result + 32) + 120))
  {
    if (dword_1001D3730 <= 90)
    {
      if (dword_1001D3730 != -1)
      {
        return sub_1001171A0();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_1001171A0();
      }
    }
  }

  return result;
}

os_state_data_s *__cdecl sub_1000500A8(id a1, os_state_hints_s *a2)
{
  v2 = +[RPIdentityDaemon sharedIdentityDaemon];
  v3 = CUStateDumpWithObject();

  return v3;
}

uint64_t sub_1000500FC(uint64_t a1)
{
  v1 = [*(a1 + 32) keychainStateString];
  v2 = CUStateDumpWithObject();

  return v2;
}

os_state_data_s *__cdecl sub_10005014C(id a1, os_state_hints_s *a2)
{
  v2 = +[RPPrivateDaemon sharedPrivateDaemon];
  v3 = CUStateDumpWithObject();

  return v3;
}

id sub_100050728(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 152));
  [*(a1 + 40) connectionInvalidated];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 96);

  return [v3 removeObject:v2];
}

void sub_1000509D0(uint64_t a1)
{
  if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_100117274(a1);
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 80);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * i) daemonInfoChanged:{*(a1 + 40), v7}];
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100051128(uint64_t a1, int a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  switch(a2)
  {
    case 6:
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 1;
      goto LABEL_7;
    case 5:
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 0;
LABEL_7:
      [v8 _xpcPublisherStateChangedForToken:v9 state:v10];
      goto LABEL_8;
    case 0:
      [*(a1 + 32) _xpcPublisherTriggeredToken:*(a1 + 40) payload:v13 responseHandler:v7];
      goto LABEL_10;
  }

  if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    v12 = *(a1 + 40);
    LogPrintF();
  }

LABEL_8:
  if (v7)
  {
    v11 = RPErrorF();
    v7[2](v7, 0, v11);
  }

LABEL_10:
}

void sub_100051868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000518A4(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1001D3730 <= 90)
  {
    if (dword_1001D3730 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[5];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[6];
    LogPrintF();
    v1 = v2[5];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[4] + 16);

  return v5();
}

BOOL sub_100053724()
{
  v0 = dword_1001D6150;
  if (!dword_1001D6150)
  {
    v1 = [(objc_class *)off_1001D38D0() currentState];
    v2 = v1;
    if (!v1)
    {
      if (dword_1001D3860 <= 90 && (dword_1001D3860 != -1 || _LogCategory_Initialize()))
      {
        sub_100117830();
      }

      goto LABEL_14;
    }

    if ([v1 supportsDataTransfer])
    {
      v3 = 5;
    }

    else
    {
      v3 = 6;
    }

    dword_1001D6150 = v3;
    if (dword_1001D3860 <= 50)
    {
      if (dword_1001D3860 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        v3 = dword_1001D6150;
      }

      v5 = off_1001AC808[v3];
      LogPrintF();
    }

LABEL_14:

    v0 = dword_1001D6150;
  }

  return v0 == 6;
}

Class sub_1000540E8()
{
  if (qword_1001D6160 != -1)
  {
    sub_100117870();
  }

  result = objc_getClass("WiFiP2PAWDLState");
  qword_1001D6158 = result;
  off_1001D38D0 = sub_10005413C;
  return result;
}

void sub_1000553AC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1001D6170;
  qword_1001D6170 = v1;

  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1001D6170 setLocale:v3];

  [qword_1001D6170 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v4 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [qword_1001D6170 setTimeZone:v4];
}

void sub_1000572FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_100057324(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = 0;
  v10 = 0;
  result = [a3 getValue:&v9];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(*(a1 + 32) + 8) + 6 * (*(v7 + 24))++;
  *(v8 + 32) = *(*(*(a1 + 40) + 8) + 24);
  *(v8 + 33) = (v10 - 1) < 3;
  *(v8 + 34) = HIDWORD(v9);
  if (*(*(*(a1 + 40) + 8) + 24) >= 2u)
  {
    *a4 = 1;
  }

  return result;
}

void sub_1000578C8(id a1)
{
  v1 = objc_alloc_init(RPNearFieldDaemon);
  v2 = qword_1001D6180;
  qword_1001D6180 = v1;
}

id sub_1000579CC(id result)
{
  v1 = *(result + 4);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    return [*(result + 4) _activate];
  }

  return result;
}

void sub_100057FC4(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) transactionChangedHandler];
    v3[2]();
  }
}

void sub_100058044(uint64_t a1)
{
  v1 = [*(a1 + 32) nearFieldController];
  [v1 invalidate];
}

uint64_t sub_10005826C()
{
  DeviceClass = GestaltGetDeviceClass();
  v2 = DeviceClass == 1 || DeviceClass == 6;
  return v2 & _os_feature_enabled_impl();
}

uint64_t sub_1000582B0(void *a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if ([v5 serviceType] == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 isSingleBandModeRequired])
          {
            v2 = 1;
            goto LABEL_13;
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v2;
}

uint64_t sub_1000583F4(IOPMAssertionID *a1)
{
  if (!a1 || *a1)
  {
    return 0;
  }

  v5[0] = @"AssertType";
  v5[1] = @"AssertLevel";
  v6[0] = @"PreventUserIdleSystemSleep";
  v6[1] = &off_1001B7F18;
  v5[2] = @"AssertName";
  v5[3] = @"TimeoutSeconds";
  v6[2] = @"com.apple.rapport.RPNFCTransactionController.potentialInitiator";
  v6[3] = &off_1001B7F30;
  v5[4] = @"TimeoutAction";
  v6[4] = @"TimeoutActionTurnOff";
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5];
  if (IOPMAssertionCreateWithProperties(v3, a1) || !*a1)
  {
    v2 = 0;
    *a1 = 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t sub_100058518(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      IOPMAssertionRelease(result);
      *v1 = 0;
      return 1;
    }
  }

  return result;
}

void sub_100058A18(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    if (dword_1001D3A88 <= 30 && (dword_1001D3A88 != -1 || _LogCategory_Initialize()))
    {
      sub_100118264(a1);
    }

    v4 = [*(a1 + 32) framer];
    [RPNWFramer writeErrorOnFramer:v4 token:*(*(a1 + 32) + 56) error:50];
  }
}

const char *sub_1000594DC(int a1)
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

void sub_100059F8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D3AF8 <= 90 && (dword_1001D3AF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001187E8();
    }
  }

  else if (dword_1001D3AF8 <= 30 && (dword_1001D3AF8 != -1 || _LogCategory_Initialize()))
  {
    sub_100118828();
  }

  (*(*(a1 + 32) + 16))();
}

id sub_10005A438()
{
  if (qword_1001D61B8 != -1)
  {
    sub_100118B6C();
  }

  v1 = qword_1001D61B0;

  return v1;
}

Class sub_10005A60C()
{
  if (qword_1001D61A0 != -1)
  {
    sub_100118B80();
  }

  result = objc_getClass("CBDiscovery");
  qword_1001D6198 = result;
  off_1001D3B68 = sub_10005A660;
  return result;
}

void sub_10005A698(id a1)
{
  v1 = LogCategoryCopyOSLogHandle();
  v2 = qword_1001D61B0;
  qword_1001D61B0 = v1;
}

void sub_10005AB30(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_new();
  [v2 addMappingForDevice:v3 endpointID:v4];
}

void sub_10005CE64(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (!v13)
  {
    v6 = RPErrorF();
    (*(*(a1 + 32) + 16))();
  }

  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = objc_alloc_init(RPIdentity);
  v8 = [v13 publicKey];
  v9 = [v8 data];
  [v7 setEdPKData:v9];

  v10 = [v13 privateKey];
  v11 = [v10 data];
  [v7 setEdSKData:v11];

  v12 = [v13 identifier];
  [v7 setIdentifier:v12];

  (*(*(a1 + 32) + 16))();
}

void sub_10005D090(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(a1 + 32) + 40));
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    if (dword_1001D3C50 <= 30)
    {
      if (dword_1001D3C50 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100118FF4(a1);
        v3 = v5;
      }
    }

    v3[2](v3);
    v3 = v5;
  }
}

void sub_10005D20C(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(a1 + 32) + 48));
  if (v2)
  {
    v6 = v2;
    if (dword_1001D3C50 <= 30 && (dword_1001D3C50 != -1 || _LogCategory_Initialize()))
    {
      sub_100119074(a1);
    }

    v3 = [*(a1 + 48) siriEndpointIdentifier];
    v4 = [v3 UUIDString];
    v5 = [*(a1 + 40) name];
    v6[2](v6, v4, v5);

    v2 = v6;
  }
}

Class sub_10005D404()
{
  if (qword_1001D61D0 != -1)
  {
    sub_1001190F4();
  }

  result = objc_getClass("HMHomeManagerConfiguration");
  qword_1001D61C8 = result;
  off_1001D3CC0 = sub_10005D458;
  return result;
}

Class sub_10005D490()
{
  if (qword_1001D61D0 != -1)
  {
    sub_1001190F4();
  }

  result = objc_getClass("HMHomeManager");
  qword_1001D61E0 = result;
  off_1001D3CC8 = sub_10005D4E4;
  return result;
}

void sub_10005DB74(id a1)
{
  v1 = objc_alloc_init(RPNearbyInvitationDaemon);
  v2 = qword_1001D61E8;
  qword_1001D61E8 = v1;
}

void sub_10005E1D8(id a1)
{
  if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_10011938C();
  }
}

void sub_10005E224(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    if (dword_1001D3D90 <= 90 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001193A8();
    }

    [*(a1 + 32) _clientBLENearbyActionDiscoveryEnsureStopped];
    goto LABEL_6;
  }

  if (dword_1001D3D90 <= 30)
  {
    v6 = 0;
    if (dword_1001D3D90 != -1 || (v5 = _LogCategory_Initialize(), v4 = 0, v5))
    {
      sub_1001193E8();
LABEL_6:
      v4 = v6;
    }
  }
}

id sub_10005E988(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 192);
    *(v4 + 192) = 0;
  }

  if (dword_1001D3D90 <= 50 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_10011978C();
  }

  v6 = *(*(a1 + 32) + 112);

  return [v6 setScanRate:20];
}

void sub_10005EFC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D3D90 <= 90 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001197FC();
    }

    [*(a1 + 32) _clientBLENearbyActionAdvertiserEnsureStopped];
  }

  else
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_10011983C(a1);
    }

    [*(a1 + 32) _clientBLENearbyActionAdvertiserStartTimer];
  }
}

void sub_10005F22C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 208);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 208);
    *(v4 + 208) = 0;
  }

  v9 = [*(a1 + 32) _idleSessionConnection];
  v6 = [v9 activatedSession];
  v7 = [v6 waitingToConnect];

  if (v7)
  {
    if (dword_1001D3D90 <= 50 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001198D4(v9);
    }

    v8 = RPErrorF();
    [v9 sessionActivatedWithError:v8];
    [*(a1 + 32) _update];
  }
}

void sub_10005F4CC(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:?];
  if (v5)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      v6 = @"NO";
      if (a3)
      {
        v6 = @"YES";
      }

      v7 = v9;
      v8 = v6;
      LogPrintF();
    }

    [v5 setInBubble:{a3, v7, v8}];
    if (a3)
    {
      [v5 setWasTriggered:1];
    }

    if ([v5 inBubble])
    {
      [*(a1 + 32) _clientReportFoundDevice:v5];
    }

    else if (([v5 inBubble] & 1) == 0 && !objc_msgSend(*(*(a1 + 32) + 168), "count"))
    {
      [*(a1 + 32) _clientReportLostDevice:v5];
    }

    [*(a1 + 32) _update];
  }
}

void sub_10005F614(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    if (dword_1001D3D90 <= 90 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_10011994C();
    }

    [*(a1 + 32) _clientBLENearbyActionDiscoveryEnsureStopped];
    goto LABEL_6;
  }

  if (dword_1001D3D90 <= 30)
  {
    v6 = 0;
    if (dword_1001D3D90 != -1 || (v5 = _LogCategory_Initialize(), v4 = 0, v5))
    {
      sub_10011998C();
LABEL_6:
      v4 = v6;
    }
  }
}

void sub_10005FDB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    if (dword_1001D3D90 <= 90 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001199E0();
    }

    [*(*(a1 + 32) + 160) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 160);
    *(v5 + 160) = 0;

    goto LABEL_6;
  }

  if (dword_1001D3D90 <= 30)
  {
    v8 = 0;
    if (dword_1001D3D90 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
    {
      sub_100119A20(a1);
LABEL_6:
      v4 = v8;
    }
  }
}

void sub_100060264(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v6 = [v2 client];
    v4 = [v6 xpcCnx];
    v5 = [v4 remoteObjectProxyWithErrorHandler:&stru_1001ACB20];
    [v5 nearbyInvitationSessionError:v3];
  }
}

void sub_1000602FC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1001D3D90 <= 90)
  {
    v5 = v2;
    if (dword_1001D3D90 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100119A6C();
      v3 = v5;
    }
  }
}

void sub_100060374(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  if (([*(a1 + 32) invalidationHandled] & 1) == 0)
  {
    [*(a1 + 40) _clientBLEServerHandleConnectionEnded:*(a1 + 32)];
    [v2 setNetCnx:0];
  }
}

void sub_1000603E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 client];
  [*(a1 + 40) _receivedEventID:v10 event:v9 options:v8 xpcCnx:v11 sessionID:0];
}

void sub_100060488(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [v9 client];
  [*(a1 + 40) _receivedRequestID:v13 request:v12 options:v11 responseHandler:v10 xpcCnx:v14 sessionID:0];
}

id sub_100060544(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) invalidationHandled];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v5 _clientBLEServerHandleConnectionStateChange:a2 cnx:v6];
  }

  return result;
}

void sub_100060B84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    if (dword_1001D3D90 <= 90 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119B24();
    }

    [*(a1 + 32) _serverBLENearbyInfoDiscoveryEnsureStopped];
    goto LABEL_6;
  }

  if (dword_1001D3D90 <= 30)
  {
    v6 = 0;
    if (dword_1001D3D90 != -1 || (v5 = _LogCategory_Initialize(), v4 = 0, v5))
    {
      sub_100119B64();
LABEL_6:
      v4 = v6;
    }
  }
}

void sub_100061288(id a1, SFDevice *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1001D3D90 <= 10)
  {
    v5 = v2;
    if (dword_1001D3D90 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100119C94();
      v3 = v5;
    }
  }
}

void sub_10006130C(id a1)
{
  if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_100119CD4();
  }
}

void sub_100061358(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    if (dword_1001D3D90 <= 90 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119CF0();
    }

    [*(a1 + 32) _serverBLENearbyActionDiscoveryEnsureStopped];
    goto LABEL_6;
  }

  if (dword_1001D3D90 <= 30)
  {
    v6 = 0;
    if (dword_1001D3D90 != -1 || (v5 = _LogCategory_Initialize(), v4 = 0, v5))
    {
      sub_100119D30();
LABEL_6:
      v4 = v6;
    }
  }
}

void sub_1000618C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D3D90 <= 90 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119E64();
    }

    [*(a1 + 32) _serverBLENearbyActionAdvertiserEnsureStopped];
  }

  else
  {
    if (*(a1 + 56) == 1)
    {
      if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        sub_100119EC0(a1);
      }
    }

    else if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119EA4();
    }

    [*(a1 + 32) _serverBLENearbyActionAdvertiserRestartTimer];
  }
}

void sub_100061BD0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 200);
    *(v4 + 200) = 0;
  }

  if (dword_1001D3D90 <= 50 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_100119F1C();
  }

  [*(a1 + 32) _serverBLENearbyActionAdvertiserEnsureStopped];
  v6 = [*(a1 + 32) bleDeviceWantingInvitations];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = v7[17];
    v9 = [v7 bleDeviceWantingInvitations];
    [v8 removeObject:v9];

    v10 = *(a1 + 32);

    [v10 setDevicesWantingInvitations:0];
  }
}

void sub_100062190(uint64_t a1)
{
  v4 = [*(a1 + 32) client];
  [*(a1 + 40) _bleClientConnectionEnded:*(a1 + 32)];
  v2 = *(a1 + 48);
  v3 = [v4 netCnx];
  [v4 sessionEndedWithID:v2 netCnx:v3];

  [v4 setNetCnx:0];
}

void sub_100062218(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 client];
  [*(a1 + 40) _receivedEventID:v10 event:v9 options:v8 xpcCnx:v11 sessionID:*(a1 + 48)];
}

void sub_1000622BC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [v9 client];
  [*(a1 + 40) _receivedRequestID:v13 request:v12 options:v11 responseHandler:v10 xpcCnx:v14 sessionID:*(a1 + 48)];
}

id sub_100062374(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) invalidationHandled];
  if ((result & 1) == 0)
  {
    [*(a1 + 40) _bleClientConnectionStateChanged:a2 cnx:*(a1 + 32) sessionID:*(a1 + 48)];
    v5 = *(a1 + 40);

    return [v5 _update];
  }

  return result;
}

void sub_1000623D4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v7 = [v3 client];
    v5 = [v7 xpcCnx];
    v6 = [v5 remoteObjectProxyWithErrorHandler:&stru_1001ACC68];
    [v6 nearbyInvitationSessionError:v4 withID:*(a1 + 40)];
  }
}

void sub_100062474(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1001D3D90 <= 90)
  {
    v5 = v2;
    if (dword_1001D3D90 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100119F38();
      v3 = v5;
    }
  }
}

void sub_100062B80(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcCnx];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062C40;
  v4[3] = &unk_1001AB2C8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 nearbyInvitationReceivedEventID:*(a1 + 40) event:*(a1 + 48) options:*(a1 + 56) sessionID:*(a1 + 64)];
}

void sub_100062C40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_1001D3D90 <= 90)
  {
    v7 = v3;
    if (dword_1001D3D90 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      v6 = *(a1 + 32);
      LogPrintF();
      v4 = v7;
    }
  }
}

void sub_100062E3C(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcCnx];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062F00;
  v4[3] = &unk_1001AB2C8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 nearbyInvitationReceivedRequestID:*(a1 + 40) request:*(a1 + 48) options:*(a1 + 56) responseHandler:*(a1 + 72) sessionID:*(a1 + 64)];
}

void sub_100062F00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_1001D3D90 <= 90)
  {
    v7 = v3;
    if (dword_1001D3D90 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      v6 = *(a1 + 32);
      LogPrintF();
      v4 = v7;
    }
  }
}

void sub_100063740(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (dword_1001D3D90 <= 90)
  {
    if (dword_1001D3D90 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
    {
      sub_10011A054();
      v3 = v6;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

void sub_100063AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) shouldReportDevice:?])
  {
    v4 = [*(*(a1 + 40) + 80) remoteObjectProxy];
    [v4 nearbyInvitationFoundDevice:v5];
  }
}

void sub_1000640AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000640E8(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1001D3D90 <= 90)
  {
    if (dword_1001D3D90 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(*(*(v1 + 40) + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

Class sub_100064948()
{
  if (qword_1001D6210 != -1)
  {
    sub_10011A20C();
  }

  result = objc_getClass("SFDeviceDiscovery");
  qword_1001D6208 = result;
  off_1001D3E00 = sub_10006499C;
  return result;
}