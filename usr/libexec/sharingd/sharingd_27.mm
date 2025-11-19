void sub_100432180()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        sub_1002A6BEC();
        if (v3 <= 0x3F)
        {
          sub_1002A6C94(319, &qword_10097DF50, &unk_10097DF58, off_1008C8D40);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1004322D4()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_100432424@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A60;
  if (qword_100973880 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 64) = &off_10097BD58;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.CheckUserGazingAtPhone;
  *(v6 + 104) = &off_10097C138;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.CheckRegistrationStateWithAKSManager;
  *(v6 + 144) = &off_10097BC08;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.IncludeRegistrationIDInMessage;
  *(v6 + 184) = &off_10097BBF0;
  *(v6 + 216) = &type metadata for SDAuthentication.Operation.IncludeAWDLInfoInMessage;
  *(v6 + 224) = &off_10097BD40;
  *(v6 + 256) = &type metadata for SDAuthentication.Operation.IncludeFirstAKSTokenWithLTKSessionInMessage;
  *(v6 + 264) = &off_10097BBD8;
  *(v6 + 296) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(v6 + 304) = &off_10097BCF8;
  *a3 = v6;
  result = [objc_allocWithZone(SDAuthenticationRequest) init];
  if (result)
  {
    v8 = result;
    v9 = _s15VisionUnlockiOSV23HandlePreRequestContextVMa(0);
    *(a3 + v9[10]) = v8;
    *(a3 + v9[11]) = 0;
    if ([a1 hasVersion])
    {
      if ([a1 hasAwdlInfo])
      {
        v10 = _s15VisionUnlockiOSV17InitialKeyContextVMa(0);
        sub_100434848(a2 + *(v10 + 24), a3 + v9[6], type metadata accessor for SDAuthenticationSessionMetrics);
        sub_1002A9938(a2 + 8, (a3 + 1));
        v11 = (a2 + *(v10 + 28));
        v12 = *v11;
        v13 = v11[1];
        v14 = (a3 + v9[8]);
        *v14 = v12;
        v14[1] = v13;
        sub_100294008(v12, v13);
        result = [a1 awdlInfo];
        if (result)
        {
          v15 = result;
          v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v19 = (a3 + v9[9]);
          *v19 = v16;
          v19[1] = v18;
          LODWORD(v15) = [a1 version];

          result = sub_1004348B0(a2, _s15VisionUnlockiOSV17InitialKeyContextVMa);
          *(a3 + v9[7]) = v15;
          return result;
        }

        goto LABEL_12;
      }

      v27 = 0x800000010078B300;
      v26 = 0xD000000000000011;
    }

    else
    {
      _StringGuts.grow(_:)(32);
      v20 = [a1 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24._countAndFlagsBits = 0xD00000000000001CLL;
      v24._object = 0x800000010078B2C0;
      String.append(_:)(v24);
      v25._countAndFlagsBits = 0xD000000000000017;
      v25._object = 0x8000000100802E10;
      String.append(_:)(v25);
      v26 = v21;
      v27 = v23;
    }

    v28 = sub_100010F88(1, v26, v27);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_1004348B0(a2, _s15VisionUnlockiOSV17InitialKeyContextVMa);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1004327D4(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 40)) data];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  else
  {
    v6 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    return swift_willThrow();
  }
}

