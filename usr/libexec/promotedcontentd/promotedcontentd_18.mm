uint64_t sub_10034DE6C(uint64_t a1)
{
  v2 = sub_100397798();
  v44[0] = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100398FA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 128);
  if (!v9)
  {
LABEL_4:
    if (*(a1 + 144))
    {
      goto LABEL_5;
    }

LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  sub_100398F98();
  v10 = sub_100398F68();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  if (v12 >> 60 == 15)
  {
    v9 = 0;
    goto LABEL_4;
  }

  v47 = v2;
  v21 = objc_opt_self();
  isa = sub_100397538().super.isa;
  *&v49[0] = 0;
  v23 = [v21 JSONObjectWithData:isa options:0 error:v49];

  v24 = *&v49[0];
  if (!v23)
  {
    v38 = v24;
    sub_1003973E8();

    swift_willThrow();
    v39 = v10;
    v40 = v12;
    return sub_1001DDE50(v39, v40);
  }

  sub_100399648();
  sub_1001DDE50(v10, v12);
  swift_unknownObjectRelease();
  sub_10021243C(v50, v49);
  sub_1001E27A8(&qword_1004D5E00);
  if (swift_dynamicCast())
  {
    v9 = v48;
  }

  else
  {
    v9 = 0;
  }

  v2 = v47;
  if (!*(a1 + 144))
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100398F98();
  v13 = sub_100398F68();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  if (v15 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v16 = objc_opt_self();
  v17 = sub_100397538().super.isa;
  *&v50[0] = 0;
  v18 = [v16 JSONObjectWithData:v17 options:0 error:v50];

  if (!v18)
  {
    v41 = *&v50[0];

    sub_1003973E8();

    swift_willThrow();
    v39 = v13;
    v40 = v15;
    return sub_1001DDE50(v39, v40);
  }

  v19 = *&v50[0];
  sub_100399648();
  sub_1001DDE50(v13, v15);
  swift_unknownObjectRelease();
  sub_1001E27A8(&unk_1004DABC0);
  if (swift_dynamicCast())
  {
    v20 = *&v49[0];
  }

  else
  {
    v20 = 0;
  }

LABEL_16:
  [objc_opt_self() metricClass];
  v44[1] = swift_getObjCClassMetadata();
  v47 = *(a1 + 8);
  if (*(a1 + 56))
  {
    v46 = sub_100398F28();
    if (*(a1 + 72))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v46 = 0;
    if (*(a1 + 72))
    {
LABEL_18:
      v45 = sub_100398F28();
      if (*(a1 + 88))
      {
        goto LABEL_23;
      }

LABEL_22:
      sub_100397788();
      sub_100397758();
      (*(v44[0] + 8))(v4, v2);
      goto LABEL_23;
    }
  }

  v45 = 0;
  if (!*(a1 + 88))
  {
    goto LABEL_22;
  }

LABEL_23:

  v25 = sub_100398F28();

  if (*(a1 + 104))
  {
    v26 = sub_100398F28();
    if (*(a1 + 112))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v26 = 0;
    if (*(a1 + 112))
    {
LABEL_25:
      v27.super.isa = sub_100399178().super.isa;
      if (v9)
      {
        goto LABEL_26;
      }

LABEL_30:
      v28.super.isa = 0;
      if (v20)
      {
        goto LABEL_27;
      }

LABEL_31:
      v29.super.isa = 0;
      goto LABEL_32;
    }
  }

  v27.super.isa = 0;
  if (!v9)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_1001E27A8(&unk_1004D5850);
  v28.super.isa = sub_100398E48().super.isa;

  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_27:
  sub_1001E27A8(&unk_1004D4400);
  v29.super.isa = sub_100398E48().super.isa;

LABEL_32:

  v30.super.isa = sub_100399178().super.isa;

  if (*(a1 + 24))
  {
    v31 = 0;
  }

  else
  {
    v31 = *(a1 + 16);
  }

  if (*(a1 + 40))
  {
    v32 = 0;
  }

  else
  {
    v32 = *(a1 + 32);
  }

  v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v42 = v31;
  v43 = v32;
  v34 = v46;
  v35 = v45;
  v36 = [v33 initWithPurpose:v47 metric:*a1 contentIdentifier:v46 contextIdentifier:v45 handle:v25 secondaryHandle:v26 branch:v27.super.isa properties:v28.super.isa internalProperties:v29.super.isa relayData:0 environment:v30.super.isa order:v42 options:v43];

  if (!v36)
  {
    return 0xD000000000000024;
  }

  [objc_msgSend(objc_opt_self() "storage")];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return 0x207363697274654DLL;
}

__n128 sub_10034E564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_10034E590(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10034E5EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_10034E678()
{
  result = qword_1004DB278;
  if (!qword_1004DB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB278);
  }

  return result;
}

uint64_t sub_10034E734(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(&unk_1004D9A20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034E7C4()
{
  result = qword_1004DB2A0;
  if (!qword_1004DB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB2A0);
  }

  return result;
}

unint64_t sub_10034E81C()
{
  result = qword_1004DB2A8;
  if (!qword_1004DB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB2A8);
  }

  return result;
}

unint64_t sub_10034E874()
{
  result = qword_1004DB2B0;
  if (!qword_1004DB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB2B0);
  }

  return result;
}

uint64_t sub_10034E8C8()
{
  v1 = v0;
  sub_100003554(v0 + 16, &v150);
  v130 = type metadata accessor for ObservabilityXPCTimer();
  swift_allocObject();
  v2 = sub_10035E3C0(&v150);
  v129 = type metadata accessor for ObservabilityRegularTimer();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_scheduledTime;
  v5 = sub_100397748();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_dispatchWorkItem) = 0;
  v135 = v3;
  v6 = OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_lock;
  *(v3 + v6) = [objc_allocWithZone(APUnfairLock) initWithOptions:1];
  v7 = type metadata accessor for ObservabilityPeriodicPlanner();
  v8 = swift_allocObject();
  v132 = v2;

  v9 = sub_10034FF94(0, 0, v2, v3, v8);
  *(&v151 + 1) = v7;
  v152 = &off_10047FBB8;
  *&v150 = v9;
  v134 = v9;
  type metadata accessor for QueryingPeriodicScheduler();
  v10 = swift_allocObject();
  v11 = sub_1001F54B4(&v150, v7);
  __chkstk_darwin(v11);
  v13 = (&v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v133 = v10;
  v10[5] = v7;
  v10[6] = &off_10047FBB8;
  v10[2] = v15;
  v10[7] = _swiftEmptyArrayStorage;
  v126 = v10 + 7;

  sub_100003894(&v150);
  v16 = *(v1 + 56);
  v17 = type metadata accessor for ObservabilitySignalDatabase();
  v18 = swift_allocObject();
  sub_100004218(0, &qword_1004D5D30);
  v19 = v16;
  sub_1003995A8();
  sub_100397D38();
  swift_allocObject();
  *(v18 + 16) = sub_100397D28();
  *(&v151 + 1) = v17;
  v152 = &off_10047F758;
  *&v150 = v18;
  v124 = type metadata accessor for ObservabilityCachingSignalStore();
  v20 = swift_allocObject();
  v137 = v20;
  *(v20 + 56) = 0;
  sub_100004A68(&v150, v20 + 16);
  v123 = type metadata accessor for ObservabilityStateStoreDatabase();
  v21 = swift_allocObject();
  v122 = v21;
  v127 = v18;

  sub_1003995A8();
  swift_allocObject();
  *(v21 + 16) = sub_100397D28();
  v22 = [objc_allocWithZone(APSystemClock) init];
  v23 = type metadata accessor for PropertyListFileManagerFileSystem();
  v24 = [objc_allocWithZone(v23) init];
  *(&v151 + 1) = v23;
  v152 = &off_10047F170;
  *&v150 = v24;
  v25 = type metadata accessor for NormalizedScaleFactorPropertyListStore();
  v26 = swift_allocObject();
  v27 = sub_1001F54B4(&v150, v23);
  __chkstk_darwin(v27);
  v29 = (&v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v29;
  v26[5] = v23;
  v26[6] = &off_10047F170;
  v26[2] = v31;
  sub_100003894(&v150);
  *(&v151 + 1) = v25;
  v152 = &off_10047FF00;
  *&v150 = v26;
  v32 = type metadata accessor for LoggingNormalizedScaleFactorStore();
  v33 = swift_allocObject();
  sub_100004A68(&v150, v33 + 16);
  v34 = type metadata accessor for RandomTimeRangeOffset();
  v35 = swift_allocObject();
  *(&v151 + 1) = v32;
  v152 = &off_10047F400;
  *&v150 = v33;
  v148 = v34;
  v149 = &off_10047FA78;
  *&v147 = v35;
  v36 = type metadata accessor for PersistentTimeRangeOffset();
  v37 = swift_allocObject();
  sub_100004A68(&v150, v37 + 16);
  sub_100004A68(&v147, v37 + 56);
  *(&v151 + 1) = v36;
  v152 = &off_10047F250;
  *&v150 = v37;
  v38 = type metadata accessor for LoggingTimeRangeOffset();
  v39 = swift_allocObject();
  sub_100004A68(&v150, v39 + 16);
  *(&v151 + 1) = v38;
  v152 = &off_10047EF68;
  *&v150 = v39;
  v40 = type metadata accessor for CachingTimeRangeOffset();
  v125 = v40;
  v41 = swift_allocObject();
  *(v41 + 56) = 0;
  *(v41 + 60) = 1;
  v42 = v41;
  sub_100004A68(&v150, v41 + 16);
  *(&v151 + 1) = v40;
  v152 = &off_10047F260;
  *&v150 = v42;
  v131 = v42;
  v116 = type metadata accessor for OffsetTimeRangeReferenceFrame();
  v136 = swift_allocObject();
  sub_100004A68(&v150, v136 + 16);
  v128 = v37;

  v43 = sub_10035048C();
  v120 = v44;
  v121 = v43;
  v118 = v46;
  v119 = v45;
  v47 = type metadata accessor for ObservabilityErrorBucketConfigSystemJSONSource();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(&v151 + 1) = v47;
  v49 = sub_100350930(&qword_1004DB3B0, type metadata accessor for ObservabilityErrorBucketConfigSystemJSONSource);
  v152 = v49;
  *&v150 = v48;
  v50 = type metadata accessor for DefaultObservabilityClientErrorBucketConfigurationStore();
  v51 = swift_allocObject();
  v148 = v50;
  v113 = sub_100350930(&qword_1004DB3B8, type metadata accessor for DefaultObservabilityClientErrorBucketConfigurationStore);
  v149 = v113;
  *&v147 = v51;
  v52 = sub_100398058();
  swift_allocObject();
  v117 = v22;
  v53 = sub_100398048();
  *(&v151 + 1) = v52;
  v152 = &protocol witness table for JSONIntBucketConfigurationStore;
  *&v150 = v53;
  v54 = sub_100398038();
  swift_allocObject();
  v115 = sub_100398018();
  v55 = swift_allocObject();
  *(v55 + 16) = 1;
  *(&v151 + 1) = v47;
  v152 = v49;
  *&v150 = v55;
  v56 = type metadata accessor for DefaultObservabilityServerErrorBucketConfigurationStore();
  v57 = swift_allocObject();
  v148 = v56;
  v58 = sub_100350930(&qword_1004DB3C0, type metadata accessor for DefaultObservabilityServerErrorBucketConfigurationStore);
  v149 = v58;
  *&v147 = v57;
  swift_allocObject();
  v59 = sub_100398048();
  *(&v151 + 1) = v52;
  v152 = &protocol witness table for JSONIntBucketConfigurationStore;
  *&v150 = v59;
  swift_allocObject();
  v114 = sub_100398018();
  v60 = swift_allocObject();
  *(v60 + 16) = 2;
  *(&v151 + 1) = v47;
  v152 = v49;
  *&v150 = v60;
  v61 = swift_allocObject();
  v148 = v50;
  v149 = v113;
  *&v147 = v61;
  swift_allocObject();
  v62 = sub_100398048();
  *(&v151 + 1) = v52;
  v152 = &protocol witness table for JSONIntBucketConfigurationStore;
  *&v150 = v62;
  swift_allocObject();
  v63 = sub_100398018();
  v64 = swift_allocObject();
  *(v64 + 16) = 3;
  *(&v151 + 1) = v47;
  v152 = v49;
  *&v150 = v64;
  v65 = swift_allocObject();
  v148 = v56;
  v149 = v58;
  *&v147 = v65;
  swift_allocObject();
  v66 = sub_100398048();
  *(&v151 + 1) = v52;
  v152 = &protocol witness table for JSONIntBucketConfigurationStore;
  *&v150 = v66;
  swift_allocObject();
  v67 = sub_100398018();
  v68 = [objc_allocWithZone(type metadata accessor for ECPrimitiveCreator()) init];
  v69 = type metadata accessor for ECPrimitiveEventSink();
  v70 = swift_allocObject();
  *(v70 + 16) = v68;
  *(&v151 + 1) = v54;
  v152 = &protocol witness table for ConfigurableIntBucketStrategy;
  *&v150 = v115;
  v148 = v54;
  v149 = &protocol witness table for ConfigurableIntBucketStrategy;
  *&v147 = v114;
  *(&v139 + 1) = v54;
  *&v140 = &protocol witness table for ConfigurableIntBucketStrategy;
  *&v138 = v63;
  v168 = v54;
  v169 = &protocol witness table for ConfigurableIntBucketStrategy;
  v167[0] = v67;
  v166[3] = v69;
  v166[4] = &off_10047FDF8;
  v166[0] = v70;
  v71 = v116;
  v164 = v116;
  v165 = &off_10047F788;
  v163[0] = v136;
  v72 = v123;
  v162[3] = v124;
  v162[4] = &off_10047F298;
  v162[0] = v137;
  v161 = &off_10047FA20;
  v160 = v123;
  v73 = v122;
  v159[0] = v122;
  type metadata accessor for ObservabilityProductionWorkerFactory();
  v74 = swift_allocObject();
  v75 = sub_1001F54B4(v166, v69);
  __chkstk_darwin(v75);
  v77 = (&v112 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  v79 = sub_1001F54B4(v163, v164);
  __chkstk_darwin(v79);
  v81 = (&v112 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v82 + 16))(v81);
  v83 = sub_1001F54B4(v159, v160);
  __chkstk_darwin(v83);
  v85 = (&v112 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v86 + 16))(v85);
  v87 = *v77;
  v88 = *v81;
  v89 = *v85;
  v158[4] = &off_10047FDF8;
  v158[3] = v69;
  v158[0] = v87;
  v157[4] = &off_10047F788;
  v90 = v132;
  v157[3] = v71;
  v157[0] = v88;
  v156[4] = &off_10047FA20;
  v156[3] = v72;
  v156[0] = v89;
  v91 = v118;
  v74[2] = v119;
  v74[3] = v91;
  v92 = v117;
  v74[4] = v117;
  sub_100003554(&v150, (v74 + 5));
  sub_100003554(&v147, (v74 + 10));
  v93 = v120;
  v74[15] = v121;
  v74[16] = v93;
  sub_100003554(&v138, (v74 + 17));
  sub_100003554(v167, (v74 + 22));
  sub_100003554(v158, (v74 + 27));
  sub_100003554(v157, (v74 + 32));
  sub_100003554(v162, (v74 + 37));
  sub_100003554(v156, (v74 + 42));
  v94 = v136;

  v95 = v137;

  sub_100366244();
  sub_100003894(v162);
  sub_100003894(v167);
  sub_100003894(&v138);
  sub_100003894(&v147);
  sub_100003894(&v150);
  sub_100003894(v156);
  sub_100003894(v157);
  sub_100003894(v158);
  sub_100003894(v159);
  sub_100003894(v163);
  sub_100003894(v166);
  v96 = v92;

  v97 = sub_10034FB50(v96, v95, v94, v74);
  sub_1001E27A8(&qword_1004DB3C8);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1003C9930;
  *(v98 + 56) = type metadata accessor for ObservabilityWorkSource();
  *(v98 + 64) = &off_10047F1A8;
  *(v98 + 32) = v97;
  swift_beginAccess();

  v99 = v73;
  sub_100353F98(v98);
  swift_endAccess();
  v100 = v133;
  v134[3] = &off_10047F840;
  swift_unknownObjectWeakAssign();
  v101 = v96;

  v126 = v101;
  v102 = sub_10034FD74(v101, v100, v95, v73);
  v148 = v125;
  v149 = &off_10047F260;
  *&v147 = v131;
  *&v140 = &off_10047FE28;
  *(&v139 + 1) = v130;
  *&v138 = v90;
  v168 = v129;
  v169 = &off_10047F798;
  v167[0] = v135;
  v103 = objc_opt_self();

  if ([v103 isAppleInternalInstall])
  {
    sub_100003554(&v147, &v150);
    sub_100003554(&v138, v155);
    sub_100003554(v167, &v155[40]);
    v104 = v127;
  }

  else
  {
    v99 = 0;
    v104 = 0;
    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    memset(v155, 0, 80);
  }

  v153 = v99;
  v154 = v104;
  sub_100003894(v167);
  sub_100003894(&v138);
  sub_100003894(&v147);
  sub_1003506B0(&v150, &v147);
  type metadata accessor for ObservabilityManager();
  v105 = swift_allocObject();
  *(v105 + 40) = 0u;
  *(v105 + 56) = 0u;
  *(v105 + 72) = 0u;
  *(v105 + 88) = 0u;
  *(v105 + 104) = 0u;
  *(v105 + 120) = 0u;
  *(v105 + 136) = 0u;
  *(v105 + 152) = 0;
  *(v105 + 24) = 0u;
  *(v105 + 16) = v102;
  swift_beginAccess();

  sub_100350720(&v147, v105 + 24);
  swift_endAccess();
  [objc_opt_self() setSignalMonitor:v102];
  if ([v103 isAppleInternalInstall])
  {
    sub_1003506B0(&v150, &v147);
    if (v148)
    {
      sub_100350864(&v147, &v138);
      v106 = swift_allocObject();
      v107 = v145;
      *(v106 + 112) = v144;
      *(v106 + 128) = v107;
      *(v106 + 144) = v146;
      v108 = v141;
      *(v106 + 48) = v140;
      *(v106 + 64) = v108;
      v109 = v143;
      *(v106 + 80) = v142;
      *(v106 + 96) = v109;
      v110 = v139;
      *(v106 + 16) = v138;
      *(v106 + 32) = v110;
      type metadata accessor for ObservabilityStateDumper.ObservabilityStateDumperParams(0);
      sub_100350930(&qword_1004DB3E0, type metadata accessor for ObservabilityStateDumper.ObservabilityStateDumperParams);
      sub_100397DC8();

      sub_1003508DC(&v147);
    }

    else
    {
      sub_100350790(&v147);
    }

    sub_100350810();
    sub_100397DC8();

    sub_100350790(&v150);
  }

  else
  {
    sub_100350790(&v150);
  }

  return v105;
}

