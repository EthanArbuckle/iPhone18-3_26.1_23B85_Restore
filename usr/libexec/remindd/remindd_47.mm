uint64_t sub_1004646A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_10045DE3C();
}

void *sub_1004646D8(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100253258(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_100411ACC(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v46;
        v51 = v46;
        v25 = v46[2];
        v24 = v46[3];
        if (v25 >= v24 >> 1)
        {
          sub_100253258(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        v23[2] = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          sub_1000F5104(&unk_10093F490, &qword_1007A7660);
          v14 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_100010E34(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_100010E34(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_100010E34(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_100464AE4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947C58);
  v1 = sub_100006654(v0, qword_100947C58);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100464BAC(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v166 = a4;
  v155 = a2;
  v162 = a5;
  v145 = type metadata accessor for REMRemindersListDataView.TodayGroupModel();
  v156 = *(v145 - 8);
  v7 = *(v156 + 64);
  __chkstk_darwin(v145);
  v144 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v164 = &v133 - v10;
  v11 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v141 = &v133 - v13;
  v14 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v15 = *(v14 - 8);
  v150 = v14;
  v151 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v149 = (&v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v154 = &v133 - v19;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v147 = *(Configuration - 8);
  v148 = Configuration;
  v21 = *(v147 + 64);
  __chkstk_darwin(Configuration);
  v146 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for REMRemindersListDataView.Diff();
  v143 = *(v152 - 8);
  v23 = *(v143 + 64);
  __chkstk_darwin(v152);
  v153 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v157 = &v133 - v26;
  v27 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v142 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v161 = (&v133 - v31);
  v163 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group.GroupType();
  v158 = *(v163 - 1);
  v32 = *(v158 + 64);
  __chkstk_darwin(v163);
  v34 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group();
  v160 = *(v35 - 8);
  v36 = *(v160 + 64);
  __chkstk_darwin(v35);
  v38 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v133 - v40;
  __chkstk_darwin(v42);
  v44 = &v133 - v43;
  __chkstk_darwin(v45);
  v47 = &v133 - v46;
  v48 = a1;
  v49 = a1;
  v50 = v166;
  v51 = v165;
  v52 = sub_100468A54(v49, a3, v166);
  if (v51)
  {
    return;
  }

  v136 = v47;
  v54 = v163;
  v137 = v44;
  v138 = v41;
  v135 = v38;
  v140 = v35;
  v165 = v52;
  v139 = v53;
  v134 = a3;
  v55 = sub_10046C84C(v48, v50);
  v133 = v48;
  v56 = 0;
  if (*(v55 + 16))
  {
    v57 = v158;
    v58 = v54;
    (*(v158 + 104))(v34, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.nearby(_:), v54);
    v59 = v136;
    REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
    v60 = v165;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v161;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_65:
      v60 = sub_100365B60(0, v60[2] + 1, 1, v60);
    }

    v63 = v160;
    v65 = v60[2];
    v64 = v60[3];
    v66 = (v65 + 1);
    if (v65 >= v64 >> 1)
    {
      v165 = (v65 + 1);
      v132 = sub_100365B60(v64 > 1, v65 + 1, 1, v60);
      v66 = v165;
      v63 = v160;
      v60 = v132;
    }

    v60[2] = v66;
    (*(v63 + 32))(v60 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v65, v59, v140);
    if (REMRemindersListDataView.TodayGroupInvocation.Parameters.grouped.getter())
    {
LABEL_7:
      (*(v57 + 104))(v34, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.empty(_:), v58);
      REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_8;
    }
  }

  else
  {

    v62 = v161;
    v60 = v165;
    v58 = v54;
    v57 = v158;
    if (REMRemindersListDataView.TodayGroupInvocation.Parameters.grouped.getter())
    {
      goto LABEL_7;
    }
  }

  v34 = v164;
LABEL_13:
  v70 = v159;

  sub_100465C64(v133, v60, v62);
  if (v56)
  {
    swift_bridgeObjectRelease_n();

    return;
  }

  v165 = v60;
  v71 = [v70 fetchResultTokenToDiffAgainst];
  sub_100534D44(v71, v157);
  v158 = 0;

  v72 = v146;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v73 = v154;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v147 + 8))(v72, v148);
  v75 = v150;
  v74 = v151;
  v76 = v149;
  (*(v151 + 16))(v149, v73, v150);
  v77 = (*(v74 + 88))(v76, v75);
  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v74 + 96))(v76, v75);
    v78 = *v76;
    v79 = v165[2];
    if (!v79)
    {

      v62 = _swiftEmptyArrayStorage;
LABEL_53:
      v121 = v154;
      v163 = sub_10053DB98(v78, v62, v133, v134, 0);

      (*(v151 + 8))(v121, v75);
      v122 = v145;
      v94 = v156;
      v123 = v153;
      v124 = v142;
      goto LABEL_60;
    }

    v155 = *v76;
    v80 = (v160 + 16);
    v163 = *(v160 + 16);
    v56 = v165 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    v159 = *(v160 + 72);
    v160 += 8;
    v62 = _swiftEmptyArrayStorage;
    v81 = v138;
    while (1)
    {
      v82 = v81;
      v58 = v140;
      v59 = v80;
      (v163)(v81, v56, v140);
      v60 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
      (*v160)(v82, v58);
      v83 = v60[2];
      v57 = v62[2];
      v34 = (v57 + v83);
      if (__OFADD__(v57, v83))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v84 = swift_isUniquelyReferenced_nonNull_native();
      if (!v84 || v34 > v62[3] >> 1)
      {
        if (v57 <= v34)
        {
          v85 = v57 + v83;
        }

        else
        {
          v85 = v57;
        }

        v62 = sub_100365A24(v84, v85, 1, v62);
      }

      v34 = v164;
      if (v60[2])
      {
        v57 = v62[2];
        v34 = ((v62[3] >> 1) - v57);
        v86 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
        if (v34 < v83)
        {
          goto LABEL_64;
        }

        v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
        v88 = *(v86 + 72);
        swift_arrayInitWithCopy();

        v34 = v164;
        v80 = v59;
        v81 = v138;
        if (v83)
        {
          v89 = v62[2];
          v90 = __OFADD__(v89, v83);
          v91 = v89 + v83;
          if (v90)
          {
            __break(1u);
LABEL_67:
            v60 = sub_100365B60(0, v60[2] + 1, 1, v60);
LABEL_8:
            v68 = v60[2];
            v67 = v60[3];
            v69 = v60;
            v34 = v164;
            if (v68 >= v67 >> 1)
            {
              v69 = sub_100365B60(v67 > 1, v68 + 1, 1, v60);
            }

            v60 = v69;
            *(v69 + 16) = v68 + 1;
            (*(v160 + 32))(v69 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v68);
            goto LABEL_13;
          }

          v62[2] = v91;
        }
      }

      else
      {

        v58 = v162;
        v80 = v59;
        v81 = v138;
        if (v83)
        {
          goto LABEL_63;
        }
      }

      v56 += v159;
      if (!--v79)
      {

        v75 = v150;
        v78 = v155;
        goto LABEL_53;
      }
    }
  }

  v92 = v157;
  v93 = v134;
  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {

    (*(v74 + 96))(v76, v75);
    v163 = sub_10053E698(*v76, v92, v133, v93, 0);
    (*(v74 + 8))(v154, v75);
    v94 = v156;
LABEL_59:
    v124 = v142;
    v122 = v145;
    v123 = v153;
LABEL_60:
    sub_1003FAEE8(v161, v124);
    REMRemindersListDataView.TodayGroupInvocation.Parameters.currentLocation.getter();
    v166 = v139;
    REMRemindersListDataView.TodayGroupModel.init(groups:remindersCount:currentLocation:prefetchedReminders:prefetchedDueReminders:todaySmartList:)();
    (*(v94 + 16))(v144, v34, v122);
    v130 = v143;
    v131 = v157;
    (*(v143 + 16))(v123, v157, v152);
    sub_10046D43C(&qword_100947C98, &type metadata accessor for REMRemindersListDataView.TodayGroupModel);
    sub_10046D43C(&qword_100947CA0, &type metadata accessor for REMRemindersListDataView.TodayGroupModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v94 + 8))(v34, v122);
    (*(v130 + 8))(v131, v152);
    sub_1000050A4(v161, &qword_100938A70, &qword_1007ACC60);
    return;
  }

  v95 = v156;
  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    (*(v74 + 96))(v76, v75);
    v96 = *v76;
    v97 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    v98 = v141;
    sub_100226AD8(v76 + *(v97 + 48), v141);
    v99 = v165[2];
    if (!v99)
    {
      v94 = v95;

      v103 = _swiftEmptyArrayStorage;
LABEL_58:
      v127 = v96;
      v128 = v133;
      v129 = v134;
      v163 = sub_10053DB98(v127, v103, v133, v134, 0);
      sub_10053EBE4(v98, v103, v128, v129, 0);

      sub_1000050A4(v98, &qword_10094B8E0, &unk_1007AABD0);
      (*(v151 + 8))(v154, v150);
      goto LABEL_59;
    }

    v100 = v160 + 16;
    v163 = *(v160 + 16);
    v101 = v165 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    v102 = *(v160 + 72);
    v159 = v96;
    v160 += 8;
    v103 = _swiftEmptyArrayStorage;
    v104 = v140;
    v105 = v135;
    while (1)
    {
      v107 = v105;
      v108 = v100;
      (v163)(v105, v101, v104);
      v109 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
      (*v160)(v107, v104);
      v110 = *(v109 + 16);
      v111 = v103[2];
      v112 = v111 + v110;
      if (__OFADD__(v111, v110))
      {
        break;
      }

      v113 = swift_isUniquelyReferenced_nonNull_native();
      if (!v113 || v112 > v103[3] >> 1)
      {
        if (v111 <= v112)
        {
          v114 = v111 + v110;
        }

        else
        {
          v114 = v111;
        }

        v103 = sub_100365A24(v113, v114, 1, v103);
      }

      v104 = v140;
      if (*(v109 + 16))
      {
        v115 = (v103[3] >> 1) - v103[2];
        v116 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
        if (v115 < v110)
        {
          goto LABEL_70;
        }

        v117 = (*(v116 + 80) + 32) & ~*(v116 + 80);
        v118 = *(v116 + 72);
        swift_arrayInitWithCopy();

        v106 = v156;
        v34 = v164;
        v104 = v140;
        v100 = v108;
        v105 = v135;
        if (v110)
        {
          v119 = v103[2];
          v90 = __OFADD__(v119, v110);
          v120 = v119 + v110;
          if (v90)
          {
            goto LABEL_71;
          }

          v103[2] = v120;
        }
      }

      else
      {

        v34 = v164;
        v106 = v156;
        v100 = v108;
        v105 = v135;
        if (v110)
        {
          goto LABEL_69;
        }
      }

      v101 += v102;
      if (!--v99)
      {
        v94 = v106;

        v98 = v141;
        v96 = v159;
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {
    v94 = v156;
    v125 = enum case for REMRemindersListDataView.RemindersPrefetch.none(_:);
    v126 = v77;

    if (v126 == v125)
    {
      (*(v74 + 8))(v154, v75);
      v163 = _swiftEmptyArrayStorage;
      goto LABEL_59;
    }
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100465C64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v70 = a1;
  v60 = a3;
  v73 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group.GroupType();
  v63 = *(v73 - 8);
  v3 = *(v63 + 64);
  __chkstk_darwin(v73);
  v72 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group();
  v74 = *(v5 - 8);
  v6 = *(v74 + 64);
  __chkstk_darwin(v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  __chkstk_darwin(v9);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s10PredicatesOMa(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v17 = *(Configuration - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(Configuration);
  v65 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v57 - v21;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v23 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  v24 = *(v17 + 8);
  v66 = Configuration;
  v64 = v24;
  v24(v22, Configuration);
  if (v23)
  {
    REMRemindersListDataView.TodayGroupInvocation.Parameters.today.getter();
    swift_storeEnumTagMultiPayload();
    v25 = sub_100043AA8();
    sub_1001A4F3C(v15, _s10PredicatesOMa);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v26 = [objc_allocWithZone(NSFetchRequest) init];
    v27 = [swift_getObjCClassFromMetadata() entity];
    [v26 setEntity:v27];

    [v26 setAffectedStores:0];
    [v26 setPredicate:v25];
    v28 = v70;
    v29 = v62;
    v30 = NSManagedObjectContext.count<A>(for:)();
    v31 = v29;
    if (v29)
    {

      return;
    }

    v71 = v30;

    v35 = REMRemindersListDataView.TodayGroupInvocation.Parameters.currentLocation.getter();
    v58 = v25;
    if (v35)
    {
      v36 = v35;
      v37 = v65;
      REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
      v38 = v67;
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v64(v37, v66);
      sub_10046C22C(v28, v36, v38, 1);
      v41 = v39;
      (*(v68 + 8))(v38, v69);
      if (v41 >> 62)
      {
LABEL_45:
        v57 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v57 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v63;
      v62 = v31;
    }

    else
    {
      v62 = 0;
      v57 = 0;
      v40 = v63;
    }

    v42 = 0;
    v59 = 0;
    v43 = *(v75 + 16);
    v70 = v74 + 16;
    v44 = (v40 + 88);
    LODWORD(v69) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.today(_:);
    LODWORD(v68) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.beforeToday(_:);
    LODWORD(v67) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.todayAllDay(_:);
    LODWORD(v66) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.morning(_:);
    LODWORD(v65) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.afternoon(_:);
    LODWORD(v64) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.tonight(_:);
    LODWORD(v63) = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.nearby(_:);
    v36 = (v74 + 8);
    v61 = enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.empty(_:);
LABEL_13:
    for (i = v42 == v43; ; i = v31 == v43)
    {
      v46 = v71;
      if (i)
      {
        break;
      }

      if (v42 >= v43)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      (*(v74 + 16))(v8, v75 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v42, v5);
      v31 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_43;
      }

      v47 = v5;
      v48 = v72;
      REMRemindersListDataView.TodayGroupModel.Group.groupType.getter();
      v49 = (*v44)(v48, v73);
      if (v49 == v69 || v49 == v68 || v49 == v67 || v49 == v66 || v49 == v65 || v49 == v64)
      {
        v55 = *(REMRemindersListDataView.TodayGroupModel.Group.reminders.getter() + 16);

        v5 = v47;
        (*v36)(v8, v47);
        ++v42;
        v56 = __OFADD__(v59, v55);
        v46 = v59 + v55;
        v59 += v55;
        if (!v56)
        {
          goto LABEL_13;
        }

        __break(1u);
        break;
      }

      v5 = v47;
      if (v49 != v63 && v49 != v61)
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      (*v36)(v8, v47);
      ++v42;
    }

    if (__OFADD__(v46, v57))
    {
      goto LABEL_44;
    }

    v33 = v60;
    REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();

    v32 = 0;
  }

  else
  {
    v32 = 1;
    v33 = v60;
  }

  v34 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  (*(*(v34 - 8) + 56))(v33, v32, 1, v34);
}

void sub_1004663D4(uint64_t a1@<X1>, void *a2@<X2>, char *a3@<X8>)
{
  v48 = a2;
  v49 = a3;
  v4 = type metadata accessor for REMTimeOfDay();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Calendar.Component();
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v47);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = REMRemindersListDataView.ReminderLite.objectID.getter();
  v20 = v19;
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  v21 = sub_100364184(v19);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

  v23 = *(*(a1 + 56) + 8 * v21);

  v24 = [v23 displayDate];
  if (!v24)
  {
    v20 = v23;
LABEL_7:

    v27 = 5;
    goto LABEL_8;
  }

  v41 = v24;
  v25 = [v24 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v25) = static Date.< infix(_:_:)();
  v26 = *(v15 + 8);
  v26(v18, v14);
  if (v25)
  {

    v27 = 0;
  }

  else
  {
    v28 = v41;
    if ([v41 isAllDay])
    {

      v27 = 1;
    }

    else
    {
      v48 = v23;
      static Calendar.current.getter();
      v29 = v43;
      (*(v43 + 104))(v9, enum case for Calendar.Component.hour(_:), v47);
      v30 = [v28 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = Calendar.component(_:from:)();
      v26(v18, v14);
      (*(v29 + 8))(v9, v47);
      v32 = v31;
      (*(v42 + 8))(v13, v10);
      v33 = v44;
      v34 = v45;
      v35 = *(v45 + 104);
      v36 = v46;
      v35(v44, enum case for REMTimeOfDay.morning(_:), v46);
      v37 = REMTimeOfDay.endHour.getter();
      v38 = *(v34 + 8);
      v38(v33, v36);
      if (v32 >= v37)
      {
        v35(v33, enum case for REMTimeOfDay.afternoon(_:), v36);
        v39 = REMTimeOfDay.endHour.getter();

        v38(v33, v36);
        if (v32 < v39)
        {
          v27 = 3;
        }

        else
        {
          v27 = 4;
        }
      }

      else
      {

        v27 = 2;
      }
    }
  }

LABEL_8:
  *v49 = v27;
}

id sub_10046688C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v8 = 0;
  v4 = [v3 remObjectIDWithError:&v8];
  v5 = v8;
  if (v4)
  {
    *a2 = v4;
    return v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_10046695C(uint64_t a1)
{
  result = sub_10046D43C(&qword_100947C90, &type metadata accessor for REMRemindersListDataView.TodayGroupInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004669B4(uint64_t a1, void *a2, uint64_t a3, int64_t isa)
{
  v152 = a3;
  v144 = a2;
  v5 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group.GroupType();
  v142 = *(v5 - 1);
  v6 = *(v142 + 64);
  __chkstk_darwin(v5);
  v8 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v141 = &v128 - v10;
  __chkstk_darwin(v11);
  v13 = &v128 - v12;
  __chkstk_darwin(v14);
  v137 = &v128 - v15;
  v139 = type metadata accessor for REMSmartListSection.PredefinedSectionType.Today();
  v151 = *(v139 - 8);
  v16 = *(v151 + 64);
  __chkstk_darwin(v139);
  v138 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v136 = &v128 - v19;
  v20 = type metadata accessor for Calendar();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Date();
  v130 = *(v131 - 8);
  v25 = *(v130 + 64);
  __chkstk_darwin(v131);
  v27 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v145 = v27;
  Calendar.startOfDay(for:)();
  (*(v21 + 8))(v24, v20);
  v28 = sub_10038E768(_swiftEmptyArrayStorage);
  v29 = v28;
  if (isa >> 62)
  {
    goto LABEL_100;
  }

  v30 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v140 = v13;
  v150 = v5;
  v143 = v8;
  if (v30)
  {
    v31 = 0;
    v153 = isa & 0xFFFFFFFFFFFFFF8;
    v154 = isa & 0xC000000000000001;
    do
    {
      if (v154)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *(v153 + 16))
        {
          goto LABEL_92;
        }

        v34 = *(isa + 8 * v31 + 32);
      }

      v35 = v34;
      v13 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        v28 = _CocoaArrayWrapper.endIndex.getter();
        v30 = v28;
        goto LABEL_3;
      }

      v36 = isa;
      isa = [v34 remObjectID];
      v5 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = v29;
      v8 = sub_100364184(isa);
      v39 = v29[2];
      v40 = (v38 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_93;
      }

      v42 = v38;
      if (v29[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v29 = v155;
          if (v38)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_100373A28();
          v29 = v155;
          if (v42)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_10036B200(v41, isUniquelyReferenced_nonNull_native);
        v43 = sub_100364184(isa);
        if ((v42 & 1) != (v44 & 1))
        {
          sub_1000F5104(&unk_10093AF40, &unk_100795790);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v8 = v43;
        v29 = v155;
        if (v42)
        {
LABEL_5:
          v32 = v29[7];
          v33 = *(v32 + 8 * v8);
          *(v32 + 8 * v8) = v5;

          goto LABEL_6;
        }
      }

      v29[(v8 >> 6) + 8] |= 1 << v8;
      *(v29[6] + 8 * v8) = isa;
      *(v29[7] + 8 * v8) = v5;

      v45 = v29[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_98;
      }

      v29[2] = v47;
LABEL_6:
      ++v31;
      isa = v36;
    }

    while (v13 != v30);
  }

  __chkstk_darwin(v28);
  v48 = v145;
  *(&v128 - 2) = v29;
  *(&v128 - 1) = v48;

  v50 = sub_1005C4608(v49, sub_10046D4E0, (&v128 - 4));

  v51 = *(v50 + 16);
  v129 = 0;
  v135 = v50;
  if (v51)
  {
    v52 = v50;
    v53 = sub_100364118(0);
    if (v54)
    {
      v55 = *(*(v50 + 56) + 8 * v53);
    }

    else
    {
      v55 = _swiftEmptyArrayStorage;
    }

    v56 = *(v52 + 16);
    v133 = v55;
    if (v56)
    {
      v57 = sub_100364118(1u);
      if (v58)
      {
        v59 = *(*(v52 + 56) + 8 * v57);
      }

      else
      {
        v60 = _swiftEmptyArrayStorage;
      }

      v61 = *(v52 + 16);
      v132 = v60;
      if (v61)
      {
        v62 = sub_100364118(5u);
        if (v63)
        {
          v64 = *(*(v52 + 56) + 8 * v62);
          v65 = qword_1009361D0;

          if (v65 != -1)
          {
            swift_once();
          }

          v66 = type metadata accessor for Logger();
          sub_100006654(v66, qword_100947C58);

          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v155 = v70;
            *v69 = 134218242;
            *(v69 + 4) = *(v64 + 16);

            *(v69 + 12) = 2080;
            type metadata accessor for REMRemindersListDataView.ReminderLite();
            v71 = Array.description.getter();
            v73 = v72;

            v74 = sub_10000668C(v71, v73, &v155);

            *(v69 + 14) = v74;
            _os_log_impl(&_mh_execute_header, v67, v68, "today data view unable to group %ld reminders %s", v69, 0x16u);
            sub_10000607C(v70);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }
        }
      }
    }

    else
    {
      v132 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v132 = _swiftEmptyArrayStorage;
    v133 = _swiftEmptyArrayStorage;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_100799D70;
  v75 = v151;
  v148 = *(v151 + 104);
  v149 = v151 + 104;
  v76 = v136;
  v77 = v139;
  v148(v136, enum case for REMSmartListSection.PredefinedSectionType.Today.beforeToday(_:), v139);
  REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
  v146 = *(v75 + 8);
  v146(v76, v77);
  v151 = v75 + 8;
  v147 = sub_1000F5104(&qword_100943EC0, &qword_1007A4650);
  v152 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group();
  v78 = *(v152 - 8);
  v153 = *(v78 + 72);
  v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v80 = swift_allocObject();
  v134 = xmmword_100791300;
  *(v80 + 16) = xmmword_100791300;
  isa = v142 + 104;
  v81 = *(v142 + 104);
  v82 = v137;
  v81(v137, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.beforeToday(_:), v150);
  REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
  v155 = v80;
  v83 = sub_1000F5104(&qword_100947CB8, &qword_1007AACB8);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  *(v154 + 32) = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
  v148(v76, enum case for REMSmartListSection.PredefinedSectionType.Today.todayAllDay(_:), v77);
  v133 = REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
  v146(v76, v77);
  v86 = swift_allocObject();
  *(v86 + 16) = v134;
  v87 = v150;
  v81(v82, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.todayAllDay(_:), v150);
  REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
  v155 = v86;
  v88 = *(v83 + 48);
  v89 = *(v83 + 52);
  v142 = v83;
  swift_allocObject();
  *(v154 + 40) = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
  v90 = v138;
  v148(v138, enum case for REMSmartListSection.PredefinedSectionType.Today.todayNonAllDay(_:), v77);
  v149 = REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
  v146(v90, v77);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_100791320;
  v151 = v79;
  v8 = v91 + v79;
  v81(v140, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.morning(_:), v87);
  v92 = v135;
  if (*(v135 + 16))
  {
    v93 = sub_100364118(2u);
    v94 = v143;
    v5 = v141;
    if (v95)
    {
      v96 = *(*(v92 + 56) + 8 * v93);
    }
  }

  else
  {
    v94 = v143;
    v5 = v141;
  }

  v97 = v142;
  REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
  v81(v5, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.afternoon(_:), v87);
  if (*(v92 + 16))
  {
    v98 = sub_100364118(3u);
    if (v99)
    {
      v100 = *(*(v92 + 56) + 8 * v98);
    }
  }

  REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
  v81(v94, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.tonight(_:), v87);
  if (*(v92 + 16))
  {
    v101 = sub_100364118(4u);
    v13 = v154;
    if (v102)
    {
      v103 = *(*(v92 + 56) + 8 * v101);
    }
  }

  else
  {
    v13 = v154;
  }

  REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();
  v155 = v91;
  v104 = *(v97 + 48);
  v105 = *(v97 + 52);
  v29 = swift_allocObject();
  *(v13 + 48) = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
  if (v144)
  {
    v106 = v144;
    v107 = [v106 sectionIDsOrderingAsData];
    if (!v107)
    {
      goto LABEL_60;
    }

    v108 = v107;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v109;

    sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
    v110 = v129;
    static REMJSONRepresentable.fromJSONData(_:)();
    if (!v110)
    {
      sub_10001BBA0(v5, v8);
      v29 = v155;
      v111 = REMOrderedIdentifierMap.reorder<A>(objects:)();
      goto LABEL_89;
    }

    sub_10001BBA0(v5, v8);

    if (qword_1009361D0 != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    v29 = sub_100006654(v112, qword_100947C58);
    swift_errorRetain();
    v106 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v106, v113))
    {
      v8 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v155 = v5;
      *v8 = 136446210;
      swift_getErrorValue();
      v114 = Error.rem_errorDescription.getter();
      v29 = v115;
      v116 = sub_10000668C(v114, v115, &v155);

      *(v8 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v106, v113, "today data view error upon reordering groups by user-defined sections ordering {error: %{public}s}", v8, 0xCu);
      sub_10000607C(v5);

LABEL_60:

      if (v13 >> 62)
      {
        goto LABEL_61;
      }

      goto LABEL_66;
    }
  }

  if (v13 >> 62)
  {
    goto LABEL_61;
  }

LABEL_66:
  v117 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v117)
  {
    goto LABEL_62;
  }

  do
  {
    v119 = 0;
    v154 = v13 & 0xC000000000000001;
    v120 = v13 & 0xFFFFFFFFFFFFFF8;
    v106 = _swiftEmptyArrayStorage;
    while (v154)
    {
      v5 = v13;
      v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v29 = v111;
      v13 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_88;
      }

LABEL_73:
      REMOrderedIdentifierMap.IdentifiableContainer.nonIdentifiable.getter();

      v8 = v155;
      v29 = v155[2];
      isa = v106[2].isa;
      v122 = v29 + isa;
      if (__OFADD__(isa, v29))
      {
        goto LABEL_95;
      }

      v123 = swift_isUniquelyReferenced_nonNull_native();
      if (v123 && v122 <= (v106[3].isa >> 1))
      {
        if (!*(v8 + 16))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (isa <= v122)
        {
          v124 = v29 + isa;
        }

        else
        {
          v124 = isa;
        }

        v106 = sub_100365B60(v123, v124, 1, v106);
        if (!*(v8 + 16))
        {
LABEL_68:

          if (v29)
          {
            goto LABEL_96;
          }

          goto LABEL_69;
        }
      }

      if (((v106[3].isa >> 1) - v106[2].isa) < v29)
      {
        goto LABEL_97;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v125 = v106[2].isa;
        v46 = __OFADD__(v125, v29);
        v126 = (v29 + v125);
        if (v46)
        {
          goto LABEL_99;
        }

        v106[2].isa = v126;
      }

LABEL_69:
      ++v119;
      v121 = v13 == v117;
      v13 = v5;
      if (v121)
      {
        goto LABEL_63;
      }
    }

    if (v119 >= *(v120 + 16))
    {
      goto LABEL_94;
    }

    v5 = v13;
    v29 = *(v13 + 8 * v119 + 32);

    v13 = v119 + 1;
    if (!__OFADD__(v119, 1))
    {
      goto LABEL_73;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    v127 = v111;

    v13 = v127;
    if (!(v127 >> 62))
    {
      goto LABEL_66;
    }

LABEL_61:
    v117 = _CocoaArrayWrapper.endIndex.getter();
  }

  while (v117);
LABEL_62:
  v106 = _swiftEmptyArrayStorage;
LABEL_63:

  (*(v130 + 8))(v145, v131);
  return v106;
}

uint64_t sub_1004679EC(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for REMSmartListSection.PredefinedSectionType.Today();
  v157 = *(v8 - 8);
  v158 = v8;
  v9 = *(v157 + 64);
  __chkstk_darwin(v8);
  v156 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v163 = *(v11 - 8);
  v12 = *(v163 + 64);
  __chkstk_darwin(v11);
  v160 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v159 = &v144 - v15;
  __chkstk_darwin(v16);
  v162 = &v144 - v17;
  __chkstk_darwin(v18);
  v169 = &v144 - v19;
  v20 = type metadata accessor for Calendar();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v161 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v164 = &v144 - v30;
  if (a2)
  {
    v165 = a3;
    v31 = a2;
    v32 = [v31 sectionIDsOrderingAsData];
    if (!v32)
    {

      a1 = v165;
LABEL_65:

      return a1;
    }

    v146 = v26;
    v154 = v25;
    v151 = v31;
    v33 = v32;
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
    static REMJSONRepresentable.fromJSONData(_:)();
    v152 = 0;
    sub_10001BBA0(v34, v36);
    v145 = v171;
    static Calendar.current.getter();
    Calendar.startOfDay(for:)();
    (*(v21 + 8))(v24, v20);
    v170 = sub_10038E768(_swiftEmptyArrayStorage);
    if (a4 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v169;
    v168 = v11;
    if (v37)
    {
      v39 = 0;
      v166 = (a4 & 0xFFFFFFFFFFFFFF8);
      v167 = a4 & 0xC000000000000001;
      while (1)
      {
        if (v167)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= v166[2])
          {
            goto LABEL_92;
          }

          v43 = *(a4 + 8 * v39 + 32);
        }

        v44 = v43;
        v45 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_91;
        }

        v46 = v37;
        a1 = a4;
        v47 = [v43 remObjectID];
        v48 = v44;
        v49 = v170;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v171 = v49;
        v52 = sub_100364184(v47);
        v53 = v49[2];
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          break;
        }

        v56 = v51;
        if (v49[3] >= v55)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100373A28();
          }
        }

        else
        {
          sub_10036B200(v55, isUniquelyReferenced_nonNull_native);
          v57 = sub_100364184(v47);
          if ((v56 & 1) != (v58 & 1))
          {
            sub_1000F5104(&unk_10093AF40, &unk_100795790);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v52 = v57;
        }

        a4 = a1;
        v59 = v171;
        v170 = v171;
        if (v56)
        {
          v40 = v171[7];
          v41 = *(v40 + 8 * v52);
          *(v40 + 8 * v52) = v48;
        }

        else
        {
          v171[(v52 >> 6) + 8] |= 1 << v52;
          *(v59[6] + 8 * v52) = v47;
          *(v59[7] + 8 * v52) = v48;

          v60 = v59[2];
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_94;
          }

          v59[2] = v62;
        }

        ++v39;
        v37 = v46;
        v42 = v45 == v46;
        v11 = v168;
        v38 = v169;
        if (v42)
        {
          goto LABEL_26;
        }
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      swift_once();
LABEL_62:
      v120 = type metadata accessor for Logger();
      sub_100006654(v120, qword_100947C58);
      swift_errorRetain();
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v171 = v124;
        *v123 = 136446210;
        swift_getErrorValue();
        v125 = Error.rem_errorDescription.getter();
        v127 = sub_10000668C(v125, v126, &v171);

        *(v123 + 4) = v127;
        _os_log_impl(&_mh_execute_header, v121, v122, "today data view error upon reordering reminders by user-defined sections ordering {error: %{public}s}", v123, 0xCu);
        sub_10000607C(v124);
      }

      else
      {
      }

      goto LABEL_65;
    }

LABEL_26:
    a1 = v165;
    v63 = *(v165 + 16);
    if (v63)
    {
      v64 = v163 + 16;
      v65 = *(v163 + 16);
      v149 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v66 = v165 + v149;
      v167 = *(v163 + 72);
      v67 = (v163 + 8);
      v148 = (v146 + 8);
      v147 = (v163 + 32);
      v153 = _swiftEmptyArrayStorage;
      v150 = _swiftEmptyArrayStorage;
      v166 = _swiftEmptyArrayStorage;
      v65(v38, v165 + v149, v11);
      while (1)
      {
        v68 = REMRemindersListDataView.ReminderLite.objectID.getter();
        v69 = v68;
        v70 = v170;
        if (v170[2])
        {
          v71 = sub_100364184(v68);
          if (v72)
          {
            v73 = *(v70[7] + 8 * v71);

            v74 = [v73 displayDate];
            if (v74)
            {
              v75 = v74;
              v155 = v73;
              v76 = v64;
              v77 = v65;
              v78 = [v74 date];
              v79 = v161;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              LOBYTE(v78) = static Date.< infix(_:_:)();
              (*v148)(v79, v154);
              if (v78)
              {
                v65 = v77;
                v64 = v76;
                v65(v162, v169, v11);
                v80 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v166 : sub_100365A24(0, v166[2] + 1, 1, v166);
                v81 = v155;
                v83 = v80[2];
                v82 = v80[3];
                v166 = v83 >= v82 >> 1 ? sub_100365A24(v82 > 1, v83 + 1, 1, v80) : v80;

                v84 = v168;
                v38 = v169;
                (*v67)(v169, v168);
                v85 = v166;
                v166[2] = v83 + 1;
                v86 = v85 + v149 + v83 * v167;
                v11 = v84;
                (*v147)(v86, v162, v84);
              }

              else
              {
                v65 = v77;
                if ([v75 isAllDay])
                {
                  v64 = v76;
                  v65(v159, v169, v11);
                  v87 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v153 : sub_100365A24(0, v153[2] + 1, 1, v153);
                  v88 = v155;
                  v90 = v87[2];
                  v89 = v87[3];
                  v153 = v90 >= v89 >> 1 ? sub_100365A24(v89 > 1, v90 + 1, 1, v87) : v87;

                  v91 = v168;
                  v38 = v169;
                  (*v67)(v169, v168);
                  v92 = v153;
                  v153[2] = v90 + 1;
                  v93 = v92 + v149 + v90 * v167;
                  v11 = v91;
                  (*v147)(v93, v159, v91);
                }

                else
                {
                  v64 = v76;
                  v65(v160, v169, v11);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v150 = sub_100365A24(0, v150[2] + 1, 1, v150);
                  }

                  v94 = v155;
                  v96 = v150[2];
                  v95 = v150[3];
                  if (v96 >= v95 >> 1)
                  {
                    v150 = sub_100365A24(v95 > 1, v96 + 1, 1, v150);
                  }

                  v97 = v168;
                  v38 = v169;
                  (*v67)(v169, v168);
                  v98 = v150;
                  v150[2] = v96 + 1;
                  v99 = v98 + v149 + v96 * v167;
                  v11 = v97;
                  (*v147)(v99, v160, v97);
                }
              }
            }

            else
            {
              v38 = v169;
              (*v67)(v169, v11);
            }

            a1 = v165;
          }

          else
          {

            v38 = v169;
            (*v67)(v169, v11);
          }
        }

        else
        {

          (*v67)(v38, v11);
        }

        v66 += v167;
        if (!--v63)
        {
          break;
        }

        v65(v38, v66, v11);
      }

      v100 = v166;
    }

    else
    {

      v100 = _swiftEmptyArrayStorage;
      v153 = _swiftEmptyArrayStorage;
      v150 = _swiftEmptyArrayStorage;
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_100799D70;
    v102 = v101;
    v167 = v101;
    v103 = v156;
    v104 = v157;
    v105 = *(v157 + 104);
    v106 = v158;
    (v105)(v156, enum case for REMSmartListSection.PredefinedSectionType.Today.beforeToday(_:), v158);
    v169 = v105;
    v165 = REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
    v170 = *(v104 + 8);
    (v170)(v103, v106);
    v171 = v100;
    v107 = sub_1000F5104(&qword_100947CC0, &unk_1007AACC0);
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    swift_allocObject();
    v166 = v100;

    *(v102 + 32) = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
    (v105)(v103, enum case for REMSmartListSection.PredefinedSectionType.Today.todayAllDay(_:), v106);
    REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
    v110 = v170;
    (v170)(v103, v106);
    v171 = v153;
    v111 = *(v107 + 48);
    v112 = *(v107 + 52);
    swift_allocObject();

    v113 = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
    v114 = v167;
    *(v167 + 40) = v113;
    (v169)(v103, enum case for REMSmartListSection.PredefinedSectionType.Today.todayNonAllDay(_:), v106);
    REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter();
    (v110)(v103, v106);
    v171 = v150;
    v115 = *(v107 + 48);
    v116 = *(v107 + 52);
    swift_allocObject();

    *(v114 + 48) = REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)();
    v117 = v145;
    v118 = v152;
    v119 = REMOrderedIdentifierMap.reorder<A>(objects:)();
    if (v118)
    {
      (*(v146 + 8))(v164, v154);

      if (qword_1009361D0 == -1)
      {
        goto LABEL_62;
      }

      goto LABEL_100;
    }

    v129 = v119;

    if (v129 >> 62)
    {
      v130 = _CocoaArrayWrapper.endIndex.getter();
      if (v130)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v130)
      {
LABEL_69:
        v131 = 0;
        v170 = (v129 & 0xC000000000000001);
        a1 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v170)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v133 = v131 + 1;
            if (__OFADD__(v131, 1))
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v131 >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_95;
            }

            v132 = *(v129 + 8 * v131 + 32);

            v133 = v131 + 1;
            if (__OFADD__(v131, 1))
            {
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }
          }

          REMOrderedIdentifierMap.IdentifiableContainer.nonIdentifiable.getter();

          v134 = v171;
          v135 = v171[2];
          v136 = a1[2];
          v137 = v136 + v135;
          if (__OFADD__(v136, v135))
          {
            goto LABEL_96;
          }

          v138 = swift_isUniquelyReferenced_nonNull_native();
          if (v138 && v137 <= a1[3] >> 1)
          {
            if (!v134[2])
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (v136 <= v137)
            {
              v139 = v136 + v135;
            }

            else
            {
              v139 = v136;
            }

            a1 = sub_100365A24(v138, v139, 1, a1);
            if (!v134[2])
            {
LABEL_70:

              if (v135)
              {
                goto LABEL_97;
              }

              goto LABEL_71;
            }
          }

          v140 = a1[2];
          if ((a1[3] >> 1) - v140 < v135)
          {
            goto LABEL_98;
          }

          v141 = a1 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v140;
          swift_arrayInitWithCopy();

          if (v135)
          {
            v142 = a1[2];
            v61 = __OFADD__(v142, v135);
            v143 = v142 + v135;
            if (v61)
            {
              goto LABEL_99;
            }

            a1[2] = v143;
          }

LABEL_71:
          ++v131;
          if (v133 == v130)
          {
            goto LABEL_104;
          }
        }
      }
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_104:

    (*(v146 + 8))(v164, v154);

    return a1;
  }

  return a3;
}

