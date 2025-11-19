uint64_t sub_1005297F4()
{
  v76 = v0[371];
  v78 = v0[356];
  v1 = v0[344];
  v2 = v0[319];
  v86 = v0[318];
  v88 = v0[321];
  v90 = v0[307];
  v80 = v0[357];
  v82 = v0[303];
  v3 = v0[283];
  v74 = v0[276];
  v4 = v0[268];
  v70 = v0[294];
  v72 = v0[267];
  v5 = v0[249];
  v84 = v0[239];
  v6 = v0[238];
  v7 = v0[235];
  sub_100005508((v0 + 46), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 13), &qword_10097B208, &qword_1007FE5A8);
  sub_100530400(v5, _s16ExchangeResponseVMa);
  v1(v70, v3);
  v78(v6, v7);
  (*(v4 + 8))(v74, v72);
  v1(v82, v3);
  (*(v2 + 8))(v88, v86);
  sub_100005508(v84, &qword_100976908, &unk_100801D60);
  sub_100530400(v90, _s15ExchangeRequestVMa);
  v91 = v0[373];
  v8 = v0[321];
  v9 = v0[320];
  v10 = v0[317];
  v11 = v0[316];
  v12 = v0[315];
  v13 = v0[314];
  v14 = v0[313];
  v15 = v0[310];
  v16 = v0[307];
  v17 = v0[304];
  v20 = v0[303];
  v21 = v0[302];
  v22 = v0[301];
  v23 = v0[300];
  v24 = v0[299];
  v25 = v0[298];
  v26 = v0[297];
  v27 = v0[296];
  v28 = v0[295];
  v29 = v0[294];
  v30 = v0[293];
  v31 = v0[292];
  v32 = v0[291];
  v33 = v0[290];
  v34 = v0[289];
  v35 = v0[288];
  v36 = v0[287];
  v37 = v0[286];
  v38 = v0[285];
  v39 = v0[282];
  v40 = v0[279];
  v41 = v0[276];
  v42 = v0[275];
  v43 = v0[274];
  v44 = v0[273];
  v45 = v0[272];
  v46 = v0[271];
  v47 = v0[270];
  v48 = v0[269];
  v49 = v0[266];
  v50 = v0[265];
  v51 = v0[264];
  v52 = v0[263];
  v53 = v0[262];
  v54 = v0[261];
  v55 = v0[260];
  v56 = v0[259];
  v57 = v0[258];
  v58 = v0[257];
  v59 = v0[256];
  v60 = v0[255];
  v61 = v0[254];
  v62 = v0[253];
  v63 = v0[252];
  v64 = v0[251];
  v65 = v0[250];
  v66 = v0[249];
  v67 = v0[248];
  v68 = v0[247];
  v69 = v0[246];
  v71 = v0[244];
  v73 = v0[243];
  v75 = v0[242];
  v77 = v0[239];
  v79 = v0[238];
  v81 = v0[237];
  v83 = v0[234];
  v85 = v0[231];
  v87 = v0[230];
  v89 = v0[229];

  v18 = v0[1];

  return v18();
}

void sub_100529D78(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.AskRequest();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFPlatform();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SFAirDrop.TransferType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  SFAirDropReceive.AskRequest.type.getter();
  if ((*(v12 + 88))(v18, v11) == enum case for SFAirDrop.TransferType.peerPayment(_:))
  {
    static SFPlatform.macOS.getter();
    v19 = static SFPlatform.isPlatform(_:)();
    (*(v7 + 8))(v10, v6);
    if (v19)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Verifying peerPayment support", v22, 2u);
      }

      v23 = [objc_opt_self() verifyReceiverEligibility];
      if (v23)
      {
        v24 = v23;
        v25 = type metadata accessor for SFAirDropReceive.Failure();
        sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
        swift_allocError();
        v27 = v26;
        v28 = v24;
        CodableError.init(_:)();
        (*(*(v25 - 8) + 104))(v27, enum case for SFAirDropReceive.Failure.unexpected(_:), v25);
        swift_willThrow();
      }

      else
      {
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Device supports peerPayment", v39, 2u);
        }
      }
    }
  }

  else
  {
    (*(v45 + 16))(v5, a1, v46);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v42 = v31;
      v44 = swift_slowAlloc();
      v47 = v44;
      *v31 = 136315138;
      v43 = v30;
      SFAirDropReceive.AskRequest.type.getter();
      v41 = SFAirDrop.TransferType.description.getter();
      v33 = v32;
      v34 = *(v12 + 8);
      v34(v16, v11);
      (*(v45 + 8))(v5, v46);
      v35 = sub_10000C4E4(v41, v33, &v47);

      v36 = v42;
      *(v42 + 1) = v35;
      _os_log_impl(&_mh_execute_header, v29, v43, "Transfer type %s is supported", v36, 0xCu);
      sub_10000C60C(v44);
    }

    else
    {

      (*(v45 + 8))(v5, v46);
      v34 = *(v12 + 8);
    }

    v34(v18, v11);
  }
}

uint64_t sub_10052A378(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_10052A40C, 0, 0);
}

uint64_t sub_10052A40C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = type metadata accessor for SFAirDrop.ContactRequest();
  *v5 = v0;
  v5[1] = sub_10052A51C;
  v7 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v7, &unk_100808FC0, v2, sub_1003C43C0, v3, 0, 0, v6);
}

uint64_t sub_10052A51C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10052A664, 0, 0);
  }

  else
  {
    v5 = v3[4];
    v4 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10052A664()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_10052A6D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_10028088C(&qword_100982578, &unk_100808FB0);
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = sub_10028088C(&qword_10097A698, &unk_1007FD7F0);
  v2[6] = v6;
  v7 = *(v6 - 8);
  v2[7] = v7;
  v8 = *(v7 + 64) + 15;
  v2[8] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v2[9] = static AirDropActor.shared;

  return _swift_task_switch(sub_10052A840, v9, 0);
}

uint64_t sub_10052A840()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 16))(v1, *(v0[2] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation, v3);
  SFProgressContinuation.task.getter();
  (*(v2 + 8))(v1, v3);
  v4 = async function pointer to SFProgressTask.finalValue.getter[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_10052A950;
  v6 = v0[5];
  v7 = v0[3];

  return SFProgressTask.finalValue.getter(v0 + 12, v7);
}

uint64_t sub_10052A950()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 72);
  if (v0)
  {
    v9 = sub_10052ABB4;
  }

  else
  {
    v9 = sub_10052AAD8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10052AAD8()
{
  type metadata accessor for CancellationError();
  sub_100530ED4(&unk_10097A6B0, &type metadata accessor for CancellationError);
  swift_allocError();
  CancellationError.init()();
  swift_willThrow();
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10052ABB4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10052AC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a1;
  v143 = a2;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v127 = &v110 - v4;
  v5 = sub_10028088C(&qword_10097D430, &unk_100808E50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v125 = &v110 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v122 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v111 = *(v112 - 8);
  v14 = *(v111 + 64);
  __chkstk_darwin(v112);
  v110 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v118 = *(v140 - 8);
  v16 = *(v118 + 64);
  __chkstk_darwin(v140);
  v137 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10028088C(&qword_100974F18, &qword_1007F8330);
  v126 = *(v142 - 8);
  v18 = *(v126 + 64);
  __chkstk_darwin(v142);
  v149 = &v110 - v19;
  v134 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v145 = *(v134 - 8);
  v20 = *(v145 + 64);
  __chkstk_darwin(v134);
  v129 = (&v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = type metadata accessor for SFAirDrop.DeclineAction();
  v123 = *(v141 - 8);
  v22 = *(v123 + 64);
  v23 = __chkstk_darwin(v141);
  v120 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v154 = &v110 - v25;
  v144 = type metadata accessor for SFAirDrop.TransferType();
  v26 = *(v144 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v144);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SFAirDropReceive.AskRequest();
  v136 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SFAirDropReceive.Transfer();
  v132 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v40 = *(v153 - 8);
  v150 = *(v40 + 64);
  v41 = __chkstk_darwin(v153);
  v151 = &v110 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v152 = &v110 - v43;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v147 = *(v148 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v44 = *(v36 + 8);
  v148 = v36 + 8;
  v133 = v44;
  v44(v39, v35);
  v113 = v34;
  SFAirDropReceive.AskRequest.type.getter();
  v45 = *(v31 + 8);
  v146 = v31 + 8;
  v131 = v45;
  v45(v34, v30);
  v128 = v29;
  v46 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v47 = *(v26 + 8);
  v135 = v26 + 8;
  v130 = v47;
  v47(v29, v144);
  v48 = 1885693259;
  if ((v46 & 1) == 0)
  {
    v48 = 0x656E696C636544;
  }

  v49 = 0xE700000000000000;
  if (v46)
  {
    v49 = 0xE400000000000000;
  }

  v50 = v129;
  *v129 = v48;
  v50[1] = v49;
  LODWORD(v116) = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v51 = *(v145 + 104);
  v145 += 104;
  v117 = v51;
  v51(v50);
  v52 = v40 + 16;
  v138 = *(v40 + 16);
  v53 = v151;
  v54 = v153;
  v138(v151, v152, v153);
  v55 = *(v40 + 80);
  v56 = (v55 + 16) & ~v55;
  v57 = swift_allocObject();
  v121 = v40;
  v59 = *(v40 + 32);
  v58 = v40 + 32;
  v139 = v59;
  v60 = v53;
  v61 = v113;
  v59(v57 + v56, v60, v54);
  v62 = v50;
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  v114 = v39;
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v133(v39, v132);
  v63 = v128;
  SFAirDropReceive.AskRequest.type.getter();
  v64 = v136;
  v131(v61, v136);
  LOBYTE(v54) = SFAirDrop.TransferType.isOnlyExchange.getter();
  v130(v63, v144);
  v65 = 0x6574656C6544;
  if ((v54 & 1) == 0)
  {
    v65 = 0x747065636341;
  }

  *v62 = v65;
  v62[1] = 0xE600000000000000;
  v117(v62, v116, v134);
  (*(v118 + 104))(v137, enum case for SFAirDropReceive.ItemDestination.default(_:), v140);
  v66 = v151;
  v67 = v153;
  v118 = v52;
  v138(v151, v152, v153);
  v145 = v55;
  v68 = swift_allocObject();
  v134 = v58;
  v139(v68 + v56, v66, v67);
  v69 = v64;
  v70 = v114;
  v71 = sub_100530ED4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination);
  v72 = sub_100530ED4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination);
  v73 = v128;
  v115 = sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
  v116 = v72;
  v117 = v71;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v74 = v132;
  v75 = v133;
  (v133)(v70);
  SFAirDropReceive.AskRequest.type.getter();
  v76 = v69;
  v77 = v131;
  v131(v61, v76);
  v78 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v79 = v144;
  v80 = v130;
  (v130)(v73);
  if (v78)
  {
    v137 = 0x800000010078E4C0;
    v129 = 0xD000000000000012;
  }

  else
  {
    v129 = SFAirDrop.ContactInfo.fullName.getter();
    v137 = v81;
  }

  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v75(v70, v74);
  SFAirDropReceive.AskRequest.type.getter();
  v77(v61, v136);
  v82 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v80(v73, v79);
  if (v82)
  {
    v155 = SFAirDrop.ContactInfo.fullName.getter();
    v156 = v83;
    v84._countAndFlagsBits = 10;
    v84._object = 0xE100000000000000;
    String.append(_:)(v84);
    v85 = v110;
    SFAirDrop.ContactInfo.handle.getter();
    sub_100530ED4(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
    v86 = v112;
    v87._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v87);

    (*(v111 + 8))(v85, v86);
    v147 = v156;
  }

  else
  {
    v147 = 0x800000010078E4E0;
  }

  v88 = v142;
  v148 = ~v145;
  UUID.init()();
  static Date.now.getter();
  sub_10028088C(&qword_100974EA8, &qword_1007F82E8);
  v89 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v90 = *(v89 - 8);
  v91 = *(v90 + 72);
  v92 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1007F5670;
  v94 = v93 + v92;
  v95 = *(sub_10028088C(&qword_10097B140, &qword_1007FE418) + 48);
  v96 = v126;
  (*(v126 + 16))(v94, v149, v88);
  UUID.init()();
  (*(v90 + 104))(v94, enum case for SFAirDrop.AcceptAction.single<A>(_:), v89);
  v97 = v123;
  (*(v123 + 16))(v120, v154, v141);
  v98 = sub_10028088C(&qword_10097D440, &qword_100808E60);
  (*(*(v98 - 8) + 56))(v125, 1, 1, v98);
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v99 = type metadata accessor for TaskPriority();
  v100 = v127;
  (*(*(v99 - 8) + 56))(v127, 1, 1, v99);
  v101 = v151;
  v102 = v152;
  v103 = v153;
  v138(v151, v152, v153);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v104 = static AirDropActor.shared;
  v105 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor);
  v106 = (v145 + 32) & v148;
  v107 = swift_allocObject();
  *(v107 + 16) = v104;
  *(v107 + 24) = v105;
  v139(v107 + v106, v101, v103);

  v108 = sub_1002B282C(0, 0, v100, &unk_100808E70, v107);
  (*(v96 + 8))(v149, v142);
  (*(v97 + 8))(v154, v141);
  (*(v121 + 8))(v102, v103);
  result = sub_10028088C(&qword_100976908, &unk_100801D60);
  *(v143 + *(result + 52)) = v108;
  return result;
}

uint64_t sub_10052BDD8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a2;
  v95 = a1;
  v102 = a3;
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v100 = v80 - v5;
  v6 = sub_10028088C(&qword_10097B258, &unk_100808E00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v101 = v80 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v97 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v96 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v92 = *(v87 - 8);
  v15 = *(v92 + 64);
  __chkstk_darwin(v87);
  v86 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SFAirDrop.ContactRequest();
  v98 = *(v81 - 8);
  v17 = *(v98 + 64);
  __chkstk_darwin(v81);
  v103 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10028088C(&qword_10097B260, &unk_1007FE620);
  v111 = *(v19 - 8);
  v112 = v19;
  v20 = *(v111 + 64);
  __chkstk_darwin(v19);
  v110 = v80 - v21;
  v22 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v93 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = type metadata accessor for SFAirDrop.DeclineAction();
  v109 = *(v90 - 8);
  v27 = *(v109 + 64);
  v28 = __chkstk_darwin(v90);
  v88 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v113 = v80 - v30;
  v31 = sub_10028088C(&qword_10097B268, &unk_100808E10);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v35 = v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = v80 - v36;
  v105 = v80 - v36;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  *v26 = 0x776F4E20746F4ELL;
  v26[1] = 0xE700000000000000;
  v38 = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v39 = *(v23 + 104);
  v91 = (v23 + 104);
  v94 = v39;
  v39(v26, enum case for SFAirDrop.ButtonConfiguration.text(_:), v22);
  v40 = *(v32 + 16);
  v107 = v32 + 16;
  v108 = v40;
  v40(v35, v37, v31);
  v41 = *(v32 + 80);
  v89 = ~v41;
  v42 = (v41 + 16) & ~v41;
  v43 = swift_allocObject();
  v99 = v32;
  v104 = v31;
  v44 = *(v32 + 32);
  v44(v43 + v42, v35, v31);
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  v80[1] = v26;
  *v26 = 0x6572616853;
  v26[1] = 0xE500000000000000;
  v94(v26, v38, v93);
  v45 = type metadata accessor for SFAirDrop.ContactInfo();
  v46 = v103;
  (*(*(v45 - 8) + 16))(v103, v106, v45);
  (*(v98 + 104))(v46, enum case for SFAirDrop.ContactRequest.contact(_:), v81);
  v85 = v35;
  v47 = v104;
  v108(v35, v105, v104);
  v98 = v33;
  v94 = v41;
  v48 = swift_allocObject();
  v93 = v32 + 32;
  v91 = v44;
  v44(v48 + v42, v35, v47);
  v84 = sub_100530ED4(&qword_10097B270, &type metadata accessor for SFAirDrop.ContactRequest);
  v83 = sub_100530ED4(&qword_10097B278, &type metadata accessor for SFAirDrop.ContactRequest);
  v82 = sub_100530ED4(&qword_10097B280, &type metadata accessor for SFAirDrop.ContactRequest);
  v49 = v110;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v114 = 0x6977206572616853;
  v115 = 0xEB00000000206874;
  v50._countAndFlagsBits = SFAirDrop.ContactInfo.fullName.getter();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 63;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  v103 = v114;
  v95 = v115;
  v114 = SFAirDrop.ContactInfo.fullName.getter();
  v115 = v52;
  v53._countAndFlagsBits = 10272;
  v53._object = 0xE200000000000000;
  String.append(_:)(v53);
  v54 = v86;
  SFAirDrop.ContactInfo.handle.getter();
  sub_100530ED4(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
  v55 = v87;
  v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v56);

  (*(v92 + 8))(v54, v55);
  v57._countAndFlagsBits = 41;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  v106 = v114;
  v92 = v115;
  UUID.init()();
  static Date.now.getter();
  sub_10028088C(&qword_10097B288, &unk_1007FE630);
  v58 = sub_10028088C(&qword_10097B290, &unk_100808E20);
  v59 = *(v58 - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1007F5670;
  v63 = v62 + v61;
  LODWORD(v61) = *(sub_10028088C(&qword_10097B298, &unk_1007FE640) + 48);
  (*(v111 + 16))(v63, v49, v112);
  v64 = v102;
  UUID.init()();
  v65 = v63;
  v66 = v100;
  v67 = v58;
  v68 = v90;
  (*(v59 + 104))(v65, enum case for SFAirDrop.AcceptAction.single<A>(_:), v67);
  (*(v109 + 16))(v88, v113, v68);
  v69 = sub_10028088C(&qword_10097B2A0, &qword_100808E30);
  (*(*(v69 - 8) + 56))(v101, 1, 1, v69);
  v70 = v105;
  v71 = v85;
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v72 = type metadata accessor for TaskPriority();
  (*(*(v72 - 8) + 56))(v66, 1, 1, v72);
  v73 = v104;
  (v108)(v71, v70);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v74 = static AirDropActor.shared;
  v75 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor);
  v76 = (v94 + 32) & v89;
  v77 = swift_allocObject();
  *(v77 + 16) = v74;
  *(v77 + 24) = v75;
  v91(v77 + v76, v71, v73);

  v78 = sub_1002B2B00(0, 0, v66, &unk_100808E40, v77);
  (*(v111 + 8))(v110, v112);
  (*(v109 + 8))(v113, v68);
  (*(v99 + 8))(v70, v73);
  result = sub_10028088C(&qword_10097B200, &qword_1007FE578);
  *(v64 + *(result + 52)) = v78;
  return result;
}

uint64_t sub_10052CB30(uint64_t a1, uint64_t (*a2)(void), unsigned int *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14 - v11;
  (*(v9 + 104))(&v14 - v11, *a3, v8);
  sub_10028088C(a4, a5);
  SFProgressContinuation.finish(with:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10052CC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10028088C(&qword_10097B2A8, &unk_1007FE660);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10052CD4C, v8, 0);
}

uint64_t sub_10052CD4C()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_10028088C(&qword_10097B268, &unk_100808E10);
  SFProgressContinuation.task.getter();
  v3 = async function pointer to SFProgressTask.finalValue.getter[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1003C1614;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return SFProgressTask.finalValue.getter(v7, v6);
}

uint64_t sub_10052CE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100982548, &qword_100808EC8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_10028088C(&qword_100982550, &qword_100808ED0);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateContinuation;
  swift_beginAccess();
  sub_1005308A8(v7, a2 + v10);
  return swift_endAccess();
}

uint64_t sub_10052CF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v5[30] = v9;
  v10 = *(v9 - 8);
  v5[31] = v10;
  v11 = *(v10 + 64) + 15;
  v5[32] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropReceive.Transfer();
  v5[33] = v12;
  v13 = *(v12 - 8);
  v5[34] = v13;
  v14 = *(v13 + 64) + 15;
  v5[35] = swift_task_alloc();
  v15 = *(*(sub_10028088C(&qword_100976908, &unk_100801D60) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;
  v5[37] = static AirDropActor.shared;

  return _swift_task_switch(sub_10052D158, v16, 0);
}

uint64_t sub_10052D158()
{
  v1 = *(v0 + 192);
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 56);
  sub_10028088C(&qword_1009892F0, &qword_1007F9888);
  sub_10028088C(&qword_100982558, &qword_100808ED8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    sub_1000121F8((v0 + 96), v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v5);
    if ((*(v6 + 8))(v3, v4, v5, v6))
    {
      v7 = *(v0 + 192);
      *(v0 + 304) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Ask open destination START", v10, 2u);
      }

      v11 = *(v0 + 288);
      v12 = *(v0 + 176);

      v13 = *(v0 + 40);
      v14 = *(v0 + 48);
      sub_10002CDC0((v0 + 16), v13);
      (*(v14 + 16))(v12, v13, v14);
      v15 = *(v0 + 280);
      v16 = *(v0 + 288);
      v40 = *(v0 + 272);
      v41 = *(v0 + 264);
      v26 = *(v0 + 248);
      v25 = *(v0 + 256);
      v27 = *(v0 + 208);
      v28 = *(v0 + 184);
      v38 = *(v0 + 240);
      v39 = *(v0 + 192);
      v29 = *(v0 + 168);
      v35 = *(v0 + 200);
      v36 = *(v0 + 176);
      v30 = sub_10028088C(&unk_10097C670, &qword_100805110);
      v31 = v30[12];
      v32 = v30[16];
      v37 = v30[20];
      v33 = *(v27 + 16);
      *(v0 + 312) = v33;
      *(v0 + 320) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v33(v25, v28, v35);
      *(v25 + v31) = v29;
      *(v25 + v32) = v36;
      v34 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
      (*(*(v34 - 8) + 16))(v25 + v37, v16, v34);
      (*(v26 + 104))(v25, enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:), v38);

      sub_100687AF8(v25, v15);
      (*(v26 + 8))(v25, v38);
      (*(v40 + 8))(v15, v41);

      return _swift_task_switch(sub_10052D5D4, 0, 0);
    }

    sub_10000C60C((v0 + 16));
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100005508(v0 + 96, &qword_100982560, &qword_100808EE0);
  }

  (*(*(v0 + 208) + 16))(*(v0 + 160), *(v0 + 184), *(v0 + 200));
  v18 = *(v0 + 280);
  v17 = *(v0 + 288);
  v19 = *(v0 + 256);
  v21 = *(v0 + 224);
  v20 = *(v0 + 232);
  v22 = *(v0 + 216);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10052D5D4()
{
  v1 = v0[36];
  v2 = swift_task_alloc();
  v0[41] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[42] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_10052D6DC;
  v6 = v0[29];
  v7 = v0[25];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_100808EE8, v2, sub_1002E3960, v3, 0, 0, v7);
}

uint64_t sub_10052D6DC()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v10 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_10052DA6C;
    v5 = 0;
  }

  else
  {
    v7 = v2[41];
    v6 = v2[42];
    v8 = v2[37];

    v4 = sub_10052D80C;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10052D80C()
{
  v33 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 192);
  (*(v0 + 312))(*(v0 + 224), *(v0 + 232), *(v0 + 200));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 312);
    v30 = *(v0 + 320);
    v31 = *(v0 + 288);
    v8 = *(v0 + 216);
    v7 = *(v0 + 224);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315138;
    v6(v8, v7, v10);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    (*(v9 + 8))(v7, v10);
    v16 = sub_10000C4E4(v13, v15, &v32);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Ask open destination END {destination: %s}", v11, 0xCu);
    sub_10000C60C(v12);

    v17 = v31;
  }

  else
  {
    v18 = *(v0 + 288);
    v19 = *(v0 + 224);
    v20 = *(v0 + 200);
    v21 = *(v0 + 208);

    (*(v21 + 8))(v19, v20);
    v17 = v18;
  }

  sub_100005508(v17, &qword_100976908, &unk_100801D60);
  (*(*(v0 + 208) + 32))(*(v0 + 160), *(v0 + 232), *(v0 + 200));
  sub_10000C60C((v0 + 16));
  v23 = *(v0 + 280);
  v22 = *(v0 + 288);
  v24 = *(v0 + 256);
  v26 = *(v0 + 224);
  v25 = *(v0 + 232);
  v27 = *(v0 + 216);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10052DA6C()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[37];

  return _swift_task_switch(sub_10052DAE0, v3, 0);
}

