uint64_t RDUserNotificationCenter.userNotificationCenter(_:willPresent:withCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094BBD0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "userNotificationCenter willPresent", v7, 2u);
  }

  return a3(27);
}

uint64_t RDUserNotificationCenter.userNotificationCenter(_:didReceive:withCompletionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v147 = a3;
  v148 = a4;
  v5 = sub_1000F5104(&qword_10094BBF8, &qword_1007B0140);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v140 - v7;
  v9 = type metadata accessor for RDUserNotificationType();
  v146 = *(v9 - 8);
  v10 = *(v146 + 64);
  __chkstk_darwin(v9);
  v145 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v144 = &v140 - v13;
  v14 = sub_1000F5104(&unk_10094BC00, &unk_1007B0148);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v140 - v16;
  v18 = type metadata accessor for RDUserNotificationAction();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  *&v21 = __chkstk_darwin(v18).n128_u64[0];
  v23 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a2 actionIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  RDUserNotificationAction.init(rawValue:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000050A4(v17, &unk_10094BC00, &unk_1007B0148);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10094BBD0);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v149 = v32;
      *v31 = 136315138;
      v33 = sub_10000668C(v25, v27, &v149);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unknown notification action. {actionIdentifier: %s}", v31, 0xCu);
      sub_10000607C(v32);
    }

    else
    {
    }

    return v147(v48);
  }

  v34 = v19;
  v35 = *(v19 + 32);
  v142 = v23;
  v35(v23, v17, v18);
  v141 = a2;
  v36 = [a2 notification];
  v37 = [v36 request];

  v38 = [v37 content];
  v39 = v38;
  RDUserNotificationType.init(notificationContent:)();
  v40 = v146;
  if ((*(v146 + 48))(v8, 1, v9) == 1)
  {

    sub_1000050A4(v8, &qword_10094BBF8, &qword_1007B0140);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_10094BBD0);
    v42 = v39;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, "Unknown notification type from content. {content: %@}", v45, 0xCu);
      sub_1000050A4(v46, &unk_100938E70, &unk_100797230);
    }

    else
    {
      v47 = v43;
      v43 = v42;
    }

    v48 = (*(v34 + 8))(v142, v18);
    return v147(v48);
  }

  v49 = v9;
  v50 = v40;
  v51 = v144;
  (*(v40 + 32))(v144, v8, v49);
  v52 = *(v40 + 16);
  v53 = v145;
  v52(v145, v51, v49);
  v54 = (*(v50 + 88))(v53, v49);
  if (v54 == enum case for RDUserNotificationType.reminderAlarm(_:))
  {
    v55 = v143;

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100006654(v56, qword_10094BBD0);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Forwarding .reminderAlarm notification response to reminderAlarmDelegate", v59, 2u);
    }

    v60 = v55 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v61 = *(v60 + 8);
      ObjectType = swift_getObjectType();
      v63 = v55;
      v64 = v142;
      (*(v61 + 8))(v63, v141, v51, v142, v147, v148, ObjectType, v61);

      swift_unknownObjectRelease();
    }

    else
    {

      v64 = v142;
    }

    v92 = *(v50 + 8);
    v92(v51, v49);
    (*(v34 + 8))(v64, v18);
    return (v92)(v145, v49);
  }

  v66 = v34;
  if (v54 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:))
  {
    v67 = v143;

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100006654(v68, qword_10094BBD0);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v141;
    if (v71)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Forwarding .todayNotificationForSingleReminder notification response to todayNotificationDelegate", v73, 2u);
    }

    v74 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate;
LABEL_29:
    v75 = v67 + v74;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v76 = *(v75 + 8);
      v77 = swift_getObjectType();
      v78 = v67;
      v79 = v72;
      v80 = v144;
      v81 = v142;
      (*(v76 + 8))(v78, v79, v144, v142, v147, v148, v77, v76);

      swift_unknownObjectRelease();
    }

    else
    {

      v81 = v142;
      v80 = v144;
    }

    v92 = *(v50 + 8);
    v92(v80, v49);
    (*(v66 + 8))(v81, v18);
    return (v92)(v145, v49);
  }

  if (v54 == enum case for RDUserNotificationType.caldavSharedList(_:))
  {

    v82 = *(v50 + 8);
    v146 = v50 + 8;
    v83 = v82;
    v82(v145, v49);
    v84 = v142;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_100006654(v85, qword_10094BBD0);
    v86 = v141;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      *(v89 + 4) = v86;
      *v90 = v86;
      v91 = v86;
      _os_log_impl(&_mh_execute_header, v87, v88, "remindd didn't expect to receive actions from .caldavSharedList. {response: %@}", v89, 0xCu);
      sub_1000050A4(v90, &unk_100938E70, &unk_100797230);
      v66 = v34;

      v84 = v142;
    }

    v83(v144, v49);
LABEL_37:
    v48 = (*(v66 + 8))(v84, v18);
    return v147(v48);
  }

  if (v54 == enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    v93 = v143;

    v94 = *(v50 + 8);
    v94(v145, v49);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100006654(v95, qword_10094BBD0);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Forwarding .assignmentNotification response to assignmentNotificationDelegate", v98, 2u);
    }

    v99 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_assignmentNotificationDelegate;
LABEL_55:
    v104 = v93 + v99;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v105 = *(v104 + 8);
      v106 = swift_getObjectType();
      v107 = v93;
      v108 = v142;
      v109 = v144;
      (*(v105 + 8))(v107, v141, v144, v142, v147, v148, v106, v105);

      swift_unknownObjectRelease();
    }

    else
    {

      v108 = v142;
      v109 = v144;
    }

    v94(v109, v49);
    return (*(v34 + 8))(v108, v18);
  }

  if (v54 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
  {
    v93 = v143;

    v94 = *(v50 + 8);
    v94(v145, v49);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_100006654(v100, qword_10094BBD0);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "Forwarding .shareListUpdateNotification response to sharedListUpdateNotificationDelegate", v103, 2u);
    }

    v99 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_sharedListUpdateNotificationDelegate;
    goto LABEL_55;
  }

  if (v54 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
    v67 = v143;

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_100006654(v110, qword_10094BBD0);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.info.getter();
    v113 = os_log_type_enabled(v111, v112);
    v72 = v141;
    if (v113)
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Forwarding .dueDateDeltaAlarm notification response to reminderAlarmDelegate", v114, 2u);
    }

    v74 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate;
    goto LABEL_29;
  }

  if (v54 == enum case for RDUserNotificationType.todayNotification(_:))
  {
    v115 = v143;

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    sub_100006654(v116, qword_10094BBD0);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.info.getter();
    v119 = os_log_type_enabled(v117, v118);
    v120 = v141;
    if (v119)
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "Forwarding .todayNotification notification response to todayNotificationDelegate", v121, 2u);
    }

    v122 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate;
  }

  else
  {
    v84 = v142;
    if (v54 == enum case for RDUserNotificationType.todayNotificationBadge(_:))
    {

      if (qword_1009363D0 != -1)
      {
        swift_once();
      }

      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_10094BBD0);
      v124 = v141;
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *v127 = 138412290;
        *(v127 + 4) = v124;
        *v128 = v124;
        v129 = v124;
        _os_log_impl(&_mh_execute_header, v125, v126, "remindd didn't expect to receive actions from .todayNotificationBadge. {response: %@}", v127, 0xCu);
        sub_1000050A4(v128, &unk_100938E70, &unk_100797230);
        v66 = v34;

        v84 = v142;
      }

      (*(v50 + 8))(v144, v49);
      goto LABEL_37;
    }

    v120 = v141;
    if (v54 != enum case for RDUserNotificationType.beforeFirstUnlock(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v115 = v143;

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    sub_100006654(v130, qword_10094BBD0);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&_mh_execute_header, v131, v132, "Forwarding .beforeFirstUnlock notification response to beforeFirstUnlockReminderDelegate", v133, 2u);
    }

    v122 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_beforeFirstUnlockReminderDelegate;
  }

  v134 = v115 + v122;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v135 = *(v134 + 8);
    v136 = swift_getObjectType();
    v137 = v115;
    v138 = v144;
    v139 = v142;
    (*(v135 + 8))(v137, v120, v144, v142, v147, v148, v136, v135);

    swift_unknownObjectRelease();
  }

  else
  {

    v139 = v142;
    v138 = v144;
  }

  (*(v50 + 8))(v138, v49);
  return (*(v66 + 8))(v139, v18);
}

uint64_t sub_10052C578(uint64_t a1)
{
  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094BBD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "userNotificationCenter willPresent", v5, 2u);
  }

  v6 = *(a1 + 16);

  return v6(a1, 27);
}

uint64_t sub_10052C674(void *a1, char *a2, void (**a3)(void))
{
  v129 = a2;
  v5 = sub_1000F5104(&qword_10094BBF8, &qword_1007B0140);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v125 - v7;
  v9 = type metadata accessor for RDUserNotificationType();
  v131 = *(v9 - 8);
  v10 = *(v131 + 64);
  __chkstk_darwin(v9);
  v130 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v128 = &v125 - v13;
  v14 = sub_1000F5104(&unk_10094BC00, &unk_1007B0148);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v125 - v16;
  v18 = type metadata accessor for RDUserNotificationAction();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v132 = a3;
  v133 = v23;
  *(v23 + 16) = a3;
  _Block_copy(a3);
  v24 = [a1 actionIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  RDUserNotificationAction.init(rawValue:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000050A4(v17, &unk_10094BC00, &unk_1007B0148);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10094BBD0);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v134 = v32;
      *v31 = 136315138;
      v33 = sub_10000668C(v25, v27, &v134);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unknown notification action. {actionIdentifier: %s}", v31, 0xCu);
      sub_10000607C(v32);
    }

    else
    {
    }

    goto LABEL_23;
  }

  v127 = v19;
  (*(v19 + 32))(v22, v17, v18);
  v126 = a1;
  v34 = [a1 notification];
  v35 = [v34 request];

  v36 = [v35 content];
  v37 = v36;
  RDUserNotificationType.init(notificationContent:)();
  v38 = v131;
  v39 = v22;
  if ((*(v131 + 48))(v8, 1, v9) == 1)
  {

    sub_1000050A4(v8, &qword_10094BBF8, &qword_1007B0140);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_10094BBD0);
    v41 = v37;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&_mh_execute_header, v42, v43, "Unknown notification type from content. {content: %@}", v44, 0xCu);
      sub_1000050A4(v45, &unk_100938E70, &unk_100797230);

      v39 = v22;
    }

    else
    {
      v46 = v42;
      v42 = v41;
    }

LABEL_22:
    (*(v127 + 8))(v39, v18);
LABEL_23:
    v132[2]();
  }

  v47 = v9;
  v48 = v128;
  (*(v38 + 32))(v128, v8, v47);
  v49 = v130;
  (*(v38 + 16))(v130, v48, v47);
  v50 = (*(v38 + 88))(v49, v47);
  if (v50 == enum case for RDUserNotificationType.reminderAlarm(_:))
  {

    v51 = v129;
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_10094BBD0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v133;
    if (!v55)
    {
      goto LABEL_19;
    }

    v57 = v37;
    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "Forwarding .reminderAlarm notification response to reminderAlarmDelegate";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v53, v54, v59, v58, 2u);
    v37 = v57;
    v51 = v129;

LABEL_19:

    v60 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate;
LABEL_31:
    v68 = &v51[v60];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v69 = *(v68 + 1);
      ObjectType = swift_getObjectType();
      (*(v69 + 8))(v51, v126, v48, v39, sub_10052D99C, v56, ObjectType, v69);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v71 = *(v38 + 8);
    v71(v48, v47);
    (*(v127 + 8))(v39, v18);
    v71(v130, v47);
  }

  v62 = v126;
  v51 = v129;
  if (v50 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:))
  {

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100006654(v63, qword_10094BBD0);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    v66 = os_log_type_enabled(v64, v65);
    v56 = v133;
    if (v66)
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Forwarding .todayNotificationForSingleReminder notification response to todayNotificationDelegate", v67, 2u);
      v51 = v129;
    }

    v60 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate;
    goto LABEL_31;
  }

  if (v50 == enum case for RDUserNotificationType.caldavSharedList(_:))
  {
    v129 = v37;

    v72 = *(v38 + 8);
    v131 = v38 + 8;
    v72(v130, v47);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100006654(v73, qword_10094BBD0);
    v74 = v62;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = v39;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      *(v78 + 4) = v74;
      *v79 = v74;
      v80 = v74;
      _os_log_impl(&_mh_execute_header, v75, v76, "remindd didn't expect to receive actions from .caldavSharedList. {response: %@}", v78, 0xCu);
      sub_1000050A4(v79, &unk_100938E70, &unk_100797230);
      v48 = v128;

      v39 = v77;
    }

    v72(v48, v47);
    (*(v127 + 8))(v39, v18);
    goto LABEL_23;
  }

  if (v50 == enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    v132 = v39;

    v81 = *(v38 + 8);
    v81(v130, v47);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_100006654(v82, qword_10094BBD0);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    v85 = os_log_type_enabled(v83, v84);
    v86 = v133;
    if (v85)
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Forwarding .assignmentNotification response to assignmentNotificationDelegate", v87, 2u);
      v51 = v129;
    }

    v88 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_assignmentNotificationDelegate;
LABEL_53:
    v94 = &v51[v88];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v95 = *(v94 + 1);
      v96 = swift_getObjectType();
      v97 = v51;
      v98 = v37;
      v99 = v132;
      (*(v95 + 8))(v97, v126, v48, v132, sub_10052D99C, v86, v96, v95);

      swift_unknownObjectRelease();
    }

    else
    {

      v99 = v132;
    }

    v81(v48, v47);
    (*(v127 + 8))(v99, v18);
  }

  if (v50 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
  {
    v132 = v39;

    v81 = *(v38 + 8);
    v81(v130, v47);
    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_100006654(v89, qword_10094BBD0);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.info.getter();
    v92 = os_log_type_enabled(v90, v91);
    v86 = v133;
    if (v92)
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Forwarding .shareListUpdateNotification response to sharedListUpdateNotificationDelegate", v93, 2u);
      v51 = v129;
    }

    v88 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_sharedListUpdateNotificationDelegate;
    goto LABEL_53;
  }

  if (v50 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_100006654(v100, qword_10094BBD0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    v101 = os_log_type_enabled(v53, v54);
    v56 = v133;
    if (!v101)
    {
      goto LABEL_19;
    }

    v57 = v37;
    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "Forwarding .dueDateDeltaAlarm notification response to reminderAlarmDelegate";
    goto LABEL_18;
  }

  if (v50 == enum case for RDUserNotificationType.todayNotification(_:))
  {

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_100006654(v102, qword_10094BBD0);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.info.getter();
    v105 = os_log_type_enabled(v103, v104);
    v106 = v133;
    if (v105)
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v103, v104, "Forwarding .todayNotification notification response to todayNotificationDelegate", v107, 2u);
      v51 = v129;
    }

    v108 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate;
LABEL_80:
    v122 = &v51[v108];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v123 = *(v122 + 1);
      v124 = swift_getObjectType();
      (*(v123 + 8))(v51, v126, v48, v39, sub_10052D99C, v106, v124, v123);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v38 + 8))(v48, v47);
    (*(v127 + 8))(v39, v18);
  }

  if (v50 == enum case for RDUserNotificationType.todayNotificationBadge(_:))
  {
    v129 = v37;

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for Logger();
    sub_100006654(v109, qword_10094BBD0);
    v110 = v62;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = v39;
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      *(v114 + 4) = v110;
      *v115 = v110;
      v116 = v110;
      _os_log_impl(&_mh_execute_header, v111, v112, "remindd didn't expect to receive actions from .todayNotificationBadge. {response: %@}", v114, 0xCu);
      sub_1000050A4(v115, &unk_100938E70, &unk_100797230);
      v48 = v128;

      v39 = v113;
    }

    (*(v38 + 8))(v48, v47);
    goto LABEL_22;
  }

  if (v50 == enum case for RDUserNotificationType.beforeFirstUnlock(_:))
  {

    if (qword_1009363D0 != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    sub_100006654(v117, qword_10094BBD0);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.info.getter();
    v120 = os_log_type_enabled(v118, v119);
    v106 = v133;
    if (v120)
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "Forwarding .beforeFirstUnlock notification response to beforeFirstUnlockReminderDelegate", v121, 2u);
      v51 = v129;
    }

    v108 = OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_beforeFirstUnlockReminderDelegate;
    goto LABEL_80;
  }

  _Block_release(v132);
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void _s7remindd24RDUserNotificationCenterC04usercD0_15openSettingsForySo06UNUsercD0C_So14UNNotificationCSgtF_0()
{
  if (qword_1009363D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10094BBD0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "userNotificationCenter openSettingsForNotification, but we don't have any settings pane yet so bye ;)", v2, 2u);
  }
}

unint64_t sub_10052DB40()
{
  result = qword_10094BCD0;
  if (!qword_10094BCD0)
  {
    sub_1000060C8(255, &unk_100943A40, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BCD0);
  }

  return result;
}