uint64_t sub_100468A54(void *a1, uint64_t a2, uint64_t a3)
{
  v226 = a2;
  v257 = a1;
  v222 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group.GroupType();
  v221 = *(v222 - 8);
  v4 = *(v221 + 64);
  __chkstk_darwin(v222);
  v220 = &v217 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for Date();
  v224 = *(v225 - 8);
  v6 = *(v224 + 64);
  __chkstk_darwin(v225);
  v223 = &v217 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v229 = *(v247 - 8);
  v8 = *(v229 + 64);
  __chkstk_darwin(v247);
  v246 = &v217 - v9;
  v256 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v248 = *(v256 - 8);
  v10 = *(v248 + 64);
  __chkstk_darwin(v256);
  v228 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v227 = &v217 - v13;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v234 = *(Subtasks - 8);
  v14 = *(v234 + 64);
  __chkstk_darwin(Subtasks);
  v242 = &v217 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = _s10PredicatesOMa(0);
  v16 = *(*(v237 - 8) + 64);
  __chkstk_darwin(v237);
  v238 = &v217 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v250 = *(v18 - 8);
  v251 = v18;
  v19 = *(v250 + 64);
  __chkstk_darwin(v18);
  v232 = (&v217 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v249 = &v217 - v22;
  __chkstk_darwin(v23);
  v241 = &v217 - v24;
  v25 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v217 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v30 = *(Configuration - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(Configuration);
  v239 = &v217 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v236 = &v217 - v34;
  __chkstk_darwin(v35);
  v37 = &v217 - v36;
  v254 = _s9UtilitiesO12SortingStyleOMa();
  v38 = *(*(v254 - 8) + 64);
  __chkstk_darwin(v254);
  v219 = (&v217 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v40);
  v231 = &v217 - v41;
  __chkstk_darwin(v42);
  v230 = &v217 - v43;
  __chkstk_darwin(v44);
  v233 = (&v217 - v45);
  __chkstk_darwin(v46);
  v240 = &v217 - v47;
  __chkstk_darwin(v48);
  v243 = (&v217 - v49);
  __chkstk_darwin(v50);
  v255 = (&v217 - v51);
  __chkstk_darwin(v52);
  v54 = &v217 - v53;
  __chkstk_darwin(v55);
  v57 = &v217 - v56;
  __chkstk_darwin(v58);
  v60 = &v217 - v59;
  v245 = a3;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v61 = *(v30 + 8);
  v258 = Configuration;
  v244 = (v30 + 8);
  v260 = v61;
  (v61)(v37, Configuration);
  v62 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v63 = *(v248 + 104);
  v63(v57, enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v256);
  swift_storeEnumTagMultiPayload();
  sub_1005368D8(v28, v57, v60);
  v253 = v60;
  sub_1001A4ED8(v60, v54);
  LODWORD(v30) = swift_getEnumCaseMultiPayload();
  sub_1001A4F3C(v54, _s9UtilitiesO12SortingStyleOMa);
  if (v30)
  {
    v63(v57, v62, v256);
    swift_storeEnumTagMultiPayload();
    REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
    v64 = v241;
    REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
    v65 = v258;
    v66 = v260;
    (v260)(v37, v258);
    v252 = sub_10053CE0C(v57, v64, 0);
    (*(v250 + 8))(v64, v251);
    sub_1001A4F3C(v57, _s9UtilitiesO12SortingStyleOMa);
  }

  else
  {
    v252 = 0;
    v65 = v258;
    v66 = v260;
  }

  v67 = REMSmartListTypeToday;
  v68 = v243;
  v69 = v253;
  v70 = v259;
  v71 = sub_100538914(v243, v257, REMSmartListTypeToday, v253);
  v259 = v70;
  if (v70)
  {
    sub_1001A4F3C(v69, _s9UtilitiesO12SortingStyleOMa);

    return v67;
  }

  v217 = v67;
  v241 = v71;
  sub_1001B1DA0(v68, v255);
  v72 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v73 = v238;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  (v66)(v37, v65);
  REMRemindersListDataView.TodayGroupInvocation.Parameters.today.getter();
  swift_storeEnumTagMultiPayload();
  v74 = sub_100043AA8();
  sub_1001A4F3C(v73, _s10PredicatesOMa);
  v75 = _swiftEmptyArrayStorage;
  if (REMRemindersListDataView.TodayGroupInvocation.Parameters.grouped.getter())
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v75 = swift_allocObject();
    *(v75 + 1) = xmmword_100799D70;
    v75[4] = swift_getKeyPath();
    v75[5] = swift_getKeyPath();
    v75[6] = swift_getKeyPath();
  }

  v76 = v236;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v77 = v260;
  (v260)(v76, v65);
  v78 = v239;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  (v77)(v78, v65);
  v79 = v255;
  v244 = sub_1005393B4(v257);
  if (qword_1009363F8 != -1)
  {
    swift_once();
  }

  v261 = qword_100974F68;

  sub_100271A80(v80);
  v268 = v261;
  v267 = _swiftEmptyArrayStorage;
  v81 = sub_10053CBE4(v79);
  sub_100271A80(v81);
  v82 = v240;
  sub_1001A4ED8(v79, v240);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v84 = v259;
  if (EnumCaseMultiPayload < 4)
  {
    sub_1001A4F3C(v82, _s9UtilitiesO12SortingStyleOMa);
    v86 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v85 = EnumCaseMultiPayload;
  v86 = _swiftEmptyArrayStorage;
  if (v85 != 4)
  {
    goto LABEL_15;
  }

  sub_1001A4F3C(v82, _s9UtilitiesO12SortingStyleOMa);
  if (qword_1009367F0 != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {

LABEL_15:
    sub_100271A80(v86);
    v265 = v267;
    v266 = v268;
    v261 = _swiftEmptyArrayStorage;

    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v88 = sub_100235F88(Predicate);
    sub_100271A98(v88);
    v239 = Predicate;
    v89 = sub_100235FA0(Predicate);
    sub_100271A98(v89);
    sub_1000F5104(&qword_10093F5A8, &qword_10079DFD0);
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    v90 = v268;
    v91 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v92 = [objc_allocWithZone(NSFetchRequest) init];
    v237 = v91;
    v93 = [swift_getObjCClassFromMetadata() entity];
    [v92 setEntity:v93];

    [v92 setAffectedStores:0];
    [v92 setPredicate:v74];
    v261 = _swiftEmptySetSingleton;

    sub_100050AD0(v94);
    v240 = v90;

    v95 = sub_1003FE014(v261);
    v236 = v84;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v238 = v92;
    [v92 setPropertiesToFetch:isa];

    v97 = v267;
    v218 = v74;
    v243 = v75;
    if (v267 >> 62)
    {
      break;
    }

    v98 = *((v267 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v260 = v267;
    if (!v98)
    {
      goto LABEL_29;
    }

LABEL_17:
    v264 = _swiftEmptyArrayStorage;
    v99 = &v264;
    sub_100026EF4(0, v98 & ~(v98 >> 63), 0);
    if ((v98 & 0x8000000000000000) == 0)
    {
      v100 = 0;
      v101 = v264;
      v102 = v97;
      v258 = v97 & 0xFFFFFFFFFFFFFF8;
      v259 = v97 & 0xC000000000000001;
      while (1)
      {
        v103 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          __break(1u);
          goto LABEL_73;
        }

        if (v259)
        {
          v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v100 >= *(v258 + 16))
          {
            __break(1u);
            goto LABEL_94;
          }

          v104 = *&v102[8 * v100 + 32];
        }

        v99 = v104;
        v105 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v106)
        {
          break;
        }

        v97 = v105;
        v95 = v106;

        v264 = v101;
        v108 = v101[2];
        v107 = v101[3];
        if (v108 >= v107 >> 1)
        {
          v99 = &v264;
          sub_100026EF4((v107 > 1), v108 + 1, 1);
          v101 = v264;
        }

        v101[2] = v108 + 1;
        v109 = &v101[2 * v108];
        v109[4] = v97;
        v109[5] = v95;
        ++v100;
        v102 = v260;
        if (v103 == v98)
        {
          v79 = v255;
          goto LABEL_29;
        }
      }

      v261 = 0;
      v262 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v214._object = 0x80000001007EC120;
      v214._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v214);
      v263 = v104;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      LODWORD(v216) = 0;
      v215 = 19;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_102:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_100:
    swift_once();
  }

  v98 = _CocoaArrayWrapper.endIndex.getter();
  v260 = v97;
  if (v98)
  {
    goto LABEL_17;
  }

LABEL_29:
  v110 = swift_allocObject();
  v111 = Array._bridgeToObjectiveC()().super.isa;

  v112 = v238;
  [v238 setRelationshipKeyPathsForPrefetching:v111];

  v113 = v79;
  v114 = v79;
  v115 = v249;
  sub_10053CE0C(v114, v249, v252);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v116 = Array._bridgeToObjectiveC()().super.isa;

  [v112 setSortDescriptors:v116];

  v117 = v236;
  v118 = NSManagedObjectContext.fetch<A>(_:)();
  v259 = v117;
  if (v117)
  {

    sub_1001A4F3C(v253, _s9UtilitiesO12SortingStyleOMa);

    swift_deallocUninitializedObject();
    v119 = Subtasks;
    v120 = v234;
    v122 = v250;
    v121 = v251;
LABEL_47:
    (*(v120 + 8))(v242, v119);
    v156 = *(v122 + 8);
    v67 = (v122 + 8);
    v156(v115, v121);
    sub_1001A4F3C(v113, _s9UtilitiesO12SortingStyleOMa);
    return v67;
  }

  *(v110 + 16) = v118;

  v123 = v250;
  v124 = v251;
  v125 = v232;
  (*(v250 + 16))(v232, v115, v251);
  v126 = (*(v123 + 88))(v125, v124);
  if (v126 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {

    (*(v123 + 8))(v125, v124);
    goto LABEL_38;
  }

  if (v126 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {

    (*(v123 + 96))(v125, v124);
    v261 = *v125;
    sub_1000F5104(&qword_100944F78, qword_1007AABF0);
    type metadata accessor for UUID();
    sub_10000CB48(&qword_100947CB0, &qword_100944F78, qword_1007AABF0);
    sub_10046D43C(&qword_10093B410, &type metadata accessor for UUID);
    v127 = v259;
    v128 = Sequence.mapToSet<A>(_:)();
    v259 = v127;

    goto LABEL_39;
  }

  if (v126 != enum case for REMRemindersListDataView.ShowCompleted.off(_:) && v126 != enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    goto LABEL_102;
  }

LABEL_38:
  v128 = _swiftEmptySetSingleton;
LABEL_39:
  v129 = *(v110 + 16);

  v130 = _swiftEmptyArrayStorage;
  v131 = sub_100155C54(_swiftEmptyArrayStorage, v128, v129);

  v132 = *(v110 + 16);
  v258 = v110;
  *(v110 + 16) = v131;

  v133 = v233;
  sub_1001A4ED8(v113, v233);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v134 = v133;
    v135 = *v133;
    v137 = v134[1];
    v136 = v134[2];
    v139 = v134[3];
    v138 = v134[4];

    if (v135)
    {

      v140 = v244;
      if (v244)
      {
        v141 = v258;
        v142 = *(v258 + 16);

        v143 = sub_100155828(v135, v249, v140, v142);

        v144 = *(v141 + 16);
        *(v141 + 16) = v143;
      }
    }
  }

  else
  {
    sub_1001A4F3C(v133, _s9UtilitiesO12SortingStyleOMa);
  }

  v145 = swift_allocObject();
  v145[2] = 0;
  v146 = swift_allocObject();
  *(v146 + 2) = 0;
  v263 = _swiftEmptyDictionarySingleton;
  v264 = _swiftEmptyDictionarySingleton;
  v147 = v258;
  v148 = *(v258 + 16);
  __chkstk_darwin(v146);
  v149 = v113;
  v150 = v242;
  *(&v217 - 14) = v113;
  *(&v217 - 13) = v150;
  v151 = v257;
  *(&v217 - 12) = v152;
  *(&v217 - 11) = v151;
  v153 = v249;
  *(&v217 - 10) = v147;
  *(&v217 - 9) = v153;
  *(&v217 - 8) = &v266;
  *(&v217 - 7) = &v265;
  *(&v217 - 6) = 0;
  *(&v217 - 40) = 0;
  *(&v217 - 4) = v244;
  *(&v217 - 3) = v145;
  v215 = &v264;
  v216 = &v263;

  v154 = v259;
  v155 = sub_1003DE68C(sub_10046D484, (&v217 - 16), v148);
  v259 = v154;
  if (v154)
  {

    sub_1001A4F3C(v253, _s9UtilitiesO12SortingStyleOMa);

    v119 = Subtasks;
    v120 = v234;
    v122 = v250;
    v121 = v251;
    v115 = v249;
    goto LABEL_47;
  }

  v158 = v155;
  v238 = v146;
  v239 = v145;

  v159 = v230;
  sub_1001A4ED8(v149, v230);
  v160 = swift_getEnumCaseMultiPayload();
  if (v160 > 2)
  {
    v161 = v249;
    v162 = v256;
    if (v160 == 3 || v160 == 4)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v161 = v249;
    v162 = v256;
    if (v160 < 2)
    {
      v163 = v248;
      v164 = v227;
      (*(v248 + 32))(v227, v159, v256);
      v165 = sub_100156950(v164, v161, v158);

      (*(v163 + 8))(v164, v162);
      goto LABEL_56;
    }

LABEL_54:
    sub_1001A4F3C(v159, _s9UtilitiesO12SortingStyleOMa);
  }

  v165 = v158;
LABEL_56:
  v261 = _swiftEmptyArrayStorage;
  v166 = *(v165 + 16);
  if (v166)
  {
    v167 = *(v229 + 16);
    v168 = v165 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
    v169 = *(v229 + 72);
    v170 = (v229 + 8);
    do
    {
      v171 = v246;
      v172 = v247;
      v167(v246, v168, v247);
      REMSortableElement.element.getter();
      (*v170)(v171, v172);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v237 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v168 += v169;
      --v166;
    }

    while (v166);
    v130 = v261;
    v161 = v249;
    v162 = v256;
  }

  v173 = v258;
  swift_beginAccess();
  v174 = *(v173 + 16);
  *(v173 + 16) = v130;

  v175 = v231;
  sub_1001A4ED8(v255, v231);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v176 = v248;
    v177 = v228;
    (*(v248 + 32))(v228, v175, v162);
    v178 = *(v173 + 16);

    v179 = sub_1001561A0(v177, v161, v178);

    (*(v176 + 8))(v177, v162);
    v180 = *(v173 + 16);
    *(v173 + 16) = v179;
  }

  else
  {
    sub_1001A4F3C(v175, _s9UtilitiesO12SortingStyleOMa);
  }

  v181 = v161;
  v182 = *(v173 + 16);

  v184 = v259;
  v260 = sub_1005364C4(v183, &v264, &v263);

  v95 = *(v173 + 16);

  (*(v234 + 8))(v242, Subtasks);
  (*(v250 + 8))(v181, v251);
  if (!v241)
  {
    v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v189 = v188;
    v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v253;
    if (v187 == v190 && v189 == v191)
    {
    }

    else
    {
      v197 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v197 & 1) == 0)
      {
        v201 = sub_10003A1B8();
        if (!v201)
        {
          goto LABEL_73;
        }

        v185 = v201;
        v202 = sub_10022F65C(v217, v201);
        if (!v184)
        {
          v192 = v202;
          v213 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
          [v213 initWithStore:v226 storage:v192];
          goto LABEL_72;
        }

LABEL_77:
        v185 = v218;
        goto LABEL_78;
      }
    }

    v198 = objc_opt_self();
    v199 = String._bridgeToObjectiveC()();
    [v198 invalidParameterErrorWithDescription:v199];

    swift_willThrow();
    goto LABEL_77;
  }

  v185 = v241;
  v186 = sub_10022EB6C(v185);
  v97 = v253;
  if (v184)
  {

LABEL_78:
    v67 = v255;

    sub_1001A4F3C(v97, _s9UtilitiesO12SortingStyleOMa);
    sub_1001A4F3C(v67, _s9UtilitiesO12SortingStyleOMa);
    return v67;
  }

  v192 = v186;
  v193 = objc_allocWithZone(REMSmartList);
  [v193 initWithStore:v226 storage:v192];
  v194 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
  REMSmartList_Codable.init(_:)();
LABEL_72:

LABEL_73:
  if (REMRemindersListDataView.TodayGroupInvocation.Parameters.grouped.getter())
  {
    v195 = v223;
    REMRemindersListDataView.TodayGroupInvocation.Parameters.today.getter();
    v196 = v241;
    v67 = sub_1004669B4(v195, v241, v260, v95);

    (*(v224 + 8))(v195, v225);
    goto LABEL_89;
  }

  v99 = v219;
  sub_1001A4ED8(v97, v219);
  v200 = swift_getEnumCaseMultiPayload();
  if (v200 > 2)
  {
    if (v200 == 3 || v200 == 4)
    {
LABEL_87:

      sub_1001A4F3C(v99, _s9UtilitiesO12SortingStyleOMa);
    }

    else
    {
    }

    sub_1000F5104(&qword_100943EC0, &qword_1007A4650);
    v203 = *(type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group() - 8);
    v204 = *(v203 + 72);
    v205 = (*(v203 + 80) + 32) & ~*(v203 + 80);
    v67 = swift_allocObject();
    v67[1] = xmmword_100791300;
    (*(v221 + 104))(v220, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.today(_:), v222);
    REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();

LABEL_89:
    v206 = v255;
  }

  else
  {
    if (v200)
    {
      goto LABEL_87;
    }

LABEL_94:
    v207 = v223;
    v208 = v99;
    REMRemindersListDataView.TodayGroupInvocation.Parameters.today.getter();
    v209 = v241;
    v259 = sub_1004679EC(v207, v241, v260, v95);

    (*(v224 + 8))(v207, v225);
    sub_1000F5104(&qword_100943EC0, &qword_1007A4650);
    v210 = *(type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group() - 8);
    v211 = *(v210 + 72);
    v212 = (*(v210 + 80) + 32) & ~*(v210 + 80);
    v67 = swift_allocObject();
    v67[1] = xmmword_100791300;
    (*(v221 + 104))(v220, enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.today(_:), v222);
    REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)();

    sub_1001A4F3C(v97, _s9UtilitiesO12SortingStyleOMa);
    v97 = v255;
    v206 = v208;
  }

  sub_1001A4F3C(v97, _s9UtilitiesO12SortingStyleOMa);
  sub_1001A4F3C(v206, _s9UtilitiesO12SortingStyleOMa);
  return v67;
}