uint64_t sub_10052DAE0()
{
  sub_100005508(v0[36], &qword_100976908, &unk_100801D60);
  v1 = v0[44];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  sub_10000C60C(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10052DBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v8 = *(sub_10028088C(&qword_100976908, &unk_100801D60) - 8);
  v5[15] = v8;
  v5[16] = *(v8 + 64);
  v5[17] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = sub_10028088C(&qword_100982568, &qword_100808EF0);
  v5[19] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = *(*(sub_10028088C(&qword_100982520, &qword_10080E300) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v13 = sub_10028088C(&qword_100982528, &unk_100808DB0);
  v5[22] = v13;
  v14 = *(v13 - 8);
  v5[23] = v14;
  v5[24] = *(v14 + 64);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v5[28] = static AirDropActor.shared;

  return _swift_task_switch(sub_10052DE6C, v15, 0);
}

uint64_t sub_10052DE6C()
{
  v1 = v0[21];
  v2 = *(v0[9] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
  swift_beginAccess();
  sub_10000FF90(v2 + v3, v1, &qword_100982520, &qword_10080E300);
  v4 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_100005508(v0[21], &qword_100982520, &qword_10080E300);

    return _swift_task_switch(sub_10052E55C, 0, 0);
  }

  else
  {
    v6 = v0[26];
    v7 = v0[27];
    v8 = v0[22];
    v9 = v0[23];
    v10 = v0[21];
    v11 = v0[17];
    v28 = v0[18];
    v36 = v0[24];
    v37 = v0[16];
    v29 = v0[15];
    v30 = v7;
    v33 = v0[14];
    v34 = v0[25];
    v12 = v0[11];
    v39 = v0[12];
    v32 = v0[10];
    v40 = v0[9];
    v31 = v0[8];
    v27 = v0[7];
    SFProgressContinuation.task.getter();
    (*(v5 + 8))(v10, v4);
    v35 = *(v9 + 32);
    v26 = v8;
    v35(v7, v6, v8);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v28, 1, 1, v13);
    sub_10000FF90(v27, v11, &qword_100976908, &unk_100801D60);
    v14 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v38 = swift_allocObject();
    v0[29] = v38;
    sub_10002C4E4(v11, v38 + v14, &qword_100976908, &unk_100801D60);
    (*(v9 + 16))(v34, v30, v8);
    (*(v12 + 16))(v33, v31, v32);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = (v36 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (*(v12 + 80) + v16 + 8) & ~*(v12 + 80);
    v18 = swift_allocObject();
    v0[30] = v18;
    v35(v18 + v15, v34, v26);
    *(v18 + v16) = v40;
    v19 = *(v12 + 32);
    v0[31] = v19;
    v0[32] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v19(v18 + v17, v33, v32);
    v20 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];

    v21 = swift_task_alloc();
    v0[33] = v21;
    *v21 = v0;
    v21[1] = sub_10052E2A0;
    v23 = v0[19];
    v22 = v0[20];
    v24 = v0[18];

    return concurrentRace<A>(priority:operation:against:)(v22, v24, &unk_100808F08, v38, &unk_100808F18, v18, v23);
  }
}

uint64_t sub_10052E2A0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v6 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 272) = v0;

  sub_100005508(v6, &qword_100976160, &qword_1007F8770);

  v8 = *(v2 + 224);
  if (v0)
  {
    v9 = sub_10052EA04;
  }

  else
  {
    v9 = sub_10052E438;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10052E438()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[10];
  v7 = v0[5];
  v6 = v0[6];
  (*(v0[23] + 8))(v0[27], v0[22]);
  v8 = *(v4 + 48);
  v2(v7, v3, v5);
  sub_10002C4E4(v3 + v8, v6, &qword_100982508, &unk_100808D50);
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  v13 = v0[20];
  v12 = v0[21];
  v15 = v0[17];
  v14 = v0[18];
  v17 = v0[13];
  v16 = v0[14];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10052E55C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[35] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[36] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_10052E664;
  v6 = v0[13];
  v7 = v0[10];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_100808EF8, v2, sub_1002E3960, v3, 0, 0, v7);
}

uint64_t sub_10052E664()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v10 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_10052E8BC;
    v5 = 0;
  }

  else
  {
    v7 = v2[35];
    v6 = v2[36];
    v8 = v2[28];

    v4 = sub_10052E794;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10052E794()
{
  v1 = v0[6];
  (*(v0[11] + 32))(v0[5], v0[13], v0[10]);
  v2 = _s15ExchangeRequestVMa(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[17];
  v8 = v0[18];
  v11 = v0[13];
  v10 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10052E8BC()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[28];

  return _swift_task_switch(sub_10052E930, v3, 0);
}

uint64_t sub_10052E930()
{
  v1 = v0[38];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[13];
  v9 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10052EA04()
{
  (*(v0[23] + 8))(v0[27], v0[22]);
  v1 = v0[34];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[13];
  v9 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10052EAF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10052EBF0, 0, 0);
}

uint64_t sub_10052EBF0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_10052ECF8;
  v6 = v0[6];
  v7 = v0[4];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_100808F20, v2, sub_1002E3960, v3, 0, 0, v7);
}

uint64_t sub_10052ECF8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10052EF1C;
    v5 = 0;
  }

  else
  {
    v7 = v2[8];
    v6 = v2[9];
    v8 = v2[7];

    v4 = sub_10052EE28;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10052EE28()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(sub_10028088C(&qword_100982568, &qword_100808EF0) + 48);
  (*(v2 + 32))(v4, v1, v3);
  v6 = _s15ExchangeRequestVMa(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10052EF1C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  return _swift_task_switch(sub_10052EF90, v3, 0);
}

uint64_t sub_10052EF90()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_10052EFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = _s15ExchangeRequestVMa(0);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[10] = v11;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4[11] = static AirDropActor.shared;
  v12 = async function pointer to SFProgressTask.finalValue.getter[1];
  v13 = swift_task_alloc();
  v4[12] = v13;
  v14 = sub_10028088C(&qword_100982528, &unk_100808DB0);
  *v13 = v4;
  v13[1] = sub_10052F1B4;

  return SFProgressTask.finalValue.getter(v11, v14);
}

uint64_t sub_10052F1B4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_10052F568;
  }

  else
  {
    v4 = sub_10052F2DC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10052F2DC()
{
  v26 = v0;
  v1 = v0[3];
  v24 = *(v0[6] + 16);
  v24(v0[7], v0[4], v0[5]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v8 = 136315138;
    sub_100530ED4(&qword_100982570, &type metadata accessor for SFAirDropReceive.ItemDestination);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v6 + 8))(v5, v7);
    v12 = sub_10000C4E4(v9, v11, &v25);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got contact exchange request before user chose to open/move, picking default destination: %s", v8, 0xCu);
    sub_10000C60C(v23);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v0[9];
  v13 = v0[10];
  v16 = v0[7];
  v15 = v0[8];
  v18 = v0[4];
  v17 = v0[5];
  v19 = v0[2];
  v20 = *(sub_10028088C(&qword_100982568, &qword_100808EF0) + 48);
  v24(v19, v18, v17);
  sub_1005304C4(v13, v19 + v20, _s15ExchangeRequestVMa);
  (*(v14 + 56))(v19 + v20, 0, 1, v15);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10052F568()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

void sub_10052F5D8()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
}

uint64_t sub_10052F618()
{
  v0 = sub_100687998();
  v1 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_nearbyAgent);

  v2 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10052F744(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10052F764, 0, 0);
}

uint64_t sub_10052F764()
{
  v1 = v0[3];
  v2 = *(v1 + *(sub_10028088C(&qword_100976908, &unk_100801D60) + 52));
  v3 = async function pointer to Task.value.getter[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  v5 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v6 = sub_10028088C(&unk_10097A930, &unk_1007F9050);
  *v4 = v0;
  v4[1] = sub_10052F858;
  v7 = v0[2];

  return Task.value.getter(v7, v2, v5, v6, &protocol self-conformance witness table for Error);
}

uint64_t sub_10052F858()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10052F94C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10052F96C, 0, 0);
}

uint64_t sub_10052F96C()
{
  v1 = v0[3];
  v2 = *(v1 + *(sub_10028088C(&qword_10097B200, &qword_1007FE578) + 52));
  v3 = async function pointer to Task.value.getter[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  v5 = type metadata accessor for SFAirDrop.ContactRequest();
  v6 = sub_10028088C(&unk_10097A930, &unk_1007F9050);
  *v4 = v0;
  v4[1] = sub_100530FC8;
  v7 = v0[2];

  return Task.value.getter(v7, v2, v5, v6, &protocol self-conformance witness table for Error);
}

void sub_10052FA60(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_100976908, &unk_100801D60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  if (qword_1009739D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100982810);
  sub_10000FF90(a1, v10, &qword_100976908, &unk_100801D60);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    SFAirDrop.PermissionRequest.id.getter();
    sub_100005508(v10, &qword_100976908, &unk_100801D60);
    sub_100530ED4(&qword_100978CE0, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v3 + 8))(v6, v2);
    v20 = sub_10000C4E4(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "SDAirDropPermissionRequestTask[%s] was cancelled", v15, 0xCu);
    sub_10000C60C(v16);

    a1 = v22;
  }

  else
  {
    sub_100005508(v10, &qword_100976908, &unk_100801D60);
  }

  v21 = *(a1 + *(v7 + 52));
  type metadata accessor for SFAirDropReceive.ItemDestination();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  Task.cancel()();
}

void sub_10052FD98(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_10097B200, &qword_1007FE578);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  if (qword_1009739D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100982810);
  sub_10000FF90(a1, v10, &qword_10097B200, &qword_1007FE578);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    SFAirDrop.PermissionRequest.id.getter();
    sub_100005508(v10, &qword_10097B200, &qword_1007FE578);
    sub_100530ED4(&qword_100978CE0, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v3 + 8))(v6, v2);
    v20 = sub_10000C4E4(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "SDAirDropPermissionRequestTask[%s] was cancelled", v15, 0xCu);
    sub_10000C60C(v16);

    a1 = v22;
  }

  else
  {
    sub_100005508(v10, &qword_10097B200, &qword_1007FE578);
  }

  v21 = *(a1 + *(v7 + 52));
  type metadata accessor for SFAirDrop.ContactRequest();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  Task.cancel()();
}

void sub_1005300D0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_10097B1F0, &qword_1007FE568);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  if (qword_1009739D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100982810);
  sub_10000FF90(a1, v10, &qword_10097B1F0, &qword_1007FE568);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    sub_10028088C(&qword_10097B218, &unk_100809050);
    SFAirDrop.PermissionRequest.id.getter();
    sub_100005508(v10, &qword_10097B1F0, &qword_1007FE568);
    sub_100530ED4(&qword_100978CE0, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v3 + 8))(v6, v2);
    v20 = sub_10000C4E4(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "SDAirDropPermissionRequestTask[%s] was cancelled", v15, 0xCu);
    sub_10000C60C(v16);

    a1 = v22;
  }

  else
  {
    sub_100005508(v10, &qword_10097B1F0, &qword_1007FE568);
  }

  v21 = *(a1 + *(v7 + 52));
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  Task.cancel()();
}

uint64_t sub_100530400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100530460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropServerConnection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005304C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100530570(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097B268, &unk_100808E10) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10052CC44(a1, v6, v7, v1 + v5);
}

uint64_t sub_100530738(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(sub_10028088C(a2, a3) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  return SFProgressContinuation.finish(with:)();
}

uint64_t sub_1005307A4(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10041C2D0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1005308A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100982548, &qword_100808EC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100530918(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100976908, &unk_100801D60) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_10052EAF0(a1, v1 + v5);
}

uint64_t sub_100530A00(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_100982528, &unk_100808DB0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SFAirDropReceive.ItemDestination() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100005C00;

  return sub_10052EFF4(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_100530B64(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100530B7C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (sub_10028088C(a1, a2) - 8);
  v8 = (*(*v7 + 80) + 16) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v10 = sub_10028088C(a3, a4);
  (*(*(v10 - 8) + 8))(v4 + v8, v10);
  v11 = *(v4 + v8 + v7[15]);

  return _swift_deallocObject(v4, v8 + v9);
}

uint64_t sub_100530C74(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097B200, &qword_1007FE578) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_10052A378(a1, v1 + v5);
}

uint64_t sub_100530D5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C00;

  return sub_10052A6D0(a1, v1);
}

uint64_t sub_100530E20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_100504674(a1, v4, v5, v6);
}

uint64_t sub_100530ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100530F44()
{
  result = type metadata accessor for SFAirDropReceive.AskResponse();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SFAirDropReceive.Transfer();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100530FCC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982650);
  v1 = sub_10000C4AC(v0, qword_100982650);
  if (qword_100973700 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0948);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100531094()
{
  v1 = v0;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v16);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1002DDC10();
  v15[1] = "";
  v15[2] = v10;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v0 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = nw_path_monitor_create();
  *(v0 + 48) = v11;
  *(v0 + 56) = 2;
  nw_path_monitor_set_queue(v11, *(v0 + 40));
  v12 = *(v0 + 48);
  aBlock[4] = sub_100531B20;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100531428;
  aBlock[3] = &unk_1008E6308;
  v13 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  nw_path_monitor_set_update_handler(v12, v13);
  _Block_release(v13);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1005313A8(NSObject *a1, uint64_t a2)
{
  result = nw_path_get_status(a1);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 56);
    if (v7 == 2 || (v7 & 1) == 0)
    {
      v8 = result;
      v9 = *(a2 + 24);

      v4(v10);
      sub_1002F5A40(v4, v6);
      result = v8;
    }
  }

  *(a2 + 56) = result == 1;
  return result;
}

uint64_t sub_100531428(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1005314A8(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    if (qword_1009739C8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100982650);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Network path monitor already started";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v2, v4, v3, 2u);
    }
  }

  else
  {
    nw_path_monitor_start(*(a1 + 48));
    *(a1 + 32) = 1;
    if (qword_1009739C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100982650);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Network path monitor started";
      goto LABEL_10;
    }
  }
}

uint64_t sub_100531664(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 40);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

void sub_1005318F4(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    nw_path_monitor_cancel(*(a1 + 48));
    *(a1 + 32) = 0;
    if (qword_1009739C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100982650);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Network path monitor stopped";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);
    }
  }

  else
  {
    if (qword_1009739C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100982650);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Network path monitor already stopped";
      goto LABEL_10;
    }
  }
}

uint64_t sub_100531A8C()
{
  sub_1002F5A40(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100531AF8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_1002F5A40(v4, v5);
}

uint64_t sub_100531B38(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for Logger();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v34);
  v7 = &v33[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33[-1] - v11;
  swift_beginAccess();
  v13 = *(v1 + 72);
  if (*(v13 + 16) && (v14 = sub_100570848(a1), (v15 & 1) != 0))
  {
    (*(v9 + 16))(v12, *(v13 + 56) + *(v9 + 72) * v14, v8);
    swift_endAccess();
    SFProgressTask.cancel(_:)();
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    swift_endAccess();
    SFAirDrop.TransferIdentifier.stringValue.getter();
    sub_10054141C(8);

    v17 = static String._fromSubstring(_:)();
    v19 = v18;

    v33[0] = 0x2E706F7244726941;
    v33[1] = 0xE800000000000000;
    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    Logger.init(subsystem:category:)();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315138;
      v25 = *(v2 + 72);
      type metadata accessor for SFAirDrop.TransferIdentifier();
      sub_100537040(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier);

      v26 = Dictionary.Keys.description.getter();
      v28 = v27;

      v29 = sub_10000C4E4(v26, v28, v33);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "No send transfer to cancel. Current transfer IDs: %s", v23, 0xCu);
      sub_10000C60C(v24);
    }

    (*(v4 + 8))(v7, v34);
    v30 = type metadata accessor for SFAirDropSend.Failure();
    sub_100537040(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, enum case for SFAirDropSend.Failure.badRequest(_:), v30);
    return swift_willThrow();
  }
}

uint64_t sub_100531FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v122 = a5;
  v138 = a3;
  v139 = a4;
  v144 = a2;
  v127 = a1;
  v124 = a6;
  v6 = sub_10028088C(&qword_100976468, &qword_1007F9738);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v125 = v103 - v8;
  v9 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v120 = v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for SFAirDropClient.Identifier();
  v116 = *(v118 - 8);
  v12 = *(v116 + 64);
  __chkstk_darwin(v118);
  v117 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v115 = v103 - v16;
  v110 = type metadata accessor for SFAirDrop.DisplayPriority();
  v109 = *(v110 - 8);
  v17 = *(v109 + 64);
  __chkstk_darwin(v110);
  v113 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for SFAirDropSend.Transfer.State();
  v106 = *(v107 - 8);
  v19 = *(v106 + 64);
  __chkstk_darwin(v107);
  v112 = v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v108 = v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for SFAirDropSend.Transfer();
  v137 = *(v123 - 8);
  v24 = *(v137 + 64);
  v25 = __chkstk_darwin(v123);
  v121 = v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v134 = v103 - v28;
  v119 = v29;
  __chkstk_darwin(v27);
  v136 = v103 - v30;
  v145 = type metadata accessor for SFAirDropSend.Request();
  v143 = *(v145 - 8);
  v31 = *(v143 + 64);
  v32 = __chkstk_darwin(v145);
  v131 = v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v33;
  __chkstk_darwin(v32);
  v35 = v103 - v34;
  v36 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v142 = *(v36 - 8);
  v37 = *(v142 + 64);
  __chkstk_darwin(v36);
  v39 = v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for Logger();
  v133 = *(v135 - 8);
  v40 = *(v133 + 64);
  v41 = __chkstk_darwin(v135);
  v130 = v103 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v42;
  __chkstk_darwin(v41);
  v44 = v103 - v43;
  SFAirDropSend.Request.id.getter();
  SFAirDrop.TransferIdentifier.stringValue.getter();
  sub_10054141C(8);

  v45 = static String._fromSubstring(_:)();
  v47 = v46;

  v146 = 0x2E706F7244726941;
  v147 = 0xE800000000000000;
  v48._countAndFlagsBits = v45;
  v48._object = v47;
  String.append(_:)(v48);

  v49 = v36;
  v50 = v142;
  Logger.init(subsystem:category:)();
  v51 = *(v50 + 8);
  v141 = v39;
  v52 = v49;
  v126 = v51;
  v51(v39, v49);
  v53 = v35;
  v54 = v35;
  v55 = v127;
  v128 = *(v143 + 16);
  v129 = v143 + 16;
  v128(v54);

  v132 = v44;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  v58 = os_log_type_enabled(v56, v57);
  v142 = v50 + 8;
  v105 = v49;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v146 = v104;
    *v59 = 136315394;
    v60 = v141;
    SFAirDropSend.Request.id.getter();
    v61 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v62 = v55;
    v64 = v63;
    v126(v60, v52);
    (*(v143 + 8))(v53, v145);
    v65 = sub_10000C4E4(v61, v64, &v146);
    v55 = v62;

    *(v59 + 4) = v65;
    *(v59 + 12) = 2080;
    type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    sub_100537040(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v66 = Set.description.getter();
    v68 = sub_10000C4E4(v66, v67, &v146);

    *(v59 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v56, v57, "Classroom Send StateMachine START %s {initialEndpoints: %s}", v59, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v143 + 8))(v53, v145);
  }

  v104 = sub_1005369A0(v55, v144);
  v103[1] = v69;
  v70 = v141;
  SFAirDropSend.Request.id.getter();
  v71 = v131;
  (v128)(v131, v55, v145);
  static Date.now.getter();
  (*(v106 + 104))(v112, enum case for SFAirDropSend.Transfer.State.created(_:), v107);
  (*(v109 + 104))(v113, enum case for SFAirDrop.DisplayPriority.normal(_:), v110);
  v72 = type metadata accessor for SFNWInterfaceType();
  (*(*(v72 - 8) + 56))(v115, 1, 1, v72);
  (*(v116 + 16))(v117, v122, v118);

  SFAirDrop.NetworkMetrics.init()();
  v73 = v136;
  v74 = v71;
  SFAirDropSend.Transfer.init(id:sendRequest:receiverName:startDate:state:displayPriority:bundleIdentifier:activeInterfaceType:presenter:networkMetrics:)();
  v146 = 0;
  v147 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v146 = 0xD000000000000018;
  v147 = 0x8000000100794CF0;
  v75 = v127;
  SFAirDropSend.Request.id.getter();
  sub_100537040(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v76 = v105;
  v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v77);

  v126(v70, v76);
  v78._countAndFlagsBits = 93;
  v78._object = 0xE100000000000000;
  String.append(_:)(v78);
  v142 = v146;
  v126 = v147;
  v79 = v137;
  v80 = *(v137 + 16);
  v81 = v123;
  v80(v134, v73, v123);
  v82 = v121;
  v80(v121, v73, v81);
  (v128)(v74, v75, v145);
  v83 = v133;
  (*(v133 + 16))(v130, v132, v135);
  v84 = (*(v79 + 80) + 24) & ~*(v79 + 80);
  v85 = (v119 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = v143;
  v87 = (*(v143 + 80) + v85 + 8) & ~*(v143 + 80);
  v88 = (v114 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = (*(v83 + 80) + v88 + 16) & ~*(v83 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = v140;
  (*(v79 + 32))(v90 + v84, v82, v81);
  v91 = v145;
  *(v90 + v85) = v144;
  (*(v86 + 32))(v90 + v87, v131, v91);
  v92 = (v90 + v88);
  v93 = v139;
  *v92 = v138;
  v92[1] = v93;
  v94 = v133;
  v95 = v135;
  (*(v133 + 32))(v90 + v89, v130, v135);

  v96 = v124;
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v97 = v141;
  v98 = v136;
  SFAirDropSend.Transfer.id.getter();
  v99 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v100 = *(v99 - 8);
  v101 = v125;
  (*(v100 + 16))(v125, v96, v99);
  (*(v100 + 56))(v101, 0, 1, v99);
  swift_beginAccess();
  sub_1002B0C84(v101, v97);
  swift_endAccess();
  (*(v137 + 8))(v98, v81);
  return (*(v94 + 8))(v132, v95);
}

uint64_t sub_100532E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a7;
  v8[35] = a8;
  v8[32] = a5;
  v8[33] = a6;
  v8[30] = a3;
  v8[31] = a4;
  v8[28] = a1;
  v8[29] = a2;
  v9 = *(*(type metadata accessor for SFAirDrop.NetworkMetrics() - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SFAirDropClient.Identifier() - 8) + 64) + 15;
  v8[37] = swift_task_alloc();
  v11 = *(*(sub_10028088C(&qword_100977DC0, &unk_1007FB320) - 8) + 64) + 15;
  v8[38] = swift_task_alloc();
  v12 = *(*(type metadata accessor for SFAirDrop.DisplayPriority() - 8) + 64) + 15;
  v8[39] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropSend.Transfer.State();
  v8[40] = v13;
  v14 = *(v13 - 8);
  v8[41] = v14;
  v15 = *(v14 + 64) + 15;
  v8[42] = swift_task_alloc();
  v16 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v17 = *(*(sub_10028088C(&qword_100976468, &qword_1007F9738) - 8) + 64) + 15;
  v8[45] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v8[46] = v18;
  v19 = *(v18 - 8);
  v8[47] = v19;
  v20 = *(v19 + 64) + 15;
  v8[48] = swift_task_alloc();
  v21 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v8[49] = v21;
  v22 = *(v21 - 8);
  v8[50] = v22;
  v23 = *(v22 + 64) + 15;
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v24 = type metadata accessor for Logger();
  v8[53] = v24;
  v25 = *(v24 - 8);
  v8[54] = v25;
  v26 = *(v25 + 64) + 15;
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v27 = type metadata accessor for SFAirDropSend.Transfer();
  v8[57] = v27;
  v28 = *(v27 - 8);
  v8[58] = v28;
  v29 = *(v28 + 64) + 15;
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v30 = type metadata accessor for SFAirDropSend.Request();
  v8[63] = v30;
  v31 = *(v30 - 8);
  v8[64] = v31;
  v32 = *(v31 + 64) + 15;
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v33 = *(*(sub_10028088C(&qword_100982800, &qword_1008091A8) - 8) + 64) + 15;
  v8[73] = swift_task_alloc();
  v34 = type metadata accessor for SFAirDrop.TransferType();
  v8[74] = v34;
  v35 = *(v34 - 8);
  v8[75] = v35;
  v36 = *(v35 + 64) + 15;
  v8[76] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v37 = static AirDropActor.shared;
  v8[77] = static AirDropActor.shared;

  return _swift_task_switch(sub_100533364, v37, 0);
}

uint64_t sub_100533364()
{
  v190 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 264);
  SFAirDropSend.Request.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isOnlyExchange.getter();
  v5 = *(v2 + 8);
  *(v0 + 624) = v5;
  *(v0 + 632) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (v4)
  {
LABEL_4:
    v137 = v5;
    v12 = *(v0 + 576);
    v13 = *(v0 + 504);
    v14 = *(v0 + 512);
    v15 = *(v0 + 496);
    v16 = *(v0 + 456);
    v17 = *(v0 + 464);
    v18 = *(v0 + 448);
    v19 = *(v0 + 424);
    v20 = *(v0 + 432);
    v21 = *(v0 + 264);
    v22 = *(v0 + 272);
    v24 = *(v0 + 248);
    v23 = *(v0 + 256);
    v25 = *(v14 + 16);
    *(v0 + 640) = v25;
    *(v0 + 648) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v181 = v25;
    v186 = v18;
    v25(v12, v21, v13);
    v132 = *(v17 + 16);
    v132(v15, v23, v16);
    v168 = *(v20 + 16);
    v168(v186, v22, v19);
    v141 = v24[7];
    *(v0 + 656) = v141;
    v135 = v24[8];
    *(v0 + 664) = v135;
    v26 = v24[5];
    v27 = v24[6];
    v131 = v24[3];
    v136 = v24[2];
    v28 = v24[4];
    *(v0 + 672) = v28;
    v29 = objc_allocWithZone(_s6RunnerCMa(0));
    v30 = &_swiftEmptySetSingleton;
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1002F4CDC(_swiftEmptyArrayStorage);
      }

      else
      {
        v30 = &_swiftEmptySetSingleton;
      }
    }

    v31 = *(v0 + 608);
    v127 = *(v0 + 592);
    v32 = *(v0 + 576);
    v155 = *(v0 + 568);
    v149 = *(v0 + 560);
    v187 = *(v0 + 512);
    v146 = *(v0 + 504);
    v34 = *(v0 + 488);
    v33 = *(v0 + 496);
    v128 = *(v0 + 480);
    v134 = *(v0 + 464);
    v176 = *(v0 + 456);
    v162 = *(v0 + 440);
    v165 = *(v0 + 448);
    v133 = *(v0 + 432);
    v159 = *(v0 + 424);
    v139 = *(v0 + 280);
    v129 = *(v0 + 232);
    v130 = *(v0 + 240);
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_sendConnections] = v30;
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection] = 0;
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_urls] = 0;
    v35 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner____lazy_storage___senderContact;
    v36 = sub_10028088C(&qword_10097B198, &qword_1007FE450);
    (*(*(v36 - 8) + 56))(&v29[v35], 1, 1, v36);
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_pseudonymService] = v26;
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_nearbyAgent] = v27;
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService] = v28;

    v37 = v27;
    v144 = v28;
    static SFAirDrop.TransferType.transferType(for:shouldExchangeContacts:)();
    SFAirDropSend.Request.requestWithType(_:)();
    v137(v31, v127);
    v181(v149, v155, v146);
    v132(v34, v33, v176);
    v168(v162, v165, v159);
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_mediaConversionDestinations] = _swiftEmptyArrayStorage;
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction] = 0;
    v38 = &v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_powerAssertion];
    *v38 = 0;
    v38[4] = 1;
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_displayPriorityReturnToNormalTask] = 0;
    *(v0 + 160) = &_swiftEmptySetSingleton;
    v39 = sub_10028088C(&qword_100980290, &qword_100809190);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints] = CurrentValueSubject.init(_:)();
    *(v0 + 168) = &_swiftEmptySetSingleton;
    v42 = *(v39 + 48);
    v43 = *(v39 + 52);
    swift_allocObject();
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints] = CurrentValueSubject.init(_:)();
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus] = v131;
    v181(&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest], v149, v146);
    v132(&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer], v34, v176);
    v132(v128, v34, v176);
    v44 = sub_10028088C(&qword_1009827F8, &qword_100809198);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v47 = v131;
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_subject] = CurrentValueSubject.init(_:)();
    v48 = &v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield];
    *v48 = v129;
    *(v48 + 1) = v130;
    *&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_queue] = v136;
    v168(&v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log], v162, v159);
    v49 = &v29[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager];
    *v49 = v141;
    *(v49 + 1) = v135;
    v50 = _s10BaseRunnerCMa_0();
    *(v0 + 144) = v29;
    *(v0 + 152) = v50;

    v51 = v136;
    swift_unknownObjectRetain();
    v52 = objc_msgSendSuper2((v0 + 144), "init");
    *(v0 + 680) = v52;
    v53 = v52;
    sub_100336238(v34);

    v54 = *(v133 + 8);
    v54(v162, v159);
    v55 = *(v134 + 8);
    v55(v34, v176);
    v56 = *(v187 + 8);
    *(v0 + 688) = v56;
    *(v0 + 696) = (v187 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56(v149, v146);
    v56(v155, v146);
    v54(v165, v159);
    v55(v33, v176);
    v177 = v56;
    v56(v32, v146);
    sub_100318600(v139, v0 + 16);
    if (*(v0 + 40))
    {
      sub_10028088C(&qword_10097F358, &qword_1008050E8);
      type metadata accessor for SDAirDropDiscoveredPerson();
      if (swift_dynamicCast())
      {
        v57 = *(v0 + 216);
        v58 = &OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_connectableUUID;
        goto LABEL_12;
      }
    }

    else
    {
      sub_100005508(v0 + 16, &qword_100977DC8, &unk_1008091C0);
    }

    sub_100318600(*(v0 + 280), v0 + 56);
    if (!*(v0 + 80))
    {
      sub_100005508(v0 + 56, &qword_100977DC8, &unk_1008091C0);
      goto LABEL_14;
    }

    sub_10028088C(&qword_10097F358, &qword_1008050E8);
    type metadata accessor for SDAirDropDiscoveredDevice();
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_14:
      v61 = *(v0 + 272);
      v181(*(v0 + 552), *(v0 + 264), *(v0 + 504));
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 552);
      v66 = *(v0 + 504);
      if (v64)
      {
        v67 = *(v0 + 416);
        v68 = *(v0 + 400);
        v172 = *(v0 + 392);
        v69 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v189[0] = v182;
        *v69 = 136315138;
        SFAirDropSend.Request.id.getter();
        v70 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
        v72 = v71;
        (*(v68 + 8))(v67, v172);
        v177(v65, v66);
        v73 = sub_10000C4E4(v70, v72, v189);

        *(v69 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v62, v63, "%s Starting to resolve endpoints", v69, 0xCu);
        sub_10000C60C(v182);
      }

      else
      {

        v56(v65, v66);
      }

      v74 = *(v0 + 384);
      v75 = *(v0 + 264);
      SFAirDropSend.Request.endpointID.getter();
      v76 = swift_task_alloc();
      *(v0 + 704) = v76;
      *v76 = v0;
      v76[1] = sub_100534460;
      v77 = *(v0 + 384);

      return sub_10048D4A0(v77);
    }

    v57 = *(v0 + 208);
    v58 = &OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_connectableUUID;
