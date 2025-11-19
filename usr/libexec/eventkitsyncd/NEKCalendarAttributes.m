@interface NEKCalendarAttributes
+ (BOOL)configureList:(id)a3 listChangeItemProvider:(id)a4 withAttributes:(id)a5;
+ (BOOL)configureList:(id)a3 withSaveRequest:(id)a4 withAttributes:(id)a5;
+ (id)createListInAccount:(id)a3 withSaveRequest:(id)a4 withAttributes:(id)a5;
+ (void)configureCalendar:(id)a3 inDatabase:(id)a4 withAttributes:(id)a5;
- (BOOL)didCalendarChange:(id)a3;
- (NEKCalendarAttributes)initWithCalendar:(id)a3;
- (NEKCalendarAttributes)initWithList:(id)a3;
@end

@implementation NEKCalendarAttributes

- (NEKCalendarAttributes)initWithList:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v25.receiver = self;
    v25.super_class = NEKCalendarAttributes;
    v5 = [(NEKCalendarAttributes *)&v25 init];
    if (v5)
    {
      v6 = [v4 objectID];
      v7 = [v6 uuid];
      v8 = [v7 UUIDString];
      [(NEKCalendarAttributes *)v5 setUUID:v8];

      v9 = [v4 name];
      [(NEKCalendarAttributes *)v5 setTitle:v9];

      -[NEKCalendarAttributes setIsReadonly:](v5, "setIsReadonly:", [v4 daIsReadOnly]);
      [(NEKCalendarAttributes *)v5 setIsHidden:0];
      -[NEKCalendarAttributes setIsImmutable:](v5, "setIsImmutable:", [v4 daIsImmutable]);
      [(NEKCalendarAttributes *)v5 setIsInbox:0];
      -[NEKCalendarAttributes setIsNotificationsCollection:](v5, "setIsNotificationsCollection:", [v4 daIsNotificationsCollection]);
      [(NEKCalendarAttributes *)v5 setIsSharingInvitation:0];
      [(NEKCalendarAttributes *)v5 setIsSubscribed:0];
      [(NEKCalendarAttributes *)v5 setIsHolidyCalendar:0];
      [(NEKCalendarAttributes *)v5 setIsFamilyCalendar:0];
      [(NEKCalendarAttributes *)v5 setIsIgnoringEventAlerts:0];
      [(NEKCalendarAttributes *)v5 setIsIgnoringSharedCalendarNotifications:0];
      [(NEKCalendarAttributes *)v5 setIsSchedulingProhibited:0];
      [(NEKCalendarAttributes *)v5 setIsDefaultCalendarForStore:0];
      [(NEKCalendarAttributes *)v5 setDigest:0];
      v10 = [v4 ekColor];
      v11 = [v10 daSymbolicColorName];
      [(NEKCalendarAttributes *)v5 setSymbolicColorName:v11];

      v12 = [v4 ekColor];
      v13 = [v12 daHexString];
      [(NEKCalendarAttributes *)v5 setColorString:v13];

      -[NEKCalendarAttributes setDisplayOrder:](v5, "setDisplayOrder:", [v4 daDisplayOrder]);
      v14 = [v4 sharingStatus];
      if (v14 == 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = v14 == 1;
      }

      [(NEKCalendarAttributes *)v5 setSharingStatus:v15];
      v16 = [v4 sharedOwnerName];
      [(NEKCalendarAttributes *)v5 setSharedOwnerName:v16];

      v17 = [v4 sharedOwnerAddress];
      [(NEKCalendarAttributes *)v5 setSharedOwnerAddress:v17];

      [(NEKCalendarAttributes *)v5 setSharingInvitationResponse:0];
      [(NEKCalendarAttributes *)v5 setPublishedURL:0];
      [(NEKCalendarAttributes *)v5 setCanBePublished:0];
      -[NEKCalendarAttributes setCanBeShared:](v5, "setCanBeShared:", [v4 canBeShared]);
      [(NEKCalendarAttributes *)v5 setIsPublished:0];
      v18 = [v4 externalIdentifier];
      [(NEKCalendarAttributes *)v5 setExternalID:v18];

      v19 = [v4 daExternalIdentificationTag];
      [(NEKCalendarAttributes *)v5 setExternalIdentificationTag:v19];

      v20 = [v4 daSyncToken];
      [(NEKCalendarAttributes *)v5 setSyncToken:v20];

      v21 = [v4 externalModificationTag];
      [(NEKCalendarAttributes *)v5 setExternalModificationTag:v21];

      [(NEKCalendarAttributes *)v5 setExternalRepresentation:0];
      [(NEKCalendarAttributes *)v5 setSupportedEntityTypes:2];
      [(NEKCalendarAttributes *)v5 setInvitationStatus:0];
      [(NEKCalendarAttributes *)v5 setNotes:0];
      [(NEKCalendarAttributes *)v5 setSubCalAccountID:0];
      v22 = [v4 daPushKey];
      [(NEKCalendarAttributes *)v5 setPushKey:v22];

      [(NEKCalendarAttributes *)v5 setSelfIdentityDisplayName:0];
      [(NEKCalendarAttributes *)v5 setSelfIdentityEmail:0];
      [(NEKCalendarAttributes *)v5 setSelfIdentityAddress:0];
      [(NEKCalendarAttributes *)v5 setSelfIdentityFirstName:0];
      [(NEKCalendarAttributes *)v5 setSelfIdentityLastName:0];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityDisplayName:0];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityAddress:0];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityEmail:0];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityFirstName:0];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityLastName:0];
    }

    self = v5;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)createListInAccount:(id)a3 withSaveRequest:(id)a4 withAttributes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [v9 updateAccount:a3];
  v11 = [v8 UUID];
  v12 = [[NSUUID alloc] initWithUUIDString:v11];
  if (!v12)
  {
    v13 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_100073BB0(v11, v13);
    }
  }

  v14 = [REMList objectIDWithUUID:v12];
  v15 = [v8 title];
  v16 = [v9 addListWithName:v15 toAccountChangeItem:v10 listObjectID:v14];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004C7B8;
  v19[3] = &unk_1000B5BD8;
  v17 = v16;
  v20 = v17;
  [a1 configureList:0 listChangeItemProvider:v19 withAttributes:v8];

  return v17;
}