id sub_10043289C()
{
  v1 = *(_s15VisionUnlockiOSV20HandleRequestContextVMa(0) + 48);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_10043290C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A60;
  if (qword_100973880 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeEnd;
  *(v6 + 64) = &off_10097C1F8;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordTokenExchangeStart;
  *(v6 + 104) = &off_10097C1E0;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 144) = &off_10097BD58;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.VerifyRegistrationIDsInSync;
  *(v6 + 184) = &off_10097C240;
  *(v6 + 216) = &type metadata for SDAuthentication.Operation.UseReceivedTokenForIncludingFirstAKSTokenWithLTKSessionInMessage;
  *(v6 + 224) = &off_10097C120;
  *(v6 + 256) = &type metadata for SDAuthentication.Operation.RecordARTrackingDistance;
  *(v6 + 264) = &off_10097C108;
  *(v6 + 296) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v6 + 304) = &off_10097C1B0;
  *a3 = v6;
  v7 = _s15VisionUnlockiOSV20HandleRequestContextVMa(0);
  *(a3 + v7[12]) = 0;
  *(a3 + v7[13]) = 1;
  if (![a1 hasAwdlInfo])
  {
    v27 = "Missing awdl info";
LABEL_14:
    v28 = (v27 - 32) | 0x8000000000000000;
    v29 = 1;
    v30 = 0xD000000000000011;
LABEL_15:
    v31 = sub_100010F88(v29, v30, v28);
    v33 = v32;
    sub_1000115C8();
    swift_allocError();
    *v34 = v31;
    *(v34 + 8) = v33;
    swift_willThrow();

    sub_1004348B0(a2, _s15VisionUnlockiOSV18InitialLockContextVMa);
  }

  if (![a1 hasAksToken])
  {
    v27 = "Missing AKS token";
    goto LABEL_14;
  }

  if (![a1 hasRegistrationID])
  {
    v30 = 0xD000000000000016;
    v28 = 0x80000001007901D0;
    v29 = 11;
    goto LABEL_15;
  }

  v8 = _s15VisionUnlockiOSV18InitialLockContextVMa(0);
  sub_100434848(a2 + *(v8 + 24), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
  sub_1002A9938(a2 + 8, a3 + v7[6]);
  *(a3 + v7[7]) = [a1 version];
  result = [a1 registrationID];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = (a3 + v7[10]);
    *v14 = v11;
    v14[1] = v13;
    v15 = [a1 hasArTrackingDistance];
    v16 = 0;
    if (v15)
    {
      [a1 arTrackingDistance];
    }

    *(a3 + v7[11]) = v16;
    result = [a1 awdlInfo];
    if (result)
    {
      v17 = result;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = (a3 + v7[8]);
      *v21 = v18;
      v21[1] = v20;
      result = [a1 aksToken];
      if (result)
      {
        v22 = result;
        v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        result = sub_1004348B0(a2, _s15VisionUnlockiOSV18InitialLockContextVMa);
        v26 = (a3 + v7[9]);
        *v26 = v23;
        v26[1] = v25;
        return result;
      }

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100432CBC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id sub_100432D24()
{
  v1 = *(_s15VisionUnlockiOSV21HandleResponseContextVMa(0) + 28);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationToken) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100432D94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s15VisionUnlockiOSV21HandleResponseContextVMa(0);
  *(a3 + v6[7]) = 0;
  *(a3 + v6[9]) = 7;
  v7 = v6[10];
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007F8830;
  if (qword_100973880 != -1)
  {
    swift_once();
  }

  *(v8 + 56) = &type metadata for SDAuthentication.Operation.IncludeNextAKSTokenWithLTKSessionInMessage;
  *(v8 + 64) = &off_10097C198;
  *(v8 + 96) = &type metadata for SDAuthentication.Operation.RangeAsResponder;
  *(v8 + 104) = &off_10097C0F0;
  *(v8 + 136) = &type metadata for SDAuthentication.Operation.SendTokenMessage;
  *(v8 + 144) = &off_10097C180;
  *(a3 + v7) = v8;
  if ([a1 hasAksToken])
  {
    v9 = _s15VisionUnlockiOSV23HandlePreRequestContextVMa(0);
    sub_100434848(a2 + *(v9 + 24), a3 + v6[5], type metadata accessor for SDAuthenticationSessionMetrics);
    sub_1002A9938(a2 + 8, a3);
    result = [a1 aksToken];
    if (result)
    {
      v11 = result;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = (a3 + v6[8]);
      *v15 = v12;
      v15[1] = v14;
      v16 = (a2 + *(v9 + 36));
      v17 = *v16;
      v18 = v16[1];
      sub_100294008(*v16, v18);
      result = sub_1004348B0(a2, _s15VisionUnlockiOSV23HandlePreRequestContextVMa);
      v19 = (a3 + v6[6]);
      *v19 = v17;
      v19[1] = v18;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = sub_100010F88(1, 0xD000000000000011, 0x80000001007901B0);
    v22 = v21;
    sub_1000115C8();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    swift_willThrow();

    sub_1004348B0(a2, _s15VisionUnlockiOSV23HandlePreRequestContextVMa);
  }

  return result;
}

id sub_100433060()
{
  v1 = *(_s15VisionUnlockiOSV18HandleTokenContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1004330D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A60;
  if (qword_100973880 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.RecordTokenExchangeEnd;
  *(v6 + 64) = &off_10097C168;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RangeAsInitiator;
  *(v6 + 104) = &off_10097C0D8;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.CheckScreenOn;
  *(v6 + 144) = &off_10097C0C0;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.ConsumeAKSTokenWithLTKSession;
  *(v6 + 184) = &off_10097C150;
  *(v6 + 216) = &type metadata for SDAuthentication.Operation.IfScreenOffLockDevice;
  *(v6 + 224) = &off_10097C0A8;
  *(v6 + 256) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 264) = &off_10097C270;
  *(v6 + 296) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 304) = &off_10097BB00;
  *a3 = v6;
  v7 = _s15VisionUnlockiOSV18HandleTokenContextVMa(0);
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 2;
  if ([a1 hasAksToken])
  {
    v8 = _s15VisionUnlockiOSV20HandleRequestContextVMa(0);
    sub_100434848(a2 + v8[5], a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    sub_1002A9938(a2 + v8[6], a3 + v7[6]);
    v9 = (a2 + v8[8]);
    v10 = *v9;
    v11 = v9[1];
    v12 = (a3 + v7[8]);
    *v12 = v10;
    v12[1] = v11;
    sub_100294008(v10, v11);
    result = [a1 aksToken];
    if (result)
    {
      v14 = result;
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      result = sub_1004348B0(a2, _s15VisionUnlockiOSV20HandleRequestContextVMa);
      v18 = (a3 + v7[7]);
      *v18 = v15;
      v18[1] = v17;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v21 = v20;
    sub_1000115C8();
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v21;
    swift_willThrow();

    sub_1004348B0(a2, _s15VisionUnlockiOSV20HandleRequestContextVMa);
  }

  return result;
}

uint64_t sub_1004333B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

uint64_t sub_100433488@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973880 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.ConfirmAKSSessionWithLTKSession;
  *(v6 + 104) = &off_10097C090;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.PostNotificationOfiPhoneUnlockedByVision;
  *(v6 + 144) = &off_10097C078;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s15VisionUnlockiOSV21HandleResponseContextVMa(0) + 20);
    v8 = _s15VisionUnlockiOSV25HandleConfirmationContextVMa(0);
    sub_100434848(a2 + v7, a3 + *(v8 + 24), type metadata accessor for SDAuthenticationSessionMetrics);
    sub_1002A9938(a2, (a3 + 1));
    LOBYTE(v7) = [a1 success];

    result = sub_1004348B0(a2, _s15VisionUnlockiOSV21HandleResponseContextVMa);
    *(a3 + *(v8 + 28)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_1004348B0(a2, _s15VisionUnlockiOSV21HandleResponseContextVMa);
  }

  return result;
}

void sub_100433684(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v148 = a2;
  v143 = a3;
  v121 = _s15VisionUnlockiOSV25HandleConfirmationContextVMa(0);
  v4 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v125 = (&v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10028088C(&qword_10097E040, &qword_100802E08);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v130 = &v121 - v8;
  v122 = _s15VisionUnlockiOSV18HandleTokenContextVMa(0);
  v9 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v129 = (&v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10028088C(&qword_10097E048, &qword_100802E10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v136 = &v121 - v13;
  v131 = _s15VisionUnlockiOSV21HandleResponseContextVMa(0);
  v128 = *(v131 - 8);
  v14 = *(v128 + 64);
  v15 = __chkstk_darwin(v131);
  v123 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v124 = &v121 - v18;
  __chkstk_darwin(v17);
  v135 = &v121 - v19;
  v20 = sub_10028088C(&qword_10097E050, &qword_100802E18);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v142 = &v121 - v22;
  v137 = _s15VisionUnlockiOSV20HandleRequestContextVMa(0);
  v134 = *(v137 - 8);
  v23 = *(v134 + 64);
  v24 = __chkstk_darwin(v137);
  v126 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v127 = &v121 - v27;
  __chkstk_darwin(v26);
  v141 = (&v121 - v28);
  v29 = sub_10028088C(&qword_10097E058, &qword_100802E20);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v121 - v31;
  v33 = _s15VisionUnlockiOSV18InitialLockContextVMa(0);
  v145 = *(v33 - 8);
  v146 = v33;
  v34 = *(v145 + 64);
  v35 = __chkstk_darwin(v33);
  v139 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v140 = &v121 - v37;
  v144 = _s15VisionUnlockiOSV23HandlePreRequestContextVMa(0);
  v138 = *(v144 - 8);
  v38 = *(v138 + 64);
  v39 = __chkstk_darwin(v144);
  v132 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v133 = &v121 - v42;
  __chkstk_darwin(v41);
  v44 = (&v121 - v43);
  v45 = sub_10028088C(&qword_10097E060, &qword_100802E28);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v121 - v47;
  v49 = _s15VisionUnlockiOSV17InitialKeyContextVMa(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v54 = &v121 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v56 = &v121 - v55;
  sub_1002A9938(a1, v149);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_10097DF58, off_1008C8D40);
  if (swift_dynamicCast())
  {
    v57 = v150;
    sub_1002A9938(v148, v149);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v58 = swift_dynamicCast();
    v59 = *(v50 + 56);
    if (!v58)
    {
      v59(v48, 1, 1, v49);
      sub_100005508(v48, &qword_10097E060, &qword_100802E28);
      v73 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v75 = v74;
      sub_1000115C8();
      swift_allocError();
      *v76 = v73;
      *(v76 + 8) = v75;
      swift_willThrow();

      return;
    }

    v59(v48, 0, 1, v49);
    sub_1004347E0(v48, v56, _s15VisionUnlockiOSV17InitialKeyContextVMa);
    sub_100434848(v56, v54, _s15VisionUnlockiOSV17InitialKeyContextVMa);
    v60 = v57;
    v61 = v147;
    sub_100432424(v60, v54, v44);
    if (v61)
    {
      sub_1004348B0(v56, _s15VisionUnlockiOSV17InitialKeyContextVMa);

      return;
    }

    v93 = v143;
    v143[3] = v144;
    v93[4] = &off_1008E19D0;
    v94 = sub_10002F604(v93);
    sub_1004347E0(v44, v94, _s15VisionUnlockiOSV23HandlePreRequestContextVMa);

    v95 = _s15VisionUnlockiOSV17InitialKeyContextVMa;
    v96 = v56;
    goto LABEL_35;
  }

  v62 = v148;
  sub_1002A9938(a1, v149);
  sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
  if (swift_dynamicCast())
  {
    v63 = v150;
    sub_1002A9938(v62, v149);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v64 = v146;
    v65 = swift_dynamicCast();
    v66 = *(v145 + 56);
    if (v65)
    {
      v66(v32, 0, 1, v64);
      v67 = v140;
      sub_1004347E0(v32, v140, _s15VisionUnlockiOSV18InitialLockContextVMa);
      v68 = v139;
      sub_100434848(v67, v139, _s15VisionUnlockiOSV18InitialLockContextVMa);
      v69 = v63;
      v70 = v141;
      v71 = v147;
      sub_10043290C(v69, v68, v141);
      if (v71)
      {
        v72 = _s15VisionUnlockiOSV18InitialLockContextVMa;
LABEL_25:
        sub_1004348B0(v67, v72);

        return;
      }

      v104 = v143;
      v143[3] = v137;
      v104[4] = &off_1008E19E8;
      v105 = sub_10002F604(v104);
      sub_1004347E0(v70, v105, _s15VisionUnlockiOSV20HandleRequestContextVMa);

      v106 = _s15VisionUnlockiOSV18InitialLockContextVMa;
      goto LABEL_34;
    }

    v66(v32, 1, 1, v64);
    sub_100005508(v32, &qword_10097E058, &qword_100802E20);
    v84 = "sult, message may be replayed";
    v85 = 0xD000000000000047;
LABEL_31:
    v113 = sub_100010F88(10, v85, v84 | 0x8000000000000000);
    v115 = v114;
    sub_1000115C8();
    swift_allocError();
    *v116 = v113;
    *(v116 + 8) = v115;
    swift_willThrow();

    return;
  }

  sub_1002A9938(a1, v149);
  sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v149);
    sub_1000276B4(0, &qword_1009758C8, off_1008C8D58);
    if (swift_dynamicCast())
    {
      v63 = v150;
      sub_1002A9938(v62, v149);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v87 = v136;
      v86 = v137;
      v88 = swift_dynamicCast();
      v89 = *(v134 + 56);
      if (v88)
      {
        v89(v87, 0, 1, v86);
        v67 = v127;
        sub_1004347E0(v87, v127, _s15VisionUnlockiOSV20HandleRequestContextVMa);
        v90 = v126;
        sub_100434848(v67, v126, _s15VisionUnlockiOSV20HandleRequestContextVMa);
        v69 = v63;
        v91 = v129;
        v92 = v147;
        sub_1004330D0(v69, v90, v129);
        if (v92)
        {
          v72 = _s15VisionUnlockiOSV20HandleRequestContextVMa;
          goto LABEL_25;
        }

        v117 = v143;
        v143[3] = v122;
        v117[4] = &off_1008E1A18;
        v118 = sub_10002F604(v117);
        sub_1004347E0(v91, v118, _s15VisionUnlockiOSV18HandleTokenContextVMa);

        v106 = _s15VisionUnlockiOSV20HandleRequestContextVMa;
        goto LABEL_34;
      }

      v89(v87, 1, 1, v86);
      sub_100005508(v87, &qword_10097E048, &qword_100802E10);
      v84 = "t, message may be replayed";
      v85 = 0xD000000000000049;
    }

    else
    {
      sub_1002A9938(a1, v149);
      sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
      if (!swift_dynamicCast())
      {
        v107 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
        v109 = v108;
        sub_1000115C8();
        swift_allocError();
        *v110 = v107;
        *(v110 + 8) = v109;
        swift_willThrow();
        return;
      }

      v63 = v150;
      sub_1002A9938(v62, v149);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v97 = v130;
      v98 = v131;
      v99 = swift_dynamicCast();
      v100 = *(v128 + 56);
      if (v99)
      {
        v100(v97, 0, 1, v98);
        v67 = v124;
        sub_1004347E0(v97, v124, _s15VisionUnlockiOSV21HandleResponseContextVMa);
        v101 = v123;
        sub_100434848(v67, v123, _s15VisionUnlockiOSV21HandleResponseContextVMa);
        v69 = v63;
        v102 = v125;
        v103 = v147;
        sub_100433488(v69, v101, v125);
        if (v103)
        {
          v72 = _s15VisionUnlockiOSV21HandleResponseContextVMa;
          goto LABEL_25;
        }

        v119 = v143;
        v143[3] = v121;
        v119[4] = &off_1008E1A30;
        v120 = sub_10002F604(v119);
        sub_1004347E0(v102, v120, _s15VisionUnlockiOSV25HandleConfirmationContextVMa);

        v106 = _s15VisionUnlockiOSV21HandleResponseContextVMa;
        goto LABEL_34;
      }

      v100(v97, 1, 1, v98);
      sub_100005508(v97, &qword_10097E040, &qword_100802E08);
      v84 = "Invalid message object received";
      v85 = 0xD00000000000004ALL;
    }

    goto LABEL_31;
  }

  v63 = v150;
  sub_1002A9938(v62, v149);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  v77 = v142;
  v78 = v144;
  v79 = swift_dynamicCast();
  v80 = *(v138 + 56);
  if (!v79)
  {
    v80(v77, 1, 1, v78);
    sub_100005508(v77, &qword_10097E050, &qword_100802E18);
    v84 = "AWDL failed to start";
    v85 = 0xD00000000000004CLL;
    goto LABEL_31;
  }

  v80(v77, 0, 1, v78);
  v67 = v133;
  sub_1004347E0(v77, v133, _s15VisionUnlockiOSV23HandlePreRequestContextVMa);
  v81 = v132;
  sub_100434848(v67, v132, _s15VisionUnlockiOSV23HandlePreRequestContextVMa);
  v69 = v63;
  v82 = v135;
  v83 = v147;
  sub_100432D94(v69, v81, v135);
  if (v83)
  {
    v72 = _s15VisionUnlockiOSV23HandlePreRequestContextVMa;
    goto LABEL_25;
  }

  v111 = v143;
  v143[3] = v131;
  v111[4] = &off_1008E1A00;
  v112 = sub_10002F604(v111);
  sub_1004347E0(v82, v112, _s15VisionUnlockiOSV21HandleResponseContextVMa);

  v106 = _s15VisionUnlockiOSV23HandlePreRequestContextVMa;
LABEL_34:
  v95 = v106;
  v96 = v67;
LABEL_35:
  sub_1004348B0(v96, v95);
}

uint64_t sub_1004347E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100434848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004348B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100434938()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        sub_1000276B4(319, &qword_1009758B8, off_1008C8D48);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100434A50()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6B90(319, &unk_100977800);
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100434B88()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6B90(319, &unk_100977800);
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100434CB4()
{
  sub_1002A6B90(319, &unk_100977800);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6C94(319, &unk_100975BE8, &qword_1009758C8, off_1008C8D58);
      if (v2 <= 0x3F)
      {
        sub_1002A6B2C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100434DD0()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100434E94()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097E3A8);
  v1 = sub_10000C4AC(v0, qword_10097E3A8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100434F5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverClientsBundleIDs;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t SDAirDropService.transferObserverClientsBundleIDs.getter()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverClientsBundleIDs;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10043500C()
{
  sub_10028088C(&unk_10097E7B0, qword_100804108);
  v0 = type metadata accessor for SFAirDropClient.Identifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007F5670;
  result = (*(v1 + 104))(v4 + v3, enum case for SFAirDropClient.Identifier.shareSheet(_:), v0);
  qword_1009A0B88 = v4;
  return result;
}

void sub_1004350F0()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v251 = v243 - v3;
  v4 = type metadata accessor for SFAirDrop.Transfers();
  v262 = *(v4 - 8);
  v263 = v4;
  v5 = *(v262 + 64);
  v6 = __chkstk_darwin(v4);
  v248 = v243 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v261 = v243 - v8;
  v260 = sub_10028088C(&qword_10097E668, &qword_1008040C0);
  v254 = *(v260 - 8);
  v9 = *(v254 + 64);
  v10 = __chkstk_darwin(v260);
  v249 = v11;
  v250 = v243 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v277 = v243 - v12;
  v264 = sub_10028088C(&qword_100977DA0, &unk_1007FB2F0);
  v253 = *(v264 - 8);
  v13 = *(v253 + 64);
  __chkstk_darwin(v264);
  v259 = v243 - v14;
  v258 = sub_10028088C(&qword_10097AD18, &unk_1007FDF70);
  v252 = *(v258 - 8);
  v15 = *(v252 + 64);
  __chkstk_darwin(v258);
  v257 = v243 - v16;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = *(v17 - 8);
  v281 = v17;
  v282 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v243 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OS_dispatch_queue.Attributes();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = v243 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = v243 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus;
  v31 = [objc_opt_self() sharedMonitor];
  v283 = v30;
  *&v0[v30] = v31;
  v32 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearbyAgent;
  v33 = [objc_opt_self() sharedNearbyAgent];
  v280 = v32;
  *&v0[v32] = v33;
  v34 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_bleController;
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  v35 = qword_1009A0CA0;
  v274 = v34;
  *&v34[v0] = qword_1009A0CA0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nwAgent] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverTask] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverClientsBundleIDs] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferPresenters] = _swiftEmptyArrayStorage;
  v275 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_queue;
  v36 = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v284 = v0;
  v279 = "OS";
  v37 = v35;
  static DispatchQoS.default.getter();
  *&v298 = _swiftEmptyArrayStorage;
  v38 = sub_100443FCC(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v39 = sub_10028088C(&unk_10097A630, &unk_1007F5680);
  v270 = sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  v271 = v39;
  v272 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v41 = v282 + 104;
  v40 = *(v282 + 104);
  v269 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v268 = v40;
  v40(v21);
  v42 = v284;
  v273 = v29;
  v276 = v36;
  *&v42[v275] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v43 = v283;
  v44 = *&v42[v283];
  if (!v44)
  {
    __break(1u);
    goto LABEL_35;
  }

  v45 = type metadata accessor for SDAirDropLegacySessionLogger(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_100560090(v44);
  v279 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sessionLogger;
  *&v42[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sessionLogger] = v48;
  v49 = *&v42[v43];
  if (!v49)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v265 = v22;
  v266 = v25;
  v267 = v21;
  v282 = v41;
  v50 = objc_allocWithZone(IDSService);
  v278 = v49;
  v51 = v44;
  v52 = String._bridgeToObjectiveC()();
  v53 = [v50 initWithService:v52];

  if (!v53)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v54 = type metadata accessor for SDPseudonymNetworkPathMonitor();
  swift_allocObject();
  v55 = v53;
  v56 = sub_100531094();
  v299 = &type metadata for SDPseudonymPropertiesProvider;
  v300 = &off_1008E4190;
  v296 = &type metadata for SDPseudonymStorage;
  v297 = &off_1008DA720;
  v293 = v54;
  v294 = &off_1008E6270;
  v292[0] = v56;
  v57 = type metadata accessor for SDAirDropPseudonymService();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v60 = swift_allocObject();
  sub_10002F5B4(&v298, &type metadata for SDPseudonymPropertiesProvider);
  sub_10002F5B4(v295, v296);
  v61 = v293;
  v62 = sub_10002F5B4(v292, v293);
  v256 = v243;
  v63 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v62);
  v65 = (v243 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65);
  v67 = *v65;
  v291[3] = sub_1000276B4(0, &unk_100985A30, IDSService_ptr);
  v291[4] = &off_1008E7BC0;
  v255 = v55;
  v291[0] = v55;
  v290[3] = &type metadata for SDPseudonymPropertiesProvider;
  v290[4] = &off_1008E4190;
  v289[3] = &type metadata for SDPseudonymStorage;
  v289[4] = &off_1008DA720;
  v288[3] = v54;
  v288[4] = &off_1008E6270;
  v288[0] = v67;
  *(v60 + 22) = 0;
  *(v60 + 23) = 0;
  v68 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_lastProvisionAttempt;
  v69 = type metadata accessor for Date();
  (*(*(v69 - 8) + 56))(&v60[v68], 1, 1, v69);
  *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_processStartupDelaySeconds] = 0x4014000000000000;
  *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleDefaultSeconds] = 0x404E000000000000;
  sub_1002A9938(v291, (v60 + 16));
  sub_1002A9938(v290, (v60 + 56));
  sub_1002A9938(v289, (v60 + 96));
  sub_1002A9938(v288, (v60 + 136));
  v70 = v278;
  *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_deviceStatus] = v278;
  *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds] = 0x404E000000000000;
  v71 = v70;
  if (sub_1004E701C())
  {
    v72 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v73 = *(v60 + 20);
    v74 = *(v60 + 21);
    sub_10002F5B4((v60 + 136), v73);
    v75 = *(v74 + 16);

    v75(sub_100443FC4, v72, v73, v74);
    swift_endAccess();

    sub_1005EB438();
  }

  else
  {
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_10000C4AC(v76, qword_100986460);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Pseudonym service is disabled", v79, 2u);

      v71 = v77;
    }

    else
    {
    }
  }

  v80 = v255;

  sub_10000C60C(v291);
  sub_10000C60C(v288);
  sub_10000C60C(v289);
  sub_10000C60C(v290);

  sub_10000C60C(v292);
  sub_10000C60C(v295);
  sub_10000C60C(&v298);
  v81 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pseudonymService;
  v82 = v284;
  *&v284[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pseudonymService] = v60;
  if (qword_100973A08 != -1)
  {
    swift_once();
  }

  v83 = v283;
  v84 = *(v82 + v283);
  if (!v84)
  {
    goto LABEL_37;
  }

  v85 = qword_1009831A8;
  v86 = objc_allocWithZone(type metadata accessor for SDAirDropIDMSService());
  v87 = sub_100376808(v85, v84);
  v88 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService;
  *(v82 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService) = v87;
  v89 = type metadata accessor for SDAirDropUISessionManager();
  v90 = [objc_allocWithZone(v89) init];
  v91 = v82 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_airDropUISessionManager;
  v91[3] = v89;
  v91[4] = &off_1008E1BD8;
  v278 = v91;
  *v91 = v90;
  v92 = *(v82 + v83);
  if (!v92)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v93 = *(v82 + v280);
  if (!v93)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v94 = *&v274[v82];
  v95 = *&v279[v82];
  v256 = v81;
  v96 = *&v81[v82];
  v245 = v88;
  v97 = *(v82 + v88);
  v98 = type metadata accessor for SDAirDropEndpointService();
  v99 = objc_allocWithZone(v98);
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser] = 0;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser] = 0;
  v100 = &v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser];
  *v100 = 0;
  *(v100 + 1) = 0;
  v101 = v94;

  v102 = v97;
  v103 = v93;
  v104 = v92;
  UUID.init()();
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscoveredEndpoints] = &_swiftEmptySetSingleton;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered] = &_swiftEmptyDictionarySingleton;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_browseClientIDs] = &_swiftEmptySetSingleton;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_displayableIDs] = &_swiftEmptySetSingleton;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID] = &_swiftEmptyDictionarySingleton;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables] = &_swiftEmptySetSingleton;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_receivingDisplayables] = &_swiftEmptyDictionarySingleton;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegateByConnectableID] = &_swiftEmptyDictionarySingleton;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourDiscoveryContinuations] = &_swiftEmptyDictionarySingleton;
  v105 = &v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler];
  *v105 = 0;
  *(v105 + 1) = 0;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus] = v104;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_nearbyAgent] = v103;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bleController] = v101;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger] = v95;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_pseudonymService] = v96;
  *&v99[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_idmsService] = v102;
  v287.receiver = v99;
  v287.super_class = v98;
  v255 = v101;

  v247 = v102;
  v106 = v103;
  v107 = v104;
  v108 = objc_msgSendSuper2(&v287, "init");
  v109 = objc_opt_self();
  v110 = v108;
  v246 = v109;
  v111 = [v109 defaultCenter];
  [v111 addObserver:v110 selector:"screenStateChangedWithNotification:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
  if (qword_100973550 != -1)
  {
    swift_once();
  }

  [v111 addObserver:v110 selector:"nearFieldDidTap" name:qword_1009A0648 object:0];

  v112 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService;
  v113 = v283;
  v114 = v284;
  *&v284[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService] = v110;
  v115 = *&v114[v113];
  if (!v115)
  {
    goto LABEL_40;
  }

  v244 = v112;
  v116 = *&v114[v280];
  if (!v116)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v247 = *&v279[v284];
  v255 = *&v256[v284];
  sub_1002A9938(v278, &v298);
  type metadata accessor for SDAirDropSendService();
  v117 = swift_allocObject();
  v117[6] = 0;
  swift_unknownObjectWeakInit();
  v118 = v110;

  v119 = v116;
  v120 = v115;
  static DispatchQoS.default.getter();
  v295[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v268(v267, v269, v281);
  v243[1] = "e.alloy.airdrop.walkaway";
  v121 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v117[16] = v121;
  v117[3] = v120;
  v117[4] = v119;
  v117[7] = v247;
  v117[8] = &_swiftEmptyDictionarySingleton;
  v117[9] = v118;
  v122 = v118;
  v123 = v119;
  v124 = v120;
  v125 = v121;
  v295[0] = sub_1002812E0(_swiftEmptyArrayStorage);
  v126 = sub_10028088C(&qword_100977DB0, &qword_1007FB300);
  v127 = *(v126 + 48);
  v128 = *(v126 + 52);
  swift_allocObject();
  v117[2] = CurrentValueSubject.init(_:)();
  type metadata accessor for SDAirDropSendStateMachine();
  v129 = swift_allocObject();
  v129[9] = &_swiftEmptyDictionarySingleton;
  v129[2] = v125;
  v129[3] = v124;
  v130 = v284;
  v131 = v255;
  v129[4] = v122;
  v129[5] = v131;
  v129[6] = v123;
  type metadata accessor for SDAirDropiOSHapticsManager();
  v132 = swift_allocObject();
  v132[3] = 0;
  v132[4] = 0;
  v132[2] = 0;
  v129[7] = v132;
  v129[8] = &off_1008DA630;

  sub_1002DD168();

  v117[10] = v129;
  sub_1000121F8(&v298, (v117 + 11));
  v133 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sendService;
  *(v130 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sendService) = v117;
  v134 = *(v130 + v283);
  if (!v134)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v247 = v133;
  v255 = v126;
  v135 = *(v130 + v280);
  if (!v135)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  v136 = *&v274[v130];
  v137 = *&v279[v130];
  v138 = *(v130 + v244);
  v139 = *&v256[v130];
  sub_1002A9938(v278, &v298);
  v140 = *(v130 + v245);
  type metadata accessor for SDAirDropReceiveService();
  v141 = swift_allocObject();
  *(v141 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v141 + 112) = 0u;
  v280 = v141 + 112;
  *(v141 + 144) = 0;
  *(v141 + 128) = 0u;
  v142 = v134;
  v279 = v135;
  v274 = v136;
  v143 = v137;

  v144 = v138;
  v145 = v139;
  v146 = v141;

  v256 = v140;
  static DispatchQoS.default.getter();
  v295[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v268(v267, v269, v281);
  v147 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v141 + 168) = v147;
  *(v141 + 16) = v142;
  *(v141 + 24) = v144;
  *(v141 + 152) = v143;
  v148 = v143;
  *(v141 + 160) = &_swiftEmptyDictionarySingleton;
  v149 = type metadata accessor for SDAirDropReceiveConnectionManager();
  v150 = *(v149 + 48);
  v151 = *(v149 + 52);
  v152 = swift_allocObject();
  v152[3] = 0;
  swift_unknownObjectWeakInit();
  v152[5] = 0;
  swift_unknownObjectWeakInit();
  *(v152 + 28) = 0;
  v282 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID;
  v153 = v142;
  v154 = v144;
  v155 = v147;
  v156 = v153;
  v272 = v279;
  v157 = v274;

  v158 = v154;

  v159 = v256;
  v160 = v155;
  UUID.init()();
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes) = &_swiftEmptySetSingleton;
  v161 = (v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer);
  *v161 = 0;
  v161[1] = 0;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServerErrors) = &_swiftEmptySetSingleton;
  v162 = (v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer);
  *v162 = 0;
  v162[1] = 0;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServerErrors) = &_swiftEmptySetSingleton;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions) = &_swiftEmptySetSingleton;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServersByTransactionID) = &_swiftEmptyDictionarySingleton;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServerErrors) = &_swiftEmptySetSingleton;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers) = &_swiftEmptyDictionarySingleton;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers) = &_swiftEmptyDictionarySingleton;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers) = _swiftEmptyArrayStorage;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourDiscoveryHandlers) = _swiftEmptyArrayStorage;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastDiscoverableLevel) = 0;
  v163 = (v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_appleIDState);
  *v163 = 0;
  v163[1] = 0;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_lastWirelessBluetoothStateEnabled) = 0;
  *(v152 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_togetherDefaultsObserver) = 0;
  v271 = v156;
  v152[6] = v156;
  v164 = v272;
  v152[7] = v272;
  v152[8] = v158;
  v279 = v157;
  v152[15] = v157;
  v281 = v145;
  v152[10] = v145;
  v152[11] = v148;
  v273 = v160;
  v274 = v159;
  v152[9] = v159;
  v152[12] = v160;
  v165 = [v246 defaultCenter];

  v152[13] = v165;
  v282 = v146;
  *(v146 + 32) = v152;
  type metadata accessor for SDAirDropReceiveStateMachineAdaptor();
  v166 = swift_allocObject();
  v166[3] = 0;
  swift_unknownObjectWeakInit();
  v167 = sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v168 = v164;

  v272 = v167;
  v169 = static NSUserDefaults.airdrop.getter();
  LOBYTE(v158) = SFAirDropUserDefaults.privateContactDiscoveryEnabled.getter();

  if (v158)
  {
    type metadata accessor for SDAirDropReceiveStateMachine();
    swift_allocObject();
    v170 = v168;
    v171 = v271;
    v172 = v170;
    v270 = v170;
    v173 = sub_100542188(v271, v170);

    v152[3] = &off_1008E6358;
    swift_unknownObjectWeakAssign();
    v174 = [objc_allocWithZone(SDAirDropClassroomTransferManager) init];

    v175 = static OS_dispatch_queue.main.getter();
    v176 = type metadata accessor for SDAirDropReceiveClassroomHandler();
    v276 = v168;
    v177 = v176;
    v178 = objc_allocWithZone(v176);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *&v178[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_queue] = v175;
    *&v178[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_stateMachine] = v173;
    swift_unknownObjectWeakAssign();

    v179 = v175;
    *&v178[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations] = sub_100280464(_swiftEmptyArrayStorage);
    v285.receiver = v178;
    v285.super_class = v177;
    v168 = v276;
    v180 = objc_msgSendSuper2(&v285, "init");

    swift_unknownObjectWeakAssign();
    v181 = v180;
    [v174 setAlertManager:v181];

    v182 = v180 | 0x8000000000000000;
  }

  else
  {

    v152 = [objc_allocWithZone(SDAirDropReceiveManager) init];
    v173 = [objc_allocWithZone(SDAirDropClassroomTransferManager) init];
    v183 = [objc_allocWithZone(SDAirDropTransferManager) init];
    [v152 setAlertManager:v183];
    [v183 setDelegate:v152];
    v174 = v183;
    [v173 setAlertManager:v174];

    v182 = 0;
  }

  v166[4] = v152;
  v166[5] = v173;
  v166[6] = v174;
  v166[7] = v182;
  v184 = v282;
  *(v282 + 40) = v166;
  v295[0] = sub_100281B7C(_swiftEmptyArrayStorage);
  v185 = sub_10028088C(&qword_10097AD28, &unk_1007FDF80);
  v186 = *(v185 + 48);
  v187 = *(v185 + 52);
  swift_allocObject();
  *(v184 + 48) = CurrentValueSubject.init(_:)();
  sub_1002A9938(&v298, v184 + 72);
  v188 = static NSUserDefaults.airdrop.getter();
  v189 = SFAirDropUserDefaults.privateContactDiscoveryEnabled.getter();

  if (v189)
  {
    v190 = type metadata accessor for SDAirDropiOSNotificationManager();
    v191 = [objc_allocWithZone(v190) init];
    v192 = &off_1008DE010;
  }

  else
  {
    v190 = type metadata accessor for SDAirDropPlatformNotificationManagerUnsupported();
    v191 = swift_allocObject();
    v191[3] = 0;
    swift_unknownObjectWeakInit();
    v192 = &off_1008E51C0;
  }

  v193 = v275;
  v194 = v283;
  v296 = v190;
  v297 = v192;

  v295[0] = v191;
  sub_10000C60C(&v298);
  v195 = v280;
  swift_beginAccess();
  sub_100443E18(v295, v195);
  swift_endAccess();
  v196 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService;
  v197 = v284;
  *&v284[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService] = v282;
  v198 = *(v197 + v193);
  sub_1002A9938(v278, v295);
  v199 = *(v197 + v194);
  if (!v199)
  {
    goto LABEL_44;
  }

  sub_1002A9938(v295, &v298);
  v200 = type metadata accessor for SDAirDropNearFieldService(0);
  v201 = objc_allocWithZone(v200);
  v202 = v198;
  v203 = v199;
  v204 = sub_1002D67C8(v202, &v298, v203);
  v299 = v200;
  v300 = &off_1008D9BB0;

  *&v298 = v204;
  sub_10000C60C(v295);
  sub_1000121F8(&v298, v197 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService);
  v205 = type metadata accessor for SDTempPairingService();
  v206 = *(v205 + 48);
  v207 = *(v205 + 52);
  swift_allocObject();
  *(v197 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService) = sub_100420174();
  sub_10028088C(&qword_10097E670, &qword_1008040C8);
  AirDropMachServiceName.getter();
  v208 = *(v197 + v193);
  *(v197 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_xpcListener) = SFXPCListener.__allocating_init(machServiceName:queue:)();
  *&v298 = *(*(v197 + v196) + 48);
  sub_100011630(&qword_10097AD30, &qword_10097AD28, &unk_1007FDF80);
  Publisher<>.values.getter();
  *&v298 = *(*&v247[v197] + 16);
  sub_100011630(&qword_100977DB8, &qword_100977DB0, &qword_1007FB300);
  Publisher<>.values.getter();
  sub_100011630(&qword_10097E678, &qword_10097AD18, &unk_1007FDF70);
  sub_100011630(&qword_10097E680, &qword_100977DA0, &unk_1007FB2F0);
  static SFAirDrop.Transfers.stream<A, B>(receiveTransferSeq:sendTransfersSeq:)();
  sub_100281B7C(_swiftEmptyArrayStorage);
  sub_1002812E0(_swiftEmptyArrayStorage);
  v209 = v261;
  SFAirDrop.Transfers.init(receiveTransfers:sendTransfers:)();
  (*(v262 + 16))(v248, v209, v263);
  v210 = sub_10028088C(&qword_10097E688, &qword_1008040D0);
  v211 = *(v210 + 48);
  v212 = *(v210 + 52);
  swift_allocObject();
  *(v197 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transfersSubject) = CurrentValueSubject.init(_:)();
  v213 = type metadata accessor for SDAirDropService();
  v286.receiver = v197;
  v286.super_class = v213;
  v214 = objc_msgSendSuper2(&v286, "init");
  *(*&v214[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService] + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegate + 8) = &off_1008E1A48;
  swift_unknownObjectWeakAssign();
  *(*&v214[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sendService] + 48) = &off_1008E1A88;
  swift_unknownObjectWeakAssign();
  v215 = *&v214[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService];
  *(v215 + 64) = &off_1008E1A60;
  swift_unknownObjectWeakAssign();
  v216 = *(v215 + 32);
  swift_unknownObjectWeakLoadStrong();
  *(v216 + 40) = *(v215 + 64);
  swift_unknownObjectWeakAssign();
  v217 = v214;
  swift_unknownObjectRelease();
  v218 = &v217[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService];
  swift_beginAccess();
  v219 = *(v218 + 24);
  v220 = *(v218 + 32);
  sub_10002F5B4(v218, v219);
  v221 = *(v220 + 16);
  v222 = v217;
  v221(v214, &off_1008E1AA0, v219, v220);
  swift_endAccess();
  v223 = type metadata accessor for TaskPriority();
  v224 = v251;
  (*(*(v223 - 8) + 56))(v251, 1, 1, v223);
  v225 = v254;
  v226 = v250;
  (*(v254 + 16))(v250, v277, v260);
  v227 = qword_1009735E0;
  v228 = v222;
  if (v227 != -1)
  {
    swift_once();
  }

  v229 = static AirDropActor.shared;
  v230 = sub_100443FCC(&qword_100977C00, type metadata accessor for AirDropActor);
  v231 = (*(v225 + 80) + 32) & ~*(v225 + 80);
  v232 = (v249 + v231 + 7) & 0xFFFFFFFFFFFFFFF8;
  v233 = swift_allocObject();
  *(v233 + 16) = v229;
  *(v233 + 24) = v230;
  v234 = v226;
  v235 = v260;
  (*(v225 + 32))(v233 + v231, v234, v260);
  *(v233 + v232) = v228;

  v236 = sub_1002B3098(0, 0, v224, &unk_1008040E0, v233);
  v237 = *&v228[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverTask];
  *&v228[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverTask] = v236;

  v238 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_xpcListener;
  v239 = *&v228[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_xpcListener];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v240 = v239;

  SFXPCListener.didAddConnectionHandler.setter();

  v241 = *&v228[v238];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v242 = v241;

  SFXPCListener.didRemoveConnectionHandler.setter();

  (*(v262 + 8))(v261, v263);
  (*(v225 + 8))(v277, v235);
  (*(v253 + 8))(v259, v264);
  (*(v252 + 8))(v257, v258);
}