LABEL_12:
    v59 = *v58;
    v60 = v53;
    sub_10053667C(v60, v57 + v59, v144);

    goto LABEL_14;
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = *(v7 + 56);
  v9 = *(v7 + 64);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  v11(0, ObjectType, v9);
  if (SFAirDropSend.Request.urls.getter() || (v79 = *(v0 + 584), v80 = *(v0 + 264), SFAirDropSend.Request.urlsPromise.getter(), v81 = sub_10028088C(&qword_100982808, &unk_1008091B0), LODWORD(v80) = (*(*(v81 - 8) + 48))(v79, 1, v81), sub_100005508(v79, &qword_100982800, &qword_1008091A8), v80 != 1) && (v82 = *(v0 + 264), SFAirDropSend.Request.urlsMetadata.getter()))
  {

    goto LABEL_4;
  }

  v83 = *(v0 + 264);
  v84 = SFAirDropSend.Request.customPayload.getter();
  if (v85 >> 60 != 15)
  {
    sub_10028BCC0(v84, v85);
    goto LABEL_4;
  }

  v86 = type metadata accessor for SFAirDropSend.Failure();
  sub_100537040(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v86 - 8) + 104))(v87, enum case for SFAirDropSend.Failure.badRequest(_:), v86);
  swift_willThrow();
  v88 = *(v0 + 272);
  (*(*(v0 + 512) + 16))(*(v0 + 520), *(v0 + 264), *(v0 + 504));
  swift_errorRetain();
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();

  v91 = os_log_type_enabled(v89, v90);
  v92 = *(v0 + 520);
  v93 = *(v0 + 512);
  v183 = *(v0 + 504);
  if (v91)
  {
    v152 = *(v0 + 520);
    v94 = *(v0 + 416);
    v160 = *(v0 + 400);
    v163 = *(v0 + 392);
    v156 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v189[0] = v178;
    *v156 = 136315394;
    v169 = v89;
    SFAirDropSend.Request.id.getter();
    v95 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v166 = v90;
    v97 = v96;
    (*(v160 + 8))(v94, v163);
    (*(v93 + 8))(v152, v183);
    v98 = sub_10000C4E4(v95, v97, v189);

    *(v156 + 4) = v98;
    *(v156 + 12) = 2112;
    swift_errorRetain();
    v99 = _swift_stdlib_bridgeErrorToNSError();
    *(v156 + 14) = v99;
    *v173 = v99;
    _os_log_impl(&_mh_execute_header, v169, v166, "Send StateMachine FAILED %s {error: %@}", v156, 0x16u);
    sub_100005508(v173, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v178);
  }

  else
  {

    (*(v93 + 8))(v92, v183);
  }

  v100 = *(v0 + 632);
  v101 = *(v0 + 624);
  v102 = *(v0 + 608);
  v103 = *(v0 + 592);
  v104 = *(v0 + 264);
  SFAirDropSend.Request.type.getter();
  LOBYTE(v104) = SFAirDrop.TransferType.isOnlyExchange.getter();
  v101(v102, v103);
  if ((v104 & 1) == 0)
  {
    v105 = swift_getObjectType();
    v11(4, v105, v9);
  }

  v106 = *(v0 + 568);
  v107 = *(v0 + 408);
  v170 = *(v0 + 416);
  v184 = *(v0 + 360);
  v157 = *(v0 + 352);
  v108 = *(v0 + 336);
  v109 = *(v0 + 344);
  v110 = *(v0 + 328);
  v147 = *(v0 + 320);
  v150 = *(v0 + 312);
  v153 = *(v0 + 304);
  v112 = *(v0 + 288);
  v111 = *(v0 + 296);
  v113 = *(v0 + 256);
  v174 = *(v0 + 224);
  v179 = *(v0 + 248);
  SFAirDropSend.Transfer.id.getter();
  SFAirDropSend.Transfer.sendRequest.getter();
  SFAirDropSend.Transfer.receiverName.getter();
  SFAirDropSend.Transfer.startDate.getter();
  LODWORD(v106) = *(sub_10028088C(&unk_100986210, &unk_1008042C0) + 48);
  SFAirDropSend.Transfer.id.getter();
  SFAirDropSend.Transfer.startDate.getter();
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  swift_errorRetain();
  SFAirDropSend.Failure.init(_:)();
  (*(v110 + 104))(v108, enum case for SFAirDropSend.Transfer.State.transferFailed(_:), v147);
  SFAirDropSend.Transfer.displayPriority.getter();
  SFAirDropSend.Transfer.bundleIdentifier.getter();
  v114 = type metadata accessor for SFNWInterfaceType();
  (*(*(v114 - 8) + 56))(v153, 1, 1, v114);
  SFAirDropSend.Transfer.presenter.getter();
  SFAirDrop.NetworkMetrics.init()();
  SFAirDropSend.Transfer.init(id:sendRequest:receiverName:startDate:state:displayPriority:bundleIdentifier:activeInterfaceType:presenter:networkMetrics:)();

  SFAirDropSend.Transfer.id.getter();
  v115 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  (*(*(v115 - 8) + 56))(v184, 1, 1, v115);
  swift_beginAccess();
  sub_1002B0C84(v184, v170);
  swift_endAccess();
  v116 = *(v0 + 608);
  v117 = *(v0 + 584);
  v118 = *(v0 + 576);
  v119 = *(v0 + 568);
  v120 = *(v0 + 560);
  v121 = *(v0 + 552);
  v122 = *(v0 + 544);
  v123 = *(v0 + 536);
  v124 = *(v0 + 528);
  v125 = *(v0 + 520);
  v138 = *(v0 + 496);
  v140 = *(v0 + 488);
  v142 = *(v0 + 480);
  v143 = *(v0 + 472);
  v145 = *(v0 + 448);
  v148 = *(v0 + 440);
  v151 = *(v0 + 416);
  v154 = *(v0 + 408);
  v158 = *(v0 + 384);
  v161 = *(v0 + 360);
  v164 = *(v0 + 352);
  v167 = *(v0 + 344);
  v171 = *(v0 + 336);
  v175 = *(v0 + 312);
  v180 = *(v0 + 304);
  v185 = *(v0 + 296);
  v188 = *(v0 + 288);

  v126 = *(v0 + 8);

  return v126();
}

uint64_t sub_100534460(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 704);
  v5 = *(*v2 + 616);
  v6 = *(*v2 + 384);
  v7 = *(*v2 + 376);
  v8 = *(*v2 + 368);
  v10 = *v2;
  *(v3 + 712) = a1;
  *(v3 + 720) = a2;

  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_1005345D8, v5, 0);
}

uint64_t sub_1005345D8()
{
  v159 = v0;
  sub_1003E6F1C(*(v0 + 264), *(v0 + 712), *(*(v0 + 672) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser) != 0);
  v1 = static Task<>.isCancelled.getter();
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  if (v1)
  {
    v4 = *(v0 + 272);
    v5 = *(v0 + 712);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Transfer cancelled at resolve step", v8, 2u);
    }

    v9 = *(v0 + 680);

    type metadata accessor for CancellationError();
    sub_100537040(&unk_10097A6B0, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    goto LABEL_16;
  }

  v10 = *(v0 + 648);
  v11 = *(v0 + 272);
  (*(v0 + 640))(*(v0 + 544), *(v0 + 264), *(v0 + 504));

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 712);
    v143 = *(v0 + 688);
    v148 = *(v0 + 696);
    v15 = *(v0 + 544);
    v138 = *(v0 + 504);
    v16 = *(v0 + 416);
    v156 = v13;
    v18 = *(v0 + 392);
    v17 = *(v0 + 400);
    v19 = swift_slowAlloc();
    v158[0] = swift_slowAlloc();
    *v19 = 136315394;
    SFAirDropSend.Request.id.getter();
    v20 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v143(v15, v138);
    v23 = sub_10000C4E4(v20, v22, v158);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    sub_100537040(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint);

    v24 = Set.description.getter();
    v26 = v25;

    v27 = sub_10000C4E4(v24, v26, v158);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v12, v156, "%s Resolved endpoints to %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = *(v0 + 696);
    v29 = *(v0 + 688);
    v30 = *(v0 + 544);
    v31 = *(v0 + 504);

    v29(v30, v31);
  }

  v32 = *(v0 + 720);
  v33 = *(v0 + 712);
  v34 = *(v0 + 648);
  v35 = *(v0 + 272);
  (*(v0 + 640))(*(v0 + 536), *(v0 + 264), *(v0 + 504));

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = *(v0 + 720);
    v144 = *(v0 + 688);
    v149 = *(v0 + 696);
    v39 = *(v0 + 536);
    v139 = *(v0 + 504);
    v40 = *(v0 + 416);
    v42 = *(v0 + 392);
    v41 = *(v0 + 400);
    v43 = swift_slowAlloc();
    v158[0] = swift_slowAlloc();
    *v43 = 136315394;
    v152 = v37;
    SFAirDropSend.Request.id.getter();
    v44 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v46 = v45;
    (*(v41 + 8))(v40, v42);
    v144(v39, v139);
    v47 = sub_10000C4E4(v44, v46, v158);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    sub_100537040(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint);

    v48 = Set.description.getter();
    v50 = v49;

    v51 = sub_10000C4E4(v48, v50, v158);

    *(v43 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v36, v152, "%s Resolved backup endpoints to %s", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v52 = *(v0 + 696);
    v53 = *(v0 + 688);
    v54 = *(v0 + 536);
    v55 = *(v0 + 504);

    v53(v54, v55);
  }

  v56 = *(v0 + 712);
  if (!*(v56 + 16))
  {
    v71 = *(v0 + 720);
    v9 = *(v0 + 680);
    v72 = *(v0 + 712);

    v73 = type metadata accessor for SFAirDropSend.Failure();
    sub_100537040(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    *v74 = 0;
    (*(*(v73 - 8) + 104))(v74, enum case for SFAirDropSend.Failure.resolveFailure(_:), v73);
LABEL_16:
    swift_willThrow();

    v75 = *(v0 + 664);
    v76 = *(v0 + 656);
    v77 = *(v0 + 272);
    (*(*(v0 + 512) + 16))(*(v0 + 520), *(v0 + 264), *(v0 + 504));
    swift_errorRetain();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    v80 = os_log_type_enabled(v78, v79);
    v81 = *(v0 + 520);
    v82 = *(v0 + 504);
    v83 = *(v0 + 512);
    if (v80)
    {
      v145 = v79;
      v84 = *(v0 + 416);
      v85 = *(v0 + 400);
      v132 = *(v0 + 392);
      v153 = v75;
      v86 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v158[0] = v140;
      *v86 = 136315394;
      v134 = v78;
      SFAirDropSend.Request.id.getter();
      v87 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
      v89 = v88;
      (*(v85 + 8))(v84, v132);
      (*(v83 + 8))(v81, v82);
      v90 = sub_10000C4E4(v87, v89, v158);

      *(v86 + 4) = v90;
      *(v86 + 12) = 2112;
      swift_errorRetain();
      v91 = _swift_stdlib_bridgeErrorToNSError();
      *(v86 + 14) = v91;
      *v136 = v91;
      _os_log_impl(&_mh_execute_header, v134, v145, "Send StateMachine FAILED %s {error: %@}", v86, 0x16u);
      sub_100005508(v136, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v140);

      v75 = v153;
    }

    else
    {

      (*(v83 + 8))(v81, v82);
    }

    v92 = *(v0 + 632);
    v93 = *(v0 + 624);
    v94 = *(v0 + 608);
    v95 = *(v0 + 592);
    v96 = *(v0 + 264);
    SFAirDropSend.Request.type.getter();
    LOBYTE(v96) = SFAirDrop.TransferType.isOnlyExchange.getter();
    v93(v94, v95);
    if ((v96 & 1) == 0)
    {
      ObjectType = swift_getObjectType();
      (*(v75 + 16))(4, ObjectType, v75);
    }

    v98 = *(v0 + 568);
    v99 = *(v0 + 408);
    v141 = *(v0 + 416);
    v154 = *(v0 + 360);
    v100 = *(v0 + 336);
    v101 = *(v0 + 344);
    v102 = *(v0 + 328);
    v124 = *(v0 + 320);
    v126 = *(v0 + 312);
    v128 = *(v0 + 304);
    v130 = *(v0 + 352);
    v104 = *(v0 + 288);
    v103 = *(v0 + 296);
    v105 = *(v0 + 256);
    v146 = *(v0 + 224);
    v150 = *(v0 + 248);
    SFAirDropSend.Transfer.id.getter();
    SFAirDropSend.Transfer.sendRequest.getter();
    SFAirDropSend.Transfer.receiverName.getter();
    SFAirDropSend.Transfer.startDate.getter();
    LODWORD(v98) = *(sub_10028088C(&unk_100986210, &unk_1008042C0) + 48);
    SFAirDropSend.Transfer.id.getter();
    SFAirDropSend.Transfer.startDate.getter();
    SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
    (*(v102 + 104))(v100, enum case for SFAirDropSend.Transfer.State.transferFailed(_:), v124);
    SFAirDropSend.Transfer.displayPriority.getter();
    SFAirDropSend.Transfer.bundleIdentifier.getter();
    v106 = type metadata accessor for SFNWInterfaceType();
    (*(*(v106 - 8) + 56))(v128, 1, 1, v106);
    SFAirDropSend.Transfer.presenter.getter();
    SFAirDrop.NetworkMetrics.init()();
    SFAirDropSend.Transfer.init(id:sendRequest:receiverName:startDate:state:displayPriority:bundleIdentifier:activeInterfaceType:presenter:networkMetrics:)();

    SFAirDropSend.Transfer.id.getter();
    v107 = sub_10028088C(&qword_100976470, &qword_1007F9740);
    (*(*(v107 - 8) + 56))(v154, 1, 1, v107);
    swift_beginAccess();
    sub_1002B0C84(v154, v141);
    swift_endAccess();
    v108 = *(v0 + 608);
    v109 = *(v0 + 584);
    v110 = *(v0 + 576);
    v111 = *(v0 + 568);
    v112 = *(v0 + 560);
    v113 = *(v0 + 552);
    v114 = *(v0 + 544);
    v115 = *(v0 + 536);
    v116 = *(v0 + 528);
    v117 = *(v0 + 520);
    v119 = *(v0 + 496);
    v120 = *(v0 + 488);
    v121 = *(v0 + 480);
    v122 = *(v0 + 472);
    v123 = *(v0 + 448);
    v125 = *(v0 + 440);
    v127 = *(v0 + 416);
    v129 = *(v0 + 408);
    v131 = *(v0 + 384);
    v133 = *(v0 + 360);
    v135 = *(v0 + 352);
    v137 = *(v0 + 344);
    v142 = *(v0 + 336);
    v147 = *(v0 + 312);
    v151 = *(v0 + 304);
    v155 = *(v0 + 296);
    v157 = *(v0 + 288);

    v118 = *(v0 + 8);

    return v118();
  }

  v57 = *(v0 + 720);
  v58 = *(v0 + 680);
  v59 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints;
  v60 = *(v58 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints);

  CurrentValueSubject.value.getter();

  v61 = *(v58 + v59);
  v62 = *(v0 + 176);

  *(v0 + 184) = sub_1006947E0(v56, v62);
  CurrentValueSubject.send(_:)();

  v63 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints;
  v64 = *(v58 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints);

  CurrentValueSubject.value.getter();

  v65 = *(v58 + v63);
  v66 = *(v0 + 192);

  *(v0 + 200) = sub_1006947E0(v57, v66);
  CurrentValueSubject.send(_:)();

  v67 = swift_task_alloc();
  *(v0 + 728) = v67;
  *v67 = v0;
  v67[1] = sub_10053539C;
  v68 = *(v0 + 680);
  v69 = *(v0 + 472);

  return sub_1003A0838(v69);
}

uint64_t sub_10053539C()
{
  v1 = *(*v0 + 728);
  v2 = *(*v0 + 616);
  v4 = *v0;

  return _swift_task_switch(sub_1005354AC, v2, 0);
}