uint64_t sub_10052DBC0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10052DC4C()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10052DE34()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BCE0);
  v1 = sub_100006654(v0, qword_10094BCE0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

size_t sub_10052DEFC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  v5 = type metadata accessor for REMSmartListSection.PredefinedSectionType.Today();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v67 - v10;
  __chkstk_darwin(v11);
  v13 = &v67 - v12;
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  v17 = static REMSmartListSection.PredefinedSectionType.Today.allCases.getter();
  v18 = *(v17 + 16);
  v76 = v6;
  if (v18)
  {
    v68 = a1;
    v69 = v2;
    v77 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v20 = *(v6 + 16);
    v19 = v6 + 16;
    v21 = *(v19 + 64);
    v67 = v17;
    v22 = v17 + ((v21 + 32) & ~v21);
    v73 = *(v19 + 56);
    v74 = v20;
    v75 = v19;
    v23 = (v19 - 8);
    do
    {
      v24 = v74;
      v74(v16, v22, v5);
      REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
      v24(v13, v16, v5);
      v25 = sub_1000F5104(&qword_10094BD20, &unk_1007B0210);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
      (*v23)(v16, v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v28 = v5;
      v29 = v77[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v5 = v28;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 += v73;
      --v18;
    }

    while (v18);

    v30 = v77;
    a1 = v68;
    v3 = v69;
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
  }

  v31 = REMSmartListTypeToday;
  v32 = v72;
  if (qword_1009367E0 != -1)
  {
    v66 = REMSmartListTypeToday;
    swift_once();
    v31 = v66;
  }

  v33 = sub_100717244(v31, 0, a1, qword_1009752F0);
  if (!v3)
  {
    v34 = v33;
    v35 = [v34 sectionIDsOrderingAsData];
    if (!v35)
    {
      v74 = 0;

      goto LABEL_17;
    }

    v36 = v35;
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    sub_10052E704();
    static REMJSONRepresentable.fromJSONData(_:)();
    sub_10001BBA0(v37, v39);
    v40 = v77;
    sub_1000F5104(&qword_10094BD20, &unk_1007B0210);
    v65 = REMOrderedIdentifierMap.reorder<A>(objects:)();
    v74 = 0;

    v30 = v65;
    v32 = v72;
    if (v65 >> 62)
    {
      goto LABEL_27;
    }

LABEL_18:
    v50 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_19;
    }

LABEL_33:

    return REMRemindersListDataView.TodaySectionOrderingModel.init(sectionOrdering:)();
  }

  v74 = 0;
  if (qword_1009363D8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100006654(v41, qword_10094BCE0);
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v34, v42))
  {

    if (v30 >> 62)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v43 = swift_slowAlloc();
  v44 = v5;
  v45 = swift_slowAlloc();
  v77 = v45;
  *v43 = 136446210;
  swift_getErrorValue();
  v46 = Error.rem_errorDescription.getter();
  v48 = v30;
  v49 = sub_10000668C(v46, v47, &v77);

  *(v43 + 4) = v49;
  v30 = v48;
  _os_log_impl(&_mh_execute_header, v34, v42, "TodaySectionOrderingInvocation: error upon retrieving ordering, use default ordering {error: %{public}s}", v43, 0xCu);
  sub_10000607C(v45);
  v5 = v44;

  v32 = v72;

LABEL_17:

  if (!(v30 >> 62))
  {
    goto LABEL_18;
  }

LABEL_27:
  v50 = _CocoaArrayWrapper.endIndex.getter();
  if (!v50)
  {
    goto LABEL_33;
  }

LABEL_19:
  v77 = _swiftEmptyArrayStorage;
  result = sub_1002535D8(0, v50 & ~(v50 >> 63), 0);
  if ((v50 & 0x8000000000000000) == 0)
  {
    v52 = v77;
    v53 = v30;
    if ((v30 & 0xC000000000000001) != 0)
    {
      v54 = 0;
      v75 = v76 + 32;
      v55 = v70;
      do
      {
        v56 = v53;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        REMOrderedIdentifierMap.IdentifiableContainer.nonIdentifiable.getter();
        swift_unknownObjectRelease();
        v77 = v52;
        v58 = v52[2];
        v57 = v52[3];
        if (v58 >= v57 >> 1)
        {
          sub_1002535D8(v57 > 1, v58 + 1, 1);
          v52 = v77;
        }

        ++v54;
        v52[2] = v58 + 1;
        (*(v76 + 32))(v52 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v58, v55, v5);
        v53 = v56;
      }

      while (v50 != v54);
    }

    else
    {
      v59 = v30;
      v75 = v76 + 32;
      v60 = 32;
      do
      {
        v61 = *(v59 + v60);

        REMOrderedIdentifierMap.IdentifiableContainer.nonIdentifiable.getter();

        v77 = v52;
        v62 = v32;
        v64 = v52[2];
        v63 = v52[3];
        if (v64 >= v63 >> 1)
        {
          sub_1002535D8(v63 > 1, v64 + 1, 1);
          v52 = v77;
        }

        v52[2] = v64 + 1;
        (*(v76 + 32))(v52 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v64, v62, v5);
        v60 += 8;
        --v50;
        v32 = v62;
      }

      while (v50);
    }

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

unint64_t sub_10052E684(uint64_t a1)
{
  result = sub_10052E6AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10052E6AC()
{
  result = qword_10094BD18;
  if (!qword_10094BD18)
  {
    type metadata accessor for REMRemindersListDataView.TodaySectionOrderingInvocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BD18);
  }

  return result;
}

unint64_t sub_10052E704()
{
  result = qword_10093C660;
  if (!qword_10093C660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093C660);
  }

  return result;
}

uint64_t sub_10052E750(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = (result + 64); ; i += 5)
  {
    if (!*a2)
    {
      goto LABEL_6;
    }

    v8 = *(i - 4);
    v9 = *(i - 3);
    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    swift_bridgeObjectRetain_n();

    v13 = [a3 hashtagContext];
    if (v13)
    {
      break;
    }

    v33 = *a2;
    v34 = sub_100005F4C(v11, v12);
    LOBYTE(v33) = v35;

    if (v33)
    {
      v36 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *a2;
      v50 = *a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100373664();
        v38 = v50;
      }

      v6 = *(*(v38 + 48) + 16 * v34 + 8);

      v7 = *(*(v38 + 56) + 16 * v34 + 8);

      sub_1003328B8(v34, v38);
      *a2 = v38;
    }

LABEL_5:

LABEL_6:
    if (!--v3)
    {
      return result;
    }
  }

  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 addHashtagWithType:v8 name:v15];

  v17 = [v16 objectIdentifier];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v18;

  v19 = *a2;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = a2;
  v22 = v20;
  v23 = v21;
  v24 = *v21;
  v49 = *v21;
  v26 = sub_100005F4C(v11, v12);
  v27 = *(v24 + 16);
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (!__OFADD__(v27, v28))
  {
    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v22 & 1) == 0)
      {
        sub_100373664();
      }
    }

    else
    {
      sub_10036A8F0(v29, v22);
      v31 = sub_100005F4C(v11, v12);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_26;
      }

      v26 = v31;
    }

    a2 = v23;
    if (v30)
    {
      v39 = (v49[7] + 16 * v26);
      v40 = v39[1];
      *v39 = v47;
      v39[1] = v48;
    }

    else
    {
      v49[(v26 >> 6) + 8] |= 1 << v26;
      v41 = (v49[6] + 16 * v26);
      *v41 = v11;
      v41[1] = v12;
      v42 = (v49[7] + 16 * v26);
      *v42 = v47;
      v42[1] = v48;
      v43 = v49[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_25;
      }

      v49[2] = v45;
    }

    *v23 = v49;

    goto LABEL_5;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10052EA40(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v191 = &v177 - v8;
  v9 = type metadata accessor for TimeZone();
  v194 = *(v9 - 8);
  v10 = *(v194 + 64);
  __chkstk_darwin(v9);
  v198 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for Date();
  v199 = *(v196 - 8);
  v12 = *(v199 + 64);
  __chkstk_darwin(v196);
  v190 = &v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v195 = &v177 - v15;
  v201 = type metadata accessor for DateComponents();
  v202 = *(v201 - 8);
  v16 = *(v202 + 64);
  __chkstk_darwin(v201);
  v187 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v189 = &v177 - v19;
  __chkstk_darwin(v20);
  v186 = &v177 - v21;
  __chkstk_darwin(v22);
  v197 = &v177 - v23;
  __chkstk_darwin(v24);
  v185 = &v177 - v25;
  __chkstk_darwin(v26);
  v188 = &v177 - v27;
  v28 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v192 = (&v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v193 = &v177 - v32;
  __chkstk_darwin(v33);
  v200 = &v177 - v34;
  __chkstk_darwin(v35);
  v37 = &v177 - v36;
  __chkstk_darwin(v38);
  v40 = &v177 - v39;
  v206 = 0;
  v204 = type metadata accessor for RDSavedReminder();
  v41 = *&a1[*(v204 + 36)];
  if (v41)
  {
    v206 = sub_10038E004(_swiftEmptyArrayStorage);
    v42 = a2;
    sub_10052E750(v41, &v206, v42);

    if (v2)
    {
    }

    v184 = v37;
    v183 = v9;
    v3 = 0;
  }

  else
  {
    v184 = v37;
    v183 = v9;
  }

  v43 = [a2 storage];
  v44 = [v43 titleReplicaIDSource];

  v45 = &a1[*(v204 + 60)];
  v46 = a1;
  v47 = *v45;
  v48 = v45[1];
  v49 = objc_allocWithZone(REMCRMergeableStringDocument);
  sub_100029344(v47, v48);
  v50 = v3;
  v51 = sub_1002F937C(v44);
  sub_10001BBA0(v47, v48);

  if (!v50)
  {
    v182 = v46;
    v203 = a2;
    v52 = v206;
    if (v206)
    {
      v53 = v51;
      v51 = REMCRMergeableStringDocument.replacingInlineHashtagIDs(newHashtagID_byOriginalHashtagID:)();
    }

    v54 = v182;
    v55 = v204;
    v181 = v51;
    v56 = [v51 attributedString];
    v57 = v203;
    [v203 setTitle:v56];

    v58 = &v54[v55[10]];
    v59 = *(v58 + 1);
    if (v59 >> 60 == 15)
    {
      v179 = v52;
      v60 = v57;
      v61 = v184;
    }

    else
    {
      v62 = *v58;
      sub_100029344(*v58, *(v58 + 1));
      v63 = [v57 storage];
      v64 = [v63 notesReplicaIDSource];

      v65 = objc_allocWithZone(REMCRMergeableStringDocument);
      sub_100029344(v62, v59);
      v66 = sub_1002F937C(v64);
      sub_100031A14(v62, v59);

      v179 = v52;
      if (v52)
      {
        v67 = REMCRMergeableStringDocument.replacingInlineHashtagIDs(newHashtagID_byOriginalHashtagID:)();

        v66 = v67;
      }

      v60 = v203;
      v61 = v184;
      v68 = [v66 attributedString];
      [v60 setNotes:v68];
      sub_100031A14(v62, v59);

      v54 = v182;
    }

    [v60 setPriority:*&v54[v55[11]]];
    [v60 setFlagged:*&v54[v55[8]]];
    sub_10053004C(&v54[v55[13]], v40);
    v69 = v202;
    v70 = *(v202 + 48);
    v71 = v201;
    v180 = v202 + 48;
    v184 = v70;
    if ((v70)(v40, 1, v201) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      (*(v69 + 8))(v40, v71);
    }

    [v60 setStartDateComponents:isa];

    v73 = v55[7];
    sub_10053004C(&v54[v73], v61);
    if ((v184)(v61, 1, v71) == 1)
    {
      v74 = 0;
    }

    else
    {
      v74 = DateComponents._bridgeToObjectiveC()().super.isa;
      (*(v202 + 8))(v61, v71);
    }

    [v60 setDueDateComponents:v74];

    v75 = &v54[v55[5]];
    if (*v75)
    {
      sub_1000FDB20(*v75, v75[1], v75[2], v75[3]);
    }

    v77 = &v54[v73];
    v78 = v200;
    sub_10053004C(v77, v200);
    if ((v184)(v78, 1, v71) == 1)
    {
      v79 = 0;
    }

    else
    {
      v79 = DateComponents._bridgeToObjectiveC()().super.isa;
      (*(v202 + 8))(v78, v71);
    }

    [v60 setDueDateComponents:v79];

    v81 = *&v54[v55[6]];
    if (v81)
    {
      v82 = [v60 dueDateDeltaAlertContext];
      if (v82)
      {
        v71 = v82;
        sub_1001ADDE4(v81);
      }
    }

    v83 = *&v54[v55[12]];
    if (v83)
    {
      v200 = 0;
      v84 = *(v83 + 16);
      if (v84)
      {
        v85 = 0;
        v60 = (v83 + 32);
        do
        {
          if (v85 >= *(v83 + 16))
          {
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          v86 = v60[1];
          v207[0] = *v60;
          v207[1] = v86;
          v87 = v60[2];
          v88 = v60[3];
          v89 = v60[4];
          v208 = *(v60 + 10);
          v207[3] = v88;
          v207[4] = v89;
          v207[2] = v87;
          ++v85;
          sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
          v90 = objc_opt_self();
          sub_1004B12D8(v207, v205);
          sub_1004B12D8(v207, v205);
          v54 = [v90 newObjectID];
          v71 = v203;
          v55 = [v203 accountID];
          v91 = sub_10031174C(v207, v54, v55, [v71 objectID]);
          [v71 addRecurrenceRule:v91];

          sub_100311E40(v207);
          v60 = (v60 + 88);
        }

        while (v84 != v85);
        v60 = v203;
        v92 = [v203 isOverdue];
        v84 = v200;
        if (!v92)
        {
          v54 = v182;
          goto LABEL_51;
        }

        v93 = [v60 dueDateComponents];
        v54 = v182;
        if (v93)
        {
          v94 = v188;
          v95 = v93;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v96.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
          (*(v202 + 8))(v94, v201);
        }

        else
        {
          v96.super.isa = 0;
        }

        v55 = v183;
        v97 = v194;
        v98 = v193;
        v99 = v195;
        static Date.now.getter();
        v100 = Date._bridgeToObjectiveC()().super.isa;
        v178 = *(v199 + 8);
        v199 += 8;
        v178(v99, v196);
        [v60 nextRecurrentAdvanceAmountForDateComponents:v96.super.isa afterDate:v100];
        v102 = v101;

        v71 = v201;
        v103 = v192;
        if (v102 > 0.0)
        {
          v104 = [v60 dueDateComponents];
          if (v104)
          {
            v105 = v185;
            v106 = v104;
            static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v107 = DateComponents._bridgeToObjectiveC()().super.isa;
            v108 = [(objc_class *)v107 rem_dateComponentsByAddingTimeInterval:v102];

            v109 = v197;
            static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v71 = v201;
            v110 = DateComponents._bridgeToObjectiveC()().super.isa;
            v111 = *(v202 + 8);
            v111(v109, v71);
            [v203 setDueDateComponents:v110];

            v98 = v193;
            v112 = v105;
            v97 = v194;
            v111(v112, v71);
            v103 = v192;
            v60 = v203;
          }

          v113 = [v60 startDateComponents];
          if (v113)
          {
            v114 = v186;
            v115 = v113;
            static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v116 = DateComponents._bridgeToObjectiveC()().super.isa;
            v117 = [(objc_class *)v116 rem_dateComponentsByAddingTimeInterval:v102];

            v118 = v197;
            static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v71 = v201;
            v119 = DateComponents._bridgeToObjectiveC()().super.isa;
            v120 = *(v202 + 8);
            v121 = v118;
            v98 = v193;
            v120(v121, v71);
            [v203 setStartDateComponents:v119];

            v122 = v114;
            v97 = v194;
            v120(v122, v71);
            v103 = v192;
            v60 = v203;
          }
        }

        v123 = [v60 dueDateComponents];
        if (v123)
        {
          v124 = v123;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v125 = 0;
        }

        else
        {
          v125 = 1;
        }

        v126 = v191;
        (*(v202 + 56))(v103, v125, 1, v71);
        sub_1005300BC(v103, v98);
        if ((v184)(v98, 1, v71))
        {
          sub_1000050A4(v98, &qword_10093B790, &qword_100798D88);
          (*(v97 + 56))(v126, 1, 1, v55);
          goto LABEL_50;
        }

        DateComponents.timeZone.getter();
        v126 = v191;
        sub_1000050A4(v98, &qword_10093B790, &qword_100798D88);
        if ((*(v97 + 48))(v126, 1, v55) == 1)
        {
LABEL_50:
          sub_1000050A4(v126, &qword_10093F970, &unk_1007A7670);
          goto LABEL_51;
        }

        v132 = v198;
        (*(v97 + 32))(v198, v126, v55);
        v133 = [v60 alarms];
        if (v133)
        {
          v134 = v133;
          sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
          v135 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v80 = v135;
          if (!(v135 >> 62))
          {
            v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_59;
          }

LABEL_82:
          v175 = v80;
          v176 = _CocoaArrayWrapper.endIndex.getter();
          v80 = v175;
          v136 = v176;
LABEL_59:
          if (v136)
          {
            v137 = 0;
            v191 = (v80 & 0xC000000000000001);
            v180 = v80 & 0xFFFFFFFFFFFFFF8;
            v192 = (v202 + 8);
            v183 = v55;
            v188 = v80;
            v184 = v136;
            while (1)
            {
              if (v191)
              {
                v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v137 >= *(v180 + 16))
                {
                  goto LABEL_81;
                }

                v139 = *(v80 + 8 * v137 + 32);
              }

              v200 = v84;
              v55 = (v137 + 1);
              if (__OFADD__(v137, 1))
              {
                goto LABEL_80;
              }

              v140 = v71;
              v141 = v139;
              v142 = [v139 trigger];
              objc_opt_self();
              v143 = swift_dynamicCastObjCClass();
              if (!v143)
              {
                break;
              }

              v193 = v142;
              v203 = v141;
              v202 = v137 + 1;
              v144 = v143;
              v145 = v140;
              v146 = objc_opt_self();
              v186 = v144;
              v147 = [v144 dateComponents];
              v148 = v197;
              static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

              v149 = DateComponents._bridgeToObjectiveC()().super.isa;
              v150 = *v192;
              (*v192)(v148, v145);
              v151 = TimeZone._bridgeToObjectiveC()().super.isa;
              v152 = [v146 rem_dateWithDateComponents:v149 timeZone:v151];

              if (!v152)
              {

                v84 = v200;
                v54 = v182;
                v71 = v201;
                v136 = v184;
                v55 = v202;
                goto LABEL_62;
              }

              v185 = v150;
              v153 = v190;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v154 = Date._bridgeToObjectiveC()().super.isa;
              v155 = TimeZone._bridgeToObjectiveC()().super.isa;
              v156 = [v146 rem_dateComponentsWithDate:v154 timeZone:v155 isAllDay:0];

              v157 = v189;
              static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

              v158 = DateComponents._bridgeToObjectiveC()().super.isa;
              v159 = v195;
              static Date.now.getter();
              v160 = Date._bridgeToObjectiveC()().super.isa;
              v161 = v159;
              v162 = v196;
              v163 = v178;
              v178(v161, v196);
              [v60 nextRecurrentAdvanceAmountForDateComponents:v158 afterDate:v160];
              v165 = v164;

              v84 = v200;
              if (v165 <= 0.0)
              {

                v71 = v201;
                (v185)(v157, v201);
                v163(v153, v162);
                v54 = v182;
              }

              else
              {
                v166 = v203;
                [v60 removeAlarm:v203];
                result = [v186 dateComponents];
                v54 = v182;
                if (!result)
                {
                  __break(1u);
                  return result;
                }

                v167 = result;
                v168 = [result rem_dateComponentsByAddingTimeInterval:v165];

                v169 = v187;
                static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

                v170 = objc_allocWithZone(REMAlarmDateTrigger);
                v171 = DateComponents._bridgeToObjectiveC()().super.isa;
                v172 = [v170 initWithDateComponents:v171];

                v173 = [v60 addAlarmWithTrigger:v172];
                v71 = v201;
                v174 = v185;
                (v185)(v169, v201);
                v174(v189, v71);
                v178(v190, v162);
              }

              v80 = v188;
              v136 = v184;
              v55 = v202;
LABEL_63:
              ++v137;
              v138 = v55 == v136;
              v55 = v183;
              if (v138)
              {
                goto LABEL_77;
              }
            }

            v84 = v200;
            v71 = v140;
LABEL_62:
            v80 = v188;
            goto LABEL_63;
          }

LABEL_77:

          (*(v194 + 8))(v198, v55);
        }

        else
        {
          (*(v97 + 8))(v132, v55);
        }

LABEL_51:
        v55 = v204;
      }
    }

    v127 = &v54[v55[16]];
    v128 = *(v127 + 1);
    if (v128 >> 60 == 15)
    {
      v129 = v181;
    }

    else
    {
      v130 = *v127;
      sub_100029344(*v127, *(v127 + 1));
      sub_100029344(v130, v128);
      v131 = Data._bridgeToObjectiveC()().super.isa;
      v129 = [objc_opt_self() representationFromData:v131];

      sub_100031A14(v130, v128);
      [v60 setContactHandles:v129];
      sub_100031A14(v130, v128);
    }
  }
}

uint64_t sub_10053004C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005300BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10053012C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 personID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100530194(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setPersonID:?];
}

void *sub_100530204(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1003689CC(*(a1 + 16), 0);
  v4 = sub_1002791DC(&v6, v3 + 4, v2, a1);
  sub_10001B860();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_100530318(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_1005303BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1003689CC(*(a1 + 16), 0);
  v4 = sub_10027DC5C(&v6, v3 + 4, v2, a1);
  sub_10001B860();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10053044C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = [a1 identifier];
  if (v16)
  {
    v37 = v10;
    v17 = v16;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = v6;
    v40 = v15;
    v18 = *(v6 + 32);
    v41 = v5;
    v35 = v18;
    v36 = v6 + 32;
    v18(v15, v13, v5);
    v19 = [a1 accountTypeHost];
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a2;
    v20[4] = a1;
    v20[5] = v2;
    *(swift_allocObject() + 16) = a1;
    *(swift_allocObject() + 16) = a1;
    *(swift_allocObject() + 16) = v2;
    v21 = swift_allocObject();
    v38 = v2;
    *(v21 + 16) = v2;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_100531010;
    *(v22 + 24) = v20;
    v23 = a1;
    v24 = v19;
    v42 = a2;

    REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

    v25 = v43;
    v26 = v44;
    v27 = v37;
    v28 = v41;
    v29 = v35;
    v35(v37, v40, v41);
    v30 = *(v38 + 48);
    v31 = *(v38 + 52);
    v32 = swift_allocObject();
    *(v32 + 16) = v25;
    *(v32 + 24) = v26;
    v29(v32 + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_localUUID, v27, v28);
    result = v32;
    *(v32 + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_accountTypeHost) = v24;
    *(v32 + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_persistenceHost) = v42;
  }

  else
  {

    return 0;
  }

  return result;
}

id sub_100530880@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

void sub_1005308C8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 personIDSalt_v1];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100530930(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  [v2 setPersonIDSalt_v1:?];
}

void *sub_1005309A8()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A81F0;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  result = sub_100530318(v0, sub_100018D7C, sub_10027A80C);
  qword_100974F38 = result;
  return result;
}

uint64_t sub_100530A6C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_100974F40 = result;
  *algn_100974F48 = v1;
  return result;
}

