Swift::Bool __swiftcall REMCDTemplate.isConnected(toAccountObject:)(NSMutableDictionary toAccountObject)
{
  v3 = [v1 remObjectID];
  if (v3)
  {
    v4 = v3;
    if ([(objc_class *)toAccountObject.super.super.isa objectForKeyedSubscript:v3])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {

        LOBYTE(v3) = v12 == 1;
        return v3;
      }
    }

    else
    {
      sub_1000050A4(v15, &qword_100939ED0, &qword_100791B10);
    }

    v5 = v4;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)toAccountObject.super.super.isa setObject:isa forKeyedSubscript:v5];

    v7 = [v1 parentAccount];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isConnectedToAccountObject:toAccountObject.super.super.isa];

      *&v15[0] = v9;
      type metadata accessor for REMObjectIsConnectedState(0);
      v10 = v5;
      [(objc_class *)toAccountObject.super.super.isa setObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() forKeyedSubscript:v10];

      swift_unknownObjectRelease();
      LOBYTE(v3) = v9;
    }

    else
    {

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

char *REMCDTemplate.publicLink.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v81 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v75 - v6;
  __chkstk_darwin(v7);
  v83 = &v75 - v8;
  __chkstk_darwin(v9);
  v85 = &v75 - v10;
  __chkstk_darwin(v11);
  v13 = &v75 - v12;
  __chkstk_darwin(v14);
  v86 = &v75 - v15;
  __chkstk_darwin(v16);
  v18 = &v75 - v17;
  __chkstk_darwin(v19);
  v87 = &v75 - v20;
  v21 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v75 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v88 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v82 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v35 = &v75 - v34;
  v36 = [v0 mostRecentPublicLinkUpdateRequestDate];
  if (!v36)
  {
    (*(v2 + 56))(v35, 1, 1, v1);
    sub_1000050A4(v35, &unk_100938850, qword_100795AE0);
    return 0;
  }

  v37 = v36;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = v1;
  v80 = v2;
  v78 = *(v2 + 56);
  v78(v35, 0, 1, v1);
  sub_1000050A4(v35, &unk_100938850, qword_100795AE0);
  v38 = [objc_opt_self() sharedInstance];
  v89[3] = sub_1000060C8(0, &qword_100946F88, REMAppleAccountUtilities_ptr);
  v89[4] = &off_1008F6B20;
  v89[0] = v38;
  sub_100439B0C(v89, v24);
  sub_10000607C(v89);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1000050A4(v24, &unk_1009441F0, &qword_100795760);
    return 0;
  }

  v39 = v88;
  (*(v26 + 32))(v88, v24, v25);
  v40 = REMCDTemplate.publicLinkConfiguration.getter();
  if (!v40)
  {
    (*(v26 + 8))(v39, v25);
    return 0;
  }

  v41 = v40;
  v42 = [v0 publicLinkCreationDate];
  if (!v42)
  {
    (*(v26 + 8))(v39, v25);

    return 0;
  }

  v75 = v41;
  v76 = v26;
  v77 = v25;
  v43 = v42;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = v79;
  v45 = v80;
  v46 = *(v80 + 32);
  v47 = v87;
  v46(v87, v18, v79);
  v48 = [v0 publicLinkLastModifiedDate];
  if (!v48)
  {

    (*(v45 + 8))(v47, v44);
LABEL_15:
    (*(v76 + 8))(v88, v77);
    return 0;
  }

  v49 = v48;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = v86;
  v46(v86, v13, v44);
  v51 = [v0 publicLinkExpirationDate];
  if (!v51)
  {

    v60 = *(v80 + 8);
    v60(v50, v44);
    v60(v47, v44);
    goto LABEL_15;
  }

  v52 = v83;
  v53 = v51;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v46(v85, v52, v44);
  v54 = [v0 lastModifiedDate];
  if (v54)
  {
    v55 = v81;
    v56 = v54;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = v82;
    v46(v82, v55, v44);
    v78(v57, 0, 1, v44);
    v58 = v84;
    v46(v84, v57, v44);
    v59 = v80;
  }

  else
  {
    v62 = v82;
    v78(v82, 1, 1, v44);
    v58 = v84;
    static Date.distantPast.getter();
    v59 = v80;
    if ((*(v80 + 48))(v62, 1, v44) != 1)
    {
      sub_1000050A4(v62, &unk_100938850, qword_100795AE0);
    }
  }

  LODWORD(v84) = static Date.< infix(_:_:)();
  v63 = *(v59 + 8);
  v63(v58, v44);
  v64 = objc_allocWithZone(REMTemplatePublicLink);
  URL._bridgeToObjectiveC()(v65);
  v67 = v66;
  v68 = v87;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v70 = Date._bridgeToObjectiveC()().super.isa;
  v71 = v85;
  v72 = Date._bridgeToObjectiveC()().super.isa;
  v73 = v64;
  v74 = v75;
  v84 = [v73 initWithURL:v67 configuration:v75 creationDate:isa lastModifiedDate:v70 expirationDate:v72 canBeUpdated:v84 & 1];

  v63(v71, v44);
  v63(v86, v44);
  v63(v68, v44);
  (*(v76 + 8))(v88, v77);
  return v84;
}

id REMCDTemplate.publicLinkConfiguration.getter()
{
  result = [v0 publicLinkConfigurationData];
  if (result)
  {
    v2 = result;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = objc_autoreleasePoolPush();
    sub_1000060C8(0, &qword_100946F90, NSKeyedUnarchiver_ptr);
    sub_1000060C8(0, &unk_100946F98, REMTemplatePublicLinkConfiguration_ptr);
    v7 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    objc_autoreleasePoolPop(v6);
    sub_10001BBA0(v3, v5);
    return v7;
  }

  return result;
}

void REMCDTemplate.publicLinkConfiguration.setter(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_autoreleasePoolPush();
    v30 = 0;
    v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v30];
    v5 = v30;
    if (v4)
    {
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      objc_autoreleasePoolPop(v3);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v6, v8);
      [v1 setPublicLinkConfigurationData:isa];
    }

    else
    {
      v10 = v5;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      objc_autoreleasePoolPop(v3);
      if (qword_100936140 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946F50);
      v12 = v2;
      v13 = v1;
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v16 = 136446722;
        v17 = [v13 remObjectID];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 description];

          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
        }

        else
        {
          v22 = 0xE300000000000000;
          v20 = 7104878;
        }

        v23 = sub_10000668C(v20, v22, &v30);

        *(v16 + 4) = v23;
        *(v16 + 12) = 2114;
        *(v16 + 14) = v12;
        *v28 = a1;
        *(v16 + 22) = 2082;
        swift_getErrorValue();
        v24 = v12;
        v25 = Error.rem_errorDescription.getter();
        v27 = sub_10000668C(v25, v26, &v30);

        *(v16 + 24) = v27;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to set '\\REMCDTemplate.publicLinkConfiguration' due to error upon encoding 'newValue' as 'Data' {remObjectID: %{public}s, newValue: %{public}@, error: %{public}s}", v16, 0x20u);
        sub_1000050A4(v28, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      [v13 setPublicLinkConfigurationData:0];
    }
  }

  else
  {

    [v1 setPublicLinkConfigurationData:0];
  }
}

void (*REMCDTemplate.publicLinkConfiguration.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = REMCDTemplate.publicLinkConfiguration.getter();
  return sub_100439AA4;
}

void sub_100439AA4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    REMCDTemplate.publicLinkConfiguration.setter(v2);
  }

  else
  {
    REMCDTemplate.publicLinkConfiguration.setter(*a1);
  }
}

uint64_t sub_100439B0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v118 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v6 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v122 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v115 - v9;
  v11 = sub_1000F5104(&unk_100946FE0, &qword_1007A9D20);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v124 = &v115 - v13;
  v14 = type metadata accessor for URLComponents();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v125 = *(v19 - 8);
  v20 = *(v125 + 64);
  __chkstk_darwin(v19);
  v121 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = __chkstk_darwin(v22).n128_u64[0];
  v25 = &v115 - v24;
  v26 = [v2 publicLinkURLUUID];
  if (v26)
  {
    v115 = ObjectType;
    v119 = v18;
    v120 = a2;
    v27 = v26;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = [v2 parentAccount];
    v123 = v2;
    if (v28)
    {
      v29 = v28;
      v30 = [v28 ckIdentifier];

      if (v30)
      {
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = a1;
        v35 = a1[3];
        v117 = v15;
        v36 = v19;
        v37 = v34[4];
        sub_10000F61C(v34, v35);
        v38 = *(v37 + 8);
        v39 = v37;
        v19 = v36;
        v15 = v117;
        v40 = v38(v31, v33, v35, v39);
        v42 = v41;
        v2 = v123;

        if (v42)
        {
          v43 = HIBYTE(v42) & 0xF;
          if ((v42 & 0x2000000000000000) == 0)
          {
            v43 = v40 & 0xFFFFFFFFFFFFLL;
          }

          if (v43)
          {

            v116 = 1;
            goto LABEL_14;
          }
        }
      }
    }

    v40 = *&v2[OBJC_IVAR___REMCDTemplate_defaultPublicLinkURLHostname];
    v42 = *&v2[OBJC_IVAR___REMCDTemplate_defaultPublicLinkURLHostname + 8];
    swift_bridgeObjectRetain_n();
    v116 = 0;
LABEL_14:
    v127 = 0;
    v128 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v127 = 0x2F2F3A7370747468;
    v128 = 0xE800000000000000;
    v47._countAndFlagsBits = v40;
    v47._object = v42;
    String.append(_:)(v47);

    v48._object = 0x80000001007F8700;
    v48._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v48);
    v49._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v49);

    v50 = v124;
    URLComponents.init(string:)();

    if ((*(v15 + 48))(v50, 1, v14) == 1)
    {
      sub_1000050A4(v50, &unk_100946FE0, &qword_1007A9D20);
      v51 = v123;
      if (qword_100936148 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_100006654(v52, qword_100946F68);
      v53 = v125;
      v54 = v121;
      (*(v125 + 16))(v121, v25, v19);
      v55 = v19;
      v56 = v51;

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v57, v58))
      {
        LODWORD(v119) = v58;
        v123 = v25;
        v124 = v55;
        v59 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v126 = v122;
        *v59 = 136316162;
        v127 = v115;
        swift_getMetatypeMetadata();
        v60 = String.init<A>(describing:)();
        v62 = sub_10000668C(v60, v61, &v126);

        *(v59 + 4) = v62;
        *(v59 + 12) = 2082;
        v63 = [v56 remObjectID];
        if (v63)
        {
          v64 = v63;
          v65 = [v63 description];

          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;
        }

        else
        {
          v66 = 7104878;
          v68 = 0xE300000000000000;
        }

        v77 = sub_10000668C(v66, v68, &v126);

        *(v59 + 14) = v77;
        *(v59 + 22) = 2082;
        v78 = UUID.uuidString.getter();
        v80 = v79;
        v81 = *(v125 + 8);
        v82 = v54;
        v83 = v124;
        v81(v82, v124);
        v84 = sub_10000668C(v78, v80, &v126);

        *(v59 + 24) = v84;
        *(v59 + 32) = 2082;
        v85 = sub_10000668C(v40, v42, &v126);

        *(v59 + 34) = v85;
        *(v59 + 42) = 2082;
        if (v116)
        {
          v86 = 1702195828;
        }

        else
        {
          v86 = 0x65736C6166;
        }

        if (v116)
        {
          v87 = 0xE400000000000000;
        }

        else
        {
          v87 = 0xE500000000000000;
        }

        v88 = sub_10000668C(v86, v87, &v126);

        *(v59 + 44) = v88;
        _os_log_impl(&_mh_execute_header, v57, v119, "%s: Failed to compute public link URL {templateID: %{public}s, publicLinkURLUUID: %{public}s, hostname: %{public}s, isUsingDisplayedHostnameOfACAccount: %{public}s}", v59, 0x34u);
        swift_arrayDestroy();

        v81(v123, v83);
      }

      else
      {

        v76 = *(v53 + 8);
        v76(v54, v55);
        v76(v25, v55);
      }

      v89 = type metadata accessor for URL();
      return (*(*(v89 - 8) + 56))(v120, 1, 1, v89);
    }

    else
    {

      (*(v15 + 32))(v119, v50, v14);
      v69 = v123;
      v70 = [v123 name];
      if (v70)
      {
        v71 = v70;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v72 = String.urlFragmentRepresentation.getter();
        v74 = v73;

        if (v74)
        {
          v75 = HIBYTE(v74) & 0xF;
          if ((v74 & 0x2000000000000000) == 0)
          {
            v75 = v72 & 0xFFFFFFFFFFFFLL;
          }

          if (v75)
          {
            URLComponents.percentEncodedFragment.setter();
          }

          else
          {
          }
        }
      }

      v117 = v15;
      v121 = v14;
      URLComponents.url.getter();
      if (qword_100936148 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_100006654(v90, qword_100946F68);
      v91 = v122;
      sub_1001E0978(v10, v122);
      v92 = v69;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v123 = v10;
        v124 = v19;
        v95 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v95 = 136315906;
        v127 = v115;
        swift_getMetatypeMetadata();
        v96 = String.init<A>(describing:)();
        v98 = sub_10000668C(v96, v97, &v126);

        *(v95 + 4) = v98;
        *(v95 + 12) = 2082;
        v99 = [v92 remObjectID];
        if (v99)
        {
          v100 = v99;
          v101 = [v99 description];

          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;
        }

        else
        {
          v102 = 7104878;
          v104 = 0xE300000000000000;
        }

        v106 = sub_10000668C(v102, v104, &v126);

        *(v95 + 14) = v106;
        *(v95 + 22) = 2082;
        v107 = v122;
        v108 = Optional.descriptionOrNil.getter();
        v110 = v109;
        sub_1000050A4(v107, &unk_1009441F0, &qword_100795760);
        v111 = sub_10000668C(v108, v110, &v126);

        *(v95 + 24) = v111;
        *(v95 + 32) = 2082;
        if (v116)
        {
          v112 = 1702195828;
        }

        else
        {
          v112 = 0x65736C6166;
        }

        if (v116)
        {
          v113 = 0xE400000000000000;
        }

        else
        {
          v113 = 0xE500000000000000;
        }

        v114 = sub_10000668C(v112, v113, &v126);

        *(v95 + 34) = v114;
        _os_log_impl(&_mh_execute_header, v93, v94, "%s: Computed public link URL {templateID: %{public}s, publicLinkURL: %{public}s, isUsingDisplayedHostnameOfACAccount: %{public}s}", v95, 0x2Au);
        swift_arrayDestroy();

        (*(v117 + 8))(v119, v121);
        (*(v125 + 8))(v25, v124);
        v105 = v120;
        v10 = v123;
      }

      else
      {

        sub_1000050A4(v91, &unk_1009441F0, &qword_100795760);
        (*(v117 + 8))(v119, v121);
        (*(v125 + 8))(v25, v19);
        v105 = v120;
      }

      return sub_10003E8F8(v10, v105);
    }
  }

  v44 = type metadata accessor for URL();
  v45 = *(*(v44 - 8) + 56);

  return v45(a2, 1, 1, v44);
}

void sub_10043A70C(uint64_t a1, NSString a2, char a3)
{
  v7 = [v3 membershipsOfRemindersInSectionsChecksum];
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!a2)
  {

LABEL_12:
    [v3 setMembershipsOfRemindersInSectionsChecksum:a2];

    if (a3)
    {
      v14 = [v3 createResolutionTokenMapIfNecessary];
      v15 = String._bridgeToObjectiveC()();
      [v14 updateForKey:v15];
    }

    return;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
    goto LABEL_12;
  }
}

void sub_10043A8B0(void *a1)
{
  if (qword_100936140 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100946F50);
  v3 = a1;

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v5 = 136446466;
    v15 = [v3 remObjectID];
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v6 = Optional.descriptionOrNil.getter();
    v8 = v7;

    v9 = sub_10000668C(v6, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    v10 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (v11)
    {
      v12 = sub_10000668C(v10, v11, &v16);

      *(v5 + 14) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v4, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with newValue, which has incorrect type {objectID: %{public}s, keyPath: %{public}s}}", v5, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      _StringGuts.grow(_:)(46);
      v13._object = 0x80000001007EC120;
      v13._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v13);
      sub_1000F5104(&qword_100938C08, &unk_10079B270);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
  }
}

id REMCDTemplate.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDTemplate();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDTemplate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDTemplate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall REMCDTemplate.willSave_Swift()()
{
  if ((*(v0 + OBJC_IVAR___REMCDTemplate_didCleanUpManualSortHintOnMarkingForDeletion) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___REMCDTemplate_didCleanUpManualSortHintOnMarkingForDeletion) = 1;
    sub_10043ACE0();
  }
}

void sub_10043ACE0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  *&v4 = __chkstk_darwin(v1).n128_u64[0];
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 markedForDeletion])
  {
    return;
  }

  v7 = [v0 remObjectID];
  if (!v7)
  {
    return;
  }

  v69 = v7;
  v8 = [v0 storeControllerManagedObjectContext];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = [v0 account];
  if (!v10 || (v11 = v10, v12 = [v10 remObjectID], v11, !v12))
  {
    if (qword_100936140 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100946F50);
    v30 = v0;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v70 = v34;
      *v33 = 136446210;
      v35 = [v30 remObjectID];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 description];

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v38 = 7104878;
        v40 = 0xE300000000000000;
      }

      v55 = sub_10000668C(v38, v40, &v70);

      *(v33 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v31, v32, "cleanUpManualSortHintIfNeeded: Unexpectedly nil template account.remObjectID {templateID: %{public}s}", v33, 0xCu);
      sub_10000607C(v34);

      goto LABEL_34;
    }

    goto LABEL_20;
  }

  v13 = [v9 transactionAuthor];
  if (!v13 || (v14 = v13, static String._unconditionallyBridgeFromObjectiveC(_:)(), v14, v15._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), v16 = String.hasPrefix(_:)(v15), , , v16))
  {
    if (qword_100936140 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_100946F50);
    v18 = v0;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v70 = v22;
      *v21 = 136446210;
      v23 = [v18 remObjectID];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 description];

        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v26 = 7104878;
        v28 = 0xE300000000000000;
      }

      v56 = sub_10000668C(v26, v28, &v70);

      *(v21 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v19, v20, "cleanUpManualSortHintIfNeeded: Template was deleted due to non-user-initiated changes, cleanup is not needed {templateID: %{public}s}", v21, 0xCu);
      sub_10000607C(v22);

LABEL_34:
      return;
    }

LABEL_20:
LABEL_21:
    v41 = v69;

    return;
  }

  if (qword_100936140 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v43 = sub_100006654(v42, qword_100946F50);
  v44 = v0;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v67 = v46;
    v47 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v70 = v65;
    v66 = v47;
    *v47 = 136446210;
    v68 = v44;
    v48 = [v44 remObjectID];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 description];
      v64 = v43;
      v51 = v50;

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;
    }

    else
    {
      v52 = 7104878;
      v54 = 0xE300000000000000;
    }

    v57 = sub_10000668C(v52, v54, &v70);

    v58 = v66;
    *(v66 + 1) = v57;
    _os_log_impl(&_mh_execute_header, v45, v67, "cleanUpManualSortHintIfNeeded: Template was deleted due to user-initiated changes, will delete its associated sort hint {templateID: %{public}s}", v58, 0xCu);
    sub_10000607C(v65);
  }

  else
  {
  }

  v59 = [v69 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = UUID.uuidString.getter();
  v62 = v61;
  (*(v2 + 8))(v6, v1);
  v63 = v12;
  sub_10013A994(6uLL, v60, v62, v12);
}