uint64_t sub_100436FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for SFAirDrop.Transfers();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_10097E690, &qword_1008040E8) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = sub_10028088C(&qword_10097E698, &unk_1008040F0);
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v5[12] = static AirDropActor.shared;

  return _swift_task_switch(sub_100437180, v13, 0);
}

uint64_t sub_100437180()
{
  v1 = v0[11];
  v2 = v0[3];
  sub_10028088C(&qword_10097E668, &qword_1008040C0);
  SFNoThrowAsyncSequence.makeAsyncIterator()();
  v3 = sub_100443FCC(&qword_100977C00, type metadata accessor for AirDropActor);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transfersSubject;
  v0[13] = v3;
  v0[14] = v4;
  v5 = sub_100011630(&qword_10097E6A0, &qword_10097E698, &unk_1008040F0);
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1004372B8;
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v5);
}

uint64_t sub_1004372B8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[12];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[13];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_100437624;
  }

  else
  {
    if (v5)
    {
      v11 = v2[13];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_100437450;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_10043746C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *(v0[4] + v0[14]);
    (*(v3 + 32))(v0[7], v1, v2);
    CurrentValueSubject.value.setter();
    v8 = sub_100011630(&qword_10097E6A0, &qword_10097E698, &unk_1008040F0);
    v9 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_1004372B8;
    v11 = v0[11];
    v12 = v0[8];
    v13 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v12, v13, v8);
  }
}

uint64_t sub_100437624()
{
  *(v0 + 16) = *(v0 + 128);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_1004376B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100443640(a1);
  }
}

void sub_10043770C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100437CD8(a1);
  }
}

void sub_10043778C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27[-v4];
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097E3A8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting AirDrop Service", v9, 2u);
  }

  v10 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_xpcListener];
  *(swift_allocObject() + 16) = v1;
  v11 = v1;
  SFXPCListener.contextProvider.setter();
  SFXPCListener.resume()();
  v12 = [objc_allocWithZone(SDAirDropAgent) initWithEndpointService:*&v11[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService]];
  v13 = *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nwAgent];
  *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nwAgent] = v12;

  v14 = *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sendService];
  sub_1003134E0();
  v15 = *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService];
  sub_100396BFC();
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(&v11[v16], v28);
  v17 = v29;
  v18 = v30;
  sub_10002CDC0(v28, v29);
  (*(v18 + 40))(v17, v18);
  sub_10000C60C(v28);
  v19 = *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService];
  type metadata accessor for SFAirDropUserDefaults();
  v20 = static SFAirDropUserDefaults.shared.getter();
  LOBYTE(v11) = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v11)
  {
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = qword_1009735E0;
    v23 = v19;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = static AirDropActor.shared;
    v25 = sub_100443FCC(&qword_100977C00, type metadata accessor for AirDropActor);
    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v23;

    sub_1002B3098(0, 0, v5, &unk_1008040B8, v26);
  }
}

uint64_t sub_100437B10()
{
  v1 = v0;
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E3A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping AirDrop Service", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_xpcListener);
  SFXPCListener.invalidate()();
  SFXPCListener.contextProvider.setter();
  v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService);
  sub_100396F18();
  sub_100318400();
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v8, v15);
  v9 = v16;
  v10 = v17;
  sub_10002CDC0(v15, v16);
  (*(v10 + 48))(v9, v10);
  sub_10000C60C(v15);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverTask;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverTask))
  {
    v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverTask);

    Task.cancel()();

    v13 = *(v1 + v11);
  }

  *(v1 + v11) = 0;
}

uint64_t sub_100437CD8(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropService.TransferPresenterClient();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for UUID();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  __chkstk_darwin(v9);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFClientIdentity();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_10097E3A8);
  v18 = *(v13 + 16);
  v48 = a1;
  v18(v16, a1, v12);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v52[0] = v22;
    *v21 = 136315138;
    sub_100443FCC(&qword_1009761E8, &type metadata accessor for SFClientIdentity);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v13 + 8))(v16, v12);
    v26 = sub_10000C4E4(v23, v25, v52);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Removing AirDrop Client %s", v21, 0xCu);
    sub_10000C60C(v22);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v27 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  v28 = v51;
  swift_beginAccess();
  sub_1002A9938(v28 + v27, v52);
  v29 = v53;
  v30 = v54;
  sub_10002CDC0(v52, v53);
  (*(v30 + 136))(v48, v29, v30);
  sub_10000C60C(v52);
  v31 = SFClientIdentity.bundleIdentifier.getter();
  v34 = v49;
  v33 = v50;
  if (v32)
  {
    v35 = v31;
    v36 = v32;
    swift_beginAccess();
    sub_10036DB18(v35, v36);
    swift_endAccess();
  }

  SFClientIdentity.connectionID.getter();
  if ((*(v34 + 48))(v8, 1, v33) == 1)
  {
    return sub_100005508(v8, &unk_100976120, &qword_1007F9260);
  }

  v38 = v47;
  (*(v34 + 32))();
  v39 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferPresenters;
  v40 = swift_beginAccess();
  v41 = *(v28 + v39);
  __chkstk_darwin(v40);
  *(&v46 - 2) = v38;

  v42 = sub_1002CCF44(sub_100443C44, (&v46 - 4), v41);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
    swift_beginAccess();
    v45 = v46;
    sub_1002CD290(v42, v46);
    sub_100443C64(v45, type metadata accessor for SDAirDropService.TransferPresenterClient);
    swift_endAccess();
  }

  return (*(v34 + 8))(v38, v33);
}