void *sub_10034FB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = type metadata accessor for ObservabilityCachingSignalStore();
  v29 = &off_10047F298;
  *&v27 = a2;
  v8 = type metadata accessor for OffsetTimeRangeReferenceFrame();
  v26[3] = v8;
  v26[4] = &off_10047F788;
  v26[0] = a3;
  v9 = type metadata accessor for ObservabilityProductionWorkerFactory();
  v24 = v9;
  v25 = &off_100480268;
  v23[0] = a4;
  type metadata accessor for ObservabilityWorkSource();
  v10 = swift_allocObject();
  v11 = sub_1001F54B4(v26, v8);
  __chkstk_darwin(v11);
  v13 = (&v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1001F54B4(v23, v24);
  __chkstk_darwin(v15);
  v17 = (&v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v10[11] = v8;
  v10[12] = &off_10047F788;
  v10[8] = v19;
  v10[16] = v9;
  v10[17] = &off_100480268;
  v10[13] = v20;
  v10[2] = a1;
  sub_100004A68(&v27, (v10 + 3));
  sub_100003894(v23);
  sub_100003894(v26);
  return v10;
}

void *sub_10034FD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for QueryingPeriodicScheduler();
  v29[3] = v8;
  v29[4] = &off_10047F850;
  v29[0] = a2;
  v27 = type metadata accessor for ObservabilityCachingSignalStore();
  v28 = &off_10047F298;
  *&v26 = a3;
  v9 = type metadata accessor for ObservabilityStateStoreDatabase();
  v24 = v9;
  v25 = &off_10047FA20;
  v23[0] = a4;
  type metadata accessor for ObservabilitySignalMonitor();
  v10 = swift_allocObject();
  v11 = sub_1001F54B4(v29, v8);
  __chkstk_darwin(v11);
  v13 = (&v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1001F54B4(v23, v24);
  __chkstk_darwin(v15);
  v17 = (&v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v10[6] = v8;
  v10[7] = &off_10047F850;
  v10[16] = v9;
  v10[17] = &off_10047FA20;
  v10[13] = v20;
  v10[2] = a1;
  v10[3] = v19;
  sub_100004A68(&v26, (v10 + 8));
  sub_100003894(v23);
  sub_100003894(v29);
  return v10;
}

void *sub_10034FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = a2;
  v25 = a1;
  v8 = sub_100399468();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100399438();
  __chkstk_darwin(v12);
  v13 = sub_100398DD8();
  __chkstk_darwin(v13 - 8);
  v28[3] = type metadata accessor for ObservabilityXPCTimer();
  v28[4] = &off_10047FE28;
  v28[0] = a3;
  v27[3] = type metadata accessor for ObservabilityRegularTimer();
  v27[4] = &off_10047F798;
  v27[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  sub_100004218(0, &qword_1004D40C0);
  sub_100398DC8();
  v26 = _swiftEmptyArrayStorage;
  sub_100350930(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_1001E54D4();
  sub_100399658();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  a5[14] = sub_100399488();
  a5[3] = v24;
  swift_unknownObjectWeakAssign();
  sub_100003554(v28, (a5 + 4));
  sub_100003554(v27, (a5 + 9));
  swift_beginAccess();
  v14 = a5[7];
  v15 = a5[8];
  sub_1001F54B4((a5 + 4), v14);
  v16 = *(v15 + 16);

  v16(v17, &off_10047FBA8, v14, v15);
  swift_endAccess();
  swift_beginAccess();
  v18 = a5[12];
  v19 = a5[13];
  sub_1001F54B4((a5 + 9), v18);
  v20 = *(v19 + 16);

  v20(v21, &off_10047FBA8, v18, v19);
  swift_endAccess();
  sub_100350994();

  sub_100397DC8();

  sub_100003894(v27);
  sub_100003894(v28);
  return a5;
}

uint64_t sub_10035037C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16) && (v4 = sub_1001EC1DC(0x6E6F6973726576, 0xE700000000000000), (v5 & 1) != 0) && (sub_1000038F4(*(a1 + 56) + 32 * v4, v10), swift_dynamicCast()) && *(a1 + 16) && (v6 = sub_1001EC1DC(0x7374656B637562, 0xE700000000000000), (v7 & 1) != 0) && (sub_1000038F4(*(a1 + 56) + 32 * v6, v10), sub_1001E27A8(a2), swift_dynamicCast()))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10035048C()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D4CF0);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && (v3 = v2, v4 = [v2 createdToBufferedTimeHistogram], v5 = sub_100398E68(), v4, v6 = sub_10023D684(v5), , v6) && (v7 = sub_10035037C(v6, &qword_1004D5BD0), v9 = v8, , v9))
  {
    v10 = [v3 bufferedTimeHistogram];
    v11 = sub_100398E68();

    v12 = sub_10023D684(v11);

    if (v12)
    {
      sub_10035037C(v12, &qword_1004DB3E8);
      v14 = v13;

      swift_unknownObjectRelease();
      if (v14)
      {
        return v7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v16 = sub_100398F28();
  APSimulateCrash();

  return 0;
}

uint64_t sub_1003506B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DB3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100350720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DB3D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100350790(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DB3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100350810()
{
  result = qword_1004DB3D8;
  if (!qword_1004DB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB3D8);
  }

  return result;
}

uint64_t sub_100350930(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100350994()
{
  result = qword_1004DB3F0;
  if (!qword_1004DB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB3F0);
  }

  return result;
}

uint64_t sub_1003509E8(unsigned __int8 a1)
{
  sub_1001E27A8(&unk_1004DCD00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1003C9930;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = a1;
  sub_100397748();
  sub_100397CF8();
}

uint64_t sub_100350B48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  v3 = COERCE_DOUBLE(sub_100397BB8());
  if ((v4 & 1) != 0 || v3 <= 0.0)
  {
    v5 = 1;
  }

  else
  {
    sub_1003976D8();
    v5 = 0;
  }

  v6 = sub_100397748();
  return (*(*(v6 - 8) + 56))(a2, v5, 1, v6);
}

uint64_t sub_100350C04()
{
  sub_10034BD78(_swiftEmptyArrayStorage);
  sub_1001E27A8(&qword_1004DB4D0);
  sub_100397CE8();

  return v1;
}

uint64_t sub_100350CD4(uint64_t a1, void *a2)
{
  v14[1] = a1;
  v4 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100397748();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a2, a2[3]);
  result = sub_100397BC8();
  if (!v2)
  {
    sub_1003976D8();
    sub_1000035B8(a2, a2[3]);
    v12 = sub_100397BE8();
    v13 = sub_100362378(v12);
    (*(v8 + 16))(v6, v10, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_10035914C(v6, v13);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_100350F68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v27 = sub_100397318();
  v2 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100397918();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_100397748();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E27A8(&qword_1004D9A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9260;
  sub_1003976E8();
  *(inited + 56) = &type metadata for Double;
  *(inited + 64) = &protocol witness table for Double;
  *(inited + 32) = v16;
  sub_100397868();
  type metadata accessor for TimeRange();
  sub_10000BE6C();
  sub_1003978C8();
  (*(v2 + 8))(v4, v27);
  (*(v5 + 8))(v7, v26);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_1003976E8();
    v19 = v18;
    (*(v12 + 8))(v14, v11);
    *(inited + 96) = &type metadata for Double;
    *(inited + 104) = &protocol witness table for Double;
    *(inited + 72) = v19;
    v20 = v24;
    *(inited + 136) = &type metadata for Int;
    *(inited + 144) = &protocol witness table for Int;
    *(inited + 112) = v20;
    sub_10028037C(inited);

    type metadata accessor for ObservabilitySignal();
    sub_100397D08();

    if (v33)
    {
      sub_100003554(&v31, &v28);
    }

    else
    {
      v28 = v31;
      v29 = v32;
      v30 = v34;
    }

    if (*(&v29 + 1))
    {
      if (v33)
      {
        sub_100003894(&v31);
      }

      return sub_100004A68(&v28, v25);
    }

    else
    {
      v21 = sub_1001E27A8(&qword_1004DB4C0);
      v22 = v25;
      v25[3] = v21;
      result = sub_100351CB4();
      v22[4] = result;
      *v22 = _swiftEmptyArrayStorage;
      if (v33)
      {
        result = sub_100003894(&v31);
        if (*(&v29 + 1))
        {
          return sub_100003894(&v28);
        }
      }
    }
  }

  return result;
}

void *sub_100351474(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100367AE8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1001E27A8(&qword_1004DB4D8);
      sub_1001E27A8(&qword_1004DB4E0);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100367AE8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100004A68(&v8, &v2[5 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1003515A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100367B88(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1001E27A8(&qword_1004DB4E8);
      sub_1001E27A8(&qword_1004DCD60);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100367B88((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100004A68(&v8, &v2[5 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1003516DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100003554(a1, v6);
  sub_100354AA8(a2);
  result = sub_100351D18(v6);
  if (!v2)
  {
    v5 = type metadata accessor for ObservabilitySignal();
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  return result;
}

void sub_10035177C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v25 = sub_100397318();
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100397918();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_100397748();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E27A8(&qword_1004D9A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9260;
  sub_1003976E8();
  *(inited + 32) = v15;
  *(inited + 56) = &type metadata for Double;
  *(inited + 64) = &protocol witness table for Double;
  sub_100397868();
  type metadata accessor for TimeRange();
  sub_10000BE6C();
  sub_1003978C8();
  (*(v24 + 8))(v3, v25);
  (*(v4 + 8))(v6, v23);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1003976E8();
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    *(inited + 96) = &type metadata for Double;
    *(inited + 104) = &protocol witness table for Double;
    *(inited + 72) = v17;
    v18 = v22;
    *(inited + 136) = &type metadata for Int;
    *(inited + 144) = &protocol witness table for Int;
    *(inited + 112) = v18;
    sub_10028037C(inited);
    swift_setDeallocating();
    sub_1001E27A8(&unk_1004D9A30);
    swift_arrayDestroy();
    v19 = sub_100397CD8();

    if ((v19 & 1) == 0)
    {
      sub_1003993E8();
      sub_100206B54();
      v20 = sub_1003995A8();
      sub_100398B98();
    }
  }
}

unint64_t sub_100351CB4()
{
  result = qword_1004DB4C8;
  if (!qword_1004DB4C8)
  {
    sub_1001E27F0(&qword_1004DB4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB4C8);
  }

  return result;
}

uint64_t sub_100351DB4(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DB668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100351E1C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v11 = &_swiftEmptySetSingleton;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = sub_100349DD4(v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))), *(*(v1 + 56) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v11;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100351F30()
{
  v1 = v0;
  v2 = v0[6];
  sub_1000035B8(v1 + 2, v1[5]);
  v3 = sub_100397E18();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[7];
  v18 = v1[7];
  v1[7] = 0x8000000000000000;
  v6 = sub_10034375C(v3);
  v8 = v5[2];
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v2) = v7;
  if (v5[3] < v11)
  {
    sub_10034AD98(v11, isUniquelyReferenced_nonNull_native);
    v5 = v18;
    v6 = sub_10034375C(v3);
    if ((v2 & 1) == (v12 & 1))
    {
      goto LABEL_6;
    }

    v6 = sub_100399A98();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1[7] = v5;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v1 = v6;
  sub_100359E84(v6, v3, 0, v5);
  v6 = v1;
LABEL_8:
  while (1)
  {
    v13 = v5[7];
    v14 = *(v13 + 8 * v6);
    v10 = __OFADD__(v14, 1);
    v15 = v14 + 1;
    if (!v10)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v17 = v6;
    sub_10034B604();
    v6 = v17;
    v5 = v18;
    v1[7] = v18;
    if ((v2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v13 + 8 * v6) = v15;
  return swift_endAccess();
}

id sub_1003520BC(uint64_t a1)
{
  v41 = a1;
  v2 = sub_100397748();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v39 - v7;
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = sub_1001E27A8(&qword_1004D4CE0);
  v12 = __chkstk_darwin(v11 - 8);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - v15;
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v42 = OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_lock;
  [*(v1 + OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_lock) lock];
  v19 = OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_scheduledTime;
  swift_beginAccess();
  v43 = v1;
  sub_1001E2838(v1 + v19, v18);
  sub_1001E2838(v18, v16);
  v20 = *(v3 + 48);
  if (v20(v16, 1, v2) == 1)
  {
    sub_1001E28A8(v18);
    sub_1001E28A8(v16);
    v21 = v41;
  }

  else
  {
    (*(v3 + 32))(v10, v16, v2);
    v21 = v41;
    v22 = sub_1003976A8();
    (*(v3 + 8))(v10, v2);
    sub_1001E28A8(v18);
    if ((v22 & 1) == 0)
    {
      return [*(v43 + v42) unlock];
    }
  }

  sub_100397738();
  v23 = sub_100397698();
  v24 = *(v3 + 8);
  v24(v8, v2);
  if (v23)
  {
    v25 = v43 + v19;
    v26 = v43;
    v27 = v40;
    sub_1001E2838(v25, v40);
    if (v20(v27, 1, v2) == 1)
    {
      sub_1001E28A8(v27);
LABEL_12:
      sub_100352628(v21);
      return [*(v43 + v42) unlock];
    }

    v33 = v39;
    (*(v3 + 32))(v39, v27, v2);
    if (!*(v26 + OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_dispatchWorkItem))
    {
      v24(v33, v2);
      goto LABEL_12;
    }

    v34 = v2;

    if (sub_1003976A8())
    {
      sub_1003993D8();
      sub_100004218(0, &qword_1004D5D30);
      v35 = v33;
      v36 = v21;
      v37 = sub_1003995A8();
      sub_100398B98();

      sub_100398E18();
      sub_100352628(v36);

      v24(v35, v34);
    }

    else
    {
      v24(v33, v2);
    }
  }

  else
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v28 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1003C9930;
    v30 = sub_100397618();
    v32 = v31;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100206BA0();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    sub_100398B98();
  }

  return [*(v43 + v42) unlock];
}

uint64_t sub_100352628(uint64_t a1)
{
  v37 = a1;
  v1 = sub_100398DF8();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = __chkstk_darwin(v1);
  v48 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v47 = &v37 - v4;
  v46 = sub_100398DA8();
  __chkstk_darwin(v46);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100397748();
  v6 = *(v41 - 8);
  v43 = *(v6 + 64);
  __chkstk_darwin(v41);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v8 - 8);
  v40 = &v37 - v9;
  v39 = sub_100399468();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100399438();
  __chkstk_darwin(v12);
  v13 = sub_100398DD8();
  __chkstk_darwin(v13 - 8);
  sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v14 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003C9930;
  v16 = sub_100397658();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100206BA0();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_100398B98();

  sub_100004218(0, &qword_1004D40C0);
  sub_100398DC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000042F0(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_100004380(&qword_1004D40D8, &qword_1004D40D0);
  sub_100399658();
  (*(v38 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v39);
  v19 = sub_100399488();
  v20 = v37;
  sub_1003976C8();
  v21 = *(v6 + 16);
  v23 = v40;
  v22 = v41;
  v21(v40, v20, v41);
  (*(v6 + 56))(v23, 0, 1, v22);
  v24 = OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_scheduledTime;
  v25 = v44;
  swift_beginAccess();
  sub_1001E2910(v23, v25 + v24);
  swift_endAccess();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v42;
  v21(v42, v20, v22);
  v28 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  (*(v6 + 32))(v29 + v28, v27, v22);
  aBlock[4] = sub_1003533D4;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001F77E8;
  aBlock[3] = &unk_10047F818;
  _Block_copy(aBlock);
  v51 = _swiftEmptyArrayStorage;
  sub_1000042F0(&qword_1004D40A0, &type metadata accessor for DispatchWorkItemFlags);

  sub_1001E27A8(&unk_1004DC400);
  sub_100004380(&qword_1004D40B0, &unk_1004DC400);
  sub_100399658();
  sub_100398E28();
  swift_allocObject();
  v30 = sub_100398E08();

  v31 = v48;
  sub_100398DE8();
  v32 = v47;
  sub_100398E38();
  v33 = *(v49 + 8);
  v34 = v31;
  v35 = v50;
  v33(v34, v50);
  sub_100399458();

  v33(v32, v35);
  *(v25 + OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_dispatchWorkItem) = v30;
}

uint64_t sub_100352E38()
{
  v0 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_lock);

    [v4 lock];
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_dispatchWorkItem) = 0;
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = sub_100397748();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    v9 = OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_scheduledTime;
    swift_beginAccess();
    sub_1001E2910(v2, v7 + v9);
    swift_endAccess();
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_lock);

    [v11 unlock];
  }

  sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v12 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003C9930;
  v14 = sub_100397658();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100206BA0();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_100398B98();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = swift_unknownObjectWeakLoadStrong();

    if (v18)
    {
      sub_10035D0A8(v18);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100353178()
{
  sub_1001F6D68(v0 + 16);
  sub_1001E28A8(v0 + OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_scheduledTime);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ObservabilityRegularTimer()
{
  result = qword_1004DB778;
  if (!qword_1004DB778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100353258()
{
  sub_1001E2664();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10035330C(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100353354@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7Metrics25ObservabilityRegularTimer_scheduledTime;
  swift_beginAccess();
  return sub_1001E2838(v3 + v4, a1);
}

uint64_t sub_1003533D4()
{
  sub_100397748();

  return sub_100352E38();
}

uint64_t type metadata accessor for SigningFailure()
{
  result = qword_1004DB8E0;
  if (!qword_1004DB8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003534AC()
{
  result = sub_100397748();
  if (v1 <= 0x3F)
  {
    result = sub_1003980E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003535A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100354004(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1003536DC(void *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = result[2];
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= v6[3] >> 1)
  {
    if (v12[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v16 = v7 + v5;
  }

  else
  {
    v16 = v7;
  }

  result = sub_100354460(result, v16, 1, v6, a2, a3, a4);
  v6 = result;
  if (!v12[2])
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1001E27A8(a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v13 = v6[2];
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    v6[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100353848(uint64_t a1)
{
  v3 = type metadata accessor for TimeRange();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004DB668);
  v8 = __chkstk_darwin(v7 - 8);
  v9 = __chkstk_darwin(v8);
  v48 = &v42 - v10;
  result = __chkstk_darwin(v9);
  v14 = &v42 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v51 = v12;
  v49 = v6;
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_10000CA04(isUniquelyReferenced_nonNull_native, v21, 1, v16, &qword_1004DB660, &unk_1003F1EA0, type metadata accessor for TimeRange);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1003545A8(&v52, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v24 = v16[2];
    v25 = __OFADD__(v24, result);
    v26 = v24 + result;
    if (v25)
    {
      __break(1u);
LABEL_26:
      v42 = v4 + 56;
      v30 = v48;
      do
      {
        sub_1001ED244(v30, &qword_1004DB668);
        v32 = v16[3];
        v33 = v32 >> 1;
        if ((v32 >> 1) < v47 + 1)
        {
          v16 = sub_10000CA04(v32 > 1, v47 + 1, 1, v16, &qword_1004DB660, &unk_1003F1EA0, type metadata accessor for TimeRange);
          v33 = v16[3] >> 1;
        }

        v34 = v51;
        sub_10000ADB4(v14, v51, &qword_1004DB668);
        if (v45(v34, 1, a1) != 1)
        {
          v31 = v47;
          if (v47 <= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v47;
          }

          v44 = v35;
          v36 = v16 + v18 + v17 * v47;
          v4 = v51;
          while (1)
          {
            v37 = v49;
            sub_10000D06C(v4, v49, type metadata accessor for TimeRange);
            if (v44 == v31)
            {
              sub_10000D00C(v37, type metadata accessor for TimeRange);
              v31 = v44;
              v47 = v44;
              goto LABEL_28;
            }

            sub_1001ED244(v14, &qword_1004DB668);
            sub_10000D06C(v37, v36, type metadata accessor for TimeRange);
            v47 = v31;
            if (v46)
            {
              v38 = v46 - 1;
              if (v46 - 1 >= *(v52 + 16))
              {
                __break(1u);
LABEL_46:
                a1 = v50;
                v43 = *(v6 + 7);
                v43(v14, 1, 1, v50);
                v46 = 0;
LABEL_22:
                v28 = v48;
                sub_10000ADB4(v14, v48, &qword_1004DB668);
                v29 = *(v6 + 6);
                v6 += 48;
                v45 = v29;
                if (v29(v28, 1, a1) == 1)
                {
                  v30 = v48;
                  goto LABEL_24;
                }

                goto LABEL_26;
              }

              --v46;
              sub_10000CFA4(v52 + v18 + v38 * v17, v14, type metadata accessor for TimeRange);
              v39 = 0;
            }

            else
            {
              v46 = 0;
              v39 = 1;
            }

            v40 = v50;
            v43(v14, v39, 1, v50);
            v4 = v51;
            sub_10000ADB4(v14, v51, &qword_1004DB668);
            v41 = v45(v4, 1, v40);
            v36 += v17;
            v31 = v47 + 1;
            if (v41 == 1)
            {
              goto LABEL_33;
            }
          }
        }

        v4 = v51;
        v31 = v47;
LABEL_33:
        v47 = v31;
        sub_1001ED244(v4, &qword_1004DB668);
LABEL_28:
        v16[2] = v31;
        v30 = v48;
        sub_10000ADB4(v14, v48, &qword_1004DB668);
        a1 = v50;
      }

      while ((v45)(v30, 1) != 1);
LABEL_24:
      sub_1001ED244(v14, &qword_1004DB668);

      result = sub_1001ED244(v30, &qword_1004DB668);
      goto LABEL_14;
    }

    v16[2] = v26;
  }

  if (result != v23)
  {

LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v47 = v16[2];
  if (!v53)
  {
    goto LABEL_46;
  }

  v27 = v53 - 1;
  a1 = v50;
  if (__OFSUB__(v53, 1))
  {
    __break(1u);
  }

  else if ((v27 & 0x8000000000000000) == 0)
  {
    if (v27 < *(v52 + 16))
    {
      v46 = v53 - 1;
      sub_10000CFA4(v52 + v18 + v27 * v17, v14, type metadata accessor for TimeRange);
      v43 = *(v6 + 7);
      v43(v14, 0, 1, a1);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_100353EAC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100354360(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100353FE0()
{
  result = sub_100399378();
  qword_1004DB920 = v1;
  return result;
}

char *sub_100354004(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&unk_1004DCD10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100354218(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1001E27A8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 48);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[6 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 48 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001E27A8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_100354360(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&qword_1004DBA10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_100354460(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1001E27A8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001E27A8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_1003545A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      while (v6 + v9 <= *(a4 + 16))
      {
        v10 = *(type metadata accessor for TimeRange() - 8);
        v11 = *(v10 + 72);
        result = sub_10000CFA4(a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * (v6 + v9 - 1), v8, type metadata accessor for TimeRange);
        if (a3 + v9 == 1)
        {
          v12 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += v11;
        --v9;
        if (!(v6 + v9))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    v12 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_100354724()
{
  result = qword_1004DBAD0;
  if (!qword_1004DBAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DBAD0);
  }

  return result;
}

unint64_t sub_100354778()
{
  v1 = objc_opt_self();
  sub_10035488C();
  v2 = [v1 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 *off_10047F8F0[*(v0 + 16)]];
    v5 = sub_100398E68();

    v6 = sub_10023D684(v5);
  }

  else
  {
    v6 = 0;
  }

  swift_unknownObjectRelease();
  return v6;
}

unint64_t sub_10035488C()
{
  result = qword_1004D4CF0;
  if (!qword_1004D4CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D4CF0);
  }

  return result;
}

uint64_t sub_1003548D8()
{
  result = sub_100397748();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10035494C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1003976F8())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1003549A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D64E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100354A3C()
{
  result = type metadata accessor for ObservabilitySignal();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100354AA8@<X0>(uint64_t *a1@<X8>)
{
  v83 = a1;
  v2 = sub_1001E27A8(&qword_1004DABD8);
  __chkstk_darwin(v2 - 8);
  v85 = &v69 - v3;
  v82 = sub_100397AA8();
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BatchID();
  v84 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v69 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v69 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v69 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v69 - v18;
  __chkstk_darwin(v17);
  v21 = &v69 - v20;
  sub_1000035B8(v1, v1[3]);
  v22 = v86;
  result = sub_100397BE8();
  if (v22)
  {
    return result;
  }

  v78 = v16;
  v86 = v13;
  v24 = v10;
  v25 = v84;
  v26 = v85;
  v27 = sub_100362474(result);
  if (v27 <= 3u)
  {
    if (v27 <= 1u)
    {
      if (v27)
      {
        sub_1000035B8(v1, v1[3]);
        v57 = sub_100397BA8();
        sub_100362154(v57, v58, v21);
        sub_1000035B8(v1, v1[3]);
        sub_100397BC8();
        v62 = v83;
        *v83 = v63;
        sub_1000035B8(v1, v1[3]);
        v64 = sub_100397BE8();
        v65 = *(sub_1001E27A8(&qword_1004DABE8) + 64);
        v62[1] = v64;
        sub_100345B28(v21, v62 + v65);
        type metadata accessor for ObservabilitySignal();
        return swift_storeEnumTagMultiPayload();
      }

      sub_1000035B8(v1, v1[3]);
      sub_100397BC8();
      v30 = v29;
      sub_1000035B8(v1, v1[3]);
      v31 = sub_100397BE8();
      v32 = v83;
      *v83 = v30;
      v32[1] = v31;
      type metadata accessor for ObservabilitySignal();
      return swift_storeEnumTagMultiPayload();
    }

    if (v27 == 2)
    {
      sub_1000035B8(v1, v1[3]);
      *v83 = sub_100397BE8();
    }

    else
    {
      sub_1000035B8(v1, v1[3]);
      v59 = sub_100397BA8();
      sub_100362154(v59, v60, v19);
      sub_100345B28(v19, v83);
    }

    goto LABEL_14;
  }

  if (v27 <= 5u)
  {
    v33 = v83;
    if (v27 == 4)
    {
      sub_1000035B8(v1, v1[3]);
      sub_100397BC8();
      sub_1003976D8();
    }

    else
    {
      sub_1000035B8(v1, v1[3]);
      sub_100397BC8();
      *v33 = v61;
    }

LABEL_14:
    type metadata accessor for ObservabilitySignal();
    return swift_storeEnumTagMultiPayload();
  }

  v28 = v83;
  if (v27 != 6)
  {
    if (v27 == 7)
    {
      type metadata accessor for ObservabilitySignal();
      return swift_storeEnumTagMultiPayload();
    }

    sub_1000035B8(v1, v1[3]);
    *v28 = sub_100397BE8();
    type metadata accessor for ObservabilitySignal();
    return swift_storeEnumTagMultiPayload();
  }

  sub_1000035B8(v1, v1[3]);
  v34 = sub_100397BE8();
  v75 = sub_100362570(v34);
  sub_1000035B8(v1, v1[3]);
  v70 = sub_100397BE8();
  sub_1000035B8(v1, v1[3]);
  v35 = sub_100397BA8();
  v69 = 0;
  v87 = v35;
  v88 = v36;
  sub_1001E4D94();
  v37 = sub_100399638();

  v74 = *(v37 + 16);
  if (v74)
  {
    v38 = 0;
    v71 = (v79 + 4);
    v72 = (v79 + 6);
    v39 = v37 + 56;
    v40 = _swiftEmptyArrayStorage;
    v73 = v37;
    while (1)
    {
      v79 = v40;
      v41 = *(v37 + 16);
      v77 = v38;
      if (v38 >= v41)
      {
        break;
      }

      v76 = v39;

      v42 = sub_100398FE8();
      v44 = v43;

      sub_100397A88();
      v45 = v82;
      if ((*v72)(v26, 1, v82) == 1)
      {

        sub_1003554A0(v26);
        v87 = 0;
        v88 = 0xE000000000000000;
        sub_1003996F8(52);
        v89._object = 0x8000000100438650;
        v89._countAndFlagsBits = 0xD000000000000031;
        sub_100399068(v89);
        v90._countAndFlagsBits = v42;
        v90._object = v44;
        sub_100399068(v90);

        v91._countAndFlagsBits = 34;
        v91._object = 0xE100000000000000;
        sub_100399068(v91);
        v66 = v87;
        v67 = v88;
        sub_100355508();
        swift_allocError();
        *v68 = v66;
        v68[1] = v67;
        swift_willThrow();
      }

      v46 = *v71;
      v47 = v80;
      (*v71)(v80, v26, v45);
      v46(v24, v47, v45);
      v48 = v86;
      sub_100345B28(v24, v86);
      v49 = v48;
      v50 = v78;
      sub_100345B28(v49, v78);
      v51 = v81;
      sub_100345B28(v50, v81);
      v40 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1003541A8(0, v40[2] + 1, 1, v40);
      }

      v52 = v83;
      v53 = v25;
      v55 = v40[2];
      v54 = v40[3];
      if (v55 >= v54 >> 1)
      {
        v56 = sub_1003541A8(v54 > 1, v55 + 1, 1, v40);
        v53 = v25;
        v40 = v56;
      }

      v38 = v77 + 1;
      v40[2] = v55 + 1;
      result = sub_100345B28(v51, v40 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v55);
      v39 = v76 + 32;
      v37 = v73;
      if (v74 == v38)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
    v52 = v83;
LABEL_33:

    *v52 = v70;
    *(v52 + 8) = v75 & 1;
    v52[2] = v40;
    type metadata accessor for ObservabilitySignal();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1003554A0(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DABD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100355508()
{
  result = qword_1004DBBF8;
  if (!qword_1004DBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DBBF8);
  }

  return result;
}

uint64_t sub_10035555C(uint64_t a1)
{
  v2 = type metadata accessor for BatchID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003555B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100355600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100355658(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001E27A8(&qword_1004D4B98);
  __chkstk_darwin(v4 - 8);
  v67 = &v47 - v5;
  v6 = sub_1001E27A8(&qword_1004DAA58);
  __chkstk_darwin(v6 - 8);
  v66 = &v47 - v7;
  v8 = sub_100397318();
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100397918();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v65 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v47 - v16;
  v18 = sub_100397748();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v59 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TimeRange();
  v62 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v58 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v61 = &v47 - v25;
  __chkstk_darwin(v24);
  v27 = &v47 - v26;
  v60 = a1;
  if (a1 < 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  v55 = v17;
  v57 = v11;
  sub_10000B904(v2, &v47 - v26);
  v28 = 0;
  v29 = *(v21 + 20);
  v52 = (v13 + 56);
  v53 = v29;
  v50 = (v13 + 8);
  v51 = (v64 + 8);
  v49 = (v19 + 48);
  v47 = (v19 + 32);
  v30 = &_swiftEmptyArrayStorage;
  v56 = v12;
  v54 = v18;
  v48 = v21;
  while (1)
  {
    v31 = v61;
    sub_10000B904(v27, v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_100354158(0, v30[2] + 1, 1, v30);
    }

    v33 = v30[2];
    v32 = v30[3];
    if (v33 >= v32 >> 1)
    {
      v30 = sub_100354158(v32 > 1, v33 + 1, 1, v30);
    }

    v30[2] = v33 + 1;
    sub_10000C120(v31, v30 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v33);
    sub_100397868();
    v34 = v27[v53];
    v35 = v66;
    sub_100397868();
    (*v52)(v35, 0, 1, v12);
    v36 = sub_100397968();
    (*(*(v36 - 8) + 56))(v67, 1, 1, v36);
    LODWORD(v64) = v34;
    v37 = v57;
    sub_1003972E8();
    v38 = v30;
    v39 = v55;
    v40 = v65;
    sub_1003978C8();
    (*v51)(v37, v63);
    v12 = v56;
    (*v50)(v40, v56);
    v41 = v54;
    result = (*v49)(v39, 1, v54);
    if (result == 1)
    {
      break;
    }

    sub_10000C5AC(v27);
    v43 = *v47;
    v44 = v59;
    (*v47)(v59, v39, v41);
    v45 = v58;
    v43(v58, v44, v41);
    *(v45 + *(v48 + 20)) = v64;
    result = sub_10000C120(v45, v27);
    if (v60 == v28)
    {
      sub_10000C5AC(v27);
      return v38;
    }

    v46 = __OFADD__(v28++, 1);
    v30 = v38;
    if (v46)
    {
      __break(1u);
      break;
    }
  }

  __break(1u);
  return result;
}

void *sub_100355DB4(uint64_t a1)
{
  v61 = sub_100397318();
  v2 = *(v61 - 8);
  v3 = __chkstk_darwin(v61);
  v60 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v59 = &v44 - v5;
  v58 = sub_100397918();
  v6 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = sub_100397748();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v54 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TimeRange();
  v56 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v53 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v44 - v18;
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  v55 = a1;
  if (a1 < 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000B904(v62, &v44 - v20);
  v22 = 0;
  v23 = *(v14 + 20);
  v49 = v2 + 8;
  v50 = v23;
  v47 = (v12 + 48);
  v48 = (v6 + 8);
  v45 = (v12 + 32);
  v24 = &_swiftEmptyArrayStorage;
  v51 = v11;
  v52 = v10;
  v46 = v14;
  v44 = v19;
  v25 = (v2 + 8);
  while (1)
  {
    sub_10000B904(v21, v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_100354158(0, v24[2] + 1, 1, v24);
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_100354158(v26 > 1, v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    v28 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v62 = v24;
    sub_10000C120(v19, v24 + v28 + *(v56 + 72) * v27);
    v29 = v57;
    sub_100397868();
    v30 = v21[v50];
    v31 = v59;
    sub_10000BE6C();
    v32 = v60;
    sub_10000C250(v60);
    v33 = *v25;
    v34 = v61;
    (*v25)(v31, v61);
    v35 = v52;
    sub_1003978C8();
    v36 = v32;
    v37 = v35;
    v33(v36, v34);
    (*v48)(v29, v58);
    v38 = v51;
    result = (*v47)(v35, 1, v51);
    if (result == 1)
    {
      break;
    }

    sub_10000C5AC(v21);
    v40 = *v45;
    v41 = v54;
    (*v45)(v54, v37, v38);
    v42 = v53;
    v40(v53, v41, v38);
    *(v42 + *(v46 + 20)) = v30;
    result = sub_10000C120(v42, v21);
    if (v55 == v22)
    {
      sub_10000C5AC(v21);
      return v62;
    }

    v43 = __OFADD__(v22++, 1);
    v19 = v44;
    v24 = v62;
    if (v43)
    {
      __break(1u);
      break;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003562F0(uint64_t a1)
{
  sub_100399B58();
  sub_100397748();
  sub_10035726C(&qword_1004DBCA0, &type metadata accessor for Date);
  sub_100398EC8();
  sub_100399B68(*(v1 + *(a1 + 20)));
  return sub_100399B88();
}

void sub_100356394(uint64_t a1, uint64_t a2)
{
  sub_100397748();
  sub_10035726C(&qword_1004DBCA0, &type metadata accessor for Date);
  sub_100398EC8();
  sub_100399B68(*(v2 + *(a2 + 20)));
}

Swift::Int sub_100356420(uint64_t a1, uint64_t a2)
{
  sub_100399B58();
  sub_100397748();
  sub_10035726C(&qword_1004DBCA0, &type metadata accessor for Date);
  sub_100398EC8();
  sub_100399B68(*(v2 + *(a2 + 20)));
  return sub_100399B88();
}

uint64_t sub_100356514()
{
  v1 = 0x72756F682031;
  if (*v0 != 1)
  {
    v1 = 0x74756E696D203531;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7961642031;
  }
}

id sub_1003565CC()
{
  result = sub_1003565EC();
  qword_1004DE5C8 = result;
  return result;
}

id sub_1003565EC()
{
  v17 = sub_100397838();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100397968();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100397918();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(NSDateIntervalFormatter) init];
  sub_100397868();
  isa = sub_100397898().super.isa;
  (*(v8 + 8))(v10, v7);
  [v11 setCalendar:isa];

  [v11 setDateStyle:1];
  [v11 setTimeStyle:2];
  sub_100397928();
  v13 = sub_100397958().super.isa;
  (*(v4 + 8))(v6, v3);
  [v11 setTimeZone:v13];

  sub_1003977A8();
  v14 = sub_1003977D8().super.isa;
  (*(v0 + 8))(v2, v17);
  [v11 setLocale:v14];

  return v11;
}

uint64_t sub_1003568B8()
{
  v31 = sub_100397318();
  v0 = *(v31 - 8);
  __chkstk_darwin(v31);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100397918();
  v3 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_100397748();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004DA098 != -1)
  {
    swift_once();
  }

  v29 = qword_1004DE5C8;
  v13.super.isa = sub_100397688().super.isa;
  sub_100397868();
  type metadata accessor for TimeRange();
  sub_10000BE6C();
  sub_1003978C8();
  (*(v0 + 8))(v2, v31);
  (*(v3 + 8))(v5, v30);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    isa = sub_100397688().super.isa;
    (*(v10 + 8))(v12, v9);
    v16 = v29;
    v17 = [v29 stringFromDate:v13.super.isa toDate:isa];

    v18 = sub_100398F58();
    v20 = v19;

    v36 = v18;
    v37 = v20;
    v34 = 9011426;
    v35 = 0xA300000000000000;
    v32 = 32;
    v33 = 0xE100000000000000;
    sub_1001E4D94();
    v21 = sub_100399628();
    v23 = v22;

    v36 = v21;
    v37 = v23;
    v34 = 11501794;
    v35 = 0xA300000000000000;
    v32 = 32;
    v33 = 0xE100000000000000;
    v24 = sub_100399628();
    v26 = v25;

    v36 = v24;
    v37 = v26;
    v34 = 9666786;
    v35 = 0xA300000000000000;
    v32 = 45;
    v33 = 0xE100000000000000;
    v27 = sub_100399628();

    return v27;
  }

  return result;
}

uint64_t sub_100356D54(uint64_t a1, uint64_t a2)
{
  v3 = sub_100397318();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100397918();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001E27A8(&qword_1004D4CE0);
  v10 = __chkstk_darwin(v9 - 8);
  v34 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_100397748();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  if (sub_1003976A8())
  {
    v21 = 1;
    return v21 & 1;
  }

  if ((sub_1003976F8() & 1) == 0)
  {
    v21 = 0;
    return v21 & 1;
  }

  v33 = a2;
  sub_100397868();
  v31 = type metadata accessor for TimeRange();
  sub_10000BE6C();
  sub_1003978C8();
  v22 = *(v37 + 8);
  v37 += 8;
  v32 = v22;
  v22(v5, v3);
  v35 = *(v35 + 8);
  (v35)(v8, v36);
  v29 = v3;
  v30 = *(v15 + 48);
  result = v30(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v28 = v15;
    v27 = *(v15 + 32);
    v27(v20, v13, v14);
    sub_100397868();
    sub_10000BE6C();
    v24 = v34;
    sub_1003978C8();
    v32(v5, v29);
    (v35)(v8, v36);
    result = v30(v24, 1, v14);
    if (result != 1)
    {
      v27(v18, v24, v14);
      v21 = sub_1003976A8();
      v25 = *(v28 + 8);
      v25(v18, v14);
      v25(v20, v14);
      return v21 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100357190()
{
  result = sub_100397748();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100357218()
{
  result = qword_1004DBC98;
  if (!qword_1004DBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DBC98);
  }

  return result;
}

uint64_t sub_10035726C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003572B8(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v28 = *(a1 + 16);
  sub_100367C68(0, v3, 0);
  v5 = a1 + 56;
  result = sub_100399668();
  v7 = v28;
  v8 = 0;
  v9 = a2 & 1;
  v27 = a2 & 1;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(*(a1 + 48) + 8 * result);
    v14 = *(a1 + 36);
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_100367C68((v15 > 1), v16 + 1, 1);
      v9 = v27;
      v7 = v28;
      v14 = v25;
      result = v26;
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[2 * v16];
    v17[4] = v13;
    *(v17 + 40) = v9;
    v10 = 1 << *(a1 + 32);
    if (result >= v10)
    {
      goto LABEL_22;
    }

    v18 = *(v5 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_23;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 64 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1003585FC(result, v14, 0);
          v9 = v27;
          v7 = v28;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1003585FC(result, v14, 0);
      v9 = v27;
      v7 = v28;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1003574F0()
{
  sub_1001E27A8(&unk_1004DCD00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1003C9930;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = &protocol witness table for String;
  *(v0 + 32) = 0x756575517473614CLL;
  *(v0 + 40) = 0xEF6874676E654C65;
  sub_100397CF8();

  if (v3 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100357608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  result = sub_100397BD8();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_10035766C(uint64_t a1, uint64_t a2)
{
  sub_1001E27A8(&unk_1004DCD00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003EB210;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = &protocol witness table for String;
  *(v3 + 32) = 0x756575517473614CLL;
  *(v3 + 40) = 0xEF6874676E654C65;
  *(v3 + 96) = &type metadata for Int;
  *(v3 + 104) = &protocol witness table for Int;
  *(v3 + 72) = a2;
  LOBYTE(a2) = sub_100397CD8();

  if ((a2 & 1) == 0)
  {
    sub_1003993E8();
    sub_100206B54();
    v4 = sub_1003995A8();
    sub_100398B98();
  }
}

uint64_t sub_10035780C(uint64_t a1, char a2)
{
  v4 = sub_100398FA8();
  __chkstk_darwin(v4 - 8);
  sub_1001E27A8(&unk_1004DCD00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1003C9930;
  v27[0] = 1598374469;
  v27[1] = 0xE400000000000000;
  v30._countAndFlagsBits = sub_100397A98();
  sub_100399068(v30);

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = &protocol witness table for String;
  *(v5 + 32) = 1598374469;
  *(v5 + 40) = 0xE400000000000000;
  sub_100397CF8();

  v7 = v28;
  v8 = v29;
  if (v28 == 1)
  {
    if ((a2 & 1) == 0)
    {
      sub_1001E27A8(&qword_1004D41E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003C9930;
      *(inited + 32) = a1;
      v10 = sub_100358588(inited);
      swift_setDeallocating();
      sub_100358608(1);
      v7 = 0;
      v8 = v10;
      goto LABEL_8;
    }

    sub_1001E27A8(&qword_1004D41E0);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_1003C9930;
    *(v6 + 32) = a1;
    v7 = sub_100358588(v6);
    swift_setDeallocating();
    sub_100358608(1);
    v8 = 0;
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (v29)
      {
        v28 = v29;
        v24 = sub_100349EF0(v27, a1);
        v8 = v28;
        if ((v24 & 1) == 0)
        {
          return sub_100358608(v7);
        }
      }

      else
      {
        sub_1001E27A8(&qword_1004D41E0);
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_1003C9930;
        *(v26 + 32) = a1;
        v8 = sub_100358588(v26);
        swift_setDeallocating();
      }

      goto LABEL_8;
    }

    if (v28)
    {
      v23 = sub_100349EF0(v27, a1);
      v7 = v28;
      if ((v23 & 1) == 0)
      {
        return sub_100358608(v7);
      }
    }

    else
    {
      sub_1001E27A8(&qword_1004D41E0);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_1003C9930;
      *(v25 + 32) = a1;
      v7 = sub_100358588(v25);
      swift_setDeallocating();
    }
  }

  if (v7 == 1)
  {
LABEL_9:
    sub_1003993E8();
    sub_100206B54();
    v11 = sub_1003995A8();
    sub_100398B98();

    return sub_100358608(v7);
  }

LABEL_8:
  sub_1003970E8();
  swift_allocObject();
  sub_1003970D8();
  v28 = v7;
  v29 = v8;
  sub_10035864C();
  v13 = sub_1003970C8();
  v15 = v14;
  sub_100398F98();
  v16 = sub_100398F78();
  v18 = v17;
  sub_1001EFA90(v13, v15);

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1003EB210;
  v28 = 1598374469;
  v29 = 0xE400000000000000;
  v31._countAndFlagsBits = sub_100397A98();
  sub_100399068(v31);

  v20 = v28;
  v21 = v29;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = &protocol witness table for String;
  *(v19 + 72) = v16;
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = &protocol witness table for String;
  *(v19 + 80) = v18;
  v22 = sub_100397CD8();

  if ((v22 & 1) == 0)
  {
    goto LABEL_9;
  }

  return sub_100358608(v7);
}

void sub_100357D14(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  sub_100397B98();
  if (v4)
  {
    v5 = sub_10034C6E0();
    if (v2)
    {
    }

    else
    {
      v7 = v5;
      v8 = v6;

      if (v7 != 1)
      {
        v10 = v8;
        goto LABEL_7;
      }
    }

    sub_1003993E8();
    sub_100206B54();
    v9 = sub_1003995A8();
    sub_100398B98();
  }

  v10 = 0;
  v7 = 1;
LABEL_7:
  *a2 = v7;
  a2[1] = v10;
}

void sub_100357E4C(uint64_t a1)
{
  v3 = type metadata accessor for BatchID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v23 = sub_100281694(0x3F, 0xE100000000000000, v7);
  sub_1001E27A8(&unk_1004D9A20);
  sub_1001E6C28(&qword_1004D8E78, &unk_1004D9A20);
  v8 = sub_100398ED8();
  v10 = v9;

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1003996F8(54);
  v25._countAndFlagsBits = 0xD000000000000032;
  v25._object = 0x8000000100438FA0;
  sub_100399068(v25);
  v26._countAndFlagsBits = v8;
  v26._object = v10;
  sub_100399068(v26);

  v27._countAndFlagsBits = 15145;
  v27._object = 0xE200000000000000;
  sub_100399068(v27);
  if (v7)
  {
    v21[0] = *(v1 + 16);
    v21[1] = v23;
    v21[2] = v24;
    v22 = _swiftEmptyArrayStorage;
    sub_1002373F4(0, v7, 0);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = v22;
    v13 = *(v4 + 72);
    do
    {
      sub_100345B8C(v11, v6);
      v23 = 1598374469;
      v24 = 0xE400000000000000;
      v28._countAndFlagsBits = sub_100397A98();
      sub_100399068(v28);

      v14 = v23;
      v15 = v24;
      sub_10035555C(v6);
      v22 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_1002373F4((v16 > 1), v17 + 1, 1);
        v12 = v22;
      }

      v12[2] = v17 + 1;
      v18 = &v12[5 * v17];
      v18[4] = v14;
      v18[5] = v15;
      v18[7] = &type metadata for String;
      v18[8] = &protocol witness table for String;
      v11 += v13;
      --v7;
    }

    while (v7);
  }

  v19 = sub_100397CD8();

  if ((v19 & 1) == 0)
  {
    sub_1003993E8();
    sub_100206B54();
    v20 = sub_1003995A8();
    sub_100398B98();
  }
}

uint64_t sub_100358198@<X0>(void *a1@<X8>)
{
  sub_1001E27A8(&unk_1004DCD00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1003C9930;
  v6._countAndFlagsBits = sub_100397A98();
  sub_100399068(v6);

  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = &protocol witness table for String;
  *(v2 + 32) = 1598374469;
  *(v2 + 40) = 0xE400000000000000;
  sub_1001E27A8(&qword_1004DBD70);
  sub_100397CF8();

  if (v5)
  {
    return sub_100004A68(&v4, a1);
  }

  a1[3] = sub_1001E27A8(&qword_1004DBD78);
  result = sub_1001E6C28(&qword_1004DBD80, &qword_1004DBD78);
  a1[4] = result;
  *a1 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100358380@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  sub_100397B98();
  if (v4)
  {
    v5 = sub_10034C6E0();
    if (v2)
    {

LABEL_5:
      sub_1003993E8();
      sub_100206B54();
      v9 = sub_1003995A8();
      sub_100398B98();

      goto LABEL_6;
    }

    v7 = v5;
    v8 = v6;

    if (v7 == 1)
    {
      goto LABEL_5;
    }

    if (v7)
    {
      v11 = sub_1003572B8(v7, 1);
      sub_100353EAC(v11);
    }

    if (v8)
    {
      v12 = sub_1003572B8(v8, 0);
      sub_100353EAC(v12);
    }
  }

LABEL_6:
  a2[3] = sub_1001E27A8(&qword_1004DBD78);
  result = sub_1001E6C28(&qword_1004DBD80, &qword_1004DBD78);
  a2[4] = result;
  *a2 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100358588(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100399328();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100349EF0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1003585FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100358608(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_10035864C()
{
  result = qword_1004DBD88;
  if (!qword_1004DBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DBD88);
  }

  return result;
}

uint64_t sub_1003586A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TimeRange();
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[15];
  v9 = v2[16];
  sub_1000035B8(v2 + 12, v8);
  (*(v9 + 24))(v24, a1, 0, v8, v9);
  v10 = sub_100358A58(v24);
  sub_100003894(v24);
  v24[0] = v10;
  sub_1001E27A8(&qword_1004DBE50);
  sub_100358DE4();
  if (sub_100399398())
  {
    if (qword_1004DA0A0 != -1)
    {
      swift_once();
    }

    v11 = sub_100398CA8();
    sub_10000351C(v11, qword_1004DE5D0);
    sub_100358F68(a1, v7, type metadata accessor for TimeRange);

    v12 = sub_100398C88();
    v13 = sub_1003993C8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_100005700(0x63696E756D6D6F63, 0xED00006E6F697461, v24);
      *(v14 + 12) = 2082;
      v15 = sub_1003568B8();
      v17 = v16;
      sub_10000C804(v7, type metadata accessor for TimeRange);
      v18 = sub_100005700(v15, v17, v24);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Generating %{public}s report for %{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000C804(v7, type metadata accessor for TimeRange);
    }

    v21 = sub_100397748();
    (*(*(v21 - 8) + 16))(a2, a1, v21);
    v22 = type metadata accessor for ObservabilityCommunicationReport();
    *(a2 + *(v22 + 20)) = v10;
    return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
  }

  else
  {
    v19 = type metadata accessor for ObservabilityCommunicationReport();
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t sub_100358A58(void *a1)
{
  sub_100003554(v1 + 56, v10);
  type metadata accessor for ErrorCollector();
  inited = swift_initStackObject();
  *(inited + 56) = sub_10034BB24(_swiftEmptyArrayStorage);
  sub_100004A64(v10, inited + 16);
  sub_100003554(v1 + 16, v9);
  v4 = swift_initStackObject();
  *(v4 + 56) = sub_10034BB24(_swiftEmptyArrayStorage);
  sub_100004A64(v9, v4 + 16);
  sub_1000035B8(a1, a1[3]);
  sub_100399128();
  v5 = sub_100351E1C();
  v6 = sub_100351E1C();
  v7 = sub_100349A54(v6, v5);
  swift_setDeallocating();
  sub_100003894(inited + 16);

  swift_setDeallocating();
  sub_100003894(v4 + 16);

  return v7;
}

uint64_t sub_100358BA0()
{
  sub_100003894(v0 + 16);
  sub_100003894(v0 + 56);
  sub_100003894(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_100358C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001E27A8(&qword_1004DBE48);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_1003586A0(a1, &v10 - v5);
  v7 = type metadata accessor for ObservabilityCommunicationReport();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_100358D18(v6);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a2 + 24) = v7;
    *(a2 + 32) = &off_1004800D0;
    v9 = sub_1001E6B7C(a2);
    return sub_100358D80(v6, v9);
  }

  return result;
}

uint64_t sub_100358D18(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DBE48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100358D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservabilityCommunicationReport();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100358DE4()
{
  result = qword_1004DBE58;
  if (!qword_1004DBE58)
  {
    sub_1001E27F0(&qword_1004DBE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DBE58);
  }

  return result;
}

uint64_t sub_100358E48(uint64_t a1)
{
  v2 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100358F68(a1, v4, type metadata accessor for ObservabilitySignal);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    return sub_10000C804(v4, type metadata accessor for ObservabilitySignal);
  }

  return sub_100351F30();
}

uint64_t sub_100358F68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100358FD0()
{
  v0 = sub_100398CA8();
  sub_1001EB3CC(v0, qword_1004DE5D0);
  sub_10000351C(v0, qword_1004DE5D0);
  return sub_100398C98();
}

uint64_t sub_100359054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100359BA0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1001EC1DC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10020D00C();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1001F734C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_10035914C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100397748();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1001E28A8(a1);
    v13 = sub_100008858(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10034B8BC();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1003599D0(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1001E28A8(v8);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_100359D1C(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

unint64_t sub_10035937C()
{
  sub_1001E27A8(&unk_1004DAFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003F24B0;
  *(inited + 32) = 0x444D4D5F65746164;
  *(inited + 40) = 0xEB00000000484844;
  *(inited + 48) = sub_1003596EC();
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x80000001004390A0;
  v2 = (v0 + *(type metadata accessor for ObservabilityHourlyReport() + 36));
  *(inited + 72) = sub_100399348();
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001004390C0;
  *(inited + 96) = sub_100399348();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x80000001004390E0;
  *(inited + 120) = sub_100399348();
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x8000000100439100;
  *(inited + 144) = sub_100399348();
  *(inited + 152) = 0xD000000000000015;
  *(inited + 160) = 0x8000000100439120;
  *(inited + 168) = sub_100399348();
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x8000000100439140;
  *(inited + 192) = sub_100399348();
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x8000000100439160;
  *(inited + 216) = sub_100399348();
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x8000000100439180;
  *(inited + 240) = sub_100399348();
  *(inited + 248) = 0x5F64657269707865;
  *(inited + 256) = 0xEF73656863746162;
  *(inited + 264) = sub_100399348();
  *(inited + 272) = 0xD00000000000001ALL;
  *(inited + 280) = 0x80000001004391A0;
  *(inited + 288) = sub_100399348();
  *(inited + 296) = 0xD00000000000001BLL;
  *(inited + 304) = 0x80000001004391C0;
  *(inited + 312) = sub_100399348();
  *(inited + 320) = 0xD000000000000015;
  *(inited + 328) = 0x80000001004391E0;
  *(inited + 336) = sub_100399348();
  v3 = sub_10031F9C0(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004DCA80);
  swift_arrayDestroy();
  isa = 0;
  if ((v2[8] & 1) == 0)
  {
    sub_1003992A8();
    isa = sub_100399348().super.super.isa;
  }

  sub_100359054(isa, 0xD000000000000016, 0x8000000100439200);
  if (v2[48])
  {
    v5 = 0;
  }

  else
  {
    sub_1003992A8();
    v5 = sub_100399348().super.super.isa;
  }

  sub_100359054(v5, 0xD000000000000016, 0x8000000100439220);
  if (v2[24])
  {
    v6 = 0;
  }

  else
  {
    sub_1003992A8();
    v6 = sub_100399348().super.super.isa;
  }

  sub_100359054(v6, 0xD000000000000016, 0x8000000100439240);
  return v3;
}

uint64_t sub_1003596EC()
{
  v0 = sub_100397968();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100397918();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100397318();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100397868();
  sub_100397928();
  sub_100397888();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  sub_100359F74();
  v12 = sub_100399578();
  sub_1001E27A8(&qword_1004D5860);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003C9260;
  result = sub_100397278();
  if (v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = result;
  result = sub_100397228();
  if (v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v13 + 96) = &type metadata for Int;
  *(v13 + 104) = &protocol witness table for Int;
  *(v13 + 72) = result;
  result = sub_100397248();
  if ((v17 & 1) == 0)
  {
    *(v13 + 136) = &type metadata for Int;
    *(v13 + 144) = &protocol witness table for Int;
    *(v13 + 112) = result;
    v18 = sub_100399588();

    (*(v9 + 8))(v11, v8);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1003599D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100399678() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_100399B58();
      sub_100399B68(v9);
      result = sub_100399B88();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_100397748() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
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

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

uint64_t sub_100359BA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001EC1DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10020CD64(v16, a4 & 1);
      v11 = sub_1001EC1DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_100399A98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10020D00C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_100359D1C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100008858(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10034B8BC();
      goto LABEL_7;
    }

    sub_10034B2A0(v13, a3 & 1);
    v24 = sub_100008858(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_100399A98();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_100397748();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_100359EC8(v10, a2, a1, v16);
}

unint64_t sub_100359E84(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_100359EC8(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_100397748();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_100359F74()
{
  result = qword_1004D4900;
  if (!qword_1004D4900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D4900);
  }

  return result;
}

uint64_t type metadata accessor for ObservabilityDailyReport()
{
  result = qword_1004DBEB8;
  if (!qword_1004DBEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035A034()
{
  sub_100397748();
  if (v0 <= 0x3F)
  {
    sub_10034CC4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10035A0DC()
{
  v1 = v0;
  v2 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v2 - 8);
  v49 = &v48 - v3;
  v53 = sub_100397748();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SigningFailure();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001E27A8(&qword_1004DAA50);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v57 = &v48 - v15;
  v54 = sub_1003980E8();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 16);
  swift_getObjectType();
  v48 = v18;
  sub_100399538();
  v19 = *(v1 + 48);
  v56 = v1;
  v20 = *sub_1000035B8((v1 + 24), v19);
  v21 = sub_100343E5C();
  v23 = v22;
  sub_1000035B8((v20 + 16), *(v20 + 40));
  v24 = sub_10033F600(v21, v23);
  if (v24)
  {
    sub_100344374(v24, v14);
  }

  else
  {
    (*(v6 + 56))(v14, 1, 1, v5);
  }

  v25 = *(v6 + 48);
  v26 = v25(v14, 1, v5);
  v27 = v49;
  if (v26 == 1)
  {
    v28 = sub_1000035B8((v56 + 24), *(v56 + 48));
    sub_1000035B8((*v28 + 16), *(*v28 + 40));
    v29 = sub_10033F600(0x6146657669746361, 0xED00006572756C69);
    if (v29)
    {
      sub_100344374(v29, v57);
    }

    else
    {
      (*(v6 + 56))(v57, 1, 1, v5);
    }

    if (v25(v14, 1, v5) != 1)
    {
      sub_1001ED244(v14, &qword_1004DAA50);
    }
  }

  else
  {
    v30 = v57;
    sub_1003433C0(v14, v57);
    (*(v6 + 56))(v30, 0, 1, v5);
  }

  sub_10035AA80(v57, v11);
  if (v25(v11, 1, v5) == 1)
  {
    sub_1001ED244(v11, &qword_1004DAA50);
    v31 = v50;
    v32 = v53;
    (*(v50 + 56))(v27, 1, 1, v53);
    v33 = [v48 now];
    v34 = v51;
    sub_100397708();

    if ((*(v31 + 48))(v27, 1, v32) != 1)
    {
      sub_1001ED244(v27, &qword_1004D4CE0);
    }
  }

  else
  {
    v31 = v50;
    v32 = v53;
    (*(v50 + 16))(v27, v11, v53);
    sub_100343424(v11);
    (*(v31 + 56))(v27, 0, 1, v32);
    v34 = v51;
    (*(v31 + 32))(v51, v27, v32);
  }

  v35 = v52;
  v37 = v54;
  v36 = v55;
  (*(v52 + 16))(&v55[*(v5 + 20)], v17, v54);
  v38 = v57;
  v39 = sub_10035AAF0(v57);
  (*(v31 + 32))(v36, v34, v32);
  *(v36 + *(v5 + 24)) = v39;
  v40 = v56;
  v41 = sub_1000035B8((v56 + 24), *(v56 + 48));
  sub_1000035B8((*v41 + 16), *(*v41 + 40));
  v42 = sub_100343F48();
  v43 = sub_100343E5C();
  sub_10033FA7C(v42, v43, v44);

  v45 = sub_1000035B8((v40 + 24), *(v40 + 48));
  sub_1000035B8((*v45 + 16), *(*v45 + 40));
  v46 = sub_100343F48();
  sub_10033FA7C(v46, 0x6146657669746361, 0xED00006572756C69);

  sub_100343424(v36);
  sub_1001ED244(v38, &qword_1004DAA50);
  return (*(v35 + 8))(v17, v37);
}

uint64_t sub_10035A7D8()
{
  v1 = v0;
  v2 = sub_1003980E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000035B8((v0 + 24), *(v0 + 48));
  sub_1000035B8((*v6 + 16), *(*v6 + 40));
  sub_1001E27A8(&unk_1004D43E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9930;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000100438560;
  sub_1002129BC();
  *(inited + 48) = sub_100399548(1);
  v8 = sub_1001EC30C(inited);
  swift_setDeallocating();
  sub_1001ED244(inited + 32, &qword_1004DABD0);
  sub_10033FA7C(v8, 0xD000000000000012, 0x8000000100438560);

  v9 = sub_1000035B8((v1 + 24), *(v1 + 48));
  swift_getObjectType();
  sub_100399538();
  sub_1000035B8((*v9 + 16), *(*v9 + 40));
  v10 = sub_100343E5C();
  sub_10033F2FC(v10, v11);

  (*(v3 + 8))(v5, v2);
  v12 = sub_1000035B8((v1 + 24), *(v1 + 48));
  sub_1000035B8((*v12 + 16), *(*v12 + 40));
  return sub_10033F2FC(0x6146657669746361, 0xED00006572756C69);
}

uint64_t sub_10035AA1C()
{
  swift_unknownObjectRelease();
  sub_100003894(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10035AA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DAA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035AAF0(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DAA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for SigningFailure();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10035AA80(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1001ED244(v4, &qword_1004DAA50);
    return 1;
  }

  sub_1003433C0(v4, v8);
  sub_1003980E8();
  sub_10035AC98();
  v10 = sub_100398EE8();
  v9 = *&v8[*(v5 + 24)];
  result = sub_100343424(v8);
  if ((v10 & 1) == 0)
  {
    return v9;
  }

  if (!__OFADD__(v9++, 1))
  {
    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_10035AC98()
{
  result = qword_1004DBFD0;
  if (!qword_1004DBFD0)
  {
    sub_1003980E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DBFD0);
  }

  return result;
}

id sub_10035AD90()
{
  v1 = OBJC_IVAR____TtC7Metrics27APSigningObservabilityDiary_diary;
  v2 = [objc_allocWithZone(APSystemClock) init];
  v3 = type metadata accessor for PropertyListFileManagerFileSystem();
  v22 = v3;
  v23 = &off_10047F170;
  v21[0] = [objc_allocWithZone(v3) init];
  v4 = type metadata accessor for SigningObservabilityPropertyListFileStore();
  v5 = swift_allocObject();
  v6 = sub_1001F54B4(v21, v3);
  __chkstk_darwin(v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v5[5] = v3;
  v5[6] = &off_10047F170;
  v5[2] = v10;
  sub_100003894(v21);
  v22 = v4;
  v23 = &off_10047F2C8;
  v21[0] = v5;
  type metadata accessor for SigningObservabilityDiary();
  v11 = swift_allocObject();
  v12 = sub_1001F54B4(v21, v4);
  __chkstk_darwin(v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v11[6] = v4;
  v11[7] = &off_10047F2C8;
  v11[2] = v2;
  v11[3] = v16;
  sub_100003894(v21);
  *&v0[v1] = v11;
  v17 = type metadata accessor for APSigningObservabilityDiary();
  v20.receiver = v0;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, "init");
}

id sub_10035AFF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APSigningObservabilityDiary();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10035B07C(uint64_t a1)
{
  result = sub_10035B0B8(a1, 0.0, 1.0);
  if (v2 < 0.0 || v2 >= 1.0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10035B0B8(uint64_t result, float a2, float a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE_INT(fabs(a3 - a2)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (((v5 * vcvts_n_f32_u64(0, 0x18uLL)) + a2) == a3)
  {
    return sub_10035B0B8(v6, a2, a3);
  }

  return result;
}

uint64_t sub_10035B15C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10035B198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10035B1E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10035B238()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10035B28C()
{
  sub_1003996F8(24);
  v1._countAndFlagsBits = 0x3A6E6F6973726576;
  v1._object = 0xE900000000000020;
  sub_100399068(v1);
  v2._countAndFlagsBits = sub_100399998();
  sub_100399068(v2);

  v3._countAndFlagsBits = 0x74656B637562202CLL;
  v3._object = 0xEB00000000203A73;
  sub_100399068(v3);
  sub_1003991F8();
  swift_getWitnessTable();
  sub_1003999A8();
  return 0;
}

uint64_t sub_10035B3AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10035B3E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10035B430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10035B494(double a1)
{
  v2 = a1;
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *v1;
    if (*v1 > a1)
    {
      v2 = a1;
    }
  }

  *v1 = v2;
  *(v1 + 8) = 0;
  v3 = a1;
  if ((*(v1 + 24) & 1) == 0)
  {
    v3 = *(v1 + 16);
    if (v3 <= a1)
    {
      v3 = a1;
    }
  }

  *(v1 + 16) = v3;
  *(v1 + 24) = 0;
  if ((*(v1 + 48) & 1) == 0)
  {
    a1 = *(v1 + 40) + a1;
  }

  *(v1 + 40) = a1;
  *(v1 + 48) = 0;
  v4 = *(v1 + 32);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v6;
  }
}

uint64_t sub_10035B504@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v55 = a2;
  v63 = sub_100397318();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100397918();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  *&v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v7 - 8);
  v58 = &v52 - v8;
  v65 = sub_100397748();
  v9 = *(v65 - 8);
  v10 = __chkstk_darwin(v65);
  v64 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v52 - v12;
  *&v56 = type metadata accessor for TimeRange();
  __chkstk_darwin(v56);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v15 = sub_100398CA8();
  sub_10000351C(v15, qword_1004DE5D0);
  sub_100358F68(a1, v14, type metadata accessor for TimeRange);

  v16 = sub_100398C88();
  v17 = sub_1003993C8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_100005700(0x796C72756F68, 0xE600000000000000, &v70);
    *(v19 + 12) = 2082;
    v20 = sub_1003568B8();
    v22 = v21;
    sub_10000C7A4(v14, type metadata accessor for TimeRange);
    v23 = sub_100005700(v20, v22, &v70);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Generating %{public}s report for %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    a1 = v18;
  }

  else
  {

    sub_10000C7A4(v14, type metadata accessor for TimeRange);
  }

  v24 = v3[5];
  v25 = v3[6];
  sub_1000035B8(v3 + 2, v24);
  (*(v25 + 24))(v84, a1, 1, v24, v25);
  v83 = 0;
  sub_1000035B8(v3 + 7, v3[10]);
  v79 = sub_1003574F0();
  v80 = v79;
  *&v81 = v79;
  *(&v81 + 1) = v79;
  v82 = 0uLL;
  v77 = 0;
  v78 = 0;
  v70 = 0;
  v71 = 1;
  v72 = 0;
  v73 = 1;
  v74 = 0;
  v75 = 0.0;
  v76 = 1;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v26 = sub_1000035B8(v84, v84[3]);
  __chkstk_darwin(v26);
  *(&v52 - 10) = &v79;
  *(&v52 - 9) = &v70;
  *(&v52 - 8) = &v77;
  *(&v52 - 7) = &v78;
  *(&v52 - 6) = &v83;
  *(&v52 - 5) = &v67;
  *(&v52 - 4) = &v68;
  *(&v52 - 3) = &v66;
  *(&v52 - 2) = &v69;
  sub_100399128();
  sub_1000035B8(v3 + 7, v3[10]);
  v27 = v57;
  sub_100397868();
  v28 = v60;
  sub_10000BE6C();
  v29 = v58;
  sub_1003978C8();
  (*(v62 + 8))(v28, v63);
  (*(v59 + 8))(v27, v61);
  v30 = v65;
  result = (*(v9 + 48))(v29, 1, v65);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = *(v9 + 32);
    v33 = v54;
    v32(v54, v29, v30);
    v34 = v80;
    sub_10035766C(v33, v80);
    (*(v9 + 8))(v33, v30);
    v35 = v83;
    if (v83 > 0 || v82 != 0 || v74 || v69 > 0 || v68 > 0 || v67 > 0 || v66 >= 1)
    {
      (*(v9 + 16))(v64, a1, v30);
      v36 = v79;
      v56 = v82;
      v57 = v81;
      v37 = v74;
      v38 = v75;
      v39 = v76;
      v63 = v70;
      LODWORD(v62) = v71;
      v61 = v72;
      LODWORD(v60) = v73;
      v59 = v77;
      v58 = v78;
      v40 = v34;
      if ((v76 & 1) == 0)
      {
        v41 = v75 / v74;
        v42 = COERCE_DOUBLE(sub_10035C3A8(v74));
        if (v43)
        {
          v42 = 1.0;
        }

        v38 = v41 * v42;
      }

      v44 = v69;
      v45 = v68;
      v53 = v67;
      v54 = v66;
      v46 = v55;
      v32(v55, v64, v65);
      v47 = type metadata accessor for ObservabilityHourlyReport();
      *&v46[v47[5]] = v35;
      v48 = &v46[v47[6]];
      *v48 = v36;
      *(v48 + 1) = v40;
      v49 = v56;
      *(v48 + 1) = v57;
      *(v48 + 2) = v49;
      *&v46[v47[7]] = v58;
      *&v46[v47[8]] = v59;
      v50 = &v46[v47[9]];
      *v50 = v63;
      v50[8] = v62;
      *(v50 + 2) = v61;
      v50[24] = v60;
      *(v50 + 4) = v37;
      *(v50 + 5) = v38;
      v50[48] = v39;
      *&v46[v47[10]] = v44;
      *&v46[v47[11]] = v45;
      *&v46[v47[12]] = v53;
      *&v46[v47[13]] = v54;
      (*(*(v47 - 1) + 56))(v46, 0, 1, v47);
    }

    else
    {
      v51 = type metadata accessor for ObservabilityHourlyReport();
      (*(*(v51 - 8) + 56))(v55, 1, 1, v51);
    }

    return sub_100003894(v84);
  }

  return result;
}

void sub_10035BEB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t *a9, uint64_t *a10)
{
  v28 = a8;
  v15 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v15);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100358F68(a1, v17, type metadata accessor for ObservabilitySignal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10035C118(*v17);
        if (!__OFADD__(*a5, 1))
        {
          ++*a5;
          return;
        }

        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 3)
      {
        if (!__OFADD__(*a6, 1))
        {
          ++*a6;
          v19 = type metadata accessor for BatchID;
LABEL_19:
          v25 = v19;
          v26 = v17;
          goto LABEL_20;
        }

        goto LABEL_28;
      }

LABEL_18:
      v19 = type metadata accessor for ObservabilitySignal;
      goto LABEL_19;
    }

LABEL_13:
    v22 = *v17;
    v23 = v17[1];
    v24 = *(sub_1001E27A8(&qword_1004DABE8) + 64);
    sub_10035C118(v23);
    sub_10035B494(*&v22);
    if (!__OFADD__(*a4, 1))
    {
      ++*a4;
      v25 = type metadata accessor for BatchID;
      v26 = v17 + v24;
LABEL_20:
      sub_10000C7A4(v26, v25);
      return;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v20 = a10;
      v21 = *a10 + *v17;
      if (__OFADD__(*a10, *v17))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_18;
      }

      v20 = a9;
      v21 = *a9 + 1;
      if (__OFADD__(*a9, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    *v20 = v21;
    return;
  }

  v27 = *(v17 + 8);

  if (v27)
  {
    if (!__OFADD__(*v28, 1))
    {
      ++*v28;
      return;
    }

    goto LABEL_31;
  }

  if (!__OFADD__(*a7, 1))
  {
    ++*a7;
    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_10035C118(uint64_t result)
{
  v2 = v1[1];
  v3 = v2 <= result;
  if (v2 < result)
  {
    v4 = v1 + 4;
    v5 = v1[4];
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    v3 = (v7 < 0) ^ v6 | (v7 == 0);
    if (!v6)
    {
LABEL_7:
      *v4 = v7;
      goto LABEL_8;
    }

    __break(1u);
  }

  if (!v3)
  {
    v4 = v1 + 5;
    v8 = v1[5];
    v6 = __OFADD__(v8, 1);
    v7 = v8 + 1;
    if (v6)
    {
      __break(1u);
      return result;
    }

    goto LABEL_7;
  }

LABEL_8:
  v9 = v1[2];
  v10 = v1[3];
  if (v9 >= result)
  {
    v9 = result;
  }

  v1[1] = result;
  v1[2] = v9;
  if (v10 <= result)
  {
    v11 = result;
  }

  else
  {
    v11 = v10;
  }

  v1[3] = v11;
  return result;
}

uint64_t sub_10035C198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001E27A8(&qword_1004DC2D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_10035B504(a1, &v10 - v5);
  v7 = type metadata accessor for ObservabilityHourlyReport();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_10035C2A4(v6);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a2 + 24) = v7;
    *(a2 + 32) = &off_10047FA68;
    v9 = sub_1001E6B7C(a2);
    return sub_10035C30C(v6, v9);
  }

  return result;
}

uint64_t sub_10035C2A4(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DC2D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10035C30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservabilityHourlyReport();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035C3A8(uint64_t result)
{
  v1 = result;
  if (result >= 9.22337204e18)
  {
    *&result = 0.0;
    return result;
  }

  if ((~*&v1 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1 == result)
  {
    *&result = result;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_10035C408(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = sub_100397748();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - v10;
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = sub_1001E27A8(&qword_1004D4CE0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = *(v6 + 56);
  v20(&v35 - v18, 1, 1, v5);
  v20(a2, 1, 1, v5);
  v21 = *(v3 + 8);
  v39 = v20;
  v40 = v6;
  if (v21)
  {
    if (*(v3 + 24))
    {
      v22 = [objc_allocWithZone(NSISO8601DateFormatter) init];
      v36 = a2;
      v23 = v22;
      v24 = sub_100398F28();
      v25 = [v23 dateFromString:v24];

      a2 = v36;
      if (v25)
      {
        sub_100397708();

        sub_1001ED244(v19, &qword_1004D4CE0);
        (*(v40 + 32))(v19, v11, v5);
        v39(v19, 0, 1, v5);
      }
    }

    if (*(v3 + 40))
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_100397718();
    sub_100397678();
    (*(v40 + 8))(v13, v5);
    sub_1001ED244(a2, &qword_1004D4CE0);
    v39(v17, 0, 1, v5);
    sub_100008BA8(v17, a2);
    return sub_100008BA8(v19, v38);
  }

  sub_100397718();
  sub_100397678();
  (*(v6 + 8))(v13, v5);
  sub_1001ED244(v19, &qword_1004D4CE0);
  v20(v17, 0, 1, v5);
  sub_100008BA8(v17, v19);
  if ((*(v3 + 40) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v27 = v39;
  v26 = v40;
  if (*(v3 + 56))
  {
    v28 = a2;
    v29 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    v30 = sub_100398F28();
    v31 = [v29 dateFromString:v30];

    v32 = v28;
    if (v31)
    {
      v33 = v37;
      sub_100397708();

      sub_1001ED244(v32, &qword_1004D4CE0);
      (*(v26 + 32))(v32, v33, v5);
      v27(v32, 0, 1, v5);
    }
  }

  return sub_100008BA8(v19, v38);
}

uint64_t sub_10035C88C(void *a1)
{
  v3 = sub_1001E27A8(&qword_1004DC428);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035B8(a1, a1[3]);
  sub_10035E1E4();
  sub_100399BF8();
  v8[15] = 0;
  sub_100399928();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_100399918();
  v8[13] = 2;
  sub_100399928();
  v8[12] = 3;
  sub_100399918();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10035CA54()
{
  v1 = 0x79616C6544776F6CLL;
  v2 = 0x616C654468676968;
  if (*v0 != 2)
  {
    v2 = 0x656D695468676968;
  }

  if (*v0)
  {
    v1 = 0x656D6954776F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10035CAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10035D770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10035CAFC(uint64_t a1)
{
  v2 = sub_10035E1E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10035CB38(uint64_t a1)
{
  v2 = sub_10035E1E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10035CB74@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10035D8DC(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_10035CBF4(__int128 *a1, uint64_t a2)
{
  v38 = a2;
  v37 = type metadata accessor for PeriodicWorkRequest();
  __chkstk_darwin(v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100397748();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v36 - v9;
  v10 = sub_1001E27A8(&qword_1004DC410);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = sub_1001E27A8(&qword_1004D4CE0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v36 - v19;
  __chkstk_darwin(v18);
  v22 = &v36 - v21;
  v23 = a1[1];
  v39 = *a1;
  v40 = v23;
  v24 = a1[3];
  v41 = a1[2];
  v42 = v24;
  sub_10035C408(&v36 - v21, v20);
  v25 = *(v11 + 56);
  sub_100008BA8(v22, v13);
  sub_100008BA8(v20, &v13[v25]);
  v26 = *(v6 + 48);
  if (v26(v13, 1, v5) == 1)
  {
    v27 = v43;
    if (v26(&v13[v25], 1, v5) == 1)
    {
      sub_1001ED244(v13, &qword_1004DC410);
      return 0x726F727245;
    }

    (*(v6 + 32))(v27, &v13[v25], v5);
    (*(v6 + 16))(v4, v27, v5);
  }

  else
  {
    sub_1001E2838(v13, v17);
    v29 = v26(&v13[v25], 1, v5);
    v30 = *(v6 + 32);
    v30(v43, v17, v5);
    if (v29 != 1)
    {
      v30(v36, &v13[v25], v5);
      v31 = *(sub_1001E27A8(&qword_1004DBA00) + 48);
      v32 = *(v6 + 16);
      v33 = v43;
      v32(v4, v43, v5);
      v34 = v36;
      v32(&v4[v31], v36, v5);
      swift_storeEnumTagMultiPayload();
      sub_10000DF40(v4);
      sub_10035E0B8(v4);
      v35 = *(v6 + 8);
      v35(v34, v5);
      v35(v33, v5);
      goto LABEL_9;
    }

    v27 = v43;
    (*(v6 + 16))(v4, v43, v5);
  }

  swift_storeEnumTagMultiPayload();
  sub_10000DF40(v4);
  sub_10035E0B8(v4);
  (*(v6 + 8))(v27, v5);
LABEL_9:
  sub_1001ED244(v13, &qword_1004D4CE0);
  return 19279;
}

uint64_t sub_10035D120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v7 = sub_100398DA8();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100398DD8();
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v13 = sub_100398CA8();
  sub_10000351C(v13, qword_1004DE5D0);
  v14 = sub_100398C88();
  v15 = sub_1003993D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "ObservabilityPeriodicPlanner got 'Timer Fired' signal from underlying timer", v16, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(a1 + 24);
    v20 = os_transaction_create();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v18;
    v21[4] = v19;
    v21[5] = a3;
    v21[6] = 0;
    aBlock[4] = v24;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001F77E8;
    aBlock[3] = v25;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_100398DC8();
    v28 = _swiftEmptyArrayStorage;
    sub_1001F8B1C();
    sub_1001E27A8(&unk_1004DC400);
    sub_1001F8B74();
    sub_100399658();
    sub_100399478();
    _Block_release(v22);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v27 + 8))(v9, v7);
    (*(v10 + 8))(v12, v26);
  }

  return result;
}

uint64_t sub_10035D484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v5 = sub_100398CA8();
  sub_10000351C(v5, qword_1004DE5D0);
  v6 = sub_100398C88();
  v7 = sub_1003993F8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting work…", v8, 2u);
  }

  swift_beginAccess();
  v9 = *(a1 + 56);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;

    do
    {
      sub_100003554(v11, v13);
      sub_1000035B8(v13, v13[3]);
      sub_10034205C();
      sub_100003894(v13);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  sub_10035D604(a3);
  return sub_100009A2C();
}

uint64_t sub_10035D604(uint64_t (*a1)(void))
{
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100398CA8();
  sub_10000351C(v2, qword_1004DE5D0);
  v3 = sub_100398C88();
  v4 = sub_1003993F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Work is done.", v5, 2u);
  }

  return a1();
}

uint64_t sub_10035D6F8()
{
  sub_1001F6D68(v0 + 16);
  sub_100003894(v0 + 32);
  sub_100003894(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_10035D770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C6544776F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6954776F6CLL && a2 == 0xE700000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C654468676968 && a2 == 0xE900000000000079 || (sub_1003999B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D695468676968 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10035D8DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001E27A8(&qword_1004DC418);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_1000035B8(a1, a1[3]);
  sub_10035E1E4();
  sub_100399BC8();
  if (v2)
  {
    return sub_100003894(a1);
  }

  v33 = 0;
  v9 = sub_100399888();
  v11 = v10;
  v27 = v9;
  v32 = 1;
  v12 = sub_100399878();
  v14 = v13;
  v26 = v12;
  v31 = 2;
  v15 = sub_100399888();
  v24 = v16;
  v25 = v15;
  v30 = 3;
  v17 = sub_100399878();
  v18 = v8;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  v29 = v11 & 1;
  v28 = v24 & 1;
  result = sub_100003894(a1);
  *a2 = v27;
  *(a2 + 8) = v29;
  v22 = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = v14;
  *(a2 + 32) = v22;
  *(a2 + 40) = v28;
  *(a2 + 48) = v17;
  *(a2 + 56) = v20;
  return result;
}

uint64_t sub_10035DB28(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v8 - 8);
  v10 = v33 - v9;
  v11 = sub_100398DA8();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100398DD8();
  v34 = *(v14 - 8);
  v35 = v14;
  __chkstk_darwin(v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v18 = qword_1004DA0A0;
  v33[1] = a3;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_100398CA8();
  sub_10000351C(v19, qword_1004DE5D0);
  v20 = sub_100398C88();
  v21 = sub_1003993D8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33[0] = v17;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "ObservabilityPeriodicPlanner got 'Timer Fired' signal from underlying timer", v22, 2u);
    v17 = v33[0];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = *(a1 + 24);
    v26 = os_transaction_create();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v24;
    v27[4] = v25;
    v27[5] = sub_10035E030;
    v27[6] = v17;
    aBlock[4] = sub_10035E358;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001F77E8;
    aBlock[3] = &unk_10047FC68;
    v28 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_100398DC8();
    v37 = _swiftEmptyArrayStorage;
    sub_1001F8B1C();
    sub_1001E27A8(&unk_1004DC400);
    sub_1001F8B74();
    sub_100399658();
    sub_100399478();
    _Block_release(v28);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v13, v11);
    (*(v34 + 8))(v16, v35);
  }

  else
  {
    a2();
    v29 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_lock;
    [*(a4 + OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_lock) lock];
    v30 = sub_100397748();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
    v31 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_scheduledTime;
    swift_beginAccess();
    sub_1001E2910(v10, a4 + v31);
    swift_endAccess();
    [*(a4 + v29) unlock];
  }
}

uint64_t sub_10035E03C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10035E0B8(uint64_t a1)
{
  v2 = type metadata accessor for PeriodicWorkRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10035E114(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10035E170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10035E1E4()
{
  result = qword_1004DC420;
  if (!qword_1004DC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DC420);
  }

  return result;
}

unint64_t sub_10035E24C()
{
  result = qword_1004DC430;
  if (!qword_1004DC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DC430);
  }

  return result;
}

unint64_t sub_10035E2A4()
{
  result = qword_1004DC438;
  if (!qword_1004DC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DC438);
  }

  return result;
}

unint64_t sub_10035E2FC()
{
  result = qword_1004DC440;
  if (!qword_1004DC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DC440);
  }

  return result;
}

uint64_t sub_10035E364()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10035E3C0(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_scheduledTime;
  sub_100397608();
  v5 = sub_100397748();
  (*(*(v5 - 8) + 56))(v2 + v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_lock;
  *(v2 + v6) = [objc_allocWithZone(APUnfairLock) initWithOptions:1];
  v7 = v2 + OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_xpcActivity;
  sub_100003554(a1, v2 + OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_xpcActivity);
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  sub_1001F54B4(v7, v8);
  v10 = *(v9 + 16);

  v10(v11, &off_10047FE08, v8, v9);
  swift_endAccess();
  sub_100003894(a1);
  return v2;
}

id sub_10035E50C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100397748();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = sub_1001E27A8(&qword_1004D4CE0);
  v12 = __chkstk_darwin(v11 - 8);
  v45 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v40 - v15;
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_lock;
  [*(v2 + OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_lock) lock];
  v20 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_scheduledTime;
  swift_beginAccess();
  v44 = v20;
  sub_1001E2838(v2 + v20, v18);
  sub_1001E2838(v18, v16);
  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
    sub_1001E28A8(v18);
    sub_1001E28A8(v16);
  }

  else
  {
    (*(v5 + 32))(v10, v16, v4);
    v21 = sub_1003976A8();
    (*(v5 + 8))(v10, v4);
    sub_1001E28A8(v18);
    if ((v21 & 1) == 0)
    {
      return [*(v2 + v19) unlock];
    }
  }

  v46 = v19;
  v47 = v2;
  sub_1003993D8();
  v22 = sub_100004218(0, &qword_1004D5D30);
  v42 = "";
  v43 = v22;
  v23 = sub_1003995A8();
  v41 = sub_1001E27A8(&qword_1004D5860);
  v24 = swift_allocObject();
  v40 = xmmword_1003C9930;
  *(v24 + 16) = xmmword_1003C9930;
  v25 = sub_100397658();
  v26 = a1;
  v28 = v27;
  *(v24 + 56) = &type metadata for String;
  v29 = sub_100206BA0();
  *(v24 + 64) = v29;
  *(v24 + 32) = v25;
  *(v24 + 40) = v28;
  sub_100398B98();

  sub_100397738();
  LOBYTE(v25) = sub_100397698();
  (*(v5 + 8))(v8, v4);
  if (v25)
  {
    v30 = v45;
    (*(v5 + 16))(v45, v26, v4);
    (*(v5 + 56))(v30, 0, 1, v4);
    v2 = v47;
    v31 = v44;
    swift_beginAccess();
    sub_1001E2910(v30, v2 + v31);
    swift_endAccess();
    v32 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_xpcActivity;
    swift_beginAccess();
    sub_100003554(v2 + v32, v48);
    v33 = v49;
    v34 = v50;
    sub_1000035B8(v48, v49);
    (*(v34 + 32))(v26, v33, v34);
    sub_100003894(v48);
  }

  else
  {
    sub_1003993E8();
    v35 = sub_1003995A8();
    v36 = swift_allocObject();
    *(v36 + 16) = v40;
    v37 = sub_100397618();
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v29;
    *(v36 + 32) = v37;
    *(v36 + 40) = v38;
    sub_100398B98();

    v2 = v47;
  }

  v19 = v46;
  return [*(v2 + v19) unlock];
}

uint64_t sub_10035EA50()
{
  sub_1001F6D68(v0 + 16);
  sub_1001E28A8(v0 + OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_scheduledTime);
  sub_100003894(v0 + OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_xpcActivity);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ObservabilityXPCTimer()
{
  result = qword_1004DC528;
  if (!qword_1004DC528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035EB30()
{
  sub_1001E2664();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10035EBE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_scheduledTime;
  swift_beginAccess();
  return sub_1001E2838(v3 + v4, a1);
}

uint64_t sub_10035EC64(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_100397748();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1();
  }

  v14 = Strong;
  v25 = a1;
  v24[3] = sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v15 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1003C9930;
  v17 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_scheduledTime;
  swift_beginAccess();
  sub_1001E2838(v3 + v17, v12);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_1001E28A8(v12);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_1001E28A8(v12);
    v18 = sub_100397658();
    v19 = v21;
    (*(v7 + 8))(v9, v6);
  }

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100206BA0();
  v22 = 7104878;
  if (v19)
  {
    v22 = v18;
  }

  v23 = 0xE300000000000000;
  if (v19)
  {
    v23 = v19;
  }

  *(v16 + 32) = v22;
  *(v16 + 40) = v23;
  sub_100398B98();

  sub_10035DB28(v14, v25, a2, v3);
  swift_unknownObjectRelease();
}

id sub_10035EF80(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_1001E27A8(&qword_1004D4CE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  a1(v6);
  v9 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_lock;
  [*(a3 + OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_lock) lock];
  v10 = sub_100397748();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_scheduledTime;
  swift_beginAccess();
  sub_1001E2910(v8, a3 + v11);
  swift_endAccess();
  return [*(a3 + v9) unlock];
}

uint64_t sub_10035F0A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100398DA8();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100398DF8();
  v54 = *(v57 - 8);
  v6 = __chkstk_darwin(v57);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v42 - v8;
  v9 = sub_100399468();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100399438();
  __chkstk_darwin(v44);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100398DD8();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - v15;
  sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v17 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1003C9930;
  v19 = a1;
  sub_1001E2838(a1, v16);
  v20 = sub_100397748();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v16, 1, v20) == 1)
  {
    sub_1001E28A8(v16);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = sub_100397618();
    v23 = v24;
    (*(v21 + 8))(v16, v20);
  }

  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100206BA0();
  v25 = 7104878;
  if (v23)
  {
    v25 = v22;
  }

  v26 = 0xE300000000000000;
  if (v23)
  {
    v26 = v23;
  }

  *(v18 + 32) = v25;
  *(v18 + 40) = v26;
  sub_100398B98();

  v27 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_lock;
  [*(v2 + OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_lock) lock];
  v28 = OBJC_IVAR____TtC7Metrics21ObservabilityXPCTimer_scheduledTime;
  swift_beginAccess();
  sub_10035FA5C(v19, v2 + v28);
  swift_endAccess();
  [*(v2 + v27) unlock];
  v29 = objc_opt_self();
  sub_100004218(0, &qword_1004D4CF0);
  v30 = [v29 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = [v31 regularJobDaemonStartDelay];
    if (v32)
    {
      v33 = v32;
      [v32 doubleValue];
    }
  }

  swift_unknownObjectRelease();
  sub_100004218(0, &qword_1004D40C0);
  v34 = v43;
  sub_100398DC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000042F0(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_100004380(&qword_1004D40D8, &qword_1004D40D0);
  sub_100399658();
  (*(v47 + 104))(v46, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v48);
  v35 = sub_100399488();
  v36 = v49;
  sub_100398DE8();
  v37 = v50;
  sub_100398E38();
  v54 = *(v54 + 8);
  (v54)(v36, v57);
  aBlock[4] = sub_10035FACC;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001F77E8;
  aBlock[3] = &unk_10047FE58;
  v38 = _Block_copy(aBlock);

  sub_100398DC8();
  v58 = _swiftEmptyArrayStorage;
  sub_1000042F0(&qword_1004D40A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001E27A8(&unk_1004DC400);
  sub_100004380(&qword_1004D40B0, &unk_1004DC400);
  v39 = v53;
  v40 = v56;
  sub_100399658();
  sub_100399448();
  _Block_release(v38);

  (*(v55 + 8))(v39, v40);
  (*(v51 + 8))(v34, v52);
  (v54)(v37, v57);
}

uint64_t sub_10035F938()
{
  sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v0 = sub_1003995A8();
  sub_100398B98();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10035D0E4(result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10035FA5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D4CE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035FAD4()
{
  sub_1003996F8(17);

  v1._countAndFlagsBits = sub_100399998();
  sub_100399068(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_100399068(v2);
  v3._countAndFlagsBits = sub_1003991A8();
  sub_100399068(v3);

  return 0x6172676F74736968;
}

uint64_t sub_10035FBEC()
{
  v1 = v0;
  v2 = sub_100397748();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BatchID();
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084CC(v1, v11, type metadata accessor for ObservabilitySignal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v16 = *v11;
        v17 = v11[8];
        v26[0] = 0;
        v26[1] = 0xE000000000000000;
        sub_1003996F8(34);
        v33._object = 0x80000001004395A0;
        v33._countAndFlagsBits = 0xD000000000000010;
        sub_100399068(v33);
        v24 = v16;
        v25 = v17;
        sub_1003997C8();
        v34._countAndFlagsBits = 0x74616220726F6620;
        v34._object = 0xEE00203A73656863;
        sub_100399068(v34);
        v18 = sub_1003991A8();
        v20 = v19;

        v35._countAndFlagsBits = v18;
        v35._object = v20;
        sub_100399068(v35);

        return v26[0];
      }

      if (EnumCaseMultiPayload != 7)
      {
        return 0x732064616F6C7075;
      }

      v13 = *v11;
      v26[0] = 0;
      v26[1] = 0xE000000000000000;
      sub_1003996F8(22);

      strcpy(v26, "will upload ");
      BYTE5(v26[1]) = 0;
      HIWORD(v26[1]) = -5120;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v26[0] = 0;
      v26[1] = 0xE000000000000000;
      sub_1003996F8(29);
      v41._countAndFlagsBits = 0xD00000000000001BLL;
      v41._object = 0x80000001004395C0;
      sub_100399068(v41);
      sub_1003992C8();
      return v26[0];
    }

    (*(v3 + 32))(v5, v11, v2);
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_1003996F8(19);

    v26[0] = 0xD000000000000011;
    v26[1] = 0x80000001004395E0;
    sub_10020DA44();
    v32._countAndFlagsBits = sub_100399998();
    sub_100399068(v32);

    v15 = v26[0];
    (*(v3 + 8))(v5, v2);
    return v15;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v11;
      v26[0] = 0;
      v26[1] = 0xE000000000000000;
      sub_1003996F8(26);

      v26[0] = 0xD000000000000010;
      v26[1] = 0x8000000100439600;
LABEL_11:
      v24 = v13;
      v30._countAndFlagsBits = sub_100399998();
      sub_100399068(v30);

      v31._countAndFlagsBits = 0x7365686374616220;
      v31._object = 0xE800000000000000;
      sub_100399068(v31);
      return v26[0];
    }

    sub_100345B28(v11, v8);
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_1003996F8(17);
    v40._countAndFlagsBits = 0x7865206863746162;
    v40._object = 0xEF203A6465726970;
    sub_100399068(v40);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v21 = *(v11 + 1);
    v22 = sub_1001E27A8(&qword_1004DABE8);
    sub_100345B28(&v11[*(v22 + 64)], v8);
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_1003996F8(63);
    v36._countAndFlagsBits = 0xD00000000000001DLL;
    v36._object = 0x8000000100439620;
    sub_100399068(v36);
    sub_1003992C8();
    v37._object = 0x8000000100439640;
    v37._countAndFlagsBits = 0xD000000000000010;
    sub_100399068(v37);
    v24 = v21;
    v38._countAndFlagsBits = sub_100399998();
    sub_100399068(v38);

    v39._countAndFlagsBits = 0x206863746162202CLL;
    v39._object = 0xEC000000203A4449;
    sub_100399068(v39);
LABEL_17:
    sub_1003997C8();
    v15 = v26[0];
    sub_10000E490(v8, type metadata accessor for BatchID);
    return v15;
  }

  v14 = *(v11 + 1);
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1003996F8(42);
  v27._countAndFlagsBits = 0xD000000000000017;
  v27._object = 0x8000000100439660;
  sub_100399068(v27);
  sub_1003992C8();
  v28._countAndFlagsBits = 0x73746E657665202CLL;
  v28._object = 0xEF203A746E756F43;
  sub_100399068(v28);
  v24 = v14;
  v29._countAndFlagsBits = sub_100399998();
  sub_100399068(v29);

  return v26[0];
}

uint64_t sub_1003602D4(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v3 = sub_100397748();
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BatchID();
  v6 = __chkstk_darwin(v5 - 8);
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v77 = &v70 - v9;
  __chkstk_darwin(v8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for ObservabilitySignal();
  v13 = __chkstk_darwin(v12);
  v73 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v72 = &v70 - v16;
  v17 = __chkstk_darwin(v15);
  v71 = (&v70 - v18);
  v19 = __chkstk_darwin(v17);
  v74 = &v70 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v70 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = (&v70 - v25);
  v27 = __chkstk_darwin(v24);
  v29 = &v70 - v28;
  __chkstk_darwin(v27);
  v31 = &v70 - v30;
  v32 = sub_1001E27A8(&unk_1004DC7E0);
  v33 = __chkstk_darwin(v32 - 8);
  v35 = &v70 - v34;
  v36 = (&v70 + *(v33 + 56) - v34);
  sub_1000084CC(v79, &v70 - v34, type metadata accessor for ObservabilitySignal);
  v37 = a2;
  v38 = v36;
  sub_1000084CC(v37, v36, type metadata accessor for ObservabilitySignal);
  v39 = v35;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v45 = v23;
    v47 = v77;
    v46 = v78;
    if (EnumCaseMultiPayload > 1)
    {
      v41 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        sub_1000084CC(v39, v26, type metadata accessor for ObservabilitySignal);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v43 = *v26;
          v44 = *v36;
          goto LABEL_15;
        }

        goto LABEL_45;
      }

      v66 = v45;
      sub_1000084CC(v39, v45, type metadata accessor for ObservabilitySignal);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_100345B28(v36, v46);
        v54 = sub_100397A78();
        sub_10000E490(v46, type metadata accessor for BatchID);
        v65 = v66;
LABEL_31:
        sub_10000E490(v65, type metadata accessor for BatchID);
        goto LABEL_39;
      }

      v68 = v66;
    }

    else
    {
      v41 = v39;
      if (!EnumCaseMultiPayload)
      {
        sub_1000084CC(v39, v31, type metadata accessor for ObservabilitySignal);
        v48 = *(v31 + 1);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_45;
        }

        if (*v31 == *v36)
        {
          v49 = v48 == *(v36 + 1);
          goto LABEL_36;
        }

LABEL_49:
        sub_10000E490(v41, type metadata accessor for ObservabilitySignal);
        goto LABEL_46;
      }

      sub_1000084CC(v39, v29, type metadata accessor for ObservabilitySignal);
      v60 = *(v29 + 1);
      v61 = *(sub_1001E27A8(&qword_1004DABE8) + 64);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v62 = *v29;
        v63 = *v36;
        v64 = *(v36 + 1);
        sub_100345B28(&v29[v61], v11);
        sub_100345B28(v36 + v61, v47);
        if (v62 != v63 || v60 != v64)
        {
          sub_10000E490(v47, type metadata accessor for BatchID);
          sub_10000E490(v11, type metadata accessor for BatchID);
          goto LABEL_49;
        }

        v54 = sub_100397A78();
        sub_10000E490(v47, type metadata accessor for BatchID);
        v65 = v11;
        goto LABEL_31;
      }

      v68 = &v29[v61];
    }

    sub_10000E490(v68, type metadata accessor for BatchID);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v41 = v35;
      if (EnumCaseMultiPayload == 7)
      {
        v42 = v73;
        sub_1000084CC(v35, v73, type metadata accessor for ObservabilitySignal);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v43 = *v42;
          v44 = *v36;
LABEL_15:
          v49 = v43 == *&v44;
          goto LABEL_36;
        }

        goto LABEL_45;
      }

      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_10000E490(v35, type metadata accessor for ObservabilitySignal);
        v54 = 1;
        return v54 & 1;
      }

LABEL_45:
      sub_100360E98(v41);
LABEL_46:
      v54 = 0;
      return v54 & 1;
    }

    v41 = v35;
    v56 = v72;
    sub_1000084CC(v35, v72, type metadata accessor for ObservabilitySignal);
    v57 = *v56;
    v58 = *(v56 + 16);
    if (swift_getEnumCaseMultiPayload() != 6)
    {

      goto LABEL_45;
    }

    v59 = *(v36 + 8);
    if (*(v56 + 8))
    {
      if (v57 != *v36)
      {
        v59 = 0;
      }

      if (v59 != 1)
      {
LABEL_24:

        goto LABEL_49;
      }
    }

    else
    {
      if (v57 != *v36)
      {
        LOBYTE(v59) = 1;
      }

      if (v59)
      {
        goto LABEL_24;
      }
    }

    v54 = sub_100363FB8(v58, *(v36 + 2));

LABEL_39:
    sub_10000E490(v41, type metadata accessor for ObservabilitySignal);
    return v54 & 1;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v41 = v35;
    v67 = v71;
    sub_1000084CC(v35, v71, type metadata accessor for ObservabilitySignal);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v49 = *v67 == *v36;
LABEL_36:
      v54 = v49;
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  v50 = v74;
  sub_1000084CC(v35, v74, type metadata accessor for ObservabilitySignal);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    (*(v75 + 8))(v50, v76);
    v41 = v35;
    goto LABEL_45;
  }

  v52 = v75;
  v51 = v76;
  v53 = v70;
  (*(v75 + 32))(v70, v38, v76);
  v54 = sub_1003976F8();
  v55 = *(v52 + 8);
  v55(v53, v51);
  v55(v50, v51);
  sub_10000E490(v35, type metadata accessor for ObservabilitySignal);
  return v54 & 1;
}

void sub_100360B48()
{
  sub_100360C6C();
  if (v0 <= 0x3F)
  {
    sub_100360CD0();
    if (v1 <= 0x3F)
    {
      sub_100360D44();
      if (v2 <= 0x3F)
      {
        sub_100360D74(319, &qword_1004DC788, type metadata accessor for BatchID);
        if (v3 <= 0x3F)
        {
          sub_100360D74(319, &qword_1004DC790, &type metadata accessor for Date);
          if (v4 <= 0x3F)
          {
            sub_100360DC0();
            if (v5 <= 0x3F)
            {
              sub_100360DF0();
              if (v6 <= 0x3F)
              {
                sub_100360E68();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100360C6C()
{
  if (!qword_1004DC770)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004DC770);
    }
  }
}

void sub_100360CD0()
{
  if (!qword_1004DC778)
  {
    type metadata accessor for BatchID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1004DC778);
    }
  }
}

void *sub_100360D44()
{
  result = qword_1004DC780;
  if (!qword_1004DC780)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1004DC780);
  }

  return result;
}

void sub_100360D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_100360DC0()
{
  result = qword_1004DC798;
  if (!qword_1004DC798)
  {
    result = &type metadata for Double;
    atomic_store(&type metadata for Double, &qword_1004DC798);
  }

  return result;
}

void sub_100360DF0()
{
  if (!qword_1004DC7A0)
  {
    sub_1001E27F0(&qword_1004DAD78);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004DC7A0);
    }
  }
}

void *sub_100360E68()
{
  result = qword_1004DC7B0;
  if (!qword_1004DC7B0)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1004DC7B0);
  }

  return result;
}

uint64_t sub_100360E98(uint64_t a1)
{
  v2 = sub_1001E27A8(&unk_1004DC7E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100360F24()
{
  sub_1000035B8((v0 + 16), *(v0 + 40));
  v1 = sub_10033F600(0xD000000000000012, 0x8000000100439720);
  if (!v1)
  {
    goto LABEL_12;
  }

  if (!*(v1 + 16) || (sub_1001EC1DC(0x636146656C616373, 0xEB00000000726F74), (v2 & 1) == 0))
  {

LABEL_12:
    v7 = 0;
    LOBYTE(v6) = 1;
    return v7 | (v6 << 32);
  }

  swift_unknownObjectRetain();

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  [v3 floatValue];
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = v5 >= 1.0 || v5 < 0.0;
  v7 = LODWORD(v5);
  if (v6)
  {
    v7 = 0;
  }

  return v7 | (v6 << 32);
}

uint64_t sub_100361080()
{
  sub_1000035B8((*v0 + 16), *(*v0 + 40));
  sub_1001E27A8(&unk_1004D43E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9930;
  *(inited + 32) = 0x636146656C616373;
  *(inited + 40) = 0xEB00000000726F74;
  *(inited + 48) = sub_1003992D8();
  v2 = sub_1001EC30C(inited);
  swift_setDeallocating();
  sub_100361174(inited + 32);
  sub_10033FA7C(v2, 0xD000000000000012, 0x8000000100439720);
}

uint64_t sub_100361174(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DABD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1003611DC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100361208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100361250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003612B8(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004DC8A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035B8(a1, a1[3]);
  sub_100361F14();
  sub_100399BF8();
  v16 = 0;
  sub_100399958();
  if (!v2)
  {
    v15 = 1;
    sub_100399918();
    v14 = 2;
    sub_100399918();
    v13 = 3;
    sub_100399918();
    v12 = 4;
    sub_100399938();
    v11 = *(v3 + 80);
    v10[15] = 5;
    sub_1001E27A8(&qword_1004D5BD0);
    sub_100361FD0(&qword_1004DC8B0);
    sub_100399948();
    v10[14] = 6;
    sub_100399918();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100361554()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x65676E6172;
  if (v1 != 5)
  {
    v3 = 0x7265506563617267;
  }

  v4 = 0x746E65696C63;
  if (v1 != 3)
  {
    v4 = 0x65736F70727570;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F72477265707573;
  if (v1 != 1)
  {
    v5 = 0x646F69726570;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100361628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100361740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100361650(uint64_t a1)
{
  v2 = sub_100361F14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10036168C(uint64_t a1)
{
  v2 = sub_100361F14();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1003616C8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100361988(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_100361740(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F72477265707573 && a2 == 0xEA00000000007075 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F69726570 && a2 == 0xE600000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736F70727570 && a2 == 0xE700000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69)
  {

    return 6;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100361988@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001E27A8(&qword_1004DC890);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  sub_1000035B8(a1, a1[3]);
  sub_100361F14();
  sub_100399BC8();
  if (v2)
  {
    return sub_100003894(a1);
  }

  LOBYTE(v49[0]) = 0;
  v10 = sub_1003998B8();
  v12 = v11;
  LOBYTE(v49[0]) = 1;
  v13 = sub_100399878();
  *(&v41 + 1) = v14;
  *&v41 = v13;
  LOBYTE(v49[0]) = 2;
  *&v39 = sub_100399878();
  *(&v39 + 1) = v15;
  LOBYTE(v49[0]) = 3;
  v36 = sub_100399878();
  v38 = v16;
  LOBYTE(v49[0]) = 4;
  v37 = 0;
  v17 = sub_100399898();
  v40 = 0;
  v18 = v17;
  v60 = v19 & 1;
  sub_1001E27A8(&qword_1004D5BD0);
  LOBYTE(v42) = 5;
  sub_100361FD0(&qword_1004DC8A0);
  v20 = v40;
  sub_1003998A8();
  if (v20)
  {
    v40 = v20;
    (*(v6 + 8))(v8, v5);
    sub_100003894(a1);
    v21 = v37;

    if (!v21)
    {
    }
  }

  else
  {
    v35 = v49[0];
    v61 = 6;
    v22 = sub_100399878();
    v40 = 0;
    v23 = *(v6 + 8);
    v24 = v22;
    v33 = v25;
    v23(v8, v5);
    *&v42 = v10;
    *(&v42 + 1) = v12;
    v43 = v41;
    v44 = v39;
    v26 = *(&v39 + 1);
    *&v45 = v36;
    v27 = v38;
    *(&v45 + 1) = v38;
    *&v46 = v18;
    v37 = v18;
    v34 = v60;
    BYTE8(v46) = v60;
    v28 = v35;
    *&v47 = v35;
    *(&v47 + 1) = v24;
    v29 = v33;
    v48 = v33;
    sub_100361F68(&v42, v49);
    sub_100003894(a1);
    v49[0] = v10;
    v49[1] = v12;
    v50 = v41;
    v51 = v39;
    v52 = v26;
    v53 = v36;
    v54 = v27;
    v55 = v37;
    v56 = v34;
    v57 = v28;
    v58 = v24;
    v59 = v29;
    result = sub_100361FA0(v49);
    v30 = v47;
    *(a2 + 64) = v46;
    *(a2 + 80) = v30;
    *(a2 + 96) = v48;
    v31 = v43;
    *a2 = v42;
    *(a2 + 16) = v31;
    v32 = v45;
    *(a2 + 32) = v44;
    *(a2 + 48) = v32;
  }

  return result;
}

unint64_t sub_100361F14()
{
  result = qword_1004DC898;
  if (!qword_1004DC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DC898);
  }

  return result;
}

uint64_t sub_100361FD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(&qword_1004D5BD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100362050()
{
  result = qword_1004DC8B8;
  if (!qword_1004DC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DC8B8);
  }

  return result;
}

unint64_t sub_1003620A8()
{
  result = qword_1004DC8C0;
  if (!qword_1004DC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DC8C0);
  }

  return result;
}

unint64_t sub_100362100()
{
  result = qword_1004DC8C8;
  if (!qword_1004DC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DC8C8);
  }

  return result;
}

uint64_t sub_100362154@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001E27A8(&qword_1004DABD8);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_100397AA8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_100397A88();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1003554A0(v8);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1003996F8(52);
    v20._object = 0x8000000100438650;
    v20._countAndFlagsBits = 0xD000000000000031;
    sub_100399068(v20);
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_100399068(v21);

    v22._countAndFlagsBits = 34;
    v22._object = 0xE100000000000000;
    sub_100399068(v22);
    v13 = v18;
    v14 = v19;
    sub_100355508();
    swift_allocError();
    *v15 = v13;
    v15[1] = v14;
    return swift_willThrow();
  }

  else
  {

    v17 = *(v10 + 32);
    v17(v12, v8, v9);
    return (v17)(a3, v12, v9);
  }
}

uint64_t sub_100362378(unint64_t a1)
{
  v1 = a1;
  if (a1 > 2)
  {
    sub_1003996F8(64);
    v4._object = 0x8000000100439780;
    v4._countAndFlagsBits = 0xD00000000000003DLL;
    sub_100399068(v4);
    v5._countAndFlagsBits = sub_100399998();
    sub_100399068(v5);

    v6._countAndFlagsBits = 34;
    v6._object = 0xE100000000000000;
    sub_100399068(v6);
    sub_100355508();
    v1 = swift_allocError();
    *v2 = 0;
    v2[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_100362464(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_100362474(unint64_t a1)
{
  result = sub_100362464(a1);
  if (result == 9)
  {
    v2 = result;
    sub_1003996F8(64);
    v4._object = 0x8000000100439780;
    v4._countAndFlagsBits = 0xD00000000000003DLL;
    sub_100399068(v4);
    v5._countAndFlagsBits = sub_100399998();
    sub_100399068(v5);

    v6._countAndFlagsBits = 34;
    v6._object = 0xE100000000000000;
    sub_100399068(v6);
    sub_100355508();
    swift_allocError();
    *v3 = 0;
    v3[1] = 0xE000000000000000;
    swift_willThrow();
    return v2;
  }

  return result;
}

unint64_t sub_100362570(unint64_t result)
{
  if (result >= 2)
  {
    sub_1003996F8(63);
    v2._object = 0x8000000100439740;
    v2._countAndFlagsBits = 0xD00000000000003CLL;
    sub_100399068(v2);
    v3._countAndFlagsBits = sub_100399998();
    sub_100399068(v3);

    v4._countAndFlagsBits = 34;
    v4._object = 0xE100000000000000;
    sub_100399068(v4);
    sub_100355508();
    swift_allocError();
    *v1 = 0;
    v1[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t static ObservabilityManager.create(with:database:)(uint64_t a1, void *a2)
{
  sub_100003554(a1, v7);
  type metadata accessor for ObservabilityManagerBuilder();
  inited = swift_initStackObject();
  sub_100004A68(v7, inited + 16);
  *(inited + 56) = a2;
  v4 = a2;
  v5 = sub_10034E8C8();
  swift_setDeallocating();
  sub_100003894(inited + 16);

  return v5;
}

uint64_t ObservabilityManager.deinit()
{
  swift_unknownObjectRelease();
  sub_100350790(v0 + 24);
  return v0;
}

uint64_t ObservabilityManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_100350790(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Int sub_100362780()
{
  sub_100399B58();
  sub_100397AA8();
  sub_1003629F4(&qword_1004DCA48, &type metadata accessor for ExtendedUUID);
  sub_100398EC8();
  return sub_100399B88();
}

uint64_t sub_100362808()
{
  sub_100397AA8();
  sub_1003629F4(&qword_1004DCA48, &type metadata accessor for ExtendedUUID);

  return sub_100398EC8();
}

Swift::Int sub_10036288C()
{
  sub_100399B58();
  sub_100397AA8();
  sub_1003629F4(&qword_1004DCA48, &type metadata accessor for ExtendedUUID);
  sub_100398EC8();
  return sub_100399B88();
}

uint64_t sub_100362940()
{
  result = sub_100397AA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003629F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100362A94()
{
  [objc_opt_self() batchClass];
  swift_getObjCClassMetadata();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_100398F28();
  v2 = [v0 initWithPath:v1];

  if (v2)
  {
    v3 = [v2 nextMetric];
    if (v3)
    {
      v4 = v3;
      v5 = _swiftEmptyDictionarySingleton;
      while (1)
      {
        v7 = [swift_unknownObjectRetain() metric];
        v8 = [v4 metric];
        v9 = v5[2];
        if (v9)
        {
          v10 = sub_10034375C(v8);
          if (v11)
          {
            v9 = *(v5[7] + 8 * v10);
          }

          else
          {
            v9 = 0;
          }
        }

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v5;
        v14 = sub_10034375C(v7);
        v16 = v5[2];
        v17 = (v15 & 1) == 0;
        v18 = __OFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          goto LABEL_42;
        }

        v20 = v15;
        if (v5[3] < v19)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_16;
        }

        v24 = v2;
        v25 = v14;
        sub_10034B604();
        v14 = v25;
        v2 = v24;
        v5 = v59;
        if (v20)
        {
LABEL_4:
          *(v5[7] + 8 * v14) = v12;
          goto LABEL_5;
        }

LABEL_17:
        v5[(v14 >> 6) + 8] |= 1 << v14;
        *(v5[6] + 8 * v14) = v7;
        *(v5[7] + 8 * v14) = v12;
        v22 = v5[2];
        v18 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v18)
        {
          goto LABEL_43;
        }

        v5[2] = v23;
LABEL_5:
        v6 = [v2 nextMetric];
        swift_unknownObjectRelease_n();
        v4 = v6;
        if (!v6)
        {
          goto LABEL_25;
        }
      }

      sub_10034AD98(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_10034375C(v7);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_46;
      }

LABEL_16:
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    v5 = _swiftEmptyDictionarySingleton;
LABEL_25:
    v27 = 1 << *(v5 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v5[8];
    v30 = (v27 + 63) >> 6;

    v31 = 0;
    while (v29)
    {
LABEL_33:
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v34 = v33 | (v31 << 6);
      v35 = *(v5[6] + 8 * v34);
      if ((v35 - 2801) < 3)
      {
        v36 = *(v5[7] + 8 * v34);
        v37 = 2803 - v35;
        strcpy(v60, "metricsCount");
        BYTE5(v60[1]) = 0;
        HIWORD(v60[1]) = -5120;
        v61 = [objc_allocWithZone(NSNumber) initWithInteger:v36];
        v62 = 1701869940;
        v63 = 0xE400000000000000;
        v64 = [objc_allocWithZone(NSNumber) initWithInteger:v37];
        sub_1001E27A8(&unk_1004D7E70);
        v38 = sub_100399828();

        v39 = v60[0];
        v40 = v60[1];

        v41 = v61;
        v42 = sub_1001EC1DC(v60[0], v60[1]);
        if (v43)
        {
          goto LABEL_44;
        }

        *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v42;
        v44 = (v38[6] + 16 * v42);
        *v44 = v39;
        v44[1] = v40;
        *(v38[7] + 8 * v42) = v41;
        v45 = v38[2];
        v18 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v18)
        {
          goto LABEL_45;
        }

        v38[2] = v46;
        v47 = v62;
        v48 = v63;

        v49 = v64;
        v50 = sub_1001EC1DC(v62, v63);
        if (v51)
        {
          goto LABEL_44;
        }

        *(v38 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v50;
        v52 = (v38[6] + 16 * v50);
        *v52 = v47;
        v52[1] = v48;
        *(v38[7] + 8 * v50) = v49;
        v53 = v38[2];
        v18 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v18)
        {
          goto LABEL_45;
        }

        v38[2] = v54;

        sub_1001E27A8(&qword_1004D5A28);
        swift_arrayDestroy();
        v55 = objc_opt_self();
        v56 = sub_100398F28();
        sub_100004218(0, &qword_1004D5DC0);
        isa = sub_100398E48().super.isa;

        [v55 sendEvent:v56 customPayload:isa];
      }
    }

    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {

        swift_unknownObjectRelease();
        return;
      }

      v29 = v5[v32 + 8];
      ++v31;
      if (v29)
      {
        v31 = v32;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    sub_100399A98();
    __break(1u);
  }

  else
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v26 = sub_1003995A8();
    sub_100398B98();

    v58 = sub_100398F28();
    APSimulateCrash();
  }
}

id sub_100363154()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpiredObservabilityBatchesReporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003631C0(uint64_t a1, void *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v31 = v3;
  v32 = a2;
  while (v6)
  {
LABEL_11:
    v12 = sub_100399998();
    v14 = v13;
    v33.super.super.isa = sub_100399348().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a2;
    v34 = *a2;
    *a2 = 0x8000000000000000;
    v18 = sub_1001EC1DC(v12, v14);
    v19 = *(v16 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_24;
    }

    v22 = v17;
    if (*(v16 + 24) >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = v34;
        if (v17)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_10034B750();
        v25 = v34;
        if (v22)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10034AFFC(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_1001EC1DC(v12, v14);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_26;
      }

      v18 = v23;
      v25 = v34;
      if (v22)
      {
LABEL_4:
        v9 = v25[7];
        v10 = *(v9 + 8 * v18);
        *(v9 + 8 * v18) = v33;

        goto LABEL_5;
      }
    }

    v25[(v18 >> 6) + 8] |= 1 << v18;
    v26 = (v25[6] + 16 * v18);
    *v26 = v12;
    v26[1] = v14;
    *(v25[7] + 8 * v18) = v33;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_25;
    }

    v25[2] = v29;
LABEL_5:
    v6 &= v6 - 1;
    v3 = v31;
    a2 = v32;
    *v32 = v25;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_100399A98();
  __break(1u);
  return result;
}

unint64_t sub_10036340C()
{
  sub_1001E27A8(&unk_1004DAFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003EB210;
  strcpy((inited + 32), "date_MMDDHHmm");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_10036355C();
  *(inited + 56) = 0x73726F727265;
  *(inited + 64) = 0xE600000000000000;
  v6 = sub_10034BC00(_swiftEmptyArrayStorage);
  v2 = type metadata accessor for ObservabilityCommunicationReport();
  sub_1003631C0(*(v0 + *(v2 + 20)), &v6);
  sub_100004218(0, &qword_1004D43F0);
  isa = sub_100398E48().super.isa;

  *(inited + 72) = isa;
  v4 = sub_10031F9C0(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004DCA80);
  swift_arrayDestroy();
  return v4;
}

unint64_t sub_10036355C()
{
  v0 = sub_100397968();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100397918();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100397318();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100397868();
  sub_100397928();
  sub_100397888();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  sub_100004218(0, &qword_1004D4900);
  v12 = sub_100399578();
  sub_1001E27A8(&qword_1004D5860);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003EB200;
  result = sub_100397278();
  if (v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = result;
  result = sub_100397228();
  if (v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v13 + 96) = &type metadata for Int;
  *(v13 + 104) = &protocol witness table for Int;
  *(v13 + 72) = result;
  result = sub_100397248();
  if (v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v13 + 136) = &type metadata for Int;
  *(v13 + 144) = &protocol witness table for Int;
  *(v13 + 112) = result;
  result = sub_100397288();
  if ((v18 & 1) == 0)
  {
    *(v13 + 176) = &type metadata for Int;
    *(v13 + 184) = &protocol witness table for Int;
    if ((result & 0x8000000000000000) == 0)
    {
      v19 = 15 * (result / 0xF);
LABEL_9:
      *(v13 + 152) = v19;
      v21 = sub_100399588();

      (*(v9 + 8))(v11, v8);
      return v21;
    }

    v19 = -15 * (-result / 0xFuLL);
    if (v19 == result)
    {
      goto LABEL_9;
    }

    v20 = __OFSUB__(v19, 15);
    v19 -= 15;
    if (!v20)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

__n128 sub_1003638B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1003638E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100363930(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003639A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7265506563617267;
    v6 = 0x6E656B6F74;
    if (a1 != 8)
    {
      v6 = 0x65676E6172;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6144657269707865;
    if (a1 != 5)
    {
      v7 = 0x6F72477265707573;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701667182;
    v2 = 0x65736F70727570;
    v3 = 0x746E65696C63;
    if (a1 != 3)
    {
      v3 = 0x7461447472617473;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x61566D6F646E6172;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100363AE4(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004DCA98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035B8(a1, a1[3]);
  sub_100364CBC();
  sub_100399BF8();
  LOBYTE(v11) = 0;
  sub_100399958();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_100399938();
    LOBYTE(v11) = 2;
    sub_100399938();
    LOBYTE(v11) = 3;
    sub_100399918();
    LOBYTE(v11) = 4;
    sub_100399918();
    LOBYTE(v11) = 5;
    sub_100399918();
    LOBYTE(v11) = 6;
    sub_100399918();
    LOBYTE(v11) = 7;
    sub_100399918();
    LOBYTE(v11) = 8;
    sub_100399918();
    v11 = *(v3 + 144);
    v10[7] = 9;
    sub_1001E27A8(&qword_1004D5BD0);
    sub_100361FD0(&qword_1004DC8B0);
    sub_100399948();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100363DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100364368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100363E20(uint64_t a1)
{
  v2 = sub_100364CBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100363E5C(uint64_t a1)
{
  v2 = sub_100364CBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100363E98@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003646A4(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t sub_100363F24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_10036412C(v11, v13) & 1;
}

uint64_t sub_100363FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchID() - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_100345B8C(v13, v10);
        sub_100345B8C(v14, v7);
        v16 = sub_100397A78();
        sub_10035555C(v7);
        sub_10035555C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10036412C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1003999B8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a1 + 56);
  v8 = *(a2 + 56);
  if (v7)
  {
    if (!v8 || (*(a1 + 48) != *(a2 + 48) || v7 != v8) && (sub_1003999B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 72);
  v10 = *(a2 + 72);
  if (v9)
  {
    if (!v10 || (*(a1 + 64) != *(a2 + 64) || v9 != v10) && (sub_1003999B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 88);
  v12 = *(a2 + 88);
  if (v11)
  {
    if (!v12 || (*(a1 + 80) != *(a2 + 80) || v11 != v12) && (sub_1003999B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 104);
  v14 = *(a2 + 104);
  if (v13)
  {
    if (!v14 || (*(a1 + 96) != *(a2 + 96) || v13 != v14) && (sub_1003999B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 120);
  v16 = *(a2 + 120);
  if (v15)
  {
    if (!v16 || (*(a1 + 112) != *(a2 + 112) || v15 != v16) && (sub_1003999B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 136);
  v18 = *(a2 + 136);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_58;
    }

    return 0;
  }

  if (!v18 || (*(a1 + 128) != *(a2 + 128) || v17 != v18) && (sub_1003999B8() & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  v19 = *(a1 + 144);
  v20 = *(a2 + 144);
  result = (v19 | v20) == 0;
  if (v19 && v20)
  {
    v22 = *(a1 + 144);

    return sub_10020E914(v22, v20);
  }

  return result;
}

uint64_t sub_100364368(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61566D6F646E6172 && a2 == 0xEB0000000065756CLL || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736F70727570 && a2 == 0xE700000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1003999B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144657269707865 && a2 == 0xEA00000000006574 || (sub_1003999B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F72477265707573 && a2 == 0xEA00000000007075 || (sub_1003999B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69 || (sub_1003999B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1003646A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = sub_1001E27A8(&qword_1004DCA88);
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v31 - v6;
  sub_1000035B8(a1, a1[3]);
  sub_100364CBC();
  sub_100399BC8();
  if (v2)
  {
    sub_100003894(a1);
  }

  else
  {
    v45 = a2;
    LOBYTE(v57[0]) = 0;
    v8 = sub_1003998B8();
    v44 = v9;
    LOBYTE(v57[0]) = 1;
    v43 = sub_100399898();
    v76 = v10 & 1;
    LOBYTE(v57[0]) = 2;
    v42 = sub_100399898();
    v75 = v11 & 1;
    LOBYTE(v57[0]) = 3;
    *&v41 = sub_100399878();
    *(&v41 + 1) = v12;
    LOBYTE(v57[0]) = 4;
    *&v40 = sub_100399878();
    *(&v40 + 1) = v13;
    LOBYTE(v57[0]) = 5;
    *&v39 = sub_100399878();
    *(&v39 + 1) = v14;
    LOBYTE(v57[0]) = 6;
    v36 = sub_100399878();
    v37 = v8;
    v38 = v15;
    LOBYTE(v57[0]) = 7;
    v16 = sub_100399878();
    v18 = v17;
    v35 = v16;
    LOBYTE(v57[0]) = 8;
    v34 = sub_100399878();
    v20 = v19;
    sub_1001E27A8(&qword_1004D5BD0);
    v77 = 9;
    sub_100361FD0(&qword_1004DC8A0);
    sub_1003998A8();
    (*(v5 + 8))(v7, v46);
    v32 = v74;
    *&v47 = v37;
    *(&v47 + 1) = v44;
    *&v48 = v43;
    LODWORD(v46) = v76;
    BYTE8(v48) = v76;
    v21 = *(&v41 + 1);
    *&v49 = v42;
    v33 = v75;
    BYTE8(v49) = v75;
    v22 = *(&v40 + 1);
    v50 = v41;
    v23 = *(&v39 + 1);
    v51 = v40;
    v24 = v38;
    v52 = v39;
    *&v53 = v36;
    *(&v53 + 1) = v38;
    *&v54 = v35;
    *(&v54 + 1) = v18;
    *&v55 = v34;
    *(&v55 + 1) = v20;
    v56 = v74;
    sub_100364D10(&v47, v57);
    sub_100003894(a1);
    v57[0] = v37;
    v57[1] = v44;
    v57[2] = v43;
    v58 = v46;
    v59 = v42;
    v60 = v33;
    v61 = v41;
    v62 = v21;
    v63 = v40;
    v64 = v22;
    v65 = v39;
    v66 = v23;
    v67 = v36;
    v68 = v24;
    v69 = v35;
    v70 = v18;
    v71 = v34;
    v72 = v20;
    v73 = v32;
    result = sub_100364D48(v57);
    v26 = v54;
    v27 = v45;
    *(v45 + 96) = v53;
    *(v27 + 112) = v26;
    *(v27 + 128) = v55;
    *(v27 + 144) = v56;
    v28 = v50;
    *(v27 + 32) = v49;
    *(v27 + 48) = v28;
    v29 = v52;
    *(v27 + 64) = v51;
    *(v27 + 80) = v29;
    v30 = v48;
    *v27 = v47;
    *(v27 + 16) = v30;
  }

  return result;
}

unint64_t sub_100364CBC()
{
  result = qword_1004DCA90;
  if (!qword_1004DCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCA90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupConfigOutput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupConfigOutput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100364ECC()
{
  result = qword_1004DCAA0;
  if (!qword_1004DCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCAA0);
  }

  return result;
}

unint64_t sub_100364F24()
{
  result = qword_1004DCAA8;
  if (!qword_1004DCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCAA8);
  }

  return result;
}

unint64_t sub_100364F7C()
{
  result = qword_1004DCAB0[0];
  if (!qword_1004DCAB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1004DCAB0);
  }

  return result;
}

uint64_t sub_100364FD8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10036505C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v7 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((((v6 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v5;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v5 + (v10 | v15) + 1;
}

unsigned int *sub_100365188(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((((*(v5 + 64) + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(v5 + 64) + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_14:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v18 = *(v6 + 56);

      return v18();
    }
  }

  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

BOOL sub_10036534C(uint64_t a1, uint64_t a2)
{
  if (sub_100398F08() & 1) != 0 && (v4 = type metadata accessor for SixNumberSummary(), (sub_100398F08()) && (sub_100398F08() & 1) != 0 && (sub_100398F08() & 1) != 0 && *(a1 + *(v4 + 56)) == *(a2 + *(v4 + 56)))
  {
    return *(a1 + *(v4 + 60)) == *(a2 + *(v4 + 60));
  }

  else
  {
    return 0;
  }
}

void sub_100365448()
{
  sub_100397748();
  if (v0 <= 0x3F)
  {
    sub_1003654BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1003654BC()
{
  if (!qword_1004DCBB8)
  {
    sub_100397748();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004DCBB8);
    }
  }
}

uint64_t sub_100365528(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v55 = sub_100397748();
  v3 = *(v55 - 8);
  v4 = __chkstk_darwin(v55);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v53 = &v51 - v7;
  v8 = __chkstk_darwin(v6);
  v54 = &v51 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = type metadata accessor for PeriodicWorkRequest();
  v16 = __chkstk_darwin(v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v51 - v20;
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  v24 = sub_1001E27A8(&qword_1004DCBE8);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v51 - v26;
  v28 = &v51 + *(v25 + 56) - v26;
  sub_10000E42C(a1, &v51 - v26);
  sub_10000E42C(v56, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10000E42C(v27, v21);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v55;
        (*(v3 + 32))(v12, v28, v55);
        v31 = sub_1003976F8();
        v32 = *(v3 + 8);
        v32(v12, v30);
        v32(v21, v30);
LABEL_17:
        sub_10035E0B8(v27);
        return v31 & 1;
      }

      (*(v3 + 8))(v21, v55);
      goto LABEL_13;
    }

    sub_10000E42C(v27, v18);
    v33 = *(sub_1001E27A8(&qword_1004DBA00) + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v34 = *(v3 + 32);
      v36 = v54;
      v35 = v55;
      v34(v54, v28, v55);
      v37 = v53;
      v34(v53, &v18[v33], v35);
      v38 = &v28[v33];
      v39 = v52;
      v34(v52, v38, v35);
      v40 = sub_1003976F8();
      v41 = *(v3 + 8);
      v41(v18, v35);
      if ((v40 & 1) == 0)
      {
        v41(v39, v35);
        v41(v37, v35);
        v41(v36, v35);
        sub_10035E0B8(v27);
        goto LABEL_14;
      }

      v42 = sub_1003976F8();
      v43 = v39;
      v31 = v42;
      v41(v43, v35);
      v41(v37, v35);
      v44 = v36;
      v45 = v35;
LABEL_16:
      v41(v44, v45);
      goto LABEL_17;
    }

    v46 = *(v3 + 8);
    v47 = &v18[v33];
    v48 = v55;
    v46(v47, v55);
    v46(v18, v48);
  }

  else
  {
    sub_10000E42C(v27, v23);
    if (!swift_getEnumCaseMultiPayload())
    {
      v49 = v55;
      (*(v3 + 32))(v14, v28, v55);
      v31 = sub_1003976F8();
      v41 = *(v3 + 8);
      v41(v14, v49);
      v44 = v23;
      v45 = v49;
      goto LABEL_16;
    }

    (*(v3 + 8))(v23, v55);
  }

LABEL_13:
  sub_100365A4C(v27);
LABEL_14:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_100365A4C(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DCBE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100365AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for UtcDate();
  __chkstk_darwin(v18);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001E27A8(&qword_1004DCEC8);
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v15 - v5;
  v7 = type metadata accessor for ObservabilityReportWorkerParamsRange(0);
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_10036886C();
  v10 = v20;
  sub_100399BC8();
  if (v10)
  {
    return sub_100003894(a1);
  }

  v20 = a1;
  v11 = v17;
  v12 = v9;
  v24 = 0;
  sub_1003688C0();
  v13 = v19;
  sub_1003998D8();
  *v12 = v25;
  v23 = 1;
  sub_10036857C(&qword_1004DCEE0, type metadata accessor for UtcDate);
  sub_1003998D8();
  sub_1003689BC(v4, &v12[*(v7 + 20)], type metadata accessor for UtcDate);
  v21 = 2;
  sub_100368914();
  sub_1003998D8();
  (*(v11 + 8))(v6, v13);
  v12[*(v7 + 24)] = v22;
  sub_1003685E0(v12, v16, type metadata accessor for ObservabilityReportWorkerParamsRange);
  sub_100003894(v20);
  return sub_100368648(v12, type metadata accessor for ObservabilityReportWorkerParamsRange);
}

uint64_t sub_100365E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for UtcDate();
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001E27A8(&qword_1004DCEF0);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ObservabilityReportWorkerParamsTime(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_100368968();
  sub_100399BC8();
  if (!v2)
  {
    v12 = v15;
    sub_10036857C(&qword_1004DCEE0, type metadata accessor for UtcDate);
    v13 = v17;
    sub_1003998D8();
    (*(v16 + 8))(v8, v6);
    sub_1003689BC(v13, v11, type metadata accessor for UtcDate);
    sub_1003689BC(v11, v12, type metadata accessor for ObservabilityReportWorkerParamsTime);
  }

  return sub_100003894(a1);
}

uint64_t sub_1003660A8()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F706572;
  }
}

uint64_t sub_1003660FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100368C54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100366124(uint64_t a1)
{
  v2 = sub_10036886C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100366160(uint64_t a1)
{
  v2 = sub_10036886C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003661B4(uint64_t a1)
{
  v2 = sub_100368968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003661F0(uint64_t a1)
{
  v2 = sub_100368968();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_100366244()
{
  result = [objc_opt_self() isAppleInternalInstall];
  if (result)
  {
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for ObservabilityReportWorkerParamsRange(0);
    sub_10036857C(&qword_1004DCD78, type metadata accessor for ObservabilityReportWorkerParamsRange);
    sub_100397DC8();

    swift_allocObject();
    swift_weakInit();
    type metadata accessor for ObservabilityReportWorkerParamsTime(0);
    sub_10036857C(&unk_1004DCD80, type metadata accessor for ObservabilityReportWorkerParamsTime);
    sub_100397DC8();
  }

  return result;
}

uint64_t sub_100366400()
{

  swift_unknownObjectRelease();
  sub_100003894(v0 + 40);
  sub_100003894(v0 + 80);

  sub_100003894(v0 + 136);
  sub_100003894(v0 + 176);
  sub_100003894(v0 + 216);
  sub_100003894(v0 + 256);
  sub_100003894(v0 + 296);
  sub_100003894(v0 + 336);
  return v0;
}

uint64_t sub_100366470()
{
  sub_100366400();

  return swift_deallocClassInstance();
}

uint64_t sub_1003664C8(uint64_t a1)
{
  v2 = type metadata accessor for UtcDate();
  __chkstk_darwin(v2 - 8);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TimeRange();
  v6 = __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1701736270;
  }

  v12 = Strong;
  v13 = type metadata accessor for ObservabilityReportWorkerParamsRange(0);
  sub_1003685E0(a1 + *(v13 + 20), v4, type metadata accessor for UtcDate);
  v14 = *(v13 + 24);
  v29 = a1;
  v15 = *(a1 + v14);
  v16 = sub_100397748();
  (*(*(v16 - 8) + 32))(v10, v4, v16);
  v10[*(v5 + 20)] = v15;
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v17 = sub_100398CA8();
  sub_10000351C(v17, qword_1004DE5D0);
  sub_1003685E0(v10, v8, type metadata accessor for TimeRange);
  v18 = sub_100398C88();
  v19 = sub_1003993D8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315138;
    v22 = sub_1003568B8();
    v28[1] = v12;
    v24 = v23;
    sub_100368648(v8, type metadata accessor for TimeRange);
    v25 = sub_100005700(v22, v24, &v30);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Running manual reports for %s", v20, 0xCu);
    sub_100003894(v21);
  }

  else
  {

    sub_100368648(v8, type metadata accessor for TimeRange);
  }

  v27 = sub_10036689C();
  __chkstk_darwin(v27);
  v28[-2] = v29;
  v28[-1] = v10;
  sub_100343480(sub_1003686A8, &v28[-4], v27);

  sub_100368648(v10, type metadata accessor for TimeRange);
  return 19279;
}

void *sub_10036689C()
{
  v0 = sub_100367130();
  v7 = _swiftEmptyArrayStorage;
  v1 = v0[2];
  if (v1)
  {
    v2 = (v0 + 4);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      sub_100003554(v2, v6);
      sub_100004A68(v6, v5);
      sub_1001E27A8(&unk_1004DCCF0);
      type metadata accessor for ObservabilityReportWorker();
      if ((swift_dynamicCast() & 1) != 0 && v5[5])
      {
        sub_100399168();
        if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1003991B8();
        }

        sub_1003991E8();
        v3 = v7;
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_1003669E0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 128);
  v7 = *(*a1 + 136);
  sub_1000035B8((*a1 + 104), v6);
  result = (*(v7 + 8))(v6, v7);
  if (v5 == result)
  {
    v9 = v4[16];
    v10 = v4[17];
    sub_1000035B8(v4 + 13, v9);
    v11 = (*(v10 + 8))(v9, v10);
    v12 = v4[16];
    v13 = v4[17];
    sub_1000035B8(v4 + 13, v12);
    (*(v13 + 16))(&v24, a3, v12, v13);
    if (v25)
    {
      sub_100004A68(&v24, v26);
      v14 = sub_1000035B8(v4 + 3, v4[6]);
      v15 = v4[16];
      v16 = v4[17];
      sub_1000035B8(v4 + 13, v15);
      v17 = (*(v16 + 8))(v15, v16);
      v18 = v27;
      v19 = v28;
      sub_1000035B8(v26, v27);
      (*(v19 + 8))(v18, v19);
      v20 = *(*v14 + 16);
      sub_1001E27A8(&unk_1004D5850);
      isa = sub_100398E48().super.isa;

      [v20 recordMetric:v17 + 2801 forPurpose:8501 properties:isa internalProperties:0 order:0 options:0];

      v22 = v4[21];
      v23 = v4[22];
      sub_1000035B8(v4 + 18, v22);
      (*(v23 + 32))(a3, v11, v22, v23);
      return sub_100003894(v26);
    }

    else
    {
      return sub_1003686C4(&v24);
    }
  }

  return result;
}

uint64_t sub_100366C24(uint64_t a1)
{
  v3 = type metadata accessor for UtcDate();
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100397748();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ObservabilityReportWorkerParamsTime(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 1701736270;
  }

  v27 = v7;
  v29 = v1;
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v13 = sub_100398CA8();
  sub_10000351C(v13, qword_1004DE5D0);
  v28 = a1;
  sub_1003685E0(a1, v12, type metadata accessor for ObservabilityReportWorkerParamsTime);
  v14 = sub_100398C88();
  v15 = sub_1003993D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v15;
    v17 = v16;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v17 = 136315138;
    sub_1003685E0(v12, v5, type metadata accessor for UtcDate);
    v18 = v27;
    (*(v27 + 32))(v9, v5, v6);
    sub_10036857C(&qword_1004D5AC0, &type metadata accessor for Date);
    v19 = sub_100399998();
    v21 = v20;
    (*(v18 + 8))(v9, v6);
    sub_100368648(v12, type metadata accessor for ObservabilityReportWorkerParamsTime);
    v22 = sub_100005700(v19, v21, &v30);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v26, "Running manual reports at %s", v17, 0xCu);
    sub_100003894(v25);
  }

  else
  {

    sub_100368648(v12, type metadata accessor for ObservabilityReportWorkerParamsTime);
  }

  v24 = sub_10036689C();
  __chkstk_darwin(v24);
  *(&v25 - 2) = v28;
  sub_100343480(sub_1003685C4, (&v25 - 4), v24);

  return 19279;
}

uint64_t sub_100367048(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UtcDate();
  __chkstk_darwin(v3 - 8);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003685E0(a2, v5, type metadata accessor for UtcDate);
  sub_1003406F0(v5);
  v6 = sub_100397748();
  return (*(*(v6 - 8) + 8))(v5, v6);
}

void *sub_100367130()
{
  v1 = v0;
  sub_100003554((v0 + 5), &v88);
  sub_100003554((v0 + 10), &v85);
  sub_100003554((v0 + 37), &v82);
  v2 = type metadata accessor for ObservabilityCommunicationReporter();
  v3 = swift_allocObject();
  sub_100004A68(&v88, v3 + 16);
  sub_100004A68(&v85, v3 + 56);
  sub_100004A68(&v82, v3 + 96);
  v93 = v2;
  v94 = &off_10047FA50;
  v92 = v3;
  sub_100003554((v1 + 37), &v88);
  sub_100003554((v1 + 42), &v85);
  v4 = sub_1001F54B4(&v85, v86);
  __chkstk_darwin(v4);
  v6 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v9 = type metadata accessor for ObservabilityStateStoreDatabase();
  v83 = v9;
  v84 = &off_10047FA20;
  *&v82 = v8;
  v10 = type metadata accessor for ObservabilityHourlyReporter();
  v11 = swift_allocObject();
  v12 = sub_1001F54B4(&v82, v9);
  v13 = *(v9 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v70 = *(v13 + 16);
  v71 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70(&v66 - v71);
  v15 = *(&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11[10] = v9;
  v11[11] = &off_10047FA20;
  v11[7] = v15;
  sub_100004A68(&v88, (v11 + 2));
  sub_100003894(&v82);
  sub_100003894(&v85);
  v96 = v10;
  v97 = &off_10047FB90;
  v95 = v11;
  v16 = v1[2];
  v17 = v1[3];
  v18 = v1[16];
  v68 = v1[15];
  v69 = v16;
  sub_100003554((v1 + 17), &v88);
  sub_100003554((v1 + 22), &v85);
  sub_100003554((v1 + 37), &v82);
  sub_100003554((v1 + 42), &v80);
  v19 = sub_1001F54B4(&v80, v81);
  __chkstk_darwin(v19);
  v21 = (&v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v78 = v9;
  v79 = &off_10047FA20;
  *&v77 = v23;
  v24 = type metadata accessor for ObservabilityDailyReporter();
  v25 = swift_allocObject();
  v26 = sub_1001F54B4(&v77, v9);
  __chkstk_darwin(v26);
  v27 = (&v66 - v71);
  v70(&v66 - v71);
  v28 = *v27;
  v25[24] = v9;
  v25[25] = &off_10047FA20;
  v25[21] = v28;
  v29 = v68;
  v25[2] = v69;
  v25[3] = v17;
  v25[4] = v29;
  v25[5] = v18;
  sub_100004A68(&v88, (v25 + 6));
  sub_100004A68(&v85, (v25 + 11));
  sub_100004A68(&v82, (v25 + 16));

  sub_100003894(&v77);
  sub_100003894(&v80);
  v99 = v24;
  v100 = &off_10047F348;
  v98 = v25;
  v76 = _swiftEmptyArrayStorage;
  sub_100367C08(0, 3, 0);
  v30 = v76;
  v66 = v1[4];
  v67 = v1;
  v31 = 32;
  do
  {
    v70 = v31;
    sub_100003554(&v91[v31], &v85);
    v32 = v67;
    sub_100003554((v67 + 27), &v88);
    sub_100003554((v32 + 32), &v82);
    sub_100003554(&v85, &v80);
    sub_100003554((v32 + 37), &v77);
    v33 = sub_1001F54B4(&v88, v89);
    v71 = &v66;
    __chkstk_darwin(v33);
    v35 = (&v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35);
    v37 = sub_1001F54B4(&v82, v83);
    v69 = &v66;
    __chkstk_darwin(v37);
    v39 = (&v66 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    v41 = *v35;
    v42 = *v39;
    v43 = type metadata accessor for ECPrimitiveEventSink();
    v75[3] = v43;
    v75[4] = &off_10047FDF8;
    v75[0] = v41;
    v44 = type metadata accessor for OffsetTimeRangeReferenceFrame();
    v73 = v44;
    v74 = &off_10047F788;
    v72[0] = v42;
    v45 = type metadata accessor for ObservabilityReportWorker();
    v46 = swift_allocObject();
    v47 = sub_1001F54B4(v75, v43);
    v68 = &v66;
    __chkstk_darwin(v47);
    v49 = v30;
    v50 = (&v66 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = sub_1001F54B4(v72, v73);
    __chkstk_darwin(v52);
    v54 = (&v66 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54);
    v56 = *v50;
    v30 = v49;
    v57 = *v54;
    v46[6] = v43;
    v46[7] = &off_10047FDF8;
    v46[11] = v44;
    v46[12] = &off_10047F788;
    v46[8] = v57;
    v46[2] = v66;
    v46[3] = v56;
    sub_100004A68(&v80, (v46 + 13));
    sub_100004A68(&v77, (v46 + 18));
    swift_unknownObjectRetain();
    sub_100003894(v72);
    sub_100003894(v75);
    sub_100003894(&v82);
    sub_100003894(&v88);
    v89 = v45;
    v90 = &off_10047F198;
    *&v88 = v46;
    sub_100003894(&v85);
    v76 = v49;
    v59 = v49[2];
    v58 = v49[3];
    if (v59 >= v58 >> 1)
    {
      sub_100367C08((v58 > 1), v59 + 1, 1);
      v30 = v76;
    }

    v60 = sub_1001F54B4(&v88, v89);
    __chkstk_darwin(v60);
    v62 = (&v66 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v62);
    v64 = *v62;
    v86 = v45;
    v87 = &off_10047F198;
    *&v85 = v64;
    v30[2] = v59 + 1;
    sub_100004A68(&v85, &v30[5 * v59 + 4]);
    sub_100003894(&v88);
    v31 = v70 + 40;
  }

  while (v70 != 112);
  sub_1001E27A8(&qword_1004DCCE0);
  swift_arrayDestroy();
  return v30;
}

void *sub_100367AA8(void *a1, int64_t a2, char a3)
{
  result = sub_100367D8C(a1, a2, a3, *v3, &unk_1004DCD20, &unk_1003F3370, &qword_1004DAD70);
  *v3 = result;
  return result;
}

void *sub_100367AE8(void *a1, int64_t a2, char a3)
{
  result = sub_1003681B0(a1, a2, a3, *v3, &unk_1004DCD30, &unk_1003F1480, &qword_1004DB4E0);
  *v3 = result;
  return result;
}

char *sub_100367B28(char *a1, int64_t a2, char a3)
{
  result = sub_100367C88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100367B48(void *a1, int64_t a2, char a3)
{
  result = sub_100367D8C(a1, a2, a3, *v3, &qword_1004DBA20, &unk_1003F3390, &unk_1004DCD50);
  *v3 = result;
  return result;
}

void *sub_100367B88(void *a1, int64_t a2, char a3)
{
  result = sub_1003681B0(a1, a2, a3, *v3, &qword_1004DADB0, &unk_1003F14A0, &qword_1004DCD60);
  *v3 = result;
  return result;
}

char *sub_100367BC8(char *a1, int64_t a2, char a3)
{
  result = sub_100367ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100367BE8(size_t a1, int64_t a2, char a3)
{
  result = sub_100367FD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100367C08(void *a1, int64_t a2, char a3)
{
  result = sub_1003681B0(a1, a2, a3, *v3, &qword_1004DCCE8, &unk_1003F3348, &unk_1004DCCF0);
  *v3 = result;
  return result;
}

char *sub_100367C48(char *a1, int64_t a2, char a3)
{
  result = sub_1003682F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367C68(char *a1, int64_t a2, char a3)
{
  result = sub_100368404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100367C88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&unk_1004DCD40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100367D8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1001E27A8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 48);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[6 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 48 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001E27A8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_100367ED4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&qword_1004DCD68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_100367FD8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001E27A8(&qword_1004DCD70);
  v10 = *(sub_1003980E8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1003980E8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1003681B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1001E27A8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001E27A8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1003682F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&unk_1004DCD10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100368404(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&qword_1004DBA10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_10036857C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003685E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100368648(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003686C4(uint64_t a1)
{
  v2 = sub_1001E27A8(&unk_1004DCD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100368754()
{
  result = type metadata accessor for UtcDate();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003687E8()
{
  result = type metadata accessor for UtcDate();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10036886C()
{
  result = qword_1004DCED0;
  if (!qword_1004DCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCED0);
  }

  return result;
}

unint64_t sub_1003688C0()
{
  result = qword_1004DCED8;
  if (!qword_1004DCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCED8);
  }

  return result;
}

unint64_t sub_100368914()
{
  result = qword_1004DCEE8;
  if (!qword_1004DCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCEE8);
  }

  return result;
}

unint64_t sub_100368968()
{
  result = qword_1004DCEF8;
  if (!qword_1004DCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCEF8);
  }

  return result;
}

uint64_t sub_1003689BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100368A48()
{
  result = qword_1004DCF00;
  if (!qword_1004DCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCF00);
  }

  return result;
}

unint64_t sub_100368AA0()
{
  result = qword_1004DCF08;
  if (!qword_1004DCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCF08);
  }

  return result;
}

unint64_t sub_100368AF8()
{
  result = qword_1004DCF10;
  if (!qword_1004DCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCF10);
  }

  return result;
}

unint64_t sub_100368B50()
{
  result = qword_1004DCF18;
  if (!qword_1004DCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCF18);
  }

  return result;
}

unint64_t sub_100368BA8()
{
  result = qword_1004DCF20;
  if (!qword_1004DCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCF20);
  }

  return result;
}

unint64_t sub_100368C00()
{
  result = qword_1004DCF28;
  if (!qword_1004DCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCF28);
  }

  return result;
}

uint64_t sub_100368C54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F706572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for ObservabilityHourlyReport()
{
  result = qword_1004DCF88;
  if (!qword_1004DCF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100368DD8()
{
  sub_100397748();
  if (v0 <= 0x3F)
  {
    sub_100368E90();
    if (v1 <= 0x3F)
    {
      sub_100368EF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100368E90()
{
  if (!qword_1004DCF98)
  {
    v0 = type metadata accessor for SixNumberSummary();
    if (!v1)
    {
      atomic_store(v0, &qword_1004DCF98);
    }
  }
}

void sub_100368EF0()
{
  if (!qword_1004DCFA0)
  {
    v0 = type metadata accessor for FourNumberSummary();
    if (!v1)
    {
      atomic_store(v0, &qword_1004DCFA0);
    }
  }
}

uint64_t sub_100368F50@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100369510(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100368F7C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100369778(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_100368FA8()
{
  result = sub_100368FC8();
  qword_1004DE5F0 = result;
  return result;
}

id sub_100368FC8()
{
  v0 = sub_100397968();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100397838();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1003977A8();
  isa = sub_1003977D8().super.isa;
  (*(v5 + 8))(v7, v4);
  [v8 setLocale:isa];

  v10 = sub_100398F28();
  [v8 setDateFormat:v10];

  sub_100397928();
  v11 = sub_100397958().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setTimeZone:v11];

  return v8;
}

uint64_t sub_1003691E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_100397748();
  v37 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for UtcDate();
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_100399BB8();
  if (!v2)
  {
    v32 = v12;
    v33 = v9;
    v34 = v7;
    sub_1000035B8(v36, v36[3]);
    v13 = sub_1003999C8();
    v15 = v14;
    sub_100003894(v36);
    if (qword_1004DA0A8 != -1)
    {
      swift_once();
    }

    v16 = qword_1004DE5F0;
    v17 = sub_100398F28();
    v31 = v15;
    v18 = v17;
    v19 = [v16 dateFromString:v17];

    v20 = v4;
    v21 = v13;
    v22 = v37;
    v24 = v33;
    v23 = v34;
    v25 = v32;
    if (v19)
    {

      sub_100397708();

      v26 = *(v22 + 32);
      v26(v24, v23, v20);
      v26(v25, v24, v20);
      sub_100369A6C(v25, v35);
    }

    else
    {
      v27 = sub_100397D68();
      sub_100369720();
      swift_allocError();
      v28 = v31;
      *v29 = v21;
      v29[1] = v28;
      (*(*(v27 - 8) + 104))(v29, enum case for TestingRigError.parseError(_:), v27);
      swift_willThrow();
    }
  }

  return sub_100003894(a1);
}

uint64_t sub_100369510(void *a1)
{
  v3 = sub_1000035B8(a1, a1[3]);
  sub_100399BB8();
  if (!v1)
  {
    sub_1000035B8(v10, v10[3]);
    v4 = sub_1003999C8();
    v3 = v5;
    sub_100003894(v10);
    v7 = v4 == 0x63696E756D6D6F63 && v3 == 0xED00006E6F697461;
    if (v7 || (sub_1003999B8() & 1) != 0)
    {

      v3 = 0;
    }

    else if (v4 == 0x796C72756F68 && v3 == 0xE600000000000000 || (sub_1003999B8() & 1) != 0)
    {

      v3 = 1;
    }

    else if (v4 == 0x796C696164 && v3 == 0xE500000000000000 || (sub_1003999B8() & 1) != 0)
    {

      v3 = 2;
    }

    else
    {
      v8 = sub_100397D68();
      sub_100369720();
      swift_allocError();
      *v9 = v4;
      v9[1] = v3;
      (*(*(v8 - 8) + 104))(v9, enum case for TestingRigError.parseError(_:), v8);
      swift_willThrow();
    }
  }

  sub_100003894(a1);
  return v3;
}

unint64_t sub_100369720()
{
  result = qword_1004DCFF0;
  if (!qword_1004DCFF0)
  {
    sub_100397D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DCFF0);
  }

  return result;
}

uint64_t sub_100369778(void *a1)
{
  v3 = sub_1000035B8(a1, a1[3]);
  sub_100399BB8();
  if (!v1)
  {
    sub_1000035B8(v10, v10[3]);
    v4 = sub_1003999C8();
    v3 = v5;
    sub_100003894(v10);
    v7 = v4 == 0x796144656E6FLL && v3 == 0xE600000000000000;
    if (v7 || (sub_1003999B8() & 1) != 0)
    {

      v3 = 0;
    }

    else if (v4 == 0x72756F48656E6FLL && v3 == 0xE700000000000000 || (sub_1003999B8() & 1) != 0)
    {

      v3 = 1;
    }

    else if (v4 == 0x4D6E656574666966 && v3 == 0xEE00736574756E69 || (sub_1003999B8() & 1) != 0)
    {

      v3 = 2;
    }

    else
    {
      v8 = sub_100397D68();
      sub_100369720();
      swift_allocError();
      *v9 = v4;
      v9[1] = v3;
      (*(*(v8 - 8) + 104))(v9, enum case for TestingRigError.parseError(_:), v8);
      swift_willThrow();
    }
  }

  sub_100003894(a1);
  return v3;
}

uint64_t type metadata accessor for UtcDate()
{
  result = qword_1004DD050;
  if (!qword_1004DD050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100369A00()
{
  result = sub_100397748();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100369A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtcDate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10036BC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10036BC6C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _commit];

  objc_autoreleasePoolPop(v2);
}

id sub_10036BE68(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    return [a2 commit];
  }

  else
  {
    return [a2 rollBack];
  }
}

void sub_10036D550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10036D58C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100394418(a2);
  [v2 _removeItem:v3];
}

void sub_10036D5E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100394418(a2);
  [v2 _handleAncientItem:v3];
}

void sub_10036D63C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) isCancelled];
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"completed";
      v6 = atomic_load(WeakRetained + 2);
      v7 = atomic_load(WeakRetained + 3);
      v10 = 138543874;
      if (v3)
      {
        v5 = @"cancelled";
      }

      v11 = v5;
      v12 = 1026;
      v13 = v6;
      v14 = 1026;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Garbage collection was %{public}@. Removed objects: %{public}d, ancient objects: %{public}d.", &v10, 0x18u);
    }

    [*(a1 + 32) duration];
    [WeakRetained _reportStatisticsForDuration:*(a1 + 40) storageInfo:v3 cancelled:?];
    v8 = [WeakRetained completionHandler];

    if (v8)
    {
      v9 = [WeakRetained completionHandler];
      (v9)[2](v9, v3);

      [WeakRetained setCompletionHandler:0];
    }
  }
}

void sub_10036D9A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10036D9C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeItemInBlockForKey:*(a1 + 32)];
}

id sub_10036E2A4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  if ([v4 length] && objc_msgSend(v4, "hasPrefix:", @"/"))
  {
    v6 = [v4 substringFromIndex:1];

    v4 = v6;
  }

  if ([v5 validateName:v4 error:a3])
  {
    v7 = [v4 stringByDeletingPathExtension];
    if ([v7 length] > 2)
    {
      v9 = [v4 pathExtension];
      v10 = [v7 substringToIndex:2];
      v11 = [v7 substringFromIndex:2];
      v12 = [v10 stringByAppendingPathComponent:v11];

      v8 = [v12 stringByAppendingPathExtension:v9];
    }

    else
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_10036E3F8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  if ([v4 length])
  {
    v5 = [v4 pathComponents];
    if ([v5 count])
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 isEqualToString:@"/"];

      if (v7)
      {
        v8 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];

        v5 = v8;
      }
    }

    if ([v5 count] == 1 || objc_msgSend(v5, "count") == 2)
    {
      v9 = [v5 componentsJoinedByString:&stru_1004810B8];
    }

    else
    {
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v19 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "File path contains illegal characters. %{private}@", buf, 0xCu);
      }

      if (a3)
      {
        v14[0] = @"name";
        v14[1] = @"reason";
        v15[0] = v4;
        v15[1] = @"File path contains illegal characters.";
        v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
        *a3 = [NSError errorWithDomain:@"APFileSystemNameErrorDomain" code:2 userInfo:v12];
      }

      v9 = 0;
    }

    goto LABEL_17;
  }

  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "File path is empty. %{private}@", buf, 0xCu);
  }

  if (a3)
  {
    v16 = @"reason";
    v17 = @"File path is empty.";
    v5 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [NSError errorWithDomain:@"APFileSystemNameErrorDomain" code:2 userInfo:v5];
    *a3 = v9 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v9 = 0;
LABEL_18:

  return v9;
}

void sub_10036FB50(uint64_t a1)
{
  data = dispatch_source_get_data(*(a1 + 32));
  if (data != 1)
  {
    v2 = @"WARNING";
    if (data != 2)
    {
      v2 = 0;
    }

    if (data == 4)
    {
      v3 = @"CRITICAL";
    }

    else
    {
      v3 = v2;
    }

    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Cache Stats: Received a memory pressure event: %{public}@", &v5, 0xCu);
    }
  }
}

void sub_10036FC24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _printCacheStatistics];
}

void sub_10036FFD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _printCacheStatistics];
}

void sub_1003750C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003750E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134349056;
    v12 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got %{public}lu items from Media API.", &v11, 0xCu);
  }

  v5 = [NSPredicate predicateWithBlock:&stru_1004804C0];
  v6 = [v3 filteredArrayUsingPredicate:v5];
  v7 = [v6 count];
  if (v7 != [v3 count])
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 count];
      v11 = 134349056;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Encountered error(s) from server. Remaining valid contents: %{public}lu", &v11, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleMediaServiceResponse:v3 params:*(a1 + 32) completionHandler:*(a1 + 40)];
}

void sub_1003755B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003755D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleRankedRepresentations:v3 params:*(a1 + 32)];
}

void sub_1003758A8(uint64_t a1, void *a2)
{
  v7 = a2;
  if (![v7 serverUnfilledReason])
  {
    v3 = [*(a1 + 32) _loadJourneyStartRelayValuesFromContentData:v7];
    v4 = [*(a1 + 32) _loadInternalPropertiesFromContentData:v7];
    v5 = [[APJourneyDaemonMetricHelper alloc] initWithContentData:v7];
    v6 = [*(a1 + 32) bundleID];
    [*(a1 + 32) responseTime];
    [(APJourneyDaemonMetricHelper *)v5 receivedForBundleID:v6 adServer:3 elapsedTime:v3 relayValues:v4 internalProperties:?];
  }
}

void sub_100375F08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MetricsModule storage];
  v5 = [v4 notificationRegistrar];
  v6 = [v3 longValue];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100376024;
  v10[3] = &unk_100480558;
  v10[4] = *(a1 + 32);
  v7 = [v5 registerHandlerForPurpose:100 andMetric:v6 closure:v10];

  v8 = [*(a1 + 32) registrationTokens];
  v9 = [NSNumber numberWithInteger:v7];
  [v8 addObject:v9];
}

void sub_100376030(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  [*(a1 + 32) setRegistrationTokens:v2];
}

void sub_100376CC4(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([a1[4] countForObject:v6])
  {
    v7 = a1[5];
    v8 = [a1[6] bundleID];
    [v7 markInUseByClientWithId:v8];

    [a1[4] removeObject:v6];
    v9 = [a1[6] deliveryBlock];
    v10 = [a1[5] contentData];
    v12 = v10;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    (v9)[2](v9, v11);

    *a4 = 1;
  }
}

void sub_100377264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_1003772A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v7 = *(*(a1 + 64) + 8);
    v8 = [*(a1 + 32) count];
    LOBYTE(v11) = *(a1 + 80);
    [WeakRetained handleNewPromotedContent:v5 adsReceived:v7 + 24 adsRequested:v8 token:*(a1 + 40) context:*(a1 + 48) lastInBatch:a3 deliverEntireBatch:v11 completionHandler:*(a1 + 56)];
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "APPCControllerCoordinator was destroyed by the time when we got a response back.", buf, 2u);
    }

    v10 = [APPCControllerCoordinator _addToCacheContentData:v5 context:*(a1 + 48)];
  }
}

void sub_100377884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003778B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003778CC(uint64_t a1)
{
  if (*(a1 + 56) == 7005)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setHasRunningLandingPageRequest:0];
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_1003780E8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, (v5 - 128), 2u);
}

uint64_t sub_10037830C()
{
  qword_1004EA1B0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10037849C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003784D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003785D8;
  block[3] = &unk_100463FC8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v3;
  v11 = v4;
  v7 = v4;
  v8 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v12);
}

void sub_1003785D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _storeIntegrityEvent:*(a1 + 32)];
}

void sub_100378B3C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = APLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      if (v7)
      {
        v14 = *(a1 + 32);
        v16 = 136380675;
        v17 = v14;
        v9 = "connection at %{private}s waiting";
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    if (a2 == 3)
    {
      if (v7)
      {
        v8 = *(a1 + 32);
        v16 = 136380675;
        v17 = v8;
        v9 = "connection at %{private}s is ready";
LABEL_16:
        v12 = v6;
        v13 = 12;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_10:
    if (v7)
    {
      v11 = *(a1 + 32);
      v16 = 136380931;
      v17 = v11;
      v18 = 1026;
      v19 = a2;
      v9 = "connection at %{private}s state %{public}d";
      v12 = v6;
      v13 = 18;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, v9, &v16, v13);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (a2 == 4)
  {
    if (v7)
    {
      v15 = *(a1 + 32);
      v16 = 136380675;
      v17 = v15;
      v9 = "connection at %{private}s failed";
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a2 != 5)
  {
    goto LABEL_10;
  }

  if (v7)
  {
    v10 = *(a1 + 32);
    v16 = 136380675;
    v17 = v10;
    v9 = "connection at %{private}s is cancelled ";
    goto LABEL_16;
  }

LABEL_18:
}

void sub_100378E1C(id a1, OS_nw_error *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    error_code = nw_error_get_error_code(v2);
    v5 = APLogForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (error_code == 57)
    {
      if (v6)
      {
        v8 = 138543362;
        v9 = v3;
        v7 = "Error sending data socket not connected %{public}@";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v7, &v8, 0xCu);
      }
    }

    else if (v6)
    {
      v8 = 138543362;
      v9 = v3;
      v7 = "Error sending data %{public}@";
      goto LABEL_7;
    }
  }
}

void sub_10037945C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100379490(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishedWithRequestsForCoordinator:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_100379870(uint64_t a1, uint64_t a2)
{
  v3 = sub_10039440C(a2);
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

void sub_10037A0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10037A124(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = +[APDeviceInfo current];
        [v8 setIsPAAvailableForAd:{objc_msgSend(v9, "personalizedAdsEnabled")}];

        [v8 setIsLocationAvailableForAd:{objc_msgSend(*(a1 + 32), "isLocationAvailableForAd")}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = [WeakRetained connection];
  v12 = [v11 remoteObjectProxy];
  [v12 contentResponses:v3 requester:*(a1 + 40)];
}

void sub_10037A618(id a1)
{
  v1 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v2 = [v1 lastObject];

  v16[0] = v2;
  v16[1] = @"com.apple.ap.promotedcontentd";
  v16[2] = @"ecs";
  v3 = [NSArray arrayWithObjects:v16 count:3];
  v4 = [NSURL fileURLWithPathComponents:v3];
  v5 = qword_1004EA1C0;
  qword_1004EA1C0 = v4;

  v6 = objc_alloc_init(NSFileManager);
  v11 = 0;
  [v6 createDirectoryAtURL:qword_1004EA1C0 withIntermediateDirectories:1 attributes:0 error:&v11];
  v7 = v11;
  if (v7)
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 code];
      *buf = 134349315;
      v13 = v9;
      v14 = 2113;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create sessions folder. Code: %{public}ld. %{private}@", buf, 0x16u);
    }

    v10 = qword_1004EA1C0;
    qword_1004EA1C0 = 0;
  }
}

APPersistentCachedStoreTransactionalProtocol *sub_10037AA18()
{
  objc_opt_self();

  return +[APPersistentCacheStoreProvider persistentCacheStore];
}

id sub_10037AA48(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_self() cacheKeyForIdentifier:v2];

  objc_opt_self();
  v4 = +[APPersistentCacheStoreProvider persistentCacheStore];
  v5 = [v4 objectForKey:v3];

  return v5;
}

id sub_10037AAE0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_opt_self();
  v4 = +[APPersistentCacheStoreProvider persistentCacheStore];
  v5 = [v3 cacheKeyForIdentifier:v2];

  v6 = [v4 isObjectAliveForKey:v5];
  return v6;
}

void sub_10037AB68(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v7 = [objc_opt_self() cacheKeyForIdentifier:v5];

  objc_opt_self();
  v6 = +[APPersistentCacheStoreProvider persistentCacheStore];
  [v6 removeObjectForKey:v7 transaction:v4];
}

id sub_10037AC10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_self() cacheKeyForIdentifier:v2];

  objc_opt_self();
  v4 = +[APPersistentCacheStoreProvider persistentCacheStore];
  v5 = [v4 hasObjectForKey:v3];

  return v5;
}

id cloneSecureCodingObject(uint64_t a1, uint64_t a2)
{
  v3 = [NSKeyedArchiver archivedDataWithRootObject:a1 requiringSecureCoding:1 error:0];
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:a2 fromData:v3 error:0];

  return v4;
}

uint64_t sub_10037BBB8()
{
  qword_1004EA1D8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10037BF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10037C64C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10037C8F4;
  v24[3] = &unk_100480738;
  v26 = *(a1 + 72);
  v25 = *(a1 + 32);
  [APAMSBagManager shouldUseAMSMescalWithCompletionHandler:v24];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10037C9C4;
  v21[3] = &unk_100480738;
  v22 = *(a1 + 32);
  v23 = *(a1 + 73);
  [APAMSBagManager httpUseFixedHttpSessionManagerWithCompletionHandler:v21];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10037CAB0;
  v18[3] = &unk_100480760;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  [APAMSBagManager httpLookBackWindowWithCompletionHandler:v18];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10037CBA0;
  v15[3] = &unk_100480788;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v16 = v3;
  v17 = v4;
  [APAMSBagManager httpMaximumConnectionsPerHostWithCompletionHandler:v15];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10037CC88;
  v12[3] = &unk_100480788;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v13 = v5;
  v14 = v6;
  [APAMSBagManager httpMaximumConnectionsPerHostTempSessionWithCompletionHandler:v12];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10037CD70;
  v9[3] = &unk_100480788;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v10 = v7;
  v11 = v8;
  [APAMSBagManager cacheSizeWithCompletionHandler:v9];

  objc_autoreleasePoolPop(v2);
}

id *sub_10037C8F4(id *result, uint64_t a2)
{
  if (*(result + 40) != a2)
  {
    v3 = result;
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 134349056;
      v6 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Loaded new 'useAMSMescal' value from Bag: %{public}ld", &v5, 0xCu);
    }

    return [v3[4] setUseAMSMescalValue:a2];
  }

  return result;
}

void sub_10037C9C4(uint64_t a1, id a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    a2 = [*(a1 + 32) httpUseFixedHttpSessionManagerDefaultValue];
  }

  if (*(a1 + 40) != a2)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349056;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Loaded new 'useFixedHttpSessionManager' value from Bag: %{public}ld", &v7, 0xCu);
    }

    [*(a1 + 32) setHttpUseFixedHttpSessionManagerValue:a2];
  }
}

void sub_10037CAB0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  if (v5)
  {
    [*(a1 + 32) httpLookBackWindowDefaultValue];
    a3 = v6;
  }

  if (*(a1 + 40) != a3)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134349056;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Loaded new 'httpLookBackWindow' value from Bag: %{public}f", &v8, 0xCu);
    }

    [*(a1 + 32) setHttpLookBackWindowValue:a3];
  }
}

void sub_10037CBA0(uint64_t a1, id a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    a2 = [*(a1 + 32) httpMaximumConnectionsPerHostDefaultValue];
  }

  if (*(a1 + 40) != a2)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349056;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Loaded new 'httpMaximumConnectionsPerHost' value from Bag: %{public}ld", &v7, 0xCu);
    }

    [*(a1 + 32) setHttpMaximumConnectionsPerHostValue:a2];
  }
}

void sub_10037CC88(uint64_t a1, id a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    a2 = [*(a1 + 32) httpMaximumConnectionsPerHostTempSessionDefaultValue];
  }

  if (*(a1 + 40) != a2)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349056;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Loaded new 'httpMaximumConnectionsPerHostTempSession' value from Bag: %{public}ld", &v7, 0xCu);
    }

    [*(a1 + 32) setHttpMaximumConnectionsPerHostTempSessionValue:a2];
  }
}

void sub_10037CD70(uint64_t a1, id a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    a2 = [*(a1 + 32) cacheSizeLimitDefaultValue];
  }

  if (*(a1 + 40) != a2)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349056;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Loaded new 'cacheSize' value from Bag: %{public}ld", &v7, 0xCu);
    }

    [*(a1 + 32) setCacheSizeLimitValue:a2];
  }
}

void sub_10037CEFC(id a1)
{
  qword_1004EA1E8 = objc_alloc_init(APIDAccountsWeakContainer);

  _objc_release_x1();
}

void sub_10037D264(id a1, APMetricProtocol *a2)
{
  v2 = a2;
  v3 = metricPropertyValue(v2, 5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = metricPropertyValue(v2, 5);
    v5 = [v4 BOOLValue];

    if (!v5)
    {
      v6 = [(APMetricProtocol *)v2 contentIdentifier];
      v7 = [APManagedContentData findById:v6];
      v8 = v7;
      if (v7)
      {
        if ([v7 state]== 3)
        {
          v9 = APLogForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v11 = 138543362;
            v12 = v6;
            v10 = "%{public}@ was already marked as used.";
LABEL_12:
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, &v11, 0xCu);
          }
        }

        else
        {
          [v8 markUsed];
          v9 = APLogForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v11 = 138543362;
            v12 = v6;
            v10 = "%{public}@ is now on screen and mark it as used in the cache.";
            goto LABEL_12;
          }
        }
      }

LABEL_14:

      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = [(APMetricProtocol *)v2 contentIdentifier];
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@ is now on screen but is is collapsed. Do not mark it as used in the cache.", &v11, 0xCu);
    goto LABEL_14;
  }

LABEL_15:
}

void sub_10037DF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10037DF28(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

uint64_t sub_10037E084(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

void sub_10037E418(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_10037E450(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained gcSchedulerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037E554;
  block[3] = &unk_10047C978;
  objc_copyWeak(&v10, (a1 + 32));
  dispatch_async(v8, block);

  v6[2](v6, @"Started...");
  objc_destroyWeak(&v10);
}

void sub_10037E554(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[NSDate now];
  [WeakRetained _performGC:v1 completionHandler:0];
}

void sub_10037E5C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained gcSchedulerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10037E69C;
  v8[3] = &unk_1004808B0;
  v9 = v4;
  v7 = v4;
  objc_copyWeak(&v10, (a1 + 32));
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
}

void sub_10037E69C(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _dumpCache];
  (*(v1 + 16))(v1, v2);
}

void sub_10037EA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10037EA30(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setGarbageCollector:0];
  if ((a2 & 1) == 0)
  {
    v4 = +[NSDate now];
    [WeakRetained _setLastGCDate:v4];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }
}

int64_t sub_10037F238(id a1, APContentData *a2, APContentData *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(APContentData *)v4 representations];
  v7 = [v6 anyObject];

  v8 = [(APContentData *)v5 representations];
  v9 = [v8 anyObject];

  v10 = [(APContentData *)v5 serverUnfilledReason];
  if (!v10)
  {
    if ([(APContentData *)v4 serverUnfilledReason])
    {
      v11 = 1;
      goto LABEL_7;
    }

    v12 = [v7 rank];
    if (v12 >= [v9 rank])
    {
      v13 = [v7 rank];
      v11 = v13 > [v9 rank];
      goto LABEL_7;
    }
  }

  v11 = -1;
LABEL_7:

  return v11;
}

void sub_10037FF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10037FFC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _heavyContentKeyNames];

  return v2;
}

void sub_1003807DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 placementType]);
  [v2 addObject:v3];
}

void sub_100381DE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[MetricsModule storage];
  v7 = [v6 notificationRegistrar];
  v8 = [v7 registerHandlerForPurpose:a2 closure:v5];

  v9 = *(a1 + 32);
  v10 = [NSNumber numberWithInteger:v8];
  [v9 addObject:v10];
}

void sub_100382544(id *a1)
{
  v2 = [a1[4] clientConnection];

  if (!v2)
  {
    v3 = [APMetricClientConnection alloc];
    v4 = [a1[5] objectAtIndexedSubscript:0];
    v5 = [a1[5] objectAtIndexedSubscript:1];
    v6 = [(APMetricClientConnection *)v3 initWithHost:v4 port:v5];
    [a1[4] setClientConnection:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [a1[6] ecServerDictionaryRepresentation];
    v8 = [a1[6] additives:v7];

    v9 = [v8 jsonDataWithOptions:0x400000];
    v10 = [NSData dataWithData:v9];

    if (v10 && [v10 length])
    {
      v11 = [a1[4] clientConnection];
      [v11 send:v10];
    }

    else
    {
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error representation %{public}@ to json", &v13, 0xCu);
      }
    }
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = a1[6];
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error converting metric to dictionary representation %{public}@", &v13, 0xCu);
    }
  }
}

uint64_t sub_100383B54()
{
  qword_1004EA210 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100383D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100383D70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100383E70;
  block[3] = &unk_100463FC8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v3;
  v11 = v4;
  v7 = v4;
  v8 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v12);
}

void sub_100383E70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _storeReceivedEvent:*(a1 + 32)];
}

id PCIdentifierProvider.__allocating_init(identifierProvider:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  result = [a1 provider];
  if (result)
  {
    *&v3[OBJC_IVAR___APPCIdentifierProvider_identifierProvider] = result;
    v6.receiver = v3;
    v6.super_class = v1;
    v5 = objc_msgSendSuper2(&v6, "init");
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PCIdentifierProvider.init(identifierProvider:)(void *a1)
{
  ObjectType = swift_getObjectType();
  result = [a1 provider];
  if (result)
  {
    *&v1[OBJC_IVAR___APPCIdentifierProvider_identifierProvider] = result;
    v6.receiver = v1;
    v6.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v6, "init");
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *PCIdentifierProvider.getIdentifiers(type:source:processId:)(unint64_t a1)
{
  if (a1 >= 3)
  {
LABEL_21:
    v16 = a1;
    result = sub_100399A68();
    __break(1u);
    return result;
  }

  v1 = sub_100398438();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v16 = _swiftEmptyArrayStorage;
      sub_100399798();
      if (v3 < 0)
      {
        break;
      }

      for (i = 0; ; ++i)
      {
        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = sub_100399708();
        }

        else
        {
          if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v8 = type metadata accessor for PCRotatingIdentifier();
        v9 = objc_allocWithZone(v8);
        v10 = sub_1003983C8();
        v11 = &v9[OBJC_IVAR___APPCRotatingIdentifier_value];
        *v11 = v10;
        v11[1] = v12;
        v13 = sub_1003983B8();
        if (v13 >= 3)
        {
          goto LABEL_20;
        }

        *&v9[OBJC_IVAR___APPCRotatingIdentifier_type] = v13;
        v15.receiver = v9;
        v15.super_class = v8;
        objc_msgSendSuper2(&v15, "init");

        sub_100399778();
        sub_1003997A8();
        sub_1003997B8();
        sub_100399788();
        if (v5 == v3)
        {

          return v16;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v3 = sub_1003997F8();
      if (!v3)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    a1 = sub_1003997E8();
    __break(1u);
    goto LABEL_21;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

id PCRotatingIdentifier.__allocating_init(rotatingIdentifier:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_100384890();

  return v4;
}

uint64_t PCRotatingIdentifier.value.getter()
{
  v1 = (v0 + OBJC_IVAR___APPCRotatingIdentifier_value);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PCRotatingIdentifier.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___APPCRotatingIdentifier_value);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t PCRotatingIdentifier.type.getter()
{
  v1 = OBJC_IVAR___APPCRotatingIdentifier_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PCRotatingIdentifier.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCRotatingIdentifier_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PCRotatingIdentifier.init(rotatingIdentifier:)(void *a1)
{
  v2 = sub_100384890();

  return v2;
}

unint64_t PCIdentifierType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_100384874@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_100384890()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1003983C8();
  v3 = &v0[OBJC_IVAR___APPCRotatingIdentifier_value];
  *v3 = v2;
  v3[1] = v4;
  v5 = sub_1003983B8();
  if (v5 >= 3)
  {
    result = sub_1003997E8();
    __break(1u);
  }

  else
  {
    *&v0[OBJC_IVAR___APPCRotatingIdentifier_type] = v5;
    v7.receiver = v0;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, "init");
  }

  return result;
}

unint64_t sub_100384960()
{
  result = qword_1004DD520;
  if (!qword_1004DD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DD520);
  }

  return result;
}

BOOL sub_100385730(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [(NSURL *)v4 path];
    v8 = [(NSError *)v5 localizedDescription];
    v10 = 141558530;
    v11 = 1752392040;
    v12 = 2112;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "An error occurred enumerating url:%{mask.hash}@. %{public}@", &v10, 0x20u);
  }

  return 1;
}

void sub_100385F74(id a1)
{
  v18[0] = @"com.apple.news";
  v17 = [[NSUUID alloc] initWithUUIDString:@"751A1F1B-43AB-40F2-BB35-C6731882A9F7"];
  v16 = [[NSUUID alloc] initWithUUIDString:@"0900CB86-3865-4C60-8D49-A05C853628D4"];
  v15 = [NSSet setWithObjects:v17, v16, 0];
  v19[0] = v15;
  v18[1] = @"com.apple.appstored";
  v14 = [[NSUUID alloc] initWithUUIDString:@"876F12EE-055C-49EB-8909-3BE6753CA832"];
  v13 = [NSSet setWithObjects:v14, 0];
  v19[1] = v13;
  v18[2] = @"com.apple.appstoreagent";
  v1 = [[NSUUID alloc] initWithUUIDString:@"876F12EE-055C-49EB-8909-3BE6753CA832"];
  v2 = [NSSet setWithObjects:v1, 0];
  v19[2] = v2;
  v18[3] = @"com.apple.passd";
  v3 = [[NSUUID alloc] initWithUUIDString:@"5DE1449E-0748-6CC5-CA7D-548E7E7AC24C"];
  v4 = [NSSet setWithObjects:v3, 0];
  v19[3] = v4;
  v18[4] = @"com.apple.watchlistd";
  v5 = [[NSUUID alloc] initWithUUIDString:@"25EF2050-5D1D-419D-AC15-CCA299E77EE0"];
  v6 = [NSSet setWithObjects:v5, 0];
  v19[4] = v6;
  v18[5] = @"com.apple.fitcored";
  v7 = [[NSUUID alloc] initWithUUIDString:@"13616005-2862-4801-8CC1-662AD06477DE"];
  v8 = [NSSet setWithObjects:v7, 0];
  v19[5] = v8;
  v18[6] = @"com.apple.stocks";
  v9 = [[NSUUID alloc] initWithUUIDString:@"751A1F1B-43AB-40F2-BB35-C6731882A9F7"];
  v10 = [NSSet setWithObjects:v9, 0];
  v19[6] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:7];
  v12 = qword_1004EA3A0;
  qword_1004EA3A0 = v11;
}

void sub_100386364(id a1)
{
  v1 = qword_1004EA3B0;
  qword_1004EA3B0 = &off_1004948F0;
}

void sub_100386458(id *a1)
{
  if ([a1[4] hasWriteEntitlement])
  {
    v2 = a1[5];
    v3 = [a1[4] bundleID];
    v4 = [PCStatusConditionsReceiver validateWhitelistingForCondition:v2 forBundleIdentifier:v3];

    if (v4)
    {
LABEL_11:
      v12 = a1[4];
      v13 = a1[5];
      v14 = [v12 bundleID];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100386714;
      v18[3] = &unk_100480C40;
      v15 = a1[5];
      v16 = a1[4];
      v19 = v15;
      v20 = v16;
      v21 = a1[6];
      [v12 _isStatusConditionRegistered:v13 bundleIdentifier:v14 completionHandler:v18];

      v6 = v19;
      goto LABEL_12;
    }

    v5 = [a1[4] bundleID];
    [NSString stringWithFormat:@"%@ : %@ is not a whitelisted status condition.", v5, a1[5]];
  }

  else
  {
    v5 = [a1[4] bundleID];
    [NSString stringWithFormat:@"Ignoring request from unentitled client %@", v5, v17];
  }
  v6 = ;

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = APLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136643075;
    v25 = "[PCStatusConditionsReceiver setStatusCondition:completionHandler:]_block_invoke";
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{sensitive}s]: %{public}@", buf, 0x16u);
  }

  v8 = a1[6];
  if (v8)
  {
    v22 = NSLocalizedDescriptionKey;
    v23 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1100 userInfo:v9];
    v8[2](v8, v10);
  }

  v11 = [a1[4] connection];
  [v11 invalidate];

  [a1[4] setConnection:0];
LABEL_12:
}

uint64_t sub_100386714(uint64_t a1, char a2, void *a3)
{
  if (!a3)
  {
    v5 = [PCBooleanCondition alloc];
    v6 = [*(a1 + 32) UUIDString];
    v7 = [*(a1 + 40) bundleID];
    v8 = [(PCBooleanCondition *)v5 initWithType:@"sc" value:v6 identifier:v7];

    [PCStatusConditionStorage setStatusCondition:v8];
    objc_claimAutoreleasedReturnValue();
    if ((a2 & 1) == 0)
    {
      v9 = [*(a1 + 40) conditionsService];
      [v9 clearCache];
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }

  return _objc_release_x1();
}

void sub_1003868FC(id *a1)
{
  if ([a1[4] hasWriteEntitlement])
  {
    v2 = a1[5];
    v3 = [a1[4] bundleID];
    v4 = [PCStatusConditionsReceiver validateWhitelistingForCondition:v2 forBundleIdentifier:v3];

    if (v4)
    {
LABEL_11:
      v12 = a1[4];
      v13 = a1[5];
      v14 = [v12 bundleID];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100386BB8;
      v18[3] = &unk_100480C40;
      v15 = a1[5];
      v16 = a1[4];
      v19 = v15;
      v20 = v16;
      v21 = a1[6];
      [v12 _isStatusConditionRegistered:v13 bundleIdentifier:v14 completionHandler:v18];

      v6 = v19;
      goto LABEL_12;
    }

    v5 = [a1[4] bundleID];
    [NSString stringWithFormat:@"%@ : %@ is not a whitelisted status condition.", v5, a1[5]];
  }

  else
  {
    v5 = [a1[4] bundleID];
    [NSString stringWithFormat:@"Ignoring request from unentitled client %@", v5, v17];
  }
  v6 = ;

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = APLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136643075;
    v25 = "[PCStatusConditionsReceiver clearStatusCondition:completionHandler:]_block_invoke";
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{sensitive}s]: %{public}@", buf, 0x16u);
  }

  v8 = a1[6];
  if (v8)
  {
    v22 = NSLocalizedDescriptionKey;
    v23 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1100 userInfo:v9];
    v8[2](v8, v10);
  }

  v11 = [a1[4] connection];
  [v11 invalidate];

  [a1[4] setConnection:0];
LABEL_12:
}

uint64_t sub_100386BB8(uint64_t a1, int a2, void *a3)
{
  if (!a3)
  {
    v5 = [PCBooleanCondition alloc];
    v6 = [*(a1 + 32) UUIDString];
    v7 = [*(a1 + 40) bundleID];
    v8 = [(PCBooleanCondition *)v5 initWithType:@"sc" value:v6 identifier:v7];

    [PCStatusConditionStorage clearStatusCondition:v8];
    objc_claimAutoreleasedReturnValue();
    if (a2)
    {
      v9 = [*(a1 + 40) conditionsService];
      [v9 clearCache];
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }

  return _objc_release_x1();
}

void sub_100386DC8(uint64_t a1)
{
  v2 = [*(a1 + 32) hasReadEntitlement];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 bundleID];
    v5 = [PCStatusConditionsReceiver validateWhitelistingForRead:v4];

    if (v5)
    {
      goto LABEL_11;
    }

    v6 = [*(a1 + 32) bundleID];
    [NSString stringWithFormat:@"%@ : %@ is not a whitelisted status condition reader.", v6, *(a1 + 40)];
  }

  else
  {
    v6 = [v3 bundleID];
    [NSString stringWithFormat:@"Ignoring request from unentitled client %@", v6, v19];
  }
  v7 = ;

  if (v7)
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136643075;
      v23 = "[PCStatusConditionsReceiver isStatusConditionRegistered:bundleIdentifier:completionHandler:]_block_invoke";
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{sensitive}s]: %{public}@", buf, 0x16u);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      v28 = NSLocalizedDescriptionKey;
      v29 = v7;
      v10 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v11 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1100 userInfo:v10];
      (*(v9 + 16))(v9, 0, v11);
    }

    v12 = [*(a1 + 32) connection];
    [v12 invalidate];

    [*(a1 + 32) setConnection:0];
    goto LABEL_14;
  }

LABEL_11:
  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    *buf = 136643331;
    v23 = "[PCStatusConditionsReceiver isStatusConditionRegistered:bundleIdentifier:completionHandler:]_block_invoke";
    v24 = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{sensitive}s]: retrieving registration for condition %{public}@ and bundle %{public}@.", buf, 0x20u);
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1003870CC;
  v20[3] = &unk_100480C68;
  v18 = *(a1 + 48);
  v21 = *(a1 + 56);
  [v16 _isStatusConditionRegistered:v17 bundleIdentifier:v18 completionHandler:v20];
  v7 = v21;
LABEL_14:
}

uint64_t sub_1003870CC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1003884E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100388504(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10038851C(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [a2 description];
  v4 = [NSString stringWithFormat:@"\n%@", v8];
  v5 = [v3 stringByAppendingString:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100388618(id a1)
{
  v1 = qword_1004EA3C0;
  qword_1004EA3C0 = &off_100494908;
}

void sub_100388E4C(id a1)
{
  qword_1004EA3D0 = objc_alloc_init(PCStatusConditionsService);

  _objc_release_x1();
}

void sub_100388FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100389758(id a1)
{
  v1 = +[APDataAdaptorRepository sharedRepository];
  v2 = [v1 registerAdaptorClass:objc_opt_class()];

  if (v2)
  {
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 code];
      v5 = [v2 localizedDescription];
      v6 = 134218242;
      v7 = v4;
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error %ld registering status condition data adaptor: %{public}@", &v6, 0x16u);
    }
  }
}

uint64_t sub_10038C334(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10038C34C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v7;
      v13 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: Error fetching API host from AMSMediaTask bag. Error: %{public}@", &v17, 0x16u);
    }

    v14 = [NSURLComponents componentsWithString:@"https://amp-api-edge.apps.apple.com"];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v8 = objc_alloc_init(NSURLComponents);
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v5 absoluteString];
    [*(*(*(a1 + 48) + 8) + 40) setHost:v11];

    [*(*(*(a1 + 48) + 8) + 40) setScheme:@"https"];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10038C4E0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v6 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: Error fetching country code from AMSMediaTask bag", &v9, 0xCu);
    }

    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = @"us";
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10038C600(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v18 = objc_opt_class();
    APSimulateCrashNoKillProcess();
    v7 = [*(a1 + 32) context];
    v8 = [v7 identifier];
    v9 = [APMediaServiceRequest _contentDataWithContextIdentifier:v8 serverUnfilledReason:1022 diagnosticCode:0];

    v10 = *(a1 + 56);
    v24 = v9;
    v11 = [NSArray arrayWithObjects:&v24 count:1];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    v9 = [APAMSNetworkFacade dataTaskWithRequest:v5];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10038C848;
    v19[3] = &unk_100480DB8;
    objc_copyWeak(v22, (a1 + 64));
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v22[1] = *(a1 + 72);
    v22[2] = *(a1 + 80);
    v14 = *(a1 + 48);
    v23 = *(a1 + 88);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v20 = v17;
    v21 = v16;
    [v9 addFinishBlock:v19];

    objc_destroyWeak(v22);
  }
}

void sub_10038C848(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained endSignpostForPlacement:objc_msgSend(*(a1 + 32) log:"placement") logID:{*(a1 + 40), *(a1 + 72)}];

  v7 = +[NSDate now];
  [v7 timeIntervalSince1970];
  v9 = v8;

  v10 = v9 - *(a1 + 80);
  v11 = objc_loadWeakRetained((a1 + 64));
  [v11 setResponseTime:v10];

  [APMediaServiceRequest _logResponse:v12 requestID:*(a1 + 48) error:v5 prettyPrint:*(a1 + 88)];
  [APMediaServiceRequest _handleResult:v12 error:v5 params:*(a1 + 32) responseReceivedTimestamp:*(a1 + 56) completionHandler:v9];
}

void sub_10038DC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSURLQueryItem queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

uint64_t _checkClassType(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a1;
  v7 = a3;
  if (!v6)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v15 = @"reason";
    v8 = [NSString stringWithFormat:@"%@ is nil", v7];
    v16 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.ap.MediaServiceRequest" code:2201 userInfo:v9];
LABEL_8:

    a4 = 0;
    goto LABEL_9;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v13 = @"reason";
    v10 = objc_opt_class();
    v8 = NSStringFromClass(v10);
    v9 = [NSString stringWithFormat:@"%@ is of the wrong type (%@)", v7, v8];
    v14 = v9;
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.ap.MediaServiceRequest" code:2201 userInfo:v11];

    goto LABEL_8;
  }

  a4 = 1;
LABEL_9:

  return a4;
}

id _contentDataWithContextID(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(APContentData);
  [v2 setContextIdentifier:v1];

  return v2;
}

id _contentDataWithContextIDAndError(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _contentDataWithContextID(v3);
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 identifier];
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Content %{public}@ for context %{public}@ is being returned with error: %{public}@", &v9, 0x20u);
  }

  [v5 setError:v4];

  return v5;
}

uint64_t sub_100392060()
{
  swift_unknownObjectRelease();

  sub_100003894(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_1003920BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1003974E8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a4)
  {
    swift_errorRetain();
    if (qword_1004DD708 != -1)
    {
      swift_once();
    }

    v14 = sub_100398CA8();
    sub_10000351C(v14, qword_1004DE600);
    (*(v8 + 16))(v11, a5, v7);
    swift_errorRetain();
    v15 = sub_100398C88();
    v16 = sub_1003993D8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v17 = 136315394;
      sub_100004338(&qword_1004D6A30, &type metadata accessor for URL);
      v19 = sub_100399998();
      v21 = v20;
      (*(v8 + 8))(v11, v7);
      v22 = sub_100005700(v19, v21, &v34);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "[AppleAdServicesFetcher] preloadConnectionToHost error: url=%s error: %@", v17, 0x16u);
      sub_1001E7D5C(v18);

      sub_100003894(v33);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    if (qword_1004DD708 != -1)
    {
      swift_once();
    }

    v24 = sub_100398CA8();
    sub_10000351C(v24, qword_1004DE600);
    (*(v8 + 16))(v13, a5, v7);
    v25 = sub_100398C88();
    v26 = sub_1003993D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      sub_100004338(&qword_1004D6A30, &type metadata accessor for URL);
      v29 = sub_100399998();
      v31 = v30;
      (*(v8 + 8))(v13, v7);
      v32 = sub_100005700(v29, v31, &v34);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "[AppleAdServicesFetcher] preloadConnectionToHost success: url=%s", v27, 0xCu);
      sub_100003894(v28);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }
  }
}

uint64_t sub_100392568(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_100397558();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1001DDE50(v6, v10);
}

id sub_100392630(uint64_t a1)
{
  v2 = [*v1 dataTaskPromiseWithRequest:a1];

  return v2;
}

id sub_10039266C(uint64_t a1)
{
  if (qword_1004DD708 != -1)
  {
    swift_once();
  }

  v2 = sub_100398CA8();
  sub_10000351C(v2, qword_1004DE600);
  v3 = sub_100398C88();
  v4 = sub_1003993F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[TimedAppleAdServicesFetcher] clearing out timed fetcher", v5, 2u);
  }

  [*(a1 + 80) lock];
  *(a1 + 16) = 0;
  swift_unknownObjectRelease();
  v6 = *(a1 + 80);

  return [v6 unlock];
}

id variable initialization expression of AdServicesFetcherFactory.lock()
{
  v0 = objc_allocWithZone(APUnfairRecursiveLock);

  return [v0 init];
}

uint64_t sub_1003927C0(void *a1, double a2)
{
  *(v2 + 16) = 0;
  v5 = [objc_opt_self() adprivacydBag];
  v6 = objc_allocWithZone(AMSMediaTokenService);
  v7 = sub_100398F28();
  v8 = [v6 initWithClientIdentifier:v7 bag:v5];

  v9 = [objc_opt_self() defaultSessionConfiguration];
  v10 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v9];
  [v8 setSession:v10];
  v11 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v8];
  [v10 setProtocolHandler:v11];

  *(v2 + 64) = &type metadata for AppleAdServicesFetcher;
  *(v2 + 72) = &off_100480F90;
  *(v2 + 32) = v8;
  *(v2 + 40) = v10;
  *(v2 + 80) = a1;
  *(v2 + 24) = a2;
  v12 = v8;
  v13 = v10;
  v14 = a1;
  sub_1000039B8();

  return v2;
}

void sub_100392960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1003974E8() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_1003920BC(a1, a2, a3, a4, v10);
}

double sub_1003929FC()
{
  qword_1004DD8D0 = 0;
  result = 0.0;
  xmmword_1004DD8B0 = 0u;
  unk_1004DD8C0 = 0u;
  return result;
}

uint64_t static APAMSNetworkFacade.configure(fetcherProviderSource:)(uint64_t a1)
{
  if (qword_1004DD700 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  sub_100003554(a1, v3);
  swift_beginAccess();
  sub_100392AAC(v3, &xmmword_1004DD8B0);
  return swift_endAccess();
}

uint64_t sub_100392AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DD8D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

APAMSNetworkFacade __swiftcall APAMSNetworkFacade.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id _sSo18APAMSNetworkFacadeC21MediaServiceInterfaceE6encodeySo10AMSPromiseCySo13AMSURLRequestCG10Foundation10URLRequestVFZ_0()
{
  if (qword_1004DD700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1003931F8(&xmmword_1004DD8B0, v19);
  if (v20)
  {
    sub_100004A64(v19, v21);
    v0 = v22;
    v1 = v23;
    sub_1000035B8(v21, v22);
    (*(v1 + 8))(v0, v1);
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    v6 = [objc_opt_self() adprivacydBag];
    v7 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v5 bag:v6];

    [v7 setAccount:0];
    v8 = objc_allocWithZone(AMSProcessInfo);
    v9 = sub_100398F28();
    v10 = [v8 initWithBundleIdentifier:v9];

    [v7 setClientInfo:v10];
    v11 = sub_100397028();
    v12 = [v7 requestByEncodingRequest:v11 parameters:0];
    swift_unknownObjectRelease();

    sub_100003894(v21);
    return v12;
  }

  else
  {
    sub_100393268(v19);
    v14 = objc_allocWithZone(NSError);
    v15 = sub_100398F28();
    v16 = [v14 initWithDomain:v15 code:1 userInfo:0];

    v17 = sub_1003973D8();
    v18 = [objc_opt_self() promiseWithError:v17];

    return v18;
  }
}

id _sSo18APAMSNetworkFacadeC21MediaServiceInterfaceE8dataTask4withSo10AMSPromiseCySo12AMSURLResultCGSo13AMSURLRequestC_tFZ_0(uint64_t a1)
{
  if (qword_1004DD700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1003931F8(&xmmword_1004DD8B0, v16);
  if (v17)
  {
    sub_100004A64(v16, v19);
    v2 = v20;
    v3 = v21;
    sub_1000035B8(v19, v20);
    (*(v3 + 8))(v2, v3);
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v16, ObjectType, v5);
    v7 = v17;
    v8 = v18;
    sub_1000035B8(v16, v17);
    v9 = (*(v8 + 16))(a1, v7, v8);
    swift_unknownObjectRelease();
    sub_100003894(v16);
    sub_100003894(v19);
    return v9;
  }

  else
  {
    sub_100393268(v16);
    v11 = objc_allocWithZone(NSError);
    v12 = sub_100398F28();
    v13 = [v11 initWithDomain:v12 code:1 userInfo:0];

    v14 = sub_1003973D8();
    v15 = [objc_opt_self() promiseWithError:v14];

    return v15;
  }
}

unint64_t type metadata accessor for APAMSNetworkFacade()
{
  result = qword_1004DD908;
  if (!qword_1004DD908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004DD908);
  }

  return result;
}

uint64_t sub_1003931F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DD8D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100393268(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DD8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AdServicesFetcherFactory.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = [objc_allocWithZone(APUnfairRecursiveLock) init];
  return v0;
}

uint64_t AdServicesFetcherFactory.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = [objc_allocWithZone(APUnfairRecursiveLock) init];
  return v0;
}

uint64_t sub_100393374()
{
  v1 = *(v0 + 232);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100393420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1001F2B74(a3, v22 - v9);
  v11 = sub_100399268();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1001ED244(v10, &qword_1004D70F0);
  }

  else
  {
    sub_100399258();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100399228();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100398FD8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1001ED244(a3, &qword_1004D70F0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001ED244(a3, &qword_1004D70F0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t AdServicesFetcherFactory.deinit()
{
  sub_1001F6D68(v0 + 16);

  return v0;
}

uint64_t AdServicesFetcherFactory.__deallocating_deinit()
{
  sub_1001F6D68(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_100393748()
{
  result = qword_1004DD9C0;
  if (!qword_1004DD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DD9C0);
  }

  return result;
}

uint64_t sub_10039379C()
{
  v0 = sub_100398CA8();
  sub_1001EB3CC(v0, qword_1004DE600);
  sub_10000351C(v0, qword_1004DE600);
  return sub_100398C98();
}

void sub_100393818()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to initialize temporary directory: %{darwin.errno}d", v1, 8u);
}

id *sub_100393B48(id *a1, double a2, float a3, float a4, float a5, float a6, float a7)
{
  v7 = a1;
  if (a1)
  {
    v26[0] = &off_100492280;
    v13 = [NSNumber numberWithFloat:?];
    v27[0] = v13;
    v26[1] = &off_100492298;
    *&v14 = a3;
    v15 = [NSNumber numberWithFloat:v14];
    v27[1] = v15;
    v26[2] = &off_1004922B0;
    *&v16 = a4;
    v17 = [NSNumber numberWithFloat:v16];
    v27[2] = v17;
    v26[3] = &off_1004922C8;
    *&v18 = a5;
    v19 = [NSNumber numberWithFloat:v18];
    v27[3] = v19;
    v26[4] = &off_1004922E0;
    *&v20 = a6;
    v21 = [NSNumber numberWithFloat:v20];
    v27[4] = v21;
    v26[5] = &off_1004922F8;
    *&v22 = a7;
    v23 = [NSNumber numberWithFloat:v22];
    v27[5] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:6];
    v7 = sub_100393D18(v7, v24);
  }

  return v7;
}

id *sub_100393D18(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = APRateLimits;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

id sub_100393D90(void *a1)
{
  if (a1)
  {
    a1 = [a1 rateLimits];
    v1 = vars8;
  }

  return a1;
}

float sub_100393DC0(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = [a1 rateLimits];
  v4 = [NSNumber numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

id *sub_1003942F4(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v20 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (a1)
  {
    v17 = [a1 init];
    a1 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 1, a2);
      objc_storeStrong(a1 + 6, a3);
      objc_storeStrong(a1 + 2, a4);
      objc_storeStrong(a1 + 3, a5);
      objc_storeStrong(a1 + 4, a6);
      objc_storeStrong(a1 + 5, a7);
    }
  }

  return a1;
}

uint64_t sub_1003943F4(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100394400(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_10039440C(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_100394418(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_100394424(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t sub_100394430(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

void sub_1003946B8(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 8);
  }
}

void *sub_100394730(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = APMetricsObservability;
    v5 = objc_msgSendSuper2(&v10, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create("com.apple.ap.observabilitymonitor", v6);
      v8 = a1[2];
      a1[2] = v7;
    }
  }

  return a1;
}

void sub_1003947DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    if (a3 >= 1 && a3 != 8501)
    {
      v7 = APLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = 138543362;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Batch created. BatchID: %{public}@", &v8, 0xCu);
      }
    }
  }
}

void sub_1003948B0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    if (a4 == 8501)
    {
      if (v8)
      {
        v10 = [[APExpiredObservabilityBatchesReporter alloc] initWithBatchPath:v8];
        [(APExpiredObservabilityBatchesReporter *)v10 run];
      }

      goto LABEL_6;
    }

    if (a4 >= 1)
    {
LABEL_6:
      v11 = os_transaction_create();
      v12 = [a1 queue];
      sub_100007920();
      sub_100007988();
      v15 = sub_10032C604;
      v16 = &unk_10047E550;
      v17 = v7;
      v18 = a1;
      v19 = v11;
      v13 = v11;
      dispatch_async(v12, block);
    }
  }
}

void sub_1003949C8(void *a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a2 >= 1 && a2 != 8501)
    {
      v19 = v6;
      v20 = v5;
      v21 = v3;
      v22 = v4;
      v10 = os_transaction_create();
      v11 = [a1 queue];
      sub_100007920();
      sub_100007988();
      v14 = sub_10032C6CC;
      v15 = &unk_10047E578;
      v18 = a3;
      v16 = a1;
      v17 = v10;
      v12 = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_100394A90(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = os_transaction_create();
    v5 = [a1 queue];
    sub_100007920();
    sub_100007988();
    v8 = sub_10032CBCC;
    v9 = &unk_10047E550;
    v10 = v3;
    v11 = a1;
    v12 = v4;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

void sub_100394B50(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  if (a1)
  {
    if (a4 >= 1 && a4 != 8501)
    {
      if (v13)
      {
        v18 = +[NSDate now];
        [v18 timeIntervalSinceDate:v13];
        v20 = v19;
      }

      else
      {
        v21 = APLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "batchCreatedDate is missing.", buf, 2u);
        }

        v20 = -1.0;
      }

      v22 = [[APBatchesCounter alloc] initWithFileManager:v15 startDirectory:v16];
      v23 = [(APBatchesCounter *)v22 count];

      v24 = os_transaction_create();
      v25 = [a1 queue];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10032CD58;
      v27[3] = &unk_10047E648;
      v27[4] = a1;
      v30 = v20;
      v31 = a5;
      v32 = v23;
      v28 = v14;
      v29 = v24;
      v26 = v24;
      dispatch_async(v25, v27);
    }
  }
}

void sub_100394D3C(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    if (a4 >= 1 && a4 != 8501)
    {
      if (v11)
      {
        v16 = +[NSDate now];
        [v16 timeIntervalSinceDate:v11];
        v18 = v17;
      }

      else
      {
        v19 = APLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "batchCreatedDate is missing.", buf, 2u);
        }

        v18 = -1.0;
      }

      v20 = [[APBatchesCounter alloc] initWithFileManager:v13 startDirectory:v14];
      v21 = [(APBatchesCounter *)v20 count];

      v22 = os_transaction_create();
      v23 = [a1 queue];
      sub_100007920();
      sub_100007988();
      v26 = sub_10032CDA4;
      v27 = &unk_10047E5E0;
      v28 = a1;
      v31 = v18;
      v32 = v21;
      v29 = v12;
      v30 = v22;
      v24 = v22;
      dispatch_async(v23, block);
    }
  }
}

void sub_100394F00(void *a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    if (!a3)
    {
      v10 = [v7 responseError];

      if (v10)
      {
        v11 = [v7 responseError];
        v12 = [v11 code];
        v13 = a1;
        v14 = 0;
      }

      else
      {
        v15 = [v7 URLResponse];

        if (!v15)
        {
          [a1 _payloadUploadFailureWithType:1 code:1000 batchInfos:v8];
          goto LABEL_16;
        }

        v16 = [v7 URLResponse];
        if ([v16 statusCode] <= 199)
        {
        }

        else
        {
          v17 = [v7 URLResponse];
          v18 = [v17 statusCode];

          if (v18 <= 299)
          {
            [a1 _payloadUploadSuccessForBatchInfos:v8];
            goto LABEL_16;
          }
        }

        v11 = [v7 URLResponse];
        v12 = [v11 statusCode];
        v13 = a1;
        v14 = 1;
      }

      [v13 _payloadUploadFailureWithType:v14 code:v12 batchInfos:v8];

      goto LABEL_16;
    }

    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Payload transmission timed out.", v19, 2u);
    }
  }

LABEL_16:
}

void sub_100395124(void *a1)
{
  if (a1)
  {
    v2 = [a1 backoffTimer];

    if (v2)
    {
      [a1 _backoffTimerReset];

      [a1 _continueProcessing];
    }
  }
}

void *sub_1003951C0(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = APSequentialProcessor;
    v8 = objc_msgSendSuper2(&v16, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 2, a2);
      v9 = objc_retainBlock(v7);
      v10 = a1[3];
      a1[3] = v9;

      v11 = [[APUnfairLock alloc] initWithOptions:1];
      v12 = a1[6];
      a1[6] = v11;

      v13 = [[APUnfairLock alloc] initWithOptions:1];
      v14 = a1[7];
      a1[7] = v13;
    }
  }

  return a1;
}

void sub_100395298(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 collectionProviderLock];
    [v4 lock];
    [a1 setCollectionProvider:v3];

    [v4 unlock];
    v5 = [a1 lock];
    v6 = [a1 queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100336DDC;
    v8[3] = &unk_10047CC10;
    v9 = v5;
    v10 = a1;
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

BOOL sub_1003953BC(double *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 filesEnumerator];
  v3 = [v2 nextObject];

  v4 = v3 != 0;
  if (v3)
  {
    v5 = sub_100395634(v3);
    [v5 timeIntervalSince1970];
    v7 = v6;
    v8 = a1[1];

    if (v7 >= v8)
    {
      v11 = [a1 ancientItemBlock];

      if (!v11)
      {
        goto LABEL_10;
      }

      v12 = [a1 now];
      v13 = sub_1003955B0(v3);
      [v12 timeIntervalSinceDate:v13];
      v15 = v14;

      if (v15 <= a1[2])
      {
        goto LABEL_10;
      }

      v10 = [a1 ancientItemBlock];
      goto LABEL_9;
    }

    v9 = [a1 removalBlock];

    if (v9)
    {
      v10 = [a1 removalBlock];
LABEL_9:
      v16 = v10;
      (*(v10 + 16))(v10, v3);
    }
  }

LABEL_10:

  return v4;
}

id *sub_10039550C(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v11 = [a1 init];
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 5, a4);
      objc_storeStrong(a1 + 3, a2);
      objc_storeStrong(a1 + 4, a3);
    }
  }

  return a1;
}

void *sub_1003955B0(void *a1)
{
  if (a1)
  {
    v3 = a1;
    v4 = a1[1];
    if (!v4)
    {
      v5 = [a1 fileManager];
      v6 = v3[4];
      v7 = [sub_100007940() createdDateForFileAtPath:? error:?];
      v8 = v3[1];
      v3[1] = v7;

      v4 = v3[1];
    }

    a1 = v4;
    v2 = vars8;
  }

  return a1;
}

void *sub_100395634(void *a1)
{
  if (a1)
  {
    v3 = a1;
    v4 = a1[2];
    if (!v4)
    {
      v5 = [a1 fileManager];
      v6 = v3[4];
      v7 = [sub_100007940() lastModifiedDateForFileAtPath:? error:?];
      v8 = v3[2];
      v3[2] = v7;

      v4 = v3[2];
    }

    a1 = v4;
    v2 = vars8;
  }

  return a1;
}

void sub_1003956B8(uint64_t a1, id *a2, BOOL *a3)
{
  if (a1)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  v7 = a2[3];
  if ([v18 isEqualToString:v7])
  {
    if (a1)
    {
      v8 = *(a1 + 32);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = a2[4];
    if ([v9 isEqualToString:v10] && (objc_msgSend(*(a1 + 8), "timeIntervalSince1970"), v12 = v11, objc_msgSend(a2[1], "timeIntervalSince1970"), v12 == v13))
    {
      [*(a1 + 16) timeIntervalSince1970];
      v15 = v14;
      [a2[2] timeIntervalSince1970];
      v17 = v15 == v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  *a3 = v17;
}

id *sub_1003957D4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = a2;
  v25 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = APPCControllerCoordinator;
    v16 = objc_msgSendSuper2(&v26, "init");
    if (v16)
    {
      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136643331;
        v28 = "[APPCControllerCoordinator initWithBundleID:requesterID:identifierProvider:connection:promotedContentDeliveryBlock:]";
        v29 = 2048;
        v30 = v16;
        v31 = 2114;
        v32 = v12;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{sensitive}s: bundleID for controller %p is %{public}@.", buf, 0x20u);
      }

      objc_storeStrong(v16 + 3, a2);
      objc_storeStrong(v16 + 4, a5);
      v18 = [v15 copy];
      v19 = v16[5];
      v16[5] = v18;

      v20 = +[NSMutableSet set];
      v21 = v16[6];
      v16[6] = v20;

      v22 = objc_alloc_init(APUnfairRecursiveLock);
      v23 = v16[7];
      v16[7] = v22;

      objc_storeStrong(v16 + 2, a3);
      objc_storeStrong(v16 + 9, a4);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_1003959BC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v265 = a1;
  if (a1)
  {
    v18 = +[APIDAccountProvider privateUserAccount];
    v19 = [v18 isNoServicesRegion];
    v20 = [v18 isChild];
    v21 = [v18 isProtoU13];
    v29 = v21;
    if ((v19 & 1) == 0 && (v20 & 1) == 0 && !v21)
    {
      if ([sub_100007994(v21 v22])
      {
        v30 = APLogForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          sub_1003780E8(&_mh_execute_header, v31, v32, "This context can not be used to generate ads for this user due to subscription status.");
        }

        v41 = sub_100007994(v33, v34, v35, v36, v37, v38, v39, v40, v192, v194, v196, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v235, v239, v243, v247, v249, v251, v253, v257, v260, obja, v266);
        goto LABEL_25;
      }

      v254 = v18;
      v47 = [v13 indexOfObject:&off_100493540];
      if (v47 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v268 = 0;
        goto LABEL_17;
      }

      v66 = [v13 count];
      if (v66 >= 2)
      {
        v74 = APSimulateCrash();
        v82 = sub_100007994(v74, v75, v76, v77, v78, v79, v80, v81, v192, v194, v196, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v235, v239, v243, v247, v249, v251, v254, v257, v260, obja, v266);
LABEL_55:
        [v82 createContentDatasFromContext:? unfilledReasonCode:? types:? diagnosticCode:? completionHandler:?];
        v18 = v255;
        goto LABEL_26;
      }

      v83 = [sub_100007994(v66 v67];
      v91 = v83;
      if (v83 == 7005)
      {
        if ([v266 hasRunningLandingPageRequest])
        {
          v132 = APLogForCategory();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            sub_1003780E8(&_mh_execute_header, v133, v134, "There is a Media API operation in flight, ignoring current request.");
          }

          v82 = sub_100007954(v135, v136, v137, v138, v139, v140, v141, v142, v192, v194, v196, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v235, v239, v245, v247, v249, v251, v254, v257, v260, obja, v266);
          goto LABEL_55;
        }
      }

      else if (!v83)
      {
        v82 = sub_100007994(0, v84, v85, v86, v87, v88, v89, v90, v192, v194, v196, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v235, v239, v245, v247, v249, v251, v254, v257, v260, obja, v266);
        goto LABEL_55;
      }

      v268 = v91;
      [objc_opt_class() _sendFirstRequestMetricIfRequiredForPlacement:v91];
LABEL_17:
      v244 = +[NSUUID UUID];
      v48 = [v14 fingerprint];
      v49 = [APManagedContext findManagedContextByFingerprint:v48];

      if (v49)
      {
        v50 = APLogForCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          [v14 fingerprint];
          v276 = *buf = 138543362;
          sub_100378108();
          _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
        }

        v56 = [v266 queryCacheForRequests:v13 managedContext:v49];
        v57 = v49;
      }

      else
      {
        if (v47 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v92 = [v14 supplementalContext];

          if (!v92)
          {
            [sub_100007954(v93 v94];
            goto LABEL_48;
          }
        }

        v235 = [APManagedContext createManagedContextWithContext:v14 idAccount:v254];
        v101 = APLogForCategory();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          [v14 fingerprint];
          v276 = *buf = 138543362;
          sub_100378108();
          _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
        }

        v56 = v13;
        v57 = v235;
      }

      v240 = v56;
      if ([v56 count])
      {
        v107 = [v57 idAccount];
        v115 = v107;
        if (!v107)
        {
          v107 = v254;
          v115 = v107;
        }

        if (v47 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v232 = v115;
          v236 = v57;
          v116 = [v266 lock];
          [v116 lock];
          v117 = [v266 tokens];
          v118 = v244;
          [v117 addObject:v244];

          [v116 unlock];
          v119 = APLogForCategory();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            v120 = [v14 identifier];
            [v244 UUIDString];
            *buf = 138543618;
            v276 = v120;
            v278 = v277 = 2114;
            sub_100378108();
            _os_log_impl(v121, v122, v123, v124, v125, 0x16u);

            v118 = v244;
          }

          LOBYTE(v192) = a6;
          v126 = v240;
          v127 = v232;
          [v266 requestFromLegacyInterfaceForPromotedContents:v240 context:v14 withToken:v118 andBundleID:v15 clientInfo:v16 idAccount:v232 deliverEntireBatch:v192 completionHandler:v17];

          v18 = v254;
          v57 = v236;
        }

        else
        {
          v18 = v254;
          if (v49)
          {
            [sub_100007954(v107 v108];
            v127 = v115;
            v126 = v241;
          }

          else
          {
            v237 = v57;
            v143 = objc_alloc_init(APMediaServiceRequestParameters);
            [(APMediaServiceRequestParameters *)v143 setContext:v14];
            [(APMediaServiceRequestParameters *)v143 setRequestID:v244];
            [(APMediaServiceRequestParameters *)v143 setClientInfo:v16];
            [(APMediaServiceRequestParameters *)v143 setIdAccount:v115];
            [(APMediaServiceRequestParameters *)v143 setPlacement:v268];
            [(APMediaServiceRequestParameters *)v143 setDeliverEntireBatch:a6];
            v144 = +[APDeviceInfo current];
            v223 = v16;
            v233 = v115;
            if ([v144 personalizedAdsAcknowledged])
            {
              v145 = +[APDeviceInfo current];
              -[APMediaServiceRequestParameters setPersonalizedAdsEnabled:](v143, "setPersonalizedAdsEnabled:", [v145 personalizedAdsEnabled]);
            }

            else
            {
              [(APMediaServiceRequestParameters *)v143 setPersonalizedAdsEnabled:0];
            }

            v226 = v143;

            v146 = objc_alloc_init(APLegacyFeatureFlags);
            [(APMediaServiceRequestParameters *)v143 setFeatureFlagProvider:v146];

            v147 = [v266 connection];
            v148 = [v147 auditTokenString];

            v149 = [v266 connection];
            v150 = [v149 bundleID];
            v151 = [NSBundle eventSourceID:v150];

            if (v151 == 979)
            {
              v151 = 978;
            }

            v152 = [v266 identifierProvider];
            v229 = v148;
            v153 = [v152 getIdentifiersWithType:1 source:v151 processId:v148];

            v154 = [v153 firstObject];
            v155 = [v154 value];
            v156 = [v155 isEqualToString:@"-2"];

            v157 = v226;
            v158 = v153;
            if ((v156 & 1) == 0)
            {
              v159 = &_sSo13os_log_type_ta0A0E5debugABvgZ_ptr;
              v160 = +[NSMutableDictionary dictionary];
              v217 = v158;
              v220 = v160;
              if ([v158 count])
              {
                v161 = [v158 firstObject];
                v162 = [v161 value];
                [v160 setObject:v162 forKey:@"rotatedAnonymousId"];
              }

              else
              {
                [v160 setValue:@"-1" forKey:@"rotatedAnonymousId"];
              }

              v163 = v226;
              v164 = [v266 identifierProvider];
              v165 = [v164 getIdentifiersWithType:0 source:v151 processId:v229];

              v214 = v165;
              if ([v165 count])
              {
                v166 = [v165 firstObject];
                v167 = [v166 value];
                [v220 setObject:v167 forKey:@"anonymousSessionId"];
              }

              else
              {
                [v220 setValue:@"-1" forKey:@"anonymousSessionId"];
              }

              v168 = [v266 identifierProvider];
              v169 = [v168 getIdentifiersWithType:2 source:v151 processId:v229];

              v211 = v169;
              if ([v169 count])
              {
                v199 = v17;
                v202 = v15;
                v205 = v14;
                v208 = v13;
                v170 = +[NSMutableArray array];
                v270 = 0u;
                v271 = 0u;
                v272 = 0u;
                v273 = 0u;
                objb = v169;
                v269 = [objb countByEnumeratingWithState:&v270 objects:v274 count:16];
                if (v269)
                {
                  v267 = *v271;
                  v258 = APDefaultsBundleID;
                  v261 = v170;
                  do
                  {
                    for (i = 0; i != v269; i = i + 1)
                    {
                      if (*v271 != v267)
                      {
                        objc_enumerationMutation(objb);
                      }

                      v172 = [*(*(&v270 + 1) + 8 * i) value];
                      v173 = [v172 dataUsingEncoding:4];

                      v174 = [NSJSONSerialization JSONObjectWithData:v173 options:0 error:0];
                      v175 = [v159[433] dictionary];
                      v176 = [v174 objectForKey:@"bucketNamespace"];
                      [v175 setObject:v176 forKey:@"bucketNamespace"];
                      v177 = [v174 objectForKey:@"bucketId"];
                      if (+[APSystemInternal isAppleInternalInstall])
                      {
                        v178 = v159;
                        v179 = [[NSUserDefaults alloc] initWithSuiteName:v258];
                        v180 = [v179 integerForKey:@"bucketIDOverride"];
                        if (v180 >= 1)
                        {
                          v181 = v180;
                          v182 = APLogForCategory();
                          if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 134217984;
                            v276 = v181;
                            _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "Overriding BucketID to %ld due to internal settings.", buf, 0xCu);
                          }

                          v183 = [NSNumber numberWithInteger:v181];

                          v177 = v183;
                        }

                        v159 = v178;
                        v170 = v261;
                      }

                      [v175 setObject:v177 forKey:@"bucketId"];
                      v184 = [v174 objectForKey:@"generation"];
                      [v175 setObject:v184 forKey:@"generation"];
                      v185 = [v175 copy];
                      [v170 addObject:v185];
                    }

                    v269 = [objb countByEnumeratingWithState:&v270 objects:v274 count:16];
                  }

                  while (v269);
                }

                v186 = [v170 copy];
                v14 = v205;
                v13 = v208;
                v17 = v199;
                v15 = v202;
                v18 = v254;
                v187 = v170;
                v163 = v226;
              }

              else
              {
                v187 = +[NSMutableDictionary dictionary];
                [v187 setObject:@"-1" forKey:@"bucketNamespace"];
                v188 = [NSNumber numberWithInt:0xFFFFFFFFLL];
                [v187 setObject:v188 forKey:@"bucketId"];

                v189 = [NSNumber numberWithInt:0xFFFFFFFFLL];
                [v187 setObject:v189 forKey:@"generation"];

                v186 = [NSArray arrayWithObject:v187];
              }

              [v220 setObject:v186 forKey:@"experimentBuckets"];

              v190 = [v220 copy];
              [(APMediaServiceRequestParameters *)v163 setRotatingIdentifiers:v190];

              v157 = v163;
              v158 = v217;
            }

            [v266 _requestFromMediaWithParams:v157 completionHandler:v17];

            v16 = v223;
            v57 = v237;
            v126 = v240;
            v127 = v233;
          }
        }

        goto LABEL_89;
      }

      v128 = APLogForCategory();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        [v244 UUIDString];
        v130 = v129 = v57;
        v131 = [v14 identifier];
        *buf = 138543618;
        v276 = v130;
        v277 = 2114;
        v278 = v131;
        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "The request %{public}@ for Context %{public}@ was completely satisfied by the cache.", buf, 0x16u);

        v57 = v129;
      }

      v17[2](v17);
LABEL_48:
      v18 = v254;
LABEL_89:

      goto LABEL_26;
    }

    v42 = APLogForCategory();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
    if (v19)
    {
      if (v43)
      {
        *buf = 0;
        v46 = "This is a no services region. No ad requests allowed to server.";
LABEL_23:
        sub_1003780E8(&_mh_execute_header, v44, v45, v46);
      }
    }

    else if (v29)
    {
      if (v43)
      {
        *buf = 0;
        v46 = "This is a Proto U13 user. No ad requests allowed to server.";
        goto LABEL_23;
      }
    }

    else if (v43)
    {
      *buf = 0;
      v46 = "This is a U13 user. No ad requests allowed to server.";
      goto LABEL_23;
    }

    v41 = sub_100007954(v58, v59, v60, v61, v62, v63, v64, v65, v191, v193, v195, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v234, v238, v242, v246, v248, v250, v252, v256, v259, obj, v265);
LABEL_25:
    [v41 createContentDatasFromContext:? unfilledReasonCode:? types:? diagnosticCode:? completionHandler:?];
LABEL_26:
  }
}