uint64_t sub_100530A9C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100003C4C();
  v5 = *(a2 + 32);
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_1009363E8 != -1)
    {
      swift_once();
    }

    v6 = qword_100974F40;
  }

  else
  {
    v7 = [a3 personID];
    if (v7)
    {
      v8 = v7;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100530B78(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 personID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_100530BEC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100530C20()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC7remindd21RDAccountManualSortID_localUUID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *&v0[OBJC_IVAR____TtC7remindd21RDAccountManualSortID_persistenceHost];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDAccountManualSortID()
{
  result = qword_10094BD50;
  if (!qword_10094BD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100530D38()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100530DFC()
{
  v1 = v0;
  _StringGuts.grow(_:)(90);
  v2._object = 0x80000001007FC100;
  v2._countAndFlagsBits = 0xD000000000000028;
  String.append(_:)(v2);
  v20 = *(v0 + 16);
  sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  v3._countAndFlagsBits = Optional.descriptionOrNil.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x556C61636F6C202CLL;
  v4._object = 0xED0000203A444955;
  String.append(_:)(v4);
  v5._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6E756F636361202CLL;
  v6._object = 0xEF203A6570795474;
  String.append(_:)(v6);
  v7 = [*(v0 + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_accountTypeHost) description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x795474736F68202CLL;
  v12._object = 0xEC000000203A6570;
  String.append(_:)(v12);
  v13 = [*(*(v1 + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_persistenceHost) + 32) description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 15997;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  return 0;
}

double sub_100531038@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x6C61636F6CLL;
  *a1 = xmmword_1007B0220;
  return result;
}

uint64_t sub_100531048@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_10053107C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3)
  {
    if (v4)
    {
      v5 = *(a1 + 16) == *(a2 + 16) && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:

  return static UUID.== infix(_:_:)();
}

void sub_100531140(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v350 = a4;
  v340 = a3;
  v336 = a1;
  swift_getObjectType();
  v339 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
  v8 = *(*(v339 - 8) + 64);
  __chkstk_darwin(v339);
  v338 = &v311 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v341 = &v311 - v11;
  v12 = type metadata accessor for RDSavedReminder();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v352 = &v311 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v346 = &v311 - v16;
  __chkstk_darwin(v17);
  v345 = &v311 - v18;
  __chkstk_darwin(v19);
  v343 = &v311 - v20;
  v21 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v22 = *(v21 - 8);
  v372 = v21;
  v373 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v351 = &v311 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v357 = &v311 - v26;
  __chkstk_darwin(v27);
  v368 = &v311 - v28;
  v376 = type metadata accessor for UUID();
  v367 = *(v376 - 8);
  v29 = *(v367 + 64);
  __chkstk_darwin(v376);
  v366 = &v311 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v369 = (&v311 - v32);
  __chkstk_darwin(v33);
  v365 = &v311 - v34;
  __chkstk_darwin(v35);
  v361 = &v311 - v36;
  __chkstk_darwin(v37);
  v348 = &v311 - v38;
  __chkstk_darwin(v39);
  v349 = &v311 - v40;
  __chkstk_darwin(v41);
  v342 = &v311 - v42;
  __chkstk_darwin(v43);
  v374 = &v311 - v44;
  __chkstk_darwin(v45);
  v375 = (&v311 - v46);
  __chkstk_darwin(v47);
  v344 = &v311 - v48;
  __chkstk_darwin(v49);
  v370 = &v311 - v50;
  v354 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v337 = *(v354 - 8);
  v51 = v337[8];
  __chkstk_darwin(v354);
  v355 = &v311 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v353 = &v311 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v363 = (&v311 - v57);
  v360 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v356 = *(v360 - 1);
  v58 = v356[8];
  __chkstk_darwin(v360);
  v364 = &v311 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8);
  v63 = &v311 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _s9UtilitiesO12SortingStyleOMa();
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v67 = &v311 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  isUniquelyReferenced_nonNull_native = &v311 - v69;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v362 = *(Subtasks - 8);
  v71 = v362[8];
  *&v72 = __chkstk_darwin(Subtasks).n128_u64[0];
  v74 = &v311 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v371 = [v5 storeControllerManagedObjectContext];
  if (!v371)
  {
    v91 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v93 = String._bridgeToObjectiveC()();
    [v91 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v93];

    swift_willThrow();
    return;
  }

  v347 = [v5 remObjectID];
  if (!v347)
  {
    v94 = objc_opt_self();
    v95 = swift_getObjCClassFromMetadata();
    v96 = String._bridgeToObjectiveC()();
    [v94 unexpectedNilPropertyWithClass:v95 property:v96];

    swift_willThrow();
    return;
  }

  v328 = a2;
  v75 = [v5 name];
  if (!v75)
  {
    v97 = objc_opt_self();
    v98 = swift_getObjCClassFromMetadata();
    v99 = String._bridgeToObjectiveC()();
    [v97 unexpectedNilPropertyWithClass:v98 property:v99];

    swift_willThrow();
    return;
  }

  v76 = v75;
  v324 = a5;
  v325 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v332 = v77;

  v326 = v5;
  v78 = [v5 sortingStyle];
  if (!v78 || (v79 = v78, static String._unconditionallyBridgeFromObjectiveC(_:)(), v79, (v80 = REMSortingStyle.init(stringValue:)()) == 0))
  {
    v80 = REMSortingStyleDefault;
  }

  v81 = Subtasks;
  v378 = _swiftEmptyDictionarySingleton;
  v82 = v80;
  v335 = sub_100390238(_swiftEmptyArrayStorage);
  v83 = sub_10038EEC4(_swiftEmptyArrayStorage);
  v334 = objc_autoreleasePoolPush();
  (v362[13])(v74, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v81);
  REMSortingStyle.dataViewSortingStyle.getter();
  v84 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v85 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v85 - 8) + 104))(v67, v84, v85);
  swift_storeEnumTagMultiPayload();
  sub_1005368D8(v63, v67, isUniquelyReferenced_nonNull_native);
  v86 = v347;
  v87 = v358;
  v88 = sub_100268564(v347, v371, v74, isUniquelyReferenced_nonNull_native);
  v89 = v87;
  if (!v87)
  {
    v358 = v88;
    v314 = v82;
    v100 = qword_1009360E0;
    v313 = v86;
    if (v100 != -1)
    {
      goto LABEL_164;
    }

    while (1)
    {
      v331 = qword_100974E58;
      v330 = type metadata accessor for REMCDTemplateSection();
      v101 = sub_1004263A0();
      sub_1004267FC();
      v102 = sub_100425A50(v86, 1);
      v103 = [objc_allocWithZone(NSFetchRequest) init];
      v104 = [swift_getObjCClassFromMetadata() entity];
      [v103 setEntity:v104];

      [v103 setAffectedStores:0];
      [v103 setPredicate:v102];

      v333 = v101;
      sub_10003450C(v101);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v103 setPropertiesToFetch:isa];

      v106 = Array._bridgeToObjectiveC()().super.isa;
      [v103 setRelationshipKeyPathsForPrefetching:v106];

      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v107 = Array._bridgeToObjectiveC()().super.isa;
      [v103 setSortDescriptors:v107];

      v108 = v89;
      v109 = NSManagedObjectContext.fetch<A>(_:)();
      v89 = v376;
      if (v108)
      {
        v90 = v314;

        v81 = Subtasks;
        v86 = v347;
        goto LABEL_16;
      }

      v110 = v109;

      v111 = sub_100270BA0(v110);

      v112 = sub_1001BD57C(v111, v358);
      v327 = 0;
      v114 = v112;

      sub_1004909AC(isUniquelyReferenced_nonNull_native, _s9UtilitiesO12SortingStyleOMa);
      (v362[1])(v74, Subtasks);
      objc_autoreleasePoolPop(v334);
      v322 = v114;
      v321 = *(v114 + 2);
      if (!v321)
      {
        v86 = _swiftEmptyArrayStorage;
        v116 = _swiftEmptyArrayStorage;
        v147 = v372;
        isUniquelyReferenced_nonNull_native = v357;
LABEL_81:
        v337 = v116;

        v186 = v337;
        v187 = v337[2];
        v323 = v86;
        if (!v187)
        {

          v250 = _swiftEmptyDictionarySingleton;
          v251 = _swiftEmptyArrayStorage;
          v74 = _swiftEmptyDictionarySingleton;
LABEL_117:
          v252 = v378;

          v356 = v251;

          v362 = v250;

          v354 = v252;

          v253 = sub_10038EEC4(_swiftEmptyArrayStorage);
          v254 = (v74 + 64);
          v255 = 1 << *(v74 + 32);
          v256 = -1;
          if (v255 < 64)
          {
            v256 = ~(-1 << v255);
          }

          v86 = (v256 & *(v74 + 64));
          v257 = (v255 + 63) >> 6;
          v374 = (v367 + 16);
          v375 = v253;
          v364 = (v367 + 32);
          v370 = (v367 + 8);
          v360 = (v367 + 40);
          v330 = v74;

          v258 = 0;
          v259 = v326;
          v357 = (v74 + 64);
          v355 = v257;
          while (v86)
          {
            v260 = v367;
LABEL_129:
            v358 = v258;
            Subtasks = v86;
            v262 = __clz(__rbit64(v86)) | (v258 << 6);
            v89 = v330;
            v263 = v330[6];
            v372 = *(v260 + 72);
            v264 = v341;
            v265 = v260;
            v266 = v376;
            v373 = *(v260 + 16);
            (v373)(v341, v263 + v372 * v262, v376);
            v267 = *(*(v89 + 56) + 8 * v262);
            v268 = v339;
            *(v264 + *(v339 + 48)) = v267;
            v269 = v264;
            isUniquelyReferenced_nonNull_native = v338;
            sub_100010364(v269, v338, &qword_100949240, &unk_1007AD460);
            v74 = *(isUniquelyReferenced_nonNull_native + *(v268 + 48));
            v363 = *(v265 + 32);
            v363(v361, isUniquelyReferenced_nonNull_native, v266);
            v368 = *(v74 + 16);
            if (v368)
            {
              v86 = (v74 + ((*(v265 + 80) + 32) & ~*(v265 + 80)));

              v270 = 0;
              while (v270 < *(v74 + 16))
              {
                v89 = v83;
                v272 = v365;
                v273 = v376;
                v274 = v373;
                (v373)(v365, v86, v376);
                v83 = v369;
                v274(v369, v272, v273);
                v274(v366, v361, v273);
                v275 = v375;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v377 = v275;
                v276 = sub_100363F20(v83);
                v278 = v275[2];
                v279 = (v277 & 1) == 0;
                v136 = __OFADD__(v278, v279);
                v280 = v278 + v279;
                if (v136)
                {
                  goto LABEL_155;
                }

                v281 = v277;
                if (v375[3] >= v280)
                {
                  v83 = v89;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v287 = v276;
                    sub_1003744A0();
                    v276 = v287;
                  }
                }

                else
                {
                  sub_10036C648(v280, isUniquelyReferenced_nonNull_native);
                  v276 = sub_100363F20(v369);
                  if ((v281 & 1) != (v282 & 1))
                  {
                    goto LABEL_169;
                  }

                  v83 = v89;
                }

                v375 = v377;
                if (v281)
                {
                  isUniquelyReferenced_nonNull_native = v376;
                  v89 = v372;
                  (*v360)(v375[7] + v276 * v372, v366, v376);
                  v271 = *v370;
                  (*v370)(v369, isUniquelyReferenced_nonNull_native);
                  v271(v365, isUniquelyReferenced_nonNull_native);
                }

                else
                {
                  v283 = v375;
                  isUniquelyReferenced_nonNull_native = v376;
                  v375[(v276 >> 6) + 8] |= 1 << v276;
                  v284 = v276 * v372;
                  v83 = v369;
                  (v373)(v283[6] + v276 * v372, v369, isUniquelyReferenced_nonNull_native);
                  v363((v283[7] + v284), v366, isUniquelyReferenced_nonNull_native);
                  v271 = *v370;
                  (*v370)(v83, isUniquelyReferenced_nonNull_native);
                  v271(v365, isUniquelyReferenced_nonNull_native);
                  v285 = v283[2];
                  v136 = __OFADD__(v285, 1);
                  v286 = v285 + 1;
                  if (v136)
                  {
                    goto LABEL_160;
                  }

                  v375[2] = v286;
                  v83 = v89;
                  v89 = v372;
                }

                ++v270;
                v86 = (v86 + v89);
                if (v368 == v270)
                {

                  goto LABEL_121;
                }
              }

              goto LABEL_154;
            }

            v271 = *v370;
LABEL_121:
            v86 = ((Subtasks - 1) & Subtasks);
            v89 = v376;
            v271(v361, v376);
            sub_1000050A4(v341, &qword_100949240, &unk_1007AD460);
            v259 = v326;
            v254 = v357;
            v258 = v358;
            v257 = v355;
          }

          v260 = v367;
          while (1)
          {
            v261 = v258 + 1;
            if (__OFADD__(v258, 1))
            {
              goto LABEL_161;
            }

            if (v261 >= v257)
            {

              v288 = [v259 color];
              v289 = [v259 badgeEmblem];
              if (v289)
              {
                v290 = v289;
                v376 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v373 = v291;
              }

              else
              {
                v376 = 0;
                v373 = 0;
              }

              v292 = v324;
              v293 = v336;
              v294 = [v259 sortingStyle];
              if (v294)
              {
                v295 = v294;
                v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v298 = v297;
              }

              else
              {

                v296 = 0;
                v298 = 0;
              }

              v299 = type metadata accessor for RDPublicTemplate();
              (*v374)(v292 + v299[8], v293, v89);
              v300 = v299[9];
              v301 = type metadata accessor for Date();
              v302 = *(v301 - 8);
              (*(v302 + 16))(v292 + v300, v328, v301);
              (*(v302 + 56))(v292 + v300, 0, 1, v301);
              v303 = v330;

              v304 = v323;

              v305 = v335;

              v306 = v332;
              *v292 = v325;
              v292[1] = v306;
              v307 = v376;
              v292[2] = v288;
              v292[3] = v307;
              v292[4] = v373;
              v292[5] = v296;
              v292[6] = v298;
              v308 = (v292 + v299[10]);
              *v308 = v356;
              v308[1] = v303;
              v309 = v354;
              v308[2] = v362;
              v308[3] = v309;
              v308[4] = v304;
              v308[5] = v305;
              v310 = v375;
              v308[6] = v83;
              v308[7] = v310;
              return;
            }

            v86 = *&v254[8 * v261];
            ++v258;
            if (v86)
            {
              v258 = v261;
              goto LABEL_129;
            }
          }
        }

        v188 = 0;
        v189 = 0;
        v320 = ((*(v373 + 80) + 32) & ~*(v373 + 80));
        v329 = v320 + v337;
        v375 = (v373 + 16);
        v354 = v367 + 32;
        v360 = (v367 + 8);
        v190 = (v373 + 8);
        v362 = _swiftEmptyDictionarySingleton;
        v330 = _swiftEmptyDictionarySingleton;
        v356 = _swiftEmptyArrayStorage;
        v358 = (v373 + 8);
        v321 = v187;
        while (v188 < v186[2])
        {
          v192 = *(v373 + 72);
          v331 = v188;
          v374 = *(v373 + 16);
          (v374)(isUniquelyReferenced_nonNull_native, &v329[v192 * v188], v147);
          if (v189 < v350)
          {
            v355 = v192;
            v322 = objc_autoreleasePoolPush();
            v193 = type metadata accessor for REMCDSavedReminder();
            v194 = REMRemindersListDataView.ReminderLite.objectID.getter();
            v353 = v193;
            v195 = v327;
            sub_10055C8D4(v194, v371);
            if (v195)
            {

              v147 = v372;
LABEL_115:

              objc_autoreleasePoolPop(v322);

              (*v190)(isUniquelyReferenced_nonNull_native, v147);

              return;
            }

            v370 = v189;

            v196 = REMRemindersListDataView.ReminderLite.objectID.getter();
            v197 = [v196 uuid];

            static UUID._unconditionallyBridgeFromObjectiveC(_:)();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v356 = sub_100366328(0, v356[2] + 1, 1, v356);
            }

            v198 = v356;
            v200 = v356[2];
            v199 = v356[3];
            v201 = v367;
            if (v200 >= v199 >> 1)
            {
              v198 = sub_100366328(v199 > 1, v200 + 1, 1, v356);
              v201 = v367;
            }

            *(v198 + 16) = v200 + 1;
            v202 = ((*(v201 + 80) + 32) & ~*(v201 + 80));
            v356 = v198;
            v347 = v202;
            v344 = *(v201 + 72);
            v334 = *(v201 + 32);
            (v334)(v202 + v198 + v344 * v200, v342, v89);
            v203 = REMRemindersListDataView.ReminderLite.objectID.getter();
            v204 = [v203 uuid];

            v205 = v349;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v206 = v346;
            sub_1001CD744(v343, v346);
            v207 = v340;
            v208 = v345;
            v333 = v207;
            sub_1001C9D1C(v206, v207, v345);
            sub_1005343C0(v208, v206, type metadata accessor for RDSavedReminder);
            v209 = v362;
            v210 = swift_isUniquelyReferenced_nonNull_native();
            v377 = v209;
            sub_1002CA5DC(v206, v205, v210);
            Subtasks = *(v201 + 8);
            (Subtasks)(v205, v89);
            v362 = v377;
            v211 = REMRemindersListDataView.ReminderLite.objectID.getter();
            sub_100533C2C(v211);
            v327 = 0;
            v213 = v212;

            v86 = v323;
            v190 = v358;
            if (v213)
            {
              v214 = REMRemindersListDataView.ReminderLite.objectID.getter();
              v215 = [v214 uuid];

              v216 = v349;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              sub_10031E590(v213, v216);
            }

            v189 = v370 + 1;
            v217 = REMRemindersListDataView.ReminderLite.subtasks.getter();
            v147 = v372;
            if (v217)
            {
              v364 = *(v217 + 2);
              if (v364)
              {
                v89 = 0;
                isUniquelyReferenced_nonNull_native = v320 + v217;
                v368 = _swiftEmptyArrayStorage;
                v218 = v351;
                v74 = v355;
                v363 = v217;
                while (v89 < *(v217 + 2))
                {
                  (v374)(v218, isUniquelyReferenced_nonNull_native, v147);
                  if (v189 < v350)
                  {
                    v219 = objc_autoreleasePoolPush();
                    v220 = REMRemindersListDataView.ReminderLite.objectID.getter();
                    v221 = v327;
                    sub_10055C8D4(v220, v371);
                    v327 = v221;
                    if (v221)
                    {
                      goto LABEL_114;
                    }

                    v222 = REMRemindersListDataView.ReminderLite.objectID.getter();
                    v223 = [v222 uuid];

                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
                    v224 = v368;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v224 = sub_100366328(0, *(v224 + 16) + 1, 1, v224);
                    }

                    v226 = *(v224 + 16);
                    v225 = *(v224 + 24);
                    v370 = v189;
                    if (v226 >= v225 >> 1)
                    {
                      v224 = sub_100366328(v225 > 1, v226 + 1, 1, v224);
                    }

                    *(v224 + 16) = v226 + 1;
                    v368 = v224;
                    v227 = v347 + v224 + v226 * v344;
                    v228 = v376;
                    (v334)(v227, v348, v376);
                    v229 = REMRemindersListDataView.ReminderLite.objectID.getter();
                    v230 = [v229 uuid];

                    v231 = v349;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v232 = v346;
                    sub_1001CD744(v352, v346);
                    v233 = v333;
                    v234 = v345;
                    sub_1001C9D1C(v232, v233, v345);
                    sub_1005343C0(v234, v232, type metadata accessor for RDSavedReminder);
                    v235 = v362;
                    v236 = swift_isUniquelyReferenced_nonNull_native();
                    v377 = v235;
                    sub_1002CA5DC(v232, v231, v236);
                    (Subtasks)(v231, v228);
                    v362 = v377;
                    v220 = REMRemindersListDataView.ReminderLite.objectID.getter();
                    v237 = v327;
                    sub_100533C2C(v220);
                    v327 = v237;
                    if (v237)
                    {
                      sub_1004909AC(v352, type metadata accessor for RDSavedReminder);
                      v147 = v372;
LABEL_114:
                      v190 = v358;

                      objc_autoreleasePoolPop(v219);
                      sub_1004909AC(v343, type metadata accessor for RDSavedReminder);
                      (*v190)(v351, v147);

                      isUniquelyReferenced_nonNull_native = v357;
                      goto LABEL_115;
                    }

                    v239 = v238;

                    v190 = v358;
                    if (v239)
                    {
                      v240 = REMRemindersListDataView.ReminderLite.objectID.getter();
                      v241 = [v240 uuid];

                      v242 = v349;
                      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                      sub_10031E590(v239, v242);
                    }

                    sub_1004909AC(v352, type metadata accessor for RDSavedReminder);
                    v189 = v370 + 1;
                    objc_autoreleasePoolPop(v219);
                    v147 = v372;
                    v218 = v351;
                    v86 = v323;
                    v74 = v355;
                  }

                  ++v89;
                  (*v190)(v218, v147);
                  isUniquelyReferenced_nonNull_native += v74;
                  v217 = v363;
                  if (v364 == v89)
                  {
                    goto LABEL_111;
                  }
                }

                goto LABEL_162;
              }

              v368 = _swiftEmptyArrayStorage;
LABEL_111:

              isUniquelyReferenced_nonNull_native = v357;
              v243 = REMRemindersListDataView.ReminderLite.objectID.getter();
              v244 = [v243 uuid];

              v245 = v349;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v246 = v368;

              v247 = v330;
              v248 = swift_isUniquelyReferenced_nonNull_native();
              v377 = v247;
              sub_1002CA584(v246, v245, v248);
              v249 = v245;
              v89 = v376;
              (Subtasks)(v249, v376);
              v330 = v377;
              sub_1004909AC(v343, type metadata accessor for RDSavedReminder);
            }

            else
            {
              sub_1004909AC(v343, type metadata accessor for RDSavedReminder);
            }

            v187 = v321;
            objc_autoreleasePoolPop(v322);
          }

          v191 = v331 + 1;
          (*v190)(isUniquelyReferenced_nonNull_native, v147);
          v188 = v191;
          v186 = v337;
          if (v191 == v187)
          {

            v74 = v330;
            v251 = v356;
            v250 = v362;
            goto LABEL_117;
          }
        }

LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_170:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v115 = 0;
      v320 = v356 + 2;
      v319 = (v337 + 11);
      v318 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
      v312 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
      v317 = (v367 + 56);
      v311 = (v337 + 12);
      v316 = (v367 + 48);
      v334 = (v367 + 32);
      v358 = (v367 + 16);
      v331 = v373 + 16;
      v347 = (v367 + 8);
      Subtasks = v373 + 8;
      v329 = (v367 + 40);
      v315 = (v356 + 1);
      v116 = _swiftEmptyArrayStorage;
      v86 = _swiftEmptyArrayStorage;
      v74 = v355;
      while (1)
      {
        if (v115 >= *(v322 + 2))
        {
          goto LABEL_157;
        }

        v117 = &v322[(*(v356 + 80) + 32) & ~*(v356 + 80)];
        v118 = v356[9];
        v330 = v115;
        (v356[2])(v364, &v117[v118 * v115], v360);
        REMRemindersListDataView.SectionLite.type.getter();
        v119 = v354;
        v120 = (*v319)(v74, v354);
        if (v120 == v318)
        {
          (*v311)(v74, v119);
          v121 = *v74;
          v362 = *(v74 + 8);
          v122 = *(v74 + 16);
          v123 = *(v74 + 32);

          v74 = [v121 uuid];
          v124 = v363;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v317)(v124, 0, 1, v89);
        }

        else
        {
          if (v120 != v312)
          {
            goto LABEL_170;
          }

          (*v317)(v363, 1, 1, v89);
          v362 = 0;
          v122 = 0;
        }

        v125 = REMRemindersListDataView.SectionLite.reminders.getter();
        v126 = *(v125 + 16);
        v127 = v116[2];
        v89 = v127 + v126;
        if (__OFADD__(v127, v126))
        {
          goto LABEL_158;
        }

        v74 = v125;

        v128 = swift_isUniquelyReferenced_nonNull_native();
        v129 = v116;
        if (!v128 || v89 > v116[3] >> 1)
        {
          if (v127 <= v89)
          {
            v130 = v127 + v126;
          }

          else
          {
            v130 = v127;
          }

          v129 = sub_100365A24(v128, v130, 1, v116);
        }

        v89 = v376;
        v131 = v353;
        v132 = *(v74 + 16);
        v337 = v129;
        if (v132)
        {
          if ((*(v129 + 24) >> 1) - *(v129 + 16) < v126)
          {
            goto LABEL_163;
          }

          v133 = (*(v373 + 80) + 32) & ~*(v373 + 80);
          v134 = *(v373 + 72);
          swift_arrayInitWithCopy();

          if (v126)
          {
            v135 = v337[2];
            v136 = __OFADD__(v135, v126);
            v137 = v135 + v126;
            if (v136)
            {
              __break(1u);
              goto LABEL_166;
            }

            v337[2] = v137;
          }
        }

        else
        {

          if (v126)
          {
            goto LABEL_159;
          }
        }

        v138 = v363;
        sub_100010364(v363, v131, &unk_100939D90, "8\n\r");
        if ((*v316)(v131, 1, v89) == 1)
        {

          sub_1000050A4(v138, &unk_100939D90, "8\n\r");
          (*v315)(v364, v360);
          sub_1000050A4(v131, &unk_100939D90, "8\n\r");
LABEL_49:
          v147 = v372;
          isUniquelyReferenced_nonNull_native = v357;
          goto LABEL_20;
        }

        v139 = v370;
        v333 = *v334;
        (v333)(v370, v131, v89);
        v140 = v368;
        if (!v122)
        {

          (*v347)(v139, v89);
          sub_1000050A4(v363, &unk_100939D90, "8\n\r");
          (*v315)(v364, v360);
          goto LABEL_49;
        }

        if (v86)
        {
          v141 = v370;
          (*v358)(v344, v370, v89);
          v142 = swift_isUniquelyReferenced_nonNull_native();
          v143 = v335;
          if ((v142 & 1) == 0)
          {
            v86 = sub_100366328(0, v86[2] + 1, 1, v86);
          }

          v145 = v86[2];
          v144 = v86[3];
          if (v145 >= v144 >> 1)
          {
            v86 = sub_100366328(v144 > 1, v145 + 1, 1, v86);
          }

          v146 = v367;
          v86[2] = v145 + 1;
          (v333)(v86 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v145, v344, v89);
          v140 = v368;
        }

        else
        {
          v143 = v335;
          v141 = v370;
        }

        v323 = v86;
        if (!v143)
        {

          v156 = 0;
LABEL_61:
          v147 = v372;
          goto LABEL_64;
        }

        v148 = swift_isUniquelyReferenced_nonNull_native();
        v377 = v143;
        v149 = sub_100363F20(v141);
        v151 = v143[2];
        v152 = (v150 & 1) == 0;
        v136 = __OFADD__(v151, v152);
        v153 = v151 + v152;
        if (v136)
        {
          goto LABEL_167;
        }

        v154 = v150;
        if (v143[3] >= v153)
        {
          v140 = v368;
          if ((v148 & 1) == 0)
          {
            v185 = v149;
            sub_100375E88();
            v140 = v368;
            v149 = v185;
          }
        }

        else
        {
          sub_10036F3F4(v153, v148);
          v149 = sub_100363F20(v141);
          if ((v154 & 1) != (v155 & 1))
          {
            goto LABEL_169;
          }

          v140 = v368;
        }

        v157 = v362;
        v156 = v377;
        if (v154)
        {
          v158 = (v377[7] + 16 * v149);
          v159 = v158[1];
          *v158 = v362;
          v158[1] = v122;

          v89 = v376;
          goto LABEL_61;
        }

        v377[(v149 >> 6) + 8] |= 1 << v149;
        v160 = v149;
        v89 = v376;
        (*(v367 + 16))(v156[6] + *(v367 + 72) * v149, v141, v376);
        v161 = (v156[7] + 16 * v160);
        *v161 = v157;
        v161[1] = v122;
        v162 = v156[2];
        v136 = __OFADD__(v162, 1);
        v163 = v162 + 1;
        if (v136)
        {
          goto LABEL_168;
        }

        v156[2] = v163;
        v147 = v372;
        v140 = v368;
LABEL_64:
        isUniquelyReferenced_nonNull_native = v331;
        v335 = v156;
        v86 = *(v74 + 16);
        if (v86)
        {
          break;
        }

LABEL_19:

        (*v347)(v370, v89);
        sub_1000050A4(v363, &unk_100939D90, "8\n\r");
        (*v315)(v364, v360);
        isUniquelyReferenced_nonNull_native = v357;
        v86 = v323;
LABEL_20:
        v115 = v330 + 1;
        v116 = v337;
        v74 = v355;
        if ((v330 + 1) == v321)
        {
          goto LABEL_81;
        }
      }

      v164 = 0;
      v362 = (v74 + ((*(v373 + 80) + 32) & ~*(v373 + 80)));
      while (v164 < *(v74 + 16))
      {
        (*(v373 + 16))(v140, v362 + *(v373 + 72) * v164, v147);
        if (!v83)
        {
          (*Subtasks)(v140, v147);
          goto LABEL_67;
        }

        v165 = REMRemindersListDataView.ReminderLite.objectID.getter();
        v166 = [v165 uuid];

        v167 = v375;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v168 = *v358;
        (*v358)(v374, v370, v89);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v377 = v83;
        v169 = sub_100363F20(v167);
        v171 = v83[2];
        v172 = (v170 & 1) == 0;
        v136 = __OFADD__(v171, v172);
        v173 = v171 + v172;
        if (v136)
        {
          goto LABEL_153;
        }

        v174 = v170;
        if (v83[3] >= v173)
        {
          if ((v89 & 1) == 0)
          {
            v177 = v169;
            sub_1003744A0();
            v169 = v177;
            v89 = v376;
            v83 = v377;
            if (v174)
            {
LABEL_76:
              v176 = v367;
              (*(v367 + 40))(v83[7] + *(v367 + 72) * v169, v374, v89);
              (*(v176 + 8))(v375, v89);
              v140 = v368;
              v147 = v372;
              (*Subtasks)(v368, v372);
              goto LABEL_67;
            }

            goto LABEL_78;
          }
        }

        else
        {
          sub_10036C648(v173, v89);
          v169 = sub_100363F20(v375);
          if ((v174 & 1) != (v175 & 1))
          {
            goto LABEL_169;
          }
        }

        v89 = v376;
        v83 = v377;
        if (v174)
        {
          goto LABEL_76;
        }

LABEL_78:
        v83[(v169 >> 6) + 8] |= 1 << v169;
        v178 = v367;
        v179 = *(v367 + 72) * v169;
        v180 = v83[6] + v179;
        isUniquelyReferenced_nonNull_native = v83;
        v181 = v375;
        v168(v180, v375, v89);
        (v333)(*(isUniquelyReferenced_nonNull_native + 56) + v179, v374, v89);
        v182 = v181;
        v83 = isUniquelyReferenced_nonNull_native;
        (*(v178 + 8))(v182, v89);
        v140 = v368;
        v147 = v372;
        (*Subtasks)(v368, v372);
        v183 = *(isUniquelyReferenced_nonNull_native + 16);
        v136 = __OFADD__(v183, 1);
        v184 = v183 + 1;
        if (v136)
        {
          goto LABEL_156;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v184;
        isUniquelyReferenced_nonNull_native = v331;
LABEL_67:
        if (v86 == ++v164)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      swift_once();
    }
  }

  v90 = v82;
LABEL_16:
  v113 = v334;
  sub_1004909AC(isUniquelyReferenced_nonNull_native, _s9UtilitiesO12SortingStyleOMa);
  (v362[1])(v74, v81);
  objc_autoreleasePoolPop(v113);
}