uint64_t sub_10043B68C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = (type metadata accessor for RDStoreControllerNotificationCenter.Observer(0) - 8);
  v10 = *v9;
  v11 = *(*v9 + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  UUID.init()();
  sub_100026CD8(a4, v16, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  *&v16[v9[7]] = 0;
  *&v16[v9[8]] = a1;
  v17 = &v16[v9[9]];
  *v17 = a2;
  *(v17 + 1) = a3;
  v18 = *(v4 + 40);
  v19 = a1;

  os_unfair_lock_lock(v18);
  sub_100026CD8(v16, v14, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v20 = *(v4 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 48) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_100365714(0, v20[2] + 1, 1, v20);
    *(v4 + 48) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_100365714(v22 > 1, v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  sub_10002A4A8(v14, v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23);
  *(v4 + 48) = v20;
  swift_endAccess();
  os_unfair_lock_unlock(v18);
  return sub_1000292E8(v16);
}

void sub_10043B8AC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_10001E288(0, v3 & ~(v3 >> 63), 0);
    v4 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v5 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v7 = -1 << *(v2 + 32);
      v5 = _HashTable.startBucket.getter();
      v6 = *(v2 + 36);
    }

    v37 = v5;
    v38 = v6;
    v39 = v34 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v31 = v2 + 56;
      v30 = v2 + 64;
      v32 = v3;
      while (v8 < v3)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_36;
        }

        v11 = v37;
        v12 = v38;
        v13 = v39;
        v14 = v2;
        sub_10001E52C(v37, v38, v39, v2);
        v16 = v15;
        v40 = v4;
        v18 = v4[2];
        v17 = v4[3];
        if (v18 >= v17 >> 1)
        {
          sub_10001E288((v17 > 1), v18 + 1, 1);
          v4 = v40;
        }

        v4[2] = v18 + 1;
        v19 = &v4[2 * v18];
        v19[4] = v16;
        v19[5] = a2;
        v35 = v4;
        if (v34)
        {
          if (!v13)
          {
            goto LABEL_41;
          }

          v2 = v14;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v3 = v32;
          sub_1000F5104(&unk_1009472E0, &qword_1007AA100);
          v9 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v9(v36, 0);
        }

        else
        {
          if (v13)
          {
            goto LABEL_42;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v2 = v14;
          v20 = 1 << *(v14 + 32);
          if (v11 >= v20)
          {
            goto LABEL_37;
          }

          v21 = v11 >> 6;
          v22 = *(v31 + 8 * (v11 >> 6));
          if (((v22 >> v11) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v14 + 36) != v12)
          {
            goto LABEL_39;
          }

          v23 = v22 & (-2 << (v11 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_100010E34(v11, v12, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_32;
              }
            }

            sub_100010E34(v11, v12, 0);
          }

LABEL_32:
          v29 = *(v14 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
          v3 = v32;
        }

        v4 = v35;
        if (v8 == v3)
        {
          sub_100010E34(v37, v38, v39);
          return;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

void sub_10043BBE0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_100253C28(0, v3 & ~(v3 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v6 = -1 << *(v2 + 32);
      v4 = _HashTable.startBucket.getter();
      v5 = *(v2 + 36);
    }

    v39 = v4;
    v40 = v5;
    v41 = v35 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v32 = v2 + 56;
      v31 = v2 + 64;
      v33 = v3;
      while (v7 < v3)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_35;
        }

        v10 = v39;
        v11 = v41;
        v36 = v40;
        v12 = v2;
        sub_100411E28(v39, v40, v41, v2);
        v14 = v13;
        v15 = [v13 accountTypeHost];
        v16 = [v14 remObjectID];

        v17 = v37;
        v42 = v37;
        v19 = v37[2];
        v18 = v37[3];
        if (v19 >= v18 >> 1)
        {
          sub_100253C28((v18 > 1), v19 + 1, 1);
          v17 = v42;
        }

        v17[2] = v19 + 1;
        v20 = &v17[3 * v19];
        v20[4] = a2;
        v20[5] = v15;
        v20[6] = v16;
        v37 = v17;
        if (v35)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v2 = v12;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v3 = v33;
          sub_1000F5104(&qword_1009472C8, &qword_1007AA0E8);
          v8 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v8(v38, 0);
          if (v7 == v33)
          {
LABEL_32:
            sub_100010E34(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v2 = v12;
          v21 = 1 << *(v12 + 32);
          if (v10 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v10 >> 6;
          v23 = *(v32 + 8 * (v10 >> 6));
          if (((v23 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v36)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v10 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v3 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v3 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_100010E34(v10, v36, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_100010E34(v10, v36, 0);
          }

LABEL_31:
          v30 = *(v12 + 36);
          v39 = v21;
          v40 = v30;
          v41 = 0;
          if (v7 == v3)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_10043BF60(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v64 = a1;
  v65 = a2;
  v6 = type metadata accessor for DispatchTime();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v4 + qword_1009394D0);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v61 = v20;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_10;
  }

  if (*(v4 + qword_1009394F8) != 1)
  {
LABEL_7:
    v27 = *(v4 + qword_1009394D8);
    v28 = *(v4 + qword_1009394D8 + 8);
    v29 = v64;
    result = v27(v64);
    if (v65)
    {
      return v65(1, v29);
    }

    return result;
  }

  sub_100024350();
  if (*(v4 + qword_100939500))
  {
    result = sub_10043CE78(v64, v65, a3, sub_100355C8C, &unk_1008F2188, sub_100365E48, sub_1004434D0);
    v23 = qword_100939518;
    v24 = *(v4 + qword_100939518);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
LABEL_20:
      *(v4 + v23) = v26;
      return result;
    }

    __break(1u);
    goto LABEL_7;
  }

  v59 = qword_100939500;
  v21 = *(v4 + qword_1009394F0);
  v19 = *(v4 + qword_1009394F0 + 8);
  v30 = qword_100935AC8;

  if (v30 != -1)
  {
    goto LABEL_26;
  }

LABEL_10:
  v60 = a3;
  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100939348);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    LODWORD(v58) = v33;
    v35 = v34;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v35 = 136315138;
    v36 = 7104878;
    if (v19)
    {
      v36 = v21;
    }

    v56 = v36;
    if (v19)
    {
      v37 = v19;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v38 = sub_10000668C(v56, v37, aBlock);
    v56 = v21;
    v39 = v38;

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v58, "os_transaction INIT {name: com.apple.remindd.rddebouncer}, label: %s", v35, 0xCu);
    sub_10000607C(v57);

    v40 = v56;
  }

  else
  {

    v40 = v21;
  }

  v41 = os_transaction_create();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = v40;
  v43[4] = v19;
  v43[5] = v41;
  aBlock[4] = sub_100443138;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F2150;
  v57 = _Block_copy(aBlock);
  v66 = _swiftEmptyArrayStorage;
  sub_10001BC00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);

  v58 = v41;
  swift_unknownObjectRetain();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = type metadata accessor for DispatchWorkItem();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = DispatchWorkItem.init(flags:block:)();

  v48 = *(v4 + v59);
  *(v4 + v59) = v47;

  static DispatchTime.now()();
  sub_1000255D0();
  + infix(_:_:)();
  v49 = v63;
  v50 = *(v62 + 8);
  v50(v10, v63);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();
  v50(v12, v49);
  if (*(v4 + qword_1009394E0 + 33) == 1)
  {
    sub_10043CE78(v64, v65, v60, sub_100355C8C, &unk_1008F2188, sub_100365E48, sub_1004434D0);

    result = swift_unknownObjectRelease();
    v23 = qword_100939518;
    v51 = *(v4 + qword_100939518);
    v25 = __OFADD__(v51, 1);
    v26 = v51 + 1;
    if (v25)
    {
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

  v52 = *(v4 + qword_1009394D8);
  v53 = *(v4 + qword_1009394D8 + 8);
  v54 = v64;
  v52(v64);
  if (v65)
  {
    v65(1, v54);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10043C6EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v64 = a1;
  v65 = a2;
  v6 = type metadata accessor for DispatchTime();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v4 + qword_1009394D0);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v61 = v20;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_10;
  }

  if (*(v4 + qword_1009394F8) != 1)
  {
LABEL_7:
    v27 = *(v4 + qword_1009394D8);
    v28 = *(v4 + qword_1009394D8 + 8);
    v29 = v64;
    result = v27(v64);
    if (v65)
    {
      return v65(1, v29);
    }

    return result;
  }

  sub_100024350();
  if (*(v4 + qword_100939500))
  {
    result = sub_10043CE78(v64, v65, a3, sub_100355E98, &unk_1008F20E8, sub_100365E6C, sub_1004434D0);
    v23 = qword_100939518;
    v24 = *(v4 + qword_100939518);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
LABEL_20:
      *(v4 + v23) = v26;
      return result;
    }

    __break(1u);
    goto LABEL_7;
  }

  v59 = qword_100939500;
  v21 = *(v4 + qword_1009394F0);
  v19 = *(v4 + qword_1009394F0 + 8);
  v30 = qword_100935AC8;

  if (v30 != -1)
  {
    goto LABEL_26;
  }

LABEL_10:
  v60 = a3;
  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100939348);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    LODWORD(v58) = v33;
    v35 = v34;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v35 = 136315138;
    v36 = 7104878;
    if (v19)
    {
      v36 = v21;
    }

    v56 = v36;
    if (v19)
    {
      v37 = v19;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v38 = sub_10000668C(v56, v37, aBlock);
    v56 = v21;
    v39 = v38;

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v58, "os_transaction INIT {name: com.apple.remindd.rddebouncer}, label: %s", v35, 0xCu);
    sub_10000607C(v57);

    v40 = v56;
  }

  else
  {

    v40 = v21;
  }

  v41 = os_transaction_create();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = v40;
  v43[4] = v19;
  v43[5] = v41;
  aBlock[4] = sub_1004430BC;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F20B0;
  v57 = _Block_copy(aBlock);
  v66 = _swiftEmptyArrayStorage;
  sub_10001BC00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);

  v58 = v41;
  swift_unknownObjectRetain();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = type metadata accessor for DispatchWorkItem();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = DispatchWorkItem.init(flags:block:)();

  v48 = *(v4 + v59);
  *(v4 + v59) = v47;

  static DispatchTime.now()();
  sub_1000255D0();
  + infix(_:_:)();
  v49 = v63;
  v50 = *(v62 + 8);
  v50(v10, v63);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();
  v50(v12, v49);
  if (*(v4 + qword_1009394E0 + 33) == 1)
  {
    sub_10043CE78(v64, v65, v60, sub_100355E98, &unk_1008F20E8, sub_100365E6C, sub_1004434D0);

    result = swift_unknownObjectRelease();
    v23 = qword_100939518;
    v51 = *(v4 + qword_100939518);
    v25 = __OFADD__(v51, 1);
    v26 = v51 + 1;
    if (v25)
    {
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

  v52 = *(v4 + qword_1009394D8);
  v53 = *(v4 + qword_1009394D8 + 8);
  v54 = v64;
  v52(v64);
  if (v65)
  {
    v65(1, v54);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10043CE78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v28 = a6;
  v29 = a7;
  v9 = v7;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v9 + qword_1009394D0);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    a2 = v28(0, *(a2 + 16) + 1, 1, a2);
    *(v9 + v19) = a2;
    goto LABEL_4;
  }

  swift_beginAccess();

  a4(v20);
  result = swift_endAccess();
  if (!a2)
  {
    return result;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v19 = qword_100939510;
  swift_beginAccess();
  a2 = *(v9 + v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + v19) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v23 = v29;
  v25 = *(a2 + 16);
  v24 = *(a2 + 24);
  if (v25 >= v24 >> 1)
  {
    a2 = v28(v24 > 1, v25 + 1, 1, a2);
  }

  *(a2 + 16) = v25 + 1;
  v26 = a2 + 16 * v25;
  *(v26 + 32) = v23;
  *(v26 + 40) = v12;
  *(v9 + v19) = a2;
  return swift_endAccess();
}

void sub_10043D0C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + qword_100939500);
    *&v9[qword_100939500] = 0;

    a5(v11);
    if (qword_100935AC8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100939348);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      if (a3)
      {
        v17 = a3;
      }

      else
      {
        a2 = 7104878;
        v17 = 0xE300000000000000;
      }

      v18 = sub_10000668C(a2, v17, &v19);

      *(v15 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "os_transaction RELEASE {name: com.apple.remindd.rddebouncer}, label: %s", v15, 0xCu);
      sub_10000607C(v16);
    }
  }
}

uint64_t sub_10043D294()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[qword_1009394D0];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  p_class_meths = (v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v1 = qword_100939500;
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (!*&v2[qword_100939500])
  {
    goto LABEL_7;
  }

  v12 = qword_100935AC8;
  v13 = *&v2[qword_100939500];

  if (v12 != -1)
  {
    goto LABEL_25;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939348);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67 = v63;
    *v18 = 136315138;
    v19 = v15;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, &v67);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cancelling pending work item {debouncer: %s}", v18, 0xCu);
    sub_10000607C(v63);

    p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  v25 = *&v2[v1];
  *&v2[v1] = 0;