uint64_t sub_10046AB44(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
  if (a2)
  {
    goto LABEL_2;
  }

  (*(v10 + 16))(v14, a1, v9, v12);
  v20 = (*(v10 + 88))(v14, v9);
  if (v20 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v10 + 96))(v14, v9);
    (*(v5 + 32))(v8, v14, v4);
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100791300;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 32) = 0xD000000000000018;
    *(v21 + 40) = 0x80000001007EAB00;
    v22 = String._bridgeToObjectiveC()();
    v61[1] = 0;
    v23 = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v25 = objc_opt_self();
    v26 = [v25 predicateWithFormat:v23 argumentArray:isa];

    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100791340;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 32) = 0xD00000000000001DLL;
    *(v27 + 40) = 0x80000001007F8F60;
    *(v27 + 88) = v4;
    v28 = sub_1000103CC((v27 + 64));
    (*(v5 + 16))(v28, v8, v4);
    v29 = String._bridgeToObjectiveC()();
    v30 = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v25 predicateWithFormat:v29 argumentArray:v30];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100796900;
    *(v32 + 32) = v26;
    *(v32 + 40) = v31;
    sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
    v33 = v26;
    v34 = v31;
    v35 = Array._bridgeToObjectiveC()().super.isa;

    v19 = [objc_opt_self() orPredicateWithSubpredicates:v35];

    v15 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
    (*(v5 + 8))(v8, v4);
    goto LABEL_14;
  }

  if (v20 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v10 + 96))(v14, v9);
    v36 = *v14;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100791300;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 32) = 0xD000000000000018;
    *(v37 + 40) = 0x80000001007EAB00;
    v38 = String._bridgeToObjectiveC()();
    v39 = Array._bridgeToObjectiveC()().super.isa;

    v40 = objc_opt_self();
    v19 = [v40 predicateWithFormat:v38 argumentArray:v39];

    if ((v36 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_8:
        v41 = sub_1004646D8(v36);

        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_100791340;
        *(v42 + 56) = &type metadata for String;
        *(v42 + 32) = 0xD000000000000019;
        *(v42 + 40) = 0x80000001007EAAC0;
        *(v42 + 88) = sub_1000F5104(&qword_10093D008, qword_10079AAC0);
        *(v42 + 64) = v41;
        v43 = String._bridgeToObjectiveC()();
        v44 = Array._bridgeToObjectiveC()().super.isa;

        v45 = [v40 predicateWithFormat:v43 argumentArray:v44];

        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_100796900;
        *(v46 + 32) = v19;
        *(v46 + 40) = v45;
        sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
        v47 = v19;
        v48 = v45;
        v49 = Array._bridgeToObjectiveC()().super.isa;

        v15 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
        v19 = [objc_opt_self() orPredicateWithSubpredicates:v49];

        goto LABEL_14;
      }
    }

    else if (*(v36 + 16))
    {
      goto LABEL_8;
    }

    v15 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
  }

  else
  {
    if (v20 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
    {
LABEL_2:
      sub_1000F5104(&unk_100938E80, &unk_1007959D0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100791300;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 32) = 0xD000000000000018;
      *(v16 + 40) = 0x80000001007EAB00;
      v17 = String._bridgeToObjectiveC()();
      v18 = Array._bridgeToObjectiveC()().super.isa;

      v19 = [objc_opt_self() predicateWithFormat:v17 argumentArray:v18];

      goto LABEL_14;
    }

    if (v20 != enum case for REMRemindersListDataView.ShowCompleted.on(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v19 = [objc_opt_self() predicateWithValue:1];
  }

LABEL_14:
  v50 = v19;
  v51 = sub_10029EB64(0x65722E6D72616C61, 0xEE007265646E696DLL, 0);
  v63[4] = v50;
  v63[5] = v51;
  v62 = _swiftEmptyArrayStorage;
  v52 = v51;
  for (i = 0; i != 2; ++i)
  {
    v54 = v63[i + 4];
    if (v54)
    {
      v55 = v54;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_1000F5104(&qword_100947CA8, &qword_1007AABE8);
  swift_arrayDestroy();
  sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
  v57 = Array._bridgeToObjectiveC()().super.isa;

  v58 = v15[453];
  v59 = [objc_opt_self() andPredicateWithSubpredicates:v57];

  return v59;
}

unint64_t sub_10046B584(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_20:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = &selRef_hack_willSaveHandled;
  v5 = &selRef_hack_willSaveHandled;
  v6 = &selRef_persistentStoreForIdentifier_;
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v24 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v7 = *(a1 + 8 * v3 + 32);
    }

    v8 = v7;
    [v7 v4[286]];
    v10 = v9;
    [v8 v5[306]];
    v12 = v11;
    [v8 v6[63]];
    v14 = v13;
    v15 = [v8 locationUID];
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      [v8 v4[286]];
      Double.write<A>(to:)();
      [v8 v5[306]];
      Double.write<A>(to:)();
      [v8 v6[63]];
      Double.write<A>(to:)();
    }

    v17 = objc_allocWithZone(CLCircularRegion);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v17 initWithCenter:v18 radius:v10 identifier:{v12, v14}];

    v20 = REMStructuredLocation.clCircularRegion.getter();
    v21 = CLCircularRegion.overlaps(_:)(v20);

    if (!v21)
    {
      return v3;
    }

    v22 = __OFADD__(v3++, 1);
    v4 = &selRef_hack_willSaveHandled;
    v5 = &selRef_hack_willSaveHandled;
    v6 = &selRef_persistentStoreForIdentifier_;
    if (v22)
    {
      goto LABEL_19;
    }
  }
}