void sub_100533C2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v66 = v4;
  v67 = v5;
  v6 = v5[8];
  __chkstk_darwin(v4);
  v71 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RDSavedURLAttachment();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  __chkstk_darwin(v8);
  v69 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = &v54 - v12;
  __chkstk_darwin(v13);
  v62 = &v54 - v14;
  type metadata accessor for REMCDSavedAttachment();
  v15 = sub_1005BE53C();
  v16 = a1;
  v17 = sub_1005BDBEC(a1, 0x20u);
  v18 = [objc_allocWithZone(NSFetchRequest) init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [ObjCClassFromMetadata entity];
  [v18 setEntity:v20];

  [v18 setAffectedStores:0];
  [v18 setPredicate:v17];

  if (qword_100936668 != -1)
  {
LABEL_33:
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v18 setSortDescriptors:isa];

  sub_10003450C(v15);
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v18 setPropertiesToFetch:v22];

  v23 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v2)
  {
    if (v23 >> 62)
    {
LABEL_35:
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!v24)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_36;
      }
    }

    v61 = v23 & 0xC000000000000001;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v25 = *(v23 + 32);
    }

    v26 = v25;
    v27 = [v25 storeControllerManagedObjectContext];
    if (!v27)
    {

      v50 = objc_opt_self();
      v51 = String._bridgeToObjectiveC()();
      [v50 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v51];

      swift_willThrow();
      return;
    }

    v28 = v27;
    v68 = [v27 storeController];
    if (!v68)
    {

      v52 = objc_opt_self();
      v53 = String._bridgeToObjectiveC()();
      [v52 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v53];

      swift_willThrow();
      return;
    }

    v55 = v28;
    v56 = v26;
    v2 = 0;
    v60 = v23 & 0xFFFFFFFFFFFFFF8;
    v57 = (v67 + 4);
    v67 = _swiftEmptyArrayStorage;
    v15 = v61;
    v58 = v24;
    v59 = v23;
    do
    {
      if (v15)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v60 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v29 = *(v23 + 8 * v2 + 32);
      }

      v16 = v29;
      ObjCClassFromMetadata = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      v70[3] = sub_1000060C8(0, &qword_10093DD58, off_1008D4118);
      v70[4] = &off_1008F2C88;
      v30 = v68;
      v70[0] = v68;
      v18 = v16;
      v31 = v30;
      v32 = sub_1004755B4(v18, v70);
      v33 = v32;
      if (v34)
      {
      }

      else
      {
        v35 = [v32 url];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = [v33 metadata];
        if (v36)
        {
          v37 = v36;
          v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;
        }

        else
        {

          v38 = 0;
          v40 = 0xF000000000000000;
        }

        v41 = v63;
        (*v57)(v63, v71, v66);
        v42 = &v41[*(v65 + 20)];
        *v42 = v38;
        v42[1] = v40;
        v43 = v41;
        v44 = v62;
        sub_1005343C0(v43, v62, type metadata accessor for RDSavedURLAttachment);
        sub_1005343C0(v44, v69, type metadata accessor for RDSavedURLAttachment);
        v45 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_100368468(0, v45[2] + 1, 1, v45);
        }

        v24 = v58;
        v23 = v59;
        v46 = v45;
        v47 = v45[2];
        v67 = v46;
        v48 = v46[3];
        if (v47 >= v48 >> 1)
        {
          v67 = sub_100368468(v48 > 1, v47 + 1, 1, v67);
        }

        v49 = v67;
        v67[2] = v47 + 1;
        sub_1005343C0(v69, v49 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v47, type metadata accessor for RDSavedURLAttachment);
        v15 = v61;
      }

      ++v2;
    }

    while (ObjCClassFromMetadata != v24);

    if (v67[2])
    {
      return;
    }

LABEL_36:
  }
}

uint64_t sub_1005343C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100534428(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v13 = *(v2 - 8);
  v3 = *(v13 + 64);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSOrderedSet.makeIterator()();
  sub_10054026C(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (v18)
  {
    sub_100005EE0(&v17, v16);
    sub_100005EF0(v16, v15);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    if (swift_dynamicCast())
    {
      v6 = v19;
      v7 = [v19 remObjectID];
      if (v7)
      {
        v8 = v7;
        v9 = REMObjectID.codable.getter();

        v10 = v9;
        sub_100379240(v15, v10);
      }

      else
      {
      }
    }

    sub_10000607C(v16);
    dispatch thunk of IteratorProtocol.next()();
  }

  return (*(v13 + 8))(v5, v2);
}

void sub_10053464C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setAffectedStores:0];
  [v3 setPredicate:a2];
  [v3 setResultType:2];
  v5 = sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
  swift_getKeyPath();
  v6 = NSExpression.init<A, B>(forKeyPath:)();
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791300;
  *(v7 + 56) = v5;
  *(v7 + 32) = v6;
  v39 = v6;
  v8 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [objc_opt_self() expressionForFunction:v8 arguments:isa];

  v11 = [objc_allocWithZone(NSExpressionDescription) init];
  v38 = v10;
  [v11 setExpression:v10];
  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  [v12 setName:v13];

  [v12 setExpressionResultType:300];
  [v3 setReturnsObjectsAsFaults:0];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100791300;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 32) = 0x6574656C706D6F63;
  *(v14 + 40) = 0xE900000000000064;
  v15 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setPropertiesToGroupBy:v15];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100791340;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 32) = 0x6574656C706D6F63;
  *(v16 + 40) = 0xE900000000000064;
  *(v16 + 88) = sub_1000060C8(0, &qword_100939F48, NSExpressionDescription_ptr);
  *(v16 + 64) = v12;
  v17 = v12;
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setPropertiesToFetch:v18];

  [v3 setResultType:2];
  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v19 = NSManagedObjectContext.fetch<A>(_:)();
  if (v36)
  {

    return;
  }

  v20 = v19;
  if (v19 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v38;
  v22 = v39;
  if (!v21)
  {

LABEL_34:
    REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();

    return;
  }

  v33 = v17;
  v34 = v3;
  if (v21 < 1)
  {
    goto LABEL_39;
  }

  v35 = 0;
  v37 = 0;
  v24 = 0;
  while (1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(v20 + 8 * v24 + 32);
    }

    v26 = v25;
    *&v40 = 0x6574656C706D6F63;
    *(&v40 + 1) = 0xE900000000000064;
    v27 = [v25 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v27)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v42 = 0u;
    }

    v43 = v40;
    v44 = v42;
    if (!*(&v42 + 1))
    {

      sub_1000050A4(&v43, &qword_100939ED0, &qword_100791B10);
      goto LABEL_9;
    }

    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_9;
    }

    v28 = v45;
    *&v41 = 0x746E756F63;
    *(&v41 + 1) = 0xE500000000000000;
    v29 = [v26 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v29)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v43 = v41;
    v44 = v42;
    if (!*(&v42 + 1))
    {

      sub_1000050A4(&v43, &qword_100939ED0, &qword_100791B10);
      goto LABEL_9;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_9;
    }

    v30 = v45;
    v31 = [v28 BOOLValue];
    v32 = [v30 integerValue];

    if (!v31)
    {
      break;
    }

    if (__OFADD__(v35, v32))
    {
      goto LABEL_38;
    }

    v35 += v32;
LABEL_9:
    if (v21 == ++v24)
    {

      v3 = v34;
      v23 = v38;
      v22 = v39;
      v17 = v33;
      goto LABEL_34;
    }
  }

  if (!__OFADD__(v37, v32))
  {
    v37 += v32;
    goto LABEL_9;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_100534D44(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_145;
    }

    goto LABEL_140;
  }

  v152 = a2;
  v167 = &_swiftEmptySetSingleton;
  v166[4] = &_swiftEmptySetSingleton;
  v166[5] = &_swiftEmptySetSingleton;
  v166[2] = &_swiftEmptySetSingleton;
  v166[3] = &_swiftEmptySetSingleton;
  v3 = a1;
  v4 = sub_10003B8F0(v3, _swiftEmptyArrayStorage);
  if (!v2)
  {
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_5:
        v7 = 0;
        v8 = &selRef_accountStatusWithCompletionHandler_;
        v9 = &selRef_accountStatusWithCompletionHandler_;
        v160 = v6;
        v156 = v3;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v10 = v7;
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v12 = __OFADD__(v10, 1);
            v13 = v10 + 1;
            if (v12)
            {
              goto LABEL_142;
            }
          }

          else
          {
            if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_144;
            }

            v14 = v7;
            v11 = *(v5 + 32 + 8 * v7);
            v12 = __OFADD__(v14, 1);
            v13 = v14 + 1;
            if (v12)
            {
LABEL_142:
              __break(1u);
              goto LABEL_143;
            }
          }

          v161 = v13;
          v15 = v11;
          v16 = [v11 changes];
          if (!v16)
          {
            if (qword_1009363F0 != -1)
            {
              swift_once();
            }

            v26 = type metadata accessor for Logger();
            sub_100006654(v26, qword_10094BDF0);
            v27 = v15;
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              *v30 = 138412290;
              *(v30 + 4) = v27;
              *v31 = v27;
              v32 = v27;
              _os_log_impl(&_mh_execute_header, v28, v29, "Skipping transaction because it contains no changes {transaction: %@}", v30, 0xCu);
              sub_1000050A4(v31, &unk_100938E70, &unk_100797230);
              v8 = &selRef_accountStatusWithCompletionHandler_;

              v9 = &selRef_accountStatusWithCompletionHandler_;
            }

            else
            {
            }

            goto LABEL_6;
          }

          v17 = v16;
          sub_1000060C8(0, &qword_10093F3C8, NSPersistentHistoryChange_ptr);
          v163 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v162 = v15;
          v18 = [v15 author];
          if (!v18)
          {
            break;
          }

          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v22)
          {
            goto LABEL_25;
          }

          if (v20 == v23 && v22 == v24)
          {
            goto LABEL_30;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
            goto LABEL_31;
          }

LABEL_26:
          v33 = [v162 author];
          if (!v33)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            goto LABEL_35;
          }

          v34 = v33;
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v37)
          {
            goto LABEL_35;
          }

          if (v35 == v38 && v37 == v39)
          {
LABEL_30:

LABEL_31:
            v40 = [v162 contextName];
            if (!v40)
            {
              goto LABEL_36;
            }

            v41 = v40;
            v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v44 = v43;

            v45 = v44;
            v9 = &selRef_accountStatusWithCompletionHandler_;
            sub_100378434(v166, v42, v45);
LABEL_35:

            goto LABEL_36;
          }

          v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v151)
          {
            goto LABEL_31;
          }