void sub_100438288(uint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6)
{
  v121 = a1;
  v124 = a2;
  v10 = type metadata accessor for SFClientIdentity();
  v115 = *(v10 - 8);
  v116 = v10;
  v11 = *(v115 + 64);
  __chkstk_darwin(v10);
  v113 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for SDAirDropService.TransferPresenterClient();
  v111 = *(v110 - 8);
  v13 = *(v111 + 64);
  v14 = __chkstk_darwin(v110);
  v107 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v104 - v17;
  v18 = __chkstk_darwin(v16);
  v106 = &v104 - v19;
  v20 = __chkstk_darwin(v18);
  v105 = &v104 - v21;
  __chkstk_darwin(v20);
  v109 = &v104 - v22;
  v23 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v117 = (&v104 - v25);
  v26 = type metadata accessor for UUID();
  v119 = *(v26 - 8);
  v120 = v26;
  v27 = *(v119 + 64);
  v28 = __chkstk_darwin(v26);
  v112 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v118 = (&v104 - v30);
  v31 = type metadata accessor for SFAirDropClient.Identifier();
  v32 = *(v31 - 1);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973890 != -1)
  {
LABEL_38:
    swift_once();
  }

  v36 = qword_1009A0B88;
  v37 = *(qword_1009A0B88 + 16);
  v38 = (v32 + 16);

  v39 = 0;
  while (v37 != v39)
  {
    if (v39 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    (*(v32 + 16))(v35, v36 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v39++, v31);
    v40 = static SFAirDropClient.Identifier.== infix(_:_:)();
    (*(v32 + 8))(v35, v31);
    if (v40)
    {

      if (qword_100973888 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000C4AC(v41, qword_10097E3A8);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Unsupported client for presenter", v44, 2u);
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  v45 = v117;
  SFClientIdentity.connectionID.getter();
  v46 = v119;
  v47 = v120;
  if ((*(v119 + 48))(v45, 1, v120) != 1)
  {
    v61 = v118;
    (*(v46 + 32))(v118, v45, v47);
    if (qword_100973888 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    v63 = sub_10000C4AC(v62, qword_10097E3A8);
    v64 = v112;
    (*(v46 + 16))(v112, v61, v47);
    v113 = v63;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = v64;
      v68 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v123[0] = v104;
      *v68 = 136315138;
      sub_100443FCC(&qword_100978CE0, &type metadata accessor for UUID);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v46;
      v72 = v71;
      v117 = *(v70 + 8);
      v117(v67, v47);
      v73 = sub_10000C4E4(v69, v72, v123);

      *(v68 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v65, v66, "Becoming presenter for connectionID %s", v68, 0xCu);
      sub_10000C60C(v104);
    }

    else
    {

      v117 = *(v46 + 8);
      v117(v64, v47);
    }

    v74 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferPresenters;
    v75 = v114;
    v76 = swift_beginAccess();
    v77 = *(v75 + v74);
    __chkstk_darwin(v76);
    *(&v104 - 2) = v118;

    v78 = sub_1002CCF44(sub_1004440EC, (&v104 - 4), v77);
    v80 = v79;

    if (v80)
    {
      v81 = v108;
      (*(v115 + 16))(v108, v121, v116);
      v82 = v110;
      (*v38)(v81 + *(v110 + 20), v124, v31);
      v83 = (v81 + *(v82 + 24));
      *v83 = a3;
      v83[1] = a4;
      v83[2] = a5;
      v83[3] = a6;
      v84 = v107;
      sub_100444014(v81, v107, type metadata accessor for SDAirDropService.TransferPresenterClient);
      swift_beginAccess();
      v85 = *(v75 + v74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v75 + v74) = v85;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v85 = sub_10028EFB8(0, v85[2] + 1, 1, v85);
        *(v75 + v74) = v85;
      }

      v88 = v85[2];
      v87 = v85[3];
      if (v88 >= v87 >> 1)
      {
        v85 = sub_10028EFB8(v87 > 1, v88 + 1, 1, v85);
      }

      v85[2] = v88 + 1;
      sub_10044407C(v84, v85 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v88, type metadata accessor for SDAirDropService.TransferPresenterClient);
      *(v75 + v74) = v85;
      swift_endAccess();
      sub_100443C64(v81, type metadata accessor for SDAirDropService.TransferPresenterClient);
      v117(v118, v120);
      return;
    }

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "Presenter already exists, becoming first presenter", v91, 2u);
    }

    if ((v78 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v92 = v114;
      v93 = *(v114 + v74);
      if (v78 < *(v93 + 16))
      {
        v124 = (*(v111 + 80) + 32) & ~*(v111 + 80);
        v122 = *(v111 + 72);
        v94 = v93 + v124 + v122 * v78;
        v95 = v109;
        (*(v115 + 16))(v109, v94, v116);
        v96 = v110;
        (*v38)(v95 + *(v110 + 20), v94 + *(v110 + 20), v31);
        v97 = (v95 + *(v96 + 24));
        *v97 = a3;
        v97[1] = a4;
        v97[2] = a5;
        v97[3] = a6;
        swift_beginAccess();
        v98 = v105;
        sub_1002CD290(v78, v105);
        sub_100443C64(v98, type metadata accessor for SDAirDropService.TransferPresenterClient);
        v99 = v95;
        v90 = v106;
        sub_100444014(v99, v106, type metadata accessor for SDAirDropService.TransferPresenterClient);
        v31 = *(v92 + v74);
        v100 = swift_isUniquelyReferenced_nonNull_native();
        *(v92 + v74) = v31;
        v78 = v92;
        if (v100)
        {
LABEL_34:
          v101 = v117;
          v103 = v31[2];
          v102 = v31[3];
          if (v103 >= v102 >> 1)
          {
            v31 = sub_10028EFB8(v102 > 1, v103 + 1, 1, v31);
          }

          v31[2] = v103 + 1;
          sub_10044407C(v90, v31 + v124 + v103 * v122, type metadata accessor for SDAirDropService.TransferPresenterClient);
          *(v78 + v74) = v31;
          swift_endAccess();
          sub_100443C64(v109, type metadata accessor for SDAirDropService.TransferPresenterClient);
          v101(v118, v120);
          return;
        }

LABEL_41:
        v31 = sub_10028EFB8(0, v31[2] + 1, 1, v31);
        *(v78 + v74) = v31;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  sub_100005508(v45, &unk_100976120, &qword_1007F9260);
  v48 = v115;
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000C4AC(v49, qword_10097E3A8);
  v50 = v113;
  v51 = v116;
  (*(v48 + 16))(v113, v121, v116);
  v42 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v52))
  {
    v53 = v48;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v123[0] = v55;
    *v54 = 136315138;
    sub_100443FCC(&qword_1009761E8, &type metadata accessor for SFClientIdentity);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v50;
    v59 = v58;
    (*(v53 + 8))(v57, v51);
    v60 = sub_10000C4E4(v56, v59, v123);

    *(v54 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v42, v52, "No connectionID present - %s", v54, 0xCu);
    sub_10000C60C(v55);

LABEL_15:

LABEL_16:

    return;
  }

  (*(v48 + 8))(v50, v51);
}

uint64_t sub_100439024(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v29 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v28 - v17;
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  SFClientIdentity.connectionID.getter();
  (*(v4 + 16))(v18, a2, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v21 = *(v8 + 56);
  sub_100443CC4(v20, v11);
  sub_100443CC4(v18, &v11[v21]);
  v22 = *(v4 + 48);
  if (v22(v11, 1, v3) != 1)
  {
    sub_100443CC4(v11, v29);
    if (v22(&v11[v21], 1, v3) != 1)
    {
      v24 = &v11[v21];
      v25 = v28;
      (*(v4 + 32))(v28, v24, v3);
      sub_100443FCC(&qword_1009761E0, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v4 + 8);
      v26(v25, v3);
      sub_100005508(v18, &unk_100976120, &qword_1007F9260);
      sub_100005508(v20, &unk_100976120, &qword_1007F9260);
      v26(v29, v3);
      sub_100005508(v11, &unk_100976120, &qword_1007F9260);
      return v23 & 1;
    }

    sub_100005508(v18, &unk_100976120, &qword_1007F9260);
    sub_100005508(v20, &unk_100976120, &qword_1007F9260);
    (*(v4 + 8))(v29, v3);
    goto LABEL_6;
  }

  sub_100005508(v18, &unk_100976120, &qword_1007F9260);
  sub_100005508(v20, &unk_100976120, &qword_1007F9260);
  if (v22(&v11[v21], 1, v3) != 1)
  {
LABEL_6:
    sub_100005508(v11, &unk_100987030, &qword_1007F9330);
    v23 = 0;
    return v23 & 1;
  }

  sub_100005508(v11, &unk_100976120, &qword_1007F9260);
  v23 = 1;
  return v23 & 1;
}

void sub_100439450(uint64_t a1)
{
  v2 = type metadata accessor for SFClientIdentity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SDAirDropService.TransferPresenterClient();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v65 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v73 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v65 - v20;
  __chkstk_darwin(v19);
  v23 = (&v65 - v22);
  SFClientIdentity.connectionID.getter();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100005508(v13, &unk_100976120, &qword_1007F9260);
    if (qword_100973888 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_10097E3A8);
    (*(v3 + 16))(v6, a1, v2);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76[0] = v28;
      *v27 = 136315138;
      sub_100443FCC(&qword_1009761E8, &type metadata accessor for SFClientIdentity);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v3 + 8))(v6, v2);
      v32 = sub_10000C4E4(v29, v31, v76);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "No connectionID present - %s", v27, 0xCu);
      sub_10000C60C(v28);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    (*(v15 + 32))(v23, v13, v14);
    if (qword_100973888 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    v34 = sub_10000C4AC(v33, qword_10097E3A8);
    v66 = *(v15 + 16);
    v67 = v15 + 16;
    v66(v21, v23, v14);
    v68 = v34;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v70 = v15;
    v71 = v23;
    if (v37)
    {
      v38 = v15;
      v39 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v76[0] = v65;
      *v39 = 136315138;
      sub_100443FCC(&qword_100978CE0, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v69 = *(v38 + 8);
      v69(v21, v14);
      v43 = sub_10000C4E4(v40, v42, v76);
      v44 = v77;
      v23 = v71;

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Resigning presenter for connectionID %s", v39, 0xCu);
      sub_10000C60C(v65);
    }

    else
    {

      v69 = *(v15 + 8);
      v69(v21, v14);
      v44 = v77;
    }

    v45 = v74;
    v46 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferPresenters;
    v47 = swift_beginAccess();
    v48 = *(v45 + v46);
    __chkstk_darwin(v47);
    *(&v65 - 2) = v23;

    v49 = v44;
    v50 = sub_1002CCF44(sub_1004440EC, (&v65 - 4), v48);
    v52 = v51;
    v77 = v49;

    if (v52)
    {
      v53 = v73;
      v66(v73, v23, v14);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v75 = v57;
        *v56 = 136315138;
        sub_100443FCC(&qword_100978CE0, &type metadata accessor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v53;
        v61 = v60;
        v62 = v69;
        v69(v59, v14);
        v63 = sub_10000C4E4(v58, v61, &v75);

        *(v56 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v54, v55, "No existing transfer presenter for connectionID %s", v56, 0xCu);
        sub_10000C60C(v57);
      }

      else
      {

        v62 = v69;
        v69(v53, v14);
      }

      v62(v71, v14);
    }

    else
    {
      swift_beginAccess();
      v64 = v72;
      sub_1002CD290(v50, v72);
      sub_100443C64(v64, type metadata accessor for SDAirDropService.TransferPresenterClient);
      swift_endAccess();
      v69(v23, v14);
    }
  }
}

uint64_t sub_100439CF8()
{
  v1 = sub_10028088C(&qword_10097E788, &qword_100804100);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = SFClientIdentity.bundleIdentifier.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    swift_beginAccess();
    sub_10046DAAC(&v12, v8, v9);
    swift_endAccess();
  }

  v11[1] = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transfersSubject);
  sub_10028088C(&qword_10097E688, &qword_1008040D0);
  sub_100011630(&qword_10097E790, &qword_10097E688, &qword_1008040D0);
  Publisher<>.values.getter();
  sub_100011630(&qword_10097E798, &qword_10097E788, &qword_100804100);
  sub_100443FCC(&qword_10097E7A0, &type metadata accessor for SFAirDrop.Transfers);
  sub_100443FCC(&qword_10097E7A8, &type metadata accessor for SFAirDrop.Transfers);
  AsyncSequence<>.xpc.getter();
  return (*(v2 + 8))(v5, v1);
}

uint64_t SDAirDropService.forceRebuild()()
{
  *(v1 + 16) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_100439FE4, v2, 0);
}

uint64_t sub_100439FE4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1002963B0;

  return sub_100383F24();
}

uint64_t SDAirDropService.dumpIDMSDB(url:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043A11C, v3, 0);
}

uint64_t sub_10043A11C()
{
  v1 = *(*(v0[3] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_10043A210;
    v3 = v0[2];

    return sub_100664D94(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10043A210()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t SDAirDropService.description.getter()
{
  type metadata accessor for SFAirDropUserDefaults();
  v0 = static SFAirDropUserDefaults.shared.getter();
  v1 = SFAirDropUserDefaults.description.getter();

  return v1;
}

id SDAirDropService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAirDropService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10043A598@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SFPlatform();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferPresenters;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v10 - 1;
    v12 = type metadata accessor for SDAirDropService.TransferPresenterClient();
    v13 = v9 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v11;
    v14 = *(v12 + 20);
    v15 = type metadata accessor for SFAirDropClient.Identifier();
    return (*(*(v15 - 8) + 16))(a1, v13 + v14, v15);
  }

  else
  {
    static SFPlatform.iOS.getter();
    v17 = static SFPlatform.isPlatform(_:)();
    (*(v4 + 8))(v7, v3);
    v18 = type metadata accessor for SFAirDropClient.Identifier();
    if (v17)
    {
      v19 = &enum case for SFAirDropClient.Identifier.airdropUI(_:);
    }

    else
    {
      v19 = &enum case for SFAirDropClient.Identifier.daemon(_:);
    }

    return (*(*(v18 - 8) + 104))(a1, *v19, v18);
  }
}

uint64_t SFAirDropInvocations.Send.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10043A864, 0, 0);
}

uint64_t sub_10043A864()
{
  v1 = v0[5];
  v2 = *(v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sendService);
  SFClientIdentity.bundleIdentifier.getter();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10043A930;
  v5 = v0[8];
  v6 = v0[3];

  return sub_100313770(v5, v6);
}

uint64_t sub_10043A930()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10043AB60;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_10043AA4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10043AA4C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  sub_100443FCC(&qword_10097E3D8, &type metadata accessor for SFAirDropSend.Transfer);
  sub_100443FCC(&qword_10097E3E0, &type metadata accessor for SFAirDropSend.Transfer);
  SFProgressTask<>.xpc.getter();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10043AB60()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_10043ABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E780, &type metadata accessor for SFAirDropInvocations.Send);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043AD00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v6 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a3;
  v4[7] = v9;
  v4[8] = v10;

  return _swift_task_switch(sub_10043ADD8, 0, 0);
}

uint64_t sub_10043ADD8()
{
  v1 = v0[4];
  v2 = *(v0[8] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sendService);
  SFClientIdentity.bundleIdentifier.getter();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10043AEA8;
  v5 = v0[7];
  v6 = v0[3];

  return sub_100313770(v5, v6);
}

uint64_t sub_10043AEA8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10043B0D8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_10043AFC4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10043AFC4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  sub_100443FCC(&qword_10097E3D8, &type metadata accessor for SFAirDropSend.Transfer);
  sub_100443FCC(&qword_10097E3E0, &type metadata accessor for SFAirDropSend.Transfer);
  SFProgressTask<>.xpc.getter();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10043B0D8()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t SFAirDropInvocations.Cancel.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10043B16C, 0, 0);
}

uint64_t sub_10043B16C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_sendService);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10043B210;
  v3 = v0[3];

  return sub_100317544(v3);
}

uint64_t sub_10043B210()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_10043B438;
  }

  else
  {
    v3 = sub_100444114;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10043B324()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10043B62C;
  }

  else
  {
    v3 = sub_100444114;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10043B438()
{
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[9] = sub_10000C4AC(v2, qword_10097E3A8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Send cancel failed %@, attempting receive cancel with same transferID", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v10 = *(v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService);
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_10043B324;
  v12 = v0[3];

  return sub_100396FFC(v12);
}

uint64_t sub_10043B62C()
{
  v2 = v0[8];
  v1 = v0[9];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Receive cancel failed %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v9 = v0[8];

  v10 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100443FCC(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v10 - 8) + 104))(v11, enum case for SFAirDropReceive.Failure.badRequest(_:), v10);
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10043B81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E778, &type metadata accessor for SFAirDropInvocations.Cancel);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043B950(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.Cancel.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.FetchUserDefaults.invoke(with:context:client:)()
{
  type metadata accessor for SFAirDropUserDefaults();
  v0 = static SFAirDropUserDefaults.shared.getter();
  v1 = SFAirDropUserDefaults.userDefaultDescriptions.getter();

  return v1;
}

uint64_t sub_10043BA58()
{
  v1 = *v0;
  sub_100443FCC(&qword_10097E770, &type metadata accessor for SFAirDropInvocations.FetchUserDefaults);
  return _AnySFXPCSyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlockContainer:responseAsyncSequenceContainer:responseXPCBlockContainer:)();
}

void sub_10043BB20(uint64_t *a1@<X8>)
{
  type metadata accessor for SFAirDropUserDefaults();
  v3 = static SFAirDropUserDefaults.shared.getter();
  v4 = SFAirDropUserDefaults.userDefaultDescriptions.getter();

  if (!v1)
  {
    *a1 = v4;
  }
}

uint64_t SFAirDropInvocations.FetchEndpointMetadata.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10043BBA8, 0, 0);
}

uint64_t sub_10043BBA8()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10043BC4C;
  v3 = v0[2];
  v4 = v0[3];

  return sub_10047F580(v3, v4);
}

uint64_t sub_10043BC4C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10043BD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E768, &type metadata accessor for SFAirDropInvocations.FetchEndpointMetadata);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043BE78(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *a3;
  return _swift_task_switch(sub_10043BEA0, 0, 0);
}

uint64_t sub_10043BEA0()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1004440E8;
  v3 = v0[2];
  v4 = v0[3];

  return sub_10047F580(v3, v4);
}

uint64_t SFAirDropInvocations.BecomeTransferPresenter.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SFAirDropClient.Identifier();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10043C008, 0, 0);
}

uint64_t sub_10043C008()
{
  v1 = v0[8];
  v2 = v0[3];
  SFAirDropInvocations.BecomeTransferPresenter.Parameters.clientIdentifier.getter();
  SFAirDropInvocations.BecomeTransferPresenter.Parameters.animationRect.getter();
  v0[9] = v3;
  v0[10] = v4;
  v0[11] = v5;
  v0[12] = v6;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043C0B8, v7, 0);
}

uint64_t sub_10043C0B8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  sub_100438288(*(v0 + 40), v1, *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  *(v0 + 104) = 0;
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10043C178, 0, 0);
}

uint64_t sub_10043C178()
{
  v1 = v0[8];
  v2 = v0[2];
  VoidResponse.init()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10043C1E8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_10043C24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E760, &type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043C380(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v6 = type metadata accessor for SFAirDropClient.Identifier();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a3;
  v4[7] = v9;
  v4[8] = v10;

  return _swift_task_switch(sub_10043C44C, 0, 0);
}

uint64_t sub_10043C44C()
{
  v1 = v0[7];
  v2 = v0[3];
  SFAirDropInvocations.BecomeTransferPresenter.Parameters.clientIdentifier.getter();
  SFAirDropInvocations.BecomeTransferPresenter.Parameters.animationRect.getter();
  v0[9] = v3;
  v0[10] = v4;
  v0[11] = v5;
  v0[12] = v6;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043C4FC, v7, 0);
}

uint64_t sub_10043C4FC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100438288(*(v0 + 32), v1, *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  *(v0 + 104) = 0;
  (*(v3 + 8))(v1, v2);

  return _swift_task_switch(sub_10043C5BC, 0, 0);
}

uint64_t sub_10043C5BC()
{
  v1 = v0[7];
  v2 = v0[2];
  VoidResponse.init()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10043C62C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t SFAirDropInvocations.ResignTransferPresenter.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return _swift_task_switch(sub_10043C6B4, 0, 0);
}

uint64_t sub_10043C6B4()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043C74C, v0, 0);
}

uint64_t sub_10043C74C()
{
  v1 = *(v0 + 24);
  sub_100439450(*(v0 + 32));

  return _swift_task_switch(sub_100444114, 0, 0);
}

uint64_t sub_10043C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E758, &type metadata accessor for SFAirDropInvocations.ResignTransferPresenter);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043C930(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = *a3;
  return _swift_task_switch(sub_10043C958, 0, 0);
}

uint64_t sub_10043C958()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043C9F0, v0, 0);
}

uint64_t sub_10043C9F0()
{
  v1 = *(v0 + 32);
  sub_100439450(*(v0 + 24));

  return _swift_task_switch(sub_100444114, 0, 0);
}

uint64_t SFAirDropInvocations.TransfersMonitor.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return _swift_task_switch(sub_10043CAC4, 0, 0);
}

uint64_t sub_10043CAC4()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043CB5C, v0, 0);
}

uint64_t sub_10043CB5C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_100439CF8();
  v4 = v0[1];

  return v4();
}

uint64_t sub_10043CBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E750, &type metadata accessor for SFAirDropInvocations.TransfersMonitor);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043CCF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = *a3;
  return _swift_task_switch(sub_10043CD20, 0, 0);
}

uint64_t sub_10043CD20()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043CDB8, v0, 0);
}

uint64_t sub_10043CDB8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_100439CF8();
  v4 = v0[1];

  return v4();
}

uint64_t SFAirDropInvocations.StartNearbySharingDiscovery.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_10043CE44, 0, 0);
}

uint64_t sub_10043CE44()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043CEE0, v1, 0);
}

uint64_t sub_10043CEE0()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043CF6C, 0, 0);
}

uint64_t sub_10043CF6C()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v0[15] = v2;
  v0[16] = v3;
  v0[17] = sub_10002CDC0(v0 + 2, v2);
  v0[18] = *(v3 + 120);
  v0[19] = (v3 + 120) & 0xFFFFFFFFFFFFLL | 0xE398000000000000;

  return _swift_task_switch(sub_10043CFF0, v1, 0);
}

uint64_t sub_10043CFF0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  (*(v0 + 144))(*(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_1004440E4, 0, 0);
}

uint64_t sub_10043D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E748, &type metadata accessor for SFAirDropInvocations.StartNearbySharingDiscovery);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043D19C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C00;

  return SFAirDropInvocations.StartNearbySharingDiscovery.invoke(with:context:client:)(a1, a2, v8, a4);
}

uint64_t SFAirDropInvocations.StopNearbySharingDiscovery.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_10043D278, 0, 0);
}

uint64_t sub_10043D278()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043D314, v1, 0);
}

uint64_t sub_10043D314()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043D3A0, 0, 0);
}

uint64_t sub_10043D3A0()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v0[15] = v2;
  v0[16] = v3;
  v0[17] = sub_10002CDC0(v0 + 2, v2);
  v0[18] = *(v3 + 144);
  v0[19] = (v3 + 144) & 0xFFFFFFFFFFFFLL | 0xDF4C000000000000;

  return _swift_task_switch(sub_10043D424, v1, 0);
}

uint64_t sub_10043D424()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  (*(v0 + 144))(*(v0 + 88), *(v0 + 96), *(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10043D498, 0, 0);
}

uint64_t sub_10043D498()
{
  v1 = v0[10];
  sub_10000C60C(v0 + 2);
  VoidResponse.init()();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10043D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E740, &type metadata accessor for SFAirDropInvocations.StopNearbySharingDiscovery);
  *v18 = v15;
  v18[1] = sub_10043D63C;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043D63C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_10043D74C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005C04;

  return SFAirDropInvocations.StopNearbySharingDiscovery.invoke(with:context:client:)(a1, v5, v6, v7);
}