uint64_t sub_1005354AC()
{
  v62 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 272);
  (*(v0 + 640))(*(v0 + 528), *(v0 + 264), *(v0 + 504));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 688);
  v7 = *(v0 + 528);
  v8 = *(v0 + 504);
  if (v5)
  {
    v9 = *(v0 + 416);
    v58 = *(v0 + 696);
    v10 = *(v0 + 400);
    v54 = *(v0 + 392);
    v52 = *(v0 + 688);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v61 = v12;
    *v11 = 136315138;
    v56 = v4;
    SFAirDropSend.Request.id.getter();
    v13 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v54);
    v52(v7, v8);
    v16 = sub_10000C4E4(v13, v15, &v61);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v56, "Send StateMachine END %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  else
  {

    v6(v7, v8);
  }

  v17 = *(v0 + 680);
  v18 = *(v0 + 464);
  v19 = *(v0 + 472);
  v20 = *(v0 + 456);
  v21 = *(v0 + 416);
  v59 = *(v0 + 360);
  v23 = *(v0 + 248);
  v22 = *(v0 + 256);
  v24 = *(v0 + 224);
  v25 = *&v17[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_subject];
  *(v0 + 736) = 1;
  CurrentValueSubject.send(completion:)();
  sub_1003365C8();

  (*(v18 + 32))(v24, v19, v20);
  SFAirDropSend.Transfer.id.getter();
  v26 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  (*(*(v26 - 8) + 56))(v59, 1, 1, v26);
  swift_beginAccess();
  sub_1002B0C84(v59, v21);
  swift_endAccess();
  v27 = *(v0 + 608);
  v28 = *(v0 + 584);
  v29 = *(v0 + 576);
  v30 = *(v0 + 568);
  v31 = *(v0 + 560);
  v32 = *(v0 + 552);
  v33 = *(v0 + 544);
  v34 = *(v0 + 536);
  v35 = *(v0 + 528);
  v36 = *(v0 + 520);
  v39 = *(v0 + 496);
  v40 = *(v0 + 488);
  v41 = *(v0 + 480);
  v42 = *(v0 + 472);
  v43 = *(v0 + 448);
  v44 = *(v0 + 440);
  v45 = *(v0 + 416);
  v46 = *(v0 + 408);
  v47 = *(v0 + 384);
  v48 = *(v0 + 360);
  v49 = *(v0 + 352);
  v50 = *(v0 + 344);
  v51 = *(v0 + 336);
  v53 = *(v0 + 312);
  v55 = *(v0 + 304);
  v57 = *(v0 + 296);
  v60 = *(v0 + 288);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1005358C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v25;
  v8[18] = v26;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[9] = a1;
  v8[10] = a2;
  v9 = *(*(sub_10028088C(&qword_100976468, &qword_1007F9738) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v8[20] = v10;
  v11 = *(v10 - 8);
  v8[21] = v11;
  v12 = *(v11 + 64) + 15;
  v8[22] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v8[23] = v13;
  v14 = *(v13 - 8);
  v8[24] = v14;
  v15 = *(v14 + 64) + 15;
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDropSend.Transfer();
  v8[27] = v16;
  v17 = *(v16 - 8);
  v8[28] = v17;
  v18 = *(v17 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v19 = type metadata accessor for SFAirDropSend.Request();
  v8[33] = v19;
  v20 = *(v19 - 8);
  v8[34] = v20;
  v21 = *(v20 + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v22 = static AirDropActor.shared;
  v8[38] = static AirDropActor.shared;

  return _swift_task_switch(sub_100535B68, v22, 0);
}

uint64_t sub_100535B68()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v47 = v3;
  v48 = *(v0 + 288);
  v53 = *(v0 + 256);
  v57 = *(v0 + 248);
  v42 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v52 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = v4;
  v6 = *(v0 + 192);
  v49 = *(v0 + 184);
  v38 = *(v0 + 136);
  v36 = *(v0 + 144);
  v37 = *(v0 + 128);
  v54 = *(v0 + 120);
  v39 = *(v0 + 112);
  v55 = *(v0 + 104);
  v7 = *(v0 + 96);
  v44 = *(v0 + 80);
  v8 = v7[8];
  v45 = *(v0 + 88);
  v46 = v7[7];
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(0, ObjectType, v8);
  v40 = v7[3];
  v43 = v7[2];
  v51 = *(v2 + 16);
  *(v0 + 312) = v51;
  *(v0 + 320) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41 = v1;
  v51(v1, v54, v3);
  v50 = *(v5 + 16);
  v50(v53, v55, v4);
  v56 = *(v6 + 16);
  v56(v52, v36, v49);
  v10 = _s15ClassroomRunnerCMa_0();
  *(v0 + 328) = v10;
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
  v13 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_urls] = 0;
  v14 = [objc_allocWithZone(NSOperationQueue) init];
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendOperationQueue] = v14;
  [v14 setQualityOfService:25];
  v15 = &v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_bundleIdentifier];
  *v15 = v37;
  *(v15 + 1) = v38;
  v51(v48, v1, v47);
  v50(v57, v53, v59);
  v56(v58, v52, v49);
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_mediaConversionDestinations] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction] = 0;
  v16 = &v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_powerAssertion];
  *v16 = 0;
  v16[4] = 1;
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_displayPriorityReturnToNormalTask] = 0;
  *(v0 + 56) = v39;
  v17 = sub_10028088C(&qword_100980290, &qword_100809190);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints] = CurrentValueSubject.init(_:)();
  *(v0 + 64) = _swiftEmptySetSingleton;
  v20 = *(v17 + 48);
  v21 = *(v17 + 52);
  swift_allocObject();
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints] = CurrentValueSubject.init(_:)();
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus] = v40;
  v51(&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest], v48, v47);
  v50(&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer], v57, v59);
  v50(v42, v57, v59);
  v22 = sub_10028088C(&qword_1009827F8, &qword_100809198);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = v40;
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_subject] = CurrentValueSubject.init(_:)();
  v26 = &v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield];
  *v26 = v44;
  *(v26 + 1) = v45;
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_queue] = v43;
  v56(&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log], v58, v49);
  v27 = &v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager];
  *v27 = v46;
  *(v27 + 1) = v8;
  v28 = _s10BaseRunnerCMa_0();
  *(v0 + 40) = v11;
  *(v0 + 48) = v28;

  v29 = v43;
  swift_unknownObjectRetain();
  *(v0 + 336) = objc_msgSendSuper2((v0 + 40), "init");
  sub_100336238(v57);
  v30 = *(v6 + 8);
  v30(v58, v49);
  v31 = *(v5 + 8);
  v31(v57, v59);
  v32 = *(v2 + 8);
  *(v0 + 344) = v32;
  *(v0 + 352) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v48, v47);
  v30(v52, v49);
  v31(v53, v59);
  v32(v41, v47);
  v33 = swift_task_alloc();
  *(v0 + 360) = v33;
  *v33 = v0;
  v33[1] = sub_100536198;
  v34 = *(v0 + 232);

  return sub_100627110(v34);
}

uint64_t sub_100536198()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_1005362A8, v2, 0);
}

uint64_t sub_1005362A8()
{
  v42 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 144);
  (*(v0 + 312))(*(v0 + 280), *(v0 + 120), *(v0 + 264));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 344);
  v7 = *(v0 + 280);
  v8 = *(v0 + 264);
  if (v5)
  {
    v39 = *(v0 + 352);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    v35 = *(v0 + 160);
    v33 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136315138;
    v37 = v4;
    SFAirDropSend.Request.id.getter();
    v13 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v15 = v14;
    (*(v9 + 8))(v10, v35);
    v33(v7, v8);
    v16 = sub_10000C4E4(v13, v15, &v41);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v37, "Send StateMachine END %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  else
  {

    v6(v7, v8);
  }

  v17 = *(v0 + 336);
  v29 = *(v0 + 296);
  v30 = *(v0 + 288);
  v31 = *(v0 + 280);
  v32 = *(v0 + 256);
  v18 = *(v0 + 232);
  v34 = *(v0 + 248);
  v36 = *(v0 + 240);
  v20 = *(v0 + 216);
  v19 = *(v0 + 224);
  v38 = *(v0 + 208);
  v40 = *(v0 + 200);
  v21 = *(v0 + 176);
  v22 = *(v0 + 152);
  v23 = *(v0 + 96);
  v24 = *(v0 + 104);
  v25 = *(v0 + 72);
  sub_100337984(*(v0 + 328));

  (*(v19 + 32))(v25, v18, v20);
  SFAirDropSend.Transfer.id.getter();
  v26 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  swift_beginAccess();
  sub_1002B0C84(v22, v21);
  swift_endAccess();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1005365D4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();
  v3 = *(v0 + 72);

  return v0;
}

uint64_t sub_100536624()
{
  sub_1005365D4();

  return swift_deallocClassInstance();
}

uint64_t sub_10053667C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
  swift_beginAccess();
  v12 = *(a3 + v11);

  v13 = sub_100569018(a2, v12);

  if (v13)
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_10097F240);
    (*(v7 + 16))(v10, a2, v6);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = a1;
      v19 = v18;
      v29 = swift_slowAlloc();
      v32 = v29;
      *v19 = 136315138;
      sub_100537040(&qword_100978CE0, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v7 + 8))(v10, v6);
      v23 = sub_10000C4E4(v20, v22, &v32);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Adding delegate for connectable: %s", v19, 0xCu);
      sub_10000C60C(v29);

      a1 = v30;
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v24 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegateByConnectableID;
    swift_beginAccess();
    v25 = a1;
    v26 = *(a3 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a3 + v24);
    *(a3 + v24) = 0x8000000000000000;
    sub_100536E68(v25, a2, isUniquelyReferenced_nonNull_native, &v31);
    *(a3 + v24) = v31;
    return swift_endAccess();
  }

  return result;
}

id sub_1005369A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002FB3B4(a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100005508(v6, &qword_1009763E0, &qword_1007F95D0);
    if (qword_1009736C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_1009A08A0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      sub_100537040(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v17 = Set.description.getter();
      v19 = sub_10000C4E4(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not find endpoint. Current endpoints: %s", v15, 0xCu);
      sub_10000C60C(v16);
    }

    return 0;
  }

  else
  {
    sub_10029418C(v6, v11);
    v21 = sub_10040BCAC();
    sub_100294130(v11);
    return v21;
  }
}

uint64_t sub_100536C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = *(type metadata accessor for SFAirDropSend.Transfer() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for SFAirDropSend.Request() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(type metadata accessor for Logger() - 8);
  v14 = (v12 + *(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = *(v3 + 16);
  v16 = *(v3 + v9);
  v17 = v3 + v12;
  v19 = *(v3 + v12);
  v18 = *(v17 + 8);
  v20 = swift_task_alloc();
  *(v5 + 16) = v20;
  *v20 = v5;
  v20[1] = sub_100005C04;

  return sub_1005358C0(a1, a2, a3, v15, v3 + v8, v16, v3 + v11, v19);
}

uint64_t sub_100536E68(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v15 = sub_10000EBD4(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1002CF978();
      goto LABEL_7;
    }

    sub_100574160(v18, a3 & 1);
    v25 = *a4;
    v26 = sub_10000EBD4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *a4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100537088(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *a4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  v23 = *v22;
  *v22 = a1;
  v22[1] = &off_1008DE048;

  return swift_unknownObjectRelease();
}

uint64_t sub_100537040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100537088(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 16 * a1);
  *v11 = a3;
  v11[1] = &off_1008DE048;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_10053714C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[34] = a5;
  v6[35] = v5;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  v7 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v6[36] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v6[37] = v8;
  v9 = *(v8 - 8);
  v6[38] = v9;
  v6[39] = *(v9 + 64);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.AskResponse();
  v6[42] = v10;
  v11 = *(v10 - 8);
  v6[43] = v11;
  v12 = *(v11 + 64) + 15;
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v13 = *(type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation() - 8);
  v6[48] = v13;
  v14 = *(v13 + 64) + 15;
  v6[49] = swift_task_alloc();
  v15 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v6[50] = v15;
  v16 = *(v15 - 8);
  v6[51] = v16;
  v6[52] = *(v16 + 64);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v17 = sub_10028088C(&qword_10097AD00, &qword_1007FDF30);
  v6[56] = v17;
  v18 = *(v17 - 8);
  v6[57] = v18;
  v19 = *(v18 + 64) + 15;
  v6[58] = swift_task_alloc();
  v20 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  v6[59] = v20;
  v21 = *(v20 - 8);
  v6[60] = v21;
  v22 = *(v21 + 64) + 15;
  v6[61] = swift_task_alloc();
  v23 = *(*(type metadata accessor for SFAirDrop.NetworkMetrics() - 8) + 64) + 15;
  v6[62] = swift_task_alloc();
  v24 = *(*(sub_10028088C(&unk_1009755F0, &unk_1007FE9A0) - 8) + 64) + 15;
  v6[63] = swift_task_alloc();
  v25 = *(*(sub_10028088C(&qword_100977DC0, &unk_1007FB320) - 8) + 64) + 15;
  v6[64] = swift_task_alloc();
  v26 = *(*(sub_10028088C(&qword_10097AD68, &unk_1007FDFE0) - 8) + 64) + 15;
  v6[65] = swift_task_alloc();
  v27 = *(*(sub_10028088C(&qword_100982580, &qword_100808FD0) - 8) + 64) + 15;
  v6[66] = swift_task_alloc();
  v28 = type metadata accessor for SFAirDropReceive.AskRequest();
  v6[67] = v28;
  v29 = *(v28 - 8);
  v6[68] = v29;
  v6[69] = *(v29 + 64);
  v6[70] = swift_task_alloc();
  v30 = type metadata accessor for SFAirDrop.DisplayPriority();
  v6[71] = v30;
  v31 = *(v30 - 8);
  v6[72] = v31;
  v32 = *(v31 + 64) + 15;
  v6[73] = swift_task_alloc();
  v33 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v6[74] = v33;
  v34 = *(v33 - 8);
  v6[75] = v34;
  v35 = *(v34 + 64) + 15;
  v6[76] = swift_task_alloc();
  v36 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v6[77] = swift_task_alloc();
  v37 = type metadata accessor for SFAirDropReceive.Transfer();
  v6[78] = v37;
  v38 = *(v37 - 8);
  v6[79] = v38;
  v39 = *(v38 + 64) + 15;
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v40 = type metadata accessor for SFPlatform();
  v6[84] = v40;
  v41 = *(v40 - 8);
  v6[85] = v41;
  v42 = *(v41 + 64) + 15;
  v6[86] = swift_task_alloc();
  v43 = type metadata accessor for SFAirDropClient.Identifier();
  v6[87] = v43;
  v44 = *(v43 - 8);
  v6[88] = v44;
  v45 = *(v44 + 64) + 15;
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v46 = type metadata accessor for Date();
  v6[91] = v46;
  v47 = *(v46 - 8);
  v6[92] = v47;
  v48 = *(v47 + 64) + 15;
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v49 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6[95] = v49;
  v50 = *(v49 - 8);
  v6[96] = v50;
  v51 = *(v50 + 64) + 15;
  v6[97] = swift_task_alloc();
  v52 = type metadata accessor for Logger();
  v6[98] = v52;
  v53 = *(v52 - 8);
  v6[99] = v53;
  v54 = *(v53 + 64) + 15;
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v55 = static AirDropActor.shared;
  v6[103] = static AirDropActor.shared;

  return _swift_task_switch(sub_100537990, v55, 0);
}

uint64_t sub_100537990()
{
  v1 = v0[102];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v103 = v0[94];
  v5 = v0[32];
  SFAirDropReceive.AskRequest.id.getter();
  SFAirDrop.TransferIdentifier.stringValue.getter();
  sub_10054141C(8);

  v6 = static String._fromSubstring(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  Logger.init(subsystem:category:)();
  (*(v3 + 8))(v2, v4);
  static Date.now.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "ClassroomReceive StateMachine PreChecks START", v12, 2u);
  }

  v13 = v0[35];

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[104] = Strong;
  if (Strong)
  {
    v73 = v0[94];
    v101 = v0[93];
    v15 = v0[92];
    v69 = v0[91];
    v63 = v0[90];
    v95 = v0[89];
    v16 = v0[88];
    v17 = v0[86];
    v18 = v0[85];
    v59 = v0[84];
    v61 = v0[87];
    v99 = v0[83];
    v104 = v0[77];
    v19 = v0[75];
    v65 = v0[76];
    v67 = v0[74];
    v20 = v0[72];
    v75 = v0[73];
    v77 = v0[71];
    v21 = v0[68];
    v81 = v0[70];
    v83 = v0[67];
    v87 = v0[66];
    v89 = v0[65];
    v91 = v0[64];
    v93 = v0[63];
    v97 = v0[62];
    v79 = v0[43];
    v85 = v0[42];
    v22 = v0[35];
    v23 = *(v22 + 48);
    v24 = *(v22 + 56);
    v71 = v0[32];
    ObjectType = swift_getObjectType();
    (*(v24 + 16))(3, ObjectType, v24);
    static SFPlatform.iOS.getter();
    LOBYTE(v23) = static SFPlatform.isPlatform(_:)();
    (*(v18 + 8))(v17, v59);
    v26 = &enum case for SFAirDropClient.Identifier.airdropUI(_:);
    if ((v23 & 1) == 0)
    {
      v26 = &enum case for SFAirDropClient.Identifier.daemon(_:);
    }

    (*(v16 + 104))(v63, *v26, v61);
    UUID.init()();
    (*(v15 + 16))(v101, v73, v69);
    (*(v19 + 104))(v65, enum case for SFAirDropReceive.Transfer.State.created(_:), v67);
    (*(v20 + 104))(v75, enum case for SFAirDrop.DisplayPriority.normal(_:), v77);
    v27 = *(v21 + 16);
    v0[105] = v27;
    v0[106] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v27(v81, v71, v83);
    (*(v79 + 56))(v87, 1, 1, v85);
    v28 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v28 - 8) + 56))(v89, 1, 1, v28);
    v29 = type metadata accessor for SFNWInterfaceType();
    (*(*(v29 - 8) + 56))(v91, 1, 1, v29);
    (*(v16 + 16))(v95, v63, v61);
    v30 = type metadata accessor for SFAirDropReceive.FileInfo();
    (*(*(v30 - 8) + 56))(v93, 1, 1, v30);
    SFAirDrop.NetworkMetrics.init()();
    SFAirDropReceive.Transfer.init(receiveID:startDate:state:displayPriority:askRequest:isPreviewSensitive:askResponse:didAutoAccept:cancelAction:activeInterfaceType:presenter:networkMetrics:fileInfo:)();
    type metadata accessor for SDAirDropContentHandlerFactory();
    v31 = swift_task_alloc();
    v0[107] = v31;
    *v31 = v0;
    v31[1] = sub_1005381E8;
    v32 = v0[83];

    return sub_100584D54((v0 + 7), v32);
  }

  else
  {
    v34 = v0[102];
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "ClassroomReceive StateMachine PreChecks FAILED. Delegate is nil - returning .error", v37, 2u);
    }

    v38 = v0[102];
    v39 = v0[99];
    v40 = v0[98];
    v41 = v0[94];
    v42 = v0[92];
    v43 = v0[91];
    v44 = v0[43];
    v105 = v0[42];
    v45 = v0[30];

    (*(v42 + 8))(v41, v43);
    (*(v39 + 8))(v38, v40);
    (*(v44 + 104))(v45, enum case for SFAirDropReceive.AskResponse.error(_:), v105);
    v46 = v0[102];
    v47 = v0[101];
    v48 = v0[100];
    v49 = v0[97];
    v50 = v0[94];
    v51 = v0[93];
    v52 = v0[90];
    v53 = v0[89];
    v54 = v0[86];
    v55 = v0[83];
    v57 = v0[82];
    v58 = v0[81];
    v60 = v0[80];
    v62 = v0[77];
    v64 = v0[76];
    v66 = v0[73];
    v68 = v0[70];
    v70 = v0[66];
    v72 = v0[65];
    v74 = v0[64];
    v76 = v0[63];
    v78 = v0[62];
    v80 = v0[61];
    v82 = v0[58];
    v84 = v0[55];
    v86 = v0[54];
    v88 = v0[53];
    v90 = v0[49];
    v92 = v0[47];
    v94 = v0[46];
    v96 = v0[45];
    v98 = v0[44];
    v100 = v0[41];
    v102 = v0[40];
    v106 = v0[36];

    v56 = v0[1];

    return v56();
  }
}

uint64_t sub_1005381E8()
{
  v1 = *(*v0 + 856);
  v2 = *(*v0 + 824);
  v4 = *v0;

  return _swift_task_switch(sub_1005382F8, v2, 0);
}

uint64_t sub_1005382F8()
{
  if (*(v0 + 80))
  {
    v63 = *(v0 + 816);
    v105 = *(v0 + 800);
    v108 = *(v0 + 808);
    v1 = *(v0 + 792);
    v102 = *(v0 + 784);
    v81 = *(v0 + 744);
    v2 = *(v0 + 664);
    v3 = *(v0 + 656);
    v111 = *(v0 + 648);
    v4 = *(v0 + 632);
    v5 = *(v0 + 624);
    v70 = *(v0 + 560);
    v72 = *(v0 + 544);
    v74 = *(v0 + 536);
    v77 = *(v0 + 640);
    v79 = *(v0 + 488);
    v83 = *(v0 + 480);
    v85 = *(v0 + 472);
    v92 = *(v0 + 464);
    v6 = *(v0 + 280);
    v98 = *(v0 + 272);
    v65 = *(v0 + 264);
    v95 = *(v0 + 248);
    sub_1000121F8((v0 + 56), v0 + 16);
    v7 = *(v4 + 16);
    v87 = v3;
    v7(v3, v2, v5);
    sub_1002A9938(v0 + 16, v0 + 96);
    v68 = *(v6 + 32);
    v8 = *(v1 + 16);
    v8(v108, v63, v102);
    v9 = _s15ClassroomRunnerCMa();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    *(v0 + 864) = v12;
    *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine15ClassroomRunner_classroomHandler) = v95;
    v13 = (v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine15ClassroomRunner_recordID);
    *v13 = v65;
    v13[1] = v98;
    v7(v111, v3, v5);
    sub_1002A9938(v0 + 96, v0 + 136);
    v8(v105, v108, v102);
    v14 = v8;
    v15 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateContinuation;
    v16 = sub_10028088C(&qword_100982550, &qword_100808ED0);
    (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
    *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_osTransaction) = 0;
    v17 = v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_powerAssertion;
    *v17 = 0;
    *(v17 + 4) = 1;
    *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_displayPriorityReturnToNormalTask) = 0;
    v18 = v95;

    SFAirDropReceive.Transfer.askRequest.getter();
    v19 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_askRequest;
    v20 = *(v72 + 32);
    *(v0 + 872) = v20;
    *(v0 + 880) = (v72 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v12 + v19, v70, v74);
    sub_1002A9938(v0 + 136, v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler);
    *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_deviceStatus) = v68;
    v14(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log, v105, v102);
    v7(v77, v111, v5);
    v99 = sub_10028088C(&qword_1009828E8, &qword_100809270);
    v21 = *(v99 + 48);
    v22 = *(v99 + 52);
    swift_allocObject();
    v23 = v68;
    *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject) = CurrentValueSubject.init(_:)();
    SFAirDropReceive.Transfer.startDate.getter();
    SFAirDropReceive.Transfer.Metrics.init(startDate:)();
    (*(v83 + 32))(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_metrics, v79, v85);
    v24 = type metadata accessor for SDAirDropPlatformLockStateManagerSupported();
    v25 = swift_allocObject();
    v26 = (v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager);
    v26[3] = v24;
    v26[4] = &off_1008E50F8;
    *v26 = v25;
    sub_10068E7B8(v111);
    v27 = *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager + 24);
    v28 = *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager + 32);
    sub_10002CDC0((v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager), v27);
    v29 = _s10BaseRunnerCMa(0);
    *(v0 + 176) = v12;
    *(v0 + 200) = v29;
    v30 = *(v28 + 16);

    v30(v0 + 176, "lockStateChanged", v27, v28);
    v31 = *(v1 + 8);
    *(v0 + 888) = v31;
    *(v0 + 896) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v105, v102);
    sub_10000C60C((v0 + 136));
    v32 = *(v4 + 8);
    *(v0 + 904) = v32;
    *(v0 + 912) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v111, v5);
    v31(v108, v102);
    sub_10000C60C((v0 + 96));
    v32(v87, v5);
    sub_10000C60C((v0 + 176));
    *(v0 + 232) = *(v12 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
    sub_100541DE8();

    SFNoThrowAsyncSequence.init<A>(_:)();
    v33 = swift_task_alloc();
    *(v0 + 920) = v33;
    *v33 = v0;
    v33[1] = sub_100538C20;
    v34 = *(v0 + 832);
    v35 = *(v0 + 664);
    v36 = *(v0 + 464);

    return (sub_10039AB34)(v35, v36);
  }

  else
  {
    v38 = *(v0 + 816);
    sub_100005508(v0 + 56, &qword_1009828E0, &unk_100809260);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "ClassroomReceive StateMachine PreChecks FAILED. Mixed types - returning .mixedTypes", v41, 2u);
    }

    v42 = *(v0 + 832);
    v43 = *(v0 + 792);
    v109 = *(v0 + 784);
    v112 = *(v0 + 816);
    v44 = *(v0 + 736);
    v96 = *(v0 + 728);
    v100 = *(v0 + 752);
    v93 = *(v0 + 720);
    v45 = *(v0 + 704);
    v90 = *(v0 + 696);
    v46 = *(v0 + 664);
    v47 = *(v0 + 632);
    v48 = *(v0 + 624);
    v49 = *(v0 + 344);
    v103 = *(v0 + 240);
    v106 = *(v0 + 336);

    swift_unknownObjectRelease();
    (*(v47 + 8))(v46, v48);
    (*(v45 + 8))(v93, v90);
    (*(v44 + 8))(v100, v96);
    (*(v43 + 8))(v112, v109);
    (*(v49 + 104))(v103, enum case for SFAirDropReceive.AskResponse.mixedTypes(_:), v106);
    v50 = *(v0 + 816);
    v51 = *(v0 + 808);
    v52 = *(v0 + 800);
    v53 = *(v0 + 776);
    v54 = *(v0 + 752);
    v55 = *(v0 + 744);
    v56 = *(v0 + 720);
    v57 = *(v0 + 712);
    v58 = *(v0 + 688);
    v59 = *(v0 + 664);
    v61 = *(v0 + 656);
    v62 = *(v0 + 648);
    v64 = *(v0 + 640);
    v66 = *(v0 + 616);
    v67 = *(v0 + 608);
    v69 = *(v0 + 584);
    v71 = *(v0 + 560);
    v73 = *(v0 + 528);
    v75 = *(v0 + 520);
    v76 = *(v0 + 512);
    v78 = *(v0 + 504);
    v80 = *(v0 + 496);
    v82 = *(v0 + 488);
    v84 = *(v0 + 464);
    v86 = *(v0 + 440);
    v88 = *(v0 + 432);
    v89 = *(v0 + 424);
    v91 = *(v0 + 392);
    v94 = *(v0 + 376);
    v97 = *(v0 + 368);
    v101 = *(v0 + 360);
    v104 = *(v0 + 352);
    v107 = *(v0 + 328);
    v110 = *(v0 + 320);
    v113 = *(v0 + 288);

    v60 = *(v0 + 8);

    return v60();
  }
}