LABEL_36:
          if (!(v163 >> 62))
          {
            v46 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v46)
            {
              goto LABEL_38;
            }

            goto LABEL_138;
          }

          v46 = _CocoaArrayWrapper.endIndex.getter();
          if (v46)
          {
LABEL_38:
            sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
            if (v46 >= 1)
            {
              v47 = 0;
              v164 = v46;
              while (1)
              {
                if ((v163 & 0xC000000000000001) != 0)
                {
                  v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v48 = *(v163 + 32 + 8 * v47);
                }

                v49 = v48;
                v50 = [v48 v8[150]];
                v51 = [v50 v9[395]];
                v52 = v9;
                v53 = [ObjCClassFromMetadata v9[395]];
                v54 = static NSObject.== infix(_:_:)();

                if (v54)
                {

                  v55 = sub_1005AFD38(v50);
                  if (!v55)
                  {
                    goto LABEL_70;
                  }

                  v56 = v55;
                  objc_opt_self();
                  v57 = swift_dynamicCastObjCClass();
                  if (!v57)
                  {
                    if (qword_1009363F0 != -1)
                    {
                      swift_once();
                    }

                    v97 = type metadata accessor for Logger();
                    sub_100006654(v97, qword_10094BDF0);
                    v98 = v50;
                    v99 = Logger.logObject.getter();
                    v100 = static os_log_type_t.fault.getter();

                    if (os_log_type_enabled(v99, v100))
                    {
                      v101 = swift_slowAlloc();
                      v102 = swift_slowAlloc();
                      *v101 = 138412290;
                      *(v101 + 4) = v98;
                      *v102 = v98;
                      v103 = v98;
                      _os_log_impl(&_mh_execute_header, v99, v100, "Failed to cast managedObject to REMCDReminder {objectID: %@}", v101, 0xCu);
                      sub_1000050A4(v102, &unk_100938E70, &unk_100797230);
                    }

                    else
                    {
                    }

                    v8 = &selRef_accountStatusWithCompletionHandler_;
                    goto LABEL_114;
                  }

                  v58 = v57;
                  v59 = v56;
                  v60 = [v58 remObjectID];
                  if (!v60)
                  {

                    if (qword_1009363F0 != -1)
                    {
                      swift_once();
                    }

                    v104 = type metadata accessor for Logger();
                    sub_100006654(v104, qword_10094BDF0);
                    v105 = v50;
                    v92 = Logger.logObject.getter();
                    v106 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v92, v106))
                    {
                      v107 = swift_slowAlloc();
                      v108 = swift_slowAlloc();
                      *v107 = 138412290;
                      *(v107 + 4) = v105;
                      *v108 = v105;
                      v109 = v105;
                      _os_log_impl(&_mh_execute_header, v92, v106, "Failed to get remObjectID from REMCDReminder {objectID: %@}", v107, 0xCu);
                      sub_1000050A4(v108, &unk_100938E70, &unk_100797230);

LABEL_109:
                      v8 = &selRef_accountStatusWithCompletionHandler_;
                      goto LABEL_114;
                    }

LABEL_108:
                    goto LABEL_109;
                  }

                  v61 = v60;
                  if ([v49 changeType] <= 1)
                  {
                    v139 = REMObjectID.codable.getter();
                    sub_100379240(v166, v139);

LABEL_101:
                    goto LABEL_114;
                  }
                }

                else
                {
                  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
                  v62 = swift_getObjCClassFromMetadata();
                  v63 = v51;
                  v64 = [v62 v52[395]];
                  LOBYTE(v62) = static NSObject.== infix(_:_:)();

                  if (v62)
                  {

                    v65 = sub_1005AFD38(v50);
                    if (!v65)
                    {
                      goto LABEL_70;
                    }

                    v66 = v65;
                    objc_opt_self();
                    v67 = swift_dynamicCastObjCClass();
                    if (v67)
                    {
                      v68 = v67;
                      v69 = v66;
                      v70 = [v68 remObjectID];
                      if (v70)
                      {
                        v71 = v70;
                        v72 = [v49 updatedProperties];
                        if (!v72)
                        {
                          goto LABEL_120;
                        }

                        v73 = v72;
                        v159 = v69;
                        sub_1000060C8(0, &qword_100939678, NSPropertyDescription_ptr);
                        sub_10000CE28(&qword_100948BC8, &qword_100939678, NSPropertyDescription_ptr);
                        v74 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

                        v75 = [v50 entity];
                        v76 = [v75 relationshipsByName];

                        sub_1000060C8(0, &qword_10094BE18, NSRelationshipDescription_ptr);
                        v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                        if (*(v77 + 16))
                        {
                          v78 = sub_100005F4C(0x73656572616873, 0xE700000000000000);
                          v8 = &selRef_accountStatusWithCompletionHandler_;
                          if (v79)
                          {
                            v153 = v71;
                            v158 = *(*(v77 + 56) + 8 * v78);

                            v80 = (v74 & 0xC000000000000001) == 0;
                            v81 = v74;
                            v69 = v159;
                            if (v80)
                            {
                              if (*(v81 + 16))
                              {
                                v146 = NSObject._rawHashValue(seed:)(*(v81 + 40));
                                v157 = v81;
                                v147 = -1 << *(v81 + 32);
                                v148 = v146 & ~v147;
                                v155 = v81 + 56;
                                if ((*(v81 + 56 + ((v148 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v148))
                                {
                                  v154 = ~v147;
                                  v71 = v153;
                                  while (1)
                                  {
                                    v149 = *(*(v157 + 48) + 8 * v148);
                                    v150 = static NSObject.== infix(_:_:)();

                                    if (v150)
                                    {
                                      break;
                                    }

                                    v148 = (v148 + 1) & v154;
                                    if (((*(v155 + ((v148 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v148) & 1) == 0)
                                    {
                                      goto LABEL_133;
                                    }
                                  }

                                  v69 = v159;
LABEL_59:
                                  v84 = [v68 reminders];
                                  v8 = &selRef_accountStatusWithCompletionHandler_;
                                  if (v84)
                                  {
                                    v85 = v84;
                                    sub_100534428(v84, &v167);
                                  }
                                }

                                else
                                {
                                  v71 = v153;
LABEL_133:

                                  v8 = &selRef_accountStatusWithCompletionHandler_;
                                  v69 = v159;
                                }
                              }

                              else
                              {

                                v71 = v153;
                              }
                            }

                            else
                            {
                              v82 = v158;
                              v83 = __CocoaSet.contains(_:)();

                              if (v83)
                              {
                                v71 = v153;
                                goto LABEL_59;
                              }

                              v8 = &selRef_accountStatusWithCompletionHandler_;
                              v71 = v153;
                            }

LABEL_120:
                            v142 = v164;
                            if ([v49 changeType] == 1)
                            {
                              v143 = REMObjectID.codable.getter();
                              sub_100379240(v166, v143);
                            }

                            v144 = REMObjectID.codable.getter();
                            sub_100379240(v166, v144);

                            v9 = &selRef_accountStatusWithCompletionHandler_;
                            goto LABEL_115;
                          }
                        }

                        else
                        {

                          v8 = &selRef_accountStatusWithCompletionHandler_;
                        }

                        v69 = v159;
                        goto LABEL_120;
                      }

                      if (qword_1009363F0 != -1)
                      {
                        swift_once();
                      }

                      v133 = type metadata accessor for Logger();
                      sub_100006654(v133, qword_10094BDF0);
                      v134 = v50;
                      v135 = Logger.logObject.getter();
                      v136 = static os_log_type_t.error.getter();

                      if (!os_log_type_enabled(v135, v136))
                      {

                        goto LABEL_113;
                      }

                      v137 = swift_slowAlloc();
                      v138 = swift_slowAlloc();
                      *v137 = 138412290;
                      *(v137 + 4) = v134;
                      *v138 = v134;
                      v116 = v134;
                      _os_log_impl(&_mh_execute_header, v135, v136, "Failed to get remObjectID from REMCDList {objectID: %@}", v137, 0xCu);
                      sub_1000050A4(v138, &unk_100938E70, &unk_100797230);

                      v8 = &selRef_accountStatusWithCompletionHandler_;

LABEL_98:
                      goto LABEL_114;
                    }

                    if (qword_1009363F0 != -1)
                    {
                      swift_once();
                    }

                    v117 = type metadata accessor for Logger();
                    sub_100006654(v117, qword_10094BDF0);
                    v118 = v50;
                    v119 = Logger.logObject.getter();
                    v120 = static os_log_type_t.fault.getter();

                    if (!os_log_type_enabled(v119, v120))
                    {

LABEL_111:
                      v8 = &selRef_accountStatusWithCompletionHandler_;
                      goto LABEL_114;
                    }

                    v121 = swift_slowAlloc();
                    v122 = swift_slowAlloc();
                    *v121 = 138412290;
                    *(v121 + 4) = v118;
                    *v122 = v118;
                    v123 = v118;
                    _os_log_impl(&_mh_execute_header, v119, v120, "Failed to cast managedObject to REMCDList {objectID: %@}", v121, 0xCu);
                    sub_1000050A4(v122, &unk_100938E70, &unk_100797230);

                    v8 = &selRef_accountStatusWithCompletionHandler_;
                  }

                  else
                  {
                    type metadata accessor for REMCDListSection();
                    v86 = swift_getObjCClassFromMetadata();
                    v87 = v63;
                    v88 = [v86 v52[395]];
                    LOBYTE(v86) = static NSObject.== infix(_:_:)();

                    if (v86)
                    {
                    }

                    else
                    {
                      type metadata accessor for REMCDSmartListSection();
                      v89 = [swift_getObjCClassFromMetadata() v52[395]];
                      v90 = static NSObject.== infix(_:_:)();

                      if ((v90 & 1) == 0)
                      {
                        if (qword_1009363F0 != -1)
                        {
                          swift_once();
                        }

                        v110 = type metadata accessor for Logger();
                        sub_100006654(v110, qword_10094BDF0);
                        v111 = v50;
                        v112 = Logger.logObject.getter();
                        v113 = static os_log_type_t.debug.getter();

                        if (!os_log_type_enabled(v112, v113))
                        {

LABEL_113:
                          goto LABEL_114;
                        }

                        v114 = swift_slowAlloc();
                        v115 = swift_slowAlloc();
                        *v114 = 138412290;
                        *(v114 + 4) = v111;
                        *v115 = v111;
                        v116 = v111;
                        _os_log_impl(&_mh_execute_header, v112, v113, "Skipping change unhandled type {objectID: %@}", v114, 0xCu);
                        sub_1000050A4(v115, &unk_100938E70, &unk_100797230);

                        v8 = &selRef_accountStatusWithCompletionHandler_;

                        goto LABEL_98;
                      }
                    }

                    v91 = sub_1005AFD38(v50);
                    if (!v91)
                    {
LABEL_70:

                      goto LABEL_114;
                    }

                    v92 = v91;
                    type metadata accessor for REMCDBaseSection();
                    v93 = swift_dynamicCastClass();
                    if (!v93)
                    {
                      if (qword_1009363F0 != -1)
                      {
                        swift_once();
                      }

                      v124 = type metadata accessor for Logger();
                      sub_100006654(v124, qword_10094BDF0);
                      v125 = v50;
                      v126 = Logger.logObject.getter();
                      v127 = static os_log_type_t.fault.getter();

                      if (!os_log_type_enabled(v126, v127))
                      {
LABEL_110:

                        goto LABEL_111;
                      }

                      v128 = swift_slowAlloc();
                      v129 = swift_slowAlloc();
                      *v128 = 138412290;
                      *(v128 + 4) = v125;
                      *v129 = v125;
                      v59 = v125;
                      v130 = v127;
                      v131 = v126;
                      v132 = "Failed to cast managedObject to REMCDBaseSection {objectID: %@}";
                      goto LABEL_107;
                    }

                    v94 = v93;
                    v92 = v92;
                    v95 = [v94 remObjectID];
                    if (!v95)
                    {

                      if (qword_1009363F0 != -1)
                      {
                        swift_once();
                      }

                      v140 = type metadata accessor for Logger();
                      sub_100006654(v140, qword_10094BDF0);
                      v125 = v50;
                      v126 = Logger.logObject.getter();
                      v141 = static os_log_type_t.error.getter();

                      if (!os_log_type_enabled(v126, v141))
                      {
                        goto LABEL_110;
                      }

                      v128 = swift_slowAlloc();
                      v129 = swift_slowAlloc();
                      *v128 = 138412290;
                      *(v128 + 4) = v125;
                      *v129 = v125;
                      v59 = v125;
                      v130 = v141;
                      v131 = v126;
                      v132 = "Failed to get remObjectID from REMCDBaseSection {objectID: %@}";
LABEL_107:
                      _os_log_impl(&_mh_execute_header, v131, v130, v132, v128, 0xCu);
                      sub_1000050A4(v129, &unk_100938E70, &unk_100797230);

                      goto LABEL_108;
                    }

                    v96 = v95;
                    if ([v49 changeType] == 1)
                    {
                      v145 = REMObjectID.codable.getter();
                      sub_100379240(v166, v145);

                      goto LABEL_101;
                    }
                  }
                }

LABEL_114:
                v9 = &selRef_accountStatusWithCompletionHandler_;
                v142 = v164;
LABEL_115:
                if (++v47 == v142)
                {

                  v3 = v156;
                  goto LABEL_6;
                }
              }
            }

LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            if (_CocoaArrayWrapper.endIndex.getter())
            {
              sub_1003915C4(_swiftEmptyArrayStorage);
            }

            if (_CocoaArrayWrapper.endIndex.getter())
            {
              sub_1003915C4(_swiftEmptyArrayStorage);
            }

            if (_CocoaArrayWrapper.endIndex.getter())
            {
              sub_1003915C4(_swiftEmptyArrayStorage);
            }

            if (_CocoaArrayWrapper.endIndex.getter())
            {
              sub_1003915C4(_swiftEmptyArrayStorage);
            }

LABEL_140:
            REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
            return;
          }

LABEL_138:

LABEL_6:
          v7 = v161;
          if (v161 == v160)
          {

LABEL_149:

            REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();

            goto LABEL_150;
          }
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_25:

        goto LABEL_26;
      }
    }

    goto LABEL_149;
  }

LABEL_150:
}

id sub_1005362CC(Class isa, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v4 setAffectedStores:isa];

  [v4 setPredicate:a2];
  [v4 setResultType:2];
  return v4;
}

id sub_1005363D0(Class isa, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDManualSortHint();
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v4 setAffectedStores:isa];

  [v4 setPredicate:a2];
  [v4 setResultType:2];
  return v4;
}

char *sub_1005364C4(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v40 = a2;
  v41 = a3;
  v4 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v46 = &v36 - v6;
  v7 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  v9 = __chkstk_darwin(v7);
  v47 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v36 - v11;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = a1 & 0xC000000000000001;
    v37 = (v39 + 56);
    v43 = (v39 + 48);
    v49 = _swiftEmptyArrayStorage;
    v42 = (v39 + 32);
    v48 = v7;
    while (1)
    {
      if (v45)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v44 + 16))
        {
          goto LABEL_29;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = a1;
      v18 = [v14 remObjectID];
      if (v18)
      {
        v19 = v18;
        v20 = *v40;
        if (*(*v40 + 16) && (v21 = sub_10002B924(v18), (v22 & 1) != 0))
        {
          v23 = *(*(v20 + 56) + 8 * v21);
        }

        else
        {
          v23 = 0;
        }

        v24 = *v41;
        if (*(*v41 + 16) && (v25 = sub_10002B924(v19), (v26 & 1) != 0))
        {
          v27 = *(*(v24 + 56) + 8 * v25);
        }

        else
        {
          v27 = 0;
        }

        v28 = v15;
        v29 = v46;
        sub_1005384A4(v28, v23, v27, v46);

        v7 = v48;
      }

      else
      {
        v29 = v46;
        (*v37)(v46, 1, 1, v7);
        v19 = v15;
      }

      if ((*v43)(v29, 1, v7) == 1)
      {
        sub_1000050A4(v29, &qword_100940628, &unk_1007A6A20);
        a1 = v17;
      }

      else
      {
        v30 = *v42;
        v31 = v38;
        (*v42)(v38, v29, v7);
        v30(v47, v31, v7);
        a1 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_100365A24(0, *(v49 + 2) + 1, 1, v49);
        }

        v33 = *(v49 + 2);
        v32 = *(v49 + 3);
        if (v33 >= v32 >> 1)
        {
          v49 = sub_100365A24(v32 > 1, v33 + 1, 1, v49);
        }

        v34 = v49;
        *(v49 + 2) = v33 + 1;
        v7 = v48;
        v30(&v34[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33], v47, v48);
      }

      ++v13;
      if (v16 == i)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1005368D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for REMRemindersListDataView.SortingStyle.displayDate(_:) || v11 == enum case for REMRemindersListDataView.SortingStyle.priority(_:) || v11 == enum case for REMRemindersListDataView.SortingStyle.creationDate(_:) || v11 == enum case for REMRemindersListDataView.SortingStyle.title(_:))
  {
    sub_1005401EC(a2, _s9UtilitiesO12SortingStyleOMa);
    (*(v7 + 8))(a1, v6);
    (*(v7 + 96))(v10, v6);
    v12 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v12 - 8) + 32))(a3, v10, v12);
    _s9UtilitiesO12SortingStyleOMa();
    return swift_storeEnumTagMultiPayload();
  }

  if (v11 == enum case for REMRemindersListDataView.SortingStyle.default(_:))
  {
    (*(v7 + 8))(a1, v6);
    return sub_1001B1DA0(a2, a3);
  }

  if (v11 == enum case for REMRemindersListDataView.SortingStyle.manual(_:))
  {
    sub_1005401EC(a2, _s9UtilitiesO12SortingStyleOMa);
    (*(v7 + 8))(a1, v6);
    _s9UtilitiesO12SortingStyleOMa();
    return swift_storeEnumTagMultiPayload();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100536D54(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, objc_class *a7)
{
  v8 = v7;
  v137 = a6;
  v138 = a7;
  v127 = a5;
  v141 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v118 = *(v141 - 8);
  v13 = *(v118 + 64);
  __chkstk_darwin(v141);
  v140 = &v115 - v14;
  v120 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v119 = *(v120 - 8);
  v15 = *(v119 + 64);
  v16 = __chkstk_darwin(v120);
  v117 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v116 = &v115 - v18;
  v125 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v124 = *(v125 - 8);
  v19 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = (&v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = _s9UtilitiesO12SortingStyleOMa();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v122 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v121 = &v115 - v26;
  v27 = __chkstk_darwin(v25);
  v126 = (&v115 - v28);
  __chkstk_darwin(v27);
  v30 = &v115 - v29;
  v136 = a1;
  v134 = sub_1005393B4(a1);
  if (qword_1009363F8 != -1)
  {
LABEL_63:
    swift_once();
  }

  v145 = qword_100974F68;

  v31 = _swiftEmptyArrayStorage;
  sub_100271A80(_swiftEmptyArrayStorage);
  v152 = v145;
  v151 = _swiftEmptyArrayStorage;
  v32 = sub_10053CBE4(a3);
  sub_100271A80(v32);
  v139 = a3;
  sub_1005402B4(a3, v30, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 4)
  {
    sub_1005401EC(v30, _s9UtilitiesO12SortingStyleOMa);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_7;
  }

  sub_1005401EC(v30, _s9UtilitiesO12SortingStyleOMa);
  if (qword_1009367F0 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v31 = qword_100975340;

LABEL_7:
    v128 = v21;
    sub_100271A80(v31);
    v149 = v151;
    v150 = v152;
    v145 = v137;

    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v35 = sub_100235F88(Predicate);
    sub_100271A98(v35);
    v130 = Predicate;
    v36 = sub_100235FA0(Predicate);
    sub_100271A98(v36);
    sub_1000F5104(&qword_10093F5A8, &qword_10079DFD0);
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    v37 = v152;
    v38 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    a3 = [objc_allocWithZone(NSFetchRequest) init];
    v132 = v38;
    v39 = [swift_getObjCClassFromMetadata() entity];
    [a3 setEntity:v39];

    isa = v138;
    if (v138)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [a3 setAffectedStores:isa];

    [a3 setPredicate:a2];
    v145 = _swiftEmptySetSingleton;

    sub_100050AD0(v41);

    sub_1003FE014(v145);
    v131 = v8;

    v42 = Array._bridgeToObjectiveC()().super.isa;

    v133 = a3;
    [a3 setPropertiesToFetch:v42];

    v144 = v151;
    v8 = v151 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = v139;
    v135 = a4;
    v129 = v37;
    if (!v8)
    {
      break;
    }

    v148 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v8 & ~(v8 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v43 = 0;
      v30 = v148;
      v44 = v144;
      v142 = v144 & 0xFFFFFFFFFFFFFF8;
      v143 = v144 & 0xC000000000000001;
      while (1)
      {
        a2 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v143)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v43 >= *(v142 + 16))
          {
            goto LABEL_62;
          }

          v45 = *(v44 + 8 * v43 + 32);
        }

        a4 = v8;
        v46 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v47)
        {
          break;
        }

        v21 = v46;
        v48 = v47;

        v148 = v30;
        v50 = *(v30 + 2);
        v49 = *(v30 + 3);
        a3 = (v50 + 1);
        if (v50 >= v49 >> 1)
        {
          sub_100026EF4((v49 > 1), v50 + 1, 1);
          v30 = v148;
        }

        *(v30 + 2) = a3;
        v51 = &v30[16 * v50];
        *(v51 + 4) = v21;
        *(v51 + 5) = v48;
        ++v43;
        v8 = a4;
        v44 = v144;
        if (a2 == a4)
        {
          a4 = v135;
          a2 = v139;
          goto LABEL_24;
        }
      }

      v145 = 0;
      v146 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v112._object = 0x80000001007EC120;
      v112._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v112);
      v147 = v45;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      LODWORD(v114) = 0;
      v113 = 19;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_68;
    }

    __break(1u);
LABEL_66:
    swift_once();
  }