uint64_t SFAirDropInvocations.TakeNearbySharingAssertion.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_10043D824, 0, 0);
}

uint64_t sub_10043D824()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043D8C0, v1, 0);
}

uint64_t sub_10043D8C0()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043D94C, 0, 0);
}

uint64_t sub_10043D94C()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v0[15] = v2;
  v0[16] = v3;
  v0[17] = sub_10002CDC0(v0 + 2, v2);
  v0[18] = *(v3 + 152);
  v0[19] = (v3 + 152) & 0xFFFFFFFFFFFFLL | 0xC728000000000000;

  return _swift_task_switch(sub_10043D9D0, v1, 0);
}

uint64_t sub_10043D9D0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  (*(v0 + 144))(*(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10043DA48, 0, 0);
}

uint64_t sub_10043DA48()
{
  sub_10000C60C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E738, &type metadata accessor for SFAirDropInvocations.TakeNearbySharingAssertion);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043DBE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v5 = *a3;
  v4[12] = a4;
  v4[13] = v5;
  return _swift_task_switch(sub_10043DC08, 0, 0);
}

uint64_t sub_10043DC08()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043DCA4, v1, 0);
}

uint64_t sub_10043DCA4()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043DD30, 0, 0);
}

uint64_t sub_10043DD30()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v0[15] = v2;
  v0[16] = v3;
  v0[17] = sub_10002CDC0(v0 + 2, v2);
  v0[18] = *(v3 + 152);
  v0[19] = (v3 + 152) & 0xFFFFFFFFFFFFLL | 0xC728000000000000;

  return _swift_task_switch(sub_10043DDB4, v1, 0);
}

uint64_t sub_10043DDB4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  (*(v0 + 144))(*(v0 + 88), *(v0 + 96), *(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10044410C, 0, 0);
}

uint64_t SFAirDropInvocations.ReleaseNearbySharingAssertion.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_10043DE50, 0, 0);
}

uint64_t sub_10043DE50()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 104) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043DEEC, v1, 0);
}

uint64_t sub_10043DEEC()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043DF78, 0, 0);
}

uint64_t sub_10043DF78()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  v0[14] = v2;
  v0[15] = v3;
  v0[16] = sub_10002CDC0(v0 + 2, v2);
  v0[17] = *(v3 + 160);
  v0[18] = (v3 + 160) & 0xFFFFFFFFFFFFLL | 0x733A000000000000;

  return _swift_task_switch(sub_10043DFFC, v1, 0);
}

uint64_t sub_10043DFFC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  (*(v0 + 136))(*(v0 + 88), *(v0 + 112), *(v0 + 120));

  return _swift_task_switch(sub_1004440E4, 0, 0);
}

uint64_t sub_10043E070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E730, &type metadata accessor for SFAirDropInvocations.ReleaseNearbySharingAssertion);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043E1A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.ReleaseNearbySharingAssertion.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.NearbySharingInteractions.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = sub_10028088C(&qword_10097E400, &unk_1008031C8);
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10043E320, 0, 0);
}

uint64_t sub_10043E320()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 120) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043E3BC, v1, 0);
}

uint64_t sub_10043E3BC()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043E448, 0, 0);
}

uint64_t sub_10043E448()
{
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[6];
  v0[16] = v2;
  v0[17] = v3;
  v0[18] = sub_10002CDC0(v0 + 2, v2);
  v0[19] = *(v3 + 96);
  v0[20] = (v3 + 96) & 0xFFFFFFFFFFFFLL | 0x63B4000000000000;

  return _swift_task_switch(sub_10043E4CC, v1, 0);
}

uint64_t sub_10043E4CC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  (*(v0 + 152))(*(v0 + 128), *(v0 + 136));

  return _swift_task_switch(sub_10043E540, 0, 0);
}

uint64_t sub_10043E540()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  sub_100011630(&qword_10097E408, &qword_10097E400, &unk_1008031C8);
  sub_100442CB4(&qword_10097E410, &qword_10097E418);
  sub_100442CB4(&qword_10097E420, &qword_10097E428);
  AsyncSequence<>.xpc.getter();
  (*(v2 + 8))(v1, v3);
  sub_10000C60C(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10043E6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E728, &type metadata accessor for SFAirDropInvocations.NearbySharingInteractions);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043E7DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.NearbySharingInteractions.invoke(with:context:client:)(a1, v6, v5);
}

uint64_t SFAirDropInvocations.SimulateNearbySharingInteractions.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_10043E8A0, 0, 0);
}

uint64_t sub_10043E8A0()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 104) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043E93C, v1, 0);
}

uint64_t sub_10043E93C()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043E9C8, 0, 0);
}

uint64_t sub_10043E9C8()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  v0[14] = v2;
  v0[15] = v3;
  v0[16] = sub_10002CDC0(v0 + 2, v2);
  v0[17] = *(v3 + 56);
  v0[18] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xB8A1000000000000;

  return _swift_task_switch(sub_10043DFFC, v1, 0);
}

uint64_t sub_10043EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E720, &type metadata accessor for SFAirDropInvocations.SimulateNearbySharingInteractions);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043EB80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.SimulateNearbySharingInteractions.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.BoopAtADistanceBegin.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_10043EC54, 0, 0);
}

uint64_t sub_10043EC54()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043ECEC, v0, 0);
}

uint64_t sub_10043ECEC()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043ED78, 0, 0);
}

uint64_t sub_10043ED78()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10002CDC0(v0 + 2, v1);
  v3 = *(v2 + 64);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_10043EEA4;
  v6 = v0[10];
  v7 = v0[11];

  return v9(v6, v7, v1, v2);
}

uint64_t sub_10043EEA4()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_10043EFB8;
  }

  else
  {
    v3 = sub_10044410C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10043EFB8()
{
  sub_10000C60C(v0 + 2);
  v1 = v0[1];
  v2 = v0[14];

  return v1();
}

uint64_t sub_10043F01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E718, &type metadata accessor for SFAirDropInvocations.BoopAtADistanceBegin);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043F150(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.BoopAtADistanceBegin.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.BoopAtADistanceUpdate.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10043F320, 0, 0);
}

uint64_t sub_10043F320()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10043F3B8, v0, 0);
}

uint64_t sub_10043F3B8()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043F444, 0, 0);
}

uint64_t sub_10043F444()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[5];
  v5 = v0[6];
  sub_10002CDC0(v0 + 2, v4);
  SFAirDropInvocations.BoopAtADistanceUpdate.Parameters.transaction.getter();
  SFAirDropInvocations.BoopAtADistanceUpdate.Parameters.tap.getter();
  v6 = *(v5 + 72);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_10043F5A4;
  v9 = v0[18];
  v10 = v0[15];

  return v12(v9, v10, v4, v5);
}

uint64_t sub_10043F5A4()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *(*v1 + 104);
  v11 = *v1;
  *(*v1 + 160) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_10043F808;
  }

  else
  {
    v9 = sub_10043F778;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10043F778()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[10];
  sub_10000C60C(v0 + 2);
  VoidResponse.init()();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10043F808()
{
  v1 = v0[18];
  v2 = v0[15];
  sub_10000C60C(v0 + 2);

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_10043F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E710, &type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043F9B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.BoopAtADistanceUpdate.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.BoopAtADistanceEnd.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return _swift_task_switch(sub_10043FA8C, 0, 0);
}

uint64_t sub_10043FA8C()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 104) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043FB28, v1, 0);
}

uint64_t sub_10043FB28()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10043FBB4, 0, 0);
}

uint64_t sub_10043FBB4()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  v0[14] = v2;
  v0[15] = v3;
  v0[16] = sub_10002CDC0(v0 + 2, v2);
  v0[17] = *(v3 + 80);
  v0[18] = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0xE0BE000000000000;

  return _swift_task_switch(sub_10043FC38, v1, 0);
}

uint64_t sub_10043FC38()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  (*(v0 + 136))(*(v0 + 88), *(v0 + 112), *(v0 + 120));
  *(v0 + 152) = 0;

  return _swift_task_switch(sub_1004440E4, 0, 0);
}

uint64_t sub_10043FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E708, &type metadata accessor for SFAirDropInvocations.BoopAtADistanceEnd);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10043FE04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.BoopAtADistanceEnd.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.EndNearbySharingInteraction.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10043FF54, 0, 0);
}

uint64_t sub_10043FF54()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 112) = static AirDropActor.shared;

  return _swift_task_switch(sub_10043FFF0, v1, 0);
}

uint64_t sub_10043FFF0()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 16);

  return _swift_task_switch(sub_10044007C, 0, 0);
}

uint64_t sub_10044007C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[5];
  v5 = v0[6];
  v0[15] = v4;
  v0[16] = v5;
  v0[17] = sub_10002CDC0(v0 + 2, v4);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v3, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v0[18] = *(v5 + 88);
  v0[19] = (v5 + 88) & 0xFFFFFFFFFFFFLL | 0x898B000000000000;

  return _swift_task_switch(sub_100440188, v2, 0);
}

uint64_t sub_100440188()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  (*(v0 + 144))(v3, *(v0 + 120), *(v0 + 128));
  sub_100005508(v3, &unk_100976120, &qword_1007F9260);

  return _swift_task_switch(sub_100440218, 0, 0);
}

uint64_t sub_100440218()
{
  v1 = v0[13];
  v2 = v0[10];
  sub_10000C60C(v0 + 2);
  VoidResponse.init()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100440294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E700, &type metadata accessor for SFAirDropInvocations.EndNearbySharingInteraction);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1004403C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.EndNearbySharingInteraction.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t SFAirDropInvocations.StartTempPairing.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_10028088C(&qword_10097D810, &qword_100803210);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100440544, 0, 0);
}

uint64_t sub_100440544()
{
  v0[10] = *(v0[6] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  v0[11] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004405F4, v1, 0);
}

uint64_t sub_1004405F4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_100421A28();

  return _swift_task_switch(sub_10044065C, v1, 0);
}

uint64_t sub_10044065C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdates;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v6, v3);
  sub_100011630(&qword_10097E438, &qword_10097D810, &qword_100803210);
  sub_100443FCC(&qword_10097E440, &type metadata accessor for SFTempPairingSenderStateUpdate);
  sub_100443FCC(&qword_10097E448, &type metadata accessor for SFTempPairingSenderStateUpdate);
  AsyncSequence<>.xpc.getter();
  (*(v4 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004407E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E6F8, &type metadata accessor for SFAirDropInvocations.StartTempPairing);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_100440918(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005C00;

  return SFAirDropInvocations.StartTempPairing.invoke(with:context:client:)(a1, v6, v7, v5);
}

uint64_t SFAirDropInvocations.StopTempPairing.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1004409D8, 0, 0);
}

uint64_t sub_1004409D8()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_100440A84, v1, 0);
}

uint64_t sub_100440A84()
{
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server))
  {
    v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server);

    sub_100593254();

    v4 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  return _swift_task_switch(sub_100440B28, 0, 0);
}

uint64_t sub_100440B28()
{
  v1 = *(v0 + 16);
  VoidResponse.init()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100440B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E6F0, &type metadata accessor for SFAirDropInvocations.StopTempPairing);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_100440CC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return SFAirDropInvocations.StopTempPairing.invoke(with:context:client:)(a1, v6, v5);
}

uint64_t SFAirDropInvocations.TempPairingMonitor.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100440D80, 0, 0);
}

uint64_t sub_100440D80()
{
  v0[4] = *(v0[3] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  v0[5] = static AirDropActor.shared;

  return _swift_task_switch(sub_100440E30, v1, 0);
}

uint64_t sub_100440E30()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_100420850();

  return _swift_task_switch(sub_100440E98, v1, 0);
}

uint64_t sub_100440E98()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_10028088C(&qword_10097D820, &unk_100801F18);
  sub_100011630(&qword_10097E450, &qword_10097D820, &unk_100801F18);
  sub_100443FCC(&qword_10097E458, &type metadata accessor for SFTempPairingStateUpdate);
  sub_100443FCC(&qword_10097E460, &type metadata accessor for SFTempPairingStateUpdate);
  AsyncSequence<>.xpc.getter();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100440FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E6E8, &type metadata accessor for SFAirDropInvocations.TempPairingMonitor);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_100441118(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_100440D80, 0, 0);
}

uint64_t sub_100441164()
{
  v1 = *v0;
  sub_100443FCC(&qword_10097E6E0, &type metadata accessor for SFAirDropInvocations.SharingName);
  return _AnySFXPCSyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlockContainer:responseAsyncSequenceContainer:responseXPCBlockContainer:)();
}

id sub_10044122C@<X0>(void *a1@<X8>)
{
  result = sub_100421844();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SFAirDropInvocations.TempPairingConnect.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10044127C, 0, 0);
}

uint64_t sub_10044127C()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_100441328, v1, 0);
}

uint64_t sub_100441328()
{
  v1 = *(v0 + 32);
  sub_100420C00();

  return _swift_task_switch(sub_100444114, 0, 0);
}

uint64_t sub_100441390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E6D8, &type metadata accessor for SFAirDropInvocations.TempPairingConnect);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1004414C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_1004414E8, 0, 0);
}

uint64_t sub_1004414E8()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_100441594, v1, 0);
}

uint64_t sub_100441594()
{
  v1 = *(v0 + 32);
  sub_100420C00();

  return _swift_task_switch(sub_100440B28, 0, 0);
}

uint64_t SFAirDropInvocations.TempPairingDisconnect.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10044161C, 0, 0);
}

uint64_t sub_10044161C()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_pairingService);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004416C8, v1, 0);
}

uint64_t sub_1004416C8()
{
  v1 = *(v0 + 32);
  sub_100420D34();

  return _swift_task_switch(sub_100444114, 0, 0);
}

uint64_t sub_100441730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E6D0, &type metadata accessor for SFAirDropInvocations.TempPairingDisconnect);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_100441864(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_10044161C, 0, 0);
}

uint64_t SFAirDropInvocations.Discoverability.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1004418A8, 0, 0);
}

uint64_t sub_1004418A8()
{
  if (*(v0[3] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus))
  {
    SDStatusMonitor.currentDiscoverabilityMode.getter(v0[2]);
    v1 = v0[1];

    return v1();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100441924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E6C8, &type metadata accessor for SFAirDropInvocations.Discoverability);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_100441A58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_1004418A8, 0, 0);
}

void sub_100441A9C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus))
  {
    v1 = SDStatusMonitor.availableDiscoverability.getter();
    v2 = *(v0 + 8);

    v2(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100441B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E6C0, &type metadata accessor for SFAirDropInvocations.AvailableDiscoverability);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_100441C48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return _swift_task_switch(sub_100441C6C, 0, 0);
}

void sub_100441C6C()
{
  if (*(v0[3] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus))
  {
    v1 = v0[2];
    *v1 = SDStatusMonitor.availableDiscoverability.getter();
    v2 = v0[1];

    v2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100441DB0, 0, 0);
}

uint64_t sub_100441DB0()
{
  if (*(v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus))
  {
    v2 = v0[6];
    v1 = v0[7];
    v3 = v0[5];
    v4 = v0[3];
    SFAirDropInvocations.ChangeDiscoverability.Parameters.discoverabilityMode.getter();
    SDStatusMonitor.change(discoverabilityMode:)(v1);
    (*(v2 + 8))(v1, v3);
    v5 = v0[7];
    v6 = v0[2];
    VoidResponse.init()();

    v7 = v0[1];

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100441EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E6B8, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_100441FDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a3;
  v3[6] = v8;
  v3[7] = v9;

  return _swift_task_switch(sub_1004420A4, 0, 0);
}

uint64_t sub_1004420A4()
{
  if (*(v0[7] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_deviceStatus))
  {
    v2 = v0[5];
    v1 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    SFAirDropInvocations.ChangeDiscoverability.Parameters.discoverabilityMode.getter();
    SDStatusMonitor.change(discoverabilityMode:)(v1);
    (*(v2 + 8))(v1, v4);
    v5 = v0[6];
    v6 = v0[2];
    VoidResponse.init()();

    v7 = v0[1];

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SFAirDropInvocations.UserSafetyIntervention.invoke(with:context:client:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1004421B8, 0, 0);
}

uint64_t sub_1004421B8()
{
  v0[4] = [objc_allocWithZone(type metadata accessor for SDAirDropUserSafetyInterventionAlert()) init];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10044226C;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1004B1884(v2, v3);
}

uint64_t sub_10044226C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004423A8, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1004423A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_10044240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E6B0, &type metadata accessor for SFAirDropInvocations.UserSafetyIntervention);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_100442540(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100442560, 0, 0);
}

uint64_t sub_100442560()
{
  v0[4] = [objc_allocWithZone(type metadata accessor for SDAirDropUserSafetyInterventionAlert()) init];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100442614;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1004B1884(v2, v3);
}

uint64_t sub_100442614()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100444110, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t SFAirDropInvocations.ItemDestinationAlert.invoke(with:context:client:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1004427F8;

  return sub_1002943BC(a1);
}

uint64_t sub_1004427F8(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    if (a2)
    {
      v10 = a1;
    }

    else
    {
      v10 = 0;
    }

    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12 = *(v7 + 8);

    return v12(v10, v11);
  }
}

uint64_t sub_100442944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_100443FCC(&qword_10097E6A8, &type metadata accessor for SFAirDropInvocations.ItemDestinationAlert);
  *v18 = v15;
  v18[1] = sub_100444108;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_100442A78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100442B24;

  return sub_1002943BC(a2);
}

uint64_t sub_100442B24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100442C80, 0, 0);
  }
}