LABEL_7:
  v26 = qword_100939508;
  result = swift_beginAccess();
  v28 = *&v2[v26];
  if ((v28 & 0xC000000000000001) == 0)
  {
    if (!*(v28 + 16))
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v28 < 0)
  {
    v29 = *&v2[v26];
  }

  v30 = *&v2[v26];

  v31 = __CocoaSet.count.getter();

  if (v31)
  {
LABEL_13:
    if (p_class_meths[345] != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100939348);
    v33 = v2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v36 = &off_100939000;
    v37 = &off_100939000;
    if (os_log_type_enabled(v34, v35))
    {
      v38 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v38 = 134218754;
      *(v38 + 4) = *&v33[qword_100939518];
      *(v38 + 12) = 2080;
      v39 = *&v2[v26];
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      sub_10000CDE4(&qword_100944230, &qword_100938DE0, NSNumber_ptr);

      v40 = Set.description.getter();
      v42 = v41;

      v43 = sub_10000668C(v40, v42, v66);

      *(v38 + 14) = v43;
      *(v38 + 22) = 2048;
      v44 = qword_100939510;
      swift_beginAccess();
      v45 = *(*&v33[v44] + 16);

      *(v38 + 24) = v45;
      *(v38 + 32) = 2080;
      v46 = v33;
      v47 = [v46 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v37 = &off_100939000;
      v51 = sub_10000668C(v48, v50, v66);

      *(v38 + 34) = v51;
      v36 = &off_100939000;
      _os_log_impl(&_mh_execute_header, v34, v35, "Firing latest value after delay {coalescedUpdates: %ld, value: %s, completionBlocks: %ld, debouncer: %s}", v38, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v52 = *&v2[v26];
    *&v2[v26] = _swiftEmptySetSingleton;
    v53 = v37[162];
    swift_beginAccess();
    v54 = *(&v53->Flags + v33);
    *(&v53->Flags + v33) = _swiftEmptyArrayStorage;
    *(&v36[163]->Flags + v33) = 0;
    v55 = *&v33[qword_1009394D8 + 8];
    (*&v33[qword_1009394D8])(v52);
    v56 = v54[2];
    if (v56)
    {
      v58 = v54[4];
      v57 = v54[5];
      v65 = 1;
      v64 = v52;

      v58(&v65, &v64);

      v59 = v56 - 1;
      if (v59)
      {
        v60 = v54 + 7;
        do
        {
          v62 = *(v60 - 1);
          v61 = *v60;
          v65 = 0;
          v64 = v52;

          v62(&v65, &v64);

          v60 += 2;
          --v59;
        }

        while (v59);
      }
    }
  }

  return result;
}

uint64_t sub_10043D8F4()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[qword_1009394D0];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  p_class_meths = (v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v1 = qword_100939500;
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (!*&v2[qword_100939500])
  {
    goto LABEL_7;
  }

  v12 = qword_100935AC8;
  v13 = *&v2[qword_100939500];

  if (v12 != -1)
  {
    goto LABEL_25;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939348);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67 = v63;
    *v18 = 136315138;
    v19 = v15;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, &v67);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cancelling pending work item {debouncer: %s}", v18, 0xCu);
    sub_10000607C(v63);

    p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  v25 = *&v2[v1];
  *&v2[v1] = 0;

LABEL_7:
  v26 = qword_100939508;
  result = swift_beginAccess();
  v28 = *&v2[v26];
  if ((v28 & 0xC000000000000001) == 0)
  {
    if (!*(v28 + 16))
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v28 < 0)
  {
    v29 = *&v2[v26];
  }

  v30 = *&v2[v26];

  v31 = __CocoaSet.count.getter();

  if (v31)
  {
LABEL_13:
    if (p_class_meths[345] != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100939348);
    v33 = v2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v36 = &off_100939000;
    v37 = &off_100939000;
    if (os_log_type_enabled(v34, v35))
    {
      v38 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v38 = 134218754;
      *(v38 + 4) = *&v33[qword_100939518];
      *(v38 + 12) = 2080;
      v39 = *&v2[v26];
      type metadata accessor for RDDebounceableCKDatabaseNotification();
      sub_10001BC00(&unk_100943CF0, type metadata accessor for RDDebounceableCKDatabaseNotification);

      v40 = Set.description.getter();
      v42 = v41;

      v43 = sub_10000668C(v40, v42, v66);

      *(v38 + 14) = v43;
      *(v38 + 22) = 2048;
      v44 = qword_100939510;
      swift_beginAccess();
      v45 = *(*&v33[v44] + 16);

      *(v38 + 24) = v45;
      *(v38 + 32) = 2080;
      v46 = v33;
      v47 = [v46 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v37 = &off_100939000;
      v51 = sub_10000668C(v48, v50, v66);

      *(v38 + 34) = v51;
      v36 = &off_100939000;
      _os_log_impl(&_mh_execute_header, v34, v35, "Firing latest value after delay {coalescedUpdates: %ld, value: %s, completionBlocks: %ld, debouncer: %s}", v38, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v52 = *&v2[v26];
    *&v2[v26] = _swiftEmptySetSingleton;
    v53 = v37[162];
    swift_beginAccess();
    v54 = *(&v53->Flags + v33);
    *(&v53->Flags + v33) = _swiftEmptyArrayStorage;
    *(&v36[163]->Flags + v33) = 0;
    v55 = *&v33[qword_1009394D8 + 8];
    (*&v33[qword_1009394D8])(v52);
    v56 = v54[2];
    if (v56)
    {
      v58 = v54[4];
      v57 = v54[5];
      v65 = 1;
      v64 = v52;

      v58(&v65, &v64);

      v59 = v56 - 1;
      if (v59)
      {
        v60 = v54 + 7;
        do
        {
          v62 = *(v60 - 1);
          v61 = *v60;
          v65 = 0;
          v64 = v52;

          v62(&v65, &v64);

          v60 += 2;
          --v59;
        }

        while (v59);
      }
    }
  }

  return result;
}

uint64_t sub_10043DF44()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[qword_1009394D0];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  p_class_meths = (v4 + 8);
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_4;
  }

  v1 = qword_100939500;
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (!*&v2[qword_100939500])
  {
    goto LABEL_7;
  }

  v12 = qword_100935AC8;
  v13 = *&v2[qword_100939500];

  if (v12 != -1)
  {
    goto LABEL_20;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939348);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v63 = v59;
    *v18 = 136315138;
    v19 = v15;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, &v63);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cancelling pending work item {debouncer: %s}", v18, 0xCu);
    sub_10000607C(v59);

    p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  v25 = *&v2[v1];
  *&v2[v1] = 0;

LABEL_7:
  v26 = qword_100939508;
  result = swift_beginAccess();
  if (*(*&v2[v26] + 16))
  {
    if (p_class_meths[345] != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100939348);
    v29 = v2;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = &off_100939000;
    v33 = &off_100939000;
    if (os_log_type_enabled(v30, v31))
    {
      v34 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v62[0] = v59;
      *v34 = 134218754;
      *(v34 + 4) = *&v29[qword_100939518];
      *(v34 + 12) = 2080;
      v35 = *&v2[v26];
      sub_10002345C();

      v36 = Set.description.getter();
      v38 = v37;

      v39 = sub_10000668C(v36, v38, v62);

      *(v34 + 14) = v39;
      *(v34 + 22) = 2048;
      v40 = qword_100939510;
      swift_beginAccess();
      v41 = *(*&v29[v40] + 16);

      *(v34 + 24) = v41;
      *(v34 + 32) = 2080;
      v42 = v29;
      v43 = [v42 description];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v33 = &off_100939000;
      v47 = sub_10000668C(v44, v46, v62);

      *(v34 + 34) = v47;
      v32 = &off_100939000;
      _os_log_impl(&_mh_execute_header, v30, v31, "Firing latest value after delay {coalescedUpdates: %ld, value: %s, completionBlocks: %ld, debouncer: %s}", v34, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v48 = *&v2[v26];
    *&v2[v26] = &_swiftEmptySetSingleton;
    v49 = v33[162];
    swift_beginAccess();
    v50 = *(&v49->Flags + v29);
    *(&v49->Flags + v29) = _swiftEmptyArrayStorage;
    *(&v32[163]->Flags + v29) = 0;
    v51 = *&v29[qword_1009394D8 + 8];
    (*&v29[qword_1009394D8])(v48);
    v52 = v50[2];
    if (v52)
    {
      v54 = v50[4];
      v53 = v50[5];
      v61 = 1;
      v60 = v48;

      v54(&v61, &v60);

      v55 = v52 - 1;
      if (v55)
      {
        v56 = v50 + 7;
        do
        {
          v58 = *(v56 - 1);
          v57 = *v56;
          v61 = 0;
          v60 = v48;

          v58(&v61, &v60);

          v56 += 2;
          --v55;
        }

        while (v55);
      }
    }
  }

  return result;
}

uint64_t sub_10043E524()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946FF0);
  v1 = sub_100006654(v0, qword_100946FF0);
  if (qword_1009364F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975218);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10043E5EC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10043E648()
{
  v1 = v0[1];
  v2 = *v0;
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10043E688()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10043E6E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & (v3 == v5);
}

uint64_t sub_10043E744()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

Swift::Int sub_10043E7D0()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001BC00(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10043E858()
{
  type metadata accessor for UUID();
  sub_10001BC00(&qword_10093B410, &type metadata accessor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10043E8DC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001BC00(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void destroy for RDStoreControllerNotificationCenter.ChangedAccountFireValue(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void *assignWithCopy for RDStoreControllerNotificationCenter.ChangedAccountFireValue(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  v7 = a2[2];
  v8 = a1[2];
  a1[2] = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for RDStoreControllerNotificationCenter.ChangedAccountFireValue(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for RDStoreControllerNotificationCenter.ChangedAccountFireValue(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RDStoreControllerNotificationCenter.ChangedAccountFireValue(uint64_t result, int a2, int a3)
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

uint64_t assignWithCopy for RDStoreControllerNotificationCenter.ChangedEntityFireValue(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for RDStoreControllerNotificationCenter.ChangedEntityFireValue(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t *sub_10043EB9C(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = a3[6];
    *(v4 + a3[5]) = *(a2 + a3[5]);
    v9 = *(a2 + v8);
    *(v4 + v8) = v9;
    v10 = a3[7];
    v11 = (v4 + v10);
    v12 = (a2 + v10);
    v13 = v12[1];
    *v11 = *v12;
    v11[1] = v13;

    v14 = v9;
  }

  return v4;
}

uint64_t sub_10043EC8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[6];
  v10 = *(a2 + v9);
  v11 = *(a1 + v9);
  *(a1 + v9) = v10;
  v12 = v10;

  v13 = a3[7];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  v17 = v14[1];
  *v14 = *v15;
  v14[1] = v16;

  return a1;
}

uint64_t sub_10043ED54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_10043EDE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[6];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v11 = a3[7];
  v12 = *(a1 + v11 + 8);
  *(a1 + v11) = *(a2 + v11);

  return a1;
}

uint64_t sub_10043EEA8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_10043F014()
{
  result = qword_100947200;
  if (!qword_100947200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947200);
  }

  return result;
}

unint64_t sub_10043F068(uint64_t a1)
{
  result = sub_10002345C();
  *(a1 + 8) = result;
  return result;
}

void sub_10043F090(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = [a1 entitiesByName];
  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v8 + 16) && (v9 = sub_100005F4C(v5, v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {

    if (qword_100936150 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100946FF0);

    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_10000668C(v5, v6, &v22);
      *(v16 + 12) = 2080;
      v17 = [v13 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_10000668C(v18, v20, &v22);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Entity in the given filter option not recognized in managedObjectContext {entityName: %{public}s, managedObjectModel: %s}", v16, 0x16u);
      swift_arrayDestroy();
    }

    v11 = 0;
  }

  *a3 = v11;
}

uint64_t sub_10043F2F8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v9 = Notification.userInfo.getter();
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  *&v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v37 + 1) = v11;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v12 = sub_10001B0D8(&v35), (v13 & 1) == 0))
  {

    sub_10001B2CC(&v35);
LABEL_11:
    v37 = 0u;
    v38 = 0u;
    goto LABEL_12;
  }

  sub_100005EF0(*(v10 + 56) + 32 * v12, &v37);
  sub_10001B2CC(&v35);

  if (!*(&v38 + 1))
  {
LABEL_12:
    sub_1000050A4(&v37, &qword_100939ED0, &qword_100791B10);
    v34 = 0;
    v16 = 0;
    goto LABEL_13;
  }

  v14 = swift_dynamicCast();
  v15 = v35;
  if (!v14)
  {
    v15 = 0;
  }

  v34 = v15;
  if (v14)
  {
    v16 = v36;
  }

  else
  {
    v16 = 0;
  }

LABEL_13:
  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100946FF0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = a5;
    v21 = swift_slowAlloc();
    *&v37 = swift_slowAlloc();
    *v21 = 136446466;
    v35 = a2;
    v36 = a3;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v22 = Optional.descriptionOrNil.getter();
    v24 = sub_10000668C(v22, v23, &v37);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    if (v16)
    {
      v25 = v34;
    }

    else
    {
      v25 = 0x68747561206F6E28;
    }

    if (v16)
    {
      v26 = v16;
    }

    else
    {
      v26 = 0xEB0000000029726FLL;
    }

    v27 = sub_10000668C(v25, v26, &v37);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "RDStoreControllerNotificationCenter.storeControllerDidChange[%{public}s]: Received notification {author: %{public}s}", v21, 0x16u);
    swift_arrayDestroy();

    a5 = v20;
  }

  isa = Notification._bridgeToObjectiveC()().super.isa;
  v29 = [a4 notificationContainsInternalChangesOnly:isa];

  if (v29)
  {

    return 0;
  }

  if (v16)
  {
    if (a5)
    {
      v35 = v34;
      v36 = v16;
      __chkstk_darwin(v30);
      v33[2] = &v35;
      v32 = sub_100040A74(sub_1002CB9B8, v33, a5);

      if (v32)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_10043F6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100946FF0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v9 = Optional.descriptionOrNil.getter();
    v11 = sub_10000668C(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "os_transaction INIT {name: com.apple.remindd.storeControllerNotificationCenter.storeDidChangePublisher}, label: %{public}s", v7, 0xCu);
    sub_10000607C(v8);
  }

  v12 = os_transaction_create();
  v13 = *(sub_1000F5104(&qword_100947280, &qword_1007AA0D8) + 48);
  v14 = type metadata accessor for Notification();
  result = (*(*(v14 - 8) + 16))(a2, a1, v14);
  *(a2 + v13) = v12;
  return result;
}

uint64_t sub_10043F8AC(uint64_t a1)
{
  sub_10001A820(a1);
  v2 = v1;
  v3 = [objc_opt_self() currentThread];
  v4 = [v3 qualityOfService];

  sub_10043B8AC(v2, v4);
  v6 = v5;

  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100946FF0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v12 = Optional.descriptionOrNil.getter();
    v14 = sub_10000668C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction RELEASE {name: com.apple.remindd.storeControllerNotificationCenter.storeDidChangePublisher}, label: %{public}s", v10, 0xCu);
    sub_10000607C(v11);
  }

  v15 = sub_100023058(v6);

  return v15;
}

void sub_10043FA98(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [objc_opt_self() managedObjectModel];
  sub_100442CE8(v5, a2, v6);
  v8 = v7;

  *a3 = v8;
}

uint64_t sub_10043FB08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  sub_1000F5104(&unk_100947300, &unk_1007AA110);
  sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  sub_10000CB48(&qword_100947310, &unk_100947300, &unk_1007AA110);
  result = Sequence.reduce<A>(_:_:)();
  *a2 = v5;
  a2[1] = v3;
  return result;
}

void sub_10043FBF8(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;

  sub_1007254AC(v6, v4);
  *a3 = v7;
}

Swift::Int sub_10043FC4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10043FCB8()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  NSObject.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int sub_10043FD08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10043FD70(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v2 = a2[2];
  v5 = a1[1];
  v4 = a1[2];
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  return (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0;
}

unint64_t sub_10043FE0C()
{
  result = qword_100947210;
  if (!qword_100947210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947210);
  }

  return result;
}

unint64_t sub_10043FE60(uint64_t a1)
{
  result = sub_1001A6814();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10043FE88()
{
  result = qword_100947220;
  if (!qword_100947220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947220);
  }

  return result;
}

Swift::Int sub_10043FEDC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10043FF38()
{
  v1 = v0[1];
  v2 = *v0;
  NSObject.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int sub_10043FF78()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10043FFD0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100440048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = a5;
  v98 = a2;
  v99 = a1;
  v8 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v86 = &v76 - v10;
  v11 = sub_1000F5104(&qword_100947258, &unk_1007AA0A0);
  v12 = *(v11 - 8);
  v84 = v11;
  v85 = v12;
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = &v76 - v14;
  v16 = sub_1000F5104(&qword_100947260, &qword_1007AA0B0);
  v17 = *(v16 - 8);
  v87 = v16;
  v88 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v83 = &v76 - v19;
  v94 = sub_1000F5104(&qword_100947268, &qword_1007AA0B8);
  v92 = *(v94 - 8);
  v20 = *(v92 + 64);
  __chkstk_darwin(v94);
  v89 = &v76 - v21;
  v96 = sub_1000F5104(&qword_100947270, &qword_1007AA0C0);
  v93 = *(v96 - 8);
  v22 = *(v93 + 64);
  __chkstk_darwin(v96);
  v90 = &v76 - v23;
  v97 = sub_1000F5104(&qword_100947278, &unk_1007AA0C8);
  v95 = *(v97 - 8);
  v24 = *(v95 + 64);
  __chkstk_darwin(v97);
  v91 = &v76 - v25;
  v80 = a3;
  v101 = a3;
  v102 = a4;
  sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  v26 = Optional.descriptionOrNil.getter();
  v28 = v27;
  v29 = swift_allocObject();
  v81 = v5;
  v30 = NSNotificationCenter.Publisher.name.getter();
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

LABEL_6:
    v36 = 0xD000000000000011;
    v37 = 0x80000001007F8790;
LABEL_7:
    v38 = v98;
    goto LABEL_8;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {

    goto LABEL_6;
  }

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;
  if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
  {

LABEL_15:
    v37 = 0x80000001007F8770;
    v36 = 0xD000000000000012;
    goto LABEL_7;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v66)
  {
    goto LABEL_15;
  }

  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v36 = 0x6E776F6E6B6E75;
  v67 = type metadata accessor for Logger();
  sub_100006654(v67, qword_100946FF0);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.fault.getter();

  v70 = os_log_type_enabled(v68, v69);
  v38 = v98;
  if (v70)
  {
    v77 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v78 = v69;
    v79 = v71;
    v72 = v77;
    *v77 = 136446210;
    v100 = v71;
    v101 = v80;
    v102 = a4;
    v73 = Optional.descriptionOrNil.getter();
    v75 = sub_10000668C(v73, v74, &v100);

    *(v72 + 1) = v75;
    _os_log_impl(&_mh_execute_header, v68, v78, "RDStoreControllerNotificationCenter: Incorrect usage of rem_pipeLineOfAccountsDidEnableOrDisable() {label: %{public}s}", v72, 0xCu);
    sub_10000607C(v79);
  }

  v37 = 0xE700000000000000;
LABEL_8:
  *(v29 + 16) = v36;
  *(v29 + 24) = v37;
  v39 = swift_allocObject();
  v39[2] = v99;
  v39[3] = v38;
  v39[4] = v29;
  v39[5] = v26;
  v40 = v82;
  v39[6] = v28;
  v39[7] = v40;
  type metadata accessor for NSNotificationCenter.Publisher();
  sub_10001BC00(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher);

  Publisher.filter(_:)();

  v41 = swift_allocObject();
  v41[2] = v29;
  v41[3] = v26;
  v82 = v26;
  v41[4] = v28;

  sub_1000F5104(&qword_100947280, &qword_1007AA0D8);
  sub_10000CB48(&unk_100947288, &qword_100947258, &unk_1007AA0A0);
  v42 = v83;
  v43 = v84;
  Publisher.map<A>(_:)();

  v85[1](v15, v43);
  v98 = v29;
  v44 = v38;
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v45 = qword_100974CB0;
  v101 = qword_100974CB0;
  v46 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v47 = v86;
  (*(*(v46 - 8) + 56))(v86, 1, 1, v46);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v85 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000CB48(&qword_100947298, &qword_100947260, &qword_1007AA0B0);
  sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v48 = v45;
  v49 = v89;
  v50 = v87;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v47, &qword_100939980, &unk_10079ADA0);

  (*(v88 + 8))(v42, v50);
  v51 = swift_allocObject();
  v52 = v98;
  v51[2] = v99;
  v51[3] = v44;
  v53 = v82;
  v51[4] = v52;
  v51[5] = v53;
  v51[6] = v28;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1004429F8;
  *(v54 + 24) = v51;

  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  sub_10000CB48(&qword_1009472A0, &qword_100947268, &qword_1007AA0B8);
  v55 = v90;
  v56 = v94;
  Publisher.map<A>(_:)();

  (*(v92 + 8))(v49, v56);
  sub_10000CB48(&qword_1009472A8, &qword_100947270, &qword_1007AA0C0);
  v57 = v91;
  v58 = v96;
  Publisher.filter(_:)();
  (*(v93 + 8))(v55, v58);
  sub_10000CB48(&unk_1009472B0, &qword_100947278, &unk_1007AA0C8);
  v59 = v97;
  v60 = Publisher.eraseToAnyPublisher()();
  (*(v95 + 8))(v57, v59);

  return v60;
}

BOOL sub_100440B98(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v13 = Notification.userInfo.getter();
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13;
  v47 = a2;
  v48 = a3;

  AnyHashable.init<A>(_:)();
  if (!*(v14 + 16) || (v15 = sub_10001B0D8(v49), (v16 & 1) == 0))
  {

    sub_10001B2CC(v49);
LABEL_17:
    v50 = 0u;
    v51 = 0u;
    goto LABEL_18;
  }

  sub_100005EF0(*(v14 + 56) + 32 * v15, &v50);
  sub_10001B2CC(v49);

  if (!*(&v51 + 1))
  {
LABEL_18:
    sub_1000050A4(&v50, &qword_100939ED0, &qword_100791B10);
    goto LABEL_19;
  }

  sub_1000F5104(&qword_1009472C0, &qword_1007AA0E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_100936150 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100946FF0);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *&v50 = swift_slowAlloc();
      *v28 = 136446722;
      swift_beginAccess();
      v30 = *(a4 + 16);
      v29 = *(a4 + 24);

      v31 = sub_10000668C(v30, v29, &v50);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_10000668C(a5, a6, &v50);
      *(v28 + 22) = 2082;
      *(v28 + 24) = sub_10000668C(a2, a3, &v50);
      _os_log_impl(&_mh_execute_header, v26, v27, "RDStoreControllerNotificationCenter.%{public}s[%{public}s]: Received notification that has no %{public}s in the user info", v28, 0x20u);
      swift_arrayDestroy();
    }

    return 0;
  }

  v17 = Notification.userInfo.getter();
  if (!v17)
  {
LABEL_26:
    v50 = 0u;
    v51 = 0u;
    goto LABEL_27;
  }

  v18 = v17;
  *&v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v50 + 1) = v19;
  AnyHashable.init<A>(_:)();
  if (!*(v18 + 16) || (v20 = sub_10001B0D8(v49), (v21 & 1) == 0))
  {

    sub_10001B2CC(v49);
    goto LABEL_26;
  }

  sub_100005EF0(*(v18 + 56) + 32 * v20, &v50);
  sub_10001B2CC(v49);

  if (!*(&v51 + 1))
  {
LABEL_27:
    sub_1000050A4(&v50, &qword_100939ED0, &qword_100791B10);
    v23 = 0;
    v24 = 0;
    goto LABEL_28;
  }

  v22 = swift_dynamicCast();
  if (v22)
  {
    v23 = v49[0];
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v49[1];
  }

  else
  {
    v24 = 0;
  }

LABEL_28:
  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100006654(v33, qword_100946FF0);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v50 = v46;
    *v36 = 136446722;
    swift_beginAccess();
    v38 = *(a4 + 16);
    v37 = *(a4 + 24);

    v39 = sub_10000668C(v38, v37, &v50);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2082;
    *(v36 + 14) = sub_10000668C(a5, a6, &v50);
    *(v36 + 22) = 2082;
    if (v24)
    {
      v40 = v23;
    }

    else
    {
      v40 = 0x68747561206F6E28;
    }

    if (v24)
    {
      v41 = v24;
    }

    else
    {
      v41 = 0xEB0000000029726FLL;
    }

    v42 = sub_10000668C(v40, v41, &v50);

    *(v36 + 24) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "RDStoreControllerNotificationCenter.%{public}s[%{public}s]: Received notification {author: %{public}s}", v36, 0x20u);
    swift_arrayDestroy();
  }

  if (!v24)
  {
    return 1;
  }

  if (a7)
  {
    *&v50 = v23;
    *(&v50 + 1) = v24;
    __chkstk_darwin(v43);
    v45[2] = &v50;
    v44 = sub_100040A74(sub_100040B20, v45, a7);

    return (v44 & 1) == 0;
  }

  return 1;
}