LABEL_24:
  v52 = swift_allocObject();
  v53 = Array._bridgeToObjectiveC()().super.isa;

  v54 = v133;
  [v133 setRelationshipKeyPathsForPrefetching:v53];

  v55 = sub_10053CE0C(a2, a4, 0);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v54 setSortDescriptors:v56];

  v57 = v131;
  v58 = NSManagedObjectContext.fetch<A>(_:)();
  if (v57)
  {

    swift_deallocUninitializedObject();
    return v55;
  }

  *(v52 + 16) = v58;

  v59 = v124;
  v60 = v123;
  v61 = v125;
  (*(v124 + 16))();
  v62 = (*(v59 + 88))(v60, v61);
  if (v62 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {

    (*(v59 + 8))(v60, v61);
LABEL_33:
    v63 = _swiftEmptySetSingleton;
LABEL_34:
    v64 = *(v52 + 16);

    v65 = sub_100155C54(v137, v63, v64);

    v66 = *(v52 + 16);
    *(v52 + 16) = v65;

    v67 = v126;
    sub_1005402B4(a2, v126, _s9UtilitiesO12SortingStyleOMa);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v68 = v67;
      v69 = *v67;
      v71 = v68[1];
      v70 = v68[2];
      v73 = v68[3];
      v72 = v68[4];

      if (v69)
      {

        v74 = v134;
        if (v134)
        {
          v75 = *(v52 + 16);

          v76 = sub_100155828(v69, v135, v74, v75);

          v77 = *(v52 + 16);
          *(v52 + 16) = v76;
        }

        a2 = v139;
      }
    }

    else
    {
      sub_1005401EC(v67, _s9UtilitiesO12SortingStyleOMa);
    }

    v78 = swift_allocObject();
    *(v78 + 16) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    v147 = &_swiftEmptyDictionarySingleton;
    v148 = &_swiftEmptyDictionarySingleton;
    v80 = *(v52 + 16);
    v81 = __chkstk_darwin(v79);
    v82 = v127;
    *(&v115 - 14) = a2;
    *(&v115 - 13) = v82;
    v84 = v135;
    v83 = v136;
    *(&v115 - 12) = v81;
    *(&v115 - 11) = v83;
    *(&v115 - 10) = v52;
    *(&v115 - 9) = v84;
    *(&v115 - 8) = &v150;
    *(&v115 - 7) = &v149;
    *(&v115 - 6) = v138;
    *(&v115 - 40) = 0;
    *(&v115 - 4) = v134;
    *(&v115 - 3) = v78;
    v113 = &v148;
    v114 = &v147;

    v143 = sub_1003DE68C(sub_10046D484, (&v115 - 16), v80);
    v137 = v79;

    v86 = v121;
    sub_1005402B4(a2, v121, _s9UtilitiesO12SortingStyleOMa);
    v87 = swift_getEnumCaseMultiPayload();
    v142 = v78;
    if (v87 > 2)
    {
      if (v87 != 3)
      {
        if (v87 == 4)
        {
          sub_1005401EC(v86, _s9UtilitiesO12SortingStyleOMa);
        }

        v92 = v143;
        goto LABEL_50;
      }
    }

    else if (v87 < 2)
    {
      v88 = v119;
      v89 = v116;
      v90 = v120;
      (*(v119 + 32))(v116, v86, v120);
      v91 = sub_100156950(v89, v135, v143);

      (*(v88 + 8))(v89, v90);
      v92 = v91;
LABEL_50:
      v93 = _swiftEmptyArrayStorage;
      v145 = _swiftEmptyArrayStorage;
      v94 = *(v92 + 16);
      v138 = 0;
      v143 = v92;
      if (v94)
      {
        v95 = *(v118 + 16);
        v96 = v92 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
        v97 = *(v118 + 72);
        v98 = (v118 + 8);
        do
        {
          v99 = v140;
          v100 = v141;
          v95(v140, v96, v141);
          REMSortableElement.element.getter();
          (*v98)(v99, v100);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v136 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v96 += v97;
          --v94;
        }

        while (v94);
        v93 = v145;
        v101 = v135;
      }

      else
      {
        v101 = v135;
      }

      swift_beginAccess();
      v102 = *(v52 + 16);
      *(v52 + 16) = v93;

      v103 = v122;
      sub_1005402B4(v139, v122, _s9UtilitiesO12SortingStyleOMa);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v104 = v119;
        v105 = v117;
        v106 = v120;
        (*(v119 + 32))(v117, v103, v120);
        v107 = *(v52 + 16);

        v108 = sub_1001561A0(v105, v101, v107);

        (*(v104 + 8))(v105, v106);
        v109 = *(v52 + 16);
        *(v52 + 16) = v108;
      }

      else
      {
        sub_1005401EC(v103, _s9UtilitiesO12SortingStyleOMa);
      }

      v110 = *(v52 + 16);

      v55 = sub_1005364C4(v111, &v148, &v147);

      return v55;
    }

    sub_1005401EC(v86, _s9UtilitiesO12SortingStyleOMa);
    v92 = v143;
    goto LABEL_50;
  }

  if (v62 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {

    (*(v59 + 96))(v60, v61);
    v145 = *v60;
    sub_1000F5104(&qword_100944F78, qword_1007AABF0);
    type metadata accessor for UUID();
    sub_10000CB48(&qword_100947CB0, &qword_100944F78, qword_1007AABF0);
    sub_10054026C(&qword_10093B410, &type metadata accessor for UUID);
    v63 = Sequence.mapToSet<A>(_:)();

    goto LABEL_34;
  }

  if (v62 == enum case for REMRemindersListDataView.ShowCompleted.off(_:) || v62 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {

    goto LABEL_33;
  }

LABEL_68:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100537F88(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _swiftEmptyArrayStorage;
  v57 = *(a1 + 16);
  if (!v57)
  {
    return v8;
  }

  v9 = 0;
  v50 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v51 = v4;
  v56 = a1 + v50;
  v10 = *(v5 + 72);
  v11 = (v5 + 16);
  v12 = _swiftEmptyArrayStorage;
  v13 = (v5 + 8);
  v55 = xmmword_1007953F0;
  v64 = v10;
  v62 = (v5 + 16);
  v52 = v7;
  v53 = (v5 + 8);
  while (1)
  {
    v58 = v9;
    v16 = REMRemindersListDataView.ReminderLite.subtasks.getter();
    if (v16)
    {
      v17 = v16;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v18 = swift_allocObject();
      *(v18 + 16) = v55;
      *(v18 + 32) = REMRemindersListDataView.ReminderLite.objectID.getter();
      v19 = *(v17 + 16);
      if (v19)
      {
        v59 = v12;
        v60 = v18;
        v63[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v20 = v51;
        v61 = v17;
        v21 = v17 + v50;
        v22 = *v11;
        do
        {
          v22(v7, v21, v20);
          REMRemindersListDataView.ReminderLite.objectID.getter();
          (*v13)(v7, v20);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v23 = *(v63[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v11 = v62;
          v24 = v64;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v21 += v24;
          --v19;
        }

        while (v19);

        v25 = v63[0];
        v12 = v59;
        v18 = v60;
      }

      else
      {

        v25 = _swiftEmptyArrayStorage;
      }

      v63[0] = v18;
      sub_100271578(v25);
      v27 = v63[0];
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v26 = swift_allocObject();
      *(v26 + 16) = v55;
      v27 = v26;
      *(v26 + 32) = REMRemindersListDataView.ReminderLite.objectID.getter();
    }

    v28 = v27 >> 62;
    v29 = v27 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v12 >> 62;
    v61 = v27;
    if (v12 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
      v32 = v48 + v29;
      if (__OFADD__(v48, v29))
      {
LABEL_41:
        __break(1u);
        return v8;
      }
    }

    else
    {
      v31 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v31 + v29;
      if (__OFADD__(v31, v29))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v60 = v29;
    if (!result)
    {
      break;
    }

    if (v30)
    {
      goto LABEL_26;
    }

    v33 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v32 > *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }

    v34 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v28)
    {
      goto LABEL_28;
    }

LABEL_21:
    v36 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v35 >> 1) - v34) < v60)
    {
      goto LABEL_45;
    }

    v59 = v12;
    v39 = v33 + 8 * v34 + 32;
    v54 = v33;
    if (v28)
    {
      v40 = v61;
      if (v36 < 1)
      {
        goto LABEL_47;
      }

      sub_10000CB48(&unk_10093F5D0, &qword_10093A578, &qword_1007A1E10);
      for (i = 0; i != v36; ++i)
      {
        sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
        v42 = sub_100011090(v63, i, v40);
        v44 = *v43;
        (v42)(v63, 0);
        *(v39 + 8 * i) = v44;
        v40 = v61;
      }
    }

    else
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_arrayInitWithCopy();
    }

    v12 = v59;
    v15 = v58;
    v11 = v62;
    v7 = v52;
    v13 = v53;
    if (v60 >= 1)
    {
      v45 = *(v54 + 16);
      v46 = __OFADD__(v45, v60);
      v47 = v45 + v60;
      if (v46)
      {
        goto LABEL_46;
      }

      *(v54 + 16) = v47;
    }

LABEL_4:
    v9 = v15 + 1;
    if (v9 == v57)
    {
      return v12;
    }
  }

  if (!v30)
  {
    v33 = v12 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v37 = *(v33 + 16);
    goto LABEL_27;
  }

LABEL_26:
  _CocoaArrayWrapper.endIndex.getter();
LABEL_27:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v12 = result;
  v33 = result & 0xFFFFFFFFFFFFFF8;
  v34 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (!v28)
  {
    goto LABEL_21;
  }

LABEL_28:
  v38 = v33;
  result = _CocoaArrayWrapper.endIndex.getter();
  v33 = v38;
  v36 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_3:

  v15 = v58;
  if (v60 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1005384A4@<X0>(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v8 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v34 - v10;
  v12 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  v14 = __chkstk_darwin(v12);
  v41 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v40 = v34 - v17;
  __chkstk_darwin(v16);
  v43 = v34 - v18;
  v19 = [a1 remObjectID];
  if (v19)
  {
    v20 = v19;
    if (a3)
    {
      v39 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 >> 62)
      {
        goto LABEL_33;
      }

      v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v34[0] = v20;
      v34[1] = a2;
      v35 = a1;
      v36 = a4;
      if (v21)
      {
        v20 = v21;
        a4 = 0;
        v44 = a3 & 0xC000000000000001;
        v22 = (v42 + 48);
        v23 = (v42 + 32);
        v24 = _swiftEmptyArrayStorage;
        v37 = v21;
        v38 = a3;
        a1 = v39;
        while (1)
        {
          if (v44)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            a2 = (a4 + 1);
            if (__OFADD__(a4, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (a4 >= a1[2])
            {
              goto LABEL_32;
            }

            v25 = *(a3 + 8 * a4 + 32);
            a2 = (a4 + 1);
            if (__OFADD__(a4, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              v21 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_5;
            }
          }

          sub_1005384A4();
          if ((*v22)(v11, 1, v12))
          {
            sub_1000050A4(v11, &qword_100940628, &unk_1007A6A20);
          }

          else
          {
            v26 = *v23;
            v27 = v41;
            (*v23)(v41, v11, v12);
            v28 = v40;
            v26(v40, v27, v12);
            v26(v43, v28, v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_100365A24(0, *(v24 + 2) + 1, 1, v24);
            }

            v30 = *(v24 + 2);
            v29 = *(v24 + 3);
            v31 = v42;
            if (v30 >= v29 >> 1)
            {
              v24 = sub_100365A24(v29 > 1, v30 + 1, 1, v24);
              v31 = v42;
            }

            *(v24 + 2) = v30 + 1;
            v26(&v24[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30], v43, v12);
            a3 = v38;
            a1 = v39;
            v20 = v37;
          }

          ++a4;
          if (a2 == v20)
          {
            goto LABEL_26;
          }
        }
      }

      v24 = _swiftEmptyArrayStorage;
LABEL_26:

      a1 = v35;
      a4 = v36;
      v20 = v34[0];
    }

    else
    {
      v24 = 0;
    }

    REMObjectID.codable.getter();
    [a1 completed];
    if (v24)
    {
      if (!*(v24 + 2))
      {
      }
    }

    REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtaskCount:subtasks:)();

    return (*(v42 + 56))(a4, 0, 1, v12);
  }

  else
  {

    v32 = *(v42 + 56);

    return v32(a4, 1, 1, v12);
  }
}

uint64_t sub_100538914(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = _s9UtilitiesO12SortingStyleOMa();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v62 = a4;
  sub_1005402B4(a4, a1, _s9UtilitiesO12SortingStyleOMa);
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v13 = sub_100717244(a3, 0, a2, qword_1009752F0);
  if (v4)
  {
    swift_getErrorValue();
    v14 = Error.isREMError(withErrorCode:)();
    *&v61 = a2;
    if (v14)
    {
      if (qword_1009363F0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_10094BDF0);
      v16 = a3;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v60 = v9;
        v20 = v19;
        v21 = swift_slowAlloc();
        v59 = a1;
        v22 = v21;
        aBlock[0] = v21;
        *v20 = 136446210;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = sub_10000668C(v23, v24, aBlock);

        *(v20 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v17, v18, "REMCDSmartList for pre-defined smart list type not found {pre-defined smart list type: %{public}s}", v20, 0xCu);
        sub_10000607C(v22);
        a1 = v59;

        v9 = v60;
      }
    }

    else
    {
      if (qword_1009363F0 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006654(v27, qword_10094BDF0);
      v28 = a3;
      swift_errorRetain();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v60 = v9;
        v32 = v31;
        v33 = swift_slowAlloc();
        v59 = a1;
        aBlock[0] = v33;
        *v32 = 136446466;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = sub_10000668C(v34, v35, aBlock);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2082;
        swift_getErrorValue();
        v37 = Error.rem_errorDescription.getter();
        v39 = sub_10000668C(v37, v38, aBlock);

        *(v32 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed to fetch REMCDSmartList for pre-defined smart list type {smart list type: %{public}s, error: %{public}s}", v32, 0x16u);
        swift_arrayDestroy();
        a1 = v59;

        v9 = v60;
      }
    }

    v26 = 0;
    a2 = v61;
  }

  else
  {
    v26 = v13;
  }

  if ((REMSmartListType.hasPredefinedManualOrderingObjectID.getter() & 1) == 0)
  {
    return v26;
  }

  sub_1005402B4(v62, v12, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1005401EC(v12, _s9UtilitiesO12SortingStyleOMa);
  if (EnumCaseMultiPayload != 5)
  {
    return v26;
  }

  v60 = v9;
  v41 = sub_10003A1B8();
  if (!v41)
  {
    sub_1005401EC(a1, _s9UtilitiesO12SortingStyleOMa);
    v56 = 0;
    v58 = 0uLL;
    v57 = 0uLL;
    goto LABEL_23;
  }

  v42 = v41;
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = a2;
  v46 = v45;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v47 = swift_allocObject();
  *(v47 + 16) = 1;
  *(v47 + 24) = v43;
  *(v47 + 32) = v46;
  *(v47 + 40) = v42;
  *(v47 + 48) = v44;
  *(v47 + 56) = &v64;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_10026A4B4;
  *(v48 + 24) = v47;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F6508;
  v49 = _Block_copy(aBlock);
  v50 = v42;
  v51 = v44;
  v52 = a1;
  v53 = v51;

  v54 = v53;
  a1 = v52;
  [v54 performBlockAndWait:v49];
  _Block_release(v49);

  sub_1005401EC(v52, _s9UtilitiesO12SortingStyleOMa);
  LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

  if ((v49 & 1) == 0)
  {
    v62 = v64;
    v61 = v65;
    v56 = v66;

    v57 = v61;
    v58 = v62;
LABEL_23:
    *a1 = v58;
    *(a1 + 16) = v57;
    *(a1 + 32) = v56;
    *(a1 + 40) = 0;
    swift_storeEnumTagMultiPayload();
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_100538FA4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BDF0);
  v1 = sub_100006654(v0, qword_10094BDF0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10053906C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  *(v0 + 32) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 40) = result;
  qword_100974F68 = v0;
  return result;
}

uint64_t sub_1005390E0()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100799D70;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 48) = result;
  qword_100974F70 = v0;
  return result;
}

uint64_t sub_100539164@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s9UtilitiesO12SortingStyleOMa();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005402B4(v2, v7, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = type metadata accessor for REMRemindersListDataView.SortingDirection();
      (*(*(v12 - 8) + 32))(a1, v7, v12);
      v10 = &enum case for REMRemindersListDataView.SortingStyle.title(_:);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1005401EC(v7, _s9UtilitiesO12SortingStyleOMa);
      }

      v10 = &enum case for REMRemindersListDataView.SortingStyle.manual(_:);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for REMRemindersListDataView.SortingDirection();
      (*(*(v9 - 8) + 32))(a1, v7, v9);
      v10 = &enum case for REMRemindersListDataView.SortingStyle.priority(_:);
    }

    else
    {
      v13 = type metadata accessor for REMRemindersListDataView.SortingDirection();
      (*(*(v13 - 8) + 32))(a1, v7, v13);
      v10 = &enum case for REMRemindersListDataView.SortingStyle.creationDate(_:);
    }
  }

  else
  {
    v11 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v11 - 8) + 32))(a1, v7, v11);
    v10 = &enum case for REMRemindersListDataView.SortingStyle.displayDate(_:);
  }

  v14 = *v10;
  v15 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

uint64_t sub_1005393B4(uint64_t a1)
{
  v3 = _s9UtilitiesO12SortingStyleOMa();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1005402B4(v1, v6, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 4)
  {
    sub_1005401EC(v6, _s9UtilitiesO12SortingStyleOMa);
    return 0;
  }

  if (EnumCaseMultiPayload != 4)
  {
    return 0;
  }

  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  v12 = v6[5];
  sub_100524898(*v6);
  if (!v12)
  {
    result = sub_10053C9CC();
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007953F0;
  *(v13 + 32) = v12;
  v14 = v12;
  v15 = sub_10000F8A4(v13, 0, 6u);

  if (qword_1009363E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v17 = [objc_allocWithZone(NSFetchRequest) init];
  v18 = [swift_getObjCClassFromMetadata() entity];
  [v17 setEntity:v18];

  [v17 setAffectedStores:0];
  [v17 setPredicate:v15];
  v36 = _swiftEmptySetSingleton;

  sub_100010864(v19);

  sub_1002137C0(v36);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setPropertiesToFetch:isa];

  v21 = NSManagedObjectContext.fetch<A>(_:)();
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_27:

    return 0;
  }

  v33 = v21;
  v34 = _CocoaArrayWrapper.endIndex.getter();
  v21 = v33;
  if (!v34)
  {
    goto LABEL_27;
  }

LABEL_15:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v24 = *(v21 + 32);
  }

  v15 = v24;

  v25 = [v15 remObjectID];
  if (!v25 || (v26 = v25, sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr), v14 = v14, v27 = static NSObject.== infix(_:_:)(), v14, v26, (v27 & 1) == 0))
  {

    return 0;
  }

  sub_1006B038C();
  v14 = v28;
  v29 = type metadata accessor for RDManualSortIDCache();
  v16 = v29;
  if (qword_100936508 != -1)
  {
LABEL_30:
    v29 = swift_once();
  }

  v30 = qword_10094C220;
  __chkstk_darwin(v29);
  *(&v35 - 4) = v16;
  *(&v35 - 3) = v14;
  *(&v35 - 2) = v30;
  OS_dispatch_queue.sync<A>(execute:)();
  v31 = v36;
  type metadata accessor for RDManualSortIDAdapter();
  swift_allocObject();
  v32 = sub_100214ECC(v31, v14, 0);

  result = v32;
LABEL_12:
  v36 = 0;
  v23 = __chkstk_darwin(result);
  *(&v35 - 4) = v23;
  *(&v35 - 3) = a1;
  *(&v35 - 2) = &v36;
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (!v36)
  {
    sub_10038DB14(_swiftEmptyArrayStorage);
  }

  return v23;
}

void sub_100539C18(id *a1)
{
  v1 = [*a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_100539C70(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t isUniquelyReferenced_nonNull_native)
{
  v5 = v4;
  v10 = _s10PredicatesOMa(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      *&v76 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      goto LABEL_4;
    }

    goto LABEL_62;
  }

LABEL_58:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_62;
  }

  v72 = v10;
  v62 = _CocoaArrayWrapper.endIndex.getter();
  v10 = _swiftEmptyArrayStorage;
  if (v62)
  {
    v14 = v62;
    *&v76 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = v72;
    if ((v14 & 0x8000000000000000) == 0)
    {
LABEL_4:
      v71 = a2;
      v72 = v10;
      *&v69 = isUniquelyReferenced_nonNull_native;
      v70 = a3;
      v67 = v5;
      v15 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v16 = *(a1 + 8 * v15 + 32);
        }

        v17 = v16;
        ++v15;
        v18 = [v16 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v19 = *(v76 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v14 != v15);
      v10 = v76;
      isUniquelyReferenced_nonNull_native = v69;
      goto LABEL_10;
    }

    __break(1u);
LABEL_62:
    sub_10038E654(_swiftEmptyArrayStorage);
    return;
  }

  while (2)
  {
    v70 = a3;
    v71 = a2;
    v67 = v5;
LABEL_10:
    v20 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
    *v13 = v10;
    v21 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v21 - 8) + 16))(&v13[v20], v71, v21);
    swift_storeEnumTagMultiPayload();
    v22 = sub_100043AA8();
    sub_1005401EC(v13, _s10PredicatesOMa);
    v72 = v22;
    v23 = sub_1005362CC(isUniquelyReferenced_nonNull_native, v22);
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v24 = swift_allocObject();
    v69 = xmmword_100791300;
    *(v24 + 16) = xmmword_100791300;
    v25 = objc_opt_self();
    v26 = [v25 expressionForEvaluatedObject];
    *(v24 + 56) = sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
    *(v24 + 32) = v26;
    v27 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v29 = [v25 expressionForFunction:v27 arguments:isa];

    v30 = [objc_allocWithZone(NSExpressionDescription) init];
    v71 = v29;
    [v30 setExpression:v29];
    v31 = v30;
    v32 = String._bridgeToObjectiveC()();
    [v31 setName:v32];

    [v31 setExpressionResultType:300];
    [v23 setReturnsObjectsAsFaults:0];
    v33 = swift_allocObject();
    *(v33 + 16) = v69;
    *(v33 + 56) = &type metadata for String;
    strcpy((v33 + 32), "parentReminder");
    *(v33 + 47) = -18;
    v34 = Array._bridgeToObjectiveC()().super.isa;
    a3 = 0xEE007265646E696DLL;

    [v23 setPropertiesToGroupBy:v34];

    isUniquelyReferenced_nonNull_native = 0x6552746E65726170;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100791340;
    *(v35 + 56) = &type metadata for String;
    strcpy((v35 + 32), "parentReminder");
    *(v35 + 47) = -18;
    *(v35 + 88) = sub_1000060C8(0, &qword_100939F48, NSExpressionDescription_ptr);
    *(v35 + 64) = v31;
    v36 = v31;
    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v23 setPropertiesToFetch:v37];

    [v23 setResultType:2];
    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v38 = v67;
    v39 = NSManagedObjectContext.fetch<A>(_:)();
    if (v38)
    {

      return;
    }

    v65 = v36;
    v67 = 0;
    v78 = &_swiftEmptyDictionarySingleton;
    v13 = (v39 >> 62);
    a2 = v39;
    v66 = v23;
    if (v39 >> 62)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = 0x746E756F63;
    v5 = v71;
    sub_1000F5104(&qword_10094BE08, qword_1007B0458);
    Dictionary.reserveCapacity(_:)(v40);
    if (v13)
    {
      v41 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v72;
      v70 = v41;
      if (!v41)
      {
LABEL_55:

        return;
      }
    }

    else
    {
      v10 = v72;
      v70 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v70)
      {
        goto LABEL_55;
      }
    }

    v42 = 0;
    v68 = a2 & 0xFFFFFFFFFFFFFF8;
    *&v69 = a2 & 0xC000000000000001;
    v64 = a2;
    while (1)
    {
      if (v69)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v42 >= *(v68 + 16))
        {
          goto LABEL_57;
        }

        v43 = *(a2 + 8 * v42 + 32);
      }

      v10 = v43;
      v5 = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      *&v74 = 0x746E756F63;
      *(&v74 + 1) = 0xE500000000000000;
      v13 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v44 = [v10 __swift_objectForKeyedSubscript:v13];
      swift_unknownObjectRelease();
      if (v44)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      if (*(&v75 + 1))
      {
        break;
      }

      sub_1000050A4(&v76, &qword_100939ED0, &qword_100791B10);
LABEL_44:
      v10 = v72;
LABEL_45:
      ++v42;
      v57 = v5 == v70;
      v5 = v71;
      if (v57)
      {
        goto LABEL_55;
      }
    }

    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_44;
    }

    v45 = v73;
    v46 = [v73 integerValue];

    if (v46 <= 0)
    {
      goto LABEL_41;
    }

    strcpy(&v74, "parentReminder");
    HIBYTE(v74) = -18;
    v13 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v47 = [v10 __swift_objectForKeyedSubscript:v13];
    swift_unknownObjectRelease();
    if (v47)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (!*(&v75 + 1))
    {

      sub_1000050A4(&v76, &qword_100939ED0, &qword_100791B10);
      goto LABEL_43;
    }

    v48 = sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_41:

LABEL_43:
      a1 = 0x746E756F63;
      goto LABEL_44;
    }

    v63 = v48;
    v13 = v73;
    v49 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v76 = v49;
    a2 = sub_100363FF4(v13);
    v51 = v49[2];
    v52 = (v50 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v54 = v50;
  if (v49[3] >= v53)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003739EC();
    }
  }

  else
  {
    sub_10036AF34(v53, isUniquelyReferenced_nonNull_native);
    v55 = sub_100363FF4(v13);
    if ((v54 & 1) != (v56 & 1))
    {
      goto LABEL_67;
    }

    a2 = v55;
  }

  isUniquelyReferenced_nonNull_native = 0x6552746E65726170;
  v58 = v76;
  if (v54)
  {
    *(*(v76 + 56) + 8 * a2) = v46;

LABEL_54:
    a3 = 0xEE007265646E696DLL;
    a1 = 0x746E756F63;
    v10 = v72;
    a2 = v64;
    v78 = v58;
    goto LABEL_45;
  }

  *(v76 + 8 * (a2 >> 6) + 64) |= 1 << a2;
  *(v58[6] + 8 * a2) = v13;
  *(v58[7] + 8 * a2) = v46;

  v59 = v58[2];
  v60 = __OFADD__(v59, 1);
  v61 = v59 + 1;
  if (!v60)
  {
    v58[2] = v61;
    goto LABEL_54;
  }

  __break(1u);