uint64_t sub_100538C20(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *v2;
  *(v4 + 928) = v1;

  v7 = *(v4 + 824);
  if (v1)
  {
    v8 = sub_100539EF4;
  }

  else
  {
    *(v4 + 976) = a1 & 1;
    v8 = sub_100538D60;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100538D60()
{
  v235 = v0;
  v1 = *(v0 + 976);
  v2 = *(v0 + 816);
  v3 = Logger.logObject.getter();
  if (v1 != 1)
  {
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v3, v47, "ClassroomReceive StateMachine PreChecks FAILED. Delegate.shouldStart returned false - returning .decline", v48, 2u);
    }

    v181 = *(v0 + 904);
    v186 = *(v0 + 912);
    v223 = *(v0 + 888);
    v229 = *(v0 + 896);
    v49 = *(v0 + 864);
    v50 = *(v0 + 832);
    v212 = *(v0 + 784);
    v218 = *(v0 + 816);
    v196 = *(v0 + 752);
    v51 = *(v0 + 736);
    v191 = *(v0 + 728);
    v52 = *(v0 + 704);
    v172 = *(v0 + 696);
    v177 = *(v0 + 720);
    v162 = *(v0 + 624);
    v167 = *(v0 + 664);
    v53 = *(v0 + 456);
    v54 = *(v0 + 464);
    v55 = *(v0 + 448);
    v56 = *(v0 + 344);
    v201 = *(v0 + 240);
    v206 = *(v0 + 336);

    swift_unknownObjectRelease();

    (*(v53 + 8))(v54, v55);
    sub_10000C60C((v0 + 16));
    v181(v167, v162);
    (*(v52 + 8))(v177, v172);
    (*(v51 + 8))(v196, v191);
    v223(v218, v212);
    (*(v56 + 104))(v201, enum case for SFAirDropReceive.AskResponse.decline(_:), v206);
    goto LABEL_19;
  }

  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ClassroomReceive StateMachine PreChecks END", v5, 2u);
  }

  v6 = *(v0 + 248);

  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_15;
  }

  v10 = *(v0 + 264);
  v9 = *(v0 + 272);

  v11 = sub_100012854(v10, v9);
  if ((v12 & 1) == 0)
  {

LABEL_15:
    v57 = *(v0 + 816);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Missing transfer continuation for classroom transfer", v60, 2u);
    }

    v182 = *(v0 + 904);
    v187 = *(v0 + 912);
    v224 = *(v0 + 888);
    v230 = *(v0 + 896);
    v61 = *(v0 + 864);
    v62 = *(v0 + 832);
    v213 = *(v0 + 784);
    v219 = *(v0 + 816);
    v197 = *(v0 + 752);
    v63 = *(v0 + 736);
    v192 = *(v0 + 728);
    v64 = *(v0 + 704);
    v173 = *(v0 + 696);
    v178 = *(v0 + 720);
    v163 = *(v0 + 624);
    v168 = *(v0 + 664);
    v65 = *(v0 + 456);
    v66 = *(v0 + 464);
    v67 = *(v0 + 448);
    v68 = *(v0 + 344);
    v202 = *(v0 + 240);
    v207 = *(v0 + 336);

    swift_unknownObjectRelease();

    (*(v65 + 8))(v66, v67);
    sub_10000C60C((v0 + 16));
    v182(v168, v163);
    (*(v64 + 8))(v178, v173);
    (*(v63 + 8))(v197, v192);
    v224(v219, v213);
    (*(v68 + 104))(v202, enum case for SFAirDropReceive.AskResponse.error(_:), v207);
    goto LABEL_19;
  }

  v13 = *(v0 + 816);
  v15 = *(v0 + 432);
  v14 = *(v0 + 440);
  v16 = *(v0 + 400);
  v17 = *(v0 + 408);
  v18 = *(v0 + 392);
  sub_10054221C(*(v8 + 56) + *(*(v0 + 384) + 72) * v11, v18, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);

  v19 = *(v17 + 16);
  *(v0 + 936) = v19;
  *(v0 + 944) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v15, v18, v16);
  sub_100542284(v18, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
  v20 = *(v17 + 32);
  *(v0 + 952) = v20;
  *(v0 + 960) = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v20(v14, v15, v16);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "ClassroomReceive StateMachine PreAccept START", v23, 2u);
  }

  v24 = *(v0 + 256);

  if (SFAirDropReceive.AskRequest.canAutoAccept.getter())
  {
    v25 = *(v0 + 376);
    v26 = *(v0 + 336);
    v27 = *(v0 + 344);
    v28 = *(v0 + 296);
    v29 = *(v0 + 304);
    v30 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
    (*(v29 + 104))(v25, enum case for SFAirDropReceive.ItemDestination.default(_:), v28);
    SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
    v31 = enum case for SFAirDropReceive.AskResponse.accept(_:);
    (*(v27 + 104))(v25, enum case for SFAirDropReceive.AskResponse.accept(_:), v26);
    v32 = *(v0 + 816);
    v33 = *(*(v0 + 344) + 16);
    v33(*(v0 + 368), *(v0 + 376), *(v0 + 336));
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 368);
    v39 = *(v0 + 336);
    v38 = *(v0 + 344);
    if (v36)
    {
      v217 = v31;
      v40 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v234[0] = v211;
      *v40 = 136315138;
      sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse);
      v41 = v33;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v228 = *(v38 + 8);
      v228(v37, v39);
      v45 = v42;
      v33 = v41;
      v46 = sub_10000C4E4(v45, v44, v234);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "ClassroomReceive StateMachine PreAccept END {response: %s", v40, 0xCu);
      sub_10000C60C(v211);

      v31 = v217;
    }

    else
    {

      v228 = *(v38 + 8);
      v228(v37, v39);
    }

    v84 = *(v0 + 360);
    v86 = *(v0 + 336);
    v85 = *(v0 + 344);
    v33(v84, *(v0 + 376), v86);
    v87 = (*(v85 + 88))(v84, v86);
    v88 = *(v0 + 360);
    v89 = *(v0 + 336);
    if (v87 == v31)
    {
      v90 = *(v0 + 320);
      v91 = *(v0 + 328);
      v92 = *(v0 + 296);
      v93 = *(v0 + 304);
      (*(*(v0 + 344) + 96))(*(v0 + 360), v89);
      v94 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
      v226 = *(v93 + 32);
      v226(v91, v88, v92);
      v95 = type metadata accessor for SFAirDropReceive.AcceptContext();
      (*(*(v95 - 8) + 8))(v88 + v94, v95);
      (*(v93 + 104))(v90, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v92);
      sub_100542734(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
      LOBYTE(v91) = dispatch thunk of static Equatable.== infix(_:_:)();
      v96 = *(v93 + 8);
      v96(v90, v92);
      if ((v91 & 1) == 0)
      {
        v189 = *(v0 + 952);
        v194 = *(v0 + 960);
        v142 = *(v0 + 936);
        v145 = *(v0 + 944);
        v199 = *(v0 + 872);
        v204 = *(v0 + 880);
        v209 = v96;
        v184 = *(v0 + 864);
        v160 = *(v0 + 848);
        v151 = *(v0 + 840);
        v222 = *(v0 + 560);
        v165 = *(v0 + 544);
        v170 = *(v0 + 552);
        v215 = *(v0 + 536);
        v132 = *(v0 + 440);
        v113 = *(v0 + 424);
        v139 = v113;
        v157 = *(v0 + 416);
        v148 = *(v0 + 408);
        v114 = *(v0 + 400);
        v115 = *(v0 + 320);
        v232 = *(v0 + 328);
        v116 = *(v0 + 304);
        v154 = *(v0 + 312);
        v118 = *(v0 + 288);
        v117 = *(v0 + 296);
        v134 = v117;
        v175 = v118;
        v136 = *(v0 + 256);
        v112 = type metadata accessor for TaskPriority();
        (*(*(v112 - 8) + 56))(v118, 1, 1, v112);
        v142(v113, v132, v114);
        (*(v116 + 16))(v115, v232, v117);
        v151(v222, v136, v215);
        v119 = (*(v148 + 80) + 24) & ~*(v148 + 80);
        v120 = (v157 + *(v116 + 80) + v119) & ~*(v116 + 80);
        v121 = (v154 + *(v165 + 80) + v120) & ~*(v165 + 80);
        v122 = swift_allocObject();
        *(v122 + 16) = v184;
        v189(v122 + v119, v139, v114);
        v226(v122 + v120, v115, v134);
        v199(v122 + v121, v222, v215);
        _s10BaseRunnerC11FinishTokenVMa(0);

        v221 = static Task<>.noThrow(priority:operation:)();

        sub_100005508(v175, &qword_100976160, &qword_1007F8770);
        v209(v232, v134);
LABEL_35:
        v180 = *(v0 + 904);
        v185 = *(v0 + 912);
        v227 = *(v0 + 888);
        v233 = *(v0 + 896);
        v155 = *(v0 + 864);
        v146 = *(v0 + 832);
        v123 = *(v0 + 824);
        v210 = *(v0 + 784);
        v216 = *(v0 + 816);
        v124 = *(v0 + 736);
        v200 = *(v0 + 728);
        v205 = *(v0 + 752);
        v125 = *(v0 + 704);
        v166 = *(v0 + 696);
        v171 = *(v0 + 720);
        v158 = *(v0 + 624);
        v161 = *(v0 + 664);
        v126 = *(v0 + 456);
        v149 = *(v0 + 448);
        v152 = *(v0 + 464);
        v127 = *(v0 + 408);
        v140 = *(v0 + 400);
        v143 = *(v0 + 440);
        v128 = *(v0 + 344);
        v190 = *(v0 + 336);
        v195 = *(v0 + 376);
        v129 = *(v0 + 288);
        v176 = *(v0 + 240);
        type metadata accessor for TaskPriority();
        (*(*(v112 - 8) + 56))(v129, 1, 1, v112);
        v130 = sub_100542734(&qword_100977C00, type metadata accessor for AirDropActor);
        v131 = swift_allocObject();
        v131[2] = v123;
        v131[3] = v130;
        v131[4] = v221;

        sub_1002B3098(0, 0, v129, &unk_1008092E0, v131);

        swift_unknownObjectRelease();

        (*(v127 + 8))(v143, v140);
        (*(v126 + 8))(v152, v149);
        sub_10000C60C((v0 + 16));
        v180(v161, v158);
        (*(v125 + 8))(v171, v166);
        (*(v124 + 8))(v205, v200);
        v227(v216, v210);
        (*(v128 + 32))(v176, v195, v190);
LABEL_19:
        v69 = *(v0 + 816);
        v70 = *(v0 + 808);
        v71 = *(v0 + 800);
        v72 = *(v0 + 776);
        v73 = *(v0 + 752);
        v74 = *(v0 + 744);
        v75 = *(v0 + 720);
        v76 = *(v0 + 712);
        v77 = *(v0 + 688);
        v78 = *(v0 + 664);
        v133 = *(v0 + 656);
        v135 = *(v0 + 648);
        v137 = *(v0 + 640);
        v138 = *(v0 + 616);
        v141 = *(v0 + 608);
        v144 = *(v0 + 584);
        v147 = *(v0 + 560);
        v150 = *(v0 + 528);
        v153 = *(v0 + 520);
        v156 = *(v0 + 512);
        v159 = *(v0 + 504);
        v164 = *(v0 + 496);
        v169 = *(v0 + 488);
        v174 = *(v0 + 464);
        v179 = *(v0 + 440);
        v183 = *(v0 + 432);
        v188 = *(v0 + 424);
        v193 = *(v0 + 392);
        v198 = *(v0 + 376);
        v203 = *(v0 + 368);
        v208 = *(v0 + 360);
        v214 = *(v0 + 352);
        v220 = *(v0 + 328);
        v225 = *(v0 + 320);
        v231 = *(v0 + 288);

        v79 = *(v0 + 8);

        return v79();
      }

      v96(*(v0 + 328), *(v0 + 296));
    }

    else
    {
      v228(*(v0 + 360), v89);
    }

    v97 = *(v0 + 816);
    v33(*(v0 + 352), *(v0 + 376), *(v0 + 336));
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    v100 = os_log_type_enabled(v98, v99);
    v102 = *(v0 + 344);
    v101 = *(v0 + 352);
    v103 = *(v0 + 336);
    if (v100)
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v234[0] = v105;
      *v104 = 136315138;
      sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse);
      v106 = dispatch thunk of CustomStringConvertible.description.getter();
      v108 = v107;
      v228(v101, v103);
      v109 = sub_10000C4E4(v106, v108, v234);

      *(v104 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v98, v99, "ClassroomReceive StateMachine PostAccept SKIPPED. {askResult.response: %s}", v104, 0xCu);
      sub_10000C60C(v105);
    }

    else
    {

      v228(v101, v103);
    }

    v110 = *(v0 + 864);
    v111 = *(v0 + 288);
    v112 = type metadata accessor for TaskPriority();
    (*(*(v112 - 8) + 56))(v111, 1, 1, v112);
    _s10BaseRunnerC11FinishTokenVMa(0);

    v221 = static Task<>.noThrow(priority:operation:)();

    sub_100005508(v111, &qword_100976160, &qword_1007F8770);
    goto LABEL_35;
  }

  v81 = swift_task_alloc();
  *(v0 + 968) = v81;
  *v81 = v0;
  v81[1] = sub_10053A2A4;
  v82 = *(v0 + 864);
  v83 = *(v0 + 376);

  return sub_1002DDCCC(v83);
}

uint64_t sub_100539EF4()
{
  v1 = v0[102];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ClassroomReceive StateMachine PreCheck FAILED. Delegate.shouldStart threw and error - returning .error", v4, 2u);
  }

  v5 = v0[116];
  v45 = v0[113];
  v47 = v0[114];
  v61 = v0[111];
  v63 = v0[112];
  v6 = v0[108];
  v7 = v0[104];
  v57 = v0[98];
  v59 = v0[102];
  v51 = v0[94];
  v8 = v0[92];
  v49 = v0[91];
  v9 = v0[88];
  v41 = v0[87];
  v43 = v0[90];
  v37 = v0[78];
  v39 = v0[83];
  v10 = v0[57];
  v11 = v0[58];
  v12 = v0[56];
  v13 = v0[43];
  v53 = v0[30];
  v55 = v0[42];

  swift_unknownObjectRelease();

  (*(v10 + 8))(v11, v12);
  sub_10000C60C(v0 + 2);
  v45(v39, v37);
  (*(v9 + 8))(v43, v41);
  (*(v8 + 8))(v51, v49);
  v61(v59, v57);
  (*(v13 + 104))(v53, enum case for SFAirDropReceive.AskResponse.error(_:), v55);
  v14 = v0[102];
  v15 = v0[101];
  v16 = v0[100];
  v17 = v0[97];
  v18 = v0[94];
  v19 = v0[93];
  v20 = v0[90];
  v21 = v0[89];
  v22 = v0[86];
  v23 = v0[83];
  v26 = v0[82];
  v27 = v0[81];
  v28 = v0[80];
  v29 = v0[77];
  v30 = v0[76];
  v31 = v0[73];
  v32 = v0[70];
  v33 = v0[66];
  v34 = v0[65];
  v35 = v0[64];
  v36 = v0[63];
  v38 = v0[62];
  v40 = v0[61];
  v42 = v0[58];
  v44 = v0[55];
  v46 = v0[54];
  v48 = v0[53];
  v50 = v0[49];
  v52 = v0[47];
  v54 = v0[46];
  v56 = v0[45];
  v58 = v0[44];
  v60 = v0[41];
  v62 = v0[40];
  v64 = v0[36];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10053A2A4()
{
  v1 = *(*v0 + 968);
  v2 = *(*v0 + 824);
  v4 = *v0;

  return _swift_task_switch(sub_10053A3B4, v2, 0);
}

uint64_t sub_10053A3B4()
{
  v148 = v0;
  v1 = v0[102];
  v2 = *(v0[43] + 16);
  v2(v0[46], v0[47], v0[42]);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[46];
  v7 = v0[42];
  v8 = v0[43];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v147[0] = v136;
    *v9 = 136315138;
    sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v143 = *(v8 + 8);
    v143(v6, v7);
    v13 = sub_10000C4E4(v10, v12, v147);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "ClassroomReceive StateMachine PreAccept END {response: %s", v9, 0xCu);
    sub_10000C60C(v136);
  }

  else
  {

    v143 = *(v8 + 8);
    v143(v6, v7);
  }

  v14 = v0[45];
  v15 = v0[42];
  v16 = v0[43];
  v2(v14, v0[47], v15);
  v17 = (*(v16 + 88))(v14, v15);
  v18 = v0[45];
  v19 = v0[42];
  if (v17 != enum case for SFAirDropReceive.AskResponse.accept(_:))
  {
    v143(v0[45], v19);
    goto LABEL_8;
  }

  v20 = v0[40];
  v21 = v0[41];
  v22 = v0[37];
  v23 = v0[38];
  (*(v0[43] + 96))(v0[45], v19);
  v24 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
  v140 = *(v23 + 32);
  v140(v21, v18, v22);
  v25 = type metadata accessor for SFAirDropReceive.AcceptContext();
  (*(*(v25 - 8) + 8))(v18 + v24, v25);
  (*(v23 + 104))(v20, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v22);
  sub_100542734(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
  LOBYTE(v21) = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v23 + 8);
  v26(v20, v22);
  if (v21)
  {
    v26(v0[41], v0[37]);
LABEL_8:
    v27 = v0[102];
    v2(v0[44], v0[47], v0[42]);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v32 = v0[43];
    v31 = v0[44];
    v33 = v0[42];
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v147[0] = v35;
      *v34 = 136315138;
      sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v143(v31, v33);
      v39 = sub_10000C4E4(v36, v38, v147);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "ClassroomReceive StateMachine PostAccept SKIPPED. {askResult.response: %s}", v34, 0xCu);
      sub_10000C60C(v35);
    }

    else
    {

      v143(v31, v33);
    }

    v40 = v0[108];
    v41 = v0[36];
    v42 = type metadata accessor for TaskPriority();
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    _s10BaseRunnerC11FinishTokenVMa(0);

    v137 = static Task<>.noThrow(priority:operation:)();

    sub_100005508(v41, &qword_100976160, &qword_1007F8770);
    goto LABEL_13;
  }

  v118 = v0[119];
  v121 = v0[120];
  v83 = v0[117];
  v86 = v0[118];
  v124 = v0[109];
  v127 = v0[110];
  v130 = v26;
  v115 = v0[108];
  v101 = v0[106];
  v92 = v0[105];
  v138 = v0[70];
  v104 = v0[68];
  v107 = v0[69];
  v133 = v0[67];
  v74 = v0[55];
  v43 = v0[53];
  v80 = v43;
  v98 = v0[52];
  v89 = v0[51];
  v44 = v0[50];
  v45 = v0[40];
  v144 = v0[41];
  v46 = v0[38];
  v95 = v0[39];
  v48 = v0[36];
  v47 = v0[37];
  v75 = v47;
  v110 = v48;
  v77 = v0[32];
  v42 = type metadata accessor for TaskPriority();
  (*(*(v42 - 8) + 56))(v48, 1, 1, v42);
  v83(v43, v74, v44);
  (*(v46 + 16))(v45, v144, v47);
  v92(v138, v77, v133);
  v49 = (*(v89 + 80) + 24) & ~*(v89 + 80);
  v50 = (v98 + *(v46 + 80) + v49) & ~*(v46 + 80);
  v51 = (v95 + *(v104 + 80) + v50) & ~*(v104 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v115;
  v118(v52 + v49, v80, v44);
  v140(v52 + v50, v45, v75);
  v124(v52 + v51, v138, v133);
  _s10BaseRunnerC11FinishTokenVMa(0);

  v137 = static Task<>.noThrow(priority:operation:)();

  sub_100005508(v110, &qword_100976160, &qword_1007F8770);
  v130(v144, v75);
LABEL_13:
  v113 = v0[113];
  v116 = v0[114];
  v141 = v0[111];
  v145 = v0[112];
  v96 = v0[108];
  v87 = v0[104];
  v53 = v0[103];
  v131 = v0[98];
  v134 = v0[102];
  v54 = v0[92];
  v125 = v0[91];
  v128 = v0[94];
  v55 = v0[88];
  v105 = v0[87];
  v108 = v0[90];
  v99 = v0[78];
  v102 = v0[83];
  v56 = v0[57];
  v90 = v0[56];
  v93 = v0[58];
  v57 = v0[51];
  v81 = v0[50];
  v84 = v0[55];
  v58 = v0[43];
  v119 = v0[42];
  v122 = v0[47];
  v59 = v0[36];
  v111 = v0[30];
  type metadata accessor for TaskPriority();
  (*(*(v42 - 8) + 56))(v59, 1, 1, v42);
  v60 = sub_100542734(&qword_100977C00, type metadata accessor for AirDropActor);
  v61 = swift_allocObject();
  v61[2] = v53;
  v61[3] = v60;
  v61[4] = v137;

  sub_1002B3098(0, 0, v59, &unk_1008092E0, v61);

  swift_unknownObjectRelease();

  (*(v57 + 8))(v84, v81);
  (*(v56 + 8))(v93, v90);
  sub_10000C60C(v0 + 2);
  v113(v102, v99);
  (*(v55 + 8))(v108, v105);
  (*(v54 + 8))(v128, v125);
  v141(v134, v131);
  (*(v58 + 32))(v111, v122, v119);
  v62 = v0[102];
  v63 = v0[101];
  v64 = v0[100];
  v65 = v0[97];
  v66 = v0[94];
  v67 = v0[93];
  v68 = v0[90];
  v69 = v0[89];
  v70 = v0[86];
  v71 = v0[83];
  v76 = v0[82];
  v78 = v0[81];
  v79 = v0[80];
  v82 = v0[77];
  v85 = v0[76];
  v88 = v0[73];
  v91 = v0[70];
  v94 = v0[66];
  v97 = v0[65];
  v100 = v0[64];
  v103 = v0[63];
  v106 = v0[62];
  v109 = v0[61];
  v112 = v0[58];
  v114 = v0[55];
  v117 = v0[54];
  v120 = v0[53];
  v123 = v0[49];
  v126 = v0[47];
  v129 = v0[46];
  v132 = v0[45];
  v135 = v0[44];
  v139 = v0[41];
  v142 = v0[40];
  v146 = v0[36];

  v72 = v0[1];

  return v72();
}