uint64_t sub_1004411BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100946FF0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = a1;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    swift_beginAccess();
    v15 = *(a2 + 16);
    v14 = *(a2 + 24);

    v16 = sub_10000668C(v15, v14, &v27);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_10000668C(a3, a4, &v27);
    _os_log_impl(&_mh_execute_header, v11, v12, "os_transaction INIT {name: com.apple.remindd.storeControllerNotificationCenter.%{public}sPublisher}, label: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    a1 = v26;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v29 = v27;
  v30 = v28;
  v17._object = 0x80000001007F87B0;
  v17._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v17);
  swift_beginAccess();
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);

  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x656873696C627550;
  v21._object = 0xE900000000000072;
  String.append(_:)(v21);
  String.utf8CString.getter();

  v22 = os_transaction_create();

  v23 = *(sub_1000F5104(&qword_100947280, &qword_1007AA0D8) + 48);
  v24 = type metadata accessor for Notification();
  result = (*(*(v24 - 8) + 16))(a5, a1, v24);
  *(a5 + v23) = v22;
  return result;
}

void *sub_1004414A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = Notification.userInfo.getter();
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;

  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16) || (v12 = sub_10001B0D8(v28), (v13 & 1) == 0))
  {

    sub_10001B2CC(v28);
LABEL_12:
    v29 = 0u;
    v30 = 0u;
    goto LABEL_13;
  }

  sub_100005EF0(*(v11 + 56) + 32 * v12, &v29);
  sub_10001B2CC(v28);

  if (!*(&v30 + 1))
  {
LABEL_13:
    sub_1000050A4(&v29, &qword_100939ED0, &qword_100791B10);
    return &_swiftEmptySetSingleton;
  }

  sub_1000F5104(&qword_1009472C0, &qword_1007AA0E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

  v14 = v28[0];
  v15 = [objc_opt_self() currentThread];
  v16 = [v15 qualityOfService];

  sub_10043BBE0(v14, v16);
  v18 = v17;

  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100946FF0);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *&v29 = swift_slowAlloc();
    *v22 = 136446466;
    swift_beginAccess();
    v24 = *(a5 + 16);
    v23 = *(a5 + 24);

    v25 = sub_10000668C(v24, v23, &v29);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_10000668C(a6, a7, &v29);
    _os_log_impl(&_mh_execute_header, v20, v21, "os_transaction RELEASE {name: com.apple.remindd.storeControllerNotificationCenter.%{public}sPublisher}, label: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v26 = sub_1001A6768(v18);

  return v26;
}

void *sub_1004417C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_slowAlloc();
  v4[6] = _swiftEmptyArrayStorage;
  v4[7] = 0;
  v4[4] = a2;
  v4[5] = v9;
  v4[2] = a3;
  v4[3] = a1;
  *v9 = 0;

  v10 = a3;
  sub_1004419EC(a4, v21);
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v11 = qword_100974CB0;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v11;
  v14 = sub_100442808(a1, a2, a4, v13, sub_100025954, v12, &qword_100947228, &qword_1007AA090);

  sub_100441A48(a4);
  v15 = v4[7];
  v4[7] = v14;

  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];

  v18 = [v10 persistentStoreCoordinator];
  [v17 addObserver:v4 selector:"handleNotification:" name:NSManagedObjectContextDidSaveObjectIDsNotification object:v18];

  v19 = [v16 defaultCenter];
  [v19 addObserver:v4 selector:"handleNotification:" name:@"RDStoreControllerDidRemoveAccountStoresNotification" object:v10];

  return v4;
}

uint64_t sub_100441A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v6 = sub_1000F5104(&qword_100947368, &unk_1007AA148);
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v30 = &v29 - v9;
  v10 = type metadata accessor for NSNotificationCenter.Publisher();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = sub_100440048(v17, v18, a1, a2, a3);

  v20 = *(v11 + 8);
  v20(v14, v10);
  v21 = [v15 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = sub_100440048(v22, v23, v29, a2, a3);

  v20(v14, v10);
  v33 = v24;
  v34 = v19;

  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
  v25 = v30;
  Publishers.Merge.init(_:_:)();
  sub_10000CB48(&unk_100947370, &qword_100947368, &unk_1007AA148);
  v26 = v31;
  v27 = Publisher.eraseToAnyPublisher()();

  (*(v32 + 8))(v25, v26);
  return v27;
}

uint64_t sub_100441DF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v67 = a3;
  v87 = a2;
  v5 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v84 = &v64 - v7;
  v68 = sub_1000F5104(&qword_100947318, &qword_1007AA120);
  v70 = *(v68 - 8);
  v8 = *(v70 + 64);
  __chkstk_darwin(v68);
  v65 = &v64 - v9;
  v10 = sub_1000F5104(&qword_100947320, &qword_1007AA128);
  v11 = *(v10 - 8);
  v71 = v10;
  v72 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v66 = &v64 - v13;
  v77 = sub_1000F5104(&qword_100947328, &qword_1007AA130);
  v75 = *(v77 - 8);
  v14 = *(v75 + 64);
  __chkstk_darwin(v77);
  v85 = &v64 - v15;
  v83 = sub_1000F5104(&qword_100947330, &qword_1007AA138);
  v81 = *(v83 - 8);
  v16 = *(v81 + 64);
  __chkstk_darwin(v83);
  v79 = &v64 - v17;
  v82 = sub_1000F5104(&qword_100947338, &qword_1007AA140);
  v80 = *(v82 - 8);
  v18 = *(v80 + 64);
  __chkstk_darwin(v82);
  v78 = &v64 - v19;
  v20 = type metadata accessor for NSNotificationCenter.Publisher();
  v86 = *(v20 - 8);
  v21 = v86[8];
  v22 = __chkstk_darwin(v20);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v64 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v64 - v29;
  __chkstk_darwin(v28);
  v32 = &v64 - v31;
  v33 = objc_opt_self();
  v34 = [v33 defaultCenter];
  v35 = [a1 persistentStoreCoordinator];
  v36 = v87;
  NSNotificationCenter.publisher(for:object:)();

  v37 = [v33 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v38 = v86[2];
  v73 = v32;
  v38(v27, v32, v20);
  v74 = v30;
  v38(v24, v30, v20);
  sub_10001BC00(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher);
  v39 = v65;
  v76 = v20;
  Publishers.Merge.init(_:_:)();
  v40 = swift_allocObject();
  v41 = v67;
  v40[2] = v36;
  v40[3] = v41;
  v42 = v69;
  v40[4] = a1;
  v40[5] = v42;
  sub_10000CB48(&qword_100947340, &qword_100947318, &qword_1007AA120);

  v43 = a1;

  v44 = v66;
  v45 = v68;
  Publisher.filter(_:)();

  (*(v70 + 8))(v39, v45);
  v46 = swift_allocObject();
  *(v46 + 16) = v36;
  *(v46 + 24) = v41;

  sub_1000F5104(&qword_100947280, &qword_1007AA0D8);
  sub_10000CB48(&qword_100947348, &qword_100947320, &qword_1007AA128);
  v47 = v71;
  Publisher.map<A>(_:)();

  (*(v72 + 8))(v44, v47);
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v48 = qword_100974CB0;
  v88 = qword_100974CB0;
  v49 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v50 = v84;
  (*(*(v49 - 8) + 56))(v84, 1, 1, v49);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&qword_100947350, &qword_100947328, &qword_1007AA130);
  sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v51 = v48;
  v52 = v79;
  v53 = v77;
  v54 = v85;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v50, &qword_100939980, &unk_10079ADA0);

  (*(v75 + 8))(v54, v53);
  v55 = swift_allocObject();
  *(v55 + 16) = v87;
  *(v55 + 24) = v41;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_100443054;
  *(v56 + 24) = v55;

  sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  sub_10000CB48(&qword_100947358, &qword_100947330, &qword_1007AA138);
  v57 = v78;
  v58 = v83;
  Publisher.map<A>(_:)();

  (*(v81 + 8))(v52, v58);
  sub_10000CB48(&qword_100947360, &qword_100947338, &qword_1007AA140);
  v59 = v82;
  v60 = Publisher.eraseToAnyPublisher()();
  (*(v80 + 8))(v57, v59);
  v61 = v86[1];
  v62 = v76;
  v61(v74, v76);
  v61(v73, v62);
  return v60;
}

id sub_100442808(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v13 = sub_1000F5104(a7, a8);
  v14 = objc_allocWithZone(v13);
  v15 = qword_1009394E8;
  *&v14[qword_1009394E8] = 0;
  v14[qword_1009394F8] = 1;
  *&v14[qword_100939500] = 0;
  v16 = qword_100939510;
  *&v14[qword_100939510] = _swiftEmptyArrayStorage;
  *&v14[qword_100939518] = 0;
  *&v14[qword_100939508] = &_swiftEmptySetSingleton;
  swift_beginAccess();
  *&v14[v16] = _swiftEmptyArrayStorage;
  v17 = *(a3 + 16);
  v18 = *(a3 + 24);
  v19 = *(a3 + 32);
  v20 = &v14[qword_1009394E0];
  v21 = *a3;
  v22 = *(a3 + 16);
  *(v20 + 16) = *(a3 + 32);
  *v20 = v21;
  *(v20 + 1) = v22;
  *&v14[qword_1009394D0] = a4;
  v23 = &v14[qword_1009394D8];
  *v23 = a5;
  v23[1] = a6;
  if (v19)
  {
    Factor = type metadata accessor for RDDebouncing.LoadFactor();
    v25 = *(Factor + 48);
    v26 = *(Factor + 52);
    swift_allocObject();
    v27 = a4;

    sub_1004419EC(a3, v34);
    v28 = sub_10014DC40(v17, v18);
    v29 = *&v14[v15];
    *&v14[v15] = v28;
  }

  else
  {
    *&v14[v15] = 0;
    v30 = a4;
  }

  v31 = &v14[qword_1009394F0];
  *v31 = a1;
  v31[1] = a2;
  v35.receiver = v14;
  v35.super_class = v13;
  return objc_msgSendSuper2(&v35, "init");
}

uint64_t sub_100442A08(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_100442A6C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = _swiftEmptyArrayStorage;
    v26 = _swiftEmptyArrayStorage;
    v5 = a1 + 56;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 56);
    v9 = (v6 + 63) >> 6;

    v11 = 0;
    while (v8)
    {
LABEL_12:
      v13 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v25[0] = *v13;
      v25[1] = v14;

      sub_10043F090(a2, v25, &v24);

      if (v24)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v26;
      }

      v8 &= v8 - 1;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        goto LABEL_21;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = [objc_opt_self() subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
    sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v17 + 16);
    if (v18)
    {
      v25[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v19 = 32;
      do
      {
        v20 = *(v17 + v19);
        v21 = [swift_getObjCClassFromMetadata() entity];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = *(v25[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v19 += 8;
        --v18;
      }

      while (v18);

      v4 = v25[0];
    }

    else
    {

      v4 = _swiftEmptyArrayStorage;
    }

LABEL_21:
    v23 = sub_100027634(v4);

    return v23;
  }

  return result;
}

void sub_100442CE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100442A6C(a2, a3);
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1 << *(a1 + 32);
  v39[2] = &_swiftEmptySetSingleton;
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = (63 - v7) >> 6;
  v34 = v4 & 0xC000000000000001;
  v35 = v4;
  v30 = v4 + 56;
  v36 = a1;

  v11 = 0;
  v32 = v10;
  v33 = v6;
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_9:
  while (2)
  {
    v13 = *(v36 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9))));
    v14 = *v13;
    v31 = *(v13 + 8);
    v38 = *v13;
    if (v34)
    {
      v15 = v14;

      __CocoaSet.makeIterator()();
      sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
      sub_10000CDE4(&qword_10093A8E8, &unk_100947240, NSEntityDescription_ptr);
      Set.Iterator.init(_cocoa:)();
      v16 = v39[3];
      v17 = v39[4];
      v18 = v39[5];
      v19 = v39[6];
      v20 = v39[7];
    }

    else
    {
      v21 = -1 << *(v35 + 32);
      v18 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v20 = v23 & *(v35 + 56);
      v24 = v14;

      v19 = 0;
      v17 = v30;
    }

    v9 &= v9 - 1;
    v37 = v16;
    while (v16 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_27;
      }

      sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
      swift_dynamicCast();
      v27 = v39[0];
      if (!v39[0])
      {
        goto LABEL_27;
      }

LABEL_25:
      v28 = [v38 isKindOfEntity:v27];

      v16 = v37;
      if (v28)
      {
        sub_10001B860();
        sub_1000236C4(v39, v38, v31);
        v29 = v39[0];
        goto LABEL_28;
      }
    }

    v25 = v19;
    v26 = v20;
    if (!v20)
    {
      while (1)
      {
        v19 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v19 >= ((v18 + 64) >> 6))
        {
          goto LABEL_27;
        }

        v26 = *(v17 + 8 * v19);
        ++v25;
        if (v26)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_21:
    v20 = (v26 - 1) & v26;
    v27 = *(*(v16 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v26)))));
    if (v27)
    {
      goto LABEL_25;
    }

LABEL_27:
    sub_10001B860();
    v29 = v38;
LABEL_28:

    v10 = v32;
    v6 = v33;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_5:
  while (2)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      if (v12 < v10)
      {
        v9 = *(v6 + 8 * v12);
        ++v11;
        if (!v9)
        {
          continue;
        }

        v11 = v12;
        goto LABEL_9;
      }
    }

    break;
  }
}

uint64_t sub_10044304C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10043F6BC(a1, a2);
}

uint64_t sub_100443054(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10043F8AC(a1);
}

uint64_t sub_100443060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = sub_1000F5104(&qword_100947280, &qword_1007AA0D8);
  result = v6(a1, *(a1 + *(v7 + 48)));
  *a2 = result;
  return result;
}