uint64_t sub_100442C80()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  if (!v2)
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  *v3 = v1;
  v3[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100442CB4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&qword_100976218, &unk_1007F9370);
    sub_100443FCC(a2, &type metadata accessor for SFAirDrop.NearbySharingInteraction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SDAirDropService.TransferPresenterClient()
{
  result = qword_10097E628;
  if (!qword_10097E628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004435A4()
{
  type metadata accessor for SFClientIdentity();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SFAirDropClient.Identifier();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100443640(uint64_t a1)
{
  v2 = type metadata accessor for SFClientIdentity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973888 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_10097E3A8);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_100443FCC(&qword_1009761E8, &type metadata accessor for SFClientIdentity);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_10000C4E4(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "New AirDrop Client %s", v10, 0xCu);
    sub_10000C60C(v11);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1004438B0(uint64_t a1)
{
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100444014(a1, v18, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v32 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      v33 = v18;
LABEL_13:
      sub_100443C64(v33, v32);
      goto LABEL_14;
    }

    sub_10044407C(v18, v6, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v26 = &v6[*(v3 + 28)];
    v23 = *v26;
    v25 = v26[1];

    sub_100443C64(v6, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    if (v25)
    {
      goto LABEL_10;
    }

LABEL_14:
    v31 = 0;
    return v31 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10044407C(v18, v10, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v27 = &v10[*(v7 + 44)];
    v23 = *v27;
    v25 = v27[1];

    sub_100443C64(v10, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v25)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v20 = v1;
  sub_10044407C(v18, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    contact_id = nw_endpoint_get_contact_id();
    swift_unknownObjectRelease();
    if (contact_id)
    {
      v1 = v20;
      v23 = String.init(cString:)();
      v25 = v24;
      sub_100443C64(v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
LABEL_10:
      v28 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
      swift_beginAccess();
      sub_1002A9938(v1 + v28, v35);
      v29 = v36;
      v30 = v37;
      sub_10002CDC0(v35, v36);
      v31 = (*(v30 + 104))(v23, v25, v29, v30);

      sub_10000C60C(v35);
      return v31 & 1;
    }

    v32 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v33 = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100443C64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100443CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100443D34@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_100443D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100376CC4(a1, v4, v5, v6);
}

uint64_t sub_100443E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097AD60, &qword_1007FDFD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100443E88(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097E668, &qword_1008040C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_100436FE4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100443FCC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100444014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044407C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100444118()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097E7C0);
  v1 = sub_10000C4AC(v0, qword_10097E7C0);
  if (qword_100973720 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A09A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004441E0()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = *(v1 - 8);
  v19 = v1;
  v2 = *(v18 + 64);
  __chkstk_darwin(v1);
  v17 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_transferObserver;
  *&v0[v8] = [objc_allocWithZone(SFAirDropTransferObserver) init];
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_progressObserversById] = &_swiftEmptyDictionarySingleton;
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession;
  *&v0[v9] = [objc_allocWithZone(type metadata accessor for AirDropUISessionClient()) init];
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIBundleIdentifier];
  *v10 = 0xD00000000000001BLL;
  *(v10 + 1) = 0x80000001007911D0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_assertionDurationInSeconds] = 2;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion] = 0;
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_ongoingWalletTransferStartDate;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(&v0[v11], 1, 1, v12);
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue;
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v18 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *&v0[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = type metadata accessor for SDAirDropUISessionManager();
  v20.receiver = v0;
  v20.super_class = v13;
  return objc_msgSendSuper2(&v20, "init");
}

uint64_t sub_1004445A0()
{
  v1 = v0;
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E7C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activate AirDrop UI session manager.", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_transferObserver);
  [v6 setDelegate:v1];
  [v6 activate];
  *(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession) + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_delegate + 8) = &off_1008E1BA0;

  return swift_unknownObjectWeakAssign();
}

void sub_10044472C(void *a1)
{
  v2 = v1;
  v4 = [a1 identifier];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  if (*(*(v1 + v8) + 16))
  {
    v9 = *(v1 + v8);

    sub_100012854(v5, v7);
    if (v10)
    {

      return;
    }
  }

  swift_beginAccess();

  v11 = a1;
  v12 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60[0] = *(v1 + v8);
  *(v1 + v8) = 0x8000000000000000;
  sub_10057B450(v11, v5, v7, isUniquelyReferenced_nonNull_native);

  *(v1 + v8) = v60[0];
  swift_endAccess();
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097E7C0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v61[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10000C4E4(v5, v7, v61);
    _os_log_impl(&_mh_execute_header, v15, v16, "Tracking new transfer session with AirDropUI over XPC: %s", v17, 0xCu);
    sub_10000C60C(v18);
  }

  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession;
  v20 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession);
  v21 = *&v20[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer];
  if (v21 || (v22 = v20, sub_10044BF04(), v22, (v21 = *(*(v2 + v19) + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer)) != 0))
  {
    v58 = v4;
    swift_unknownObjectRetain();
    v57 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{objc_msgSend(v11, "transferState")}];
    v23 = &selRef_loadManaged;
    v24 = [v11 metaData];
    v25 = [v24 senderIsMe];

    v56 = [objc_allocWithZone(NSNumber) initWithBool:v25];
    v55 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v11, "itemCount")}];
    v26 = [v11 metaData];
    v27 = [v26 senderCompositeName];

    v28 = [v11 contentsDescription];
    if (!v28)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = String._bridgeToObjectiveC()();
    }

    v29 = [v11 metaData];
    v30 = [v29 smallPreviewImage];

    if (v30)
    {
      v31 = v27;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10000C5B0(v61, v60);
      type metadata accessor for CGImage(0);
      swift_dynamicCast();
      v32 = sub_100117E28(v59, 0);
      if (!v32)
      {

        __break(1u);
LABEL_32:

        __break(1u);
        return;
      }

      v33 = v32;
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      sub_10000C60C(v61);
      v27 = v31;
      v23 = &selRef_loadManaged;
    }

    else
    {
      v34 = 0;
      v36 = 0xF000000000000000;
    }

    v37 = [v11 v23[156]];
    v38 = [v37 previewImage];

    if (!v38)
    {
      v39 = v21;

      if (v36 >> 60 == 15)
      {
        v42 = v28;
        v46 = v27;
        v47 = 0;
        v54 = v34;
LABEL_26:
        sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
        [v39 transferStartedForIdentifier:v58 isFromMe:v56 withTransferState:v57 itemCount:v55 senderName:v46 localizedTransferDescription:v42 previewImageData:v47 previewImageIsSensitive:isa];
        swift_unknownObjectRelease();

        sub_10028BCC0(v54, v36);
        return;
      }

      v31 = v27;
      v42 = v28;
      v43 = v34;
LABEL_25:
      v46 = v31;
      v54 = v43;
      v47 = Data._bridgeToObjectiveC()().super.isa;
      goto LABEL_26;
    }

    v31 = v27;
    v39 = v21;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000C5B0(v61, v60);
    type metadata accessor for CGImage(0);
    swift_dynamicCast();
    v40 = sub_100117E28(v59, 0);
    if (v40)
    {
      v41 = v40;
      v42 = v28;

      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
      sub_10028BCC0(v34, v36);

      sub_10000C60C(v61);
      v36 = v45;
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v61[0] = v52;
    *v51 = 136315138;
    v53 = sub_10000C4E4(v5, v7, v61);

    *(v51 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v49, v50, "AirDropUI server was not found, cannot track transfer: %s", v51, 0xCu);
    sub_10000C60C(v52);
  }

  else
  {
  }
}

void sub_100444E9C(void *a1)
{
  v2 = v1;
  v4 = [a1 identifier];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  if (!*(*(v1 + v8) + 16))
  {

LABEL_11:
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097E7C0);

    v4 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80[0] = v23;
      *v22 = 136315138;
      v24 = sub_10000C4E4(v5, v7, v80);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v4, v21, "Transfer not tracked. Skipping update. %s", v22, 0xCu);
      sub_10000C60C(v23);
    }

    else
    {
    }

    goto LABEL_16;
  }

  v9 = *(v1 + v8);

  sub_100012854(v5, v7);
  if ((v10 & 1) == 0)
  {

    goto LABEL_11;
  }

  swift_beginAccess();

  v11 = a1;
  v12 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(v1 + v8);
  *(v1 + v8) = 0x8000000000000000;
  sub_10057B450(v11, v5, v7, isUniquelyReferenced_nonNull_native);

  *(v1 + v8) = v79;
  swift_endAccess();
  sub_100445C48(v11);
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097E7C0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v80[0] = v18;
    *v17 = 136315138;
    v19 = sub_10000C4E4(v5, v7, v80);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Updating transfer session with AirDropUI over XPC: %s", v17, 0xCu);
    sub_10000C60C(v18);
  }

  else
  {
  }

  v25 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession;
  v26 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession);
  v27 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer];
  if (!v27)
  {
    v28 = v26;
    sub_10044BF04();

    v27 = *(*(v2 + v25) + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer);
    if (!v27)
    {
LABEL_16:

      return;
    }
  }

  swift_unknownObjectRetain();
  v72 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{objc_msgSend(v11, "transferState")}];
  if ([v11 userResponse] == 1)
  {
    v29 = 1;
  }

  else
  {
    v30 = [v11 metaData];
    v29 = [v30 didAutoAccept];
  }

  v75 = [objc_allocWithZone(NSNumber) initWithBool:v29];
  v31 = [v11 transferProgress];
  if (v31)
  {
    v32 = v31;
    v74 = [objc_allocWithZone(NSNumber) initWithLongLong:{objc_msgSend(v31, "completedUnitCount")}];
    v33 = [objc_allocWithZone(NSNumber) initWithLongLong:{objc_msgSend(v32, "totalUnitCount")}];
  }

  else
  {
    v34 = [objc_allocWithZone(NSNumber) initWithInteger:0];
    v35 = objc_allocWithZone(NSNumber);
    v74 = v34;
    v33 = [v35 initWithInteger:0];
  }

  v73 = v33;
  v36 = [v11 possibleActions];
  sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v37 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v38)
  {
    isa = [v11 possibleActions];
    if (!isa)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v40 = objc_opt_self();
    v80[0] = 0;
    v41 = [v40 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v80];

    v42 = v80[0];
    if (v41)
    {
      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      goto LABEL_38;
    }

    v46 = v42;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      loga = v47;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v80[0] = v50;
      *v49 = 136315138;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v51 = String.init<A>(describing:)();
      v53 = sub_10000C4E4(v51, v52, v80);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, loga, v48, "Could not archive actions array into Data for XPC: %s", v49, 0xCu);
      sub_10000C60C(v50);
    }

    else
    {
    }
  }

  v43 = 0;
  v45 = 0xF000000000000000;
LABEL_38:
  v54 = [v11 completedURLs];
  if (!v54)
  {
LABEL_44:
    log = 0;
    v60 = 0xF000000000000000;
    goto LABEL_45;
  }

  v55 = v54;
  v56 = objc_opt_self();
  v80[0] = 0;
  v57 = [v56 archivedDataWithRootObject:v55 requiringSecureCoding:1 error:v80];

  v58 = v80[0];
  if (!v57)
  {
    v61 = v58;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      buf = swift_slowAlloc();
      logb = swift_slowAlloc();
      v80[0] = logb;
      *buf = 136315138;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v64 = String.init<A>(describing:)();
      v66 = v63;
      v67 = sub_10000C4E4(v64, v65, v80);

      *(buf + 4) = v67;
      _os_log_impl(&_mh_execute_header, v62, v66, "Could not archive completedURLs array into Data for XPC: %s", buf, 0xCu);
      sub_10000C60C(logb);
    }

    else
    {
    }

    goto LABEL_44;
  }

  log = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

LABEL_45:
  v68 = [v11 contentsDescription];
  if (!v68)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = String._bridgeToObjectiveC()();
  }

  if (v45 >> 60 == 15)
  {
    v69 = 0;
  }

  else
  {
    v69 = Data._bridgeToObjectiveC()().super.isa;
  }

  if (v60 >> 60 == 15)
  {
    v70 = 0;
  }

  else
  {
    v70 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v27 transferUpdatedForIdentifier:v4 withTransferState:v72 transferAccepted:v75 completedUnitCount:v74 totalUnitCount:v73 localizedTransferDescription:v68 actionsData:v69 completedURLsData:v70];
  sub_10028BCC0(v43, v45);
  swift_unknownObjectRelease();

  sub_10028BCC0(log, v60);
}

void sub_10044597C(void *a1)
{
  v2 = v1;
  v4 = [a1 identifier];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  if (*(*(v1 + v8) + 16))
  {
    v9 = *(v1 + v8);

    sub_100012854(v5, v7);
    if (v10)
    {

      if (qword_100973898 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000C4AC(v11, qword_10097E7C0);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_10000C4E4(v5, v7, &v20);
        _os_log_impl(&_mh_execute_header, v12, v13, "Transfer %s no longer being tracked. Ending session for it over XPC.", v14, 0xCu);
        sub_10000C60C(v15);
      }

      swift_beginAccess();
      sub_1002B1A40(0, v5, v7);
      swift_endAccess();
      sub_100446168(a1);
      v16 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession;
      v17 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession);
      if (*&v17[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer] || (v18 = v17, sub_10044BF04(), v18, *(*(v2 + v16) + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer)))
      {
        [swift_unknownObjectRetain() transferEndedForIdentifier:v4];
        swift_unknownObjectRelease();
      }

      if (!*(*(v2 + v8) + 16))
      {
        v19 = *(v2 + v16);
        sub_10044CCF8();
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_100445C48(void *a1)
{
  v2 = v1;
  v4 = [a1 transferProgress];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 identifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_progressObserversById;
    swift_beginAccess();
    if (*(*(v2 + v10) + 16))
    {
      v11 = *(v2 + v10);

      sub_100012854(v7, v9);
      if (v12)
      {

        return;
      }
    }

    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097E7C0);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000C4E4(v7, v9, &v25);
      _os_log_impl(&_mh_execute_header, v14, v15, "Starting to observe transfer progress for %s", v16, 0xCu);
      sub_10000C60C(v17);
    }

    v25 = v5;
    swift_getKeyPath();
    v18 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v19 = swift_allocObject();
    v19[2] = v7;
    v19[3] = v9;
    v19[4] = v18;

    v20 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    swift_beginAccess();
    v21 = v20;
    v22 = *(v2 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + v10);
    *(v2 + v10) = 0x8000000000000000;
    sub_10057B478(v21, v7, v9, isUniquelyReferenced_nonNull_native);

    *(v2 + v10) = v24;
    swift_endAccess();
  }
}

void sub_100445F58(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *a1;
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_10097E7C0);

  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_10000C4E4(a3, a4, &v21);
    *(v11 + 12) = 2048;
    [v8 fractionCompleted];
    *(v11 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "KVO: Transfer %s updated progress: %f", v11, 0x16u);
    sub_10000C60C(v12);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  v16 = *&Strong[v15];

  if (*(v16 + 16) && (v17 = sub_100012854(a3, a4), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);

    v20 = swift_unknownObjectUnownedLoadStrong();
    sub_100444E9C(v19);
  }

  else
  {
  }
}

void sub_100446168(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_progressObserversById;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_100012854(v3, v5);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      if (qword_100973898 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000C4AC(v11, qword_10097E7C0);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_10000C4E4(v3, v5, &v19);
        _os_log_impl(&_mh_execute_header, v12, v13, "Stopping observing transfer progress for %s", v14, 0xCu);
        sub_10000C60C(v15);
      }

      swift_beginAccess();
      sub_1002B1A68(0, v3, v5);
      swift_endAccess();
      dispatch thunk of NSKeyValueObservation.invalidate()();
      goto LABEL_13;
    }
  }

  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_10097E7C0);
  v10 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v10, v17, "Didn't find progress observer to stop observing. Returning", v18, 2u);
  }

LABEL_13:
}

uint64_t sub_10044645C()
{
  v1 = v0[19];
  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = sub_10028088C(&unk_10097E990, &unk_100804270);
  *v4 = v0;
  v4[1] = sub_100446564;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 18, 0, 0, 0xD000000000000011, 0x8000000100791190, sub_10044EF28, v2, v5);
}

uint64_t sub_100446564()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_10044690C;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_100446680;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100446680()
{
  v1 = v0[18];
  v0[23] = v1;
  v0[2] = v0;
  v0[3] = sub_100446798;
  v2 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100638A98;
  v0[13] = &unk_1008E1F28;
  v0[14] = v2;
  [v1 registerForPermissionRequests:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100446798()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_100446970;
  }

  else
  {
    v3 = sub_1004468A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004468A8()
{
  v1 = *(v0 + 184);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10044690C()
{
  v1 = v0[20];

  v2 = v0[22];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100446970()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[24];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1004469E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10028088C(&qword_10097E9D8, qword_1008042D0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v22 - v15;
  v22[1] = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v13 + 32))(v19 + v18, v16, v12);
  aBlock[4] = sub_10044EF48;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E1F78;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v25 + 8))(v7, v4);
  (*(v23 + 8))(v11, v24);
}

void sub_100446DAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession;
    v3 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession);
    if (*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer] || (v4 = v3, sub_10044BF04(), v4, *(*&v1[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer)))
    {
      swift_unknownObjectRetain();
      sub_10028088C(&qword_10097E9D8, qword_1008042D0);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      v7 = sub_100010F88(10, 0xD000000000000010, 0x80000001007911B0);
      v9 = v8;
      sub_1000115C8();
      swift_allocError();
      *v10 = v7;
      *(v10 + 8) = v9;
      swift_willThrow();
      sub_10028088C(&qword_10097E9D8, qword_1008042D0);
      CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    v5 = type metadata accessor for SFAirDropSend.Failure();
    sub_1000143BC(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for SFAirDropSend.Failure.cancelled(_:), v5);
    sub_10028088C(&qword_10097E9D8, qword_1008042D0);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100446FB8(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropSend.Transfer.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDrop.DisplayPriority();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for SFAirDrop.DisplayPriority.high(_:), v7);
  v12 = static SFAirDrop.DisplayPriority.== infix(_:_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    (*(v3 + 16))(v6, a1, v2);
    v13 = (*(v3 + 88))(v6, v2);
    if (v13 == enum case for SFAirDropSend.Transfer.State.transferring(_:))
    {
      (*(v3 + 96))(v6, v2);
      v14 = *(v6 + 1);

      v15 = sub_10028088C(&qword_10097B2C8, &qword_1007FE680);
      v16 = &v6[v15[12]];
      v17 = *&v6[v15[16] + 8];

      v18 = v15[20];
      v19 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v19 - 8) + 8))(&v6[v18], v19);
      v20 = type metadata accessor for SFAirDrop.Progress();
      v6 = v16;
    }

    else
    {
      if (v13 == enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
      {
        (*(v3 + 96))(v6, v2);
        v21 = *(sub_10028088C(&unk_100986210, &unk_1008042C0) + 48);
        v22 = type metadata accessor for SFAirDropSend.Failure();
        (*(*(v22 - 8) + 8))(&v6[v21], v22);
      }

      else
      {
        if (v13 != enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:))
        {
          return (*(v3 + 8))(v6, v2);
        }

        (*(v3 + 96))(v6, v2);
        v23 = *&v6[*(sub_10028088C(&qword_10097E9D0, &unk_1007FC200) + 48) + 8];
      }

      v20 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
    }

    (*(*(v20 - 8) + 8))(v6);
  }

  v24 = SFAirDropSend.Transfer.State.description.getter();
  sub_100447908(v24, v25);
}