void sub_10039675C(uint64_t a1, NSObject *a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_INFO, "Destroyed APPCControllerCoordinator for requester ID %{public}@", &v3, 0xCu);
}

id *sub_1003967E4(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = APPCControllerReceiver;
    a1 = objc_msgSendSuper2(&v17, "init");
    if (a1)
    {
      v8 = APLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v6 bundleID];
        *buf = 136643587;
        v19 = "[APPCControllerReceiver initWithConnection:identifierProviderFactory:]";
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v6;
        v24 = 2114;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{sensitive}s: controller %p connection %p bundleID is %{public}@.", buf, 0x2Au);
      }

      objc_storeStrong(a1 + 2, a2);
      v10 = [[APUnfairLock alloc] initWithOptions:1];
      v11 = a1[1];
      a1[1] = v10;

      v12 = [NSMutableSet setWithCapacity:12];
      v13 = a1[3];
      a1[3] = v12;

      v14 = [[APPCIdentifierProvider alloc] initWithIdentifierProvider:v7];
      v15 = a1[4];
      a1[4] = v14;
    }
  }

  return a1;
}

id sub_1003969A4(void *a1)
{
  v1 = a1;

  return [v1 encodeDouble:@"start" forKey:0.0];
}

id sub_1003969D8(void *a1)
{
  if (a1)
  {
    a1 = +[APPersistentCacheStoreProvider persistentCacheStore];
    v1 = vars8;
  }

  return a1;
}