uint64_t sub_1004430F0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t *assignWithCopy for RDStoreControllerNotificationCenter.CollectAndCoalescedChangedEntitiesWithInputCount(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t *assignWithTake for RDStoreControllerNotificationCenter.CollectAndCoalescedChangedEntitiesWithInputCount(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void destroy for RDStoreControllerNotificationCenter.ChangedAccountInfo(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for RDStoreControllerNotificationCenter.ChangedAccountInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for RDStoreControllerNotificationCenter.ChangedAccountInfo(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for RDStoreControllerNotificationCenter.EntityFilterOption(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for RDStoreControllerNotificationCenter.EntityFilterOption(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for RDStoreControllerNotificationCenter.EntityFilterOption(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RDStoreControllerNotificationCenter.EntityFilterOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100443404(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10044341C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100443450()
{
  result = qword_100947390;
  if (!qword_100947390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947390);
  }

  return result;
}

uint64_t sub_10044353C()
{
  sub_100443534();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_10044356C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (swift_isaMask & *v2);
  v6 = v5[10];
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24[-v10];
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v16 = &v24[-v15];
  sub_10014F5CC(a1, v24);
  sub_1000F5104(&qword_100939ED0, &qword_100791B10);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (!v17)
  {
    v18(v11, 1, 1, v6);
    result = (*(v8 + 8))(v11, v7);
    goto LABEL_5;
  }

  v18(v11, 0, 1, v6);
  (*(v12 + 32))(v16, v11, v6);
  v19 = v5[11];
  v20 = v5[12];
  v21 = sub_100443D44();
  if (v22 >> 60 == 15)
  {
    result = (*(v12 + 8))(v16, v6);
LABEL_5:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 24) = &type metadata for Data;
  *a2 = v21;
  *(a2 + 8) = v22;
  return (*(v12 + 8))(v16, v6);
}

uint64_t sub_10044381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *((swift_isaMask & *v2) + 0x50);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - v9;
  sub_10014F5CC(a1, v17);
  if (v18)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v12 = v16[0];
      v13 = v16[1];
      sub_100443A08(v10);
      v14 = *(v5 - 8);
      if ((*(v14 + 48))(v10, 1, v5) != 1)
      {
        *(a2 + 24) = v5;
        v15 = sub_1000103CC(a2);
        (*(v14 + 32))(v15, v10, v5);
        return sub_10001BBA0(v12, v13);
      }

      sub_10001BBA0(v12, v13);
      result = (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    result = sub_1001B2134(v17);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_100443A08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v8 = *((v4 & v3) + 0x50);
  v9 = *((v4 & v3) + 0x58);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v10 = *(*(v8 - 8) + 56);

  return v10(a1, 0, 1, v8);
}

id sub_100443B3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    v7 = a1;
  }

  a4(v18, v17);

  sub_1001B2134(v17);
  v8 = v19;
  if (v19)
  {
    v9 = sub_10000F61C(v18, v19);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    v12 = __chkstk_darwin(v9);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v14, v8);
    sub_10000607C(v18);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

unint64_t sub_100443CF8()
{
  result = qword_100947440;
  if (!qword_100947440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100947440);
  }

  return result;
}

uint64_t sub_100443D44()
{
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v3;
}

uint64_t sub_100443DE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947448);
  v1 = sub_100006654(v0, qword_100947448);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RDAutoCategorizerOutputParsingType.description.getter(char a1)
{
  if (a1)
  {
    return 1313821514;
  }

  else
  {
    return 0x657474616D726F46;
  }
}

remindd::RDAutoCategorizerOutputParsingType_optional __swiftcall RDAutoCategorizerOutputParsingType.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 1)
  {
    v1.value = remindd_RDAutoCategorizerOutputParsingType_json;
  }

  else
  {
    v1.value = remindd_RDAutoCategorizerOutputParsingType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_100443F0C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100443F2C()
{
  if (*v0)
  {
    result = 1313821514;
  }

  else
  {
    result = 0x657474616D726F46;
  }

  *v0;
  return result;
}

uint64_t static RDAutoCategorizerTypeFactory.create()@<X0>(void *a1@<X8>)
{
  if (qword_100936160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004440AC(&xmmword_100947460, &v9);
  if (v10)
  {
    sub_100054B6C(&v9, &v11);
    return sub_100054B6C(&v11, a1);
  }

  else
  {
    sub_10044411C(&v9);
    v3 = type metadata accessor for REMGenerativeModelsAvailabilityManager();
    v4 = static REMGenerativeModelsAvailabilityManager.shared.getter();
    v12 = v3;
    v13 = &protocol witness table for REMGenerativeModelsAvailabilityManager;
    *&v11 = v4;
    v5 = type metadata accessor for RDAutoCategorizer();
    v6 = objc_allocWithZone(v5);
    sub_10000A87C(&v11, v6 + OBJC_IVAR____TtC7remindd17RDAutoCategorizer_modelsAvailabilityManager);
    v8.receiver = v6;
    v8.super_class = v5;
    v7 = objc_msgSendSuper2(&v8, "init");
    result = sub_10000607C(&v11);
    a1[3] = v5;
    a1[4] = &protocol witness table for RDAutoCategorizer;
    *a1 = v7;
  }

  return result;
}

double sub_100444094()
{
  qword_100947480 = 0;
  result = 0.0;
  xmmword_100947460 = 0u;
  *algn_100947470 = 0u;
  return result;
}

uint64_t sub_1004440AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100939DF8, &qword_1007970A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044411C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100939DF8, &qword_1007970A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RDAutoCategorizer.categorize(listName:reminderTitles:existingSections:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1004441D8, 0, 0);
}

uint64_t sub_1004441D8()
{
  v1 = [objc_opt_self() sharedConfiguration];
  v0[7] = v1;
  v2 = [v1 autoCategorizationOutputParsingType];
  if ([objc_opt_self() isInternalInstall])
  {
    v3 = [objc_opt_self() daemonUserDefaults];
    v4 = [v3 excludeExistingSectionsForAutoCategorizationEnabled];
  }

  else
  {
    v4 = [v1 autoCategorizationInputExcludeExistingSections];
  }

  v5 = v2 == 1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100444330;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return sub_100444524(v11, v9, v10, v7, v4, v5);
}

uint64_t sub_100444330(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1004444C0;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_100444458;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100444458()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1004444C0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_100444524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 64) = a4;
  *(v7 + 72) = v6;
  *(v7 + 241) = a6;
  *(v7 + 240) = a5;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  *(v7 + 40) = a1;
  v8 = type metadata accessor for DispatchTime();
  *(v7 + 80) = v8;
  v9 = *(v8 - 8);
  *(v7 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v11 = type metadata accessor for Prompt();
  *(v7 + 104) = v11;
  v12 = *(v11 - 8);
  *(v7 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  v14 = type metadata accessor for REMGenerativeModelsFeature();
  *(v7 + 128) = v14;
  v15 = *(v14 - 8);
  *(v7 + 136) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1004446B8, 0, 0);
}

uint64_t sub_1004446B8()
{
  v82 = v0;
  if (qword_100936158 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 160) = sub_100006654(v1, qword_100947448);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RDAutoCategorizer: categorize() START", v4, 2u);
  }

  v5 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 72);

  v9 = *(v8 + OBJC_IVAR____TtC7remindd17RDAutoCategorizer_modelsAvailabilityManager + 32);
  sub_10000F61C((v8 + OBJC_IVAR____TtC7remindd17RDAutoCategorizer_modelsAvailabilityManager), *(v8 + OBJC_IVAR____TtC7remindd17RDAutoCategorizer_modelsAvailabilityManager + 24));
  v80 = enum case for REMGenerativeModelsFeature.autoCategorization(_:);
  v79 = *(v6 + 104);
  v79(v5);
  v10 = REMGenerativeModelsAvailabilityManagerType.supportsFeature(_:)();
  v11 = *(v6 + 8);
  v11(v5, v7);
  if (v10)
  {
    v77 = v11;
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    v14 = _REMGetLocalizedString();
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == v13 && v17 == v12)
    {
    }

    else
    {
      v21 = *(v0 + 40);
      v22 = *(v0 + 48);
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        v26 = *(v0 + 48);

        v25 = *(v0 + 40);
LABEL_15:
        v78 = v24;
        v27 = *(v0 + 56);
        v28 = *(v27 + 16);
        if (v28)
        {
          v29 = sub_1003689CC(v28, 0);
          v30 = sub_1002791DC(&v81, v29 + 4, v28, v27);

          result = sub_10001B860();
          if (v30 != v28)
          {
            __break(1u);
            goto LABEL_42;
          }

          v32 = v29;
        }

        else
        {
          v32 = _swiftEmptyArrayStorage;
        }

        *(v0 + 168) = v32;
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = *(v0 + 241);
          v36 = *(v0 + 240);
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v81 = v38;
          *v37 = 67109378;
          *(v37 + 4) = v36;
          *(v37 + 8) = 2080;
          if (v35)
          {
            v39 = 1313821514;
          }

          else
          {
            v39 = 0x657474616D726F46;
          }

          if (v35)
          {
            v40 = 0xE400000000000000;
          }

          else
          {
            v40 = 0xED0000656E694C64;
          }

          v41 = sub_10000668C(v39, v40, &v81);

          *(v37 + 10) = v41;
          _os_log_impl(&_mh_execute_header, v33, v34, "RDAutoCategorizer: input properties excludeSections: %{BOOL}d, outputParsingType: %s", v37, 0x12u);
          sub_10000607C(v38);
        }

        v42 = v78;
        if ((*(v0 + 240) & 1) != 0 || (v43 = *(v0 + 64), (v44 = *(v43 + 16)) == 0))
        {
          v45 = _swiftEmptyArrayStorage;
LABEL_32:
          v46 = sub_100129B40(v25, v42, v32, v45);
          *(v0 + 176) = v47;
          v53 = v46;
          v54 = v47;
          v55 = v32;
          v57 = *(v0 + 112);
          v56 = *(v0 + 120);
          v58 = *(v0 + 104);

          Prompt.init(_:)();
          v59 = Prompt.overestimatedTokenCount()();
          v60 = *(v57 + 8);
          *(v0 + 184) = v60;
          *(v0 + 192) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v60(v56, v58);
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 134217984;
            *(v63 + 4) = v59;
            _os_log_impl(&_mh_execute_header, v61, v62, "RDAutoCategorizer: userPrompt {overestimatedTokenCount: %ld}", v63, 0xCu);
          }

          v64 = *(v0 + 144);
          v65 = *(v0 + 128);
          v66 = *(v0 + 96);

          static DispatchTime.now()();
          type metadata accessor for RDAutoCategorizerSession();
          inited = swift_initStackObject();
          *(v0 + 200) = inited;
          (v79)(v64, v80, v65);
          v68 = REMGenerativeModelsFeature.useCaseIdentifier.getter();
          v70 = v69;
          v77(v64, v65);
          v71 = sub_10038E004(_swiftEmptyArrayStorage);
          v72 = type metadata accessor for RDAutoCategorizerSession._ClientInfo();
          v73 = *(v72 + 48);
          v74 = *(v72 + 52);
          swift_allocObject();
          *(inited + 16) = sub_100229AFC(v68, v70, 0, 1, v71);
          v75 = swift_task_alloc();
          *(v0 + 208) = v75;
          *v75 = v0;
          v75[1] = sub_100444E74;

          return sub_100226E8C(v53, v54, v55);
        }

        v45 = sub_1003689CC(v44, 0);
        v76 = sub_1002791DC(&v81, v45 + 4, v44, v43);

        result = sub_10001B860();
        if (v76 == v44)
        {
          v42 = v78;
          goto LABEL_32;
        }

LABEL_42:
        __break(1u);
        return result;
      }
    }

    v24 = 0x80000001007F8A40;
    v25 = 0xD000000000000016;
    goto LABEL_15;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "RDAutoCategorizer: {error: unsupported}", v20, 2u);
  }

  sub_100445C44();
  swift_allocError();
  swift_willThrow();
  v49 = *(v0 + 144);
  v48 = *(v0 + 152);
  v50 = *(v0 + 120);
  v51 = *(v0 + 96);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_100444E74(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 208);
  v7 = *v3;
  v5[27] = a1;
  v5[28] = a2;
  v5[29] = v2;

  v8 = v4[22];
  if (v2)
  {
    v9 = v5[21];

    v10 = sub_1004453AC;
  }

  else
  {

    v10 = sub_100444FC8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100444FC8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 241);
  static DispatchTime.secondsElapsed(since:)();
  v4 = v3;
  if (v2)
  {
    v5 = *(v0 + 232);
    v6 = sub_1005422EC(*(v0 + 216), *(v0 + 224), *(v0 + 168));
    if (v5)
    {
      v7 = *(v0 + 224);
      v8 = *(v0 + 200);
      v9 = *(v0 + 168);
      v11 = *(v0 + 88);
      v10 = *(v0 + 96);
      v12 = *(v0 + 80);

      (*(v11 + 8))(v10, v12);
      swift_setDeallocating();
      v13 = *(v8 + 16);

      v15 = *(v0 + 144);
      v14 = *(v0 + 152);
      v16 = *(v0 + 120);
      v17 = *(v0 + 96);

      v18 = *(v0 + 8);

      return v18();
    }
  }

  else
  {
    v6 = sub_1005BA370(*(v0 + 216), *(v0 + 224), *(v0 + 168));
  }

  v20 = v6;
  v22 = *(v0 + 216);
  v21 = *(v0 + 224);
  v24 = *(v0 + 184);
  v23 = *(v0 + 192);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 120);
  v28 = *(v0 + 104);

  Prompt.init(_:)();
  v29 = Prompt.overestimatedTokenCount()();
  v24(v27, v28);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134218496;
    *(v32 + 4) = v4;
    *(v32 + 12) = 2048;
    v33 = *(v20 + 16);

    *(v32 + 14) = v33;

    *(v32 + 22) = 2048;
    *(v32 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "RDAutoCategorizer: categorization {duration: %f, resultsCount: %ld, overestimatedTokenCount: %ld}", v32, 0x20u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v35 = *(v0 + 216);
  v34 = *(v0 + 224);
  v36 = *(v0 + 160);
  _StringGuts.grow(_:)(47);

  v37._countAndFlagsBits = v35;
  v37._object = v34;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 125;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  sub_100445784(0xD00000000000002CLL, 0x80000001007F8A10);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 200);
  v44 = *(v0 + 88);
  v43 = *(v0 + 96);
  v45 = *(v0 + 80);
  if (v41)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "RDAutoCategorizer: categorize() END", v46, 2u);

    swift_setDeallocating();
    v47 = *(v42 + 16);
  }

  else
  {

    swift_setDeallocating();
    v48 = *(v42 + 16);
  }

  (*(v44 + 8))(v43, v45);
  v50 = *(v0 + 144);
  v49 = *(v0 + 152);
  v51 = *(v0 + 120);
  v52 = *(v0 + 96);

  v53 = *(v0 + 8);

  return v53(v20);
}

uint64_t sub_1004453AC()
{
  v1 = v0[25];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  swift_setDeallocating();
  v5 = *(v1 + 16);

  (*(v3 + 8))(v2, v4);
  v6 = v0[29];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[15];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

unint64_t sub_1004454D0()
{
  result = qword_100947490;
  if (!qword_100947490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947490);
  }

  return result;
}

uint64_t sub_100445548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1003F8CF4;

  return RDAutoCategorizer.categorize(listName:reminderTitles:existingSections:)(a1, a2, a3, a4);
}

id sub_10044566C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDDummyAutoCategorizer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004456D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_100445D00;

  return (sub_100445938)(a3);
}

void sub_100445784(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() daemonUserDefaults];
  v5 = [v4 isAutoCategorizationLoggingEnabled];

  if (v5)
  {
    if (qword_100936158 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_100947448);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136380675;
      *(v8 + 4) = sub_10000668C(a1, a2, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "%{private}s", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_100445938(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100445958, 0, 0);
}

unint64_t sub_100445958()
{
  v1 = v0[2];
  v41 = v0[3];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = OBJC_IVAR____TtC7remindd22RDDummyAutoCategorizer_categoryByTitle;
  v6 = (63 - v3) >> 6;

  v7 = 0;
  v38 = _swiftEmptyDictionarySingleton;
  while (v4)
  {
    v8 = v4;
LABEL_10:
    v4 = (v8 - 1) & v8;
    v10 = *(v41 + v5);
    if (*(v10 + 16))
    {
      v11 = (*(v1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_100005F4C(v13, v12);
      if (v15)
      {
        v16 = (*(v10 + 56) + 16 * v14);
        v34 = *v16;
        v35 = v16[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v38;
        result = sub_100005F4C(v13, v12);
        v19 = v38[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

        if (v38[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_18;
          }

          v37 = result;
          v40 = v18;
          sub_100373664();
          result = v37;
          if ((v40 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_19:
          v25 = result;

          v38 = v42;
          v26 = (v42[7] + 16 * v25);
          v27 = v26[1];
          *v26 = v34;
          v26[1] = v35;
        }

        else
        {
          v39 = v18;
          sub_10036A8F0(v22, isUniquelyReferenced_nonNull_native);
          result = sub_100005F4C(v13, v12);
          v24 = v23 & 1;
          v18 = v39;
          if ((v39 & 1) != v24)
          {
LABEL_27:

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

LABEL_18:
          if (v18)
          {
            goto LABEL_19;
          }

LABEL_21:
          v42[(result >> 6) + 8] |= 1 << result;
          v28 = (v42[6] + 16 * result);
          *v28 = v13;
          v28[1] = v12;
          v29 = (v42[7] + 16 * result);
          *v29 = v34;
          v29[1] = v35;
          v30 = v42[2];
          v21 = __OFADD__(v30, 1);
          v31 = v30 + 1;
          if (v21)
          {
            goto LABEL_31;
          }

          v38 = v42;
          v42[2] = v31;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v9 >= v6)
    {
      break;
    }

    v8 = *(v1 + 56 + 8 * v9);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  v32 = v0[2];

  v33 = v0[1];

  return v33(v38);
}

unint64_t sub_100445C44()
{
  result = qword_100947598;
  if (!qword_100947598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947598);
  }

  return result;
}

unint64_t sub_100445CAC()
{
  result = qword_1009475A0;
  if (!qword_1009475A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009475A0);
  }

  return result;
}

id static REMCDListSection.insert(in:remObjectID:parentList:creationDate:displayName:canonicalName:minimumSupportedVersion:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a7;
  v35 = a9;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMCDListSection();
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = [v18 initWithContext:{a1, v34}];
  v20 = [a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v14 + 8))(v17, v13);
  [v19 setIdentifier:isa];

  v22 = [a3 account];
  [v19 setAccount:v22];

  v23 = [v19 createResolutionTokenMapIfNecessary];
  [v19 setList:a3];
  v24 = String._bridgeToObjectiveC()();
  [v23 updateForKey:v24];

  v25 = v19;
  v26 = Date._bridgeToObjectiveC()().super.isa;
  [v25 setCreationDate:v26];

  v27 = String._bridgeToObjectiveC()();
  [v23 updateForKey:v27];

  v28 = String._bridgeToObjectiveC()();
  [v25 setDisplayName:v28];

  v29 = String._bridgeToObjectiveC()();
  [v23 updateForKey:v29];

  if (a8)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v25 setCanonicalName:v30];

  v31 = String._bridgeToObjectiveC()();
  [v23 updateForKey:v31];

  [v25 setMinimumSupportedVersion:v35];
  v32 = String._bridgeToObjectiveC()();
  [v23 updateForKey:v32];

  [v25 updateChangeCount];
  return v25;
}

uint64_t static REMCDListSection.cdEntityName.getter()
{
  sub_1004461C8();
  v0 = [swift_getObjCClassFromMetadata() cdEntityName];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

unint64_t sub_1004461C8()
{
  result = qword_10093CC18;
  if (!qword_10093CC18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093CC18);
  }

  return result;
}

Swift::Int __swiftcall REMCDListSection.parentEffectiveMinimumSupportedVersion()()
{
  v1 = [v0 list];
  if (!v1)
  {
    return kREMSupportedVersionUnset;
  }

  v2 = v1;
  v3 = [v1 effectiveMinimumSupportedVersion];

  return v3;
}

uint64_t static REMCDListSection.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008E35F0);
  sub_100034610(&unk_1008E3610);
  return v0;
}

id REMCDListSection.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDListSection();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDListSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDListSection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100446490()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009475D0);
  v1 = sub_100006654(v0, qword_1009475D0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100446558()
{
  v1 = v0;
  v2 = [v0 list];
  if (!v2)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_1009475D0);
    v18 = v0;
    v5 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v19))
    {
      v20 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v20 = 136446466;
      v21 = sub_1004D6C70();
      v23 = sub_10000668C(v21, v22, &v77);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      [v18 isConcealed];
      v24 = Bool.yesno.getter();
      v26 = sub_10000668C(v24, v25, &v77);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v5, v19, "📓 REMSharedActivityJournaling: Unable to get list from reminder {reminderObjectID: %{public}s, isConcealed: %s}", v20, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_41;
  }

  v3 = v2;
  v4 = [v0 ckServerRecord];
  if (!v4)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_1009475D0);
    v28 = v0;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v77 = v32;
      *v31 = 136446210;
      v33 = sub_1004D6C70();
      v35 = sub_10000668C(v33, v34, &v77);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "📓 REMSharedActivityJournaling: Unable to get ckServerRecord for reminder {reminderObjectID: %{public}s}", v31, 0xCu);
      sub_10000607C(v32);
    }

    return 0;
  }

  v5 = v4;
  if ([v0 isInserted])
  {
    v6 = [v5 creatorUserRecordID];
    if (!v6)
    {
      if (qword_100936168 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_1009475D0);
      v8 = v0;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_32;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v77 = v12;
      *v11 = 136446210;
      v13 = sub_1004D6C70();
      v15 = sub_10000668C(v13, v14, &v77);

      *(v11 + 4) = v15;
      v16 = "📓 REMSharedActivityJournaling: Unable to get creatorUserRecordID from reminder {reminderObjectID: %{public}s}";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v9, v10, v16, v11, 0xCu);
      sub_10000607C(v12);

LABEL_32:

LABEL_40:
LABEL_41:

      return 0;
    }
  }

  else
  {
    v6 = [v5 lastModifiedUserRecordID];
    if (!v6)
    {
      if (qword_100936168 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_100006654(v61, qword_1009475D0);
      v62 = v0;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_32;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v77 = v12;
      *v11 = 136446210;
      v63 = sub_1004D6C70();
      v65 = sub_10000668C(v63, v64, &v77);

      *(v11 + 4) = v65;
      v16 = "📓 REMSharedActivityJournaling: Unable to get lastModifiedUserRecordID from reminder {reminderObjectID: %{public}s}";
      goto LABEL_31;
    }
  }

  v36 = v6;
  v37 = [v6 recordName];

  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = [v3 ckServerShare];
  if (v40)
  {
    v41 = v40;
    v42 = sub_100446EB8(v76, v39);
    if (v42)
    {
      v43 = v42;

      v44 = CKShareParticipant.participantID.getter();

      return v44;
    }

    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100006654(v66, qword_1009475D0);
    v67 = v1;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v70 = 136446466;
      v71 = sub_10000668C(v76, v39, &v77);

      *(v70 + 4) = v71;
      *(v70 + 12) = 2082;
      v72 = sub_1004D6C70();
      v74 = sub_10000668C(v72, v73, &v77);

      *(v70 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v68, v69, "📓 REMSharedActivityJournaling: Unable to get a participant for the reminder's author {authorID: %{public}s, reminderObjectID: %{public}s}", v70, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_40;
  }

  if (qword_100936168 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100006654(v46, qword_1009475D0);
  v47 = v1;
  v48 = v3;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v51 = 136446466;
    v52 = sub_1004D6C70();
    v54 = sub_10000668C(v52, v53, &v77);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2082;
    v55 = [v48 remObjectID];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 description];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;
    }

    else
    {
      v60 = 0xE300000000000000;
      v58 = 7104878;
    }

    v75 = sub_10000668C(v58, v60, &v77);

    *(v51 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v49, v50, "📓 REMSharedActivityJournaling: Unable to get ckServerShare from reminder's list. Assuming unit testing and returning userRecordID {reminderObjectID: %{public}s, listObjectID: %{public}s}", v51, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v76;
}

void *sub_100446EB8(uint64_t a1, uint64_t a2)
{
  v5 = [v2 participants];
  sub_100447358();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 userIdentity];
      v13 = [v12 userRecordID];

      if (v13)
      {
        v14 = [v13 recordName];

        v15 = a2;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        if (v16 == a1 && v18 == v15)
        {

          return v10;
        }

        a2 = v15;
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {

          return v10;
        }
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return 0;
}

uint64_t sub_1004470B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = [v2 isInserted];
  v12 = [v2 ckServerRecord];
  if (v11)
  {
    if (v12)
    {
      v13 = v12;
      v14 = [v12 creationDate];

      if (v14)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = type metadata accessor for Date();
        (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
      }

      else
      {
        v22 = type metadata accessor for Date();
        (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
      }

      v23 = v10;
      return sub_10012F7FC(v23, a1);
    }
  }

  else if (v12)
  {
    v16 = v12;
    v17 = [v12 modificationDate];

    if (v17)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = type metadata accessor for Date();
      (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    }

    else
    {
      v24 = type metadata accessor for Date();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    }

    v23 = v8;
    return sub_10012F7FC(v23, a1);
  }

  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);

  return v20(a1, 1, 1, v19);
}

unint64_t sub_100447358()
{
  result = qword_100942E60;
  if (!qword_100942E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100942E60);
  }

  return result;
}