uint64_t sub_100447374(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDrop.DisplayPriority();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for SFAirDrop.DisplayPriority.high(_:), v7);
  v12 = static SFAirDrop.DisplayPriority.== infix(_:_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    goto LABEL_12;
  }

  (*(v3 + 16))(v6, a1, v2);
  v13 = (*(v3 + 88))(v6, v2);
  if (v13 != enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    if (v13 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
    {
      (*(v3 + 96))(v6, v2);
      v15 = &qword_10097C688;
      v16 = &unk_1008042A0;
    }

    else
    {
      if (v13 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:) || v13 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
      {
        (*(v3 + 96))(v6, v2);
        v21 = sub_10028088C(&unk_10097C670, &qword_100805110);
        v22 = *&v6[v21[12]];

        v23 = *&v6[v21[16]];

        v24 = v21[20];
        v25 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
        (*(*(v25 - 8) + 8))(&v6[v24], v25);
        v14 = type metadata accessor for SFAirDropReceive.ItemDestination();
        goto LABEL_11;
      }

      if (v13 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
      {
        (*(v3 + 96))(v6, v2);
        v17 = *(sub_10028088C(&unk_10097E9C0, &unk_100808DC0) + 48);
        v18 = &qword_100974E70;
        v19 = &qword_1007FE3F0;
        goto LABEL_7;
      }

      if (v13 != enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
      {
        if (v13 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
        {
          (*(v3 + 96))(v6, v2);
          v29 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
          v30 = v29[12];
          v31 = *&v6[v29[16] + 8];

          v32 = *&v6[v29[20]];

          v33 = *&v6[v29[24]];

          v34 = *&v6[v29[28]];

          v35 = type metadata accessor for SFAirDropReceive.ItemDestination();
          (*(*(v35 - 8) + 8))(&v6[v30], v35);
        }

        else
        {
          if (v13 != enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
          {
            return (*(v3 + 8))(v6, v2);
          }

          (*(v3 + 96))(v6, v2);
          v36 = *(sub_10028088C(&qword_10097A670, &unk_100804290) + 48);
          v37 = type metadata accessor for SFAirDropReceive.Failure();
          (*(*(v37 - 8) + 8))(&v6[v36], v37);
        }

        v14 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
        goto LABEL_11;
      }

      (*(v3 + 96))(v6, v2);
      v15 = &qword_10097C658;
      v16 = &unk_1008042B0;
    }

    v17 = *(sub_10028088C(v15, v16) + 48);
    v18 = &unk_10097C660;
    v19 = &unk_10080D3E0;
LABEL_7:
    v20 = sub_10028088C(v18, v19);
    (*(*(v20 - 8) + 8))(&v6[v17], v20);
    v14 = type metadata accessor for SFAirDrop.ContactInfo();
    goto LABEL_11;
  }

  (*(v3 + 96))(v6, v2);
  v14 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
LABEL_11:
  (*(*(v14 - 8) + 8))(v6, v14);
LABEL_12:
  v26 = SFAirDropReceive.Transfer.State.description.getter();
  sub_100447908(v26, v27);
}

uint64_t sub_100447908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_10044EF1C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E1F00;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_100447C14(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100447C84(a2, a3);
  }
}

void sub_100447C84(void *a1, unint64_t a2)
{
  v99 = a2;
  v91 = a1;
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v83 - v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v7 - 8);
  v98 = v7;
  v8 = *(v97 + 64);
  __chkstk_darwin(v7);
  v95 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  v10 = *(v94 + 64);
  __chkstk_darwin(v96);
  v93 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTimeInterval();
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  __chkstk_darwin(v12);
  v15 = (&v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = type metadata accessor for DispatchTime();
  v92 = *(v100 - 8);
  v16 = *(v92 + 64);
  v17 = __chkstk_darwin(v100);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v83 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue);
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
  v90 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v26, v22);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v28 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion;
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion))
  {
    if (qword_100973898 == -1)
    {
LABEL_4:
      v29 = type metadata accessor for Logger();
      sub_10000C4AC(v29, qword_10097E7C0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Not taking assertion to ensure AirDropUI is active because assertion was already taken", v32, 2u);
      }

      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_4;
  }

  if (*(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUISession) + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer))
  {
    v88 = v2;
    v33 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIBundleIdentifier);
    v34 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIBundleIdentifier + 8);
    v35 = String._bridgeToObjectiveC()();
    v36 = [objc_opt_self() predicateMatchingBundleIdentifier:v35];

    sub_1000276B4(0, &unk_10097E9A0, RBSProcessHandle_ptr);
    v37 = v36;
    v43 = sub_100663DC8(v37);

    v86 = "rviceConnectionContext>8";
    v44 = [v43 identity];
    v87 = v43;
    v45 = v44;
    v46 = [objc_opt_self() targetWithProcessIdentity:v44];

    v47 = String._bridgeToObjectiveC()();
    v48 = String._bridgeToObjectiveC()();
    v49 = [objc_opt_self() attributeWithDomain:v47 name:v48];

    sub_10028088C(&qword_100974F70, &unk_100804260);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1007FD580;
    *(v50 + 32) = v49;
    v84 = objc_allocWithZone(RBSAssertion);
    v51 = v46;
    v85 = v49;
    v52 = String._bridgeToObjectiveC()();
    sub_1000276B4(0, &unk_10097E980, RBSAttribute_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v54 = [v84 initWithExplanation:v52 target:v51 attributes:isa];

    v86 = v51;
    v55 = v54;
    aBlock[0] = 0;
    v56 = [v54 acquireWithError:aBlock];
    if (v56)
    {
      v84 = v37;
      v57 = qword_100973898;
      v58 = aBlock[0];
      if (v57 != -1)
      {
        swift_once();
      }

      v83 = v55;
      v59 = type metadata accessor for Logger();
      sub_10000C4AC(v59, qword_10097E7C0);
      v60 = v99;

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        aBlock[0] = v64;
        *v63 = 136315138;
        v65 = v91;
        *(v63 + 4) = sub_10000C4E4(v91, v99, aBlock);
        _os_log_impl(&_mh_execute_header, v61, v62, "Successfully acquired assertion for state %s", v63, 0xCu);
        sub_10000C60C(v64);

        v60 = v99;

        v66 = v88;
      }

      else
      {

        v66 = v88;
        v65 = v91;
      }

      v74 = *(v66 + v28);
      v75 = v83;
      *(v66 + v28) = v83;
      v91 = v75;

      static DispatchTime.now()();
      *v15 = 2;
      v76 = v89;
      (*(v89 + 104))(v15, enum case for DispatchTimeInterval.seconds(_:), v12);
      DispatchTime.advanced(by:)();
      (*(v76 + 8))(v15, v12);
      v92 = *(v92 + 8);
      (v92)(v19, v100);
      v77 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = swift_allocObject();
      v78[2] = v77;
      v78[3] = v65;
      v78[4] = v60;
      aBlock[4] = sub_10044EED0;
      aBlock[5] = v78;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = &unk_1008E1EB0;
      v79 = _Block_copy(aBlock);

      v80 = v93;
      static DispatchQoS.unspecified.getter();
      v101 = _swiftEmptyArrayStorage;
      sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
      v81 = v95;
      v82 = v98;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v79);

      (*(v97 + 8))(v81, v82);
      (*(v94 + 8))(v80, v96);
      (v92)(v21, v100);
    }

    else
    {
      v67 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100973898 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_10000C4AC(v68, qword_10097E7C0);
      swift_errorRetain();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        swift_errorRetain();
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 4) = v73;
        *v72 = v73;
        _os_log_impl(&_mh_execute_header, v69, v70, "Failed to take assertion on AirDropUI ensuring it is active: %@", v71, 0xCu);
        sub_100005508(v72, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000C4AC(v38, qword_10097E7C0);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "AirDropUI process is suspended and we need it to be active. Launching AirDropUI", v41, 2u);
    }

    v42 = type metadata accessor for TaskPriority();
    (*(*(v42 - 8) + 56))(v6, 1, 1, v42);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    static Task<>.noThrow(priority:operation:)();

    sub_100005508(v6, &qword_100976160, &qword_1007F8770);
  }
}

uint64_t sub_100448A80(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  *(v2 + 48) = static AirDropActor.shared;

  return _swift_task_switch(sub_100448B20, v3, 0);
}

uint64_t sub_100448B20()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_100448C08;

    return sub_10044643C();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100448C08()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100448D34;
  }

  else
  {
    v6 = sub_10044F03C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100448D34()
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E7C0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  v7 = v0[7];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to launch AirDropUI: %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

void sub_100448EE4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion;
    [*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion) invalidate];
    v8 = *&v6[v7];
    *&v6[v7] = 0;

    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097E7C0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10000C4E4(a2, a3, &v14);
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalidated assertion for state %s", v12, 0xCu);
      sub_10000C60C(v13);
    }
  }
}

uint64_t sub_100449084(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v85 - 8);
  v6 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v81 = *(v82 - 8);
  v8 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for SFAirDropClient.Identifier();
  v10 = *(v94 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v94);
  v93 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v72 - v14;
  v101 = type metadata accessor for SFAirDropReceive.Transfer();
  v15 = *(v101 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v101);
  v98 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v73 = &v72 - v20;
  __chkstk_darwin(v19);
  v22 = &v72 - v21;
  v23 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v75 = *(v23 - 8);
  v24 = *(v75 + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v77 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v26;
  __chkstk_darwin(v25);
  v78 = &v72 - v27;
  v28 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a1 + 64);
  v32 = (v29 + 63) >> 6;
  v103 = v15 + 16;
  v89 = enum case for SFAirDropClient.Identifier.wallet(_:);
  v88 = (v10 + 104);
  v87 = (v10 + 8);
  v102 = (v15 + 8);
  v95 = v15;
  v72 = (v15 + 32);
  v96 = a1;

  v34 = 0;
  v86 = _swiftEmptyArrayStorage;
  v90 = v32;
  v91 = a1 + 64;
LABEL_4:
  v35 = v34;
  v36 = v101;
  if (!v31)
  {
    goto LABEL_6;
  }

  do
  {
    v34 = v35;
LABEL_9:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = *(v95 + 72);
    (*(v95 + 16))(v22, *(v96 + 56) + v38 * (v37 | (v34 << 6)), v36);
    v39 = v92;
    SFAirDropReceive.Transfer.presenter.getter();
    v40 = v93;
    v41 = v22;
    v42 = v94;
    (*v88)(v93, v89, v94);
    v97 = static SFAirDropClient.Identifier.== infix(_:_:)();
    v43 = *v87;
    (*v87)(v40, v42);
    v43(v39, v42);
    if (v97)
    {
      v44 = *v72;
      (*v72)(v73, v41, v36);
      v45 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v45;
      v22 = v41;
      v32 = v90;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10028FDA4(0, v45[2] + 1, 1);
        v45 = aBlock[0];
      }

      v28 = v91;
      v47 = v38;
      v49 = v45[2];
      v48 = v45[3];
      if (v49 >= v48 >> 1)
      {
        sub_10028FDA4(v48 > 1, v49 + 1, 1);
        v45 = aBlock[0];
      }

      v45[2] = v49 + 1;
      v50 = *(v95 + 80);
      v86 = v45;
      result = v44(v45 + ((v50 + 32) & ~v50) + v49 * v47, v73, v101);
      goto LABEL_4;
    }

    result = (*v102)(v41, v36);
    v35 = v34;
    v22 = v41;
    v32 = v90;
    v28 = v91;
  }

  while (v31);
  while (1)
  {
LABEL_6:
    v34 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      return result;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v34);
    ++v35;
    if (v31)
    {
      goto LABEL_9;
    }
  }

  v51 = v86;
  v52 = v86[2];
  if (v52)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10028FD60(0, v52, 0);
    v53 = aBlock[0];
    v54 = v51 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v55 = *(v95 + 72);
    v56 = *(v95 + 16);
    v57 = v74;
    do
    {
      v58 = v98;
      v59 = v101;
      v56(v98, v54, v101);
      SFAirDropReceive.Transfer.startDate.getter();
      (*v102)(v58, v59);
      aBlock[0] = v53;
      v61 = v53[2];
      v60 = v53[3];
      if (v61 >= v60 >> 1)
      {
        sub_10028FD60(v60 > 1, v61 + 1, 1);
        v53 = aBlock[0];
      }

      v53[2] = v61 + 1;
      (*(v100 + 32))(v53 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v61, v57, v99);
      v54 += v55;
      --v52;
    }

    while (v52);
  }

  else
  {

    v53 = _swiftEmptyArrayStorage;
  }

  v62 = v85;
  v63 = v84;
  v64 = v78;
  sub_10044BB70(v53, v78);

  v103 = *(v79 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue);
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = v77;
  sub_1002E4E88(v64, v77);
  v67 = (*(v75 + 80) + 24) & ~*(v75 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = v65;
  sub_10044DBD8(v66, v68 + v67);
  aBlock[4] = sub_10044DC48;
  aBlock[5] = v68;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E1CF8;
  v69 = _Block_copy(aBlock);

  v70 = v80;
  static DispatchQoS.unspecified.getter();
  v104 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  v71 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v69);
  (*(v63 + 8))(v71, v62);
  (*(v81 + 8))(v70, v82);
  sub_100005508(v64, &qword_10097A7F0, &unk_1007FB600);
}

id sub_100449AE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAirDropUISessionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SDAirDropUISessionManager()
{
  result = qword_10097E850;
  if (!qword_10097E850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100449C44()
{
  sub_1002A6BEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100449D20(void *a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100449D98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C04;

  return sub_10044643C();
}

uint64_t sub_100449EDC(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v20 = *(v7 - 8);
  v21 = v7;
  v8 = *(v20 + 64);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v19[1] = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue];
  (*(v12 + 16))(v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  (*(v12 + 32))(v15 + v14, v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_10044DA90;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E1C58;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v22 + 8))(v6, v3);
  (*(v20 + 8))(v10, v21);
}

void sub_10044A260(void *a1)
{
  v2 = v1;
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a1 transferState];
  v9 = SFAirDropTransferStateToString();
  if (v9)
  {
    v10 = v9;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v44 = 0;
    v12 = 0;
  }

  [a1 userResponse];
  v13 = SFAirDropTransferUserResponseToString();
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [a1 transferProgress];
  v17 = [a1 completedURLs];
  if (v17)
  {
    v18 = v17;
    type metadata accessor for URL();
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = *(v19 + 16);
  }

  else
  {
    v42 = 0;
  }

  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v20 = v8 - 10;
  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_10097E7C0);

  v46 = v16;

  v22 = Logger.logObject.getter();
  v41 = v16;
  v23 = static os_log_type_t.default.getter();

  v45 = v7;
  if (os_log_type_enabled(v22, v23))
  {
    v40 = v20;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v24 = 136316162;
    *(v24 + 4) = sub_10000C4E4(v5, v7, v48);
    *(v24 + 12) = 2080;
    if (v12)
    {
      v26 = v44;
    }

    else
    {
      v26 = 0xD000000000000015;
    }

    if (!v12)
    {
      v12 = 0x8000000100789F30;
    }

    v27 = sub_10000C4E4(v26, v12, v48);

    *(v24 + 14) = v27;
    *(v24 + 22) = 2080;
    v28 = sub_10000C4E4(v43, v15, v48);

    *(v24 + 24) = v28;
    *(v24 + 32) = 2112;
    *(v24 + 34) = v46;
    *v25 = v41;
    *(v24 + 42) = 2048;
    *(v24 + 44) = v42;
    v29 = v46;
    _os_log_impl(&_mh_execute_header, v22, v23, "Transfer %s changed to state: %s. Response: %s. Progress: %@. Completed URLs: %ld", v24, 0x34u);
    sub_100005508(v25, &qword_100975400, &qword_1007F65D0);

    swift_arrayDestroy();

    v20 = v40;
  }

  else
  {
  }

  if (v20 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
    swift_beginAccess();
    if (*(*(v2 + v30) + 16))
    {
      v31 = *(v2 + v30);

      sub_100012854(v5, v45);
      if ((v32 & 1) == 0)
      {

        return;
      }

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = v5;
        v38 = v36;
        v47 = v36;
        *v35 = 136315138;
        v39 = sub_10000C4E4(v37, v45, &v47);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "Transfer %s no longer needs to be tracked. It is either terminated or failed.", v35, 0xCu);
        sub_10000C60C(v38);
      }

      else
      {
      }

      sub_10044597C(a1);
    }

    else
    {
    }
  }

  else
  {

    sub_10044472C(a1);
    sub_100444E9C(a1);
  }
}

void sub_10044A844(void *a1)
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E7C0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = [v3 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10000C4E4(v9, v11, &v13);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Transfer %s was removed by transfer manager. Ending session.", v6, 0xCu);
    sub_10000C60C(v7);
  }

  sub_10044597C(v3);
}

uint64_t sub_10044AA50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097E7C0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting Wallet UI service for peerPayment type boop", v13, 2u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v4 + 32))(v17 + v16, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v9, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_10044AD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return _swift_task_switch(sub_10044AD48, 0, 0);
}