unint64_t sub_10046B7E8(unint64_t *a1)
{
  v3 = *a1;
  result = sub_10046B584(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = a1;
  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &selRef_hack_willSaveHandled;
  v9 = &selRef_hack_willSaveHandled;
  v10 = &selRef_persistentStoreForIdentifier_;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v12 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v13 = v12;
    [v12 v8[286]];
    v15 = v14;
    [v13 v9[306]];
    v17 = v16;
    [v13 v10[63]];
    v19 = v18;
    v20 = [v13 locationUID];
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      [v13 v8[286]];
      Double.write<A>(to:)();
      [v13 v9[306]];
      Double.write<A>(to:)();
      [v13 v10[63]];
      Double.write<A>(to:)();
    }

    v22 = objc_allocWithZone(CLCircularRegion);
    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 initWithCenter:v23 radius:v15 identifier:{v17, v19}];

    v25 = REMStructuredLocation.clCircularRegion.getter();
    v26 = CLCircularRegion.overlaps(_:)(v25);

    if (v26)
    {
      v9 = &selRef_hack_willSaveHandled;
      if (v6 == v7)
      {
        v8 = &selRef_hack_willSaveHandled;
        v10 = &selRef_persistentStoreForIdentifier_;
        v11 = __OFADD__(v6++, 1);
        if (v11)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v29 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v29)
          {
            goto LABEL_53;
          }

          if (v7 >= v29)
          {
            goto LABEL_54;
          }

          v30 = *(v3 + 32 + 8 * v7);
          v27 = *(v3 + 32 + 8 * v6);
          v28 = v30;
        }

        v31 = v28;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1002618D4(v3);
          v32 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v32) = 0;
        }

        v33 = v3 & 0xFFFFFFFFFFFFFF8;
        v34 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v31;

        if ((v3 & 0x8000000000000000) != 0 || v32)
        {
          v3 = sub_1002618D4(v3);
          v33 = v3 & 0xFFFFFFFFFFFFFF8;
        }

        v8 = &selRef_hack_willSaveHandled;
        v10 = &selRef_persistentStoreForIdentifier_;
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        if (v7 >= *(v33 + 16))
        {
          goto LABEL_51;
        }

        v35 = v33 + 8 * v7;
        v36 = *(v35 + 32);
        *(v35 + 32) = v27;

        *v37 = v3;
        v9 = &selRef_hack_willSaveHandled;
        v11 = __OFADD__(v6++, 1);
        if (v11)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v8 = &selRef_hack_willSaveHandled;
      v9 = &selRef_hack_willSaveHandled;
      v10 = &selRef_persistentStoreForIdentifier_;
    }

    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_10046BBC4(unint64_t a1, void *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_28:
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v22 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = [v6 alarm];
    if (!v8 || (v9 = v8, v10 = [v8 reminder], v9, !v10))
    {
      v13 = v7;
      v14 = v5;
LABEL_23:

      return v14;
    }

    if (!a2)
    {
      if (qword_100935F50 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_1009442B0);
      v16 = v10;
      v13 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v13, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v16;
        *v19 = v10;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v13, v17, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v18, 0xCu);
        sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
      }

      v14 = 0;
      goto LABEL_23;
    }

    v11 = [a2 evaluateWithObject:v10];

    if ((v11 & 1) == 0)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_27;
    }
  }
}

void sub_10046BE48(unint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = *a1;
  v6 = sub_10046BBC4(*a1, a2);
  v8 = v6;
  if (v2)
  {
    return;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      goto LABEL_56;
    }

    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    return;
  }

  v36 = 0;
  v37 = a1;
  v10 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  v11 = &selRef_accountStatusWithCompletionHandler_;
  v39 = v3;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (v10 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v14 = *(v5 + 8 * v10 + 32);
LABEL_16:
    v15 = v14;
    v16 = [v14 v11[46]];
    if (v16 && (v17 = v16, v18 = [v16 reminder], v17, v18))
    {
      if (v3)
      {
        v19 = [v3 evaluateWithObject:v18];

        if (v19)
        {
          if (v8 != v10)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_58;
              }

              v28 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v28)
              {
                goto LABEL_59;
              }

              if (v10 >= v28)
              {
                goto LABEL_60;
              }

              v29 = *(v5 + 32 + 8 * v10);
              v20 = *(v5 + 32 + 8 * v8);
              v21 = v29;
            }

            v30 = v21;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1002618D4(v5);
              v31 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v31) = 0;
            }

            v32 = v5 & 0xFFFFFFFFFFFFFF8;
            v33 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v30;

            if ((v5 & 0x8000000000000000) != 0 || v31)
            {
              v5 = sub_1002618D4(v5);
              v32 = v5 & 0xFFFFFFFFFFFFFF8;
            }

            v11 = &selRef_accountStatusWithCompletionHandler_;
            v3 = v39;
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v10 >= *(v32 + 16))
            {
              goto LABEL_55;
            }

            v34 = v32 + 8 * v10;
            v35 = *(v34 + 32);
            *(v34 + 32) = v20;

            *v37 = v5;
          }

          v13 = __OFADD__(v8++, 1);
          if (v13)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_9;
      }

      if (qword_100935F50 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_1009442B0);
      v23 = v18;
      v12 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v12, v24))
      {
        v38 = v8;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v23;
        *v26 = v18;
        v27 = v23;
        _os_log_impl(&_mh_execute_header, v12, v24, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v25, 0xCu);
        sub_1000050A4(v26, &unk_100938E70, &unk_100797230);
        v3 = v39;

        v8 = v38;
      }

      v11 = &selRef_accountStatusWithCompletionHandler_;
    }

    else
    {
      v12 = v15;
    }

LABEL_9:
    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  _CocoaArrayWrapper.endIndex.getter();
}

void sub_10046C22C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v31[0] = a2;
  v6 = _s10PredicatesOMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = sub_10046AB44(a3, a4);
  [v10 setPredicate:v11];

  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v12];

  v34 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 4, 0);
  v13 = v34;
  v33 = &type metadata for String;
  *&v32 = 0x656475746974616CLL;
  *(&v32 + 1) = 0xE800000000000000;
  v15 = v34[2];
  v14 = v34[3];
  if (v15 >= v14 >> 1)
  {
    sub_100010D04((v14 > 1), v15 + 1, 1);
    v13 = v34;
  }

  v13[2] = v15 + 1;
  sub_100005EE0(&v32, &v13[4 * v15 + 4]);
  v33 = &type metadata for String;
  *&v32 = 0x64757469676E6F6CLL;
  *(&v32 + 1) = 0xE900000000000065;
  v34 = v13;
  v17 = v13[2];
  v16 = v13[3];
  if (v17 >= v16 >> 1)
  {
    sub_100010D04((v16 > 1), v17 + 1, 1);
    v13 = v34;
  }

  v13[2] = v17 + 1;
  sub_100005EE0(&v32, &v13[4 * v17 + 4]);
  v33 = &type metadata for String;
  *&v32 = 0x737569646172;
  *(&v32 + 1) = 0xE600000000000000;
  v34 = v13;
  v19 = v13[2];
  v18 = v13[3];
  if (v19 >= v18 >> 1)
  {
    sub_100010D04((v18 > 1), v19 + 1, 1);
    v13 = v34;
  }

  v13[2] = v19 + 1;
  sub_100005EE0(&v32, &v13[4 * v19 + 4]);
  v33 = &type metadata for String;
  *&v32 = 0x6E6F697461636F6CLL;
  *(&v32 + 1) = 0xEB00000000444955;
  v34 = v13;
  v21 = v13[2];
  v20 = v13[3];
  if (v21 >= v20 >> 1)
  {
    sub_100010D04((v20 > 1), v21 + 1, 1);
    v13 = v34;
  }

  v13[2] = v21 + 1;
  sub_100005EE0(&v32, &v13[4 * v21 + 4]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setPropertiesToFetch:isa];

  v23 = v31[1];
  v24 = NSManagedObjectContext.fetch<A>(_:)();
  if (v23)
  {

    return;
  }

  *&v32 = v24;
  v25 = v31[0];
  v26 = sub_10046B7E8(&v32);

  if (!(v32 >> 62))
  {
    v27 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 >= v26)
    {
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30 >= v6)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (v27 < v26)
  {
    goto LABEL_17;
  }

LABEL_13:
  sub_100260DBC(v26, v27);
  swift_storeEnumTagMultiPayload();
  v28 = sub_100043AA8();
  sub_1001A4F3C(v9, _s10PredicatesOMa);
  v9 = v28;
  sub_10046BE48(&v32, v28);
  v6 = v29;

  if (v32 >> 62)
  {
    goto LABEL_18;
  }

  v30 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v30 >= v6)
  {
LABEL_15:
    sub_100260DBC(v6, v30);

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_10046C84C(unint64_t a1, unint64_t a2)
{
  v114 = a1;
  v121 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v117 = *(v121 - 8);
  v3 = *(v117 + 64);
  __chkstk_darwin(v121);
  v116 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v115 = &v95 - v6;
  __chkstk_darwin(v7);
  v120 = &v95 - v8;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v9 = *(Subtasks - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(Subtasks);
  v109 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v111 = &v95 - v13;
  v113 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v108 = *(v113 - 8);
  v14 = *(v108 + 64);
  __chkstk_darwin(v113);
  v107 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v17 = *(v16 - 8);
  v118 = v16;
  v119 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v110 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v105 = &v95 - v21;
  __chkstk_darwin(v22);
  v24 = &v95 - v23;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v26 = *(Configuration - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(Configuration);
  v106 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v104 = &v95 - v30;
  __chkstk_darwin(v31);
  v33 = &v95 - v32;
  __chkstk_darwin(v34);
  v36 = &v95 - v35;
  v37 = a2;
  v38 = REMRemindersListDataView.TodayGroupInvocation.Parameters.currentLocation.getter();
  v39 = _swiftEmptyArrayStorage;
  if (!v38)
  {
    return v39;
  }

  v103 = v33;
  v102 = v9;
  v40 = v38;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v43 = *(v26 + 8);
  v42 = (v26 + 8);
  v41 = v43;
  v43(v36, Configuration);
  v44 = v122;
  sub_10046C22C(v114, v40, v24, 0);
  v46 = Configuration;
  if (v44)
  {

    (*(v119 + 8))(v24, v118);
    return v39;
  }

  v47 = v45;
  v96 = v41;
  v97 = v42;
  v123 = v37;
  v100 = v40;
  v122 = 0;
  v48 = *(v119 + 8);
  v119 += 8;
  v99 = v48;
  v48(v24, v118);
  v124 = _swiftEmptyArrayStorage;
  v49 = v47 & 0xFFFFFFFFFFFFFF8;
  if (v47 >> 62)
  {
LABEL_59:
    v50 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v50 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v46;
  if (!v50)
  {
    v101 = _swiftEmptyArrayStorage;
    v39 = v123;
    goto LABEL_25;
  }

  v51 = 0;
  v101 = _swiftEmptyArrayStorage;
  while (2)
  {
    v46 = v51;
    while (1)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *(v49 + 16))
        {
          goto LABEL_56;
        }

        v52 = *(v47 + v46 + 4);
      }

      v53 = v52;
      v51 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v54 = [v52 alarm];
      if (v54)
      {
        break;
      }

LABEL_11:
      ++v46;
      v39 = v123;
      if (v51 == v50)
      {
        goto LABEL_25;
      }
    }

    v55 = v54;
    v56 = [v54 reminder];

    if (!v56)
    {
      goto LABEL_11;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v57 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v101 = v124;
    v39 = v123;
    if (v51 != v50)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v124 = v101;
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CB48(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  sub_10018BA8C();
  v58 = v122;
  v59 = Sequence.unique<A>(by:)();
  if (v58)
  {

    return v39;
  }

  v122 = 0;
  v61 = v59;

  v63 = v107;
  v62 = v108;
  (*(v108 + 104))(v107, enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v113);
  v64 = v103;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v65 = v105;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v66 = v64;
  v67 = v98;
  v47 = v97;
  v68 = v96;
  v96(v66, v98);
  v103 = sub_1001561A0(v63, v65, v61);

  v99(v65, v118);
  (*(v62 + 8))(v63, v113);
  v69 = v104;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v70 = v111;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v68(v69, v67);
  v71 = v106;
  REMRemindersListDataView.TodayGroupInvocation.Parameters.configuration.getter();
  v72 = v110;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v68(v71, v67);
  v73 = v102;
  v74 = v109;
  v75 = Subtasks;
  (*(v102 + 16))(v109, v70, Subtasks);
  v76 = (*(v73 + 88))(v74, v75);
  if (v76 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:) || v76 == enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    v123 = sub_10038E654(_swiftEmptyArrayStorage);
    v49 = v103;
    goto LABEL_35;
  }

  if (v76 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
  {
    v49 = v103;
    v77 = v122;
    sub_100539C70(v103, v72, v114, 0);
    v122 = v77;
    if (v77)
    {

      v99(v72, v118);
      (*(v73 + 8))(v70, v75);
      return v39;
    }

    v123 = v78;
LABEL_35:
    v99(v72, v118);
    (*(v73 + 8))(v70, v75);
    if (v49 >> 62)
    {
      v79 = _CocoaArrayWrapper.endIndex.getter();
      v46 = v123;
      if (v79)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v79 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v46 = v123;
      if (v79)
      {
LABEL_37:
        v80 = 0;
        v118 = v49 & 0xFFFFFFFFFFFFFF8;
        v119 = v49 & 0xC000000000000001;
        v81 = (v117 + 32);
        v39 = _swiftEmptyArrayStorage;
        v114 = v79;
        while (1)
        {
          if (v119)
          {
            v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              goto LABEL_57;
            }
          }

          else
          {
            if (v80 >= *(v118 + 16))
            {
              goto LABEL_58;
            }

            v82 = *(v49 + 8 * v80 + 32);
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              goto LABEL_57;
            }
          }

          v47 = v82;
          v84 = [v47 objectID];
          v85 = v84;
          if (*(v46 + 16))
          {
            v86 = sub_100363FF4(v84);
            if (v87)
            {
              v88 = *(*(v46 + 56) + 8 * v86);
            }
          }

          v89 = [v47 remObjectID];
          if (v89)
          {
            REMObjectID.codable.getter();
            [v47 completed];
            v90 = v116;
            REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtaskCount:subtasks:)();

            v47 = *v81;
            v91 = v115;
            v92 = v121;
            (*v81)(v115, v90, v121);
            (v47)(v120, v91, v92);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_100365A24(0, v39[2] + 1, 1, v39);
            }

            v94 = v39[2];
            v93 = v39[3];
            v49 = v103;
            if (v94 >= v93 >> 1)
            {
              v39 = sub_100365A24(v93 > 1, v94 + 1, 1, v39);
            }

            v39[2] = v94 + 1;
            (v47)(v39 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v94, v120, v121);
          }

          else
          {
          }

          ++v80;
          v46 = v123;
          if (v83 == v114)
          {
            goto LABEL_62;
          }
        }
      }
    }

    v39 = _swiftEmptyArrayStorage;
LABEL_62:

    return v39;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10046D43C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10046D484(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 112);
  v5 = *(v2 + 120);
  sub_10053A630(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), a2, *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104));
}

unint64_t sub_10046D510()
{
  result = qword_100947CC8;
  if (!qword_100947CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947CC8);
  }

  return result;
}

uint64_t sub_10046D564()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947CD0);
  v1 = sub_100006654(v0, qword_100947CD0);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_10046D62C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  v11 = sub_1000F5104(&qword_100947E50, &unk_1007AF320);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  result = sub_1004719AC(a1, type metadata accessor for REMCDListInZREMCDOBJECT, &qword_100936520, &qword_100975230);
  v67 = v1;
  if (v1)
  {
    return result;
  }

  v19 = result;
  v63 = v17;
  v59 = v14;
  v61 = v7;
  v69 = _swiftEmptyDictionarySingleton;
  if (result >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v57 = v10;
    v60 = v4;
    v65 = v3;
    if (i)
    {
      v4 = i;
      v21 = 0;
      v3 = v19 & 0xC000000000000001;
      v10 = v19 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v3)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_40;
        }

        v25 = objc_autoreleasePoolPush();
        v26 = v67;
        sub_10046E364(a1, v23, &v69, &v68);
        v67 = v26;
        if (v26)
        {

          v67 = v68;
          objc_autoreleasePoolPop(v25);
        }

        objc_autoreleasePoolPop(v25);

        ++v21;
        if (v24 == v4)
        {
          v27 = v69;
          goto LABEL_16;
        }
      }
    }

    v27 = _swiftEmptyDictionarySingleton;
LABEL_16:

    v28 = v27[8];
    v54 = v27 + 8;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v10 = v30 & v28;
    v31 = (v29 + 63) >> 6;
    v55 = v60 + 16;
    v64 = (v60 + 32);
    v62 = (v60 + 8);
    v58 = v27;

    v32 = 0;
    v56 = a1;
    v19 = v61;
    v3 = v59;
    if (v10)
    {
      break;
    }

LABEL_20:
    if (v31 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    else
    {
      v34 = v31;
    }

    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {
        v66 = v34 - 1;
        v49 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
        (*(*(v49 - 8) + 56))(v3, 1, 1, v49);
        v10 = 0;
        goto LABEL_27;
      }

      v10 = v54[v33];
      ++v32;
      if (v10)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  while (1)
  {
    v33 = v32;
LABEL_26:
    v35 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v36 = v35 | (v33 << 6);
    v37 = v58;
    v38 = v60;
    (*(v60 + 16))(v57, v58[6] + *(v60 + 72) * v36, v65);
    v39 = *(v37[7] + 8 * v36);
    v40 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    v41 = *(v40 + 48);
    v3 = v59;
    (*(v38 + 32))();
    *(v3 + v41) = v39;
    (*(*(v40 - 8) + 56))(v3, 0, 1, v40);

    v66 = v33;
    a1 = v56;
    v19 = v61;
LABEL_27:
    v4 = v3;
    v42 = v3;
    v43 = v63;
    sub_100471B18(v42, v63);
    v44 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {
      break;
    }

    v45 = *(v43 + *(v44 + 48));
    v46 = v65;
    (*v64)(v19, v43, v65);
    v47 = objc_autoreleasePoolPush();
    v48 = v67;
    sub_10046EC48(v19, a1, v45, &v68);
    v67 = v48;
    if (v48)
    {

      v67 = v68;
      objc_autoreleasePoolPop(v47);

      (*v62)(v19, v46);
    }

    objc_autoreleasePoolPop(v47);
    (*v62)(v19, v46);
    v32 = v66;
    v3 = v4;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  if ([a1 hasChanges])
  {
    v68 = 0;
    if ([a1 save:&v68])
    {
      v50 = v68;
      [a1 refreshAllObjects];
    }

    else
    {
      v51 = v68;
      v52 = _convertNSErrorToError(_:)();

      v67 = v52;
      swift_willThrow();
    }
  }
}

unint64_t sub_10046DCC8(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  v11 = sub_1000F5104(&qword_100947E50, &unk_1007AF320);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  result = sub_1004719AC(a1, type metadata accessor for REMCDSmartListInZREMCDOBJECT, &qword_100936778, &qword_1009752E0);
  v67 = v1;
  if (v1)
  {
    return result;
  }

  v19 = result;
  v63 = v17;
  v59 = v14;
  v61 = v7;
  v69 = _swiftEmptyDictionarySingleton;
  if (result >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v57 = v10;
    v60 = v4;
    v65 = v3;
    if (i)
    {
      v4 = i;
      v21 = 0;
      v3 = v19 & 0xC000000000000001;
      v10 = v19 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v3)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_40;
        }

        v25 = objc_autoreleasePoolPush();
        v26 = v67;
        sub_10046F1C4(a1, v23, &v69, &v68);
        v67 = v26;
        if (v26)
        {

          v67 = v68;
          objc_autoreleasePoolPop(v25);
        }

        objc_autoreleasePoolPop(v25);

        ++v21;
        if (v24 == v4)
        {
          v27 = v69;
          goto LABEL_16;
        }
      }
    }

    v27 = _swiftEmptyDictionarySingleton;