LABEL_67:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10053A630(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>, unint64_t *a9, objc_class *a10, char a11, uint64_t a12, uint64_t a13)
{
  v188 = a7;
  v189 = a6;
  v193 = a5;
  v194 = a4;
  v17 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v178 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v177 = &v171 - v23;
  __chkstk_darwin(v22);
  v174 = &v171 - v24;
  v180 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v181 = *(v180 - 8);
  v25 = *(v181 + 64);
  v26 = __chkstk_darwin(v180);
  v173 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v176 = &v171 - v29;
  __chkstk_darwin(v28);
  v179 = &v171 - v30;
  v184 = _s9UtilitiesO12SortingStyleOMa();
  v31 = *(*(v184 - 8) + 64);
  v32 = __chkstk_darwin(v184);
  v175 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v183 = &v171 - v35;
  __chkstk_darwin(v34);
  v182 = (&v171 - v36);
  v186 = _s10PredicatesOMa(0);
  v37 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v187 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v40 = *(Subtasks - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(Subtasks);
  v43 = &v171 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a1;
  v45 = [v44 remObjectID];
  if (!v45)
  {
    (*(v18 + 56))(a8, 1, 1, v17);
    return;
  }

  v196 = v45;
  v190 = v18;
  v192 = v17;
  v195 = a8;
  v197 = v44;
  v46 = sub_10053BBF8(a2);
  v48 = v47;
  (*(v40 + 16))(v43, a3, Subtasks);
  v49 = (*(v40 + 88))(v43, Subtasks);
  v191 = v48;
  if (v49 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
  {
    v185 = v46;
    v50 = 0;
    v51 = 0;
    v52 = 1;
LABEL_4:
    v53 = v195;
LABEL_5:
    v54 = v196;
    sub_10031E0C4(v50, v52, v54);
    v55 = v54;
    sub_10031E750(v51, v55);
    v56 = v197;
    v199 = v197;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v57 = v56;
    REMSortableElement.init(element:sortIndex:)();

    (*(v190 + 56))(v53, 0, 1, v192);
    return;
  }

  if (v49 == enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    v172 = a2;
    v58 = v194;
    swift_beginAccess();
    v59 = v197;
    if (v58[2])
    {
      v60 = v58[2];
      v61 = v198;
      goto LABEL_10;
    }

    v82 = v189;
    swift_beginAccess();
    v83 = *(v82 + 16);

    v84 = v198;
    v85 = sub_10053FB3C(v193, v83);
    v61 = v84;
    if (!v84)
    {
      v60 = v85;

      swift_beginAccess();
      v92 = v58[2];
      v58[2] = v60;

      v59 = v197;
LABEL_10:

      if ((sub_100240EEC(v196, v60) & 1) == 0)
      {
        v185 = v46;

        v50 = 0;
        v51 = 0;
        v52 = 1;
        goto LABEL_4;
      }

      v62 = *a9;
      v199 = 0;

      v63 = [v59 remObjectIDWithError:&v199];
      v64 = v199;
      if (!v63)
      {
        v91 = v199;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        return;
      }

      v65 = v63;
      v198 = a10;
      v194 = v60;
      v185 = v46;
      v66 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
      v67 = *(v66 + 48);
      v68 = *(v66 + 64);
      v69 = v187;
      *v187 = v65;
      v70 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      v71 = v188;
      (*(*(v70 - 8) + 16))(&v69[v67], v188, v70);
      v69[v68] = a11 & 1;
      swift_storeEnumTagMultiPayload();
      v72 = v64;
      v73 = sub_100043AA8();
      if (qword_1009363F8 != -1)
      {
        swift_once();
      }

      v74 = sub_100050654(qword_100974F68, v62, v198, v73);

      sub_10053CE0C(v172, v71, 0);
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v74 setSortDescriptors:isa];

      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v51 = NSManagedObjectContext.fetch<A>(_:)();

      v53 = v195;
      if (v61)
      {

        sub_1005401EC(v187, _s10PredicatesOMa);
        return;
      }

      sub_1005401EC(v187, _s10PredicatesOMa);
      if (v51 >> 62)
      {
        v94 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v94 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v95 = v197;
      v96 = v183;
      v97 = v182;
      if (!v94)
      {
LABEL_51:
        if (v51 >> 62)
        {
          v50 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v50 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1005402B4(v172, v96, _s9UtilitiesO12SortingStyleOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload == 3)
          {

            v120 = v181;
            v121 = v176;
            v122 = v180;
            (*(v181 + 32))(v176, v96, v180);
            v123 = sub_1001561A0(v121, v188, v51);

            (*(v120 + 8))(v121, v122);
            v52 = 0;
            v51 = v123;
            goto LABEL_5;
          }

          if (EnumCaseMultiPayload != 4)
          {
LABEL_65:

            v52 = 0;
            goto LABEL_5;
          }
        }

        else if (EnumCaseMultiPayload < 2)
        {
          v115 = v181;
          v116 = v179;
          v117 = v96;
          v118 = v180;
          (*(v181 + 32))(v179, v117, v180);
          v119 = [v95 completed];
          if (v119)
          {
            (*(v115 + 8))(v116, v118);
            goto LABEL_65;
          }

          __chkstk_darwin(v119);
          v124 = v172;
          *(&v171 - 2) = v172;

          sub_10024CAF0(sub_10054024C, &v171 - 4, v51);
          v126 = v125;

          v127 = v191;
          if (!*(v126 + 2))
          {
            (*(v181 + 8))(v179, v180);

            goto LABEL_65;
          }

          v128 = v175;
          sub_1005402B4(v124, v175, _s9UtilitiesO12SortingStyleOMa);
          v129 = swift_getEnumCaseMultiPayload();
          sub_1005401EC(v128, _s9UtilitiesO12SortingStyleOMa);
          v187 = v126;
          if (v129 == 1)
          {
            v126 = sub_100156950(v179, v188, v126);
          }

          else
          {
          }

          v130 = *(v126 + 2);
          v51 = _swiftEmptyArrayStorage;
          v198 = v61;
          v186 = v50;
          v188 = v126;
          if (v130)
          {
            v199 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v193 = *(v190 + 16);
            v131 = &v126[(*(v190 + 80) + 32) & ~*(v190 + 80)];
            v189 = *(v190 + 72);
            v132 = (v190 + 8);
            v133 = v192;
            v134 = v174;
            do
            {
              v193(v134, v131, v133);
              REMSortableElement.element.getter();
              (*v132)(v134, v133);
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v135 = v199[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v131 += v189;
              --v130;
            }

            while (v130);
            v51 = v199;
            v53 = v195;
            v127 = v191;
            v50 = v186;
            v126 = v188;
          }

          v136 = v180;
          v137 = v181;
          if ((v127 & 1) == 0)
          {
            (*(v181 + 8))(v179, v180);

            v191 = 0;
            v52 = 0;
            goto LABEL_5;
          }

          v138 = v173;
          v139 = v179;
          (*(v181 + 16))(v173, v179, v180);
          v140 = (*(v137 + 88))(v138, v136);
          if (v140 == enum case for REMRemindersListDataView.SortingDirection.ascending(_:))
          {
            (*(v137 + 8))(v139, v136);

            v141 = *(v126 + 2);
            if (v141)
            {
              v193 = v51;
              v194 = *(v190 + 16);
              v142 = &v126[(*(v190 + 80) + 32) & ~*(v190 + 80)];
              v143 = *(v190 + 72);
              v144 = (v190 + 8);
              v145 = _swiftEmptyArrayStorage;
              v146 = v192;
              do
              {
                v147 = v177;
                (v194)(v177, v142, v146);
                v148 = REMSortableElement.sortIndex.getter();
                v149 = v146;
                v151 = v150;
                (*v144)(v147, v149);
                if ((v151 & 1) == 0)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v145 = sub_100366E3C(0, *(v145 + 2) + 1, 1, v145);
                  }

                  v153 = *(v145 + 2);
                  v152 = *(v145 + 3);
                  if (v153 >= v152 >> 1)
                  {
                    v145 = sub_100366E3C((v152 > 1), v153 + 1, 1, v145);
                  }

                  *(v145 + 2) = v153 + 1;
                  *&v145[8 * v153 + 32] = v148;
                }

                v142 += v143;
                --v141;
                v146 = v192;
              }

              while (v141);

              v53 = v195;
              v51 = v193;
              v50 = v186;
            }

            else
            {

              v145 = _swiftEmptyArrayStorage;
            }

            v169 = sub_1002656D4(v145);
LABEL_99:
            v185 = v169;
            v191 = v170;

            v52 = 0;
            goto LABEL_5;
          }

          v154 = v190;
          if (v140 == enum case for REMRemindersListDataView.SortingDirection.descending(_:))
          {
            (*(v181 + 8))(v139, v136);

            v155 = *(v188 + 16);
            if (v155)
            {
              v193 = v51;
              v157 = *(v154 + 16);
              v156 = v154 + 16;
              v194 = v157;
              v158 = v188 + ((*(v156 + 64) + 32) & ~*(v156 + 64));
              v159 = *(v156 + 56);
              v160 = _swiftEmptyArrayStorage;
              v161 = v192;
              do
              {
                v162 = v178;
                (v194)(v178, v158, v161);
                v163 = REMSortableElement.sortIndex.getter();
                v164 = v161;
                v166 = v165;
                (*(v156 - 8))(v162, v164);
                if ((v166 & 1) == 0)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v160 = sub_100366E3C(0, *(v160 + 2) + 1, 1, v160);
                  }

                  v168 = *(v160 + 2);
                  v167 = *(v160 + 3);
                  if (v168 >= v167 >> 1)
                  {
                    v160 = sub_100366E3C((v167 > 1), v168 + 1, 1, v160);
                  }

                  *(v160 + 2) = v168 + 1;
                  *&v160[8 * v168 + 32] = v163;
                }

                v158 += v159;
                --v155;
                v161 = v192;
              }

              while (v155);

              v53 = v195;
              v51 = v193;
              v50 = v186;
            }

            else
            {

              v160 = _swiftEmptyArrayStorage;
            }

            v169 = sub_100265718(v160);
            goto LABEL_99;
          }

          goto LABEL_103;
        }

        sub_1005401EC(v96, _s9UtilitiesO12SortingStyleOMa);
        v52 = 0;
        goto LABEL_5;
      }

      sub_1005402B4(v172, v182, _s9UtilitiesO12SortingStyleOMa);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1005401EC(v97, _s9UtilitiesO12SortingStyleOMa);
        goto LABEL_51;
      }

      v98 = v97;
      v99 = *v97;
      v101 = v98[1];
      v100 = v98[2];
      v102 = v98[3];
      v103 = v98[4];

      if (a12)
      {
        v198 = 0;

        v95 = v197;
        v104 = [v197 remObjectID];
        if (v104)
        {
          v105 = v104;
          v189 = v102;
          v187 = v100;
          v193 = v51;
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1007953F0;
          *(inited + 32) = v95;
          v107 = v95;
          v108 = sub_1001A574C(inited);
          swift_setDeallocating();
          v109 = *(inited + 16);
          swift_arrayDestroy();
          v110 = sub_1002143F0(v108);

          v111 = sub_100353598(v105, v110);

          if (v111)
          {
            v51 = v193;
            if (v99 && (v112 = sub_1002CE6A8(v111, v101), , , , , , v112))
            {
              v53 = v195;
              if (*(v112 + 16))
              {
                v113 = sub_100155828(v112, v188, a12, v51);

                v51 = v113;
              }

              else
              {
              }

              v61 = v198;
            }

            else
            {

              v61 = v198;
              v53 = v195;
            }

            goto LABEL_49;
          }

          sub_100524898(v99);

          v95 = v197;
          v61 = v198;
          v53 = v195;
          v51 = v193;
        }

        else
        {
          sub_100524898(v99);

          v61 = v198;
          v53 = v195;
        }

LABEL_50:
        v96 = v183;
        goto LABEL_51;
      }

      sub_100524898(v99);
      v53 = v195;
LABEL_49:
      v95 = v197;
      goto LABEL_50;
    }

LABEL_25:

    return;
  }

  if (v49 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
  {
    swift_beginAccess();
    v53 = v195;
    if (*(a13 + 16))
    {
      v76 = *(a13 + 16);
    }

    else
    {
      v86 = v189;
      swift_beginAccess();
      v87 = *(v86 + 16);

      v89 = v198;
      sub_100539C70(v88, v188, v193, a10);
      if (v89)
      {
        goto LABEL_25;
      }

      v76 = v90;

      swift_beginAccess();
      v93 = *(a13 + 16);
      *(a13 + 16) = v76;
    }

    v77 = [v197 objectID];
    v78 = v77;
    v79 = *(v76 + 16);
    v185 = v46;
    if (v79 && (v80 = sub_100363FF4(v77), (v81 & 1) != 0))
    {
      v50 = *(*(v76 + 56) + 8 * v80);

      v52 = 0;
      v51 = 0;
    }

    else
    {

      v50 = 0;
      v51 = 0;
      v52 = 1;
    }

    goto LABEL_5;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_103:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

id sub_10053BBF8(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = _s9UtilitiesO12SortingStyleOMa();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005402B4(a1, v18, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v20 = 0.0;
    if ((EnumCaseMultiPayload - 2) >= 3)
    {
      return *&v20;
    }

    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    v21 = [v1 displayDateDate];
    if (v21)
    {
      v22 = v21;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v4 + 56))(v12, v23, 1, v3);
    sub_10012F7FC(v12, v14);
    if (!(*(v4 + 48))(v14, 1, v3))
    {
      (*(v4 + 16))(v7, v14, v3);
      sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
      Date.timeIntervalSinceReferenceDate.getter();
      v26 = v25;
      (*(v4 + 8))(v7, v3);
      v20 = v26;
      goto LABEL_15;
    }

    sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
    goto LABEL_13;
  }

  if ([v1 priority] < 1)
  {
LABEL_13:
    v20 = 0.0;
    goto LABEL_15;
  }

  result = [v1 priority];
  if (!__OFSUB__(10, result))
  {
    v20 = (10 - result);
LABEL_15:
    sub_1005401EC(v18, _s9UtilitiesO12SortingStyleOMa);
    return *&v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_10053BF40(id *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10053BBF8(a2);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  return REMSortableElement.init(element:sortIndex:)();
}

uint64_t sub_10053BFD0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t *a6)
{
  v83 = a6;
  *&v85 = a2;
  v10 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v81 = *(v10 - 8);
  v11 = *(v81 + 64);
  __chkstk_darwin(v10);
  v80 = &v76 - v12;
  type metadata accessor for REMCDManualSortHint();
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v13 = qword_1009752F0;
  v82 = v10;
  v79 = qword_1009752F0;
  if (a1 != 1 || (, v14._countAndFlagsBits = v85, v14._object = a3, (v15 = REMSmartListType.init(stringValue:)(v14)) == 0))
  {
LABEL_12:

    v25 = a4;
    v26 = [a5 persistentStoreOfAccountWithAccountID:v25];
    if (v26)
    {
      v27 = v26;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1007953F0;
      *(v28 + 32) = v27;
    }

    else
    {
      v28 = 0;
    }

    *&v84 = a1;
    v29 = sub_1000398EC(a1, v85, a3, a4);
    v30 = [objc_allocWithZone(NSFetchRequest) init];
    v31 = [swift_getObjCClassFromMetadata() entity];
    [v30 setEntity:v31];

    if (v28)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v32.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v32.super.isa = 0;
    }

    [v30 setAffectedStores:v32.super.isa];

    [v30 setPredicate:v29];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007953F0;
    if (qword_100935AA8 != -1)
    {
      swift_once();
    }

    v34 = qword_100974C08;
    *(v33 + 32) = qword_100974C08;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v35 = v34;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 setSortDescriptors:isa];

    v37 = NSManagedObjectContext.fetch<A>(_:)();
    v38 = v84;
    if (v37 >> 62)
    {
      v66 = v37;
      v67 = _CocoaArrayWrapper.endIndex.getter();
      v37 = v66;
      if (v67)
      {
        goto LABEL_22;
      }
    }

    else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      if ((v37 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v39 = *(v37 + 32);
      }

      v23 = v39;

      if (v38 == 1 && (v40 = [v23 remObjectID]) != 0)
      {
        v41 = v40;
        v42 = [v23 objectID];
        v43 = type metadata accessor for RDPredefinedObjectKey();
        v44 = objc_allocWithZone(v43);
        *&v44[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v25;
        *&v44[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v41;
        v86.receiver = v44;
        v86.super_class = v43;
        v78 = v25;
        v77 = v41;
        v45 = objc_msgSendSuper2(&v86, "init");
        v46 = v81;
        v47 = v80;
        (*(v81 + 104))(v80, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v82);
        v48 = swift_allocObject();
        *(v48 + 16) = v42;
        *(v48 + 24) = v45;
        v49 = v42;
        v50 = v45;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        (*(v46 + 8))(v47, v82);
      }

      else
      {
      }

      goto LABEL_29;
    }

    v65 = 0;
    v84 = 0u;
    v85 = 0u;
    goto LABEL_37;
  }

  v16 = v15;
  v17 = sub_100139BE4(v15, a4, v13);
  if (!v17)
  {

    goto LABEL_12;
  }

  v18 = v17;
  *&v87[0] = 0;
  v19 = [a5 existingObjectWithID:v17 error:v87];
  if (!v19)
  {
    v24 = *&v87[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_12;
  }

  v20 = v19;
  v21 = *&v87[0];

  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    goto LABEL_12;
  }

  v23 = v22;
LABEL_29:
  v51 = [objc_opt_self() sharedConfiguration];
  v52 = [v51 manualSortHintLastAccessedUpdatePolicy];

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v56._countAndFlagsBits = v53;
  v56._object = v55;
  v57 = _findStringSwitchCase(cases:string:)(&off_1008DD3F0, v56);

  if (v57 >= 3)
  {
    LOBYTE(v57) = 2;
  }

  v58 = [v23 remObjectID];
  if (v58)
  {
    v59 = v58;
    v60 = [v58 description];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;
  }

  else
  {
    v63 = 0xE300000000000000;
    v61 = 7104878;
  }

  v64 = swift_allocObject();
  *(v64 + 16) = v61;
  *(v64 + 24) = v63;
  sub_1002D74D4(1, v57, sub_10013AF94, v64);

  v30 = v23;
  sub_100226C14(v87);
  v84 = v87[1];
  v85 = v87[0];
  v65 = v88;

LABEL_37:
  v68 = v83;
  v69 = *v83;
  v70 = v83[1];
  v71 = v83[2];
  v72 = v83[3];
  v73 = v83[4];
  v74 = v84;
  *v83 = v85;
  *(v68 + 1) = v74;
  v68[4] = v65;
  return sub_100524898(v69);
}

uint64_t sub_10053C9CC()
{
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v0 = sub_100013674(qword_1009752E8);
  if (v0)
  {
    v1 = v0;
    sub_1006B038C();
    v3 = v2;
    v4 = type metadata accessor for RDManualSortIDCache();
    if (qword_100936508 != -1)
    {
      v4 = swift_once();
    }

    __chkstk_darwin(v4);
    OS_dispatch_queue.sync<A>(execute:)();
    type metadata accessor for RDManualSortIDAdapter();
    swift_allocObject();
    v5 = sub_100214ECC(v11, v3, 0);
  }

  else
  {
    if (qword_1009363F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094BDF0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No primary active CloudKit account found when trying to fetch reminders in REMRemindersListDataView invocation with .manualWithSortHint sorting style", v9, 2u);
    }

    return 0;
  }

  return v5;
}

void *sub_10053CBE4(uint64_t a1)
{
  v2 = _s9UtilitiesO12SortingStyleOMa();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005402B4(a1, v5, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      goto LABEL_9;
    }

    sub_1005401EC(v5, _s9UtilitiesO12SortingStyleOMa);
    return _swiftEmptyArrayStorage;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_9:
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007953F0;
    *(v7 + 32) = swift_getKeyPath();
    sub_1005401EC(v5, _s9UtilitiesO12SortingStyleOMa);
    return v7;
  }

  if (EnumCaseMultiPayload != 4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1005401EC(v5, _s9UtilitiesO12SortingStyleOMa);
  if (qword_1009367E8 != -1)
  {
    swift_once();
  }

  v7 = qword_100975338;

  return v7;
}

uint64_t sub_10053CE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v83 = a2;
  v82 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v4 = *(v82 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v82);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v79 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v79 - v17;
  __chkstk_darwin(v16);
  v20 = &v79 - v19;
  v21 = _s9UtilitiesO12SortingStyleOMa();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005402B4(a1, v24, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v8 + 32))(v15, v24, v7);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1007953F0;
        (*(v8 + 104))(v18, enum case for REMRemindersListDataView.SortingDirection.descending(_:), v7);
        sub_10054026C(&qword_100939858, &type metadata accessor for REMRemindersListDataView.SortingDirection);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v27 = *(v8 + 8);
        v27(v18, v7);
        if (v86 == v85)
        {
          v28 = v80;
          if (qword_100936040 != -1)
          {
            swift_once();
          }

          v29 = &qword_100974DF0;
        }

        else
        {
          v28 = v80;
          if (qword_100936038 != -1)
          {
            swift_once();
          }

          v29 = &qword_100974DE8;
        }

        v49 = *v29;
        *(v26 + 32) = *v29;
        v86 = v26;
        if (v28)
        {
          v50 = v28;
        }

        else
        {
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_100796900;
          v58 = qword_100936048;
          v59 = v49;
          if (v58 != -1)
          {
            swift_once();
          }

          v60 = qword_100974DF8;
          *(v50 + 32) = qword_100974DF8;
          v61 = qword_100936030;
          v62 = v60;
          if (v61 != -1)
          {
            swift_once();
          }

          v49 = qword_100974DE0;
          *(v50 + 40) = qword_100974DE0;
        }

        v63 = v49;

        sub_100271560(v50);
        v64 = v15;
      }

      else
      {
        (*(v8 + 32))(v12, v24, v7);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v39 = swift_allocObject();
        v79 = xmmword_1007953F0;
        *(v39 + 16) = xmmword_1007953F0;
        (*(v8 + 104))(v18, enum case for REMRemindersListDataView.SortingDirection.descending(_:), v7);
        sub_10054026C(&qword_100939858, &type metadata accessor for REMRemindersListDataView.SortingDirection);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v27 = *(v8 + 8);
        v27(v18, v7);
        if (v86 == v85)
        {
          v40 = v80;
          if (qword_100936050 != -1)
          {
            swift_once();
          }

          v41 = &qword_100974E00;
        }

        else
        {
          v40 = v80;
          if (qword_100936048 != -1)
          {
            swift_once();
          }

          v41 = &qword_100974DF8;
        }

        v51 = *v41;
        *(v39 + 32) = *v41;
        v86 = v39;
        if (v40)
        {
          v52 = v40;
        }

        else
        {
          v52 = swift_allocObject();
          *(v52 + 16) = v79;
          v65 = qword_100936030;
          v66 = v51;
          if (v65 != -1)
          {
            swift_once();
          }

          v51 = qword_100974DE0;
          *(v52 + 32) = qword_100974DE0;
        }

        v67 = v51;

        sub_100271560(v52);
        v64 = v12;
      }

      v27(v64, v7);
      goto LABEL_69;
    }

    (*(v8 + 32))(v20, v24, v7);
    v86 = _swiftEmptyArrayStorage;
    (*(v8 + 104))(v18, enum case for REMRemindersListDataView.SortingDirection.descending(_:), v7);
    sub_10054026C(&qword_100939858, &type metadata accessor for REMRemindersListDataView.SortingDirection);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v34 = *(v8 + 8);
    v34(v18, v7);
    if (v85 == v84)
    {
      v35 = v80;
      if (qword_100936070 != -1)
      {
        swift_once();
      }

      v36 = qword_100974E20;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v77 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v35)
      {
LABEL_19:
        v37 = v35;
LABEL_41:

        sub_100271560(v37);
        v34(v20, v7);
LABEL_69:
        v31 = v81;
        v30 = v82;
        goto LABEL_70;
      }
    }

    else
    {
      v35 = v80;
      if (qword_100936068 != -1)
      {
        swift_once();
      }

      if (qword_100974E18)
      {
        v43 = qword_100974E18;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v78 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (v35)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (qword_1009363F0 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_100006654(v71, qword_10094BDF0);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "REMCDReminder.displayDateSortDescriptor should not be nil", v74, 2u);
        }

        if (v35)
        {
          goto LABEL_19;
        }
      }
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100796900;
    if (qword_100936048 != -1)
    {
      swift_once();
    }

    v44 = qword_100974DF8;
    *(v37 + 32) = qword_100974DF8;
    v45 = qword_100936030;
    v46 = v44;
    if (v45 != -1)
    {
      swift_once();
    }

    v47 = qword_100974DE0;
    *(v37 + 40) = qword_100974DE0;
    v48 = v47;
    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (v80)
    {
      v38 = v80;
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_100796900;
      if (qword_100936048 != -1)
      {
        swift_once();
      }

      v53 = qword_100974DF8;
      *(v38 + 32) = qword_100974DF8;
      v54 = qword_100936030;
      v55 = v53;
      if (v54 != -1)
      {
        swift_once();
      }

      v56 = qword_100974DE0;
      *(v38 + 40) = qword_100974DE0;
      v57 = v56;
    }

    v86 = v38;

    sub_1005401EC(v24, _s9UtilitiesO12SortingStyleOMa);
    goto LABEL_69;
  }

  v31 = v81;
  v30 = v82;
  if (EnumCaseMultiPayload == 4)
  {
    sub_1005401EC(v24, _s9UtilitiesO12SortingStyleOMa);
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007953F0;
    if (qword_100936048 != -1)
    {
      v75 = v32;
      swift_once();
      v32 = v75;
    }

    v33 = qword_100974DF8;
  }

  else
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007953F0;
    if (qword_100936030 != -1)
    {
      v76 = v32;
      swift_once();
      v32 = v76;
    }

    v33 = qword_100974DE0;
  }

  *(v32 + 32) = v33;
  v86 = v32;
  v42 = v33;