uint64_t sub_10044AD48()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_10044AE60;
    v5 = v0[6];

    return (sub_100651704)(v5, v3);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10044AE60()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10044AFDC;
  }

  else
  {

    v4 = sub_10044AF7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10044AF7C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044AFDC()
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E7C0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Wallet UI service show failed with error %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10044B19C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_queue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10044EE2C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E1E60;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

uint64_t sub_10044B4E8()
{
  v61 = type metadata accessor for Calendar.Component();
  v0 = *(v61 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v61);
  v58 = &v44[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = type metadata accessor for Calendar();
  v56 = *(v59 - 8);
  v3 = *(v56 + 64);
  __chkstk_darwin(v59);
  v5 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v60 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v44[-v10];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v57 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v19 = &v44[-v18];
  __chkstk_darwin(v17);
  v21 = &v44[-v20];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v55 = v0;
    v24 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_ongoingWalletTransferStartDate;
    swift_beginAccess();
    sub_1002E4E88(v23 + v24, v11);
    v25 = v13[6];
    if (v25(v11, 1, v12) == 1)
    {

      return sub_100005508(v11, &qword_10097A7F0, &unk_1007FB600);
    }

    else
    {
      v53 = v25;
      v50 = v13[4];
      v51 = v13 + 4;
      v50(v21, v11, v12);
      if (qword_100973898 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_10097E7C0);
      v48 = v13[2];
      v49 = v13 + 2;
      v48(v19, v21, v12);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      v29 = os_log_type_enabled(v27, v28);
      v54 = v13;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v46 = v30;
        v47 = swift_slowAlloc();
        v62 = v47;
        *v30 = 136315138;
        sub_1000143BC(&qword_100983290, &type metadata accessor for Date);
        v45 = v28;
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v52 = v13[1];
        v52(v19, v12);
        v34 = sub_10000C4E4(v31, v33, &v62);

        v35 = v46;
        *(v46 + 1) = v34;
        _os_log_impl(&_mh_execute_header, v27, v45, "Relaunching Wallet UI for transfer with start date %s", v35, 0xCu);
        sub_10000C60C(v47);
      }

      else
      {

        v52 = v13[1];
        v52(v19, v12);
      }

      static Calendar.current.getter();
      v36 = v55;
      v37 = v58;
      v38 = v61;
      (*(v55 + 104))(v58, enum case for Calendar.Component.second(_:), v61);
      v39 = v60;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v36 + 8))(v37, v38);
      (*(v56 + 8))(v5, v59);
      v40 = v53;
      if (v53(v39, 1, v12) == 1)
      {
        v41 = v57;
        v48(v57, v21, v12);
        if (v40(v39, 1, v12) != 1)
        {
          sub_100005508(v39, &qword_10097A7F0, &unk_1007FB600);
        }
      }

      else
      {
        v41 = v57;
        v50(v57, v39, v12);
      }

      sub_100449EDC(v41);

      v42 = v41;
      v43 = v52;
      v52(v42, v12);
      return v43(v21, v12);
    }
  }

  return result;
}

uint64_t sub_10044BB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_1000143BC(&qword_10097E910, &type metadata accessor for Date);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

void sub_10044BE20(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1002E4E88(a2, v6);
    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_ongoingWalletTransferStartDate;
    swift_beginAccess();
    sub_1003561CC(v6, v8 + v9);
    swift_endAccess();
  }
}

void sub_10044BF04()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  v53 = [objc_opt_self() interfaceWithIdentifier:v2];

  v3 = objc_opt_self();
  v4 = [v3 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropUIServer];
  [v53 setServer:v4];

  v5 = [v3 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropUIClient];
  [v53 setClient:v5];

  [v53 setClientMessagingExpectation:0];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() endpointForMachName:v6 service:v7 instance:0];

  v9 = qword_100973898;
  if (v8)
  {
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_10097E7C0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SDAirDropUISessionManager: endpoint created!", v14, 2u);
    }

    v15 = [objc_opt_self() connectionWithEndpoint:v10];
    if (v15)
    {
      v16 = v15;
      v62 = &OBJC_PROTOCOL___BSServiceConnectionClient;
      v17 = swift_dynamicCastObjCProtocolConditional();
      if (v17)
      {
        v18 = v17;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "SDAirDropUISessionManager: connection created", v21, 2u);
        }

        v22 = swift_allocObject();
        *(v22 + 16) = v53;
        *(v22 + 24) = v1;
        v23 = swift_allocObject();
        *(v23 + 16) = sub_10044EDA0;
        *(v23 + 24) = v22;
        v60 = sub_10044EDA8;
        v61 = v23;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v59 = sub_10044CCA4;
        *(&v59 + 1) = &unk_1008E1DC0;
        v24 = _Block_copy(&aBlock);
        v54 = v53;
        v25 = v1;

        v26 = v16;

        [v18 configureConnection:v24];

        _Block_release(v24);
        LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

        if (v24)
        {
          __break(1u);
        }

        else
        {
          v27 = OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection;
          if (*&v25[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection])
          {
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              *v30 = 0;
              _os_log_impl(&_mh_execute_header, v28, v29, "SDAirDropUISessionManager: Previous connection present while trying to activate. Ending previous then activating new connection", v30, 2u);
            }

            sub_10044CCF8();
            v31 = *&v25[v27];
          }

          else
          {
            v31 = 0;
          }

          *&v25[v27] = v18;
          v39 = v26;

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&_mh_execute_header, v40, v41, "SDAirDropUISessionManager: Activating Session", v42, 2u);
          }

          [v18 activate];
          v43 = String._bridgeToObjectiveC()();
          v44 = String._bridgeToObjectiveC()();
          v45 = [objc_opt_self() attributeWithDomain:v43 name:v44];

          sub_10028088C(&qword_100974F70, &unk_100804260);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_1007FD580;
          *(v46 + 32) = v45;
          sub_1000276B4(0, &unk_10097E980, RBSAttribute_ptr);
          v47 = v45;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v49 = [v18 remoteTargetWithLaunchingAssertionAttributes:isa];

          if (v49)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v56 = 0u;
            v57 = 0u;
          }

          aBlock = v56;
          v59 = v57;
          if (*(&v57 + 1))
          {
            sub_10028088C(&unk_10097E990, &unk_100804270);
            v50 = swift_dynamicCast();
            v51 = v55;
            if (!v50)
            {
              v51 = 0;
            }
          }

          else
          {
            sub_100005508(&aBlock, &unk_1009746F0, &qword_1007F90B0);
            v51 = 0;
          }

          v52 = *&v25[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer];
          *&v25[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer] = v51;

          swift_unknownObjectRelease();
        }

        return;
      }
    }

    else
    {
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Could not create a connection with the AirDropUI endpoint", v38, 2u);
    }
  }

  else
  {
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_10097E7C0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Could not find endpoint for AirDropUI launch angel. It may not be loaded.", v35, 2u);
    }
  }
}

id sub_10044C7E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097E7C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "SDAirDropUISessionManager: configuring session...", v9, 2u);
  }

  v10 = String._bridgeToObjectiveC()();
  [a1 setName:v10];

  v11 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v11];

  [a1 setInterface:a2];
  [a1 setInterfaceTarget:a3];
  v20 = sub_10044CAB0;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100035F9C;
  v19 = &unk_1008E1DE8;
  v12 = _Block_copy(&v16);
  [a1 setActivationHandler:v12];
  _Block_release(v12);
  v13 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v20 = sub_10044EDD0;
  v21 = v13;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100035F9C;
  v19 = &unk_1008E1E38;
  v14 = _Block_copy(&v16);

  [a1 setInvalidationHandler:v14];
  _Block_release(v14);
  return [a1 setTargetQueue:*(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_queue)];
}

void sub_10044CAB0()
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097E7C0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SDAirDropUISessionManager connection activated!", v2, 2u);
  }
}

void sub_10044CB98()
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097E7C0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "SDAirDropUISessionManager connection invalidated with endpoint!", v3, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_10044CCF8();
}

uint64_t sub_10044CCA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void sub_10044CCF8()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33 - v4;
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection;
  v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection);
  if (!v7)
  {
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_10097E7C0);
    v34 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v34, v30, "XPC Connection not available, skipping end.", v31, 2u);
    }

    goto LABEL_17;
  }

  v8 = qword_100973898;
  v34 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097E7C0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "SDAirDropUISessionManager: Invalidating connection", v12, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion;
    v15 = Strong;
    [*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_airDropUIAssertion) invalidate];
    v16 = *&v15[v14];
    *&v15[v14] = 0;
  }

  [v34 invalidate];
  v17 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer) = 0;
  swift_unknownObjectRelease();
  v18 = *(v1 + v6);
  *(v1 + v6) = 0;

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
LABEL_17:
    v32 = v34;
    goto LABEL_18;
  }

  v33 = v19;
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = qword_1009735E0;

    v25 = v33;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = static AirDropActor.shared;
    v27 = sub_1000143BC(&qword_100977C00, type metadata accessor for AirDropActor);
    v28 = swift_allocObject();
    v28[2] = v26;
    v28[3] = v27;
    v28[4] = v23;
    v28[5] = v25;

    sub_1002B3098(0, 0, v5, &unk_100804250, v28);

    return;
  }

  v32 = v33;
LABEL_18:
}

id sub_10044D130()
{
  v1 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AirDropUISessionClient();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10044D258()
{
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v14);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_queue;
  v9 = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v12[1] = "AirDropUISessionClientDelegate";
  v12[2] = v9;
  static DispatchQoS.userInitiated.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000143BC(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v0[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_airDropUIServer] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22AirDropUISessionClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = type metadata accessor for AirDropUISessionClient();
  v15.receiver = v0;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_10044D598(void *a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(uint64_t, unint64_t))
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a1;
  sub_10044D8AC(v8, v10, a4, a5);
}

void sub_10044D614(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097E7C0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10000C4E4(a1, a2, &v14);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10000C4E4(a3, a4, &v14);
    _os_log_impl(&_mh_execute_header, v9, v10, "SDAirDropUISessionManager: Received remote request for run action for transfer identifier: %s and action identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_10044E7B0(a1, a2, a3, a4);
  }
}

void sub_10044D8AC(uint64_t a1, unint64_t a2, const char *a3, void (*a4)(uint64_t, unint64_t))
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097E7C0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10000C4E4(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
    sub_10000C60C(v12);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    a4(a1, a2);
  }
}

uint64_t sub_10044DA90()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10044AA50(v2, v3);
}

uint64_t sub_10044DAF4(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10044AD28(a1, v6, v1 + v5);
}

uint64_t sub_10044DBD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10044DD58(uint64_t a1)
{
  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097E7C0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      v8 = v7;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    *(v5 + 4) = v7;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Wallet UI service invalidated with error: %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  if (a1)
  {

    sub_10044B19C();
  }
}

void sub_10044DEE4(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_100012854(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = [v9 cancelAction];
      [v10 triggerAction];

      return;
    }
  }

  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097E7C0);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10000C4E4(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v12, v13, "AirDrop transfer %s not found in actively tracked transfers. Ignoring cancel request.", v14, 0xCu);
    sub_10000C60C(v15);
  }
}

void sub_10044E0C0(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_100012854(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_11:
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097E7C0);

    v9 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000C4E4(a1, a2, &v24);
      _os_log_impl(&_mh_execute_header, v9, v15, "AirDrop transfer %s not found in actively tracked transfers. Ignoring accept request.", v16, 0xCu);
      sub_10000C60C(v17);
    }

    goto LABEL_23;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  if ([v9 transferState]!= 1)
  {
    if (qword_100973898 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_10097E7C0);
    v19 = v9;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_10000C4E4(a1, a2, &v24);
      *(v22 + 12) = 2048;
      *(v22 + 14) = [v19 transferState];

      _os_log_impl(&_mh_execute_header, v20, v21, "AirDrop transfer %s is not in Created state%lu. Ignoring accepted request.", v22, 0x16u);
      sub_10000C60C(v23);
    }

    else
    {
    }

    return;
  }

  [v9 setUserResponse:1];
  v10 = [v9 possibleActions];
  sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
LABEL_9:
    v13 = v12;
LABEL_22:

    [v13 triggerAction];

LABEL_23:
    return;
  }

  __break(1u);
}

void sub_10044E4B8(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_100012854(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if ([v9 transferState] == 7)
      {
        [v9 setUserResponse:3];
      }

      else
      {
        if (qword_100973898 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_10000C4AC(v15, qword_10097E7C0);

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v20 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_10000C4E4(a1, a2, &v20);
          _os_log_impl(&_mh_execute_header, v16, v17, "AirDrop transfer %s is not in ReadyForOpen state. Ignoring close request.", v18, 0xCu);
          sub_10000C60C(v19);
        }
      }

      return;
    }
  }

  if (qword_100973898 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097E7C0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000C4E4(a1, a2, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "AirDrop transfer %s not found in actively tracked transfers. Ignoring close request.", v13, 0xCu);
    sub_10000C60C(v14);
  }
}

void sub_10044E7B0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropUISessionManager_activeTransfersById;
  swift_beginAccess();
  v8 = *(v4 + v7);
  if (!*(v8 + 16))
  {
LABEL_23:
    if (qword_100973898 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v9 = sub_100012854(a1, a2);
  if ((v10 & 1) == 0)
  {

    goto LABEL_23;
  }

  v38 = a1;
  v11 = *(*(v8 + 56) + 8 * v9);

  v12 = [v11 possibleActions];
  sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
  a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_32:
    v31 = _swiftEmptyArrayStorage;
LABEL_33:

    if ((v31 & 0x8000000000000000) != 0 || (v31 & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_36;
      }
    }

    else if (*(v31 + 16))
    {
LABEL_36:
      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_39;
      }

      if (*(v31 + 16))
      {
        v32 = *(v31 + 32);
LABEL_39:
        v33 = v32;

        [v33 triggerAction];

        return;
      }

      __break(1u);
      goto LABEL_47;
    }

    if (qword_100973898 == -1)
    {
LABEL_42:
      v34 = type metadata accessor for Logger();
      sub_10000C4AC(v34, qword_10097E7C0);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v37 = 136315394;
        *(v37 + 4) = sub_10000C4E4(v38, a2, &v43);
        *(v37 + 12) = 2080;
        *(v37 + 14) = sub_10000C4E4(a3, a4, &v43);
        _os_log_impl(&_mh_execute_header, v35, v36, "AirDrop transfer %s does not have an action with identifier %s. Ignoring runAction request.", v37, 0x16u);
        swift_arrayDestroy();
      }

      return;
    }

LABEL_47:
    swift_once();
    goto LABEL_42;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_32;
  }

LABEL_5:
  v39 = v11;
  v40 = a2;
  v14 = 0;
  a2 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v18 = [v15 actionIdentifier];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v20 == a3 && v22 == a4)
      {

LABEL_20:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = v43[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_7;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_20;
      }
    }

LABEL_7:
    ++v14;
    if (v17 == v13)
    {
      v31 = v43;
      v11 = v39;
      a2 = v40;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_24:
  v26 = type metadata accessor for Logger();
  sub_10000C4AC(v26, qword_10097E7C0);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_10000C4E4(a1, a2, &v43);
    _os_log_impl(&_mh_execute_header, v27, v28, "AirDrop transfer %s not found in actively tracked transfers. Ignoring runAction request.", v29, 0xCu);
    sub_10000C60C(v30);
  }
}

uint64_t sub_10044ECE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_1002C659C(a1, v4, v5, v7, v6);
}

uint64_t sub_10044EDA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10044EDD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10044EE34(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C00;

  return sub_100448A80(a1, v1);
}

uint64_t sub_10044EEDC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10044EF70(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(sub_10028088C(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = v3 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a3(v5, v6);
}

uint64_t sub_10044F040(uint64_t a1, char a2)
{
  **(*(*sub_10002CDC0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_10044F09C(uint64_t a1, void *a2)
{
  v3 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return _swift_continuation_resume(v3);
}

uint64_t sub_10044F12C(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_10044F1C8, v2, 0);
}

uint64_t sub_10044F210@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPeerPayment();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_10044F244(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for SFAirDrop.TransferType();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10044F33C, v5, 0);
}

uint64_t sub_10044F33C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isPeerPayment.getter();
  (*(v2 + 8))(v1, v4);

  v6 = v0[1];

  return v6(v5 & 1);
}

uint64_t sub_10044F490(uint64_t a1)
{
  *(v1 + 160) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 168) = static AirDropActor.shared;

  return _swift_task_switch(sub_10044F530, v2, 0);
}

uint64_t sub_10044F530()
{
  v1 = v0[20];
  v0[18] = SFAirDropReceive.AskRequest.customPayload.getter();
  v0[19] = v2;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.tryUnwrap(_:file:line:)();
  v3 = v0[20];
  sub_10028BCC0(v0[18], v0[19]);
  v4 = v0[10];
  v5 = v0[11];
  v0[22] = v4;
  v0[23] = v5;
  v6 = objc_allocWithZone(SDNearbyPeerPaymentReceiverCoordinator);
  sub_100294008(v4, v5);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithSenderMetadata:isa];
  v0[24] = v8;

  sub_100026AC0(v4, v5);
  SFAirDropReceive.AskRequest.contactIdentifier.getter();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v0[25] = v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10044F7B0;
  v11 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097EB10, &qword_1008043A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10044F040;
  v0[13] = &unk_1008E2088;
  v0[14] = v11;
  [v8 nearbyReceiverRequiresConfirmationWithContactID:v10 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10044F7B0()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(sub_10044F8A4, v1, 0);
}

uint64_t sub_10044F8A4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  sub_100026AC0(*(v0 + 176), *(v0 + 184));

  v3 = *(v0 + 144);
  v4 = *(v0 + 8);

  return v4((v3 & 1) == 0);
}

uint64_t sub_10044F920(uint64_t a1)
{
  *(v1 + 160) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 168) = static AirDropActor.shared;

  return _swift_task_switch(sub_10044F9C0, v2, 0);
}

uint64_t sub_10044F9C0()
{
  v1 = v0[20];
  v0[18] = SFAirDropReceive.AskRequest.customPayload.getter();
  v0[19] = v2;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.tryUnwrap(_:file:line:)();
  v3 = v0[20];
  sub_10028BCC0(v0[18], v0[19]);
  v4 = v0[10];
  v5 = v0[11];
  v0[22] = v4;
  v0[23] = v5;
  v6 = objc_allocWithZone(SDNearbyPeerPaymentReceiverCoordinator);
  sub_100294008(v4, v5);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithSenderMetadata:isa];
  v0[24] = v8;

  sub_100026AC0(v4, v5);
  SFAirDropReceive.AskRequest.contactIdentifier.getter();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v0[25] = v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10044FC3C;
  v11 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097EB18, &qword_1008043B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10044F09C;
  v0[13] = &unk_1008E20B0;
  v0[14] = v11;
  [v8 recipientMetadataWithContactID:v10 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10044FC3C()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(sub_10044FD30, v1, 0);
}

uint64_t sub_10044FD30()
{
  v1 = v0[19];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  if (v1 >> 60 == 15)
  {

    v6 = type metadata accessor for SFError();
    sub_10044FED8();
    swift_allocError();
    *v7 = 0xD000000000000023;
    v7[1] = 0x80000001007912D0;
    v7[2] = 0xD000000000000069;
    v7[3] = 0x8000000100791260;
    v7[4] = 52;
    (*(*(v6 - 8) + 104))(v7, enum case for SFError.unexpected(_:), v6);
    swift_willThrow();

    sub_100026AC0(v4, v5);
    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[18];
    sub_100026AC0(v0[22], v0[23]);

    v11 = v0[1];

    return v11(v10, v1);
  }
}

unint64_t sub_10044FED8()
{
  result = qword_100976248;
  if (!qword_100976248)
  {
    type metadata accessor for SFError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976248);
  }

  return result;
}

void sub_10044FF38()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:
    if (v3)
    {
      sub_10057E55C(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}