LABEL_16:

    v28 = v27[8];
    v54 = v27 + 8;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v10 = v30 & v28;
    v31 = (v29 + 63) >> 6;
    v55 = v60 + 16;
    v64 = (v60 + 32);
    v62 = (v60 + 8);
    v58 = v27;

    v32 = 0;
    v56 = a1;
    v19 = v61;
    v3 = v59;
    if (v10)
    {
      break;
    }

LABEL_20:
    if (v31 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    else
    {
      v34 = v31;
    }

    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {
        v66 = v34 - 1;
        v49 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
        (*(*(v49 - 8) + 56))(v3, 1, 1, v49);
        v10 = 0;
        goto LABEL_27;
      }

      v10 = v54[v33];
      ++v32;
      if (v10)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  while (1)
  {
    v33 = v32;
LABEL_26:
    v35 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v36 = v35 | (v33 << 6);
    v37 = v58;
    v38 = v60;
    (*(v60 + 16))(v57, v58[6] + *(v60 + 72) * v36, v65);
    v39 = *(v37[7] + 8 * v36);
    v40 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    v41 = *(v40 + 48);
    v3 = v59;
    (*(v38 + 32))();
    *(v3 + v41) = v39;
    (*(*(v40 - 8) + 56))(v3, 0, 1, v40);

    v66 = v33;
    a1 = v56;
    v19 = v61;
LABEL_27:
    v4 = v3;
    v42 = v3;
    v43 = v63;
    sub_100471B18(v42, v63);
    v44 = sub_1000F5104(&qword_100947E58, &qword_1007AAEE0);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {
      break;
    }

    v45 = *(v43 + *(v44 + 48));
    v46 = v65;
    (*v64)(v19, v43, v65);
    v47 = objc_autoreleasePoolPush();
    v48 = v67;
    sub_10046FAA8(v19, a1, v45, &v68);
    v67 = v48;
    if (v48)
    {

      v67 = v68;
      objc_autoreleasePoolPop(v47);

      (*v62)(v19, v46);
    }

    objc_autoreleasePoolPop(v47);
    (*v62)(v19, v46);
    v32 = v66;
    v3 = v4;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  if ([a1 hasChanges])
  {
    v68 = 0;
    if ([a1 save:&v68])
    {
      v50 = v68;
      [a1 refreshAllObjects];
    }

    else
    {
      v51 = v68;
      v52 = _convertNSErrorToError(_:)();

      v67 = v52;
      swift_willThrow();
    }
  }
}

void sub_10046E364(void *a1, void *a2, id *a3, uint64_t *a4)
{
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v78 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v81 = v12;
  v82 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v78 - v19;
  v85 = 0;
  v83 = a1;
  v21 = [a1 existingObjectWithID:a2 error:{&v85, v18}];
  v22 = v85;
  if (!v21)
  {
    v44 = v85;
    v45 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *a4 = v45;
    return;
  }

  v23 = v21;
  type metadata accessor for REMCDListInZREMCDOBJECT();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    v46 = v22;

    if (qword_1009361D8 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100006654(v47, qword_100947CD0);
    v48 = a2;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v51 = 136315650;
      v84 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
      v85 = v53;
      sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
      v54 = String.init<A>(describing:)();
      v56 = sub_10000668C(v54, v55, &v85);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_10000668C(0xD000000000000014, 0x80000001007F2410, &v85);
      *(v51 + 22) = 2114;
      *(v51 + 24) = v48;
      *v52 = v48;
      v57 = v48;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%s|%s] Failed to process list of {listMOIDInZREMCDOBJECT: %{public}@} since its managed object could not be fetched", v51, 0x20u);
      sub_1000050A4(v52, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    return;
  }

  v25 = v24;
  type metadata accessor for REMCDListInZREMCDBASELIST();
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = v22;
  isUniquelyReferenced_nonNull_native = [v26 initWithContext:v83];
  sub_100470AC8(v25);
  v29 = [v25 ckCloudState];
  if (v29)
  {
    v30 = v29;
    [v29 setObject:0];
    [v30 setSavedAttachment:0];
    [v30 setSavedReminder:0];
    [v30 setTemplate:0];
    [v30 setList:isUniquelyReferenced_nonNull_native];
  }

  v31 = [v25 parentList];
  if (!v31)
  {
LABEL_29:
    v73 = 0;
    goto LABEL_30;
  }

  v80 = v31;
  v32 = [v31 identifier];
  if (!v32)
  {
    if (qword_1009361D8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100006654(v58, qword_100947CD0);
    v59 = v23;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v79 = isUniquelyReferenced_nonNull_native;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v78 = v63;
      *v62 = 136315650;
      v84 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
      v85 = v63;
      sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
      v64 = String.init<A>(describing:)();
      v66 = sub_10000668C(v64, v65, &v85);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_10000668C(0xD000000000000014, 0x80000001007F2410, &v85);
      *(v62 + 22) = 2082;
      v67 = [v25 identifier];
      if (v67)
      {
        v68 = v67;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = 0;
      }

      else
      {
        v69 = 1;
      }

      (*(v82 + 56))(v11, v69, 1, v81);
      v74 = Optional.descriptionOrNil.getter();
      v76 = v75;
      sub_1000050A4(v11, &unk_100939D90, "8\n\r");
      v77 = sub_10000668C(v74, v76, &v85);

      *(v62 + 24) = v77;
      _os_log_impl(&_mh_execute_header, v60, v61, "[%s|%s] Failed to process parentList because parentList.identifier is nil {list.identifier: %{public}s}", v62, 0x20u);
      swift_arrayDestroy();

      v73 = 0;
      isUniquelyReferenced_nonNull_native = v79;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v33 = v32;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = isUniquelyReferenced_nonNull_native;
  v78 = [isUniquelyReferenced_nonNull_native ic_permanentObjectID];
  v34 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = *a3;
  v35 = v85;
  *a3 = 0x8000000000000000;
  v37 = sub_100363F20(v20);
  v38 = v35[2];
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
LABEL_34:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_27:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v82 + 8))(v20, a3);
    v73 = sub_100471B98;
LABEL_30:
    [v83 refreshObject:v25 mergeChanges:0];

    sub_10003E114(v73);
    return;
  }

  v41 = v36;
  if (v35[3] >= v40)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003769E8();
      v35 = v85;
    }

LABEL_24:
    isUniquelyReferenced_nonNull_native = v79;
    v70 = *a3;
    *a3 = v35;

    v71 = *a3;
    a3 = v81;
    if ((v41 & 1) == 0)
    {
      (*(v82 + 16))(v16, v20, v81);
      sub_1002CB9B0(v37, v16, _swiftEmptyArrayStorage, v71);
    }

    v72 = (v71[7] + 8 * v37);
    v33 = v78;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

  sub_100370B40(v40, isUniquelyReferenced_nonNull_native);
  v35 = v85;
  v42 = sub_100363F20(v20);
  if ((v41 & 1) == (v43 & 1))
  {
    v37 = v42;
    goto LABEL_24;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10046EC48(void *a1, void *a2, id a3, uint64_t *a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100471718(a1);
  if (v4)
  {
LABEL_2:
    *a4 = v4;
    return;
  }

  v55 = 0;
  v56 = v14;
  if (v14 && (v15 = [v14 ic_permanentObjectID]) != 0)
  {
    v48 = a4;
    v58 = 0;
    v16 = v15;
    v17 = [a2 existingObjectWithID:v16 error:&v58];
    v18 = v58;
    if (!v17)
    {
      v43 = v58;

      v44 = _convertNSErrorToError(_:)();
      v45 = v44;
      swift_willThrow();
LABEL_28:

      v4 = v45;
      a4 = v48;
      goto LABEL_2;
    }

    v19 = v17;
    v20 = type metadata accessor for REMCDListInZREMCDBASELIST();
    v51 = v19;
    v54 = v20;
    v21 = swift_dynamicCastClass();
    v22 = v18;
    v50 = v16;

    v49 = v21;
    if (v21)
    {
      if (a3 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
        if (v23)
        {
LABEL_9:
          v13 = 0;
          v52 = a3 & 0xFFFFFFFFFFFFFF8;
          v53 = a3 & 0xC000000000000001;
          while (1)
          {
            if (v53)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v13 >= *(v52 + 16))
              {
                goto LABEL_30;
              }

              v39 = *(a3 + v13 + 4);
            }

            v38 = v39;
            v9 = (v13 + 1);
            if (__OFADD__(v13, 1))
            {
              break;
            }

            v58 = 0;
            v40 = [a2 existingObjectWithID:v39 error:&v58];
            v41 = v58;
            if (!v40)
            {
              v46 = v58;
              v47 = _convertNSErrorToError(_:)();

              v45 = v47;
              swift_willThrow();

              v16 = v50;
              goto LABEL_28;
            }

            a1 = v40;
            v10 = swift_dynamicCastClass();
            v42 = v41;
            if (v10)
            {
              v37 = v51;
              [v10 setParentList:v49];
            }

            else
            {
              v37 = v38;
              v38 = a1;
            }

            ++v13;
            if (v9 == v23)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        v23 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_9;
        }
      }

LABEL_33:

      goto LABEL_34;
    }

    a3 = v50;
  }

  else
  {
    a3 = 0;
  }

  if (qword_1009361D8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_100947CD0);
  (*(v10 + 16))(v13, a1, v9);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v25, v26))
  {

    (*(v10 + 8))(v13, v9);
    return;
  }

  v27 = swift_slowAlloc();
  v50 = a3;
  v28 = v27;
  v29 = swift_slowAlloc();
  *v28 = 136315650;
  v57 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
  v58 = v29;
  sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
  v30 = String.init<A>(describing:)();
  v32 = sub_10000668C(v30, v31, &v58);

  *(v28 + 4) = v32;
  *(v28 + 12) = 2080;
  *(v28 + 14) = sub_10000668C(0xD000000000000014, 0x80000001007F2410, &v58);
  *(v28 + 22) = 2082;
  sub_1001B397C();
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v34;
  (*(v10 + 8))(v13, v9);
  v36 = sub_10000668C(v33, v35, &v58);

  *(v28 + 24) = v36;
  _os_log_impl(&_mh_execute_header, v25, v26, "[%s|%s] Failed to process sublists of {parentListIdentifier: %{public}s} since its managed object could not be fetched", v28, 0x20u);
  swift_arrayDestroy();

LABEL_34:
}

void sub_10046F1C4(void *a1, void *a2, id *a3, uint64_t *a4)
{
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v78 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v81 = v12;
  v82 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v78 - v19;
  v85 = 0;
  v83 = a1;
  v21 = [a1 existingObjectWithID:a2 error:{&v85, v18}];
  v22 = v85;
  if (!v21)
  {
    v44 = v85;
    v45 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *a4 = v45;
    return;
  }

  v23 = v21;
  type metadata accessor for REMCDSmartListInZREMCDOBJECT();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    v46 = v22;

    if (qword_1009361D8 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100006654(v47, qword_100947CD0);
    v48 = a2;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v51 = 136315650;
      v84 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
      v85 = v53;
      sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
      v54 = String.init<A>(describing:)();
      v56 = sub_10000668C(v54, v55, &v85);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_10000668C(0xD000000000000019, 0x80000001007F9460, &v85);
      *(v51 + 22) = 2114;
      *(v51 + 24) = v48;
      *v52 = v48;
      v57 = v48;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%s|%s] Failed to process smartlist of {listMOIDInZREMCDOBJECT: %{public}@} since its managed object could not be fetched", v51, 0x20u);
      sub_1000050A4(v52, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    return;
  }

  v25 = v24;
  type metadata accessor for REMCDSmartListInZREMCDBASELIST();
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = v22;
  isUniquelyReferenced_nonNull_native = [v26 initWithContext:v83];
  sub_100471254(v25);
  v29 = [v25 ckCloudState];
  if (v29)
  {
    v30 = v29;
    [v29 setObject:0];
    [v30 setSavedAttachment:0];
    [v30 setSavedReminder:0];
    [v30 setTemplate:0];
    [v30 setList:isUniquelyReferenced_nonNull_native];
  }

  v31 = [v25 parentList];
  if (!v31)
  {
LABEL_29:
    v73 = 0;
    goto LABEL_30;
  }

  v80 = v31;
  v32 = [v31 identifier];
  if (!v32)
  {
    if (qword_1009361D8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100006654(v58, qword_100947CD0);
    v59 = v23;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v79 = isUniquelyReferenced_nonNull_native;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v78 = v63;
      *v62 = 136315650;
      v84 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
      v85 = v63;
      sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
      v64 = String.init<A>(describing:)();
      v66 = sub_10000668C(v64, v65, &v85);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_10000668C(0xD000000000000019, 0x80000001007F9460, &v85);
      *(v62 + 22) = 2082;
      v67 = [v25 identifier];
      if (v67)
      {
        v68 = v67;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = 0;
      }

      else
      {
        v69 = 1;
      }

      (*(v82 + 56))(v11, v69, 1, v81);
      v74 = Optional.descriptionOrNil.getter();
      v76 = v75;
      sub_1000050A4(v11, &unk_100939D90, "8\n\r");
      v77 = sub_10000668C(v74, v76, &v85);

      *(v62 + 24) = v77;
      _os_log_impl(&_mh_execute_header, v60, v61, "[%s|%s] Failed to process parentList because parentList.identifier is nil {smartList.identifier: %{public}s}", v62, 0x20u);
      swift_arrayDestroy();

      v73 = 0;
      isUniquelyReferenced_nonNull_native = v79;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v33 = v32;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = isUniquelyReferenced_nonNull_native;
  v78 = [isUniquelyReferenced_nonNull_native ic_permanentObjectID];
  v34 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = *a3;
  v35 = v85;
  *a3 = 0x8000000000000000;
  v37 = sub_100363F20(v20);
  v38 = v35[2];
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
LABEL_34:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_27:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v82 + 8))(v20, a3);
    v73 = sub_100471B98;
LABEL_30:
    [v83 refreshObject:v25 mergeChanges:0];

    sub_10003E114(v73);
    return;
  }

  v41 = v36;
  if (v35[3] >= v40)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003769E8();
      v35 = v85;
    }

LABEL_24:
    isUniquelyReferenced_nonNull_native = v79;
    v70 = *a3;
    *a3 = v35;

    v71 = *a3;
    a3 = v81;
    if ((v41 & 1) == 0)
    {
      (*(v82 + 16))(v16, v20, v81);
      sub_1002CB9B0(v37, v16, _swiftEmptyArrayStorage, v71);
    }

    v72 = (v71[7] + 8 * v37);
    v33 = v78;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

  sub_100370B40(v40, isUniquelyReferenced_nonNull_native);
  v35 = v85;
  v42 = sub_100363F20(v20);
  if ((v41 & 1) == (v43 & 1))
  {
    v37 = v42;
    goto LABEL_24;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10046FAA8(void *a1, void *a2, unint64_t a3, uint64_t *a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100471718(a1);
  if (v4)
  {
LABEL_2:
    *a4 = v4;
    return;
  }

  v53 = 0;
  v54 = v14;
  if (v14 && (v15 = [v14 ic_permanentObjectID]) != 0)
  {
    v47 = a4;
    v56 = 0;
    v16 = v15;
    v17 = [a2 existingObjectWithID:v16 error:&v56];
    v18 = v56;
    if (!v17)
    {
      v41 = v56;

      v42 = _convertNSErrorToError(_:)();
      v43 = v42;
      swift_willThrow();
LABEL_28:

      v4 = v43;
      a4 = v47;
      goto LABEL_2;
    }

    v19 = v17;
    type metadata accessor for REMCDListInZREMCDBASELIST();
    v50 = v19;
    v20 = swift_dynamicCastClass();
    v21 = v18;
    v49 = v16;

    v48 = v20;
    if (v20)
    {
      if (a3 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (v22)
        {
LABEL_9:
          v13 = 0;
          v51 = a3 & 0xFFFFFFFFFFFFFF8;
          v52 = a3 & 0xC000000000000001;
          while (1)
          {
            if (v52)
            {
              v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v13 >= *(v51 + 16))
              {
                goto LABEL_30;
              }

              v36 = *(a3 + 8 * v13 + 32);
            }

            v18 = v36;
            v9 = (v13 + 1);
            if (__OFADD__(v13, 1))
            {
              break;
            }

            v56 = 0;
            v37 = [a2 existingObjectWithID:v36 error:&v56];
            v38 = v56;
            if (!v37)
            {
              v44 = v56;
              v45 = _convertNSErrorToError(_:)();

              v43 = v45;
              swift_willThrow();

              v16 = v49;
              goto LABEL_28;
            }

            a1 = v37;
            type metadata accessor for REMCDSmartListInZREMCDBASELIST();
            v39 = swift_dynamicCastClass();
            v40 = v38;
            if (v39)
            {
              v10 = v50;
              [v39 setParentList:v48];
            }

            else
            {
              v10 = v18;
              v18 = a1;
            }

            ++v13;
            if (v9 == v22)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_9;
        }
      }

LABEL_33:

      goto LABEL_34;
    }

    v18 = v49;
  }

  else
  {
    v18 = 0;
  }

  if (qword_1009361D8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_100947CD0);
  (v10[2])(v13, a1, v9);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v24, v25))
  {

    (v10[1])(v13, v9);
    return;
  }

  v26 = swift_slowAlloc();
  v49 = v18;
  v27 = v26;
  v28 = swift_slowAlloc();
  *v27 = 136315650;
  v55 = &_s57MigrateListsAndSmartListsFromZREMCDOBJECTToZREMCDBASELISTON;
  v56 = v28;
  sub_1000F5104(&unk_100947E60, &qword_1007AAEE8);
  v29 = String.init<A>(describing:)();
  v31 = sub_10000668C(v29, v30, &v56);

  *(v27 + 4) = v31;
  *(v27 + 12) = 2080;
  *(v27 + 14) = sub_10000668C(0xD000000000000019, 0x80000001007F9460, &v56);
  *(v27 + 22) = 2082;
  sub_1001B397C();
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v34 = v33;
  (v10[1])(v13, v9);
  v35 = sub_10000668C(v32, v34, &v56);

  *(v27 + 24) = v35;
  _os_log_impl(&_mh_execute_header, v24, v25, "[%s|%s] Failed to process children smartlists of {parentListIdentifier: %{public}s} since its managed object could not be fetched", v27, 0x20u);
  swift_arrayDestroy();

LABEL_34:
}

void sub_10047002C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = __chkstk_darwin(v4).n128_u64[0];
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 setCkDirtyFlags:{objc_msgSend(a1, "ckDirtyFlags", v7)}];
  v10 = [a1 ckIdentifier];
  [v2 setCkIdentifier:v10];

  [v2 setCkNeedsInitialFetchFromCloud:{objc_msgSend(a1, "ckNeedsInitialFetchFromCloud")}];
  [v2 setCkNeedsToBeFetchedFromCloud:{objc_msgSend(a1, "ckNeedsToBeFetchedFromCloud")}];
  v11 = [a1 ckServerRecordData];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v13, v15);
  }

  else
  {
    v16.super.isa = 0;
  }

  [v2 setCkServerRecordData:v16.super.isa];

  v17 = [a1 ckServerShareData];
  if (v17)
  {
    v18 = v17;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v19, v21);
  }

  else
  {
    v22.super.isa = 0;
  }

  [v2 setCkServerShareData:v22.super.isa];

  v23 = [a1 ckZoneOwnerName];
  [v2 setCkZoneOwnerName:v23];

  v24 = [a1 daPushKey];
  [v2 setDaPushKey:v24];

  v25 = [a1 daSyncToken];
  [v2 setDaSyncToken:v25];

  [v2 setEffectiveMinimumSupportedAppVersion:{objc_msgSend(a1, "effectiveMinimumSupportedAppVersion")}];
  v26 = [a1 externalIdentifier];
  [v2 setExternalIdentifier:v26];

  v27 = [a1 externalModificationTag];
  [v2 setExternalModificationTag:v27];

  v28 = [a1 identifier];
  if (v28)
  {
    v29 = v28;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v30.super.isa = 0;
  }

  [v2 setIdentifier:v30.super.isa];

  [v2 setMarkedForDeletion:{objc_msgSend(a1, "markedForDeletion")}];
  [v2 setMinimumSupportedAppVersion:{objc_msgSend(a1, "minimumSupportedAppVersion")}];
  v31 = [a1 resolutionTokenMap];
  [v2 setResolutionTokenMap:v31];

  v32 = [a1 resolutionTokenMap_v2_JSON];
  [v2 setResolutionTokenMap_v2_JSON:v32];

  v33 = [a1 resolutionTokenMap_v3_JSONData];
  if (v33)
  {
    v34 = v33;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v35, v37);
  }

  else
  {
    v38.super.isa = 0;
  }

  [v2 setResolutionTokenMap_v3_JSONData:v38.super.isa];

  v39 = [a1 account];
  [v2 setAccount:v39];
}