uint64_t sub_10053AF80(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t sub_10053AFB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_100541368(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_100541304(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_100026AC0(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10053B100()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982810);
  v1 = sub_10000C4AC(v0, qword_100982810);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10053B1C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  type metadata accessor for SFAirDrop.PermissionRequest();
  return SFAirDrop.PermissionRequest.id.getter();
}

uint64_t sub_10053B210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskResponse();
  v4[40] = v6;
  v7 = *(v6 - 8);
  v4[41] = v7;
  v8 = *(v7 + 64) + 15;
  v4[42] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v4[43] = v9;
  v10 = *(v9 - 8);
  v4[44] = v10;
  v11 = *(v10 + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v12 = _s6RunnerC19PreAcceptRunResultsVMa(0);
  v4[47] = v12;
  v13 = *(v12 - 8);
  v4[48] = v13;
  v4[49] = *(v13 + 64);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v14 = sub_10028088C(&qword_10097AD00, &qword_1007FDF30);
  v4[55] = v14;
  v15 = *(v14 - 8);
  v4[56] = v15;
  v16 = *(v15 + 64) + 15;
  v4[57] = swift_task_alloc();
  v17 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v4[58] = v17;
  v18 = *(v17 - 8);
  v4[59] = v18;
  v19 = *(v18 + 64) + 15;
  v4[60] = swift_task_alloc();
  v20 = type metadata accessor for SFAirDrop.DeclineAction();
  v4[61] = v20;
  v21 = *(v20 - 8);
  v4[62] = v21;
  v22 = *(v21 + 64) + 15;
  v4[63] = swift_task_alloc();
  v23 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  v4[64] = v23;
  v24 = *(v23 - 8);
  v4[65] = v24;
  v25 = *(v24 + 64) + 15;
  v4[66] = swift_task_alloc();
  v26 = *(*(type metadata accessor for SFAirDrop.NetworkMetrics() - 8) + 64) + 15;
  v4[67] = swift_task_alloc();
  v27 = *(*(sub_10028088C(&unk_1009755F0, &unk_1007FE9A0) - 8) + 64) + 15;
  v4[68] = swift_task_alloc();
  v28 = *(*(sub_10028088C(&qword_100977DC0, &unk_1007FB320) - 8) + 64) + 15;
  v4[69] = swift_task_alloc();
  v29 = *(*(sub_10028088C(&qword_10097AD68, &unk_1007FDFE0) - 8) + 64) + 15;
  v4[70] = swift_task_alloc();
  v30 = *(*(sub_10028088C(&qword_100982580, &qword_100808FD0) - 8) + 64) + 15;
  v4[71] = swift_task_alloc();
  v31 = type metadata accessor for SFAirDropReceive.AskRequest();
  v4[72] = v31;
  v32 = *(v31 - 8);
  v4[73] = v32;
  v33 = *(v32 + 64) + 15;
  v4[74] = swift_task_alloc();
  v34 = type metadata accessor for SFAirDrop.DisplayPriority();
  v4[75] = v34;
  v35 = *(v34 - 8);
  v4[76] = v35;
  v36 = *(v35 + 64) + 15;
  v4[77] = swift_task_alloc();
  v37 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v4[78] = v37;
  v38 = *(v37 - 8);
  v4[79] = v38;
  v39 = *(v38 + 64) + 15;
  v4[80] = swift_task_alloc();
  v40 = type metadata accessor for UUID();
  v4[81] = v40;
  v41 = *(v40 - 8);
  v4[82] = v41;
  v42 = *(v41 + 64) + 15;
  v4[83] = swift_task_alloc();
  v43 = type metadata accessor for SFAirDropReceive.Transfer();
  v4[84] = v43;
  v44 = *(v43 - 8);
  v4[85] = v44;
  v45 = *(v44 + 64) + 15;
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v46 = type metadata accessor for SFAirDropClient.Identifier();
  v4[90] = v46;
  v47 = *(v46 - 8);
  v4[91] = v47;
  v48 = *(v47 + 64) + 15;
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v49 = type metadata accessor for SFAirDrop.TransferType();
  v4[95] = v49;
  v50 = *(v49 - 8);
  v4[96] = v50;
  v51 = *(v50 + 64) + 15;
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v52 = type metadata accessor for Date();
  v4[99] = v52;
  v53 = *(v52 - 8);
  v4[100] = v53;
  v54 = *(v53 + 64) + 15;
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v55 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v4[103] = v55;
  v56 = *(v55 - 8);
  v4[104] = v56;
  v57 = *(v56 + 64) + 15;
  v4[105] = swift_task_alloc();
  v58 = type metadata accessor for Logger();
  v4[106] = v58;
  v59 = *(v58 - 8);
  v4[107] = v59;
  v4[108] = *(v59 + 64);
  v4[109] = swift_task_alloc();
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v60 = static AirDropActor.shared;
  v4[112] = static AirDropActor.shared;

  return _swift_task_switch(sub_10053BAD8, v60, 0);
}

uint64_t sub_10053BAD8()
{
  v1 = v0[111];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[103];
  v76 = v0[102];
  v5 = v0[37];
  SFAirDropReceive.AskRequest.id.getter();
  SFAirDrop.TransferIdentifier.stringValue.getter();
  sub_10054141C(8);

  v6 = static String._fromSubstring(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  Logger.init(subsystem:category:)();
  (*(v3 + 8))(v2, v4);
  static Date.now.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Receive StateMachine PreChecks START", v12, 2u);
  }

  v13 = v0[38];

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[113] = Strong;
  if (Strong)
  {
    v15 = v0[98];
    v16 = v0[96];
    v17 = v0[95];
    v18 = v0[37];
    SFAirDropReceive.AskRequest.type.getter();
    LOBYTE(v18) = SFAirDrop.TransferType.isOnlyExchange.getter();
    v19 = *(v16 + 8);
    v0[114] = v19;
    v0[115] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v17);
    if ((v18 & 1) == 0)
    {
      v20 = v0[38];
      v22 = *(v20 + 48);
      v21 = *(v20 + 56);
      ObjectType = swift_getObjectType();
      (*(v21 + 16))(3, ObjectType, v21);
    }

    v24 = swift_task_alloc();
    v0[116] = v24;
    *v24 = v0;
    v24[1] = sub_10053C0A4;
    v25 = v0[37];

    return (sub_1005414B8)(v25);
  }

  else
  {
    v27 = v0[111];
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Receive StateMachine PreChecks FAILED. Delegate is nil - returning .error", v30, 2u);
    }

    v31 = v0[111];
    v32 = v0[107];
    v33 = v0[106];
    v34 = v0[102];
    v35 = v0[100];
    v36 = v0[99];
    v37 = v0[41];
    v77 = v0[40];
    v38 = v0[35];

    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    (*(v37 + 104))(v38, enum case for SFAirDropReceive.AskResponse.error(_:), v77);
    v39 = v0[111];
    v40 = v0[110];
    v41 = v0[109];
    v42 = v0[105];
    v43 = v0[102];
    v44 = v0[101];
    v45 = v0[98];
    v46 = v0[97];
    v47 = v0[94];
    v48 = v0[93];
    v50 = v0[92];
    v51 = v0[89];
    v52 = v0[88];
    v53 = v0[87];
    v54 = v0[86];
    v55 = v0[83];
    v56 = v0[80];
    v57 = v0[77];
    v58 = v0[74];
    v59 = v0[71];
    v60 = v0[70];
    v61 = v0[69];
    v62 = v0[68];
    v63 = v0[67];
    v64 = v0[66];
    v65 = v0[63];
    v66 = v0[60];
    v67 = v0[57];
    v68 = v0[54];
    v69 = v0[53];
    v70 = v0[52];
    v71 = v0[51];
    v72 = v0[50];
    v73 = v0[46];
    v74 = v0[45];
    v75 = v0[42];
    v78 = v0[39];

    v49 = v0[1];

    return v49();
  }
}

uint64_t sub_10053C0A4(char a1)
{
  v2 = *(*v1 + 928);
  v3 = *(*v1 + 896);
  v5 = *v1;
  *(*v1 + 1048) = a1;

  return _swift_task_switch(sub_10053C1BC, v3, 0);
}

uint64_t sub_10053C1BC()
{
  v1 = *(v0 + 904);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v0 + 752);
  if (Strong)
  {
    v4 = *(v0 + 744);
    v5 = *(v0 + 728);
    v6 = *(v0 + 720);
    sub_10043A598(v4);
    swift_unknownObjectRelease();
    (*(v5 + 32))(v3, v4, v6);
  }

  else
  {
    (*(*(v0 + 728) + 104))(*(v0 + 752), enum case for SFAirDropClient.Identifier.daemon(_:), *(v0 + 720));
  }

  v7 = *(v0 + 920);
  v8 = *(v0 + 912);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v12 = *(v0 + 760);
  v13 = *(v0 + 296);
  SFAirDropReceive.AskRequest.type.getter();
  (*(v11 + 104))(v10, enum case for SFAirDrop.TransferType.peerPayment(_:), v12);
  LOBYTE(v13) = static SFAirDrop.TransferType.== infix(_:_:)();
  v8(v10, v12);
  v8(v9, v12);
  if (v13)
  {
    v14 = *(v0 + 752);
    v15 = *(v0 + 728);
    v16 = *(v0 + 720);
    (*(v15 + 8))(v14, v16);
    (*(v15 + 104))(v14, enum case for SFAirDropClient.Identifier.wallet(_:), v16);
  }

  v53 = *(v0 + 1048);
  v17 = *(v0 + 808);
  v18 = *(v0 + 800);
  v34 = *(v0 + 792);
  v35 = *(v0 + 816);
  v50 = *(v0 + 752);
  v48 = *(v0 + 736);
  v45 = *(v0 + 728);
  v49 = *(v0 + 720);
  v52 = *(v0 + 712);
  v47 = *(v0 + 664);
  v19 = *(v0 + 648);
  v20 = *(v0 + 640);
  v21 = *(v0 + 632);
  v33 = *(v0 + 624);
  v22 = *(v0 + 608);
  v37 = *(v0 + 616);
  v38 = *(v0 + 600);
  v23 = *(v0 + 584);
  v39 = *(v0 + 592);
  v40 = *(v0 + 576);
  v41 = *(v0 + 568);
  v43 = *(v0 + 560);
  v44 = *(v0 + 552);
  v46 = *(v0 + 544);
  v51 = *(v0 + 536);
  v24 = *(v0 + 496);
  v42 = *(v0 + 488);
  v25 = *(v0 + 328);
  v36 = *(v0 + 320);
  v26 = *(v0 + 296);
  v27 = *(v0 + 288) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveID;
  (*(*(v0 + 656) + 16))();
  (*(v18 + 16))(v17, v35, v34);
  (*(v21 + 104))(v20, enum case for SFAirDropReceive.Transfer.State.created(_:), v33);
  (*(v22 + 104))(v37, enum case for SFAirDrop.DisplayPriority.normal(_:), v38);
  (*(v23 + 16))(v39, v26, v40);
  (*(v25 + 56))(v41, 1, 1, v36);
  (*(v24 + 56))(v43, 1, 1, v42);
  v28 = type metadata accessor for SFNWInterfaceType();
  (*(*(v28 - 8) + 56))(v44, 1, 1, v28);
  (*(v45 + 16))(v48, v50, v49);
  v29 = type metadata accessor for SFAirDropReceive.FileInfo();
  (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  SFAirDrop.NetworkMetrics.init()();
  SFAirDropReceive.Transfer.init(receiveID:startDate:state:displayPriority:askRequest:isPreviewSensitive:askResponse:didAutoAccept:cancelAction:activeInterfaceType:presenter:networkMetrics:fileInfo:)();
  type metadata accessor for SDAirDropContentHandlerFactory();
  v30 = swift_task_alloc();
  *(v0 + 936) = v30;
  *v30 = v0;
  v30[1] = sub_10053C648;
  v31 = *(v0 + 712);

  return sub_100584D54(v0 + 56, v31);
}

uint64_t sub_10053C648()
{
  v1 = *(*v0 + 936);
  v2 = *(*v0 + 896);
  v4 = *v0;

  return _swift_task_switch(sub_10053C758, v2, 0);
}

uint64_t sub_10053C758()
{
  v1 = v0;
  if (v0[10])
  {
    v77 = v0[111];
    v2 = v0[110];
    v3 = v0[107];
    v132 = v0[109];
    v4 = v0[106];
    v93 = v0[101];
    v5 = v0[89];
    v6 = v0[88];
    v126 = v6;
    v117 = v0[87];
    v89 = v0[86];
    v7 = v0[85];
    v99 = v7;
    v8 = v0[84];
    v129 = v8;
    v83 = v0[74];
    v85 = v0[73];
    v87 = v0[72];
    v91 = v0[66];
    v95 = v0[65];
    v97 = v0[64];
    v108 = v0[63];
    v110 = v0[62];
    v112 = v0[61];
    v102 = v0[60];
    v104 = v0[59];
    v106 = v0[58];
    v9 = v0[38];
    v114 = v1[37];
    v120 = v1[36];
    sub_1000121F8((v1 + 7), (v1 + 2));
    v10 = *(v7 + 16);
    v10(v6, v5, v8);
    v79 = v10;
    sub_1002A9938((v1 + 2), (v1 + 12));
    v11 = *(v9 + 40);
    v81 = *(v9 + 32);
    v12 = *(v3 + 16);
    v1[118] = v12;
    v1[119] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v2, v77, v4);
    v13 = _s6RunnerCMa_0(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_delegateCanAutoAccept) = 0;
    *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_nearbyAgent) = v11;
    v1[120] = v16;
    *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler) = v120;
    v10(v117, v126, v8);
    sub_1002A9938((v1 + 12), (v1 + 17));
    v17 = v4;
    v123 = v4;
    v12(v132, v2, v4);
    v18 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateContinuation;
    v19 = sub_10028088C(&qword_100982550, &qword_100808ED0);
    (*(*(v19 - 8) + 56))(v16 + v18, 1, 1, v19);
    *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_osTransaction) = 0;
    v20 = v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_powerAssertion;
    *v20 = 0;
    *(v20 + 4) = 1;
    *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_displayPriorityReturnToNormalTask) = 0;
    v21 = v11;
    v22 = v120;
    SFAirDropReceive.Transfer.askRequest.getter();
    (*(v85 + 32))(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_askRequest, v83, v87);
    sub_1002A9938((v1 + 17), v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler);
    *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_deviceStatus) = v81;
    v12(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log, v132, v17);
    v79(v89, v117, v8);
    v23 = sub_10028088C(&qword_1009828E8, &qword_100809270);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = v81;
    *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject) = CurrentValueSubject.init(_:)();
    SFAirDropReceive.Transfer.startDate.getter();
    SFAirDropReceive.Transfer.Metrics.init(startDate:)();
    (*(v95 + 32))(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_metrics, v91, v97);
    v27 = type metadata accessor for SDAirDropPlatformLockStateManagerSupported();
    v28 = swift_allocObject();
    v29 = (v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager);
    v29[3] = v27;
    v29[4] = &off_1008E50F8;
    *v29 = v28;
    sub_10068E7B8(v117);
    v30 = *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager + 24);
    v31 = *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager + 32);
    sub_10002CDC0((v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager), v30);
    v32 = _s10BaseRunnerCMa(0);
    v1[27] = v16;
    v1[30] = v32;
    v33 = *(v31 + 16);

    v33(v1 + 27, "lockStateChanged", v30, v31);
    v34 = *(v3 + 8);
    v1[121] = v34;
    v1[122] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v132, v123);
    sub_10000C60C(v1 + 17);
    v35 = *(v99 + 8);
    v1[123] = v35;
    v1[124] = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v117, v129);
    sub_10000C60C(v1 + 27);
    *v102 = 0x662E657261757173;
    v102[1] = 0xEB000000006C6C69;
    (*(v104 + 104))(v102, enum case for SFAirDrop.ButtonConfiguration.symbol(_:), v106);
    swift_allocObject();
    swift_weakInit();

    SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();

    sub_100688010(v108);

    v35(v117, v129);
    (*(v110 + 8))(v108, v112);
    v34(v2, v123);
    sub_10000C60C(v1 + 12);
    v35(v126, v129);
    v36 = SFAirDropReceive.AskRequest.contactIdentifier.getter();
    if (v37)
    {
      v38 = v37;
      v39 = v36;
      v40 = v1[113];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v42 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
        v43 = Strong;
        swift_beginAccess();
        sub_1002A9938(v43 + v42, (v1 + 22));
        v44 = v1[25];
        v45 = v1[26];
        sub_10002CDC0(v1 + 22, v44);
        v46 = (*(v45 + 104))(v39, v38, v44, v45);

        swift_unknownObjectRelease();
        sub_10000C60C(v1 + 22);
      }

      else
      {

        v46 = 0;
      }

      *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_delegateCanAutoAccept) = v46 & 1;
    }

    v71 = v1[84];
    v72 = v1[57];
    v1[34] = *(v16 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
    sub_100541DE8();

    SFNoThrowAsyncSequence.init<A>(_:)();

    v73 = swift_task_alloc();
    v1[125] = v73;
    *v73 = v1;
    v73[1] = sub_10053D28C;
    v74 = v1[113];
    v75 = v1[57];
    v76 = v1[89];

    return (sub_10039AB34)(v76, v75);
  }

  else
  {
    v47 = v0[111];
    sub_100005508((v0 + 7), &qword_1009828E0, &unk_100809260);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Receive StateMachine PreChecks FAILED. Mixed types - returning .mixedTypes", v50, 2u);
    }

    v51 = v0[113];
    v52 = v1[107];
    v133 = v1[106];
    v135 = v1[111];
    v53 = v1[100];
    v121 = v1[99];
    v124 = v1[102];
    v54 = v1[91];
    v115 = v1[90];
    v118 = v1[94];
    v55 = v1[89];
    v56 = v1[85];
    v57 = v1[84];
    v58 = v1[41];
    v127 = v1[35];
    v130 = v1[40];

    swift_unknownObjectRelease();
    (*(v56 + 8))(v55, v57);
    (*(v54 + 8))(v118, v115);
    (*(v53 + 8))(v124, v121);
    (*(v52 + 8))(v135, v133);
    (*(v58 + 104))(v127, enum case for SFAirDropReceive.AskResponse.mixedTypes(_:), v130);
    v59 = v1[111];
    v60 = v1[110];
    v61 = v1[109];
    v62 = v1[105];
    v63 = v1[102];
    v64 = v1[101];
    v65 = v1[98];
    v66 = v1[97];
    v67 = v1[94];
    v68 = v1[93];
    v78 = v1[92];
    v80 = v1[89];
    v82 = v1[88];
    v84 = v1[87];
    v86 = v1[86];
    v88 = v1[83];
    v90 = v1[80];
    v92 = v1[77];
    v94 = v1[74];
    v96 = v1[71];
    v98 = v1[70];
    v100 = v1[69];
    v101 = v1[68];
    v103 = v1[67];
    v105 = v1[66];
    v107 = v1[63];
    v109 = v1[60];
    v111 = v1[57];
    v113 = v1[54];
    v116 = v1[53];
    v119 = v1[52];
    v122 = v1[51];
    v125 = v1[50];
    v128 = v1[46];
    v131 = v1[45];
    v134 = v1[42];
    v136 = v1[39];

    v69 = v1[1];

    return v69();
  }
}

uint64_t sub_10053D28C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1000);
  v6 = *v2;
  *(v4 + 1008) = v1;

  v7 = *(v4 + 896);
  if (v1)
  {
    v8 = sub_10053D8F4;
  }

  else
  {
    *(v4 + 1049) = a1 & 1;
    v8 = sub_10053D3CC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10053D3CC()
{
  v1 = *(v0 + 1049);
  v2 = *(v0 + 888);
  v3 = Logger.logObject.getter();
  if (v1 == 1)
  {
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Receive StateMachine PreChecks END", v5, 2u);
    }

    v6 = *(v0 + 888);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Receive StateMachine PreAccept START", v9, 2u);
    }

    v10 = swift_task_alloc();
    *(v0 + 1016) = v10;
    *v10 = v0;
    v10[1] = sub_10053DCC4;
    v11 = *(v0 + 960);
    v12 = *(v0 + 432);

    return sub_100505550(v12);
  }

  else
  {
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v3, v14, "Receive StateMachine PreChecks FAILED. Delegate.shouldStart returned false - returning .decline", v15, 2u);
    }

    v56 = *(v0 + 984);
    v58 = *(v0 + 992);
    v72 = *(v0 + 968);
    v74 = *(v0 + 976);
    v16 = *(v0 + 960);
    v17 = *(v0 + 904);
    v68 = *(v0 + 848);
    v70 = *(v0 + 888);
    v18 = *(v0 + 800);
    v60 = *(v0 + 792);
    v62 = *(v0 + 816);
    v19 = *(v0 + 728);
    v52 = *(v0 + 720);
    v54 = *(v0 + 752);
    v48 = *(v0 + 672);
    v50 = *(v0 + 712);
    v20 = *(v0 + 448);
    v21 = *(v0 + 456);
    v22 = *(v0 + 440);
    v23 = *(v0 + 328);
    v64 = *(v0 + 280);
    v66 = *(v0 + 320);

    swift_unknownObjectRelease();

    (*(v20 + 8))(v21, v22);
    sub_10000C60C((v0 + 16));
    v56(v50, v48);
    (*(v19 + 8))(v54, v52);
    (*(v18 + 8))(v62, v60);
    v72(v70, v68);
    (*(v23 + 104))(v64, enum case for SFAirDropReceive.AskResponse.decline(_:), v66);
    v24 = *(v0 + 888);
    v25 = *(v0 + 880);
    v26 = *(v0 + 872);
    v27 = *(v0 + 840);
    v28 = *(v0 + 816);
    v29 = *(v0 + 808);
    v30 = *(v0 + 784);
    v31 = *(v0 + 776);
    v32 = *(v0 + 752);
    v33 = *(v0 + 744);
    v35 = *(v0 + 736);
    v36 = *(v0 + 712);
    v37 = *(v0 + 704);
    v38 = *(v0 + 696);
    v39 = *(v0 + 688);
    v40 = *(v0 + 664);
    v41 = *(v0 + 640);
    v42 = *(v0 + 616);
    v43 = *(v0 + 592);
    v44 = *(v0 + 568);
    v45 = *(v0 + 560);
    v46 = *(v0 + 552);
    v47 = *(v0 + 544);
    v49 = *(v0 + 536);
    v51 = *(v0 + 528);
    v53 = *(v0 + 504);
    v55 = *(v0 + 480);
    v57 = *(v0 + 456);
    v59 = *(v0 + 432);
    v61 = *(v0 + 424);
    v63 = *(v0 + 416);
    v65 = *(v0 + 408);
    v67 = *(v0 + 400);
    v69 = *(v0 + 368);
    v71 = *(v0 + 360);
    v73 = *(v0 + 336);
    v75 = *(v0 + 312);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_10053D8F4()
{
  v1 = v0[111];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Receive StateMachine PreCheck FAILED. Delegate.shouldStart threw and error - returning .error", v4, 2u);
  }

  v5 = v0[126];
  v47 = v0[123];
  v49 = v0[124];
  v63 = v0[121];
  v65 = v0[122];
  v6 = v0[120];
  v7 = v0[113];
  v59 = v0[106];
  v61 = v0[111];
  v8 = v0[100];
  v51 = v0[99];
  v53 = v0[102];
  v9 = v0[91];
  v43 = v0[90];
  v45 = v0[94];
  v39 = v0[84];
  v41 = v0[89];
  v10 = v0[56];
  v11 = v0[57];
  v12 = v0[55];
  v13 = v0[41];
  v55 = v0[35];
  v57 = v0[40];

  swift_unknownObjectRelease();

  (*(v10 + 8))(v11, v12);
  sub_10000C60C(v0 + 2);
  v47(v41, v39);
  (*(v9 + 8))(v45, v43);
  (*(v8 + 8))(v53, v51);
  v63(v61, v59);
  (*(v13 + 104))(v55, enum case for SFAirDropReceive.AskResponse.error(_:), v57);
  v14 = v0[111];
  v15 = v0[110];
  v16 = v0[109];
  v17 = v0[105];
  v18 = v0[102];
  v19 = v0[101];
  v20 = v0[98];
  v21 = v0[97];
  v22 = v0[94];
  v23 = v0[93];
  v26 = v0[92];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[83];
  v32 = v0[80];
  v33 = v0[77];
  v34 = v0[74];
  v35 = v0[71];
  v36 = v0[70];
  v37 = v0[69];
  v38 = v0[68];
  v40 = v0[67];
  v42 = v0[66];
  v44 = v0[63];
  v46 = v0[60];
  v48 = v0[57];
  v50 = v0[54];
  v52 = v0[53];
  v54 = v0[52];
  v56 = v0[51];
  v58 = v0[50];
  v60 = v0[46];
  v62 = v0[45];
  v64 = v0[42];
  v66 = v0[39];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10053DCC4()
{
  v1 = *(*v0 + 1016);
  v2 = *(*v0 + 896);
  v4 = *v0;

  return _swift_task_switch(sub_10053DDD4, v2, 0);
}