void sub_100396A10(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    v7 = v3;
    if ([APCacheableObjectProxy objectIsLoaded:v3])
    {
      v7 = [v3 proxyObject];
    }

    v5 = +[APPersistentCacheStoreProvider persistentCacheStore];
    v6 = [v3 cacheKey];
    [v5 setObject:v7 forKey:v6 transaction:v4];
  }
}

id sub_100396AE0(id result)
{
  if (result)
  {
    v1 = result;
    v2 = +[APPersistentCacheStoreProvider persistentCacheStore];
    v3 = [v2 createTransaction];

    sub_100396A10(v1, v3);
    v4 = [v3 commit];

    return v4;
  }

  return result;
}

id sub_100396B54(id result)
{
  if (result)
  {
    v1 = result;
    v2 = +[APPersistentCacheStoreProvider persistentCacheStore];
    v3 = [v2 createTransaction];

    v4 = +[APPersistentCacheStoreProvider persistentCacheStore];
    v5 = [v1 cacheKey];
    [v4 removeObjectForKey:v5 transaction:v3];

    v6 = [v3 commit];
    return v6;
  }

  return result;
}

void sub_100396BF4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v13 = +[APPersistentCacheStoreProvider persistentCacheStore];
    v4 = [a1 cacheKey];
    [sub_100007968(v4 v5];
  }
}

void sub_100396C7C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v13 = +[APPersistentCacheStoreProvider persistentCacheStore];
    v4 = [a1 cacheKey];
    [sub_100007968(v4 v5];
  }
}

float sub_100396D18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [sub_10000797C() objectForKey:?];
    v5 = 1.0;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 floatValue];
        v5 = 0.0;
        if (v6 >= 0.0)
        {
          [v4 floatValue];
          v5 = 1.0;
          if (v7 <= 1.0)
          {
            [v4 floatValue];
            v5 = v8;
          }
        }
      }

      else
      {
        v9 = APLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = 138412290;
          v12 = v3;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "APInternalMessageRateLimitAdRequests metric must have NSNumber %@ property.", &v11, 0xCu);
        }
      }
    }
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}