void sub_100470578(void *a1)
{
  v2 = v1;
  v42 = type metadata accessor for Date();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v42);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = __chkstk_darwin(v8).n128_u64[0];
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 badgeEmblem];
  [v2 setBadgeEmblem:v14];

  v15 = [a1 color];
  [v2 setColor:v15];

  v16 = [a1 membershipsOfRemindersInSectionsAsData];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v18, v20);
  }

  else
  {
    v21.super.isa = 0;
  }

  [v2 setMembershipsOfRemindersInSectionsAsData:v21.super.isa];

  v22 = [a1 membershipsOfRemindersInSectionsChecksum];
  [v2 setMembershipsOfRemindersInSectionsChecksum:v22];

  v23 = [a1 mostRecentTargetTemplateIdentifier];
  if (v23)
  {
    v24 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    v25.super.isa = 0;
  }

  [v2 setMostRecentTargetTemplateIdentifier:v25.super.isa];

  v26 = [a1 name];
  [v2 setName:v26];

  v27 = [a1 pinnedDate];
  if (v27)
  {
    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v42);
  }

  else
  {
    v29.super.isa = 0;
  }

  [v2 setPinnedDate:v29.super.isa];

  v30 = [a1 sectionIDsOrderingAsData];
  if (v30)
  {
    v31 = v30;
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v32, v34);
  }

  else
  {
    v35.super.isa = 0;
  }

  [v2 setSectionIDsOrderingAsData:v35.super.isa];

  [v2 setShowingLargeAttachments:{objc_msgSend(a1, "showingLargeAttachments")}];
  v36 = [a1 sortingStyle];
  [v2 setSortingStyle:v36];

  type metadata accessor for REMCDListInZREMCDOBJECT();
  v37 = swift_dynamicCastClass();
  if (v37)
  {
    v38 = v37;
    v39 = a1;
    [v2 setSpotlightIndexCount:{objc_msgSend(v38, "spotlightIndexCount")}];
  }

  v40 = [a1 parentAccount];
  [v2 setParentAccount:v40];
}

void sub_100470AC8(void *a1)
{
  v2 = v1;
  v54 = type metadata accessor for UUID();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v54);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047002C(a1);
  sub_100470578(a1);
  v13 = [a1 daBulkRequests];
  if (v13)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v15, v17);
  }

  else
  {
    v18.super.isa = 0;
  }

  [v2 setDaBulkRequests:v18.super.isa];

  [v2 setDaDisplayOrder:{objc_msgSend(a1, "daDisplayOrder")}];
  v19 = [a1 daExternalIdentificationTag];
  [v2 setDaExternalIdentificationTag:v19];

  [v2 setDaIsEventOnlyContainer:{objc_msgSend(a1, "daIsEventOnlyContainer")}];
  [v2 setDaIsImmutable:{objc_msgSend(a1, "daIsImmutable")}];
  [v2 setDaIsNotificationsCollection:{objc_msgSend(a1, "daIsNotificationsCollection")}];
  [v2 setDaIsReadOnly:{objc_msgSend(a1, "daIsReadOnly")}];
  v20 = [a1 groceryLocalCorrectionsAsData];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v22, v24);
  }

  else
  {
    v25.super.isa = 0;
  }

  [v2 setGroceryLocalCorrectionsAsData:v25.super.isa];

  v26 = [a1 groceryLocalCorrectionsChecksum];
  [v2 setGroceryLocalCorrectionsChecksum:v26];

  v27 = [a1 groceryLocaleID];
  [v2 setGroceryLocaleID:v27];

  [v2 setIsGroup:{objc_msgSend(a1, "isGroup")}];
  [v2 setIsPinnedByCurrentUser:{objc_msgSend(a1, "isPinnedByCurrentUser")}];
  v28 = [a1 lastUserAccessDate];
  if (v28)
  {
    v29 = v28;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v30.super.isa = 0;
  }

  [v2 setLastUserAccessDate:v30.super.isa];

  v31 = [a1 mostRecentTargetTemplateIdentifierByCurrentUser];
  if (v31)
  {
    v32 = v31;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v33.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v54);
  }

  else
  {
    v33.super.isa = 0;
  }

  [v2 setMostRecentTargetTemplateIdentifierByCurrentUser:v33.super.isa];

  v34 = [a1 reminderIDsMergeableOrdering];
  if (v34)
  {
    v35 = v34;
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v36, v38);
  }

  else
  {
    v39.super.isa = 0;
  }

  [v2 setReminderIDsMergeableOrdering:v39.super.isa];

  v40 = [a1 reminderIDsMergeableOrdering_v2_JSON];
  if (v40)
  {
    v41 = v40;
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v42, v44);
  }

  else
  {
    v45.super.isa = 0;
  }

  [v2 setReminderIDsMergeableOrdering_v2_JSON:v45.super.isa];

  v46 = [a1 sharedOwnerAddress];
  [v2 setSharedOwnerAddress:v46];

  v47 = [a1 sharedOwnerName];
  [v2 setSharedOwnerName:v47];

  [v2 setSharingStatus:{objc_msgSend(a1, "sharingStatus")}];
  [v2 setShouldCategorizeGroceryItems:{objc_msgSend(a1, "shouldCategorizeGroceryItems")}];
  [v2 setShouldSuggestConversionToGroceryList:{objc_msgSend(a1, "shouldSuggestConversionToGroceryList")}];
  v48 = [a1 calDAVNotifications];
  [v2 setCalDAVNotifications:v48];

  v49 = [a1 reminders];
  [v2 setReminders:v49];

  v50 = [a1 sections];
  [v2 setSections:v50];

  v51 = [a1 sharedOwner];
  [v2 setSharedOwner:v51];

  v52 = [a1 sharees];
  [v2 setSharees:v52];
}

void sub_100471254(void *a1)
{
  sub_10047002C(a1);
  sub_100470578(a1);
  v3 = [a1 filterData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v5, v7);
  }

  else
  {
    v8.super.isa = 0;
  }

  [v1 setFilterData:v8.super.isa];

  v9 = [a1 smartListType];
  [v1 setSmartListType:v9];

  v10 = [a1 sections];
  [v1 setSections:v10];
}

id REMCDAccountV2023MinorEMigratingToZREMCDBASELIST.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDAccountV2023MinorEMigratingToZREMCDBASELIST();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id sub_100471640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a6(a5);
  return objc_msgSendSuper2(&v9, "initWithEntity:insertIntoManagedObjectContext:", a3, a4);
}

id sub_1004716BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100471718(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithEntityName:v5];

  [v6 setResultType:0];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 32) = 0x696669746E656469;
  *(v7 + 40) = 0xEA00000000007265;
  v8 = type metadata accessor for UUID();
  *(v7 + 88) = v8;
  v9 = sub_1000103CC((v7 + 64));
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  v10 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [objc_opt_self() predicateWithFormat:v10 argumentArray:isa];

  [v6 setPredicate:v12];
  [v6 setFetchLimit:1];
  type metadata accessor for REMCDListInZREMCDBASELIST();
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v15 = result;
  v16 = _CocoaArrayWrapper.endIndex.getter();
  result = v15;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(result + 32);
LABEL_8:
    v2 = v14;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004719AC(uint64_t a1, void (*a2)(void), void *a3, uint64_t *a4)
{
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  a2(0);
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setPredicate:0];
  [v7 setResultType:1];
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v7 setSortDescriptors:isa];

  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v11 = NSManagedObjectContext.fetch<A>(_:)();

  return v11;
}

uint64_t sub_100471B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100947E50, &unk_1007AF320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100471B9C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947E70);
  v1 = sub_100006654(v0, qword_100947E70);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall REMCDHashtagLabel.willSave_Swift()()
{
  if (([v0 didCleanUpManualSortHintOnDeletion] & 1) == 0)
  {
    [v0 setDidCleanUpManualSortHintOnDeletion:1];

    sub_100471CB8();
  }
}

void sub_100471CB8()
{
  v1 = v0;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v76 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  *&v14 = __chkstk_darwin(v11).n128_u64[0];
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v1 canonicalName];
  if (!v17)
  {
    if (qword_1009361E0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_100947E70);
    v81 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v81, v36, "cleanUpManualSortHintIfNeeded: Deleted hashtag label has nil canonicalName, abort cleanup", v37, 2u);
    }

    v38 = &v86;
    goto LABEL_26;
  }

  v18 = v17;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if ([v1 isDeleted])
  {
    if (![v1 wasDeletedDueToUserInitiatedChanges])
    {
      if (qword_1009361E0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_100947E70);

      v80 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      v41 = os_log_type_enabled(v80, v40);
      v42 = v81;
      if (v41)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v84[0] = v44;
        *v43 = 136315138;
        v45 = sub_10000668C(v42, v20, v84);

        *(v43 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v80, v40, "cleanUpManualSortHintIfNeeded: Hashtag label was deleted due to non-user-initiated changes, cleanup is not needed {canonicalName: %s}", v43, 0xCu);
        sub_10000607C(v44);

        return;
      }

LABEL_25:

      v38 = &v85;
LABEL_26:
      v46 = *(v38 - 32);

      return;
    }

    v21 = [v1 managedObjectContext];
    if (v21)
    {
      v80 = v21;
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        v24 = [v1 accountIdentifier];
        if (!v24)
        {
LABEL_9:
          if (qword_1009361E0 != -1)
          {
            swift_once();
          }

          v29 = type metadata accessor for Logger();
          sub_100006654(v29, qword_100947E70);

          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v84[0] = v33;
            *v32 = 136315138;
            v34 = sub_10000668C(v81, v20, v84);

            *(v32 + 4) = v34;
            _os_log_impl(&_mh_execute_header, v30, v31, "cleanUpManualSortHintIfNeeded: No accountIdentifier when the hashtag label is deleted {canonicalName: %s}", v32, 0xCu);
            sub_10000607C(v33);
          }

          else
          {
          }

          return;
        }

        v25 = v24;
        v79 = v23;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
        v78 = v26;
        UUID.init(uuidString:)();
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {

          sub_1000050A4(v10, &unk_100939D90, "8\n\r");
          goto LABEL_9;
        }

        v77 = v28;
        (*(v12 + 32))(v16, v10, v11);
        v47 = [objc_opt_self() cloudKitAccountWithCKIdentifier:v25 context:v79];

        if (v47)
        {
          v76 = v47;
          sub_10059EB10(&v82);
          if (v83)
          {

            sub_100054B6C(&v82, v84);
            if (qword_1009361E0 != -1)
            {
              swift_once();
            }

            v48 = type metadata accessor for Logger();
            v49 = sub_100006654(v48, qword_100947E70);

            v77 = v49;
            v50 = Logger.logObject.getter();
            v51 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              LODWORD(v78) = v51;
              v53 = v52;
              v54 = swift_slowAlloc();
              *&v82 = v54;
              *v53 = 136315138;
              *(v53 + 4) = sub_10000668C(v81, v20, &v82);
              _os_log_impl(&_mh_execute_header, v50, v78, "cleanUpManualSortHintIfNeeded: Hashtag label was deleted due to user-initiated changes, will delete all associated sort hints for the label {canonicalName: %s}", v53, 0xCu);
              sub_10000607C(v54);
            }

            sub_1000F5104(&unk_100936FD0, &unk_100795D40);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_100791300;
            *(inited + 32) = v81;
            *(inited + 40) = v20;

            sub_1001A5660(inited);
            swift_setDeallocating();
            sub_100034610(inited + 32);
            static REMHashtagLabelSpecifier.labels(_:)();

            v78 = sub_1002D7E80(v6, v84);
            v57 = v56;
            (*(v3 + 8))(v6, v2);
            v58 = objc_opt_self();
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v60 = [v58 objectIDWithUUID:isa];

            v61 = v60;
            sub_10013A994(0x4000000000000003uLL, v78, v57, v60);

            sub_10000607C(v84);
            goto LABEL_49;
          }

          sub_1000050A4(&v82, &qword_100947E90, &qword_10079B250);
          if (qword_1009361E0 != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          sub_100006654(v69, qword_100947E70);

          v70 = v77;

          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v84[0] = swift_slowAlloc();
            *v73 = 136315394;
            v74 = sub_10000668C(v81, v20, v84);

            *(v73 + 4) = v74;
            *(v73 + 12) = 2082;
            v75 = sub_10000668C(v78, v70, v84);

            *(v73 + 14) = v75;
            _os_log_impl(&_mh_execute_header, v71, v72, "cleanUpManualSortHintIfNeeded: Could not obtain manualSortIDHashKeyProvider in the CK account when the hashtag label is deleted {canonicalName: %s, accountIdentifier: %{public}s}", v73, 0x16u);
            swift_arrayDestroy();

            goto LABEL_49;
          }
        }

        else
        {
          if (qword_1009361E0 != -1)
          {
            swift_once();
          }

          v62 = type metadata accessor for Logger();
          sub_100006654(v62, qword_100947E70);

          v63 = v77;

          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v84[0] = swift_slowAlloc();
            *v66 = 136315394;
            v67 = sub_10000668C(v81, v20, v84);

            *(v66 + 4) = v67;
            *(v66 + 12) = 2082;
            v68 = sub_10000668C(v78, v63, v84);

            *(v66 + 14) = v68;
            _os_log_impl(&_mh_execute_header, v64, v65, "cleanUpManualSortHintIfNeeded: Fail to fetch CK account when the hashtag label is deleted {canonicalName: %s, accountIdentifier: %{public}s}", v66, 0x16u);
            swift_arrayDestroy();

LABEL_49:
            (*(v12 + 8))(v16, v11);
            return;
          }
        }

        goto LABEL_49;
      }

      goto LABEL_25;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> REMCDHashtagLabel.validateForInsert_Swift()()
{
  if (([v0 didEnqueueApprovalCascade] & 1) == 0)
  {
    [v0 setDidEnqueueApprovalCascade:1];
    sub_100472C1C();
  }
}

void sub_100472C1C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for UUID();
  v75 = *(v2 - 8);
  isa = v75[8].isa;
  __chkstk_darwin(v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v71 - v11;
  __chkstk_darwin(v13);
  v15 = &v71 - v14;
  v16 = type metadata accessor for Date();
  v74 = *(v16 - 8);
  v17 = v74[8].isa;
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v0 canonicalName];
  if (!v21)
  {
    v44 = v2;
    if (qword_1009361E0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100006654(v45, qword_100947E70);
    v46 = v0;
    v74 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    v48 = os_log_type_enabled(v74, v47);
    v49 = v75;
    if (v48)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76 = v51;
      *v50 = 136446210;
      v52 = [v46 uuidForChangeTracking];
      if (v52)
      {
        v53 = v52;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (v49[7].isa)(v9, 0, 1, v44);
      }

      else
      {
        (v49[7].isa)(v9, 1, 1, v44);
      }

      sub_100100FB4(v9, v12);
      if ((v49[6].isa)(v12, 1, v44))
      {
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v66 = 0xE90000000000003ELL;
        v67 = 0x64697575206F6E3CLL;
      }

      else
      {
        (v49[2].isa)(v5, v12, v44);
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v68 = UUID.uuidString.getter();
        v66 = v69;
        (v49[1].isa)(v5, v44);
        v67 = v68;
      }

      v70 = sub_10000668C(v67, v66, &v76);

      *(v50 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v74, v47, "enqueueApprovalCascade: Failed to cascade HashtagLabel approval due to nil canonicalName {uuidForChangeTracking: %{public}s}", v50, 0xCu);
      sub_10000607C(v51);

      v59 = v74;
      goto LABEL_29;
    }

    v59 = v74;
    goto LABEL_27;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  v26 = [v0 managedObjectContext];
  if (!v26)
  {

    if (qword_1009361E0 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100006654(v54, qword_100947E70);

    v75 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v76 = v57;
      *v56 = 136315138;
      v58 = sub_10000668C(v23, v25, &v76);

      *(v56 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v75, v55, "enqueueApprovalCascade: Failed to acquire handle to managedObjectContext {canonicalName: %s}", v56, 0xCu);
      sub_10000607C(v57);

      v59 = v75;
LABEL_29:

      return;
    }

    v59 = v75;
LABEL_27:

    goto LABEL_29;
  }

  v73 = v26;
  v27 = [v0 accountIdentifier];
  if (!v27)
  {

    if (qword_1009361E0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_100947E70);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v76 = v64;
      *v63 = 136315138;
      v65 = sub_10000668C(v23, v25, &v76);

      *(v63 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v61, v62, "enqueueApprovalCascade: Failed to acquire handle to account identifier for HashtagLabel {canonicalName: %s}", v63, 0xCu);
      sub_10000607C(v64);

      v59 = v73;
      goto LABEL_29;
    }

    v59 = v73;
    goto LABEL_27;
  }

  v72 = v27;

  Date.init()();
  v28 = [swift_getObjCClassFromMetadata() cdEntityName];
  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  v29 = v75;
  (v75[7].isa)(v15, 1, 1, v2);
  v71 = Date._bridgeToObjectiveC()().super.isa;
  v30 = String._bridgeToObjectiveC()();
  v31 = 0;
  if ((v29[6].isa)(v15, 1, v2) != 1)
  {
    v31 = UUID._bridgeToObjectiveC()().super.isa;
    (v29[1].isa)(v15, v2);
  }

  v32 = objc_allocWithZone(REMSharedEntitySyncActivity);
  v34 = v71;
  v33 = v72;
  v35 = [v32 initWithAccountIdentifier:v72 activityDate:v71 activityType:4 authorUserRecordIDString:v30 ckParentCloudObjectEntityName:0 ckParentCloudObjectIdentifier:0 ckIdentifier:v22 sharedEntityName:v28 uuidForChangeTracking:v31];

  (v74[1].isa)(v20, v16);
  v36 = [v1 objectID];
  v37 = [v36 persistentStore];

  type metadata accessor for REMCKSharedEntitySyncActivity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [ObjCClassFromMetadata entity];
  v40 = objc_allocWithZone(ObjCClassFromMetadata);
  v41 = [v40 initWithEntity:v39 insertIntoManagedObjectContext:v73];
  if (v37)
  {
    v42 = v37;
    v43 = v41;
    [v73 assignObject:v43 toPersistentStore:v42];
  }

  sub_1002A0038(v35);
}