uint64_t sub_10053DDD4()
{
  v155 = v0;
  v1 = v0[111];
  v2 = v0[54];
  v3 = v0[52];
  sub_10054221C(v2, v0[53], _s6RunnerC19PreAcceptRunResultsVMa);
  sub_10054221C(v2, v3, _s6RunnerC19PreAcceptRunResultsVMa);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[80];
    v7 = v0[79];
    v8 = v0[78];
    v147 = v5;
    v9 = v0[53];
    v142 = v0[47];
    v145 = v0[52];
    v10 = v0[40];
    v11 = swift_slowAlloc();
    v154[0] = swift_slowAlloc();
    *v11 = 136315394;
    sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100542284(v9, _s6RunnerC19PreAcceptRunResultsVMa);
    v15 = sub_10000C4E4(v12, v14, v154);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = v145 + *(v142 + 20);
    SFAirDropReceive.Transfer.state.getter();
    sub_100542734(&unk_1009892B0, &type metadata accessor for SFAirDropReceive.Transfer.State);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v6, v8);
    sub_100542284(v145, _s6RunnerC19PreAcceptRunResultsVMa);
    v20 = sub_10000C4E4(v17, v19, v154);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v4, v147, "Receive StateMachine PreAccept END {response: %s, transfer.state: %s}", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[52];
    v21 = v0[53];

    sub_100542284(v22, _s6RunnerC19PreAcceptRunResultsVMa);
    sub_100542284(v21, _s6RunnerC19PreAcceptRunResultsVMa);
  }

  v23 = v0[54];
  v25 = v0[41];
  v24 = v0[42];
  v26 = v0[40];
  v27 = *(v25 + 16);
  v0[128] = v27;
  v0[129] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v27(v24, v23, v26);
  if ((*(v25 + 88))(v24, v26) == enum case for SFAirDropReceive.AskResponse.accept(_:))
  {
    v28 = v0[45];
    v29 = v0[46];
    v30 = v0[43];
    v31 = v0[44];
    v32 = v0[42];
    (*(v0[41] + 96))(v32, v0[40]);
    v33 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
    (*(v31 + 32))(v29, v32, v30);
    v34 = type metadata accessor for SFAirDropReceive.AcceptContext();
    (*(*(v34 - 8) + 8))(v32 + v33, v34);
    (*(v31 + 104))(v28, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v30);
    sub_100542734(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
    LOBYTE(v29) = dispatch thunk of static Equatable.== infix(_:_:)();
    v151 = *(v31 + 8);
    v151(v28, v30);
    if ((v29 & 1) == 0)
    {
      goto LABEL_7;
    }

    v35 = v0[115];
    v36 = v0[114];
    v37 = v0[98];
    v38 = v0[95];
    v39 = v0[89];
    v40 = v0[74];
    v41 = v0[73];
    v42 = v0[72];
    SFAirDropReceive.Transfer.askRequest.getter();
    SFAirDropReceive.AskRequest.type.getter();
    (*(v41 + 8))(v40, v42);
    LOBYTE(v39) = SFAirDrop.TransferType.isOnlyExchange.getter();
    v36(v37, v38);
    if (v39)
    {
LABEL_7:
      v134 = v0[120];
      v43 = v0[118];
      v44 = v0[111];
      v45 = v0[110];
      v117 = v45;
      v46 = v0[107];
      v47 = v0[106];
      v48 = v0[54];
      v49 = v0[51];
      v123 = v0[108];
      v126 = v0[49];
      v120 = v0[48];
      v137 = v0[46];
      v148 = v0[43];
      v50 = v0[39];
      v129 = v0[36];
      v143 = type metadata accessor for TaskPriority();
      v140 = *(*(v143 - 8) + 56);
      v140(v50, 1, 1, v143);
      v51 = v45;
      v52 = v47;
      v43(v51, v44, v47);
      sub_10054221C(v48, v49, _s6RunnerC19PreAcceptRunResultsVMa);
      v53 = (*(v46 + 80) + 16) & ~*(v46 + 80);
      v54 = (v123 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = (*(v120 + 80) + v54 + 8) & ~*(v120 + 80);
      v56 = swift_allocObject();
      (*(v46 + 32))(v56 + v53, v117, v52);
      *(v56 + v54) = v134;
      sub_100541F9C(v49, v56 + v55);
      *(v56 + ((v126 + v55 + 7) & 0xFFFFFFFFFFFFFFF8)) = v129;
      _s10BaseRunnerC11FinishTokenVMa(0);
      v57 = v129;

      v58 = static Task<>.noThrow(priority:operation:)();

      sub_100005508(v50, &qword_100976160, &qword_1007F8770);
      v151(v137, v148);
      v149 = v0[128];
      v152 = v0[129];
      v115 = v0[123];
      v118 = v0[124];
      v135 = v0[121];
      v138 = v0[122];
      v101 = v0[113];
      v103 = v0[120];
      v59 = v0[112];
      v130 = v0[106];
      v132 = v0[111];
      v60 = v0[100];
      v121 = v0[99];
      v61 = v0[91];
      v109 = v0[90];
      v111 = v0[94];
      v105 = v0[84];
      v107 = v0[89];
      v62 = v0[56];
      v63 = v0[54];
      v97 = v0[55];
      v99 = v0[57];
      v64 = v0[39];
      v124 = v0[40];
      v127 = v0[102];
      v113 = v0[35];
      v140(v64, 1, 1, v143);
      v65 = sub_100542734(&qword_100977C00, type metadata accessor for AirDropActor);
      v66 = swift_allocObject();
      v66[2] = v59;
      v66[3] = v65;
      v66[4] = v58;

      sub_1002B3098(0, 0, v64, &unk_100809290, v66);

      swift_unknownObjectRelease();

      (*(v62 + 8))(v99, v97);
      sub_10000C60C(v0 + 2);
      v115(v107, v105);
      (*(v61 + 8))(v111, v109);
      (*(v60 + 8))(v127, v121);
      v135(v132, v130);
      v149(v113, v63, v124);
      sub_100542284(v63, _s6RunnerC19PreAcceptRunResultsVMa);
      v67 = v0[111];
      v68 = v0[110];
      v69 = v0[109];
      v70 = v0[105];
      v71 = v0[102];
      v72 = v0[101];
      v73 = v0[98];
      v74 = v0[97];
      v75 = v0[94];
      v76 = v0[93];
      v93 = v0[92];
      v94 = v0[89];
      v95 = v0[88];
      v96 = v0[87];
      v98 = v0[86];
      v100 = v0[83];
      v102 = v0[80];
      v104 = v0[77];
      v106 = v0[74];
      v108 = v0[71];
      v110 = v0[70];
      v112 = v0[69];
      v114 = v0[68];
      v116 = v0[67];
      v119 = v0[66];
      v122 = v0[63];
      v125 = v0[60];
      v128 = v0[57];
      v131 = v0[54];
      v133 = v0[53];
      v136 = v0[52];
      v139 = v0[51];
      v141 = v0[50];
      v144 = v0[46];
      v146 = v0[45];
      v150 = v0[42];
      v153 = v0[39];

      v77 = v0[1];

      return v77();
    }

    v151(v0[46], v0[43]);
  }

  else
  {
    (*(v0[41] + 8))(v0[42], v0[40]);
  }

  v79 = v0[111];
  sub_10054221C(v0[54], v0[50], _s6RunnerC19PreAcceptRunResultsVMa);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v0[50];
  if (v82)
  {
    v84 = v0[40];
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v154[0] = v86;
    *v85 = 136315138;
    sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse);
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    v89 = v88;
    sub_100542284(v83, _s6RunnerC19PreAcceptRunResultsVMa);
    v90 = sub_10000C4E4(v87, v89, v154);

    *(v85 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v80, v81, "Receive StateMachine PostAccept SKIPPED. {preResults.response: %s}", v85, 0xCu);
    sub_10000C60C(v86);
  }

  else
  {

    sub_100542284(v83, _s6RunnerC19PreAcceptRunResultsVMa);
  }

  v91 = swift_task_alloc();
  v0[130] = v91;
  *v91 = v0;
  v91[1] = sub_10053EA90;
  v92 = v0[120];

  return sub_10068D33C();
}

uint64_t sub_10053EA90()
{
  v1 = *(*v0 + 1040);
  v2 = *(*v0 + 896);
  v4 = *v0;

  return _swift_task_switch(sub_10053EBA0, v2, 0);
}

uint64_t sub_10053EBA0()
{
  v1 = v0[120];
  v2 = v0[39];
  v3 = type metadata accessor for TaskPriority();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  _s10BaseRunnerC11FinishTokenVMa(0);

  v5 = static Task<>.noThrow(priority:operation:)();

  sub_100005508(v2, &qword_100976160, &qword_1007F8770);
  v70 = v0[128];
  v72 = v0[129];
  v50 = v0[123];
  v52 = v0[124];
  v66 = v0[121];
  v68 = v0[122];
  v36 = v0[113];
  v38 = v0[120];
  v6 = v0[112];
  v62 = v0[106];
  v64 = v0[111];
  v60 = v0[102];
  v7 = v0[100];
  v8 = v0[91];
  v44 = v0[90];
  v46 = v0[94];
  v40 = v0[84];
  v42 = v0[89];
  v9 = v0[56];
  v10 = v0[55];
  v32 = v10;
  v34 = v0[57];
  v54 = v0[99];
  v56 = v0[54];
  v11 = v0[39];
  v58 = v0[40];
  v48 = v0[35];
  v4(v11, 1, 1, v3);
  v12 = sub_100542734(&qword_100977C00, type metadata accessor for AirDropActor);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v12;
  v13[4] = v5;

  sub_1002B3098(0, 0, v11, &unk_100809290, v13);

  swift_unknownObjectRelease();

  (*(v9 + 8))(v34, v32);
  sub_10000C60C(v0 + 2);
  v50(v42, v40);
  (*(v8 + 8))(v46, v44);
  (*(v7 + 8))(v60, v54);
  v66(v64, v62);
  v70(v48, v56, v58);
  sub_100542284(v56, _s6RunnerC19PreAcceptRunResultsVMa);
  v14 = v0[111];
  v15 = v0[110];
  v16 = v0[109];
  v17 = v0[105];
  v18 = v0[102];
  v19 = v0[101];
  v20 = v0[98];
  v21 = v0[97];
  v22 = v0[94];
  v23 = v0[93];
  v26 = v0[92];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[83];
  v33 = v0[80];
  v35 = v0[77];
  v37 = v0[74];
  v39 = v0[71];
  v41 = v0[70];
  v43 = v0[69];
  v45 = v0[68];
  v47 = v0[67];
  v49 = v0[66];
  v51 = v0[63];
  v53 = v0[60];
  v55 = v0[57];
  v57 = v0[54];
  v59 = v0[53];
  v61 = v0[52];
  v63 = v0[51];
  v65 = v0[50];
  v67 = v0[46];
  v69 = v0[45];
  v71 = v0[42];
  v73 = v0[39];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10053F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for SFAirDropReceive.Failure();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v12 = sub_10028088C(&qword_1009768F8, &unk_1008092B0);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropReceive.Transfer();
  v5[20] = v18;
  v19 = *(v18 - 8);
  v5[21] = v19;
  v20 = *(v19 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v21 = static AirDropActor.shared;
  v5[26] = static AirDropActor.shared;

  return _swift_task_switch(sub_10053F348, v21, 0);
}

uint64_t sub_10053F348()
{
  v1 = v0[3];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Receive StateMachine PostAccept START", v4, 2u);
  }

  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[6];

  (*(v6 + 16))(v5, v9 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation, v7);
  SFProgressContinuation.task.getter();
  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_10053F4C4;
  v11 = v0[25];
  v12 = v0[16];
  v14 = v0[4];
  v13 = v0[5];

  return sub_10050CB1C(v11, v13);
}

uint64_t sub_10053F4C4()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 112);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10053F630, v2, 0);
}

uint64_t sub_10053F630()
{
  v1 = v0[25];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  SFAirDropReceive.Transfer.state.getter();
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    v6 = v0[13];
    (*(v0[11] + 96))(v6, v0[10]);
    v7 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
    v0[28] = v7;
    v8 = *(v6 + v7[16] + 8);

    v9 = *(v6 + v7[20]);

    v10 = *(v6 + v7[24]);

    v11 = *(v6 + v7[28]);

    v12 = swift_task_alloc();
    v0[29] = v12;
    *v12 = v0;
    v12[1] = sub_10053F960;
    v13 = v0[6];
    v14 = 0;
  }

  else if (v5 == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    v15 = v0[13];
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[7];
    (*(v0[11] + 96))(v15, v0[10]);
    v19 = sub_10028088C(&qword_10097A670, &unk_100804290);
    (*(v17 + 32))(v16, v15 + *(v19 + 48), v18);
    sub_100542734(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    v20 = swift_allocError();
    v0[30] = v20;
    (*(v17 + 16))(v21, v16, v18);
    v22 = swift_task_alloc();
    v0[31] = v22;
    *v22 = v0;
    v22[1] = sub_10053FD40;
    v23 = v0[6];
    v14 = v20;
  }

  else
  {
    type metadata accessor for CancellationError();
    sub_100542734(&unk_10097A6B0, &type metadata accessor for CancellationError);
    v24 = swift_allocError();
    v0[32] = v24;
    CancellationError.init()();
    v25 = swift_task_alloc();
    v0[33] = v25;
    *v25 = v0;
    v25[1] = sub_100540148;
    v26 = v0[6];
    v14 = v24;
  }

  return sub_100641284(v14);
}

uint64_t sub_10053F960()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_10053FA70, v2, 0);
}

uint64_t sub_10053FA70()
{
  v28 = v0;
  v1 = v0[3];
  (*(v0[21] + 16))(v0[24], v0[25], v0[20]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  v6 = v0[20];
  v7 = v0[21];
  if (v4)
  {
    v8 = v0[11];
    v9 = v0[12];
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v11 = 136315138;
    v25 = v6;
    SFAirDropReceive.Transfer.state.getter();
    sub_100542734(&unk_1009892B0, &type metadata accessor for SFAirDropReceive.Transfer.State);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v3;
    v14 = v13;
    (*(v8 + 8))(v9, v10);
    v15 = *(v7 + 8);
    v15(v5, v25);
    v16 = sub_10000C4E4(v12, v14, &v27);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v2, v24, "Receive StateMachine PostAccept END {transfer.state: %s}", v11, 0xCu);
    sub_10000C60C(v26);
  }

  else
  {

    v15 = *(v7 + 8);
    v15(v5, v6);
  }

  v17 = v0[13];
  v18 = *(v0[28] + 48);
  v19 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v19 - 8) + 8))(v17 + v18, v19);
  v20 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v20 - 8) + 8))(v17, v20);
  v0[34] = v15;
  v21 = swift_task_alloc();
  v0[35] = v21;
  *v21 = v0;
  v21[1] = sub_1005404FC;
  v22 = v0[4];

  return sub_10068D33C();
}

uint64_t sub_10053FD40()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 208);
  v5 = *v0;

  return _swift_task_switch(sub_10053FE6C, v3, 0);
}

uint64_t sub_10053FE6C()
{
  v32 = v0;
  v1 = v0[3];
  (*(v0[21] + 16))(v0[23], v0[25], v0[20]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  if (v4)
  {
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[10];
    v28 = v0[8];
    v29 = v0[7];
    v30 = v0[9];
    v25 = v0[20];
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v11 = 136315138;
    v26 = v3;
    SFAirDropReceive.Transfer.state.getter();
    sub_100542734(&unk_1009892B0, &type metadata accessor for SFAirDropReceive.Transfer.State);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = *(v7 + 8);
    v15(v5, v25);
    v16 = sub_10000C4E4(v12, v14, &v31);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v2, v26, "Receive StateMachine PostAccept FAILED {transfer.state: %s}", v11, 0xCu);
    sub_10000C60C(v27);

    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[7];

    v15 = *(v7 + 8);
    v15(v5, v6);
    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[13];
  v21 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v21 - 8) + 8))(v20, v21);
  v0[34] = v15;
  v22 = swift_task_alloc();
  v0[35] = v22;
  *v22 = v0;
  v22[1] = sub_1005404FC;
  v23 = v0[4];

  return sub_10068D33C();
}

uint64_t sub_100540148()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 208);
  v5 = *v0;

  return _swift_task_switch(sub_100540274, v3, 0);
}

uint64_t sub_100540274()
{
  v26 = v0;
  v1 = v0[3];
  (*(v0[21] + 16))(v0[22], v0[25], v0[20]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  if (v4)
  {
    v8 = v0[11];
    v9 = v0[12];
    v10 = v0[10];
    v22 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v22 = 136315138;
    v23 = v3;
    SFAirDropReceive.Transfer.state.getter();
    sub_100542734(&unk_1009892B0, &type metadata accessor for SFAirDropReceive.Transfer.State);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v21 = v2;
    v14 = *(v8 + 8);
    v14(v9, v10);
    v15 = *(v6 + 8);
    v15(v5, v7);
    v16 = sub_10000C4E4(v11, v13, &v25);

    *(v22 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v21, v23, "Receive StateMachine PostAccept INCOMPLETE {transfer.state: %s}", v22, 0xCu);
    sub_10000C60C(v24);
  }

  else
  {
    v17 = v0[11];

    v15 = *(v6 + 8);
    v15(v5, v7);
    v14 = *(v17 + 8);
  }

  v14(v0[13], v0[10]);
  v0[34] = v15;
  v18 = swift_task_alloc();
  v0[35] = v18;
  *v18 = v0;
  v18[1] = sub_1005404FC;
  v19 = v0[4];

  return sub_10068D33C();
}

uint64_t sub_1005404FC()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_10054060C, v2, 0);
}

uint64_t sub_10054060C()
{
  v1 = v0[34];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[9];
  v9 = v0[4];
  sub_10068F04C(v0[2]);
  v1(v2, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100540718(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_100542780, v3, 0);
}

uint64_t sub_1005407B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s10BaseRunnerC11FinishTokenVMa(0);
  v7 = *(*(v6 - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v4[2] = v8;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4[3] = static AirDropActor.shared;
  v9 = async function pointer to Task<>.value.getter[1];
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_1005408D8;

  return Task<>.value.getter(v8, a4, v6);
}

uint64_t sub_1005408D8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10054277C, v2, 0);
}

uint64_t sub_1005409E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_100540A90, v6, 0);
}

uint64_t sub_100540A90()
{
  v1 = v0[6];
  SFAirDropReceive.AskRequest.canAutoAccept.getter();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100540B44;
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  return sub_1002E1ADC(v4, v3);
}

uint64_t sub_100540B44()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v3;
  v4[1] = sub_100540C84;
  v5 = *(v1 + 24);

  return sub_10068D33C();
}

uint64_t sub_100540C84()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100542780, v2, 0);
}

uint64_t sub_100540D94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2[4] = static AirDropActor.shared;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100540E68;

  return sub_10068D33C();
}

uint64_t sub_100540E68()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100540F78, v2, 0);
}

uint64_t sub_100540F78()
{
  v1 = v0[3];
  sub_10068F04C(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100540FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s10BaseRunnerC11FinishTokenVMa(0);
  v7 = *(*(v6 - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v4[2] = v8;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4[3] = static AirDropActor.shared;
  v9 = async function pointer to Task<>.value.getter[1];
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_1005410FC;

  return Task<>.value.getter(v8, a4, v6);
}

uint64_t sub_1005410FC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10054120C, v2, 0);
}

uint64_t sub_10054120C()
{
  v1 = *(v0 + 16);
  sub_10068FE90();
  sub_100542284(v1, _s10BaseRunnerC11FinishTokenVMa);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100541290()
{
  sub_10004C60C(v0 + 16);

  v1 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100541304(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100541368(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10054141C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_1005414B8(uint64_t a1)
{
  *(v1 + 48) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 56) = static AirDropActor.shared;

  return _swift_task_switch(sub_100541558, v2, 0);
}

uint64_t sub_100541558()
{
  v35 = v0;
  v1 = v0[6];
  v2 = SFAirDropReceive.AskRequest.previewImage.getter();
  v0[8] = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  v4 = v0[6];
  if (SFAirDropReceive.AskRequest.senderIsMe.getter())
  {

LABEL_4:
    if (qword_1009739D0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100982810);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Receive StateMachine PreChecks isPreviewSensitive SKIP. No previewImage or senderIsMe", v8, 2u);
    }

    goto LABEL_8;
  }

  v12 = sub_10049F1E0();
  v14 = v13;
  if (!v11)
  {
    if (qword_1009739D0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100982810);

    v6 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    sub_1003C3F0C(v12, v14, 0);
    if (!os_log_type_enabled(v6, v25))
    {

      sub_1003C3F0C(v12, v14, 0);
      goto LABEL_9;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136315138;
    v28 = sub_100498E20(v12, v14, 0);
    v30 = v29;
    sub_1003C3F0C(v12, v14, 0);
    v31 = sub_10000C4E4(v28, v30, &v34);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v6, v25, "Receive StateMachine PreChecks isPreviewSensitive SKIP {userSafetyMode: %s}", v26, 0xCu);
    sub_10000C60C(v27);

LABEL_8:
LABEL_9:
    v9 = v0[1];

    return v9(0);
  }

  v15 = v11;
  if (qword_1009739D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v0[9] = sub_10000C4AC(v16, qword_100982810);
  sub_100530B64(v12, v14, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  sub_1003C3F0C(v12, v14, v15);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v19 = 136315138;
    v20 = sub_100498E20(v12, v14, v15);
    v22 = v21;
    sub_1003C3F0C(v12, v14, v15);
    v23 = sub_10000C4E4(v20, v22, &v34);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Receive StateMachine PreChecks isPreviewSensitive START {userSafetyMode: %s}", v19, 0xCu);
    sub_10000C60C(v33);
  }

  else
  {

    sub_1003C3F0C(v12, v14, v15);
  }

  v32 = swift_task_alloc();
  v0[10] = v32;
  *v32 = v0;
  v32[1] = sub_100541A1C;

  return sub_10049F8B4(v3);
}

uint64_t sub_100541A1C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 88) = v1;

  v7 = *(v3 + 56);
  if (v1)
  {
    v8 = sub_100541C58;
  }

  else
  {
    v8 = sub_100541B54;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100541B54()
{
  v1 = *(v0 + 72);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Receive StateMachine PreChecks isPreviewSensitive END {isPreviewSensitive: %{BOOL}d}", v6, 8u);
  }

  else
  {
    v7 = *(v0 + 64);

    v2 = v7;
  }

  v8 = *(v0 + 96);
  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_100541C58()
{
  v18 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = Error.localizedDescription.getter();
    v13 = sub_10000C4E4(v11, v12, &v17);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Receive StateMachine PreChecks FAILED. Error analyzing preview - returning .error {error: %s}", v6, 0xCu);
    sub_10000C60C(v7);
  }

  else
  {
    v14 = *(v0 + 88);
  }

  v15 = *(v0 + 8);

  return v15(0);
}

unint64_t sub_100541DE8()
{
  result = qword_1009828F0[0];
  if (!qword_1009828F0[0])
  {
    sub_100280938(&qword_1009828E8, &qword_100809270);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1009828F0);
  }

  return result;
}

uint64_t sub_100541E4C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C00;

  return sub_100540718(a1, v1);
}

uint64_t sub_100541EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005407B4(a1, v4, v5, v6);
}

