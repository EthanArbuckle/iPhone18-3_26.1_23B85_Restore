@interface NEKCalendarAttributes
+ (BOOL)configureList:(id)list listChangeItemProvider:(id)provider withAttributes:(id)attributes;
+ (BOOL)configureList:(id)list withSaveRequest:(id)request withAttributes:(id)attributes;
+ (id)createListInAccount:(id)account withSaveRequest:(id)request withAttributes:(id)attributes;
+ (void)configureCalendar:(id)calendar inDatabase:(id)database withAttributes:(id)attributes;
- (BOOL)didCalendarChange:(id)change;
- (NEKCalendarAttributes)initWithCalendar:(id)calendar;
- (NEKCalendarAttributes)initWithList:(id)list;
@end

@implementation NEKCalendarAttributes

- (NEKCalendarAttributes)initWithList:(id)list
{
  listCopy = list;
  if (listCopy)
  {
    v25.receiver = self;
    v25.super_class = NEKCalendarAttributes;
    v5 = [(NEKCalendarAttributes *)&v25 init];
    if (v5)
    {
      objectID = [listCopy objectID];
      uuid = [objectID uuid];
      uUIDString = [uuid UUIDString];
      [(NEKCalendarAttributes *)v5 setUUID:uUIDString];

      name = [listCopy name];
      [(NEKCalendarAttributes *)v5 setTitle:name];

      -[NEKCalendarAttributes setIsReadonly:](v5, "setIsReadonly:", [listCopy daIsReadOnly]);
      [(NEKCalendarAttributes *)v5 setIsHidden:0];
      -[NEKCalendarAttributes setIsImmutable:](v5, "setIsImmutable:", [listCopy daIsImmutable]);
      [(NEKCalendarAttributes *)v5 setIsInbox:0];
      -[NEKCalendarAttributes setIsNotificationsCollection:](v5, "setIsNotificationsCollection:", [listCopy daIsNotificationsCollection]);
      [(NEKCalendarAttributes *)v5 setIsSharingInvitation:0];
      [(NEKCalendarAttributes *)v5 setIsSubscribed:0];
      [(NEKCalendarAttributes *)v5 setIsHolidyCalendar:0];
      [(NEKCalendarAttributes *)v5 setIsFamilyCalendar:0];
      [(NEKCalendarAttributes *)v5 setIsIgnoringEventAlerts:0];
      [(NEKCalendarAttributes *)v5 setIsIgnoringSharedCalendarNotifications:0];
      [(NEKCalendarAttributes *)v5 setIsSchedulingProhibited:0];
      [(NEKCalendarAttributes *)v5 setIsDefaultCalendarForStore:0];
      [(NEKCalendarAttributes *)v5 setDigest:0];
      ekColor = [listCopy ekColor];
      daSymbolicColorName = [ekColor daSymbolicColorName];
      [(NEKCalendarAttributes *)v5 setSymbolicColorName:daSymbolicColorName];

      ekColor2 = [listCopy ekColor];
      daHexString = [ekColor2 daHexString];
      [(NEKCalendarAttributes *)v5 setColorString:daHexString];

      -[NEKCalendarAttributes setDisplayOrder:](v5, "setDisplayOrder:", [listCopy daDisplayOrder]);
      sharingStatus = [listCopy sharingStatus];
      if (sharingStatus == 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = sharingStatus == 1;
      }

      [(NEKCalendarAttributes *)v5 setSharingStatus:v15];
      sharedOwnerName = [listCopy sharedOwnerName];
      [(NEKCalendarAttributes *)v5 setSharedOwnerName:sharedOwnerName];

      sharedOwnerAddress = [listCopy sharedOwnerAddress];
      [(NEKCalendarAttributes *)v5 setSharedOwnerAddress:sharedOwnerAddress];

      [(NEKCalendarAttributes *)v5 setSharingInvitationResponse:0];
      [(NEKCalendarAttributes *)v5 setPublishedURL:0];
      [(NEKCalendarAttributes *)v5 setCanBePublished:0];
      -[NEKCalendarAttributes setCanBeShared:](v5, "setCanBeShared:", [listCopy canBeShared]);
      [(NEKCalendarAttributes *)v5 setIsPublished:0];
      externalIdentifier = [listCopy externalIdentifier];
      [(NEKCalendarAttributes *)v5 setExternalID:externalIdentifier];

      daExternalIdentificationTag = [listCopy daExternalIdentificationTag];
      [(NEKCalendarAttributes *)v5 setExternalIdentificationTag:daExternalIdentificationTag];

      daSyncToken = [listCopy daSyncToken];
      [(NEKCalendarAttributes *)v5 setSyncToken:daSyncToken];

      externalModificationTag = [listCopy externalModificationTag];
      [(NEKCalendarAttributes *)v5 setExternalModificationTag:externalModificationTag];

      [(NEKCalendarAttributes *)v5 setExternalRepresentation:0];
      [(NEKCalendarAttributes *)v5 setSupportedEntityTypes:2];
      [(NEKCalendarAttributes *)v5 setInvitationStatus:0];
      [(NEKCalendarAttributes *)v5 setNotes:0];
      [(NEKCalendarAttributes *)v5 setSubCalAccountID:0];
      daPushKey = [listCopy daPushKey];
      [(NEKCalendarAttributes *)v5 setPushKey:daPushKey];

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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)createListInAccount:(id)account withSaveRequest:(id)request withAttributes:(id)attributes
{
  attributesCopy = attributes;
  requestCopy = request;
  v10 = [requestCopy updateAccount:account];
  uUID = [attributesCopy UUID];
  v12 = [[NSUUID alloc] initWithUUIDString:uUID];
  if (!v12)
  {
    v13 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_100073BB0(uUID, v13);
    }
  }

  v14 = [REMList objectIDWithUUID:v12];
  title = [attributesCopy title];
  v16 = [requestCopy addListWithName:title toAccountChangeItem:v10 listObjectID:v14];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004C7B8;
  v19[3] = &unk_1000B5BD8;
  v17 = v16;
  v20 = v17;
  [self configureList:0 listChangeItemProvider:v19 withAttributes:attributesCopy];

  return v17;
}

+ (BOOL)configureList:(id)list withSaveRequest:(id)request withAttributes:(id)attributes
{
  listCopy = list;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004C894;
  v12[3] = &unk_1000B5C00;
  requestCopy = request;
  v14 = listCopy;
  v9 = listCopy;
  v10 = requestCopy;
  LOBYTE(attributes) = [self configureList:v9 listChangeItemProvider:v12 withAttributes:attributes];

  return attributes;
}

+ (BOOL)configureList:(id)list listChangeItemProvider:(id)provider withAttributes:(id)attributes
{
  listCopy = list;
  providerCopy = provider;
  attributesCopy = attributes;
  uUID = [attributesCopy UUID];
  v11 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v209 = uUID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting configuration of list with UUID: [%{public}@].", buf, 0xCu);
  }

  objectID = [listCopy objectID];
  uuid = [objectID uuid];
  uUIDString = [uuid UUIDString];

  uUID2 = [attributesCopy UUID];
  v16 = uUID2;
  if (uUIDString)
  {
    if ([uUIDString isEqualToString:uUID2])
    {
      goto LABEL_10;
    }
  }

  else if (!uUID2)
  {
    goto LABEL_10;
  }

  v17 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = uUIDString;
    v210 = 2112;
    *v211 = v16;
    *&v211[8] = 2114;
    *&v211[10] = uUID;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'UUID' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_10:
  name = [listCopy name];
  title = [attributesCopy title];
  v20 = title;
  v185 = v16;
  v186 = uUIDString;
  if (name)
  {
    if ([name isEqualToString:title])
    {
LABEL_12:
      v207 = 0;
      goto LABEL_17;
    }
  }

  else if (!title)
  {
    goto LABEL_12;
  }

  v21 = providerCopy[2](providerCopy);

  v207 = v21;
  [v21 setName:v20];
  v22 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = name;
    v210 = 2112;
    *v211 = v20;
    *&v211[8] = 2114;
    *&v211[10] = uUID;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "List's 'title' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_17:
  daIsReadOnly = [listCopy daIsReadOnly];
  isReadonly = [attributesCopy isReadonly];
  if (daIsReadOnly != isReadonly)
  {
    v25 = isReadonly;
    v26 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [NSNumber numberWithBool:daIsReadOnly];
      v28 = [NSNumber numberWithBool:v25];
      *buf = 138412802;
      v209 = v27;
      v210 = 2112;
      *v211 = v28;
      *&v211[8] = 2114;
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isReadOnly' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isHidden])
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
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isHidden' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  daIsImmutable = [listCopy daIsImmutable];
  isImmutable = [attributesCopy isImmutable];
  if (daIsImmutable != isImmutable)
  {
    v34 = isImmutable;
    v35 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [NSNumber numberWithBool:daIsImmutable];
      v37 = [NSNumber numberWithBool:v34];
      *buf = 138412802;
      v209 = v36;
      v210 = 2112;
      *v211 = v37;
      *&v211[8] = 2114;
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isImmutable' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isInbox])
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
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isInbox' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  daIsNotificationsCollection = [listCopy daIsNotificationsCollection];
  isNotificationsCollection = [attributesCopy isNotificationsCollection];
  if (daIsNotificationsCollection != isNotificationsCollection)
  {
    v43 = isNotificationsCollection;
    v44 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [NSNumber numberWithBool:daIsNotificationsCollection];
      v46 = [NSNumber numberWithBool:v43];
      *buf = 138412802;
      v209 = v45;
      v210 = 2112;
      *v211 = v46;
      *&v211[8] = 2114;
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isNotificationsCollection' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isSharingInvitation])
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
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isSharingInvitation' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isSubscribed])
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
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isSubscribed' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isHolidyCalendar])
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
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isHolidayCalendar' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isFamilyCalendar])
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
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isFamilyCalendar' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isIgnoringEventAlerts])
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
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isIgnoringEventAlerts' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isIgnoringSharedCalendarNotifications])
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
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isIgnoringSharedCalendarNotifications' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isSchedulingProhibited])
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
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isSchedulingProhibited' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  if ([attributesCopy isDefaultCalendarForStore])
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
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'isDefaultCalendarForStore' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v206 = listCopy;
  digest = [attributesCopy digest];
  if (digest)
  {
    v72 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = digest;
      *&v211[8] = 2114;
      *&v211[10] = uUID;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'digest' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v181 = digest;
  v73 = uUID;
  v74 = name;
  v75 = v20;
  v76 = providerCopy;
  ekColor = [v206 ekColor];
  daSymbolicColorName = [ekColor daSymbolicColorName];

  symbolicColorName = [attributesCopy symbolicColorName];
  ekColor2 = [v206 ekColor];
  daHexString = [ekColor2 daHexString];

  colorString = [attributesCopy colorString];
  v183 = v75;
  v184 = v74;
  v203 = symbolicColorName;
  if (daSymbolicColorName)
  {
    v82 = daSymbolicColorName;
    v83 = [daSymbolicColorName isEqualToString:symbolicColorName];
    v84 = symbolicColorName;
    v85 = v76;
    v86 = v73;
    v88 = attributesCopy;
    v87 = v206;
    if ((v83 & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v82 = 0;
    v84 = symbolicColorName;
    v85 = v76;
    v86 = v73;
    v88 = attributesCopy;
    v87 = v206;
    if (v84)
    {
      goto LABEL_81;
    }
  }

  if (daHexString)
  {
    if ([daHexString isEqualToString:colorString])
    {
      goto LABEL_86;
    }
  }

  else if (!colorString)
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

  v91 = [[REMColor alloc] initWithDASymbolicColorName:v84 daHexString:colorString];
  v207 = v90;
  [v90 setColor:v91];

  v92 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v209 = v82;
    v210 = 2112;
    *v211 = daHexString;
    *&v211[8] = 2112;
    *&v211[10] = v203;
    v212 = 2112;
    v213 = colorString;
    v214 = 2114;
    v215 = v86;
    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "List's 'symbolicColorName/colorString' has changed from [%@/%@] to [%@/%@].  List's UUID: [%{public}@]", buf, 0x34u);
  }

LABEL_86:
  daDisplayOrder = [v87 daDisplayOrder];
  displayOrder = [v88 displayOrder];
  v179 = colorString;
  v180 = v82;
  if (daDisplayOrder != displayOrder)
  {
    v95 = displayOrder;
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
      v209 = daDisplayOrder;
      v210 = 1024;
      *v211 = v95;
      *&v211[4] = 2114;
      *&v211[6] = v86;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "List's 'displayOrder' has changed from %ld to %d.  List's UUID: [%{public}@]", buf, 0x1Cu);
    }
  }

  sharingStatus = [v87 sharingStatus];
  sharingStatus2 = [v88 sharingStatus];
  if (sharingStatus2 == 2)
  {
    v101 = 2;
  }

  else
  {
    v101 = sharingStatus2 == 1;
  }

  if (sharingStatus != v101)
  {
    v102 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = [NSNumber numberWithInteger:sharingStatus];
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

  sharedOwnerName = [v87 sharedOwnerName];
  sharedOwnerName2 = [v88 sharedOwnerName];
  v107 = sharedOwnerName2;
  if (sharedOwnerName)
  {
    if ([sharedOwnerName isEqualToString:sharedOwnerName2])
    {
      goto LABEL_106;
    }
  }

  else if (!sharedOwnerName2)
  {
    goto LABEL_106;
  }

  v108 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = sharedOwnerName;
    v210 = 2112;
    *v211 = v107;
    *&v211[8] = 2114;
    *&v211[10] = v86;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'sharedOwnerName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_106:
  sharedOwnerAddress = [v87 sharedOwnerAddress];
  sharedOwnerAddress2 = [v88 sharedOwnerAddress];
  v196 = sharedOwnerAddress2;
  v197 = sharedOwnerAddress;
  if (sharedOwnerAddress)
  {
    if ([sharedOwnerAddress isEqualToString:sharedOwnerAddress2])
    {
      goto LABEL_113;
    }
  }

  else if (!sharedOwnerAddress2)
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
  v178 = sharedOwnerName;
  sharingInvitationResponse = [v88 sharingInvitationResponse];
  if (sharingInvitationResponse)
  {
    v113 = sharingInvitationResponse;
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

  publishedURL = [v88 publishedURL];
  if (publishedURL)
  {
    v117 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = publishedURL;
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

  canBeShared = [v87 canBeShared];
  canBeShared2 = [v88 canBeShared];
  if (canBeShared != canBeShared2)
  {
    v123 = canBeShared2;
    v124 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      v125 = [NSNumber numberWithBool:canBeShared];
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

  externalIdentifier = [v87 externalIdentifier];
  externalID = [v88 externalID];
  v195 = externalID;
  if (externalIdentifier)
  {
    if ([externalIdentifier isEqualToString:externalID])
    {
      goto LABEL_140;
    }
  }

  else if (!externalID)
  {
    goto LABEL_140;
  }

  v132 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v209 = externalIdentifier;
    v210 = 2112;
    *v211 = v195;
    *&v211[8] = 2114;
    *&v211[10] = v86;
    _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'externalID' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
  }

LABEL_140:
  daExternalIdentificationTag = [v87 daExternalIdentificationTag];
  externalIdentificationTag = [v88 externalIdentificationTag];
  v193 = externalIdentificationTag;
  v194 = daExternalIdentificationTag;
  if (daExternalIdentificationTag)
  {
    if ([daExternalIdentificationTag isEqualToString:externalIdentificationTag])
    {
      goto LABEL_147;
    }
  }

  else if (!externalIdentificationTag)
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
  daSyncToken = [v87 daSyncToken];
  syncToken = [v88 syncToken];
  v191 = syncToken;
  v192 = daSyncToken;
  if (daSyncToken)
  {
    if ([daSyncToken isEqualToString:syncToken])
    {
      goto LABEL_154;
    }
  }

  else if (!syncToken)
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
  externalModificationTag = [v87 externalModificationTag];
  externalModificationTag2 = [v88 externalModificationTag];
  v189 = externalModificationTag2;
  v190 = externalModificationTag;
  if (externalModificationTag)
  {
    if ([externalModificationTag isEqualToString:externalModificationTag2])
    {
      goto LABEL_161;
    }
  }

  else if (!externalModificationTag2)
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
  externalRepresentation = [v88 externalRepresentation];
  if (externalRepresentation)
  {
    v142 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = externalRepresentation;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'externalRepresentation' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v176 = externalIdentifier;
  invitationStatus = [v88 invitationStatus];
  if (invitationStatus)
  {
    v144 = invitationStatus;
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

  notes = [v88 notes];
  if (notes)
  {
    v149 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = notes;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'notes' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  subCalAccountID = [v88 subCalAccountID];
  if (subCalAccountID)
  {
    v151 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = subCalAccountID;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'subCalAccountID' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  daPushKey = [v87 daPushKey];
  pushKey = [v88 pushKey];
  v187 = pushKey;
  v188 = daPushKey;
  if (daPushKey)
  {
    if ([daPushKey isEqualToString:pushKey])
    {
      goto LABEL_184;
    }
  }

  else if (!pushKey)
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
  selfIdentityDisplayName = [v88 selfIdentityDisplayName];
  if (selfIdentityDisplayName)
  {
    v155 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = selfIdentityDisplayName;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'selfIdentityDisplayName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  selfIdentityEmail = [v88 selfIdentityEmail];
  if (selfIdentityEmail)
  {
    v156 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = selfIdentityEmail;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'selfIdentityEmail' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  selfIdentityAddress = [v88 selfIdentityAddress];
  if (selfIdentityAddress)
  {
    v157 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = selfIdentityAddress;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'selfIdentityAddress' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  selfIdentityFirstName = [v88 selfIdentityFirstName];
  if (selfIdentityFirstName)
  {
    v159 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = selfIdentityFirstName;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'selfIdentityFirstName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v174 = notes;
  v177 = v107;
  selfIdentityLastName = [v88 selfIdentityLastName];
  if (selfIdentityLastName)
  {
    v161 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = selfIdentityLastName;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'selfIdentityLastName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v175 = subCalAccountID;
  ownerIdentityDisplayName = [v88 ownerIdentityDisplayName];
  if (ownerIdentityDisplayName)
  {
    v163 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = ownerIdentityDisplayName;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'ownerIdentityDisplayName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  ownerIdentityEmail = [v88 ownerIdentityEmail];
  if (ownerIdentityEmail)
  {
    v165 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = ownerIdentityEmail;
      *&v211[8] = 2114;
      *&v211[10] = v86;
      _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'ownerIdentityEmail' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v205 = v86;
  ownerIdentityAddress = [v88 ownerIdentityAddress];
  if (ownerIdentityAddress)
  {
    v167 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = ownerIdentityAddress;
      *&v211[8] = 2114;
      *&v211[10] = v205;
      _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'ownerIdentityAddress' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  ownerIdentityFirstName = [v88 ownerIdentityFirstName];
  if (ownerIdentityFirstName)
  {
    v169 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = ownerIdentityFirstName;
      *&v211[8] = 2114;
      *&v211[10] = v205;
      _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "UNSUPPORTED: List's 'ownerIdentityFirstName' has changed from [%@] to [%@].  List's UUID: [%{public}@]", buf, 0x20u);
    }
  }

  v182 = v85;
  ownerIdentityLastName = [v88 ownerIdentityLastName];
  if (ownerIdentityLastName)
  {
    v171 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v209 = 0;
      v210 = 2112;
      *v211 = ownerIdentityLastName;
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

- (NEKCalendarAttributes)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (calendarCopy)
  {
    v35.receiver = self;
    v35.super_class = NEKCalendarAttributes;
    v5 = [(NEKCalendarAttributes *)&v35 init];
    if (v5)
    {
      calendarIdentifier = [calendarCopy calendarIdentifier];
      [(NEKCalendarAttributes *)v5 setUUID:calendarIdentifier];

      title = [calendarCopy title];
      [(NEKCalendarAttributes *)v5 setTitle:title];

      -[NEKCalendarAttributes setIsReadonly:](v5, "setIsReadonly:", [calendarCopy readOnly]);
      -[NEKCalendarAttributes setIsHidden:](v5, "setIsHidden:", [calendarCopy isHidden]);
      -[NEKCalendarAttributes setIsImmutable:](v5, "setIsImmutable:", [calendarCopy isImmutableRaw]);
      -[NEKCalendarAttributes setIsInbox:](v5, "setIsInbox:", [calendarCopy isInbox]);
      -[NEKCalendarAttributes setIsNotificationsCollection:](v5, "setIsNotificationsCollection:", [calendarCopy isNotificationsCollection]);
      -[NEKCalendarAttributes setIsSharingInvitation:](v5, "setIsSharingInvitation:", [calendarCopy isSharingInvitation]);
      -[NEKCalendarAttributes setIsSubscribed:](v5, "setIsSubscribed:", [calendarCopy isSubscribed]);
      -[NEKCalendarAttributes setIsHolidyCalendar:](v5, "setIsHolidyCalendar:", [calendarCopy isSubscribedHolidayCalendar]);
      -[NEKCalendarAttributes setIsFamilyCalendar:](v5, "setIsFamilyCalendar:", [calendarCopy isFamilyCalendar]);
      -[NEKCalendarAttributes setIsIgnoringEventAlerts:](v5, "setIsIgnoringEventAlerts:", [calendarCopy isIgnoringEventAlerts]);
      -[NEKCalendarAttributes setIsIgnoringSharedCalendarNotifications:](v5, "setIsIgnoringSharedCalendarNotifications:", [calendarCopy isIgnoringSharedCalendarNotifications]);
      -[NEKCalendarAttributes setIsSchedulingProhibited:](v5, "setIsSchedulingProhibited:", [calendarCopy allowsScheduling] ^ 1);
      -[NEKCalendarAttributes setIsDefaultCalendarForStore:](v5, "setIsDefaultCalendarForStore:", [calendarCopy isDefaultSchedulingCalendar]);
      digest = [calendarCopy digest];
      [(NEKCalendarAttributes *)v5 setDigest:digest];

      symbolicColorName = [calendarCopy symbolicColorName];
      [(NEKCalendarAttributes *)v5 setSymbolicColorName:symbolicColorName];

      colorString = [calendarCopy colorString];
      [(NEKCalendarAttributes *)v5 setColorString:colorString];

      -[NEKCalendarAttributes setDisplayOrder:](v5, "setDisplayOrder:", [calendarCopy displayOrder]);
      -[NEKCalendarAttributes setSharingStatus:](v5, "setSharingStatus:", [calendarCopy sharingStatus]);
      sharedOwnerName = [calendarCopy sharedOwnerName];
      [(NEKCalendarAttributes *)v5 setSharedOwnerName:sharedOwnerName];

      sharedOwnerAddress = [calendarCopy sharedOwnerAddress];
      [(NEKCalendarAttributes *)v5 setSharedOwnerAddress:sharedOwnerAddress];

      -[NEKCalendarAttributes setSharingInvitationResponse:](v5, "setSharingInvitationResponse:", [calendarCopy sharingInvitationResponse]);
      publishURL = [calendarCopy publishURL];
      [(NEKCalendarAttributes *)v5 setPublishedURL:publishURL];

      -[NEKCalendarAttributes setCanBePublished:](v5, "setCanBePublished:", [calendarCopy canBePublished]);
      -[NEKCalendarAttributes setCanBeShared:](v5, "setCanBeShared:", [calendarCopy canBeShared]);
      -[NEKCalendarAttributes setIsPublished:](v5, "setIsPublished:", [calendarCopy isPublished]);
      externalID = [calendarCopy externalID];
      [(NEKCalendarAttributes *)v5 setExternalID:externalID];

      externalIDTag = [calendarCopy externalIDTag];
      [(NEKCalendarAttributes *)v5 setExternalIdentificationTag:externalIDTag];

      syncToken = [calendarCopy syncToken];
      [(NEKCalendarAttributes *)v5 setSyncToken:syncToken];

      externalModificationTag = [calendarCopy externalModificationTag];
      [(NEKCalendarAttributes *)v5 setExternalModificationTag:externalModificationTag];

      externalRepresentation = [calendarCopy externalRepresentation];
      [(NEKCalendarAttributes *)v5 setExternalRepresentation:externalRepresentation];

      if ([calendarCopy allowEvents])
      {
        [(NEKCalendarAttributes *)v5 setSupportedEntityTypes:[(NEKCalendarAttributes *)v5 supportedEntityTypes]| 1];
      }

      if ([calendarCopy allowReminders])
      {
        [(NEKCalendarAttributes *)v5 setSupportedEntityTypes:[(NEKCalendarAttributes *)v5 supportedEntityTypes]| 2];
      }

      if (![(NEKCalendarAttributes *)v5 supportedEntityTypes])
      {
        v19 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100073FB0(v19, calendarCopy);
        }
      }

      -[NEKCalendarAttributes setInvitationStatus:](v5, "setInvitationStatus:", [calendarCopy invitationStatus]);
      notes = [calendarCopy notes];
      [(NEKCalendarAttributes *)v5 setNotes:notes];

      subcalAccountID = [calendarCopy subcalAccountID];
      [(NEKCalendarAttributes *)v5 setSubCalAccountID:subcalAccountID];

      pushKey = [calendarCopy pushKey];
      [(NEKCalendarAttributes *)v5 setPushKey:pushKey];

      selfIdentityDisplayName = [calendarCopy selfIdentityDisplayName];
      [(NEKCalendarAttributes *)v5 setSelfIdentityDisplayName:selfIdentityDisplayName];

      selfIdentityEmail = [calendarCopy selfIdentityEmail];
      [(NEKCalendarAttributes *)v5 setSelfIdentityEmail:selfIdentityEmail];

      selfIdentityAddress = [calendarCopy selfIdentityAddress];
      [(NEKCalendarAttributes *)v5 setSelfIdentityAddress:selfIdentityAddress];

      selfIdentityFirstName = [calendarCopy selfIdentityFirstName];
      [(NEKCalendarAttributes *)v5 setSelfIdentityFirstName:selfIdentityFirstName];

      selfIdentityLastName = [calendarCopy selfIdentityLastName];
      [(NEKCalendarAttributes *)v5 setSelfIdentityLastName:selfIdentityLastName];

      ownerIdentityDisplayName = [calendarCopy ownerIdentityDisplayName];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityDisplayName:ownerIdentityDisplayName];

      ownerIdentityAddress = [calendarCopy ownerIdentityAddress];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityAddress:ownerIdentityAddress];

      ownerIdentityEmail = [calendarCopy ownerIdentityEmail];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityEmail:ownerIdentityEmail];

      ownerIdentityFirstName = [calendarCopy ownerIdentityFirstName];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityFirstName:ownerIdentityFirstName];

      ownerIdentityLastName = [calendarCopy ownerIdentityLastName];
      [(NEKCalendarAttributes *)v5 setOwnerIdentityLastName:ownerIdentityLastName];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)didCalendarChange:(id)change
{
  changeCopy = change;
  if (!changeCopy)
  {
    goto LABEL_54;
  }

  v5 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    title = [(NEKCalendarAttributes *)self title];
    v8 = sub_10002CDF8(title);
    uUID = [(NEKCalendarAttributes *)self UUID];
    v115 = 138543618;
    v116 = v8;
    v117 = 2114;
    v118 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "didCalendarChange: title:%{public}@ identifier:%{public}@", &v115, 0x16u);
  }

  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    syncToken = [changeCopy syncToken];
    externalModificationTag = [changeCopy externalModificationTag];
    externalIDTag = [changeCopy externalIDTag];
    v115 = 138543874;
    v116 = syncToken;
    v117 = 2114;
    v118 = externalModificationTag;
    v119 = 2114;
    v120 = externalIDTag;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didCalendarChange: local->syncToken:%{public}@ externalModificationTag:%{public}@ externalIdentificationTag:%{public}@", &v115, 0x20u);
  }

  v15 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    syncToken2 = [(NEKCalendarAttributes *)self syncToken];
    externalModificationTag2 = [(NEKCalendarAttributes *)self externalModificationTag];
    externalIdentificationTag = [(NEKCalendarAttributes *)self externalIdentificationTag];
    v115 = 138543874;
    v116 = syncToken2;
    v117 = 2114;
    v118 = externalModificationTag2;
    v119 = 2114;
    v120 = externalIdentificationTag;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didCalendarChange: incmg->syncToken:%{public}@ externalModificationTag:%{public}@ externalIdentificationTag:%{public}@", &v115, 0x20u);
  }

  isReadonly = [(NEKCalendarAttributes *)self isReadonly];
  if (isReadonly != [changeCopy readOnly])
  {
    goto LABEL_54;
  }

  isHidden = [(NEKCalendarAttributes *)self isHidden];
  if (isHidden != [changeCopy isHidden])
  {
    goto LABEL_54;
  }

  isImmutable = [(NEKCalendarAttributes *)self isImmutable];
  if (isImmutable != [changeCopy isImmutableRaw])
  {
    goto LABEL_54;
  }

  isInbox = [(NEKCalendarAttributes *)self isInbox];
  if (isInbox != [changeCopy isInbox])
  {
    goto LABEL_54;
  }

  isNotificationsCollection = [(NEKCalendarAttributes *)self isNotificationsCollection];
  if (isNotificationsCollection != [changeCopy isNotificationsCollection])
  {
    goto LABEL_54;
  }

  isSharingInvitation = [(NEKCalendarAttributes *)self isSharingInvitation];
  if (isSharingInvitation != [changeCopy isSharingInvitation])
  {
    goto LABEL_54;
  }

  isSubscribed = [(NEKCalendarAttributes *)self isSubscribed];
  if (isSubscribed != [changeCopy isSubscribed])
  {
    goto LABEL_54;
  }

  isHolidyCalendar = [(NEKCalendarAttributes *)self isHolidyCalendar];
  if (isHolidyCalendar != [changeCopy isSubscribedHolidayCalendar])
  {
    goto LABEL_54;
  }

  isFamilyCalendar = [(NEKCalendarAttributes *)self isFamilyCalendar];
  if (isFamilyCalendar != [changeCopy isFamilyCalendar])
  {
    goto LABEL_54;
  }

  isIgnoringEventAlerts = [(NEKCalendarAttributes *)self isIgnoringEventAlerts];
  if (isIgnoringEventAlerts != [changeCopy isIgnoringEventAlerts])
  {
    goto LABEL_54;
  }

  isIgnoringSharedCalendarNotifications = [(NEKCalendarAttributes *)self isIgnoringSharedCalendarNotifications];
  if (isIgnoringSharedCalendarNotifications != [changeCopy isIgnoringSharedCalendarNotifications])
  {
    goto LABEL_54;
  }

  isSchedulingProhibited = [(NEKCalendarAttributes *)self isSchedulingProhibited];
  if (isSchedulingProhibited == [changeCopy allowsScheduling])
  {
    goto LABEL_54;
  }

  isDefaultCalendarForStore = [(NEKCalendarAttributes *)self isDefaultCalendarForStore];
  if (isDefaultCalendarForStore != [changeCopy isDefaultSchedulingCalendar])
  {
    goto LABEL_54;
  }

  displayOrder = [(NEKCalendarAttributes *)self displayOrder];
  if (displayOrder != [changeCopy displayOrder])
  {
    goto LABEL_54;
  }

  sharingStatus = [(NEKCalendarAttributes *)self sharingStatus];
  if (sharingStatus != [changeCopy sharingStatus])
  {
    goto LABEL_54;
  }

  sharingInvitationResponse = [(NEKCalendarAttributes *)self sharingInvitationResponse];
  if (sharingInvitationResponse != [changeCopy sharingInvitationResponse])
  {
    goto LABEL_54;
  }

  canBePublished = [(NEKCalendarAttributes *)self canBePublished];
  if (canBePublished != [changeCopy canBePublished])
  {
    goto LABEL_54;
  }

  canBeShared = [(NEKCalendarAttributes *)self canBeShared];
  if (canBeShared != [changeCopy canBeShared])
  {
    goto LABEL_54;
  }

  isPublished = [(NEKCalendarAttributes *)self isPublished];
  if (isPublished != [changeCopy isPublished])
  {
    goto LABEL_54;
  }

  invitationStatus = [(NEKCalendarAttributes *)self invitationStatus];
  if (invitationStatus != [changeCopy invitationStatus])
  {
    goto LABEL_54;
  }

  allowEvents = [changeCopy allowEvents];
  if ((allowEvents ^ [(NEKCalendarAttributes *)self supportedEntityTypes]))
  {
    goto LABEL_54;
  }

  allowReminders = [changeCopy allowReminders];
  if ((allowReminders ^ [(NEKCalendarAttributes *)self supportedEntityTypes]))
  {
    goto LABEL_54;
  }

  title2 = [(NEKCalendarAttributes *)self title];
  unlocalizedTitle = [changeCopy unlocalizedTitle];
  v44 = sub_100051F74(title2, unlocalizedTitle, @"title");

  if (!v44)
  {
    goto LABEL_54;
  }

  digest = [(NEKCalendarAttributes *)self digest];
  digest2 = [changeCopy digest];
  v47 = sub_100051F74(digest, digest2, @"digest");

  if (!v47)
  {
    goto LABEL_54;
  }

  symbolicColorName = [(NEKCalendarAttributes *)self symbolicColorName];
  symbolicColorName2 = [changeCopy symbolicColorName];
  v50 = sub_100051F74(symbolicColorName, symbolicColorName2, @"symbolicColorName");

  if (!v50)
  {
    goto LABEL_54;
  }

  colorString = [(NEKCalendarAttributes *)self colorString];
  colorString2 = [changeCopy colorString];
  v53 = sub_100051F74(colorString, colorString2, @"colorString");

  if (!v53)
  {
    goto LABEL_54;
  }

  notes = [(NEKCalendarAttributes *)self notes];
  notes2 = [changeCopy notes];
  v56 = sub_100051F74(notes, notes2, @"notes");

  if (!v56)
  {
    goto LABEL_54;
  }

  subCalAccountID = [(NEKCalendarAttributes *)self subCalAccountID];
  subcalAccountID = [changeCopy subcalAccountID];
  v59 = sub_100051F74(subCalAccountID, subcalAccountID, @"subCalAccountID");

  if (!v59)
  {
    goto LABEL_54;
  }

  pushKey = [(NEKCalendarAttributes *)self pushKey];
  pushKey2 = [changeCopy pushKey];
  v62 = sub_100051F74(pushKey, pushKey2, @"pushKey");

  if (!v62)
  {
    goto LABEL_54;
  }

  sharedOwnerName = [(NEKCalendarAttributes *)self sharedOwnerName];
  sharedOwnerName2 = [changeCopy sharedOwnerName];
  v65 = sub_100051F74(sharedOwnerName, sharedOwnerName2, @"sharedOwnerName");

  if (!v65)
  {
    goto LABEL_54;
  }

  sharedOwnerAddress = [(NEKCalendarAttributes *)self sharedOwnerAddress];
  sharedOwnerAddress2 = [changeCopy sharedOwnerAddress];
  v68 = sub_100051F74(sharedOwnerAddress, sharedOwnerAddress2, @"sharedOwnerAddress");

  if (!v68)
  {
    goto LABEL_54;
  }

  publishedURL = [(NEKCalendarAttributes *)self publishedURL];
  publishURL = [changeCopy publishURL];
  v71 = sub_100051F74(publishedURL, publishURL, @"publishedURL");

  if (!v71)
  {
    goto LABEL_54;
  }

  externalID = [(NEKCalendarAttributes *)self externalID];
  externalID2 = [changeCopy externalID];
  v74 = sub_100051F74(externalID, externalID2, @"externalID");

  if (!v74)
  {
    goto LABEL_54;
  }

  externalRepresentation = [(NEKCalendarAttributes *)self externalRepresentation];
  externalRepresentation2 = [changeCopy externalRepresentation];
  v77 = sub_100051F74(externalRepresentation, externalRepresentation2, @"externalRepresentation");

  if (!v77)
  {
    goto LABEL_54;
  }

  selfIdentityDisplayName = [(NEKCalendarAttributes *)self selfIdentityDisplayName];
  selfIdentityDisplayName2 = [changeCopy selfIdentityDisplayName];
  v80 = sub_100051F74(selfIdentityDisplayName, selfIdentityDisplayName2, @"selfIdentityDisplayName");

  if (!v80)
  {
    goto LABEL_54;
  }

  selfIdentityEmail = [(NEKCalendarAttributes *)self selfIdentityEmail];
  selfIdentityEmail2 = [changeCopy selfIdentityEmail];
  v83 = sub_100051F74(selfIdentityEmail, selfIdentityEmail2, @"selfIdentityEmail");

  if (!v83)
  {
    goto LABEL_54;
  }

  selfIdentityAddress = [(NEKCalendarAttributes *)self selfIdentityAddress];
  selfIdentityAddress2 = [changeCopy selfIdentityAddress];
  v86 = sub_100051F74(selfIdentityAddress, selfIdentityAddress2, @"selfIdentityAddress");

  if (!v86)
  {
    goto LABEL_54;
  }

  selfIdentityFirstName = [(NEKCalendarAttributes *)self selfIdentityFirstName];
  selfIdentityFirstName2 = [changeCopy selfIdentityFirstName];
  v89 = sub_100051F74(selfIdentityFirstName, selfIdentityFirstName2, @"selfIdentityFirstName");

  if (!v89)
  {
    goto LABEL_54;
  }

  selfIdentityLastName = [(NEKCalendarAttributes *)self selfIdentityLastName];
  selfIdentityLastName2 = [changeCopy selfIdentityLastName];
  v92 = sub_100051F74(selfIdentityLastName, selfIdentityLastName2, @"selfIdentityLastName");

  if (!v92)
  {
    goto LABEL_54;
  }

  ownerIdentityDisplayName = [(NEKCalendarAttributes *)self ownerIdentityDisplayName];
  ownerIdentityDisplayName2 = [changeCopy ownerIdentityDisplayName];
  v95 = sub_100051F74(ownerIdentityDisplayName, ownerIdentityDisplayName2, @"ownerIdentityDisplayName");

  if (!v95)
  {
    goto LABEL_54;
  }

  ownerIdentityAddress = [(NEKCalendarAttributes *)self ownerIdentityAddress];
  ownerIdentityAddress2 = [changeCopy ownerIdentityAddress];
  v98 = sub_100051F74(ownerIdentityAddress, ownerIdentityAddress2, @"ownerIdentityAddress");

  if (!v98)
  {
    goto LABEL_54;
  }

  ownerIdentityEmail = [(NEKCalendarAttributes *)self ownerIdentityEmail];
  ownerIdentityEmail2 = [changeCopy ownerIdentityEmail];
  v101 = sub_100051F74(ownerIdentityEmail, ownerIdentityEmail2, @"ownerIdentityEmail");

  if (!v101)
  {
    goto LABEL_54;
  }

  ownerIdentityFirstName = [(NEKCalendarAttributes *)self ownerIdentityFirstName];
  ownerIdentityFirstName2 = [changeCopy ownerIdentityFirstName];
  v104 = sub_100051F74(ownerIdentityFirstName, ownerIdentityFirstName2, @"ownerIdentityFirstName");

  if (!v104)
  {
    goto LABEL_54;
  }

  ownerIdentityLastName = [(NEKCalendarAttributes *)self ownerIdentityLastName];
  ownerIdentityLastName2 = [changeCopy ownerIdentityLastName];
  v107 = sub_100051F74(ownerIdentityLastName, ownerIdentityLastName2, @"ownerIdentityLastName");

  if (v107)
  {
    v108 = *(qword_1000D18A8 + 8);
    v109 = 0;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v110 = v108;
      title3 = [(NEKCalendarAttributes *)self title];
      v112 = sub_10002CDF8(title3);
      uUID2 = [(NEKCalendarAttributes *)self UUID];
      v115 = 138543618;
      v116 = v112;
      v117 = 2114;
      v118 = uUID2;
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

+ (void)configureCalendar:(id)calendar inDatabase:(id)database withAttributes:(id)attributes
{
  if (calendar && database && attributes)
  {
    attributesCopy = attributes;
    calendarCopy = calendar;
    uUID = [attributesCopy UUID];
    [calendarCopy setCalendarIdentifier:uUID];

    title = [attributesCopy title];
    [calendarCopy setTitle:title];

    [calendarCopy setReadOnly:{objc_msgSend(attributesCopy, "isReadonly")}];
    [calendarCopy setHidden:{objc_msgSend(attributesCopy, "isHidden")}];
    [calendarCopy setImmutable:{objc_msgSend(attributesCopy, "isImmutable")}];
    [calendarCopy setInbox:{objc_msgSend(attributesCopy, "isInbox")}];
    [calendarCopy setNotificationsCollection:{objc_msgSend(attributesCopy, "isNotificationsCollection")}];
    [calendarCopy setSharingInvitation:{objc_msgSend(attributesCopy, "isSharingInvitation")}];
    [calendarCopy setSubscribed:{objc_msgSend(attributesCopy, "isSubscribed")}];
    [calendarCopy setSubscribedHolidayCalendar:{objc_msgSend(attributesCopy, "isHolidyCalendar")}];
    [calendarCopy setFamilyCalendar:{objc_msgSend(attributesCopy, "isFamilyCalendar")}];
    [calendarCopy setIsIgnoringEventAlerts:{objc_msgSend(attributesCopy, "isIgnoringEventAlerts")}];
    [calendarCopy setIsIgnoringSharedCalendarNotifications:{objc_msgSend(attributesCopy, "isIgnoringSharedCalendarNotifications")}];
    [calendarCopy setAllowsScheduling:{objc_msgSend(attributesCopy, "isSchedulingProhibited") ^ 1}];
    [calendarCopy setIsDefaultSchedulingCalendar:{objc_msgSend(attributesCopy, "isDefaultCalendarForStore")}];
    digest = [attributesCopy digest];
    [calendarCopy setDigest:digest];

    symbolicColorName = [attributesCopy symbolicColorName];
    [calendarCopy setSymbolicColorName:symbolicColorName];

    colorString = [attributesCopy colorString];
    [calendarCopy setColorString:colorString];

    [calendarCopy setDisplayOrder:{objc_msgSend(attributesCopy, "displayOrder")}];
    [calendarCopy setSharingStatus:{objc_msgSend(attributesCopy, "sharingStatus")}];
    sharedOwnerName = [attributesCopy sharedOwnerName];
    [calendarCopy setSharedOwnerName:sharedOwnerName];

    sharedOwnerAddress = [attributesCopy sharedOwnerAddress];
    [calendarCopy setSharedOwnerAddress:sharedOwnerAddress];

    [calendarCopy setSharingInvitationResponse:{objc_msgSend(attributesCopy, "sharingInvitationResponse")}];
    publishedURL = [attributesCopy publishedURL];
    [calendarCopy setPublishURL:publishedURL];

    [calendarCopy setCanBePublished:{objc_msgSend(attributesCopy, "canBePublished")}];
    [calendarCopy setCanBeShared:{objc_msgSend(attributesCopy, "canBeShared")}];
    [calendarCopy setIsPublished:{objc_msgSend(attributesCopy, "isPublished")}];
    externalID = [attributesCopy externalID];
    [calendarCopy setExternalID:externalID];

    externalIdentificationTag = [attributesCopy externalIdentificationTag];
    [calendarCopy setExternalIDTag:externalIdentificationTag];

    syncToken = [attributesCopy syncToken];
    [calendarCopy setSyncToken:syncToken];

    externalRepresentation = [attributesCopy externalRepresentation];
    [calendarCopy setExternalRepresentation:externalRepresentation];

    [calendarCopy setInvitationStatus:{objc_msgSend(attributesCopy, "invitationStatus")}];
    notes = [attributesCopy notes];
    [calendarCopy setNotes:notes];

    subCalAccountID = [attributesCopy subCalAccountID];
    [calendarCopy setSubcalAccountID:subCalAccountID];

    pushKey = [attributesCopy pushKey];
    [calendarCopy setPushKey:pushKey];

    selfIdentityDisplayName = [attributesCopy selfIdentityDisplayName];
    [calendarCopy setSelfIdentityDisplayName:selfIdentityDisplayName];

    selfIdentityEmail = [attributesCopy selfIdentityEmail];
    [calendarCopy setSelfIdentityEmail:selfIdentityEmail];

    selfIdentityAddress = [attributesCopy selfIdentityAddress];
    [calendarCopy setSelfIdentityAddress:selfIdentityAddress];

    selfIdentityFirstName = [attributesCopy selfIdentityFirstName];
    [calendarCopy setSelfIdentityFirstName:selfIdentityFirstName];

    selfIdentityLastName = [attributesCopy selfIdentityLastName];
    [calendarCopy setSelfIdentityLastName:selfIdentityLastName];

    ownerIdentityDisplayName = [attributesCopy ownerIdentityDisplayName];
    [calendarCopy setOwnerIdentityDisplayName:ownerIdentityDisplayName];

    ownerIdentityEmail = [attributesCopy ownerIdentityEmail];
    [calendarCopy setOwnerIdentityEmail:ownerIdentityEmail];

    ownerIdentityAddress = [attributesCopy ownerIdentityAddress];
    [calendarCopy setOwnerIdentityAddress:ownerIdentityAddress];

    ownerIdentityFirstName = [attributesCopy ownerIdentityFirstName];
    [calendarCopy setOwnerIdentityFirstName:ownerIdentityFirstName];

    ownerIdentityLastName = [attributesCopy ownerIdentityLastName];

    [calendarCopy setOwnerIdentityLastName:ownerIdentityLastName];
  }
}

@end