uint64_t sub_1004735D8(void *a1, void *a2, void *a3, char a4)
{
  v170 = a1;
  v7 = type metadata accessor for UUID();
  v171 = *(v7 - 8);
  v172 = v7;
  v8 = *(v171 + 64);
  __chkstk_darwin(v7);
  v167 = v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v168 = v161 - v11;
  __chkstk_darwin(v12);
  v14 = v161 - v13;
  __chkstk_darwin(v15);
  v166 = v161 - v16;
  __chkstk_darwin(v17);
  v169 = v161 - v18;
  v176 = type metadata accessor for URL();
  v180 = *(v176 - 8);
  v19 = *(v180 + 64);
  __chkstk_darwin(v176);
  v21 = v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v174 = v161 - v23;
  __chkstk_darwin(v24);
  v26 = v161 - v25;
  __chkstk_darwin(v27);
  v173 = v161 - v28;
  __chkstk_darwin(v29);
  v31 = v161 - v30;
  v32 = type metadata accessor for RDSavedAttachment.URLMetadata();
  v33 = *(*(v32 - 8) + 64);
  *&v34 = __chkstk_darwin(v32).n128_u64[0];
  v36 = v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    v53 = [a3 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = [a3 metadata];
    if (v54)
    {
      v55 = v54;
      v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0xF000000000000000;
    }

    (*(v180 + 32))(v36, v31, v176);
    v78 = &v36[*(v32 + 20)];
    *v78 = v56;
    v78[1] = v58;
    v79 = type metadata accessor for JSONEncoder();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_100476AF8(&qword_100947EC0, type metadata accessor for RDSavedAttachment.URLMetadata);
    v82 = v175;
    v83 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v82)
    {
      sub_100476444(v36);
    }

    v86 = v83;
    v87 = v84;

    v88 = String._bridgeToObjectiveC()();
    v89 = v170;
    [v170 setAttachmentTypeRawValue:v88];

    v90 = [a3 objectID];
    v91 = [v90 uuid];

    v92 = v169;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v171 + 8))(v92, v172);
    [v89 setIdentifier:isa];

    v94 = Data._bridgeToObjectiveC()().super.isa;
    [v89 setMetadata:v94];

    v95 = [a3 uti];
    if (!v95)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = String._bridgeToObjectiveC()();
    }

    [v89 setUti:v95];
    sub_10001BBA0(v86, v87);

    return sub_100476444(v36);
  }

  if (a4 == 1)
  {
    v37 = [a3 fileURL];
    if (v37)
    {
      v38 = v37;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = v173;
      (*(v180 + 32))(v173, v26, v176);
      v40 = a2[3];
      v41 = a2[4];
      sub_10000F61C(a2, v40);
      v42 = (*(v41 + 24))(v39, v40, v41);
      if (!v43)
      {
        v42 = static REMFileDigester.sha512Sum(url:)();
        if (!v43)
        {
          v127 = objc_opt_self();
          v128 = String._bridgeToObjectiveC()();
          [v127 internalErrorWithDebugDescription:v128];

          swift_willThrow();
          return (*(v180 + 8))(v39, v176);
        }
      }

      v44 = v42;
      v45 = v43;
      v46 = [a3 fileSize];
      v47 = type metadata accessor for JSONEncoder();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      v177 = v46;
      sub_100476540();
      v50 = v175;
      v51 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v50)
      {
        (*(v180 + 8))(v39, v176);
LABEL_15:
      }

      v164 = v51;
      v167 = v52;

      v174 = URL.lastPathComponent.getter();
      v168 = v99;
      v163 = v44;
      v100 = a2[3];
      v101 = a2[4];
      v162 = sub_10000F61C(a2, v100);
      v102 = [a3 objectID];
      v103 = [v102 uuid];
      v175 = 0;
      v104 = v103;

      v105 = v166;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v165 = a3;
      v106 = [a3 accountID];
      v107 = [v106 uuid];

      v108 = v168;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v109 = *(v101 + 16);
      v159 = v101;
      v62 = v173;
      v110 = v175;
      v109(v105, v14, v174, v108, v163, v45, v173, 1, v100, v159);
      if (v110)
      {

        sub_10001BBA0(v164, v167);

        v111 = v172;
        v112 = *(v171 + 8);
        v112(v14, v172);
        v113 = v105;
LABEL_29:
        v112(v113, v111);
        return (*(v180 + 8))(v62, v176);
      }

      v175 = 0;
      v131 = v172;
      v132 = *(v171 + 8);
      v132(v14, v172);
      v132(v105, v131);
      v133 = String._bridgeToObjectiveC()();
      v134 = v170;
      [v170 setAttachmentTypeRawValue:v133];

      v135 = [v165 objectID];
      v136 = [v135 uuid];

      v137 = v169;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v138 = UUID._bridgeToObjectiveC()().super.isa;
      v132(v137, v131);
      [v134 setIdentifier:v138];

      v139 = v164;
      v140 = v167;
      v141 = Data._bridgeToObjectiveC()().super.isa;
      [v134 setMetadata:v141];

      v142 = String._bridgeToObjectiveC()();

      [v134 setFileName:v142];

      v143 = String._bridgeToObjectiveC()();

      [v134 setSha512Sum:v143];

      v144 = [v165 uti];
      if (!v144)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v144 = String._bridgeToObjectiveC()();
      }

      [v134 setUti:v144];
      sub_10001BBA0(v139, v140);

      return (*(v180 + 8))(v173, v176);
    }

LABEL_24:
    v96 = objc_opt_self();
    sub_1004764A0();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v98 = String._bridgeToObjectiveC()();
    [v96 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v98];

    return swift_willThrow();
  }

  v59 = a3;
  v60 = [a3 fileURL];
  if (!v60)
  {
    goto LABEL_24;
  }

  v61 = v60;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v62 = v174;
  (*(v180 + 32))(v174, v21, v176);
  v63 = a2[3];
  v64 = a2[4];
  sub_10000F61C(a2, v63);
  v65 = (*(v64 + 24))(v62, v63, v64);
  if (!v66)
  {
    v65 = static REMFileDigester.sha512Sum(url:)();
    if (!v66)
    {
      v129 = objc_opt_self();
      v130 = String._bridgeToObjectiveC()();
      [v129 internalErrorWithDebugDescription:v130];

      swift_willThrow();
      return (*(v180 + 8))(v62, v176);
    }
  }

  v67 = v65;
  v68 = v66;
  v69 = [v59 fileSize];
  v70 = [v59 width];
  v71 = [v59 height];
  v72 = type metadata accessor for JSONEncoder();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v177 = v69;
  v178 = v70;
  v179 = v71;
  sub_1004764EC();
  v75 = v175;
  v76 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v75)
  {
    (*(v180 + 8))(v174, v176);
    goto LABEL_15;
  }

  v164 = v76;
  v166 = v77;

  v173 = URL.lastPathComponent.getter();
  v162 = v114;
  v175 = 0;
  v115 = v67;
  v117 = a2[3];
  v116 = a2[4];
  v163 = sub_10000F61C(a2, v117);
  v118 = [v59 objectID];
  v119 = [v118 uuid];

  v120 = v168;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v165 = v59;
  v121 = [v59 accountID];
  v122 = [v121 uuid];

  v123 = v167;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v124 = *(v116 + 16);
  v160 = v116;
  v125 = v123;
  v62 = v174;
  v161[1] = v115;
  v126 = v175;
  v124(v120, v123, v173, v162, v115, v68, v174, 1, v117, v160);
  if (v126)
  {

    sub_10001BBA0(v164, v166);

    v111 = v172;
    v112 = *(v171 + 8);
    v112(v125, v172);
    v113 = v120;
    goto LABEL_29;
  }

  v175 = 0;
  v145 = v172;
  v146 = *(v171 + 8);
  v146(v123, v172);
  v146(v120, v145);
  v147 = String._bridgeToObjectiveC()();
  v148 = v170;
  [v170 setAttachmentTypeRawValue:v147];

  v149 = [v165 objectID];
  v150 = [v149 uuid];

  v151 = v169;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v152 = UUID._bridgeToObjectiveC()().super.isa;
  v146(v151, v145);
  [v148 setIdentifier:v152];

  v153 = v164;
  v154 = v166;
  v155 = Data._bridgeToObjectiveC()().super.isa;
  [v148 setMetadata:v155];

  v156 = String._bridgeToObjectiveC()();

  [v148 setFileName:v156];

  v157 = String._bridgeToObjectiveC()();

  [v148 setSha512Sum:v157];

  v158 = [v165 uti];
  if (!v158)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = String._bridgeToObjectiveC()();
  }

  [v148 setUti:v158];
  sub_10001BBA0(v153, v154);

  return (*(v180 + 8))(v174, v176);
}