uint64_t sub_100541F9C(uint64_t a1, uint64_t a2)
{
  v4 = _s6RunnerC19PreAcceptRunResultsVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100542000(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(_s6RunnerC19PreAcceptRunResultsVMa(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100005C00;

  return sub_10053F08C(a1, v1 + v6, v10, v1 + v9, v11);
}

void *sub_100542188(void *a1, void *a2)
{
  v3 = v2;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[4] = a1;
  v3[5] = a2;
  type metadata accessor for SDAirDropiOSHapticsManager();
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  v3[6] = v6;
  v3[7] = &off_1008DA630;
  v7 = a1;
  v8 = a2;

  sub_1002DD168();

  return v3;
}

uint64_t sub_10054221C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100542284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005422E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C04;

  return sub_100540D94(a1, v1);
}

uint64_t sub_100542380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100540FD8(a1, v4, v5, v6);
}

uint64_t sub_100542434(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_1009764E8, &qword_1007F9790) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SFAirDropReceive.ItemDestination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for SFAirDropReceive.AskRequest() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100005C00;

  return sub_1005409E8(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1005425F0(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  result = type metadata accessor for SFAirDrop.PermissionRequest();
  if (v2 <= 0x3F)
  {
    sub_100280938(&unk_10097A930, &unk_1007F9050);
    result = type metadata accessor for Task();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100542734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100542784()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982978);
  v1 = sub_10000C4AC(v0, qword_100982978);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10054284C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005429FC, v12, 0);
}

uint64_t sub_1005429FC()
{
  v53 = v0;
  v1 = v0[2];
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = v0[2];
    v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v4)
    {
LABEL_3:
      v2 = 0;
    }

    else
    {
      v5 = v0[2];
      v6 = SFAirDropReceive.AskRequest.files.getter();
      v7 = v6;
      v8 = *(v6 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v0[11];
        v50 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        while (v9 < *(v7 + 16))
        {
          v11 = v0[12];
          v12 = v0[10];
          (*(v10 + 16))(v11, v50 + *(v10 + 72) * v9, v12);
          SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
          v13 = String._bridgeToObjectiveC()();

          SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
          (*(v10 + 8))(v11, v12);
          v14 = String._bridgeToObjectiveC()();

          v15 = [v14 pathExtension];

          if (!v15)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v15 = String._bridgeToObjectiveC()();
          }

          v16 = SFIsContact();

          if ((v16 & 1) == 0)
          {

            goto LABEL_3;
          }

          if (v8 == ++v9)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        swift_once();
        v20 = v0[8];
        v19 = v0[9];
        v21 = v0[7];
        v22 = v0[2];
        v23 = type metadata accessor for Logger();
        sub_10000C4AC(v23, qword_100982978);
        (*(v20 + 16))(v19, v22, v21);
        swift_errorRetain();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        v26 = os_log_type_enabled(v24, v25);
        v27 = v0[8];
        v28 = v0[9];
        v29 = v0[7];
        if (v26)
        {
          v31 = v0[5];
          v30 = v0[6];
          v32 = v0[4];
          v49 = v25;
          v33 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = v51;
          *v33 = 136315394;
          v47 = v24;
          SFAirDropReceive.AskRequest.id.getter();
          sub_1002891F4();
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v29;
          v36 = v35;
          (*(v31 + 8))(v30, v32);
          (*(v27 + 8))(v28, v34);
          v37 = sub_10000C4E4(v46, v36, &v52);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2112;
          swift_errorRetain();
          v38 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 14) = v38;
          *v48 = v38;
          _os_log_impl(&_mh_execute_header, v47, v49, "Failed to get Contacts app for ask request %s: %@", v33, 0x16u);
          sub_100005508(v48, &qword_100975400, &qword_1007F65D0);

          sub_10000C60C(v51);
        }

        else
        {

          (*(v27 + 8))(v28, v29);
        }
      }

      else
      {
LABEL_11:

        v17 = objc_allocWithZone(LSApplicationRecord);
        v18 = sub_10066F3F8(0xD00000000000001BLL, 0x8000000100794DD0, 1);
        v39 = v0[3];
        v40 = *(v39 + 16);
        *(v39 + 16) = v18;
      }

      v2 = *(v0[3] + 16) != 0;
    }
  }

  v41 = v0[12];
  v42 = v0[9];
  v43 = v0[6];

  v44 = v0[1];

  return v44(v2);
}

uint64_t sub_100542EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100543324@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerContacts();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10054335C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_10054284C(a1);
}

void sub_10054341C(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x544341544E4F43;
  v5 = inited + 32;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005435A0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(sub_10028088C(&qword_100982800, &qword_1008091A8) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = sub_10028088C(&qword_100982808, &unk_1008091B0);
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.TransferType();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100543704, 0, 0);
}

uint64_t sub_100543704()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  SFAirDropSend.Request.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isOnlyExchange.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_6:
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[6];

    v15 = v0[1];

    return v15(v5);
  }

  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  SFAirDropSend.Request.urlsPromise.getter();
  if ((*(v7 + 48))(v9, 1, v6) == 1)
  {
    v10 = v0[5];
    sub_100543C40(v0[6]);
    v11 = SFAirDropSend.Request.urls.getter();
    if (v11)
    {
      v5 = v11;
      goto LABEL_6;
    }

    v24 = type metadata accessor for SFAirDropSend.Failure();
    sub_100543CA8();
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for SFAirDropSend.Failure.badRequest(_:), v24);
    swift_willThrow();
    v26 = v0[12];
    v27 = v0[9];
    v28 = v0[6];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v17 = v0[3];
    v18 = v0[4];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    sub_10028088C(&qword_100982A68, &qword_1008093D8);
    v19 = swift_allocObject();
    v0[13] = v19;
    *(v19 + 16) = xmmword_1007F5670;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18;
    sub_1002A9924(v17, v18);
    v20 = async function pointer to SFXPCBlock.dynamicallyCall(withArguments:)[1];
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_1005439CC;
    v22 = v0[9];
    v23 = v0[7];

    return SFXPCBlock.dynamicallyCall(withArguments:)(v0 + 2, v19, v23);
  }
}

uint64_t sub_1005439CC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);

  if (v0)
  {
    v6 = sub_100543BA4;
  }

  else
  {
    v6 = sub_100543B00;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100543B00()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[2];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_100543BA4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100543C40(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100982800, &qword_1008091A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100543CA8()
{
  result = qword_1009755A0;
  if (!qword_1009755A0)
  {
    type metadata accessor for SFAirDropSend.Failure();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009755A0);
  }

  return result;
}

uint64_t sub_100543D00()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982A70);
  v1 = sub_10000C4AC(v0, qword_100982A70);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100543DC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;

  return _swift_task_switch(sub_100543F78, v12, 0);
}

uint64_t sub_100543F78()
{
  v49 = v0;
  v1 = v0[2];
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = v0[2];
    v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v4)
    {
      v2 = 0;
    }

    else
    {
      v5 = v0[11];
      v47 = v0;
      v6 = v0[2];
      v7 = SFAirDropReceive.AskRequest.files.getter();
      v8 = 0;
      v9 = *(v7 + 16);
      v0 = (v5 + 16);
      while (1)
      {
        if (v9 == v8)
        {

          v13 = objc_allocWithZone(LSApplicationRecord);
          v14 = sub_10066F3F8(0xD000000000000013, 0x8000000100794ED0, 1);
          v0 = v47;
          v36 = v47[3];
          v37 = *(v36 + 16);
          *(v36 + 16) = v14;

          goto LABEL_13;
        }

        if (v8 >= *(v7 + 16))
        {
          break;
        }

        v10 = v47[12];
        v11 = v47[10];
        (*(v5 + 16))(v10, v7 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8++, v11);
        SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
        (*(v5 + 8))(v10, v11);
        v12 = String._bridgeToObjectiveC()();

        LOBYTE(v11) = SFIsCalendarEvent();

        if ((v11 & 1) == 0)
        {

          v2 = 0;
          v0 = v47;
          goto LABEL_14;
        }
      }

      __break(1u);
      swift_once();
      v16 = *(v5 + 80);
      v15 = v0[9];
      v17 = v0[7];
      v18 = v0[2];
      v19 = type metadata accessor for Logger();
      sub_10000C4AC(v19, qword_100982A70);
      (*(v16 + 16))(v15, v18, v17);
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[8];
      v24 = v0[9];
      v25 = v0[7];
      if (v22)
      {
        v27 = v0[5];
        v26 = v0[6];
        v28 = v47[4];
        v45 = v21;
        v29 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v48 = v46;
        *v29 = 136315394;
        v43 = v20;
        SFAirDropReceive.AskRequest.id.getter();
        sub_100545DA0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        v33 = v28;
        v0 = v47;
        (*(v27 + 8))(v26, v33);
        (*(v23 + 8))(v24, v25);
        v34 = sub_10000C4E4(v30, v32, &v48);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2112;
        swift_errorRetain();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 14) = v35;
        *v44 = v35;
        _os_log_impl(&_mh_execute_header, v43, v45, "Failed to get Calendar app for ask request %s: %@", v29, 0x16u);
        sub_100005508(v44, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v46);
      }

      else
      {

        (*(v23 + 8))(v24, v25);
      }

LABEL_13:
      v2 = *(v0[3] + 16) != 0;
    }
  }

LABEL_14:
  v38 = v0[12];
  v39 = v0[9];
  v40 = v0[6];

  v41 = v0[1];

  return v41(v2);
}

uint64_t sub_100544410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(sub_10028088C(&qword_10097B310, &qword_1007FE6C8) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for CodableError();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v4[15] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v4[16] = v9;
  v10 = *(v9 - 8);
  v4[17] = v10;
  v11 = *(v10 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v12 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v4[22] = v12;
  v13 = *(v12 - 8);
  v4[23] = v13;
  v14 = *(v13 + 64) + 15;
  v4[24] = swift_task_alloc();
  v15 = *(*(sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v16 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005446CC, v17, 0);
}

uint64_t sub_1005446CC()
{
  v147 = v0;
  v1 = v0[30];
  v2 = v0[23];
  v126 = v0[22];
  v3 = v0[16];
  v4 = v0[17];
  v5 = *(v0[11] + 16);
  v6 = [objc_allocWithZone(EKEventStore) init];
  v118 = *(v4 + 56);
  v118(v1, 1, 1, v3);
  v7 = 0;
  v127 = (v4 + 16);
  v124 = (v2 + 48);
  v125 = (v2 + 56);
  v8 = (v4 + 32);
  v141 = (v4 + 8);
  v120 = v4;
  v123 = (v4 + 48);
  v9 = (v5 + 1);
  v121 = v6;
  v122 = v5;
  v119 = (v4 + 32);
  v10 = v5 == 0;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  v11 = 1;
  for (i = v5; ; i = v7 + 1)
  {
    v18 = v0[25];
    v19 = v0[26];
    v20 = v0[22];
    (*v125)(v18, v11, 1, v20);
    sub_10002C4E4(v18, v19, &qword_10097A3B8, &qword_1007FE9C0);
    if ((*v124)(v19, 1, v20) == 1)
    {
      break;
    }

    v138 = i;
    v21 = v0[26];
    v22 = *v21;
    (*v8)(v0[20], &v21[*(v126 + 48)], v0[16]);
    v23 = Data.init(contentsOf:options:)();
    v132 = v24;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v26 = [v6 defaultCalendarForNewEvents];
    v27 = [v6 importICSData:isa intoCalendar:v26 options:0];

    if (v27)
    {
      v143 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v143 = 0;
    }

    v135 = v22;
    if (qword_1009739E0 != -1)
    {
      swift_once();
    }

    v28 = v0[19];
    v29 = v0[20];
    v30 = v0[16];
    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_100982A70);
    (*v127)(v28, v29, v30);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[19];
    v36 = v0[16];
    if (v34)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v146[0] = v38;
      *v37 = 136315138;
      sub_100545DA0(&qword_100975160, &type metadata accessor for URL);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v129 = *v141;
      (*v141)(v35, v36);
      v42 = sub_10000C4E4(v39, v41, v146);
      v6 = v121;

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "Calendar Events data was imported from %s", v37, 0xCu);
      sub_10000C60C(v38);
      v8 = v119;
    }

    else
    {

      v129 = *v141;
      (*v141)(v35, v36);
    }

    v5 = v122;
    v43 = v0[28];
    v44 = v0[16];
    sub_100333278(v0[30], v43);
    v45 = (*v123)(v43, 1, v44);
    v46 = v0[28];
    v7 = v138;
    if (v45 != 1)
    {
      sub_100026AC0(v23, v132);

      sub_100005508(v46, &unk_100974E00, &qword_1007F8940);
      goto LABEL_26;
    }

    sub_100005508(v0[28], &unk_100974E00, &qword_1007F8940);
    if (!v143)
    {
LABEL_22:
      sub_100026AC0(v23, v132);
      goto LABEL_26;
    }

    if (*(v143 + 16))
    {
      sub_10000C5B0(v143 + 32, (v0 + 2));

      sub_100545D54();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      v47 = v0[7];
      v48 = [v47 externalURL];
      v49 = v0[30];
      if (v48)
      {
        v50 = v0[27];
        v51 = v48;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100026AC0(v23, v132);

        sub_100005508(v49, &unk_100974E00, &qword_1007F8940);
        v52 = 0;
      }

      else
      {
        sub_100005508(v0[30], &unk_100974E00, &qword_1007F8940);
        sub_100026AC0(v23, v132);

        v52 = 1;
      }

      v53 = v0[30];
      v54 = v0[27];
      v118(v54, v52, 1, v0[16]);
      sub_10002C4E4(v54, v53, &unk_100974E00, &qword_1007F8940);
    }

    else
    {
      sub_100026AC0(v23, v132);
    }

LABEL_26:
    if (__OFADD__(v135, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      swift_once();
      v64 = v0[20];
      v65 = v0[18];
      v66 = v0[16];
      v67 = type metadata accessor for Logger();
      sub_10000C4AC(v67, qword_100982A70);
      (*v127)(v65, v64, v66);
      swift_errorRetain();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      v70 = os_log_type_enabled(v68, v69);
      v71 = v0[18];
      v72 = v0[16];
      if (v70)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v146[0] = v139;
        *v73 = 136315394;
        sub_100545DA0(&qword_100975160, &type metadata accessor for URL);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        v144 = *v141;
        (*v141)(v71, v72);
        v78 = sub_10000C4E4(v75, v77, v146);

        *(v73 + 4) = v78;
        *(v73 + 12) = 2112;
        swift_errorRetain();
        v79 = _swift_stdlib_bridgeErrorToNSError();
        *(v73 + 14) = v79;
        *v74 = v79;
        _os_log_impl(&_mh_execute_header, v68, v69, "processCalendarEvents failed to load data for file: %s with error: %@", v73, 0x16u);
        sub_100005508(v74, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v139);
      }

      else
      {

        v144 = *v141;
        (*v141)(v71, v72);
      }

      v94 = v0[13];
      v95 = v0[14];
      v96 = v0[12];
      v0[6] = v7;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v97 = swift_dynamicCast();
      v98 = *(v95 + 56);
      if (v97)
      {
        v100 = v0[14];
        v99 = v0[15];
        v101 = v0[12];
        v102 = v0[13];
        v98(v101, 0, 1, v102);
        (*(v100 + 32))(v99, v101, v102);
        v103 = type metadata accessor for SFAirDropReceive.Failure();
        sub_100545DA0(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
        swift_allocError();
        v105 = v104;
        (*(v100 + 16))(v104, v99, v102);
        (*(*(v103 - 8) + 104))(v105, enum case for SFAirDropReceive.Failure.unexpected(_:), v103);
        swift_willThrow();

        (*(v100 + 8))(v99, v102);
      }

      else
      {
        v106 = v0[12];
        v98(v106, 1, 1, v0[13]);
        sub_100005508(v106, &qword_10097B310, &qword_1007FE6C8);
        v107 = type metadata accessor for SFAirDropReceive.Failure();
        sub_100545DA0(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
        swift_allocError();
        (*(*(v107 - 8) + 104))(v108, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v107);
        swift_willThrow();
      }

      v110 = v0[29];
      v109 = v0[30];
      v112 = v0[27];
      v111 = v0[28];
      v114 = v0[25];
      v113 = v0[26];
      v115 = v0[24];
      v116 = v0[21];
      v128 = v0[19];
      v131 = v0[18];
      v134 = v0[15];
      v137 = v0[12];
      v144(v0[20], v0[16]);
      sub_100005508(v109, &unk_100974E00, &qword_1007F8940);

      v93 = v0[1];
      goto LABEL_40;
    }

    v55 = v0[20];
    v56 = v0[16];
    v57 = v0[9];
    v58 = v0[10];
    *v146 = (v135 + 1) / v9;
    v57(v146);
    v129(v55, v56);
    v10 = v138 >= v122;
    if (v138 == v122)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v10)
    {
      goto LABEL_44;
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_45;
    }

    v13 = v0[24];
    v14 = v0[25];
    v15 = v0[16];
    v16 = v0[11] + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v7;
    v17 = *(v126 + 48);
    *v13 = v7;
    (*(v120 + 16))(&v13[v17], v16, v15);
    sub_10002C4E4(v13, v14, &qword_10097A3B0, &unk_1007FD5B0);
    v11 = 0;
  }

  v59 = v0[29];
  v60 = v0[16];
  sub_100333278(v0[30], v59);
  v61 = (*v123)(v59, 1, v60);
  v62 = v0[29];
  if (v61 == 1)
  {
    sub_100005508(v0[29], &unk_100974E00, &qword_1007F8940);
    v63 = _swiftEmptyArrayStorage;
  }

  else
  {
    v80 = v0[21];
    v81 = v0[16];
    v82 = *(v120 + 32);
    v82(v80, v0[29], v81);
    sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
    v83 = *(v120 + 72);
    v84 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v63 = swift_allocObject();
    *(v63 + 1) = xmmword_1007F5670;
    v82(v63 + v84, v80, v81);
  }

  v86 = v0[29];
  v85 = v0[30];
  v88 = v0[27];
  v87 = v0[28];
  v90 = v0[25];
  v89 = v0[26];
  v91 = v0[24];
  v130 = v0[21];
  v133 = v0[20];
  v136 = v0[19];
  v140 = v0[18];
  v142 = v0[15];
  v145 = v0[12];
  v92 = v0[8];

  sub_100005508(v85, &unk_100974E00, &qword_1007F8940);
  *v92 = v63;

  v93 = v0[1];
LABEL_40:

  return v93();
}

uint64_t sub_1005454D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100545940@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerCalendarEvents();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100545978(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_100543DC8(a1);
}

uint64_t sub_100545A14(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_100545B18(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x5241444E454C4143;
  v5 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100545C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C00;

  return sub_100544410(a1, a2, a3, v8);
}

unint64_t sub_100545D54()
{
  result = qword_100982B70;
  if (!qword_100982B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100982B70);
  }

  return result;
}

uint64_t sub_100545DA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s12ErrorRequestVMa()
{
  result = qword_100982BD0;
  if (!qword_100982BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100545E5C()
{
  result = type metadata accessor for SFAirDrop.TransferIdentifier();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CodableError();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100545EE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726F727245;
  }

  else
  {
    v4 = 0x726566736E617254;
  }

  if (v3)
  {
    v5 = 0xEA00000000004449;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x726F727245;
  }

  else
  {
    v6 = 0x726566736E617254;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xEA00000000004449;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100545F88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10054600C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10054607C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005460FC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7C10, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10054615C(uint64_t *a1@<X8>)
{
  v2 = 0x726566736E617254;
  if (*v1)
  {
    v2 = 0x726F727245;
  }

  v3 = 0xEA00000000004449;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10054619C()
{
  if (*v0)
  {
    result = 0x726F727245;
  }

  else
  {
    result = 0x726566736E617254;
  }

  *v0;
  return result;
}

uint64_t sub_1005461D8@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008D7C10, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10054623C(uint64_t a1)
{
  v2 = sub_100546BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100546278(uint64_t a1)
{
  v2 = sub_100546BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005462B4()
{
  _StringGuts.grow(_:)(23);

  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100546CBC(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 2108704;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  v2 = *(_s12ErrorRequestVMa() + 20);
  type metadata accessor for CodableError();
  sub_100546CBC(&qword_100982C08, &type metadata accessor for CodableError);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  return 0xD000000000000010;
}

uint64_t sub_100546408(void *a1)
{
  v3 = sub_10028088C(&qword_100982C28, &qword_100809500);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100546BA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100546CBC(&qword_10097F1F0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(_s12ErrorRequestVMa() + 20);
    v11[14] = 1;
    type metadata accessor for CodableError();
    sub_100546CBC(&qword_100982C30, &type metadata accessor for CodableError);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100546608@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = type metadata accessor for CodableError();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v28 = *(v32 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v32);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10028088C(&qword_100982C10, &qword_1008094F8);
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v33);
  v11 = &v24 - v10;
  v12 = _s12ErrorRequestVMa();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100546BA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  v25 = v12;
  v17 = v15;
  v19 = v28;
  v18 = v29;
  v35 = 0;
  sub_100546CBC(&qword_10097F1E0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v20 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v19 + 32);
  v24 = v17;
  v21(v17, v20, v32);
  v34 = 1;
  sub_100546CBC(&qword_100982C20, &type metadata accessor for CodableError);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v31 + 8))(v11, v33);
  v22 = v24;
  (*(v26 + 32))(v24 + *(v25 + 20), v6, v18);
  sub_100546BFC(v22, v27);
  sub_10000C60C(a1);
  return sub_100546C60(v22);
}

unint64_t sub_100546A58(uint64_t a1)
{
  _StringGuts.grow(_:)(23);

  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100546CBC(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 2108704;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  v4 = *(a1 + 20);
  type metadata accessor for CodableError();
  sub_100546CBC(&qword_100982C08, &type metadata accessor for CodableError);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  return 0xD000000000000010;
}

unint64_t sub_100546BA8()
{
  result = qword_100982C18;
  if (!qword_100982C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982C18);
  }

  return result;
}

uint64_t sub_100546BFC(uint64_t a1, uint64_t a2)
{
  v4 = _s12ErrorRequestVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100546C60(uint64_t a1)
{
  v2 = _s12ErrorRequestVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100546CBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100546D18()
{
  result = qword_100982C38;
  if (!qword_100982C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982C38);
  }

  return result;
}

unint64_t sub_100546D70()
{
  result = qword_100982C40;
  if (!qword_100982C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982C40);
  }

  return result;
}

unint64_t sub_100546DC8()
{
  result = qword_100982C48;
  if (!qword_100982C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982C48);
  }

  return result;
}

uint64_t sub_100546E1C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982C50);
  v1 = sub_10000C4AC(v0, qword_100982C50);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100546EE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007F8A70;
  if (qword_1009739F0 != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  *(v4 + 56) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v4 + 64) = &off_10097BE18;
  *(v4 + 96) = &type metadata for SDAuthentication.Operation.MarkCurrentRegistrationIDAsInvalid;
  *(v4 + 104) = &off_10097BBC0;
  *a2 = v4;
  v5 = _s12RegistrationV18InitialLockContextVMa(0);
  *(a2 + v5[6]) = 0;
  *(a2 + v5[7]) = 3;
  if (qword_1009739E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100982C50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Start authentication Lock registration", v9, 2u);
  }

  return sub_100549318(a1, a2 + v5[5], type metadata accessor for SDAuthenticationSessionMetrics);
}

id sub_10054710C(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 24);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10054718C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007FA7E0;
  if (qword_1009739F0 != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  *(v4 + 56) = &type metadata for SDAuthentication.Operation.MarkCurrentRegistrationIDAsInvalid;
  *(v4 + 64) = &off_10097BBC0;
  *(v4 + 96) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v4 + 104) = &off_10097BD58;
  *(v4 + 136) = &type metadata for SDAuthentication.Operation.IncludeAKSTokenInRegistrationResponseMessage;
  *(v4 + 144) = &off_10097BBA8;
  *(v4 + 176) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v4 + 184) = &off_10097BE18;
  *a2 = v4;
  v5 = _s12RegistrationV17InitialKeyContextVMa(0);
  *(a2 + v5[6]) = 0;
  *(a2 + v5[7]) = 4;
  if (qword_1009739E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100982C50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Start authentication Key registration", v9, 2u);
  }

  return sub_100549318(a1, a2 + v5[5], type metadata accessor for SDAuthenticationSessionMetrics);
}

uint64_t sub_1005473BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_1009739F0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepRegisterResponseToken;
  *(v6 + 64) = &off_10097C060;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *a3 = v6;
  v7 = _s12RegistrationV28HandlePairingResponseContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 6;
  if (qword_1009739E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100982C50);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v9;
    *v14 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Handling authentication registration pairing response: %@", v13, 0xCu);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

    a2 = v12;
  }

  v16 = [v9 token];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = (a3 + v7[6]);
    *v21 = v18;
    v21[1] = v20;
    v22 = _s12RegistrationV18InitialLockContextVMa(0);
    sub_100549380(a2 + *(v22 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005493E8(a2, _s12RegistrationV18InitialLockContextVMa);
  }

  else
  {
    v24 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v26 = v25;
    sub_1000115C8();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    swift_willThrow();

    sub_1005493E8(a2, _s12RegistrationV18InitialLockContextVMa);
  }
}