+ (BOOL)configureList:(id)a3 withSaveRequest:(id)a4 withAttributes:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004C894;
  v12[3] = &unk_1000B5C00;
  v13 = a4;
  v14 = v8;
  v9 = v8;
  v10 = v13;
  LOBYTE(a5) = [a1 configureList:v9 listChangeItemProvider:v12 withAttributes:a5];

  return a5;
}

+ (BOOL)configureList:(id)a3 listChangeItemProvider:(id)a4 withAttributes:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 UUID];
  v11 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v209 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting configuration of list with UUID: [%{public}@].", buf, 0xCu);
  }

  v12 = [v7 objectID];
  v13 = [v12 uuid];
  v14 = [v13 UUIDString];

  v15 = [v9 UUID];
  v16 = v15;
  if (v14)
  {
    if ([v14 isEqualToString:v15])
    {
      goto LABEL_10;
    }
  }

  else if (!v15)
  {
    goto LABEL_10;
  }

  v17 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = v14;
    v210 = 2112;
    *v211 = v16;
    *&v211[8] = 2114;
    *&v211[10] = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'UUID' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_10:
  v18 = [v7 name];
  v19 = [v9 title];
  v20 = v19;
  v185 = v16;
  v186 = v14;
  if (v18)
  {
    if ([v18 isEqualToString:v19])
    {
LABEL_12:
      v207 = 0;
      goto LABEL_17;
    }
  }

  else if (!v19)
  {
    goto LABEL_12;
  }

  v21 = v8[2](v8);

  v207 = v21;
  [v21 setName:v20];
  v22 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = v18;
    v210 = 2112;
    *v211 = v20;
    *&v211[8] = 2114;
    *&v211[10] = v10;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "List's 'title' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_17:
  v23 = [v7 daIsReadOnly];
  v24 = [v9 isReadonly];
  if (v23 != v24)
  {
    v25 = v24;
    v26 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [NSNumber numberWithBool:v23];
      v28 = [NSNumber numberWithBool:v25];
      *buf = 138412802;
      v209 = v27;
      v210 = 2112;
      *v211 = v28;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isReadOnly' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v9 isHidden])
  {
    v29 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [NSNumber numberWithBool:0];
      v31 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v30;
      v210 = 2112;
      *v211 = v31;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isHidden' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v32 = [v7 daIsImmutable];
  v33 = [v9 isImmutable];
  if (v32 != v33)
  {
    v34 = v33;
    v35 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [NSNumber numberWithBool:v32];
      v37 = [NSNumber numberWithBool:v34];
      *buf = 138412802;
      v209 = v36;
      v210 = 2112;
      *v211 = v37;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isImmutable' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v9 isInbox])
  {
    v38 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [NSNumber numberWithBool:0];
      v40 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v39;
      v210 = 2112;
      *v211 = v40;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isInbox' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v41 = [v7 daIsNotificationsCollection];
  v42 = [v9 isNotificationsCollection];
  if (v41 != v42)
  {
    v43 = v42;
    v44 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [NSNumber numberWithBool:v41];
      v46 = [NSNumber numberWithBool:v43];
      *buf = 138412802;
      v209 = v45;
      v210 = 2112;
      *v211 = v46;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isNotificationsCollection' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v9 isSharingInvitation])
  {
    v47 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [NSNumber numberWithBool:0];
      v49 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v48;
      v210 = 2112;
      *v211 = v49;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isSharingInvitation' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v9 isSubscribed])
  {
    v50 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [NSNumber numberWithBool:0];
      v52 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v51;
      v210 = 2112;
      *v211 = v52;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isSubscribed' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v9 isHolidyCalendar])
  {
    v53 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [NSNumber numberWithBool:0];
      v55 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v54;
      v210 = 2112;
      *v211 = v55;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isHolidayCalendar' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v9 isFamilyCalendar])
  {
    v56 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [NSNumber numberWithBool:0];
      v58 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v57;
      v210 = 2112;
      *v211 = v58;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isFamilyCalendar' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v9 isIgnoringEventAlerts])
  {
    v59 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = [NSNumber numberWithBool:0];
      v61 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v60;
      v210 = 2112;
      *v211 = v61;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isIgnoringEventAlerts' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v9 isIgnoringSharedCalendarNotifications])
  {
    v62 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [NSNumber numberWithBool:0];
      v64 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v63;
      v210 = 2112;
      *v211 = v64;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isIgnoringSharedCalendarNotifications' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v9 isSchedulingProhibited])
  {
    v65 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [NSNumber numberWithBool:0];
      v67 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v66;
      v210 = 2112;
      *v211 = v67;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isSchedulingProhibited' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v9 isDefaultCalendarForStore])
  {
    v68 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = [NSNumber numberWithBool:0];
      v70 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v69;
      v210 = 2112;
      *v211 = v70;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isDefaultCalendarForStore' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v206 = v7;
  v71 = [v9 digest];
  if (v71)
  {
    v72 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v71;
      *&v211[8] = 2114;
      *&v211[10] = v10;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'digest' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v181 = v71;
  v73 = v10;
  v74 = v18;
  v75 = v20;
  v76 = v8;
  v77 = [v206 ekColor];
  v78 = [v77 daSymbolicColorName];

  v79 = [v9 symbolicColorName];
  v80 = [v206 ekColor];
  v204 = [v80 daHexString];

  v81 = [v9 colorString];
  v183 = v75;
  v184 = v74;
  v203 = v79;
  if (v78)
  {
    v82 = v78;
    v83 = [v78 isEqualToString:v79];
    v84 = v79;
    v85 = v76;
    v86 = v73;
    v88 = v9;
    v87 = v206;
    if ((v83 & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v82 = 0;
    v84 = v79;
    v85 = v76;
    v86 = v73;
    v88 = v9;
    v87 = v206;
    if (v84)
    {
      goto LABEL_81;
    }
  }

  if (v204)
  {
    if ([v204 isEqualToString:v81])
    {
      goto LABEL_86;
    }
  }

  else if (!v81)
  {
    goto LABEL_86;
  }

LABEL_81:
  v89 = v207;
  if (!v207)
  {
    v89 = v85[2](v85);
  }

  v90 = v89;

  v91 = [[REMColor alloc] initWithDASymbolicColorName:v84 daHexString:v81];
  v207 = v90;
  [v90 setColor:v91];

  v92 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v209 = v82;
    v210 = 2112;
    *v211 = v204;
    *&v211[8] = 2112;
    *&v211[10] = v203;
    v212 = 2112;
    v213 = v81;
    v214 = 2114;
    v215 = v86;
    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "List's 'symbolicColorName/colorString' has changed from [%@/%@] to [%@/%@].  List's UUID: [%{public}@]", buf, 0x34u);
  }

LABEL_86:
  v93 = [v87 daDisplayOrder];
  v94 = [v88 displayOrder];
  v179 = v81;
  v180 = v82;
  if (v93 != v94)
  {
    v95 = v94;
    v96 = v207;
    if (!v207)
    {
      v96 = v85[2](v85);
    }

    v97 = v96;

    v207 = v97;
    [v97 setDaDisplayOrder:{objc_msgSend(v88, "displayOrder")}];
    v98 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v209 = v93;
      v210 = 1024;
      *v211 = v95;
      *&v211[4] = 2114;
      *&v211[6] = v86;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "List's 'displayOrder' has changed from %ld to %d.  List's UUID: [%{public}@]", buf, 0x1Cu);
    }
  }

  v99 = [v87 sharingStatus];
  v100 = [v88 sharingStatus];
  if (v100 == 2)
  {
    v101 = 2;
  }

  else
  {
    v101 = v100 == 1;
  }

  if (v99 != v101)
  {
    v102 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = [NSNumber numberWithInteger:v99];
      v104 = [NSNumber numberWithInteger:v101];
      *buf = 138412802;
      v209 = v103;
      v210 = 2112;
      *v211 = v104;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'sharingStatus' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v105 = [v87 sharedOwnerName];
  v106 = [v88 sharedOwnerName];
  v107 = v106;
  if (v105)
  {
    if ([v105 isEqualToString:v106])
    {
      goto LABEL_106;
    }
  }

  else if (!v106)
  {
    goto LABEL_106;
  }

  v108 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = v105;
    v210 = 2112;
    *v211 = v107;
    *&v211[8] = 2114;
    *&v211[10] = v86;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'sharedOwnerName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_106:
  v109 = [v87 sharedOwnerAddress];
  v110 = [v88 sharedOwnerAddress];
  v196 = v110;
  v197 = v109;
  if (v109)
  {
    if ([v109 isEqualToString:v110])
    {
      goto LABEL_113;
    }
  }

  else if (!v110)
  {
    goto LABEL_113;
  }

  v111 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = v197;
    v210 = 2112;
    *v211 = v196;
    *&v211[8] = 2114;
    *&v211[10] = v86;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'sharedOwnerAddress' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_113:
  v178 = v105;
  v112 = [v88 sharingInvitationResponse];
  if (v112)
  {
    v113 = v112;
    v114 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      v115 = [NSNumber numberWithUnsignedInteger:0];
      v116 = [NSNumber numberWithUnsignedInteger:v113];
      *buf = 138412802;
      v209 = v115;
      v210 = 2112;
      *v211 = v116;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'sharingInvitationResponse' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v202 = [v88 publishedURL];
  if (v202)
  {
    v117 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v202;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'publishedURL' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v88 canBePublished])
  {
    v118 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      v119 = [NSNumber numberWithBool:0];
      v120 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v119;
      v210 = 2112;
      *v211 = v120;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'canBePublished' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v121 = [v87 canBeShared];
  v122 = [v88 canBeShared];
  if (v121 != v122)
  {
    v123 = v122;
    v124 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      v125 = [NSNumber numberWithBool:v121];
      v126 = [NSNumber numberWithBool:v123];
      *buf = 138412802;
      v209 = v125;
      v210 = 2112;
      *v211 = v126;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'canBeShared' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([v88 isPublished])
  {
    v127 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      v128 = [NSNumber numberWithBool:0];
      v129 = [NSNumber numberWithBool:1];
      *buf = 138412802;
      v209 = v128;
      v210 = 2112;
      *v211 = v129;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isPublished' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v130 = [v87 externalIdentifier];
  v131 = [v88 externalID];
  v195 = v131;
  if (v130)
  {
    if ([v130 isEqualToString:v131])
    {
      goto LABEL_140;
    }
  }

  else if (!v131)
  {
    goto LABEL_140;
  }

  v132 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = v130;
    v210 = 2112;
    *v211 = v195;
    *&v211[8] = 2114;
    *&v211[10] = v86;
    _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'externalID' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_140:
  v133 = [v87 daExternalIdentificationTag];
  v134 = [v88 externalIdentificationTag];
  v193 = v134;
  v194 = v133;
  if (v133)
  {
    if ([v133 isEqualToString:v134])
    {
      goto LABEL_147;
    }
  }

  else if (!v134)
  {
    goto LABEL_147;
  }

  v135 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = v194;
    v210 = 2112;
    *v211 = v193;
    *&v211[8] = 2114;
    *&v211[10] = v86;
    _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'externalIdentificationTag' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_147:
  v136 = [v87 daSyncToken];
  v137 = [v88 syncToken];
  v191 = v137;
  v192 = v136;
  if (v136)
  {
    if ([v136 isEqualToString:v137])
    {
      goto LABEL_154;
    }
  }

  else if (!v137)
  {
    goto LABEL_154;
  }

  v138 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = v192;
    v210 = 2112;
    *v211 = v191;
    *&v211[8] = 2114;
    *&v211[10] = v86;
    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'daSyncToken' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_154:
  v139 = [v87 externalModificationTag];
  v140 = [v88 externalModificationTag];
  v189 = v140;
  v190 = v139;
  if (v139)
  {
    if ([v139 isEqualToString:v140])
    {
      goto LABEL_161;
    }
  }

  else if (!v140)
  {
    goto LABEL_161;
  }

  v141 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = v190;
    v210 = 2112;
    *v211 = v189;
    *&v211[8] = 2114;
    *&v211[10] = v86;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'externalModificationTag' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_161:
  v201 = [v88 externalRepresentation];
  if (v201)
  {
    v142 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v201;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'externalRepresentation' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v176 = v130;
  v143 = [v88 invitationStatus];
  if (v143)
  {
    v144 = v143;
    v145 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
    {
      v146 = [NSNumber numberWithUnsignedInteger:0];
      v147 = [NSNumber numberWithUnsignedInteger:v144];
      *buf = 138412802;
      v209 = v146;
      v210 = 2112;
      *v211 = v147;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'invitationStatus' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v148 = [v88 notes];
  if (v148)
  {
    v149 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v148;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'notes' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v150 = [v88 subCalAccountID];
  if (v150)
  {
    v151 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v150;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'subCalAccountID' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v152 = [v87 daPushKey];
  v153 = [v88 pushKey];
  v187 = v153;
  v188 = v152;
  if (v152)
  {
    if ([v152 isEqualToString:v153])
    {
      goto LABEL_184;
    }
  }

  else if (!v153)
  {
    goto LABEL_184;
  }

  v154 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = v188;
    v210 = 2112;
    *v211 = v187;
    *&v211[8] = 2114;
    *&v211[10] = v86;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'pushKey' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_184:
  v200 = [v88 selfIdentityDisplayName];
  if (v200)
  {
    v155 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v200;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'selfIdentityDisplayName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v199 = [v88 selfIdentityEmail];
  if (v199)
  {
    v156 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v199;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'selfIdentityEmail' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v198 = [v88 selfIdentityAddress];
  if (v198)
  {
    v157 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v198;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'selfIdentityAddress' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v158 = [v88 selfIdentityFirstName];
  if (v158)
  {
    v159 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v158;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'selfIdentityFirstName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v174 = v148;
  v177 = v107;
  v160 = [v88 selfIdentityLastName];
  if (v160)
  {
    v161 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v160;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'selfIdentityLastName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v175 = v150;
  v162 = [v88 ownerIdentityDisplayName];
  if (v162)
  {
    v163 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v162;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'ownerIdentityDisplayName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v164 = [v88 ownerIdentityEmail];
  if (v164)
  {
    v165 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v164;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'ownerIdentityEmail' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v205 = v86;
  v166 = [v88 ownerIdentityAddress];
  if (v166)
  {
    v167 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v166;
      *&v211[8] = 2114;
      *&v211[10] = v205;
      _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'ownerIdentityAddress' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v168 = [v88 ownerIdentityFirstName];
  if (v168)
  {
    v169 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v168;
      *&v211[8] = 2114;
      *&v211[10] = v205;
      _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'ownerIdentityFirstName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v182 = v85;
  v170 = [v88 ownerIdentityLastName];
  if (v170)
  {
    v171 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = v170;
      *&v211[8] = 2114;
      *&v211[10] = v205;
      _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'ownerIdentityLastName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v172 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v209 = v205;
    _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "Completed configuration of list with UUID: [%{public}@].", buf, 0xCu);
  }

  return v207 != 0;
}

- (NEKCalendarAttributes)initWithCalendar:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v35.receiver = self;
    v35.super_class = NEKCalendarAttributes;
    v5 = [(NEKCalendarAttributes *)&v35 init];
    if (v5)
    {
      v6 = [v4 calendarIdentifier];
      [(NEKCalendarAttributes *)v5 setUUID:v6];

      v7 = [v4 title];
      [(NEKCalendarAttributes *)v5 setTitle:v7];

      -[NEKCalendarAttributes setIsReadonly:](v5, "setIsReadonly:", [v4 readOnly]);
      -[NEKCalendarAttributes setIsHidden:](v5, "setIsHidden:", [v4 isHidden]);
      -[NEKCalendarAttributes setIsImmutable:](v5, "setIsImmutable:", [v4 isImmutableRaw]);
      -[NEKCalendarAttributes setIsInbox:](v5, "setIsInbox:", [v4 isInbox]);
      -[NEKCalendarAttributes setIsNotificationsCollection:](v5, "setIsNotificationsCollection:", [v4 isNotificationsCollection]);
      -[NEKCalendarAttributes setIsSharingInvitation:](v5, "setIsSharingInvitation:", [v4 isSharingInvitation]);
      -[NEKCalendarAttributes setIsSubscribed:](v5, "setIsSubscribed:", [v4 isSubscribed]);
      -[NEKCalendarAttributes setIsHolidyCalendar:](v5, "setIsHolidyCalendar:", [v4 isSubscribedHolidayCalendar]);
      -[NEKCalendarAttributes setIsFamilyCalendar:](v5, "setIsFamilyCalendar:", [v4 isFamilyCalendar]);
      -[NEKCalendarAttributes setIsIgnoringEventAlerts:](v5, "setIsIgnoringEventAlerts:", [v4 isIgnoringEventAlerts]);
      -[NEKCalendarAttributes setIsIgnoringSharedCalendarNotifications:](v5, "setIsIgnoringSharedCalendarNotifications:", [v4 isIgnoringSharedCalendarNotifications]);
      -[NEKCalendarAttributes setIsSchedulingProhibited:](v5, "setIsSchedulingProhibited:", [v4 allowsScheduling] ^ 1);
      -[NEKCalendarAttributes setIsDefaultCalendarForStore:](v5, "setIsDefaultCalendarForStore:", [v4 isDefaultSchedulingCalendar]);
      v8 = [v4 digest];
      [(NEKCalendarAttributes *)v5 setDigest:v8];

      v9 = [v4 symbolicColorName];
      [(NEKCalendarAttributes *)v5 setSymbolicColorName:v9];

      v10 = [v4 colorString];
      [(NEKCalendarAttributes *)v5 setColorString:v10];

      -[NEKCalendarAttributes setDisplayOrder:](v5, "setDisplayOrder:", [v4 displayOrder]);
      -[NEKCalendarAttributes setSharingStatus:](v5, "setSharingStatus:", [v4 sharingStatus]);
      v11 = [v4 sharedOwnerName];
      [(NEKCalendarAttributes *)v5 setSharedOwnerName:v11];

      v12 = [v4 sharedOwnerAddress];
      [(NEKCalendarAttributes *)v5 setSharedOwnerAddress:v12];

      -[NEKCalendarAttributes setSharingInvitationResponse:](v5, "setSharingInvitationResponse:", [v4 sharingInvitationResponse]);
      v13 = [v4 publishURL];
      [(NEKCalendarAttributes *)v5 setPublishedURL:v13];

      -[NEKCalendarAttributes setCanBePublished:](v5, "setCanBePublished:", [v4 canBePublished]);
      -[NEKCalendarAttributes setCanBeShared:](v5, "setCanBeShared:", [v4 canBeShared]);
      -[NEKCalendarAttributes setIsPublished:](v5, "setIsPublished:", [v4 isPublished]);
      v14 = [v4 externalID];
      [(NEKCalendarAttributes *)v5 setExternalID:v14];

      v15 = [v4 externalIDTag];
      [(NEKCalendarAttributes *)v5 setExternalIdentificationTag:v15];

      v16 = [v4 syncToken];
      [(NEKCalendarAttributes *)v5 setSyncToken:v16];

      v17 = [v4 externalModificationTag];
      [(NEKCalendarAttributes *)v5 setExternalModificationTag:v17];

      v18 = [v4 externalRepresentation];
      [(NEKCalendarAttributes *)v5 setExternalRepresentation:v18];

      if ([v4 allowEvents])
      {
        [(NEKCalendarAttributes *)v5 setSupportedEntityTypes:[(NEKCalendarAttributes *)v5 supportedEntityTypes]| 1];
      }

      if ([v4 allowReminders])
      {
        [(NEKCalendarAttributes *)v5 setSupportedEntityTypes:[(NEKCalendarAttributes *)v5 supportedEntityTypes]| 2];
      }

      if (![(NEKCalendarAttributes *)v5 supportedEntityTypes])
      {
        v19 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100073FB0(v19, v4);
        }
      }

      -[NEKCalendarAttributes setInvitationStatus:](v5, "setInvitationStatus:", [v4 invitationStatus]);
      v20 = [v4 notes];
      [(NEKCalendarAttributes *)v5 setNotes:v20];

      v21 = [v4 subcalAccountID];
      [(NEKCalendarAttributes *)v5 setSubCalAccountID:v21];

      v22 = [v4 pushKey];
      [(NEKCalendarAttributes *)v5 setPushKey:v22];

      v23 = [v4 selfIdentityDisplayName];
      [(NEKCalendarAttributes *)v5 setSelfIdentityDisplayName:v23];

      v24 = [v4 selfIdentityEmail];
      [(NEKCalendarAttributes *)v5 setSelfIdentityEmail:v24];

      v25 = [v4 selfIdentityAddress];
      [(NEKCalendarAttributes *)v5 setSelfIdentityAddress:v25];

      v26 = [v4 selfIdentityFirstName];
      [(NEKCalendarAttributes *)v5 setSelfIdentityFirstName:v26];

      v27 = [v4 selfIdentityLastName];
      [(NEKCalendarAttributes *)v5 setSelfIdentityLastName:v27];

      v28 = [v4 ownerIdentityDisplayName];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityDisplayName:v28];

      v29 = [v4 ownerIdentityAddress];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityAddress:v29];

      v30 = [v4 ownerIdentityEmail];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityEmail:v30];

      v31 = [v4 ownerIdentityFirstName];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityFirstName:v31];

      v32 = [v4 ownerIdentityLastName];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityLastName:v32];
    }

    self = v5;
    v33 = self;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (BOOL)didCalendarChange:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_54;
  }

  v5 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NEKCalendarAttributes *)self title];
    v8 = sub_10002CDF8(v7);
    v9 = [(NEKCalendarAttributes *)self UUID];
    v115 = 138543618;
    v116 = v8;
    v117 = 2114;
    v118 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "didCalendarChange: title:%{public}@ identifier:%{public}@", &v115, 0x16u);
  }

  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v4 syncToken];
    v13 = [v4 externalModificationTag];
    v14 = [v4 externalIDTag];
    v115 = 138543874;
    v116 = v12;
    v117 = 2114;
    v118 = v13;
    v119 = 2114;
    v120 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didCalendarChange: local->syncToken:%{public}@ externalModificationTag:%{public}@ externalIdentificationTag:%{public}@", &v115, 0x20u);
  }

  v15 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [(NEKCalendarAttributes *)self syncToken];
    v18 = [(NEKCalendarAttributes *)self externalModificationTag];
    v19 = [(NEKCalendarAttributes *)self externalIdentificationTag];
    v115 = 138543874;
    v116 = v17;
    v117 = 2114;
    v118 = v18;
    v119 = 2114;
    v120 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didCalendarChange: incmg->syncToken:%{public}@ externalModificationTag:%{public}@ externalIdentificationTag:%{public}@", &v115, 0x20u);
  }

  v20 = [(NEKCalendarAttributes *)self isReadonly];
  if (v20 != [v4 readOnly])
  {
    goto LABEL_54;
  }

  v21 = [(NEKCalendarAttributes *)self isHidden];
  if (v21 != [v4 isHidden])
  {
    goto LABEL_54;
  }

  v22 = [(NEKCalendarAttributes *)self isImmutable];
  if (v22 != [v4 isImmutableRaw])
  {
    goto LABEL_54;
  }

  v23 = [(NEKCalendarAttributes *)self isInbox];
  if (v23 != [v4 isInbox])
  {
    goto LABEL_54;
  }

  v24 = [(NEKCalendarAttributes *)self isNotificationsCollection];
  if (v24 != [v4 isNotificationsCollection])
  {
    goto LABEL_54;
  }

  v25 = [(NEKCalendarAttributes *)self isSharingInvitation];
  if (v25 != [v4 isSharingInvitation])
  {
    goto LABEL_54;
  }

  v26 = [(NEKCalendarAttributes *)self isSubscribed];
  if (v26 != [v4 isSubscribed])
  {
    goto LABEL_54;
  }

  v27 = [(NEKCalendarAttributes *)self isHolidyCalendar];
  if (v27 != [v4 isSubscribedHolidayCalendar])
  {
    goto LABEL_54;
  }

  v28 = [(NEKCalendarAttributes *)self isFamilyCalendar];
  if (v28 != [v4 isFamilyCalendar])
  {
    goto LABEL_54;
  }

  v29 = [(NEKCalendarAttributes *)self isIgnoringEventAlerts];
  if (v29 != [v4 isIgnoringEventAlerts])
  {
    goto LABEL_54;
  }

  v30 = [(NEKCalendarAttributes *)self isIgnoringSharedCalendarNotifications];
  if (v30 != [v4 isIgnoringSharedCalendarNotifications])
  {
    goto LABEL_54;
  }

  v31 = [(NEKCalendarAttributes *)self isSchedulingProhibited];
  if (v31 == [v4 allowsScheduling])
  {
    goto LABEL_54;
  }

  v32 = [(NEKCalendarAttributes *)self isDefaultCalendarForStore];
  if (v32 != [v4 isDefaultSchedulingCalendar])
  {
    goto LABEL_54;
  }

  v33 = [(NEKCalendarAttributes *)self displayOrder];
  if (v33 != [v4 displayOrder])
  {
    goto LABEL_54;
  }

  v34 = [(NEKCalendarAttributes *)self sharingStatus];
  if (v34 != [v4 sharingStatus])
  {
    goto LABEL_54;
  }

  v35 = [(NEKCalendarAttributes *)self sharingInvitationResponse];
  if (v35 != [v4 sharingInvitationResponse])
  {
    goto LABEL_54;
  }

  v36 = [(NEKCalendarAttributes *)self canBePublished];
  if (v36 != [v4 canBePublished])
  {
    goto LABEL_54;
  }

  v37 = [(NEKCalendarAttributes *)self canBeShared];
  if (v37 != [v4 canBeShared])
  {
    goto LABEL_54;
  }

  v38 = [(NEKCalendarAttributes *)self isPublished];
  if (v38 != [v4 isPublished])
  {
    goto LABEL_54;
  }

  v39 = [(NEKCalendarAttributes *)self invitationStatus];
  if (v39 != [v4 invitationStatus])
  {
    goto LABEL_54;
  }

  v40 = [v4 allowEvents];
  if ((v40 ^ [(NEKCalendarAttributes *)self supportedEntityTypes]))
  {
    goto LABEL_54;
  }

  v41 = [v4 allowReminders];
  if ((v41 ^ [(NEKCalendarAttributes *)self supportedEntityTypes]))
  {
    goto LABEL_54;
  }

  v42 = [(NEKCalendarAttributes *)self title];
  v43 = [v4 unlocalizedTitle];
  v44 = sub_100051F74(v42, v43, @"title");

  if (!v44)
  {
    goto LABEL_54;
  }

  v45 = [(NEKCalendarAttributes *)self digest];
  v46 = [v4 digest];
  v47 = sub_100051F74(v45, v46, @"digest");

  if (!v47)
  {
    goto LABEL_54;
  }

  v48 = [(NEKCalendarAttributes *)self symbolicColorName];
  v49 = [v4 symbolicColorName];
  v50 = sub_100051F74(v48, v49, @"symbolicColorName");

  if (!v50)
  {
    goto LABEL_54;
  }

  v51 = [(NEKCalendarAttributes *)self colorString];
  v52 = [v4 colorString];
  v53 = sub_100051F74(v51, v52, @"colorString");

  if (!v53)
  {
    goto LABEL_54;
  }

  v54 = [(NEKCalendarAttributes *)self notes];
  v55 = [v4 notes];
  v56 = sub_100051F74(v54, v55, @"notes");

  if (!v56)
  {
    goto LABEL_54;
  }

  v57 = [(NEKCalendarAttributes *)self subCalAccountID];
  v58 = [v4 subcalAccountID];
  v59 = sub_100051F74(v57, v58, @"subCalAccountID");

  if (!v59)
  {
    goto LABEL_54;
  }

  v60 = [(NEKCalendarAttributes *)self pushKey];
  v61 = [v4 pushKey];
  v62 = sub_100051F74(v60, v61, @"pushKey");

  if (!v62)
  {
    goto LABEL_54;
  }

  v63 = [(NEKCalendarAttributes *)self sharedOwnerName];
  v64 = [v4 sharedOwnerName];
  v65 = sub_100051F74(v63, v64, @"sharedOwnerName");

  if (!v65)
  {
    goto LABEL_54;
  }

  v66 = [(NEKCalendarAttributes *)self sharedOwnerAddress];
  v67 = [v4 sharedOwnerAddress];
  v68 = sub_100051F74(v66, v67, @"sharedOwnerAddress");

  if (!v68)
  {
    goto LABEL_54;
  }

  v69 = [(NEKCalendarAttributes *)self publishedURL];
  v70 = [v4 publishURL];
  v71 = sub_100051F74(v69, v70, @"publishedURL");

  if (!v71)
  {
    goto LABEL_54;
  }

  v72 = [(NEKCalendarAttributes *)self externalID];
  v73 = [v4 externalID];
  v74 = sub_100051F74(v72, v73, @"externalID");

  if (!v74)
  {
    goto LABEL_54;
  }

  v75 = [(NEKCalendarAttributes *)self externalRepresentation];
  v76 = [v4 externalRepresentation];
  v77 = sub_100051F74(v75, v76, @"externalRepresentation");

  if (!v77)
  {
    goto LABEL_54;
  }

  v78 = [(NEKCalendarAttributes *)self selfIdentityDisplayName];
  v79 = [v4 selfIdentityDisplayName];
  v80 = sub_100051F74(v78, v79, @"selfIdentityDisplayName");

  if (!v80)
  {
    goto LABEL_54;
  }

  v81 = [(NEKCalendarAttributes *)self selfIdentityEmail];
  v82 = [v4 selfIdentityEmail];
  v83 = sub_100051F74(v81, v82, @"selfIdentityEmail");

  if (!v83)
  {
    goto LABEL_54;
  }

  v84 = [(NEKCalendarAttributes *)self selfIdentityAddress];
  v85 = [v4 selfIdentityAddress];
  v86 = sub_100051F74(v84, v85, @"selfIdentityAddress");

  if (!v86)
  {
    goto LABEL_54;
  }

  v87 = [(NEKCalendarAttributes *)self selfIdentityFirstName];
  v88 = [v4 selfIdentityFirstName];
  v89 = sub_100051F74(v87, v88, @"selfIdentityFirstName");

  if (!v89)
  {
    goto LABEL_54;
  }

  v90 = [(NEKCalendarAttributes *)self selfIdentityLastName];
  v91 = [v4 selfIdentityLastName];
  v92 = sub_100051F74(v90, v91, @"selfIdentityLastName");

  if (!v92)
  {
    goto LABEL_54;
  }

  v93 = [(NEKCalendarAttributes *)self ownerIdentityDisplayName];
  v94 = [v4 ownerIdentityDisplayName];
  v95 = sub_100051F74(v93, v94, @"ownerIdentityDisplayName");

  if (!v95)
  {
    goto LABEL_54;
  }

  v96 = [(NEKCalendarAttributes *)self ownerIdentityAddress];
  v97 = [v4 ownerIdentityAddress];
  v98 = sub_100051F74(v96, v97, @"ownerIdentityAddress");

  if (!v98)
  {
    goto LABEL_54;
  }

  v99 = [(NEKCalendarAttributes *)self ownerIdentityEmail];
  v100 = [v4 ownerIdentityEmail];
  v101 = sub_100051F74(v99, v100, @"ownerIdentityEmail");

  if (!v101)
  {
    goto LABEL_54;
  }

  v102 = [(NEKCalendarAttributes *)self ownerIdentityFirstName];
  v103 = [v4 ownerIdentityFirstName];
  v104 = sub_100051F74(v102, v103, @"ownerIdentityFirstName");

  if (!v104)
  {
    goto LABEL_54;
  }

  v105 = [(NEKCalendarAttributes *)self ownerIdentityLastName];
  v106 = [v4 ownerIdentityLastName];
  v107 = sub_100051F74(v105, v106, @"ownerIdentityLastName");

  if (v107)
  {
    v108 = *(qword_1000D18A8 + 8);
    v109 = 0;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v110 = v108;
      v111 = [(NEKCalendarAttributes *)self title];
      v112 = sub_10002CDF8(v111);
      v113 = [(NEKCalendarAttributes *)self UUID];
      v115 = 138543618;
      v116 = v112;
      v117 = 2114;
      v118 = v113;
      _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "No changes for calendar with title %{public}@, identifier %{public}@", &v115, 0x16u);

      v109 = 0;
    }
  }

  else
  {
LABEL_54:
    v109 = 1;
  }

  return v109;
}

+ (void)configureCalendar:(id)a3 inDatabase:(id)a4 withAttributes:(id)a5
{
  if (a3 && a4 && a5)
  {
    v6 = a5;
    v7 = a3;
    v8 = [v6 UUID];
    [v7 setCalendarIdentifier:v8];

    v9 = [v6 title];
    [v7 setTitle:v9];

    [v7 setReadOnly:{objc_msgSend(v6, "isReadonly")}];
    [v7 setHidden:{objc_msgSend(v6, "isHidden")}];
    [v7 setImmutable:{objc_msgSend(v6, "isImmutable")}];
    [v7 setInbox:{objc_msgSend(v6, "isInbox")}];
    [v7 setNotificationsCollection:{objc_msgSend(v6, "isNotificationsCollection")}];
    [v7 setSharingInvitation:{objc_msgSend(v6, "isSharingInvitation")}];
    [v7 setSubscribed:{objc_msgSend(v6, "isSubscribed")}];
    [v7 setSubscribedHolidayCalendar:{objc_msgSend(v6, "isHolidyCalendar")}];
    [v7 setFamilyCalendar:{objc_msgSend(v6, "isFamilyCalendar")}];
    [v7 setIsIgnoringEventAlerts:{objc_msgSend(v6, "isIgnoringEventAlerts")}];
    [v7 setIsIgnoringSharedCalendarNotifications:{objc_msgSend(v6, "isIgnoringSharedCalendarNotifications")}];
    [v7 setAllowsScheduling:{objc_msgSend(v6, "isSchedulingProhibited") ^ 1}];
    [v7 setIsDefaultSchedulingCalendar:{objc_msgSend(v6, "isDefaultCalendarForStore")}];
    v10 = [v6 digest];
    [v7 setDigest:v10];

    v11 = [v6 symbolicColorName];
    [v7 setSymbolicColorName:v11];

    v12 = [v6 colorString];
    [v7 setColorString:v12];

    [v7 setDisplayOrder:{objc_msgSend(v6, "displayOrder")}];
    [v7 setSharingStatus:{objc_msgSend(v6, "sharingStatus")}];
    v13 = [v6 sharedOwnerName];
    [v7 setSharedOwnerName:v13];

    v14 = [v6 sharedOwnerAddress];
    [v7 setSharedOwnerAddress:v14];

    [v7 setSharingInvitationResponse:{objc_msgSend(v6, "sharingInvitationResponse")}];
    v15 = [v6 publishedURL];
    [v7 setPublishURL:v15];

    [v7 setCanBePublished:{objc_msgSend(v6, "canBePublished")}];
    [v7 setCanBeShared:{objc_msgSend(v6, "canBeShared")}];
    [v7 setIsPublished:{objc_msgSend(v6, "isPublished")}];
    v16 = [v6 externalID];
    [v7 setExternalID:v16];

    v17 = [v6 externalIdentificationTag];
    [v7 setExternalIDTag:v17];

    v18 = [v6 syncToken];
    [v7 setSyncToken:v18];

    v19 = [v6 externalRepresentation];
    [v7 setExternalRepresentation:v19];

    [v7 setInvitationStatus:{objc_msgSend(v6, "invitationStatus")}];
    v20 = [v6 notes];
    [v7 setNotes:v20];

    v21 = [v6 subCalAccountID];
    [v7 setSubcalAccountID:v21];

    v22 = [v6 pushKey];
    [v7 setPushKey:v22];

    v23 = [v6 selfIdentityDisplayName];
    [v7 setSelfIdentityDisplayName:v23];

    v24 = [v6 selfIdentityEmail];
    [v7 setSelfIdentityEmail:v24];

    v25 = [v6 selfIdentityAddress];
    [v7 setSelfIdentityAddress:v25];

    v26 = [v6 selfIdentityFirstName];
    [v7 setSelfIdentityFirstName:v26];

    v27 = [v6 selfIdentityLastName];
    [v7 setSelfIdentityLastName:v27];

    v28 = [v6 ownerIdentityDisplayName];
    [v7 setOwnerIdentityDisplayName:v28];

    v29 = [v6 ownerIdentityEmail];
    [v7 setOwnerIdentityEmail:v29];

    v30 = [v6 ownerIdentityAddress];
    [v7 setOwnerIdentityAddress:v30];

    v31 = [v6 ownerIdentityFirstName];
    [v7 setOwnerIdentityFirstName:v31];

    v32 = [v6 ownerIdentityLastName];

    [v7 setOwnerIdentityLastName:v32];
  }
}

@end