void sub_1004473A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v34[-v11];
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v34[-v18];
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v34[-v22];
  v37 = v2;
  v24 = [v2 mostRecentTargetTemplateIdentifier];
  v38 = v5;
  if (v24)
  {
    v25 = v24;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v38;
    (*(v38 + 56))(v23, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v23, 1, 1, v4);
  }

  v26 = *(v9 + 48);
  sub_10018E470(v23, v12);
  v36 = a1;
  sub_10018E470(a1, &v12[v26]);
  v27 = *(v5 + 48);
  if (v27(v12, 1, v4) == 1)
  {
    sub_1000050A4(v23, &unk_100939D90, "8\n\r");
    if (v27(&v12[v26], 1, v4) == 1)
    {
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      return;
    }
  }

  else
  {
    sub_10018E470(v12, v19);
    if (v27(&v12[v26], 1, v4) != 1)
    {
      v32 = v38;
      (*(v38 + 32))(v8, &v12[v26], v4);
      sub_10018E4E0();
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v32 + 8);
      v33(v8, v4);
      sub_1000050A4(v23, &unk_100939D90, "8\n\r");
      v33(v19, v4);
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      if (v35)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_1000050A4(v23, &unk_100939D90, "8\n\r");
    (*(v38 + 8))(v19, v4);
  }

  sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
LABEL_10:
  sub_10018E470(v36, v16);
  if (v27(v16, 1, v4) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v16, v4);
  }

  v29 = v37;
  [v37 setMostRecentTargetTemplateIdentifier:isa];

  v30 = [v29 createResolutionTokenMapIfNecessary];
  v31 = String._bridgeToObjectiveC()();
  [v30 updateForKey:v31];
}

uint64_t sub_100447850()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009475F0);
  v1 = sub_100006654(v0, qword_1009475F0);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall REMCDSmartList.willSave_Swift()()
{
  if (([v0 didCleanUpManualSortHintOnMarkingForDeletion] & 1) == 0)
  {
    [v0 setDidCleanUpManualSortHintOnMarkingForDeletion:1];

    sub_10044796C();
  }
}

void sub_10044796C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = __chkstk_darwin(v2).n128_u64[0];
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 markedForDeletion])
  {
    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = [v1 smartListType];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {

      goto LABEL_16;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
LABEL_16:
      v27 = [v1 remObjectID];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = UUID.uuidString.getter();
        v32 = v31;
        (*(v3 + 8))(v7, v2);
        v33 = [v1 account];
        if (v33 && (v34 = v33, v35 = [v33 remObjectID], v34, v35))
        {
          v36 = [v1 storeControllerManagedObjectContext];
          if (v36)
          {
            v37 = v36;
            v38 = [v36 transactionAuthor];
            if (v38 && (v39 = v38, static String._unconditionallyBridgeFromObjectiveC(_:)(), v39, v40._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), v41 = String.hasPrefix(_:)(v40), , , !v41))
            {
              if (qword_100936170 != -1)
              {
                swift_once();
              }

              v88 = type metadata accessor for Logger();
              sub_100006654(v88, qword_1009475F0);

              v89 = Logger.logObject.getter();
              v90 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v89, v90))
              {
                v91 = swift_slowAlloc();
                v92 = swift_slowAlloc();
                v96 = v92;
                *v91 = 136446210;
                *(v91 + 4) = sub_10000668C(v30, v32, &v96);
                _os_log_impl(&_mh_execute_header, v89, v90, "cleanUpManualSortHintIfNeeded: CSL was deleted due to user-initiated changes, will delete its associated sort hint {listID: %{public}s}", v91, 0xCu);
                sub_10000607C(v92);
              }

              v93 = v35;
              sub_10013A994(2uLL, v30, v32, v35);

              swift_bridgeObjectRelease_n();
            }

            else
            {
              if (qword_100936170 != -1)
              {
                swift_once();
              }

              v42 = type metadata accessor for Logger();
              sub_100006654(v42, qword_1009475F0);

              v43 = Logger.logObject.getter();
              v44 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                v46 = swift_slowAlloc();
                v96 = v46;
                *v45 = 136446210;
                v47 = sub_10000668C(v30, v32, &v96);

                *(v45 + 4) = v47;
                _os_log_impl(&_mh_execute_header, v43, v44, "cleanUpManualSortHintIfNeeded: CSL was deleted due to non-user-initiated changes, cleanup is not needed {listID: %{public}s}", v45, 0xCu);
                sub_10000607C(v46);
              }

              else
              {
              }
            }

            return;
          }
        }

        else
        {
          if (qword_100936170 != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          sub_100006654(v48, qword_1009475F0);

          v49 = v1;
          v35 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v35, v50))
          {
            v51 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            *v51 = 136446466;
            v52 = [v49 smartListType];
            if (v52)
            {
              v53 = v52;
              v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v55;
            }

            else
            {
              v54 = 0;
              v56 = 0;
            }

            v96 = v54;
            v97 = v56;
            sub_1000F5104(&unk_100939E40, &qword_100791BD0);
            v79 = Optional.descriptionOrNil.getter();
            v81 = v80;

            v82 = sub_10000668C(v79, v81, &v98);

            *(v51 + 4) = v82;
            *(v51 + 12) = 2082;
            v83 = sub_10000668C(v30, v32, &v98);

            *(v51 + 14) = v83;
            _os_log_impl(&_mh_execute_header, v35, v50, "cleanUpManualSortHintIfNeeded: Unexpectedly nil smart list account.remObjectID {type: %{public}s, smartListUUIDString: %{public}s}", v51, 0x16u);
            swift_arrayDestroy();

            goto LABEL_47;
          }
        }

LABEL_47:

        return;
      }

      if (qword_100936170 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_100006654(v57, qword_1009475F0);
      v58 = v1;
      v95 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v95, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v98 = v61;
        *v60 = 136446210;
        v62 = [v58 smartListType];
        if (v62)
        {
          v63 = v62;
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;
        }

        else
        {
          v64 = 0;
          v66 = 0;
        }

        v96 = v64;
        v97 = v66;
        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v84 = Optional.descriptionOrNil.getter();
        v86 = v85;

        v87 = sub_10000668C(v84, v86, &v98);

        *(v60 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v95, v59, "cleanUpManualSortHintIfNeeded: Unexpectedly nil smart list remObjectID {type: %{public}s}", v60, 0xCu);
        sub_10000607C(v61);

LABEL_50:

        return;
      }

      goto LABEL_36;
    }
  }

  else
  {
  }

  if (qword_100936170 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_1009475F0);
  v19 = v1;
  v95 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v95, v20))
  {
    v21 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v21 = 136446466;
    v22 = [v19 smartListType];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v96 = v24;
    v97 = v26;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v68 = Optional.descriptionOrNil.getter();
    v70 = v69;

    v71 = sub_10000668C(v68, v70, &v98);

    *(v21 + 4) = v71;
    *(v21 + 12) = 2082;
    v72 = [v19 remObjectID];
    if (v72)
    {
      v73 = v72;
      v74 = [v72 description];

      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;
    }

    else
    {
      v77 = 0xE300000000000000;
      v75 = 7104878;
    }

    v78 = sub_10000668C(v75, v77, &v98);

    *(v21 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v95, v20, "cleanUpManualSortHintIfNeeded: Unexpectedly having a non-custom smart-list getting markedForDeletion {type: %{public}s, remObjectID: %{public}s}", v21, 0x16u);
    swift_arrayDestroy();

    goto LABEL_50;
  }

LABEL_36:
  v67 = v95;
}

uint64_t sub_100448628()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947608);
  v1 = sub_100006654(v0, qword_100947608);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004486F0(NSObject *a1@<X4>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v15 = sub_100013674(qword_1009752E8);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 secondaryGroceryLocalesInfoAsData];
    if (v17)
    {
      v36 = a2;
      v37 = a1;
      v18 = v17;
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      type metadata accessor for RDSecondaryGroceryLocalesInfo();
      sub_100448E3C(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo);
      static REMJSONRepresentable.fromJSONData(_:)();
      sub_10001BBA0(v19, v21);
      if (v2)
      {
      }

      else
      {
        v23 = *(v38 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);

        sub_100448B78(v23, v14);
        if (qword_100936178 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100006654(v24, qword_100947608);
        sub_100448E84(v14, v11);
        swift_bridgeObjectRetain_n();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        v37 = v25;
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v35 = v26;
          v28 = v27;
          v34 = swift_slowAlloc();
          v38 = v34;
          *v28 = 136446466;
          sub_100448E84(v11, v8);
          v29 = String.init<A>(describing:)();
          v31 = v30;
          sub_100448DD4(v11);
          v32 = sub_10000668C(v29, v31, &v38);

          *(v28 + 4) = v32;
          *(v28 + 12) = 1024;

          *(v28 + 14) = v23 == 0;

          v33 = v37;
          _os_log_impl(&_mh_execute_header, v37, v35, "REMGroceryDataView.SecondaryGroceryLocaleInvocation: %{public}s, isAutomatic: %{BOOL}d", v28, 0x12u);
          sub_10000607C(v34);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          sub_100448DD4(v11);
        }

        sub_100448E84(v14, v8);

        REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.init(locale:isAutomatic:)();

        sub_100448DD4(v14);
      }
    }

    else
    {
      v22 = type metadata accessor for Locale();
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
      REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.init(locale:isAutomatic:)();
    }
  }

  else
  {
    [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    swift_willThrow();
  }
}

uint64_t sub_100448B78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  if ((REMGroceryDataView.SecondaryGroceryLocaleInvocation.Parameters.modelBaseLocaleConversion.getter() & 1) == 0)
  {
    return sub_100448FEC(a1, a2);
  }

  sub_100448FEC(a1, v8);
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100448DD4(v8);
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  Locale.identifier.getter();
  (*(v10 + 8))(v8, v9);
  type metadata accessor for REMGroceryDummyModel();
  static REMGroceryDummyModel.modelBaseLocale(for:)();
  if (v2)
  {
  }

  v13 = v12;

  if (!v13)
  {
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  Locale.init(identifier:)();
  return (*(v10 + 56))(a2, 0, 1, v9);
}

uint64_t sub_100448D7C(uint64_t a1)
{
  result = sub_100448E3C(&qword_100947640, &type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100448DD4(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100448E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100448E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100448EF4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_100448FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = type metadata accessor for Locale();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v54);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v50 - v18;
  if (a1)
  {
    v51 = a2;
    v52 = v4;
    v20 = *(a1 + 16);
    v21 = v54;
    if (v20)
    {
      v53 = type metadata accessor for REMGroceryDummyModel();
      v22 = *(v52 + 16);
      v23 = a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v24 = (v52 + 8);
      v25 = *(v52 + 72);
      v22(v7, v23, v21);
      while (1)
      {
        Locale.identifier.getter();
        v26 = static REMGroceryDummyModel.isSupported(localeIdentifier:)();

        if (v26)
        {
          break;
        }

        v21 = v54;
        (*v24)(v7, v54);
        v23 += v25;
        if (!--v20)
        {
          return (*(v52 + 56))(v51, 1, 1, v21, v17);
        }

        v22(v7, v23, v21);
      }

      v28 = v51;
      v27 = v52;
      v29 = v54;
      (*(v52 + 32))(v51, v7, v54);
      return (*(v27 + 56))(v28, 0, 1, v29);
    }

    else
    {
      return (*(v52 + 56))(v51, 1, 1, v21, v17);
    }
  }

  else
  {
    sub_100449828();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [ObjCClassFromMetadata daemonUserDefaults];
    v33 = [v32 automaticSecondaryGroceryLocales];

    if (v33)
    {
      v53 = v9;
      v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v34[2] && (v35 = v34[5], v50 = v34[4], , , v36 = [ObjCClassFromMetadata daemonUserDefaults], v37 = objc_msgSend(v36, "automaticSecondaryGroceryLocalesLastModifiedDate"), v36, v37))
      {
        v51 = a2;
        v52 = v4;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        static Date.now.getter();
        Date.addingTimeInterval(_:)();
        v38 = static Date.< infix(_:_:)();
        v9 = v53;
        v39 = *(v53 + 8);
        v39(v12, v8);
        v39(v15, v8);
        if (v38)
        {
          v40 = v51;
          Locale.init(identifier:)();
          v39(v19, v8);
          return (*(v52 + 56))(v40, 0, 1, v54, v41);
        }

        v39(v19, v8);

        a2 = v51;
        v4 = v52;
      }

      else
      {

        v9 = v53;
      }
    }

    v42 = [objc_opt_self() sharedConfiguration];
    v43 = sub_10044ADA4(v42);

    if (v43[2])
    {
      v44 = v43[5];
      v53 = v43[4];

      v45 = [ObjCClassFromMetadata daemonUserDefaults];
      static Date.now.getter();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v9 + 8))(v15, v8);
      [v45 setAutomaticSecondaryGroceryLocalesLastModifiedDate:isa];

      v47 = [ObjCClassFromMetadata daemonUserDefaults];
      sub_1000F5104(&unk_100936FD0, &unk_100795D40);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100791300;
      *(v48 + 32) = v53;
      *(v48 + 40) = v44;

      v49 = Array._bridgeToObjectiveC()().super.isa;

      [v47 setAutomaticSecondaryGroceryLocales:v49];

      Locale.init(identifier:)();
      return (*(v4 + 56))(a2, 0, 1, v54);
    }

    else
    {

      return (*(v4 + 56))(a2, 1, 1, v54);
    }
  }
}