void sub_1004745E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSString a6)
{
  v8 = *v6;
  v9.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = String._bridgeToObjectiveC()();
  if (a6)
  {
    a6 = String._bridgeToObjectiveC()();
  }

  v12 = [v8 URLForAttachmentFile:v9.super.isa accountID:v10.super.isa fileName:v11 sha512Sum:a6];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_100474704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSString a6, uint64_t a7, char a8)
{
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v11.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = String._bridgeToObjectiveC()();
  if (a6)
  {
    a6 = String._bridgeToObjectiveC()();
  }

  URL._bridgeToObjectiveC()(v12);
  v15 = v14;
  v20 = 0;
  v16 = [v19 updateAttachmentFile:v10.super.isa accountID:v11.super.isa fileName:v13 sha512Sum:a6 fileURL:v14 keepSource:a8 & 1 error:&v20];

  if (v16)
  {
    return v20;
  }

  v18 = v20;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100474878@<X0>(NSURL *a1@<X8>)
{
  v2 = *v1;
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = [v2 extractSha512Sum:v3];

  if (!v5)
  {
    return 0;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1004748FC(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_100947F98, &qword_1007AB100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_100476A40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for URL();
  sub_100476AF8(&qword_100945620, &type metadata accessor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for RDSavedAttachment.URLMetadata() + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_1001CB4B8(v15, v12);
    sub_10015377C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031A14(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100474ADC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for URL();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100947F78, &qword_1007AB0E8);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for RDSavedAttachment.URLMetadata();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_100476A40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  LOBYTE(v32) = 0;
  sub_100476AF8(&qword_100945610, &type metadata accessor for URL);
  v19 = v31;
  v20 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v33 = 1;
  sub_1000318F4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v32;
  sub_100476A94(v22, v27);
  sub_10000607C(a1);
  return sub_100476444(v22);
}

uint64_t sub_100474E3C(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v5 = sub_1000F5104(&qword_100947F88, &qword_1007AB0F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1004769EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100474FEC(uint64_t a1)
{
  v2 = sub_100476A40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100475028(uint64_t a1)
{
  v2 = sub_100476A40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004750AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100475134(uint64_t a1)
{
  v2 = sub_1004766BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100475170(uint64_t a1)
{
  v2 = sub_1004766BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004751AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_100947F58, &qword_1007AB0D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1004766BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_10000607C(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_10047530C(void *a1)
{
  v3 = sub_1000F5104(&qword_100947F90, &qword_1007AB0F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1004766BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100475444()
{
  v1 = 0x6874646977;
  if (*v0 != 1)
  {
    v1 = 0x746867696568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657A6953656C6966;
  }
}

uint64_t sub_100475498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100476710(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004754C0(uint64_t a1)
{
  v2 = sub_1004769EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004754FC(uint64_t a1)
{
  v2 = sub_1004769EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100475538@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100476820(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

id sub_1004755B4(void *a1, uint64_t *a2)
{
  v156 = a2;
  v3 = type metadata accessor for URL();
  v146 = *(v3 - 8);
  v147 = v3;
  v4 = *(v146 + 64);
  __chkstk_darwin(v3);
  v6 = v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v136 - v13;
  __chkstk_darwin(v15);
  v148 = v136 - v16;
  v17 = type metadata accessor for RDSavedAttachment.URLMetadata();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = [v21 remObjectID];
  if (!v22)
  {

    v41 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v46 = String._bridgeToObjectiveC()();
    [v41 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v46];

    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v144 = v7;
  v145 = v8;
  v150 = v22;
  v23 = [v21 account];
  if (!v23 || (v24 = v23, v25 = [v23 remObjectID], v24, (v143 = v25) == 0))
  {

    v41 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    v42 = swift_getObjCClassFromMetadata();
    v43 = String._bridgeToObjectiveC()();
    [v41 unexpectedNilPropertyWithClass:v42 property:v43];

    swift_willThrow();
    v44 = v150;
LABEL_16:

    goto LABEL_17;
  }

  v26 = [v21 reminder];
  if (!v26 || (v27 = v26, v28 = [v26 remObjectID], v27, !v28))
  {

    v41 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    v47 = swift_getObjCClassFromMetadata();
    v48 = String._bridgeToObjectiveC()();
    [v41 unexpectedNilPropertyWithClass:v47 property:v48];

    swift_willThrow();
    v44 = v143;
    goto LABEL_16;
  }

  v29 = [v21 metadata];
  if (!v29)
  {

    v41 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    v50 = swift_getObjCClassFromMetadata();
    v51 = String._bridgeToObjectiveC()();
    [v41 unexpectedNilPropertyWithClass:v50 property:v51];

    swift_willThrow();
    goto LABEL_17;
  }

  v30 = v29;
  v141 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v142 = v31;

  v32 = &selRef_isEmpty;
  v33 = [v21 attachmentTypeRawValue];
  if (!v33)
  {
LABEL_20:

    v151 = 0;
    v152 = 0xE000000000000000;
    _StringGuts.grow(_:)(135);
    v52._countAndFlagsBits = 0xD000000000000084;
    v52._object = 0x80000001007F94C0;
    String.append(_:)(v52);
    v53 = [v21 v32[443]];
    if (v53)
    {
      v54 = v53;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v58 = v143;
    v41 = objc_opt_self();
    v154 = v55;
    v155 = v57;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v59 = Optional.descriptionOrNil.getter();
    v61 = v60;

    v62._countAndFlagsBits = v59;
    v62._object = v61;
    String.append(_:)(v62);

    v63._countAndFlagsBits = 125;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v64 = String._bridgeToObjectiveC()();

    [v41 invalidParameterErrorWithDescription:v64];

    swift_willThrow();
    sub_10001BBA0(v141, v142);

    goto LABEL_18;
  }

  v34 = v33;
  v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37._countAndFlagsBits = v140;
  v37._object = v36;
  v38 = _findStringSwitchCase(cases:string:)(&off_1008DD7E8, v37);

  if (v38)
  {
    if (v38 == 1)
    {
      v40 = 0;
    }

    else
    {
      v39 = v38 == 2;
      v32 = &selRef_isEmpty;
      if (!v39)
      {
        goto LABEL_20;
      }

      v40 = 1;
    }

    v65 = [v21 uti];
    if (v65)
    {
      v66 = v65;
      v67 = [v21 identifier];

      if (v67)
      {
        LODWORD(v140) = v40;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = v144;
        v68 = v145;
        v70 = v148;
        (*(v145 + 32))(v148, v14, v144);
        v71 = [v21 fileName];
        if (!v71)
        {

          v41 = objc_opt_self();
          type metadata accessor for REMCDSavedAttachment();
          v100 = swift_getObjCClassFromMetadata();
          v101 = v70;
          v102 = String._bridgeToObjectiveC()();
          [v41 unexpectedNilPropertyWithClass:v100 property:v102];

          swift_willThrow();
          sub_10001BBA0(v141, v142);

          (*(v68 + 8))(v101, v69);
          goto LABEL_18;
        }

        v72 = v71;
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v138 = v74;

        v75 = v156[4];
        v137 = v156[3];
        v136[1] = sub_10000F61C(v156, v137);
        v76 = [v143 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v77 = [v21 sha512Sum];
        v139 = v28;
        if (v77)
        {
          v78 = v73;
          v79 = v66;
          v80 = v77;
          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;

          v66 = v79;
          v73 = v78;
        }

        else
        {
          v81 = 0;
          v83 = 0;
        }

        v106 = v148;
        (*(v75 + 8))(v148, v11, v73, v138, v81, v83, v137, v75);

        v107 = *(v145 + 8);
        v145 += 8;
        v107(v11, v144);
        v138 = v66;

        if (v140)
        {
          v108 = type metadata accessor for JSONDecoder();
          v109 = *(v108 + 48);
          v110 = *(v108 + 52);
          swift_allocObject();
          JSONDecoder.init()();
          sub_1004763F0();
          v111 = v141;
          v41 = v142;
          v112 = v149;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (!v112)
          {
            v149 = v107;

            v113 = v152;
            v140 = v151;
            v114 = v153;
            v115 = objc_allocWithZone(REMImageAttachment);
            URL._bridgeToObjectiveC()(v116);
            v118 = v117;
            v135 = v113;
            v119 = v115;
            v120 = v150;
            v121 = v143;
            v122 = v138;
            v123 = v139;
            v124 = v140;
            v140 = v118;
            v41 = [v119 initWithObjectID:v150 accountID:v143 reminderID:v139 UTI:v138 fileSize:v124 fileURL:0 data:v135 width:v114 height:?];
LABEL_47:

            sub_10001BBA0(v141, v142);
            (*(v146 + 8))(v6, v147);
            v149(v148, v144);
            goto LABEL_18;
          }
        }

        else
        {
          v125 = type metadata accessor for JSONDecoder();
          v126 = *(v125 + 48);
          v127 = *(v125 + 52);
          swift_allocObject();
          JSONDecoder.init()();
          sub_10047639C();
          v111 = v141;
          v41 = v142;
          v128 = v149;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (!v128)
          {
            v149 = v107;

            v129 = v151;
            v130 = objc_allocWithZone(REMFileAttachment);
            URL._bridgeToObjectiveC()(v131);
            v133 = v132;
            v134 = v130;
            v120 = v150;
            v121 = v143;
            v122 = v138;
            v123 = v139;
            v140 = v133;
            v41 = [v134 initWithObjectID:v150 accountID:v143 reminderID:v139 UTI:v138 fileSize:v129 fileURL:0 data:?];
            goto LABEL_47;
          }
        }

        sub_10001BBA0(v111, v41);

        (*(v146 + 8))(v6, v147);
        v107(v106, v144);
        goto LABEL_18;
      }

      v41 = objc_opt_self();
      type metadata accessor for REMCDSavedAttachment();
      v92 = swift_getObjCClassFromMetadata();
      v90 = String._bridgeToObjectiveC()();
      v91 = [v41 unexpectedNilPropertyWithClass:v92 property:v90];
    }

    else
    {

      v41 = objc_opt_self();
      type metadata accessor for REMCDSavedAttachment();
      v89 = swift_getObjCClassFromMetadata();
      v90 = String._bridgeToObjectiveC()();
      v91 = [v41 unexpectedNilPropertyWithClass:v89 property:v90];
    }

    v91;

    swift_willThrow();
    sub_10001BBA0(v141, v142);

    goto LABEL_18;
  }

  v84 = type metadata accessor for JSONDecoder();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100476AF8(&qword_100947EA8, type metadata accessor for RDSavedAttachment.URLMetadata);
  v87 = v141;
  v41 = v142;
  v88 = v149;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v88)
  {

    sub_10001BBA0(v87, v41);

    goto LABEL_17;
  }

  v139 = v28;

  v93 = &v20[*(v17 + 20)];
  isa = v93->super.isa;
  urlString = v93->_urlString;
  URL._bridgeToObjectiveC()(v93);
  v97 = v96;
  v98 = v143;
  if (urlString >> 60 == 15)
  {
    v99 = 0;
  }

  else
  {
    v99 = Data._bridgeToObjectiveC()().super.isa;
  }

  v103 = objc_allocWithZone(REMURLAttachment);
  v104 = v150;
  v105 = v139;
  v41 = [v103 initWithObjectID:v150 accountID:v98 reminderID:v139 url:v97 metadata:v99];

  sub_10001BBA0(v141, v142);
  sub_100476444(v20);
LABEL_18:
  sub_10000607C(v156);
  return v41;
}

uint64_t type metadata accessor for RDSavedAttachment.URLMetadata()
{
  result = qword_100947F20;
  if (!qword_100947F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10047639C()
{
  result = qword_100947E98;
  if (!qword_100947E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947E98);
  }

  return result;
}

unint64_t sub_1004763F0()
{
  result = qword_100947EA0;
  if (!qword_100947EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947EA0);
  }

  return result;
}

uint64_t sub_100476444(uint64_t a1)
{
  v2 = type metadata accessor for RDSavedAttachment.URLMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004764A0()
{
  result = qword_100940920;
  if (!qword_100940920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100940920);
  }

  return result;
}

unint64_t sub_1004764EC()
{
  result = qword_100947EB0;
  if (!qword_100947EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947EB0);
  }

  return result;
}

unint64_t sub_100476540()
{
  result = qword_100947EB8;
  if (!qword_100947EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947EB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDSavedAttachment.ImageMetadata(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RDSavedAttachment.ImageMetadata(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100476628()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1004766BC()
{
  result = qword_100947F60;
  if (!qword_100947F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947F60);
  }

  return result;
}

uint64_t sub_100476710(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100476820(uint64_t *a1)
{
  v2 = sub_1000F5104(&qword_100947F68, &qword_1007AB0E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1004769EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v13 = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v8;
}

unint64_t sub_1004769EC()
{
  result = qword_100947F70;
  if (!qword_100947F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947F70);
  }

  return result;
}

unint64_t sub_100476A40()
{
  result = qword_100947F80;
  if (!qword_100947F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947F80);
  }

  return result;
}

uint64_t sub_100476A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedAttachment.URLMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100476AF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t assignWithCopy for RDSavedAttachment(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t assignWithTake for RDSavedAttachment(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedAttachment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedAttachment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_100476C9C()
{
  result = qword_100947FA0;
  if (!qword_100947FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FA0);
  }

  return result;
}

unint64_t sub_100476CF4()
{
  result = qword_100947FA8;
  if (!qword_100947FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FA8);
  }

  return result;
}

unint64_t sub_100476D4C()
{
  result = qword_100947FB0;
  if (!qword_100947FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FB0);
  }

  return result;
}

unint64_t sub_100476DA4()
{
  result = qword_100947FB8;
  if (!qword_100947FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FB8);
  }

  return result;
}

unint64_t sub_100476DFC()
{
  result = qword_100947FC0;
  if (!qword_100947FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FC0);
  }

  return result;
}

unint64_t sub_100476E54()
{
  result = qword_100947FC8;
  if (!qword_100947FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FC8);
  }

  return result;
}

unint64_t sub_100476EAC()
{
  result = qword_100947FD0;
  if (!qword_100947FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FD0);
  }

  return result;
}

unint64_t sub_100476F04()
{
  result = qword_100947FD8;
  if (!qword_100947FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FD8);
  }

  return result;
}

unint64_t sub_100476F5C()
{
  result = qword_100947FE0;
  if (!qword_100947FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FE0);
  }

  return result;
}

uint64_t sub_100476FB4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947FE8);
  v1 = sub_100006654(v0, qword_100947FE8);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10047707C()
{
  v1 = [v0 type];
  if (v1 >= 5)
  {
    if (qword_1009361E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100947FE8);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown type", 12, 2);
    __break(1u);
  }

  else
  {
    v2 = *(&off_1008F2FA8 + v1);
    sub_10012DF40();
    swift_getKeyPath();
    [v0 ascending];
    NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  }
}

uint64_t sub_10047717C(uint64_t a1, void *a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8[8];
  *&v10 = __chkstk_darwin(v7).n128_u64[0];
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 managedObjectContext];
  if (!v13)
  {
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();
    [v24 internalErrorWithDebugDescription:v25];

    swift_willThrow();
    return v8;
  }

  v14 = v13;
  v15 = [a2 remObjectID];
  if (!v15)
  {
    v26 = objc_opt_self();
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = String._bridgeToObjectiveC()();
    [v26 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v8];

    swift_willThrow();
    return v8;
  }

  v52 = v7;
  v53 = a3;
  v54 = v8;
  v55 = a1;
  v8 = v15;
  v16 = sub_100012718(v8);

  type metadata accessor for REMCDAccountListData();
  v17 = [objc_allocWithZone(NSFetchRequest) init];
  v56 = v14;
  v18 = v17;
  v19 = swift_getObjCClassFromMetadata();
  v20 = [v19 entity];
  [v18 setEntity:v20];

  v21 = v18;
  v22 = v56;
  [v18 setAffectedStores:0];
  [v18 setPredicate:v16];
  v23 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    return v8;
  }

  v29 = v23;
  v51 = v21;
  v49 = v8;
  v30 = objc_allocWithZone(REMOrderedIdentifierMap);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v50 = [v30 initWithOrderedIdentifiers:isa];

  if (!(v29 >> 62))
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_20:

    v37 = [v19 entity];
    v38 = objc_allocWithZone(v19);
    v39 = v56;
    v40 = [v38 initWithEntity:v37 insertIntoManagedObjectContext:v56];
    v41 = v53;
    v8 = v40;
    [v39 assignObject:v8 toPersistentStore:v41];

    v42 = v49;
    v43 = [v49 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = UUID._bridgeToObjectiveC()().super.isa;
    (v54[1])(v12, v52);
    [v8 setAccountID:v44];

    v45 = objc_allocWithZone(REMOrderedIdentifierMap);
    v46 = Array._bridgeToObjectiveC()().super.isa;
    v47 = [v45 initWithOrderedIdentifiers:v46];

    [v8 setOrderedIdentifierMap:v47];
    return v8;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v33 = v50;
    v32 = v51;
LABEL_13:

    v34 = [v8 orderedIdentifierMap];
    if (v34)
    {
      v35 = v34;
      sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
        v36 = v33;
        [v8 setOrderedIdentifierMap:v36];

        goto LABEL_18;
      }
    }

LABEL_18:
    return v8;
  }

  v33 = v50;
  v32 = v51;
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v29 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100477720()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948000);
  v1 = sub_100006654(v0, qword_100948000);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004777E8(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = &_swiftEmptyDictionarySingleton;
  *(v2 + 24) = [objc_allocWithZone(NSCache) init];
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  [*(v2 + 24) setCountLimit:a1];
  if (qword_1009361F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100948000);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDManualSortIDCacheContext > initialized", v7, 2u);
  }

  return v2;
}

uint64_t sub_100477918()
{
  v1 = *(v0 + 16);

  sub_1000536E0(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_100477984()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;

  [*(v0 + 24) removeAllObjects];
  if (qword_1009361F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100948000);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDManualSortIDCacheContext > cleared all", v5, 2u);
  }
}

uint64_t sub_100477A9C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009480D0);
  v1 = sub_100006654(v0, qword_1009480D0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100477B6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4E79616C70736964;
  v4 = 0xEB00000000656D61;
  if (v2 != 1)
  {
    v3 = 0x73694C7472616D73;
    v4 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6F697461657263;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065746144;
  }

  v7 = 0x4E79616C70736964;
  v8 = 0xEB00000000656D61;
  if (*a2 != 1)
  {
    v7 = 0x73694C7472616D73;
    v8 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E6F697461657263;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065746144;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100477C8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100477D44()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100477DE8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100477E9C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100479C48(*a1);
  *a2 = result;
  return result;
}

void sub_100477ECC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746144;
  v4 = 0xEB00000000656D61;
  v5 = 0x4E79616C70736964;
  if (v2 != 1)
  {
    v5 = 0x73694C7472616D73;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F697461657263;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static REMCDSmartListSection.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDSmartListSection();
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDSmartListSection.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v10)
  {
    v11 = [a2 ckIdentifier];
    if (v11)
    {
      v12 = v11;
      [v10 mergeDataFromRecord:a1 accountID:v11];

      v13 = v10;
      [v13 setCkServerRecord:a1];
      [v13 setInCloud:1];

      [v13 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_1009361F8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_1009480D0);
      v15 = a2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v4;
        *v18 = 136446466;
        swift_getMetatypeMetadata();
        v19 = String.init<A>(describing:)();
        v21 = sub_10000668C(v19, v20, &v30);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2082;
        v22 = [v15 remObjectID];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 description];

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v27 = 0xE300000000000000;
          v25 = 7104878;
        }

        v28 = sub_10000668C(v25, v27, &v30);

        *(v18 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v18, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v10;
}

Swift::String __swiftcall REMCDSmartListSection.recordType()()
{
  v0 = 0x80000001007EAAE0;
  v1 = 0xD000000000000010;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall REMCDSmartListSection.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v4 = String._bridgeToObjectiveC()();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for REMCDSmartListSection();
  objc_msgSendSuper2(&v15, "mergeDataFromRecord:accountID:", from.super.isa, v4);

  v5 = [(objc_class *)from.super.isa recordID];
  v6 = [v5 recordName];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [v2 ckIdentifierFromRecordName:v6];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v2 setCkIdentifier:v7];

  v8 = [v2 mergeDataRevertedLocallyMarkedForDeletion];
  v9 = [v2 mergeDataRefusedToMergeMarkedForDeletion];
  v14 = 0;
  v10 = v2;
  v11 = from.super.isa;
  sub_1004E7498(v11, v8, v9, v10, v10, v11, &v14);

  if (v14 == 1)
  {
    v12 = [v10 smartList];
    if (v12)
    {
      v13 = v12;
      if (([v12 ckNeedsInitialFetchFromCloud] & 1) == 0)
      {
        _sSo14REMCDSmartListC7reminddE19sortChildrenObjectsyyF_0();
      }
    }
  }
}

void sub_1004786A0(_BYTE *a1, void *a2, void *a3, _BYTE *a4)
{
  v62 = a4;
  v64 = a2;
  v6 = type metadata accessor for UUID();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  __chkstk_darwin(v6);
  v60 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v60 - v11;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  __chkstk_darwin(v25);
  v27 = &v60 - v26;
  v28 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v29 = *(*(v28 - 8) + 64);
  *&v30 = __chkstk_darwin(v28 - 8).n128_u64[0];
  v32 = &v60 - v31;
  if (*a1)
  {
    if (*a1 == 1)
    {
      v33 = [a3 encryptedValues];
      v34 = String._bridgeToObjectiveC()();
      v35 = [v33 objectForKeyedSubscript:v34];
      swift_unknownObjectRelease();

      if (v35)
      {
        v65 = v35;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v35 = String._bridgeToObjectiveC()();
        }

        else
        {
          v35 = 0;
        }
      }

      [v64 setDisplayName:v35];

      return;
    }

    v39 = [v64 smartList];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 identifier];

      if (v41)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = *(v63 + 56);
        v42(v24, 0, 1, v6);
      }

      else
      {
        v42 = *(v63 + 56);
        v42(v24, 1, 1, v6);
      }

      sub_100031B58(v24, v27, &unk_100939D90, "8\n\r");
    }

    else
    {
      v42 = *(v63 + 56);
      v42(v27, 1, 1, v6);
    }

    if (CKRecord.subscript.getter())
    {
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (!v43)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_100128EE0(v43);

    if (v44)
    {
      objc_opt_self();
      v45 = swift_dynamicCastObjCClass();
      if (!v45)
      {
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = v64;
    [v64 setSmartList:v45];

    v47 = [v46 smartList];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 identifier];

      if (v49)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = v63;
      v42(v18, v50, 1, v6);
      sub_100031B58(v18, v21, &unk_100939D90, "8\n\r");
    }

    else
    {
      v51 = v63;
      v42(v21, 1, 1, v6);
    }

    v52 = *(v9 + 48);
    sub_10018E470(v21, v12);
    sub_10018E470(v27, &v12[v52]);
    v53 = *(v51 + 48);
    if (v53(v12, 1, v6) == 1)
    {
      sub_1000050A4(v21, &unk_100939D90, "8\n\r");
      sub_1000050A4(v27, &unk_100939D90, "8\n\r");
      if (v53(&v12[v52], 1, v6) == 1)
      {
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v54 = 0;
LABEL_38:
        *v62 = v54 & 1;
        return;
      }
    }

    else
    {
      v55 = v61;
      sub_10018E470(v12, v61);
      if (v53(&v12[v52], 1, v6) != 1)
      {
        v56 = &v12[v52];
        v57 = v60;
        (*(v51 + 32))(v60, v56, v6);
        sub_10018E4E0();
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = *(v51 + 8);
        v59(v57, v6);
        sub_1000050A4(v21, &unk_100939D90, "8\n\r");
        sub_1000050A4(v27, &unk_100939D90, "8\n\r");
        v59(v55, v6);
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v54 = v58 ^ 1;
        goto LABEL_38;
      }

      sub_1000050A4(v21, &unk_100939D90, "8\n\r");
      sub_1000050A4(v27, &unk_100939D90, "8\n\r");
      (*(v51 + 8))(v55, v6);
    }

    sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
    v54 = 1;
    goto LABEL_38;
  }

  sub_10018E134();
  v36 = type metadata accessor for Date();
  CKRecordKeyValueSetting.subscript.getter();
  v37 = *(v36 - 8);
  isa = 0;
  if ((*(v37 + 48))(v32, 1, v36) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v37 + 8))(v32, v36);
  }

  [v64 setCreationDate:isa];
}

CKRecord_optional __swiftcall REMCDSmartListSection.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for REMCDSmartListSection();
  v43.receiver = v0;
  v43.super_class = v9;
  v11 = objc_msgSendSuper2(&v43, "newlyCreatedRecord");
  if (v11)
  {
    v12 = 0;
    v13 = &off_1008E37B8;
    v14 = &unk_100938850;
    v39 = v0;
    do
    {
      if (*(v13 + v12 + 32))
      {
        if (*(v13 + v12 + 32) == 1)
        {
          v16 = [v11 encryptedValues];
          v17 = [v1 displayName];
          if (v17)
          {
            v18 = v17;
            v19 = v11;
            v20 = v8;
            v21 = v5;
            v22 = v13;
            v23 = v14;
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v25;

            *(&v41 + 1) = &type metadata for String;
            v42 = &protocol witness table for String;
            *&v40 = v24;
            *(&v40 + 1) = v26;
            v14 = v23;
            v13 = v22;
            v5 = v21;
            v8 = v20;
            v11 = v19;
            v1 = v39;
          }

          else
          {
            v42 = 0;
            v40 = 0u;
            v41 = 0u;
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
        }

        else
        {
          if (([v1 markedForDeletion] & 1) == 0 && (v30 = objc_msgSend(v1, "smartList")) != 0 && (v31 = v30, v32 = objc_msgSend(v30, "recordID"), v31, v32))
          {
            v33 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v32];

            if (v33)
            {
              v34 = v33;
            }
          }

          else
          {
            v33 = 0;
          }

          CKRecord.subscript.setter();
        }
      }

      else
      {
        v27 = [v1 creationDate];
        if (v27)
        {
          v28 = v27;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v29 = 0;
        }

        else
        {
          v29 = 1;
        }

        v35 = type metadata accessor for Date();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v5, v29, 1, v35);
        sub_100031B58(v5, v8, v14, qword_100795AE0);
        if ((*(v36 + 48))(v8, 1, v35) == 1)
        {
          sub_1000050A4(v8, v14, qword_100795AE0);
          v40 = 0u;
          v41 = 0u;
          v42 = 0;
        }

        else
        {
          *(&v41 + 1) = v35;
          v42 = &protocol witness table for Date;
          v15 = sub_1000103CC(&v40);
          (*(v36 + 32))(v15, v8, v35);
        }

        sub_10018E134();
        CKRecordKeyValueSetting.subscript.setter();
      }

      ++v12;
    }

    while (v12 != 3);
  }

  v37 = v11;
  result.value.super.isa = v37;
  result.is_nil = v10;
  return result;
}

Swift::Void __swiftcall REMCDSmartListSection.cleanUpAfterLocalObjectMerge()()
{
  if (qword_1009361F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009480D0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A70, &qword_1007A93E8);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

Swift::Void __swiftcall REMCDSmartListSection.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_1009361F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_1009480D0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v45 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v47);

  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v16 = [v4 smartList];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 remObjectID];
  if (!v18)
  {

LABEL_12:
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

LABEL_13:
  v23 = sub_10000668C(v7, v22, &v47);

  *(v8 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for section in smart list {smartListSectionID: %{public}s, smartListID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v24 = [v4 smartList];
  if (!v24)
  {
    return;
  }

  v46 = v24;
  if ([v24 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
  {
    v25 = v4;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v26, v27))
    {
LABEL_28:

      [v25 markForDeletion];
      goto LABEL_29;
    }

    v28 = 7104878;
    v29 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v29 = 136446466;
    v30 = [v25 remObjectID];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 description];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v28 = 7104878;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_10000668C(v33, v35, &v47);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2082;
    v37 = [v25 smartList];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 remObjectID];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 description];

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

LABEL_27:
        v44 = sub_10000668C(v28, v43, &v47);

        *(v29 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v26, v27, "Smart List is marked for deletion but section in smart list is not {smartListSectionID: %{public}s, smartListID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();

        goto LABEL_28;
      }
    }

    v43 = 0xE300000000000000;
    goto LABEL_27;
  }

LABEL_29:
  [v46 forcePushToCloud];
}

unint64_t sub_100479C48(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E36C8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7remindd21REMCDSmartListSectionC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_1009361F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009480D0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A70, &qword_1007A93E8);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s7remindd21REMCDSmartListSectionC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_1009361F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009480D0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A70, &qword_1007A93E8);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

unint64_t sub_100479F94(uint64_t a1)
{
  result = sub_100479FBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100479FBC()
{
  result = qword_1009480F0;
  if (!qword_1009480F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009480F0);
  }

  return result;
}

unint64_t sub_10047A010(uint64_t a1)
{
  result = sub_10047A038();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10047A038()
{
  result = qword_1009480F8;
  if (!qword_1009480F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009480F8);
  }

  return result;
}

unint64_t sub_10047A090()
{
  result = qword_100948100;
  if (!qword_100948100)
  {
    sub_1000F514C(&qword_100948108, &qword_1007AB658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948100);
  }

  return result;
}

unint64_t sub_10047A0F8()
{
  result = qword_100948110;
  if (!qword_100948110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948110);
  }

  return result;
}

uint64_t sub_10047A164()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations];
  v5 = *&v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 24];
  v4 = *&v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 32];
  sub_10000F61C(v3, v5);
  v6 = (*(*(v4 + 24) + 8))(v5);
  v13 = ObjectType;
  v14 = &off_1008EB3C0;
  *&v12 = v1;
  v7 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v8 = swift_allocObject();
  sub_100054B6C(&v12, v8 + 16);
  *(v8 + 56) = v6;
  v13 = v7;
  v14 = &off_1008F5B28;
  *&v12 = v8;
  v9 = *sub_10000F61C(&v12, v7);
  v10 = v1;
  sub_10051F440();
  return sub_10000607C(&v12);
}

uint64_t sub_10047A250()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations];
  v5 = *&v0[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 24];
  v4 = *&v0[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 32];
  sub_10000F61C(v3, v5);
  v6 = (*(*(v4 + 16) + 8))(v5);
  v13 = ObjectType;
  v14 = &off_1008F1730;
  *&v12 = v1;
  v7 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v8 = swift_allocObject();
  sub_100054B6C(&v12, v8 + 16);
  *(v8 + 56) = v6;
  v13 = v7;
  v14 = &off_1008F5B28;
  *&v12 = v8;
  v9 = *sub_10000F61C(&v12, v7);
  v10 = v1;
  sub_10051F440();
  return sub_10000607C(&v12);
}

uint64_t sub_10047A33C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations];
  v5 = *&v0[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 24];
  v4 = *&v0[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 32];
  sub_10000F61C(v3, v5);
  v6 = (*(*(v4 + 16) + 8))(v5);
  v13 = ObjectType;
  v14 = &off_1008FDD08;
  *&v12 = v1;
  v7 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v8 = swift_allocObject();
  sub_100054B6C(&v12, v8 + 16);
  *(v8 + 56) = v6;
  v13 = v7;
  v14 = &off_1008F5B28;
  *&v12 = v8;
  v9 = *sub_10000F61C(&v12, v7);
  v10 = v1;
  sub_10051F440();
  return sub_10000607C(&v12);
}

uint64_t sub_10047A428(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v4);
  v2 = *sub_10000F61C(v4, v4[3]);
  sub_10051F440();
  return sub_10000607C(v4);
}

uint64_t sub_10047A4F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations;
  v6 = v4[3];
  v5 = v4[4];
  sub_10000F61C(v4, v6);
  (*(*(v5 + 24) + 8))(v6);
  v11 = a1;
  v12 = &off_1008EB3C0;
  *&v10 = v3;
  sub_100054B6C(&v10, v9);
  v7 = v3;
  return sub_10000607C(v9);
}

uint64_t sub_10047A5E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations;
  v6 = v4[3];
  v5 = v4[4];
  sub_10000F61C(v4, v6);
  (*(*(v5 + 16) + 8))(v6);
  v11 = a1;
  v12 = &off_1008F1730;
  *&v10 = v3;
  sub_100054B6C(&v10, v9);
  v7 = v3;
  return sub_10000607C(v9);
}

BOOL sub_10047A67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(v12, a1, a2);
  v9 = *sub_10000F61C(v12, v12[3]);
  sub_10051EE80(v8);
  LOBYTE(a2) = Date.isInThePast.getter();
  (*(v5 + 8))(v8, v4);
  sub_10000607C(v12);
  return (a2 & 1) == 0;
}

uint64_t sub_10047A7BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v4 = *v3;
  a3(v7);
  v5 = *sub_10000F61C(v7, v7[3]);
  sub_10051F440();
  return sub_10000607C(v7);
}

uint64_t sub_10047A824(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v4 = *v3;
  a3(v6);
  return sub_10000607C(v6);
}

uint64_t sub_10047A884(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations;
  v6 = v4[3];
  v5 = v4[4];
  sub_10000F61C(v4, v6);
  (*(*(v5 + 16) + 8))(v6);
  v11 = a1;
  v12 = &off_1008FDD08;
  *&v10 = v3;
  sub_100054B6C(&v10, v9);
  v7 = v3;
  return sub_10000607C(v9);
}

uint64_t sub_10047A91C(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  sub_10000F61C(a1, v8);
  if (sub_10047A67C(v8, v9))
  {
    v10 = objc_opt_self();
    v11 = a1[3];
    v12 = a1[4];
    sub_10000F61C(a1, v11);
    (*(v12 + 16))(v24, v11, v12);
    v13 = *sub_10000F61C(v24, v24[3]);
    sub_10051EE80(v7);
    Date.timeIntervalSinceNow.getter();
    v15 = v14;
    (*(v4 + 8))(v7, v3);
    [v10 throttledErrorWithRemainingTimeInterval:v15];
    sub_10000607C(v24);
    return swift_willThrow();
  }

  else
  {
    v17 = a1[3];
    v18 = a1[4];
    sub_10000F61C(a1, v17);
    (*(v18 + 24))(v17, v18);
    v20 = a1[3];
    v19 = a1[4];
    sub_10000F61C(a1, v20);
    result = (*(*(v19 + 8) + 8))(v20);
    if (!v1)
    {
      v21 = a1[3];
      v22 = a1[4];
      sub_10000F61C(a1, v21);
      return (*(v22 + 32))(v21, v22);
    }
  }

  return result;
}