LABEL_70:
  (*(v4 + 16))(v31, v83, v30);
  v68 = (*(v4 + 88))(v31, v30);
  if (v68 == enum case for REMRemindersListDataView.ShowCompleted.after(_:) || v68 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v4 + 8))(v31, v30);
    return v86;
  }

  if (v68 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    return v86;
  }

  if (v68 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1007953F0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    *(v70 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    v85 = v70;
    sub_100271560(v86);
    return v85;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_10053DB98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v79 = a3;
  v9 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v16 = __chkstk_darwin(v15);
  v18 = &v76 - v17;
  __chkstk_darwin(v16);
  v82 = &v76 - v20;
  v96 = a1;
  if (a1 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v89 = v19;
  v78 = a5;
  v77 = a4;
  v21 = sub_1000F5104(&qword_10094BE10, qword_1007B0508);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = MutableOrderedSet.init(_:)();
  v26 = v82;
  v84 = *(a2 + 16);
  v86 = v24;
  if (!v84)
  {
    goto LABEL_34;
  }

  v28 = *(v10 + 16);
  v27 = v10 + 16;
  v97 = v28;
  v29 = *(v27 + 56);
  v80 = (*(v27 + 64) + 32) & ~*(v27 + 64);
  v83 = a2 + v80;
  v92 = v27;
  v95 = (v27 - 8);
  v30 = 0;
  *&v25 = 138543362;
  v88 = v25;
  v90 = v29;
  v91 = v9;
  v81 = v14;
  v85 = v18;
  while (1)
  {
    v97(v26, v83 + v29 * v30, v9);
    if (MutableOrderedSet.count.getter() >= v96)
    {
      break;
    }

    v35 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v98 = v35;
    v36 = MutableOrderedSet.contains(_:)();

    if (v36)
    {
      if (qword_1009363F0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094BDF0);
      v97(v14, v26, v9);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v38, v39))
      {

        v40 = *v95;
        (*v95)(v14, v9);
        v40(v26, v9);
        goto LABEL_6;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = v88;
      v33 = REMRemindersListDataView.ReminderLite.objectID.getter();
      v87 = v30;
      v34 = *v95;
      (*v95)(v14, v91);
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v38, v39, "Attempted to fetch duplicate initial reminders {reminderLite.objectID: %{public}@}", v31, 0xCu);
      sub_1000050A4(v32, &unk_100938E70, &unk_100797230);
      v26 = v82;

      v9 = v91;

      v34(v26, v9);
      v29 = v90;
    }

    else
    {
      v87 = v30;
      v41 = REMRemindersListDataView.ReminderLite.objectID.getter();
      v98 = v41;
      MutableOrderedSet.add(_:)();

      v42 = REMRemindersListDataView.ReminderLite.subtasks.getter();
      if (v42)
      {
        v43 = v42;
      }

      else
      {
        v43 = _swiftEmptyArrayStorage;
      }

      v94 = *(v43 + 16);
      if (v94)
      {
        v44 = 0;
        v45 = (v43 + v80);
        v93 = v43;
        while (v44 < *(v43 + 16))
        {
          v97(v18, v45, v9);
          if (MutableOrderedSet.count.getter() >= v96)
          {

            v58 = *v95;
            (*v95)(v18, v9);
            v26 = v82;
            v58(v82, v9);
            goto LABEL_32;
          }

          v48 = REMRemindersListDataView.ReminderLite.objectID.getter();
          v98 = v48;
          v49 = MutableOrderedSet.contains(_:)();

          if (v49)
          {
            v50 = v18;
            if (qword_1009363F0 != -1)
            {
              swift_once();
            }

            v51 = type metadata accessor for Logger();
            sub_100006654(v51, qword_10094BDF0);
            v52 = v89;
            v97(v89, v50, v9);
            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              *v55 = v88;
              v57 = REMRemindersListDataView.ReminderLite.objectID.getter();
              v47 = *v95;
              (*v95)(v52, v91);
              *(v55 + 4) = v57;
              *v56 = v57;
              _os_log_impl(&_mh_execute_header, v53, v54, "Attempted to fetch duplicate initial reminders {subtask.objectID: %{public}@}", v55, 0xCu);
              sub_1000050A4(v56, &unk_100938E70, &unk_100797230);

              v9 = v91;

              v18 = v85;
              v47(v85, v9);
            }

            else
            {

              v47 = *v95;
              (*v95)(v52, v9);
              v47(v50, v9);
              v18 = v50;
            }

            v29 = v90;
          }

          else
          {
            v46 = REMRemindersListDataView.ReminderLite.objectID.getter();
            v98 = v46;
            MutableOrderedSet.add(_:)();

            v47 = *v95;
            (*v95)(v18, v9);
          }

          ++v44;
          v45 += v29;
          v43 = v93;
          if (v94 == v44)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v60 = _CocoaArrayWrapper.endIndex.getter();
        if (!v60)
        {
          goto LABEL_51;
        }

LABEL_36:
        v61 = 0;
        while (1)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v63 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v61 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v62 = *(v43 + 8 * v61 + 32);
            v63 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              goto LABEL_48;
            }
          }

          v64 = v62;
          sub_1005E2A38(v64);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (v98[2] >= v98[3] >> 1)
          {
            v66 = v98[2];
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v65 = v98;
          ++v61;
          if (v63 == v60)
          {
            goto LABEL_52;
          }
        }
      }

      v47 = *v95;
LABEL_30:
      v26 = v82;
      v47(v82, v9);

LABEL_32:
      v14 = v81;
    }

    v30 = v87;
LABEL_6:
    if (++v30 == v84)
    {
      goto LABEL_34;
    }
  }

  (*v95)(v26, v9);
LABEL_34:
  v59 = MutableOrderedSet.array.getter();
  v43 = v59;
  v98 = _swiftEmptyArrayStorage;
  if (v59 >> 62)
  {
    goto LABEL_50;
  }

  v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v60)
  {
    goto LABEL_36;
  }

LABEL_51:
  v65 = _swiftEmptyArrayStorage;
LABEL_52:

  v67 = sub_1003EBAD0();
  v68 = v79;
  sub_1005EC0F4(v65, 0, 1, v67, v78);
  v70 = v69;

  v71 = [objc_opt_self() defaultFetchOptions];
  v72 = [v71 fetchOptionsIncludingDueDateDeltaAlerts];

  v73 = v72;
  v74 = sub_1003ED1A4(v70, v73, v68, v77);

  return v74;
}

uint64_t sub_10053E698(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = _swiftEmptyArrayStorage;
  if (a1 < 1)
  {
    return v5;
  }

  v7 = a1;
  v8 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(v8 + 16);

    if (v10)
    {
      goto LABEL_10;
    }
  }

  v11 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = __CocoaSet.count.getter();

    if (!v12)
    {
      return v5;
    }
  }

  else
  {
    v13 = *(v11 + 16);

    if (!v13)
    {
      return v5;
    }
  }

LABEL_10:
  v14 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
  v15 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
  sub_1000434E8(v15, v14);
  v17 = sub_1000436E4(v16);

  LODWORD(v18) = v17 < 0 || (v17 & 0x4000000000000000) != 0;
  if (v18 == 1)
  {
    goto LABEL_44;
  }

  v19 = *(v17 + 16);
  if (v19 >= v7)
  {
    v20 = v7;
  }

  else
  {
    v20 = *(v17 + 16);
  }

  result = *(v17 + 16);
  if (v19 >= v20)
  {
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0 && v19)
      {
        type metadata accessor for REMObjectID_Codable();

        v22 = 0;
        do
        {
          v23 = v22 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v22);
          v22 = v23;
        }

        while (v20 != v23);
      }

      else
      {
      }

      if (v18)
      {
        v24 = _CocoaArrayWrapper.subscript.getter();
        v18 = v25;
        v27 = v26;
        v29 = v28;

        v20 = v29 >> 1;
        v17 = v24;
      }

      else
      {
        v27 = 0;
        v18 = v17 + 32;
      }

      v30 = v20 - v27;
      if (__OFSUB__(v20, v27))
      {
        goto LABEL_49;
      }

      if (!v30)
      {
        break;
      }

      v54 = v5;
      v31 = specialized ContiguousArray.reserveCapacity(_:)();
      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v51 = a3;
        v17 = 0;
        v7 = 0;
        v32 = v27;
        a3 = v18 + 8 * v27;
        while (1)
        {
          v33 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v32 + v17 >= v20 || v17 >= v30)
          {
            goto LABEL_43;
          }

          v34 = *(a3 + 8 * v17);
          LODWORD(v18) = sub_1005E2A38(v34);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v5 = v54[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v17;
          if (v33 == v30)
          {
            swift_unknownObjectRelease();
            v35 = v54;
            a3 = v51;
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v31 = _CocoaArrayWrapper.endIndex.getter();
        if (v31 >= v7)
        {
          v20 = v7;
        }

        else
        {
          v20 = v31;
        }

        if (v31 < 0)
        {
          __break(1u);
LABEL_49:
          __break(1u);
          swift_once();
          v42 = type metadata accessor for Logger();
          sub_100006654(v42, qword_10094BDF0);
          swift_errorRetain();
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v54 = v46;
            *v45 = 136446210;
            swift_errorRetain();
            sub_1000F5104(&unk_1009399E0, &qword_100795D00);
            v47 = String.init<A>(describing:)();
            v49 = sub_10000668C(v47, v48, &v54);

            *(v45 + 4) = v49;
            _os_log_impl(&_mh_execute_header, v43, v44, "Failed to fetch reminders from reminderLites. Not returning initial reminder {error: %{public}s}", v45, 0xCu);
            sub_10000607C(v46);
          }

          return _swiftEmptyArrayStorage;
        }
      }

      v50 = v31;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        goto LABEL_54;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      v19 = v50;
      if (result < v20)
      {
        goto LABEL_53;
      }
    }

    swift_unknownObjectRelease();
    v35 = _swiftEmptyArrayStorage;
LABEL_37:
    v36 = sub_1003EBAD0();
    sub_1005EC0F4(v35, 0, 1, v36, a5);
    v38 = v37;

    v39 = [objc_opt_self() defaultFetchOptions];
    v40 = [v39 fetchOptionsIncludingDueDateDeltaAlerts];

    v41 = v40;
    v5 = sub_1003ED1A4(v38, v41, a3, a4);

    return v5;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void *sub_10053EBE4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s10PredicatesOMa(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v90 - v16;
  __chkstk_darwin(v15);
  v98 = &v90 - v19;
  result = _swiftEmptyArrayStorage;
  if (!*(a2 + 16))
  {
    return result;
  }

  v95 = v18;
  v21 = 0;
  v22 = sub_100537F88(a2);
  if (qword_1009363F0 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v23 = type metadata accessor for Logger();
    v24 = sub_100006654(v23, qword_10094BDF0);

    v97 = v24;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    v27 = os_log_type_enabled(v25, v26);
    v96 = v22;
    v91 = a4;
    v92 = v14;
    v93 = v21;
    v94 = a3;
    v99 = a5;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v101[0] = v29;
      *v28 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v30 = Array.description.getter();
      v32 = sub_10000668C(v30, v31, v101);
      v22 = v96;

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "fetchRemindersDue objectIDs %s", v28, 0xCu);
      sub_10000607C(v29);
    }

    v33 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    v36 = v98;
    *v98 = v22;
    v37 = type metadata accessor for Date();
    v38 = *(v37 - 8);
    v14 = *(v38 + 16);
    (v14)(&v36[v34], a1, v37);
    v39 = *(v38 + 56);
    v39(&v36[v34], 0, 1, v37);
    v40 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
    (v14)(&v36[v35], a1 + *(v40 + 36), v37);
    v39(&v36[v35], 0, 1, v37);
    swift_storeEnumTagMultiPayload();
    sub_1005402B4(v36, v17, _s10PredicatesOMa);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v101[0] = v14;
      *v43 = 136315138;
      sub_1005402B4(v17, v92, _s10PredicatesOMa);
      v44 = String.init<A>(describing:)();
      v46 = v45;
      sub_1005401EC(v17, _s10PredicatesOMa);
      v47 = sub_10000668C(v44, v46, v101);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "fetchRemindersDue predicate %s", v43, 0xCu);
      sub_10000607C(v14);
    }

    else
    {

      sub_1005401EC(v17, _s10PredicatesOMa);
    }

    isa = v99;
    a5 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    if (qword_100936080 != -1)
    {
      swift_once();
    }

    v92 = qword_100974E30;
    v49 = sub_100043AA8();
    v50 = [objc_allocWithZone(NSFetchRequest) init];
    v51 = [swift_getObjCClassFromMetadata() entity];
    [v50 setEntity:v51];

    if (isa)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v50 setAffectedStores:{isa, v90}];

    [v50 setPredicate:v49];
    [v50 setFetchLimit:0];
    v95 = v50;
    [v50 setFetchOffset:0];
    v101[0] = _swiftEmptyArrayStorage;
    v21 = sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v103 = sub_1003EBAD0();
    sub_100271EA8(_swiftEmptyArrayStorage);
    v53 = sub_100235FA0(Predicate);

    a3 = sub_100277CC0(v53);

    a4 = *(a3 + 16);
    if (!a4)
    {
      goto LABEL_31;
    }

LABEL_15:
    v102 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, a4 & ~(a4 >> 63), 0);
    if (a4 < 0)
    {
      __break(1u);
LABEL_44:
      v101[0] = 0;
      v101[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v89._object = 0x80000001007EC120;
      v89._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v89);
      v100 = v21;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v90 = a5;
    v17 = 0;
    v22 = v102;
    v99 = a3 & 0xC000000000000001;
    while (1)
    {
      a1 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v99)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(a3 + 16))
        {
          goto LABEL_28;
        }

        v21 = *(a3 + 8 * v17 + 32);
      }

      v54 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v55)
      {
        goto LABEL_44;
      }

      v56 = v54;
      a5 = v55;

      v102 = v22;
      v14 = v22[2];
      v57 = v22[3];
      v21 = v14 + 1;
      if (v14 >= v57 >> 1)
      {
        sub_100026EF4((v57 > 1), v14 + 1, 1);
        v22 = v102;
      }

      v22[2] = v21;
      v58 = &v22[2 * v14];
      v58[4] = v56;
      v58[5] = a5;
      ++v17;
      if (a1 == a4)
      {

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  a4 = _CocoaArrayWrapper.endIndex.getter();
  if (a4)
  {
    goto LABEL_15;
  }

LABEL_31:

  v22 = _swiftEmptyArrayStorage;
LABEL_32:
  sub_100271EA8(v22);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v59 = Array._bridgeToObjectiveC()().super.isa;

  v60 = v95;
  [v95 setRelationshipKeyPathsForPrefetching:v59];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v61 = Array._bridgeToObjectiveC()().super.isa;
  [v60 setSortDescriptors:v61];

  v62 = v93;
  v63 = v94;
  v64 = NSManagedObjectContext.fetch<A>(_:)();
  if (v62)
  {
    sub_1005401EC(v98, _s10PredicatesOMa);

    swift_errorRetain();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v101[0] = v84;
      *v83 = 136446210;
      v102 = v62;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v85 = String.init<A>(describing:)();
      v87 = sub_10000668C(v85, v86, v101);

      *(v83 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v81, v82, "Failed to fetch reminders from reminderLites. Not returning initial reminder {error: %{public}s}", v83, 0xCu);
      sub_10000607C(v84);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v65 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v64);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v101[0] = v69;
      *v68 = 136315138;
      v70 = Array.description.getter();
      v72 = v63;
      v73 = sub_10000668C(v70, v71, v101);

      *(v68 + 4) = v73;
      v63 = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "fetchRemindersDue cdReminders %s", v68, 0xCu);
      sub_10000607C(v69);
    }

    v74 = v91;
    v75 = objc_opt_self();
    v76 = [v75 defaultFetchOptions];
    v77 = v76;
    if (!v76)
    {
      v77 = [v75 defaultFetchOptions];
    }

    v78 = v76;
    v79 = [v77 fetchOptionsIncludingDueDateDeltaAlerts];

    v80 = v79;
    v88 = sub_1003ED1A4(v65, v80, v63, v74);

    sub_1005401EC(v98, _s10PredicatesOMa);
    return v88;
  }
}

uint64_t _s9UtilitiesO12SortingStyleOMa()
{
  result = qword_10094BE90;
  if (!qword_10094BE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10053FB3C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  sub_1000F5104(&qword_10093B980, qword_10079A3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  v7 = (a2 >> 62);
  if (a2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v33 = v4;
    if (i)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        __break(1u);
        goto LABEL_34;
      }

      v9 = 0;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(a2 + 8 * v9 + 32);
        }

        v11 = v10;
        ++v9;
        v12 = [v10 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (i != v9);
    }

    sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100791300;
    *(v14 + 56) = sub_1000F5104(&qword_100937028, &qword_100791C10);
    *(v14 + 64) = sub_10000CB48(&unk_10094F0D0, &qword_100937028, &qword_100791C10);
    *(v14 + 32) = _swiftEmptyArrayStorage;
    *(inited + 32) = NSPredicate.init(format:_:)();
    KeyPath = swift_getKeyPath();
    v16 = sub_1003F7214(KeyPath, 0);

    *(inited + 40) = v16;
    v17 = sub_10000C2B0(inited);
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1007953F0;
    *(v18 + 32) = swift_getKeyPath();
    v34 = v17;
    if (v7)
    {
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);

      v19 = _bridgeCocoaArray<A>(_:)();

      a2 = v19;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    }

    sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    sub_10000CB48(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
    sub_10000CE28(&qword_10093F488, &qword_10093F430, NSPersistentStore_ptr);
    v20 = Sequence.compactMapToSet<A>(_:)();
    sub_10002595C(v20);

    v7 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v21 = [objc_allocWithZone(NSFetchRequest) init];
    v22 = [swift_getObjCClassFromMetadata() entity];
    [v21 setEntity:v22];

    isa = Array._bridgeToObjectiveC()().super.isa;
    [v21 setAffectedStores:isa];

    [v21 setPredicate:v34];

    sub_100050AD0(v24);

    sub_1003FE014(_swiftEmptySetSingleton);

    v25 = Array._bridgeToObjectiveC()().super.isa;

    [v21 setPropertiesToFetch:v25];

    swift_setDeallocating();
    v26 = *(v18 + 16);
    swift_arrayDestroy();
    v27 = NSManagedObjectContext.fetch<A>(_:)();
    if (v33)
    {
      break;
    }

    a2 = v27;
    v33 = v21;
    v3 = v27 & 0xFFFFFFFFFFFFFF8;
    if (!(v27 >> 62))
    {
      v4 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

LABEL_34:
    v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_17:
    inited = 0;
    while (1)
    {
      if (v4 == inited)
      {

        a2 = sub_1001A577C(_swiftEmptyArrayStorage);

        return a2;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (inited >= *(v3 + 16))
        {
          goto LABEL_31;
        }

        v28 = *(a2 + 8 * inited + 32);
      }

      v7 = v28;
      v29 = inited + 1;
      if (__OFADD__(inited, 1))
      {
        break;
      }

      v30 = [v28 remObjectID];

      ++inited;
      if (v30)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        inited = v29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  return a2;
}

uint64_t sub_1005401EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10054026C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005402B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_10054032C(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_13;
    }

LABEL_10:
    v13 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v13 - 8) + 16))(a1, a2, v13);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 4)
  {
    if (*a2)
    {
      v8 = a2[1];
      v9 = a2[2];
      *a1 = *a2;
      a1[1] = v8;
      v10 = a2[3];
      v11 = a2[4];
      a1[2] = v9;
      a1[3] = v10;
      a1[4] = v11;
    }

    else
    {
      v16 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v16;
      a1[4] = a2[4];
    }

    v17 = a2[5];
    a1[5] = v17;
    v18 = v17;
    goto LABEL_18;
  }

LABEL_13:
  v14 = *(v6 + 64);

  return memcpy(a1, a2, v14);
}

void sub_1005405CC(void *a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      return;
    }
  }

  else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (*a1)
      {

        v3 = a1[1];

        v4 = a1[2];

        v5 = a1[3];

        v6 = a1[4];
      }

      v7 = a1[5];
    }

    return;
  }

  v8 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v9 = *(*(v8 - 8) + 8);

  v9(a1, v8);
}

void *sub_1005406B8(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v11 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 4)
  {
    if (*a2)
    {
      v7 = a2[1];
      v8 = a2[2];
      *a1 = *a2;
      a1[1] = v7;
      v9 = a2[3];
      v10 = a2[4];
      a1[2] = v8;
      a1[3] = v9;
      a1[4] = v10;
    }

    else
    {
      v14 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v14;
      a1[4] = a2[4];
    }

    v15 = a2[5];
    a1[5] = v15;
    v16 = v15;
    goto LABEL_16;
  }

LABEL_11:
  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_100540918(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005401EC(a1, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_12;
    }

LABEL_9:
    v7 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 4)
  {
    if (*a2)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      a1[4] = a2[4];
    }

    else
    {
      v10 = *a2;
      v11 = *(a2 + 1);
      a1[4] = a2[4];
      *a1 = v10;
      *(a1 + 1) = v11;
    }

    v12 = a2[5];
    a1[5] = v12;
    v13 = v12;
    goto LABEL_17;
  }

LABEL_12:
  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void *sub_100540BAC(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_9;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_9:
    v9 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

void *sub_100540D7C(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005401EC(a1, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_10:
    v9 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t sub_100540F70()
{
  result = type metadata accessor for REMRemindersListDataView.SortingDirection();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void **_s9UtilitiesO29ManualSortHintPersistenceHostOwca(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **_s9UtilitiesO29ManualSortHintPersistenceHostOwta(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

unint64_t sub_100541084(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}