uint64_t sub_1004495D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_1003AD2A0(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_100449600()
{
  v1 = OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_lastModifiedDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDSecondaryGroceryLocalesInfo()
{
  result = qword_100947670;
  if (!qword_100947670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100449700()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004497A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);
  v5 = *(v3 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);
  if (!v4)
  {
    return !v5;
  }

  if (!v5)
  {
    return 0;
  }

  return sub_1003AD2A0(v4, v5);
}

unint64_t sub_100449828()
{
  result = qword_100936EB8;
  if (!qword_100936EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100936EB8);
  }

  return result;
}

Swift::Int sub_100449874(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100436414(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1004498E0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1004498E0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F5104(&qword_10093EC68, &qword_10079D3A0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100449AE4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1004499E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1004499E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = v9[2];
    v13 = v8;
    v14 = v7;
    while (1)
    {
      v15 = *(v14 + 16);
      if (v15 >= v12)
      {
        if (v12 != v15 || ((result = *v14, *v14 == *&v10) ? (v16 = *(v14 + 8) == v11) : (v16 = 0), v16 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
        {
LABEL_4:
          ++v4;
          v7 += 24;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v6)
      {
        break;
      }

      v10 = *(v14 + 24);
      v11 = *(v14 + 32);
      v12 = *(v14 + 40);
      v17 = *(v14 + 16);
      *(v14 + 24) = *v14;
      *(v14 + 40) = v17;
      *v14 = v10;
      *(v14 + 8) = v11;
      *(v14 + 16) = v12;
      v14 -= 24;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100449AE4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v103 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_113:
    v103 = *v103;
    if (!v103)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_115;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 24 * v7;
      v12 = *(v11 + 16);
      v13 = *v5 + 24 * v9;
      v14 = *(v13 + 16);
      if (v14 >= v12)
      {
        if (v12 != v14 || ((result = *v13, *v13 == *v11) ? (v16 = *(v13 + 8) == *(v11 + 8)) : (v16 = 0), v16))
        {
          v15 = 0;
        }

        else
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v15 = result;
        }
      }

      else
      {
        v15 = 1;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v17 = v10 + 24 * v9 + 32;
        do
        {
          v18 = *(v17 + 32);
          v19 = *(v17 + 8);
          if (v19 < v18)
          {
            if ((v15 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else if (v18 != v19 || ((result = *(v17 - 8), result == *(v17 + 16)) ? (v20 = *v17 == *(v17 + 24)) : (v20 = 0), v20))
          {
            if (v15)
            {
              goto LABEL_30;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_29;
            }
          }

          ++v7;
          v17 += 24;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_29:
      if (v15)
      {
LABEL_30:
        if (v7 < v9)
        {
          goto LABEL_144;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = 24 * v9;
          v23 = v7;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v31 = *v5;
              if (!*v5)
              {
                goto LABEL_148;
              }

              v25 = (v31 + v22);
              v26 = (v31 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = v25[2];
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            ++v24;
            v21 -= 24;
            v22 += 24;
          }

          while (v24 < v23);
        }
      }
    }

LABEL_38:
    v32 = v5[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_141;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_142;
        }

        if (v9 + a4 >= v32)
        {
          v33 = v5[1];
        }

        else
        {
          v33 = v9 + a4;
        }

        if (v33 < v9)
        {
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          result = sub_1004361F4(v8);
          v8 = result;
LABEL_115:
          v94 = v8 + 16;
          v95 = *(v8 + 2);
          if (v95 >= 2)
          {
            while (1)
            {
              v96 = *v5;
              if (!*v5)
              {
                goto LABEL_149;
              }

              v97 = &v8[16 * v95];
              v5 = *v97;
              v98 = &v94[2 * v95];
              v99 = v98[1];
              sub_10044A138((v96 + 24 * *v97), (v96 + 24 * *v98), v96 + 24 * v99, v103);
              if (v4)
              {
              }

              if (v99 < v5)
              {
                goto LABEL_137;
              }

              if (v95 - 2 >= *v94)
              {
                goto LABEL_138;
              }

              *v97 = v5;
              *(v97 + 1) = v99;
              v100 = *v94 - v95;
              if (*v94 < v95)
              {
                goto LABEL_139;
              }

              v95 = *v94 - 1;
              result = memmove(v98, v98 + 2, 16 * v100);
              *v94 = v95;
              v5 = a3;
              if (v95 <= 1)
              {
              }
            }
          }
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_62:
    if (v7 < v9)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003658B8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_1003658B8((v47 > 1), v48 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v49;
    v50 = &v8[16 * v48];
    *(v50 + 4) = v9;
    *(v50 + 5) = v7;
    v51 = *v103;
    if (!*v103)
    {
      goto LABEL_150;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_82:
          if (v56)
          {
            goto LABEL_128;
          }

          v69 = &v8[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_131;
          }

          v75 = &v8[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_135;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v79 = &v8[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_96:
        if (v74)
        {
          goto LABEL_130;
        }

        v82 = &v8[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_133;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_103:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v5)
        {
          goto LABEL_147;
        }

        v91 = *&v8[16 * v90 + 32];
        v92 = *&v8[16 * v52 + 40];
        sub_10044A138((*v5 + 24 * v91), (*v5 + 24 * *&v8[16 * v52 + 32]), *v5 + 24 * v92, v51);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1004361F4(v8);
        }

        if (v90 >= *(v8 + 2))
        {
          goto LABEL_125;
        }

        v93 = &v8[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_100436168(v52);
        v49 = *(v8 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v8[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_126;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_127;
      }

      v64 = &v8[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_129;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_132;
      }

      if (v68 >= v60)
      {
        v86 = &v8[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_136;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_113;
    }
  }

  v34 = *v5;
  v35 = *v5 + 24 * v7 - 24;
  v101 = v9;
  v36 = v9 - v7;
LABEL_49:
  v37 = (v34 + 24 * v7);
  v38 = *v37;
  v39 = *(v37 + 1);
  v40 = v37[2];
  v41 = v36;
  v42 = v35;
  while (1)
  {
    v43 = *(v42 + 16);
    if (v43 >= v40)
    {
      if (v40 != v43 || ((result = *v42, *v42 == *&v38) ? (v44 = *(v42 + 8) == v39) : (v44 = 0), v44 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
      {
LABEL_48:
        ++v7;
        v35 += 24;
        --v36;
        if (v7 != v33)
        {
          goto LABEL_49;
        }

        v7 = v33;
        v5 = a3;
        v9 = v101;
        goto LABEL_62;
      }
    }

    if (!v34)
    {
      break;
    }

    v38 = *(v42 + 24);
    v39 = *(v42 + 32);
    v40 = *(v42 + 40);
    v45 = *(v42 + 16);
    *(v42 + 24) = *v42;
    *(v42 + 40) = v45;
    *v42 = v38;
    *(v42 + 8) = v39;
    *(v42 + 16) = v40;
    v42 -= 24;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}

uint64_t sub_10044A138(double *__src, double *__dst, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[3 * v11] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
      v5 = a3;
    }

    v13 = &v4[3 * v11];
    if (v10 < 24 || v6 <= v7)
    {
      v32 = v6;
    }

    else
    {
      v37 = v4;
LABEL_28:
      v22 = 0;
      v23 = v13;
      v36 = v6 - 3;
      do
      {
        v13 = &v23[v22];
        v24 = (v5 + v22);
        v25 = v5 + v22 - 24;
        v26 = *&v23[v22 - 8];
        v27 = *(v6 - 1);
        if (v27 < v26 || v26 == v27 && (*(v6 - 3) == *(v13 - 3) ? (v28 = *(v6 - 2) == *(v13 - 2)) : (v28 = 0), !v28 && (v29 = v5, v30 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 = v29, v4 = v37, (v30 & 1) != 0)))
        {
          v32 = (v6 - 3);
          if (v24 != v6)
          {
            v33 = *v36;
            *(v25 + 16) = *(v6 - 1);
            *v25 = v33;
          }

          if (v13 <= v4 || (v5 = v25, v6 -= 3, v36 <= v7))
          {
            v13 = &v23[v22];
            goto LABEL_47;
          }

          goto LABEL_28;
        }

        if (v24 != v13)
        {
          v31 = *(v13 - 24);
          *(v25 + 16) = *(v13 - 1);
          *v25 = v31;
        }

        v22 -= 24;
        v13 = &v23[v22];
      }

      while (&v23[v22] > v4);
      v32 = v6;
    }
  }

  else
  {
    if (a4 != __src || &__src[3 * v9] <= a4)
    {
      memmove(a4, __src, 24 * v9);
      v5 = a3;
    }

    v13 = &v4[3 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      while (1)
      {
        v14 = v6[2];
        v15 = v4[2];
        if (v15 < v14)
        {
          break;
        }

        if (v14 == v15)
        {
          v18 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
          if (!v18)
          {
            v19 = v5;
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v5 = v19;
            if (v20)
            {
              break;
            }
          }
        }

        v16 = v4;
        v18 = v7 == v4;
        v4 += 3;
        if (!v18)
        {
          goto LABEL_9;
        }

LABEL_10:
        v7 += 3;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_44;
        }
      }

      v16 = v6;
      v18 = v7 == v6;
      v6 += 3;
      if (v18)
      {
        goto LABEL_10;
      }

LABEL_9:
      v17 = *v16;
      v7[2] = v16[2];
      *v7 = v17;
      goto LABEL_10;
    }

LABEL_44:
    v32 = v7;
  }

LABEL_47:
  v34 = (v13 - v4) / 24;
  if (v32 != v4 || v32 >= &v4[3 * v34])
  {
    memmove(v32, v4, 24 * v34);
  }

  return 1;
}

unint64_t sub_10044A428(void *a1)
{
  v2 = type metadata accessor for EntityPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v72 - v8;
  __chkstk_darwin(v10);
  v12 = &v72 - v11;
  __chkstk_darwin(v13);
  v15 = &v72 - v14;
  v16 = sub_10038DA10(_swiftEmptyArrayStorage);
  v78 = sub_100125BC0();
  v79 = v12;
  v17 = [a1 miniumumAutomaticLanguageConfidenceScoreAllowed];
  [v17 doubleValue];
  v19 = v18;

  v20 = *(v78 + 2);
  if (v20)
  {
    v76 = v9;
    v74 = v6;
    v83 = v2;
    v77 = 0;
    v75 = v16;
    v21 = 0;
    v22 = (v78 + 32);
    v23 = (v3 + 8);
    v80 = 0x80000001007F8AB0;
    *&v81 = 0.0;
    v24 = 0xE000000000000000;
    v25 = 0.0;
    v84 = 0xE000000000000000;
    v26 = v79;
    while (1)
    {
      v82 = v21;
      sub_10000A87C(v22, v87);
      sub_10000F61C(v87, v88);
      dispatch thunk of ExtendedTripleProtocol.predicate.getter();
      v28 = EntityPredicate.rawValue.getter();
      v30 = v29;
      v31 = *v23;
      (*v23)(v15, v83);
      if (v28 == 859001680 && v30 == 0xE400000000000000)
      {
        break;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {

        goto LABEL_4;
      }

      sub_10000F61C(v87, v88);
      dispatch thunk of ExtendedTripleProtocol.predicate.getter();
      v33 = EntityPredicate.rawValue.getter();
      v35 = v34;
      v31(v26, v83);
      if (v33 == 0xD000000000000013 && v80 == v35)
      {

LABEL_14:

        sub_10000F61C(v87, v88);
        v21 = dispatch thunk of ExtendedTripleProtocol.object.getter();
        v24 = v37;
        goto LABEL_5;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_14;
      }

      sub_10000F61C(v87, v88);
      v38 = v76;
      dispatch thunk of ExtendedTripleProtocol.predicate.getter();
      v39 = EntityPredicate.rawValue.getter();
      v41 = v40;
      v31(v38, v83);
      if (v39 == 0x69666E6F635F6D6ELL && v41 == 0xED000065636E6564)
      {

LABEL_19:
        sub_10000F61C(v87, v88);
        v43 = dispatch thunk of ExtendedTripleProtocol.object.getter();
        v85 = 0.0;
        v44 = v77;
        v46 = sub_100448EF4(v43, v45);
        v77 = v44;

        v26 = v79;
        if (v46)
        {
          v25 = v85;
        }

        else
        {
          v25 = 0.0;
        }

        v21 = v82;
        goto LABEL_5;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v42)
      {
        goto LABEL_19;
      }

      sub_10000F61C(v87, v88);
      v47 = v74;
      dispatch thunk of ExtendedTripleProtocol.predicate.getter();
      v48 = EntityPredicate.rawValue.getter();
      v50 = v49;
      v31(v47, v83);
      v26 = v79;
      if (v48 == 0x6372756F735F6D6ELL && v50 == 0xED00006570795465)
      {
      }

      else
      {
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v51 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_10000F61C(v87, v88);
      v52 = dispatch thunk of ExtendedTripleProtocol.object.getter();
      v54 = sub_1001250C0(v52, v53);

      if ((v54 & 1) == 0)
      {
LABEL_33:
        v21 = v82;
        goto LABEL_5;
      }

      v55 = HIBYTE(v24) & 0xF;
      v21 = v82;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v55 = v82 & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        v85 = *&v81;
        v86 = v84;

        v56._countAndFlagsBits = 95;
        v56._object = 0xE100000000000000;
        String.append(_:)(v56);
        v57._countAndFlagsBits = v21;
        v57._object = v24;
        String.append(_:)(v57);
        v59 = *&v85;
        v58 = v86;
        if (v19 <= v25)
        {
          goto LABEL_35;
        }
      }

      else
      {

        v59 = v81;
        if (v19 <= v25)
        {
LABEL_35:
          v60 = *&v75;
          v61 = v58;
          v73 = v59;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = v60;
          sub_1002C6EC8(v73, v61, isUniquelyReferenced_nonNull_native, v25);

          v75 = *&v85;
          goto LABEL_5;
        }
      }

LABEL_5:
      sub_10000607C(v87);
      v22 += 40;
      if (!--v20)
      {

        v16 = v75;
        goto LABEL_38;
      }
    }

LABEL_4:

    sub_10000F61C(v87, v88);
    *&v81 = COERCE_DOUBLE(dispatch thunk of ExtendedTripleProtocol.object.getter());
    v84 = v27;
    v21 = 0;
    v24 = 0xE000000000000000;
    v25 = 0.0;
    goto LABEL_5;
  }

LABEL_38:
  if (qword_100935A68 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100006654(v63, qword_1009387D8);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v87[0] = v67;
    *v66 = 136315138;
    v68 = Dictionary.description.getter();
    v70 = sub_10000668C(v68, v69, v87);

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v64, v65, "Automatic Languages: %s", v66, 0xCu);
    sub_10000607C(v67);
  }

  return v16;
}

void *sub_10044ADA4(NSObject *a1)
{
  v96 = a1;
  v1 = type metadata accessor for REMGroceryModelError();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 1);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v79 - v12;
  v87 = type metadata accessor for ContinuousClock();
  v86 = *(v87 - 8);
  v14 = *(v86 + 64);
  __chkstk_darwin(v87);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.init()();
  v89 = v13;
  v88 = v16;
  ContinuousClock.now.getter();
  sub_100124704();
  v17 = type metadata accessor for REMGroceryDummyModel();
  v18 = static REMGroceryDummyModel.modelBaseLocale(for:)();
  v97 = v19;
  v93 = v2;
  v94 = v17;
  v90 = v5;
  v91 = v1;
  if (!v97)
  {

    goto LABEL_10;
  }

  v92 = v10;
  v80 = v7;
  v81 = v6;
  v28 = v18;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v28;
  *(inited + 40) = v97;

  v30 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v99 = v30;
  v31 = sub_10044A428(v96);
  v32 = v31;
  v21 = *(v31 + 16);
  if (v21)
  {
    v7 = sub_1003689E0(*(v31 + 16), 0);
    v96 = sub_100278C74(v98, v7 + 4, v21, v32);
    v6 = v98[2];
    v95 = v98[4];

    sub_10001B860();
    if (v96 != v21)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v6 = v91;
  v98[0] = v7;
  sub_100449874(v98);

  v34 = v98[0];
  v35 = v98[0][2];
  if (v35)
  {
    v98[0] = _swiftEmptyArrayStorage;
    sub_100253198(0, v35, 0);
    v7 = v98[0];
    v97 = v34;
    v36 = v34 + 6;
    do
    {
      v38 = *(v36 - 2);
      v37 = *(v36 - 1);
      v39 = *v36;
      v98[0] = v7;
      v41 = v7[2];
      v40 = v7[3];

      if (v41 >= v40 >> 1)
      {
        sub_100253198((v40 > 1), v41 + 1, 1);
        v7 = v98[0];
      }

      v7[2] = v41 + 1;
      v42 = &v7[3 * v41];
      v42[4] = v38;
      v42[5] = v37;
      v42[6] = v39;
      v36 += 3;
      --v35;
    }

    while (v35);

    v6 = v91;
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v44 = v92;
  v96 = v7[2];
  if (!v96)
  {

    v65 = _swiftEmptyArrayStorage;
LABEL_46:

    ContinuousClock.now.getter();
    ContinuousClock.Instant.duration(to:)();
    if (qword_100935A68 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100006654(v66, qword_1009387D8);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v98[0] = swift_slowAlloc();
      *v69 = 136315394;
      v70 = Duration.description.getter();
      v72 = sub_10000668C(v70, v71, v98);

      *(v69 + 4) = v72;
      *(v69 + 12) = 2080;

      sub_1000F5104(&qword_100943188, &unk_1007AA660);
      v73 = Array.description.getter();
      v75 = v74;

      v76 = sub_10000668C(v73, v75, v98);

      *(v69 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v67, v68, "automaticGroceryLocaleIDsWithConfidences finished {duration: %s sec}, results: %s)", v69, 0x16u);
      swift_arrayDestroy();
    }

    v77 = v80[1];
    v78 = v81;
    v77(v44, v81);
    v77(v89, v78);
    (*(v86 + 8))(v88, v87);
    return v65;
  }

  v45 = 0;
  v95 = v7 + 4;
  v84 = v93 + 11;
  v83 = enum case for REMGroceryModelError.unsupportedLanguage(_:);
  v85 = v93 + 1;
  v93 = _swiftEmptyArrayStorage;
  *&v43 = 136315138;
  v79 = v43;
  *&v43 = 136315394;
  v82 = v43;
  while (v45 < v7[2])
  {
    v46 = &v95[3 * v45];
    v47 = *v46;
    v35 = v46[1];
    v48 = v46[2];

    v97 = v47;
    v49 = static REMGroceryDummyModel.modelBaseLocale(for:)();
    v51 = v50;
    if (!v50)
    {

LABEL_40:
      v61 = v93;
      goto LABEL_41;
    }

    v52 = v49;
    v53 = v99;
    if (*(v99 + 16))
    {
      v54 = *(v99 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v55 = Hasher._finalize()();
      v56 = -1 << *(v53 + 32);
      v57 = v55 & ~v56;
      if ((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
      {
        v58 = ~v56;
        while (1)
        {
          v59 = (*(v53 + 48) + 16 * v57);
          v60 = *v59 == v52 && v51 == v59[1];
          if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v57 = (v57 + 1) & v58;
          if (((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v6 = v91;
        goto LABEL_40;
      }
    }

LABEL_33:
    v61 = v93;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_100365894(0, v61[2] + 1, 1, v61);
    }

    v63 = v61[2];
    v62 = v61[3];
    if (v63 >= v62 >> 1)
    {
      v61 = sub_100365894((v62 > 1), v63 + 1, 1, v61);
    }

    v61[2] = v63 + 1;
    v64 = &v61[3 * v63];
    v64[4] = v97;
    v64[5] = v35;
    v64[6] = v48;
    sub_100378434(v98, v52, v51);

    v6 = v91;
LABEL_41:
    v93 = v61;
    if (v61[2] >= 2uLL)
    {

      v65 = v93;
      v44 = v92;
      goto LABEL_46;
    }

    v44 = v92;
    if (++v45 == v96)
    {

      v65 = v93;
      goto LABEL_46;
    }
  }

  __break(1u);
  swift_once();
  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_1009387D8);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v6;
    v24 = swift_slowAlloc();
    v25 = v7;
    v26 = swift_slowAlloc();
    v98[0] = v26;
    *v24 = 136315138;
    v27 = sub_10000668C(v45, v35, v98);

    *(v24 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "automaticGroceryLocaleIDAndConfidencePairs: Error in preferred baseLanguage %s", v24, 0xCu);
    sub_10000607C(v26);
    v7 = v25;

    v6 = v23;

    goto LABEL_10;
  }

LABEL_8:

LABEL_10:
  (v7[1])(v89, v6);
  (*(v86 + 8))(v88, v87);
  return _swiftEmptyArrayStorage;
}

_BYTE *sub_10044BD04@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10044BD84()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947700);
  v1 = sub_100006654(v0, qword_100947700);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10044BE4C(uint64_t a1, NSString a2, char a3)
{
  v7 = [v3 recentlyDeletedInfoChecksum];
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!a2)
  {

LABEL_12:
    [v3 setRecentlyDeletedInfoChecksum:a2];

    if (a3)
    {
      v14 = [v3 createResolutionTokenMapIfNecessary];
      v15 = String._bridgeToObjectiveC()();
      [v14 updateForKey:v15];
    }

    return;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
    goto LABEL_12;
  }
}

uint64_t sub_10044BFF0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947718);
  v1 = sub_100006654(v0, qword_100947718);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10044C0DC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947730);
  v1 = sub_100006654(v0, qword_100947730);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10044C1A4(void (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v248 = a3;
  v227 = a2;
  v203 = a5;
  v207 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v206 = *(v207 - 8);
  v7 = *(v206 + 64);
  __chkstk_darwin(v207);
  v205 = &v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v224 = &v195 - v10;
  v213 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v212 = *(v213 - 8);
  v11 = *(v212 + 64);
  __chkstk_darwin(v213);
  v202 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1000F5104(&qword_10093AE38, &unk_100798450);
  v13 = *(*(v217 - 8) + 64);
  __chkstk_darwin(v217);
  v211 = &v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v222 = &v195 - v16;
  v17 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v200 = &v195 - v19;
  v216 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v215 = *(v216 - 8);
  v20 = *(v215 + 64);
  __chkstk_darwin(v216);
  v208 = (&v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v220 = &v195 - v23;
  v225 = type metadata accessor for REMRemindersListDataView.Diff();
  v219 = *(v225 - 8);
  v24 = *(v219 + 64);
  __chkstk_darwin(v225);
  v204 = &v195 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v226 = &v195 - v27;
  __chkstk_darwin(v28);
  v218 = &v195 - v29;
  __chkstk_darwin(v30);
  v228 = &v195 - v31;
  v32 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v214 = &v195 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v210 = &v195 - v36;
  __chkstk_darwin(v37);
  v221 = &v195 - v38;
  __chkstk_darwin(v39);
  v230 = &v195 - v40;
  v235 = _s9UtilitiesO12SortingStyleOMa();
  v41 = *(*(v235 - 8) + 64);
  __chkstk_darwin(v235);
  v234 = &v195 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v244 = &v195 - v44;
  v239 = _s10PredicatesOMa(0);
  v45 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v209 = (&v195 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v47);
  v233 = &v195 - v48;
  v238 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v241 = *(v238 - 8);
  v49 = v241[8];
  __chkstk_darwin(v238);
  v232 = &v195 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v243 = &v195 - v52;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v236 = *(Subtasks - 8);
  v237 = Subtasks;
  v54 = *(v236 + 64);
  __chkstk_darwin(Subtasks);
  v242 = (&v195 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v245 = *(v56 - 8);
  v246 = v56;
  v57 = *(v245 + 64);
  __chkstk_darwin(v56);
  v201 = &v195 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v223 = &v195 - v60;
  __chkstk_darwin(v61);
  v63 = &v195 - v62;
  __chkstk_darwin(v64);
  v66 = &v195 - v65;
  v240 = a4;
  v67 = REMRemindersListDataView.ListInvocation.Parameters.list.getter();
  v68 = [v67 objectID];

  v69 = REMObjectID.codable.getter();
  type metadata accessor for REMListStableSortingDataView.Invocation();
  v70 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v71 = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  v231 = xmmword_1007953F0;
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = v69;
  v73 = v69;
  sub_1003915C4(inited);
  v75 = v74;
  swift_setDeallocating();
  v76 = *(inited + 16);
  swift_arrayDestroy();
  v77 = v247;
  v78 = sub_10026EC90(a1, v248, v75);
  if (v77)
  {

    return;
  }

  v79 = v78;
  v197 = v71;
  v199 = v66;
  v80 = v241;
  v195 = v63;
  v247 = a1;

  v81 = sub_10035363C(v73, v79);

  if (!v81)
  {
    [objc_opt_self() noSuchObjectErrorWithObjectID:v73];
    swift_willThrow();

    return;
  }

  v196 = v81;
  v82 = [v81 accountID];
  v83 = [v247 persistentStoreOfAccountWithAccountID:v82];

  v198 = 0;
  if (v83)
  {
    v84 = swift_allocObject();
    *(v84 + 16) = v231;
    *&v231 = v84;
    *(v84 + 32) = v83;
  }

  else
  {
    *&v231 = 0;
  }

  v85 = v243;
  v86 = v199;
  v87 = v233;
  v88 = REMRemindersListDataView.ListInvocation.Parameters.list.getter();
  REMRemindersListDataView.ListInvocation.Parameters.showCompleted.getter();
  REMRemindersListDataView.ListInvocation.Parameters.fetchSubtasks.getter();
  REMRemindersListDataView.ListInvocation.Parameters.sortingStyle.getter();
  v89 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
  v241 = v88;
  *v87 = [v88 objectID];
  v90 = v87;
  v91 = v245 + 16;
  v92 = *(v245 + 16);
  (v92)(v87 + v89, v86, v246);
  swift_storeEnumTagMultiPayload();
  v93 = sub_100043AA8();
  sub_1001A4F3C(v90, _s10PredicatesOMa);
  v94 = v232;
  v95 = v238;
  (v80[2])(v232, v85, v238);
  v96 = v234;
  swift_storeEnumTagMultiPayload();
  v97 = v244;
  sub_1005368D8(v94, v96, v244);
  v98 = v247;
  v99 = v97;
  v100 = v242;
  v101 = v198;
  v102 = sub_100536D54(v247, v93, v99, v86, v242, _swiftEmptyArrayStorage, v231);
  if (v101)
  {

    sub_1001A4F3C(v244, _s9UtilitiesO12SortingStyleOMa);
    (v80[1])(v243, v95);
    (*(v236 + 8))(v100, v237);
    (*(v245 + 8))(v199, v246);
    return;
  }

  v197 = v91;
  v233 = v92;
  v235 = v102;

  sub_1001A4F3C(v244, _s9UtilitiesO12SortingStyleOMa);
  (v80[1])(v243, v95);
  (*(v236 + 8))(v100, v237);
  v104 = v245 + 8;
  v103 = *(v245 + 8);
  (v103)(v199, v246);
  v105 = v98;
  v106 = v229;
  sub_10044DCE0(v105, v230);
  v243 = v103;
  v244 = v104;
  v107 = [v106 fetchResultTokenToDiffAgainst];
  sub_100534D44(v107, v228);
  v198 = 0;

  v108 = v220;
  REMRemindersListDataView.ListInvocation.Parameters.remindersPrefetch.getter();
  v109 = v215;
  v110 = v208;
  v111 = v216;
  (*(v215 + 16))(v208, v108, v216);
  v112 = (*(v109 + 88))(v110, v111);
  if (v112 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v109 + 96))(v110, v111);
    v113 = *v110;
    v114 = v235;
    v242 = sub_10053DB98(v113, v235, v247, v248, v231);

    v241 = _swiftEmptyArrayStorage;
    v115 = v217;
    goto LABEL_20;
  }

  v115 = v217;
  v116 = v248;
  if (v112 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    (*(v109 + 96))(v110, v111);
    v242 = sub_10053E698(*v110, v228, v247, v116, v231);

    v241 = _swiftEmptyArrayStorage;
LABEL_18:
    v114 = v235;
    goto LABEL_19;
  }

  if (v112 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    if (v112 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
    {
LABEL_52:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_53;
    }

    v241 = _swiftEmptyArrayStorage;
    v242 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  (*(v109 + 96))(v110, v111);
  v117 = *v110;
  v118 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
  v119 = v200;
  sub_100031B58(v110 + *(v118 + 48), v200, &qword_10094B8E0, &unk_1007AABD0);
  v120 = v117;
  v121 = v235;
  v122 = v247;
  v123 = v231;
  v242 = sub_10053DB98(v120, v235, v247, v116, v231);
  v114 = v121;
  v124 = v122;
  v111 = v216;
  v241 = sub_10053EBE4(v119, v121, v124, v116, v123);

  v109 = v215;
  v115 = v217;
  sub_1000050A4(v119, &qword_10094B8E0, &unk_1007AABD0);
LABEL_19:
  v108 = v220;
LABEL_20:
  v125 = v233;
  (*(v109 + 8))(v108, v111);
  v126 = REMRemindersListDataView.ListInvocation.Parameters.list.getter();
  v127 = [v126 objectID];

  v128 = v209;
  *v209 = v127;
  swift_storeEnumTagMultiPayload();
  v248 = sub_100043AA8();
  sub_1001A4F3C(v128, _s10PredicatesOMa);
  v129 = v195;
  REMRemindersListDataView.ListInvocation.Parameters.showCompleted.getter();
  v130 = v222;
  sub_100010364(v230, v222, &qword_100938A70, &qword_1007ACC60);
  v131 = v246;
  v125(v130 + *(v115 + 48), v129, v246);
  *(v130 + *(v115 + 64)) = v114;
  v132 = v115;
  v133 = v211;
  sub_100010364(v130, v211, &qword_10093AE38, &unk_100798450);
  v134 = *(v132 + 48);
  v135 = *(v133 + *(v132 + 64));
  v136 = v221;
  sub_100031B58(v133, v221, &qword_100938A70, &qword_1007ACC60);
  v137 = v136;
  v138 = v223;
  (*(v245 + 32))(v223, v133 + v134, v131);
  v139 = v210;
  sub_100010364(v137, v210, &qword_100938A70, &qword_1007ACC60);
  v140 = v212;
  v141 = v213;
  v142 = (*(v212 + 48))(v139, 1, v213);

  if (v142 != 1)
  {

    v149 = v202;
    (*(v140 + 32))(v202, v139, v141);
    v150 = v140;
    v151 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    v152 = REMRemindersListDataView.CountByCompleted.completed.getter();

    (*(v150 + 8))(v149, v141);
    v153 = v138;
    v154 = v243;
    (v243)(v153, v131);
    sub_1000050A4(v137, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v130, &qword_10093AE38, &unk_100798450);
    (v154)(v195, v131);
    v145 = v214;
    if (!__OFADD__(v151, v152))
    {
      v148 = v225;
      v144 = v226;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_52;
  }

  v143 = v248;
  sub_1000050A4(v139, &qword_100938A70, &qword_1007ACC60);
  v144 = v226;
  v145 = v214;
  if (*(v135 + 16))
  {

    v146 = v246;
    v147 = v243;
    (v243)(v223, v246);
    sub_1000050A4(v221, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v222, &qword_10093AE38, &unk_100798450);
    (v147)(v195, v146);
LABEL_23:
    v148 = v225;
LABEL_26:
    v155 = v218;
    goto LABEL_27;
  }

  v170 = v201;
  v171 = v246;
  (v233)(v201, v223, v246);
  v172 = (*(v245 + 88))(v170, v171);
  v173 = v195;
  if (v172 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {

    v174 = v170;
    v175 = v243;
    (v243)(v174, v171);
    v176 = v198;
    p_attr = (&stru_100923FF8 + 8);
LABEL_46:
    sub_100345DB0();
    v188 = [objc_allocWithZone(NSFetchRequest) p_attr[424]];
    v189 = [swift_getObjCClassFromMetadata() entity];
    [v188 setEntity:v189];

    [v188 setAffectedStores:0];
    [v188 setPredicate:v143];
    [v188 setFetchLimit:1];
    [v188 setAffectedStores:0];
    NSManagedObjectContext.count<A>(for:)();
    v198 = v176;
    if (v176)
    {

      v190 = v246;
      (v175)(v223, v246);
      sub_1000050A4(v221, &qword_100938A70, &qword_1007ACC60);
      sub_1000050A4(v222, &qword_10093AE38, &unk_100798450);
      (v175)(v195, v190);
      (*(v219 + 8))(v228, v225);
      v186 = v230;
LABEL_41:
      sub_1000050A4(v186, &qword_100938A70, &qword_1007ACC60);
      return;
    }

    v191 = v175;
    v192 = v246;
    (v191)(v223, v246);
    sub_1000050A4(v221, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v222, &qword_10093AE38, &unk_100798450);
    (v191)(v195, v192);
    v148 = v225;
    v144 = v226;
    v155 = v218;
    v145 = v214;
LABEL_27:
    sub_100010364(v230, v145, &qword_100938A70, &qword_1007ACC60);
    v156 = v235;

    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    if (qword_100936190 != -1)
    {
      swift_once();
    }

    v157 = type metadata accessor for Logger();
    sub_100006654(v157, qword_100947730);
    v158 = v219;
    v159 = (v219 + 16);
    v160 = *(v219 + 16);
    v161 = v228;
    v160(v155, v228, v148);
    v247 = v160;
    v160(v144, v161, v148);

    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.default.getter();
    v164 = os_log_type_enabled(v162, v163);
    v248 = v159;
    if (v164)
    {
      LODWORD(v246) = v163;
      v165 = swift_slowAlloc();
      *v165 = 134218496;
      v166 = *(v156 + 16);

      *(v165 + 4) = v166;

      *(v165 + 12) = 2048;
      v167 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
      if ((v167 & 0xC000000000000001) != 0)
      {
        v168 = __CocoaSet.count.getter();
      }

      else
      {
        v168 = *(v167 + 16);
      }

      v178 = v219;

      v179 = *(v178 + 8);
      v179(v218, v225);
      *(v165 + 14) = v168;
      *(v165 + 22) = 2048;
      v180 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
      if ((v180 & 0xC000000000000001) != 0)
      {
        v181 = __CocoaSet.count.getter();
      }

      else
      {
        v181 = *(v180 + 16);
      }

      v148 = v225;
      v179(v226, v225);
      *(v165 + 24) = v181;
      _os_log_impl(&_mh_execute_header, v162, v246, "reminders %ld updated %ld inserted %ld", v165, 0x20u);

      v246 = v179;
    }

    else
    {
      v169 = *(v158 + 8);
      v169(v144, v148);
      v246 = v169;
      v169(v155, v148);

      swift_bridgeObjectRelease_n();
    }

    v182 = v206;
    v183 = v224;
    v184 = v207;
    (*(v206 + 16))(v205, v224, v207);
    v185 = v228;
    v247(v204, v228, v148);
    REMRemindersListDataView.ListInvocation.Result.init(model:diff:list:)();
    (*(v182 + 8))(v183, v184);
    v246(v185, v148);
    v186 = v230;
    goto LABEL_41;
  }

  v176 = v198;
  p_attr = &stru_100923FF8.attr;
  if (v172 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {

    v187 = v170;
    v175 = v243;
    (v243)(v187, v171);
    goto LABEL_46;
  }

  if (v172 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {

    v175 = v243;
    goto LABEL_46;
  }

  v193 = v222;
  if (v172 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {

    v194 = v243;
    (v243)(v223, v171);
    sub_1000050A4(v221, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v193, &qword_10093AE38, &unk_100798450);
    (v194)(v173, v171);
    goto LABEL_23;
  }

LABEL_53:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10044DCE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s10PredicatesOMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (REMRemindersListDataView.ListInvocation.Parameters.countCompleted.getter())
  {
    v9 = REMRemindersListDataView.ListInvocation.Parameters.list.getter();
    v10 = [v9 objectID];

    *v8 = v10;
    swift_storeEnumTagMultiPayload();
    v11 = sub_100043AA8();
    sub_1001A4F3C(v8, _s10PredicatesOMa);
    sub_10053464C(a1, v11);
    if (!v2)
    {
      v12 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
      (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    }
  }

  else
  {
    v13 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

unint64_t sub_10044DE9C(uint64_t a1)
{
  result = sub_10044DEC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10044DEC4()
{
  result = qword_100947768;
  if (!qword_100947768)
  {
    type metadata accessor for REMRemindersListDataView.ListInvocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947768);
  }

  return result;
}

uint64_t sub_10044DF1C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947770);
  v1 = sub_100006654(v0, qword_100947770);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10044DFE4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947788);
  v1 = sub_100006654(v0, qword_100947788);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10044E0AC(void *a1, void *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (qword_1009361A0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_100947788);
    v7 = a1;
    sub_100066F20(a2, 1);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    sub_100067078(a2, 1);
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v23[0] = swift_slowAlloc();
      *v9 = 136315394;
      v10 = v7;
      v11 = [v10 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_10000668C(v12, v14, v23);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2080;
      v23[3] = a2;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000668C(v16, v17, v23);

      *(v9 + 14) = v18;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Error fetching record zone %s {error: %s}", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v20 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }
}

void sub_10044E368(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1009361A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100947788);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_100138D4C(a1, 1);
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000668C(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Error fetching record zones {error: %s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    else
    {
    }
  }
}

void sub_10044E514(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v136 = a7;
  v14 = type metadata accessor for URL();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v124 - v19;
  __chkstk_darwin(v21);
  v25 = &v124 - v24;
  if (a3)
  {
    if (qword_1009361A0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_100947788);
    v27 = a1;
    sub_100066F20(a2, 1);
    v137 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    sub_100067078(a2, 1);
    if (os_log_type_enabled(v137, v28))
    {
      v29 = swift_slowAlloc();
      v140[0] = swift_slowAlloc();
      *v29 = 136446466;
      v30 = [v27 ic_prettyLoggingDescription];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_10000668C(v31, v33, v140);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      v139[0] = a2;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v35 = String.init<A>(describing:)();
      v37 = sub_10000668C(v35, v36, v140);

      *(v29 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v137, v28, "Failed in fetchChangesOp.recordWasChangedBlock {recordID: %{public}s, error: %s}", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v58 = v137;
    }

    return;
  }

  v131 = a6;
  v38 = v22;
  v132 = a8;
  v134 = v23;
  sub_100066F20(a2, 0);
  v137 = a2;
  v39 = [v137 CKDescriptionPropertiesWithPublic:1 private:1 shouldExpand:1];
  if (!v39)
  {
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = [v39 jsonify];

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (!v42)
  {

    if (qword_1009361A0 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100006654(v59, qword_100947788);
    v60 = a1;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v140[0] = v64;
      *v63 = 136446210;
      v65 = [v60 ic_prettyLoggingDescription];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = sub_10000668C(v66, v68, v140);

      *(v63 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to cast record.ckDesriptionProperties to NSMutableDictionary for {recordID:%{public}s}", v63, 0xCu);
      sub_10000607C(v64);

      sub_100067078(a2, 0);
      goto LABEL_23;
    }

    sub_100067078(a2, 0);

LABEL_27:
    sub_100067078(a2, 0);
    return;
  }

  v43 = v42;
  v133 = v41;
  sub_100451460(v137, a4);
  if (v44)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v43 addEntriesFromDictionary:isa];
  }

  v46 = objc_opt_self();
  v140[0] = 0;
  v47 = [v46 dataWithJSONObject:v43 options:1 error:v140];
  v48 = v140[0];
  if (!v47)
  {
    v70 = v48;
    v71 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_20;
  }

  v129 = v38;
  v135 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = v137;
  v52 = [v137 recordID];
  v53 = [v52 recordName];

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v140[0] = v54;
  v140[1] = v56;
  v139[0] = 47;
  v139[1] = 0xE100000000000000;
  v140[8] = 45;
  v140[9] = 0xE100000000000000;
  sub_10013BCF4();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.appendingPathComponent(_:)();
  v57 = v135;

  Data.write(to:options:)();
  v127 = v50;
  v83 = *(v134 + 8);
  v84 = v129;
  v134 += 8;
  v83(v25, v129);
  if (![v51 containsAssetValues])
  {
    sub_100067078(a2, 0);

    sub_10001BBA0(v57, v127);
    goto LABEL_27;
  }

  v71 = v51;
  v126 = v83;
  v86 = v131;
  swift_beginAccess();
  if (*(v86 + 16))
  {
    goto LABEL_32;
  }

  URL._bridgeToObjectiveC()(&var20);
  v88 = v87;
  v140[0] = 0;
  v89 = [v136 createDirectoryAtURL:v87 withIntermediateDirectories:1 attributes:0 error:v140];

  v90 = v140[0];
  v91 = v127;
  if (!v89)
  {
    v122 = v140[0];
    v71 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10001BBA0(v135, v91);
LABEL_20:
    v20 = v133;
    if (qword_1009361A0 != -1)
    {
      goto LABEL_53;
    }

    goto LABEL_21;
  }

  v92 = v131;
  swift_beginAccess();
  *(v92 + 16) = 1;
  v93 = v90;
  v57 = v135;
LABEL_32:
  v94 = [v71 valueStore];
  v95 = [v94 allKeys];

  v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v130 = *(v96 + 16);
  if (!v130)
  {
    sub_100067078(a2, 0);

    v121 = v57;
LABEL_49:
    sub_10001BBA0(v121, v127);
    sub_100067078(a2, 0);

    return;
  }

  v97 = 0;
  v131 = v96;
  v98 = (v96 + 40);
  v125 = a2;
  while (v97 < *(v131 + 16))
  {
    v101 = *(v98 - 1);
    v102 = *v98;

    v103 = [v71 valueStore];
    sub_1000060C8(0, &qword_1009477A8, CKRecordValueStore_ptr);
    CKRecordKeyValueSetting.subscript.getter();

    sub_100451BB0(v140, v139);
    if (!v139[3])
    {
      sub_1000050A4(v140, &qword_1009477B0, &qword_1007AA730);
      v99 = v139;
LABEL_35:
      sub_1000050A4(v99, &qword_1009477B0, &qword_1007AA730);
LABEL_36:
      v100 = v135;
      goto LABEL_37;
    }

    sub_1000F5104(&qword_1009477B8, &qword_1007AA738);
    sub_1000060C8(0, &qword_1009477C0, CKAsset_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v99 = v140;
      goto LABEL_35;
    }

    v104 = v138;
    v105 = [v138 fileURL];
    if (!v105)
    {
      sub_1000050A4(v140, &qword_1009477B0, &qword_1007AA730);

      goto LABEL_36;
    }

    v128 = v104;
    v106 = v105;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v107);
    v109 = v108;
    URL.lastPathComponent.getter();
    URL.appendingPathComponent(_:)();

    URL._bridgeToObjectiveC()(v110);
    v112 = v111;
    v113 = v20;
    v114 = v17;
    v115 = v17;
    v116 = v84;
    v117 = v84;
    v118 = v126;
    v126(v115, v116);
    v139[0] = 0;
    v119 = [v136 moveItemAtURL:v109 toURL:v112 error:v139];

    if (!v119)
    {
      v123 = v139[0];

      v71 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10001BBA0(v135, v127);

      v118(v113, v117);
      sub_1000050A4(v140, &qword_1009477B0, &qword_1007AA730);
      a2 = v125;
      goto LABEL_20;
    }

    v120 = v139[0];

    v118(v113, v117);
    sub_1000050A4(v140, &qword_1009477B0, &qword_1007AA730);
    v71 = v137;
    v100 = v135;
    v84 = v117;
    v17 = v114;
    v20 = v113;
    a2 = v125;
LABEL_37:
    ++v97;
    v98 += 2;
    if (v130 == v97)
    {
      sub_100067078(a2, 0);

      v121 = v100;
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_53:
  swift_once();
LABEL_21:
  v72 = type metadata accessor for Logger();
  sub_100006654(v72, qword_100947788);
  sub_100066F20(a2, 0);
  swift_errorRetain();
  v61 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  sub_100067078(a2, 0);

  if (os_log_type_enabled(v61, v73))
  {
    v74 = swift_slowAlloc();
    v140[0] = swift_slowAlloc();
    *v74 = 136315394;
    sub_100066F20(a2, 0);
    v75 = [v137 description];
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    sub_100067078(a2, 0);
    v79 = sub_10000668C(v76, v78, v140);

    *(v74 + 4) = v79;
    *(v74 + 12) = 2080;
    v139[0] = v71;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v80 = String.init<A>(describing:)();
    v82 = sub_10000668C(v80, v81, v140);

    *(v74 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v61, v73, "Failed to serialize record {record: %s, error: %s}", v74, 0x16u);
    swift_arrayDestroy();

    sub_100067078(a2, 0);

LABEL_23:

    goto LABEL_27;
  }

  sub_100067078(a2, 0);

  sub_100067078(a2, 0);
}