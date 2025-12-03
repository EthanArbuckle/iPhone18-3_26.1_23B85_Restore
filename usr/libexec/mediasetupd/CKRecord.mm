@interface CKRecord
+ (id)createRecordWithName:(id)name recordType:(id)type recordZone:(id)zone;
- (id)createMediaServiceObjectFromRecord;
- (id)recordFieldForKey:(id)key;
- (void)_attemptToLoadPublicInfoAgain;
- (void)populateCKRecordInfo:(id)info userInfo:(id)userInfo recordType:(id)type;
- (void)setRecordFieldForKey:(id)key value:(id)value;
@end

@implementation CKRecord

+ (id)createRecordWithName:(id)name recordType:(id)type recordZone:(id)zone
{
  zoneCopy = zone;
  typeCopy = type;
  nameCopy = name;
  v10 = [[CKRecordID alloc] initWithRecordName:nameCopy zoneID:zoneCopy];

  v11 = [[CKRecord alloc] initWithRecordType:typeCopy recordID:v10];

  return v11;
}

- (id)recordFieldForKey:(id)key
{
  keyCopy = key;
  encryptedValues = [(CKRecord *)self encryptedValues];
  v6 = [encryptedValues objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setRecordFieldForKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  encryptedValues = [(CKRecord *)self encryptedValues];
  [encryptedValues setObject:valueCopy forKeyedSubscript:keyCopy];
}

- (void)populateCKRecordInfo:(id)info userInfo:(id)userInfo recordType:(id)type
{
  infoCopy = info;
  userInfoCopy = userInfo;
  typeCopy = type;
  v11 = sub_100030FE4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138478339;
    v39 = typeCopy;
    v40 = 2113;
    v41 = infoCopy;
    v42 = 2113;
    v43 = userInfoCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating record RecordType: %{private}@ and ServiceInfo: %{private}@ \n and UserInfo %{private}@", &v38, 0x20u);
  }

  if ([typeCopy isEqualToString:MSServiceAccountRecordType])
  {
    v12 = MSHomeParticipantHomeIdentifier;
    v13 = [userInfoCopy objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
    [(CKRecord *)self setRecordFieldForKey:v12 value:v13];

    v14 = MSHomeParticipantHomeUserIdentifier;
    v15 = [userInfoCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    [(CKRecord *)self setRecordFieldForKey:v14 value:v15];

    v16 = MediaServiceIdentifier;
    serviceID = [infoCopy serviceID];
    uUIDString = [serviceID UUIDString];
    [(CKRecord *)self setRecordFieldForKey:v16 value:uUIDString];

    v19 = MediaServiceAccountName;
    accountName = [infoCopy accountName];
    [(CKRecord *)self setRecordFieldForKey:v19 value:accountName];

    v21 = MediaServiceConfigurationURL;
    configURL = [infoCopy configURL];
    absoluteString = [configURL absoluteString];
    [(CKRecord *)self setRecordFieldForKey:v21 value:absoluteString];

    v24 = MediaServiceUpdateListeningHistory;
    v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy updateListeningHistoryEnabled]);
    [(CKRecord *)self setRecordFieldForKey:v24 value:v25];

    v26 = MediaServiceAuthFatalError;
    v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy authFatalError]);
    [(CKRecord *)self setRecordFieldForKey:v26 value:v27];

    authConfiguration = [infoCopy authConfiguration];

    if (authConfiguration)
    {
      authConfiguration2 = [infoCopy authConfiguration];
      v30 = [NSKeyedArchiver archivedDataWithRootObject:authConfiguration2 requiringSecureCoding:1 error:0];

      if (v30)
      {
        [(CKRecord *)self setRecordFieldForKey:MediaServiceAuthConfiguration value:v30];
      }
    }

    authCredential = [infoCopy authCredential];

    if (authCredential)
    {
      authCredential2 = [infoCopy authCredential];
      serviceID2 = [NSKeyedArchiver archivedDataWithRootObject:authCredential2 requiringSecureCoding:1 error:0];

      if (serviceID2)
      {
        [(CKRecord *)self setRecordFieldForKey:MediaServiceAuthCredential value:serviceID2];
      }

      goto LABEL_13;
    }
  }

  else if ([typeCopy isEqualToString:MSDefaultServiceRecordType])
  {
    v34 = MSHomeParticipantHomeUserIdentifier;
    v35 = [userInfoCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    [(CKRecord *)self setRecordFieldForKey:v34 value:v35];

    v36 = MediaServiceIdentifier;
    serviceID2 = [infoCopy serviceID];
    uUIDString2 = [serviceID2 UUIDString];
    [(CKRecord *)self setRecordFieldForKey:v36 value:uUIDString2];

LABEL_13:
  }
}

- (id)createMediaServiceObjectFromRecord
{
  v3 = MediaServiceIdentifier;
  v4 = [(CKRecord *)self recordFieldForKey:MediaServiceIdentifier];
  if (!v4)
  {
    v5 = sub_100030FE4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100023924(v5, v35, v36, v37, v38, v39, v40, v41);
    }

    goto LABEL_23;
  }

  v5 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v4];
  if (!v5)
  {
    [(CKRecord *)self _attemptToLoadPublicInfoAgain];
    v5 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v4];
    v6 = sub_100030FE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000237DC(v4, v6, v7, v8, v9, v10, v11, v12);
    }

    if (!v5)
    {
      v5 = sub_100030FE4();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000238E0(v5);
      }

LABEL_23:
      v16 = 0;
      goto LABEL_24;
    }
  }

  recordType = [(CKRecord *)self recordType];
  v14 = [recordType isEqualToString:MSServiceAccountRecordType];

  if (!v14)
  {
    recordType2 = [(CKRecord *)self recordType];
    v43 = [recordType2 isEqualToString:MSDefaultServiceRecordType];

    if (v43)
    {
      v16 = [[MediaService alloc] initWithMediaServiceIdentifier:v4];
      goto LABEL_24;
    }

    v44 = sub_100030FE4();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100023848(self, v44);
    }

    goto LABEL_23;
  }

  v15 = [(CKRecord *)self recordFieldForKey:v3];
  v16 = [[MediaService alloc] initWithMediaServiceIdentifier:v15];
  v17 = [(CKRecord *)self recordFieldForKey:MediaServiceUpdateListeningHistory];
  [v16 setUpdateListeningHistoryEnabled:{objc_msgSend(v17, "BOOLValue")}];

  v18 = [(CKRecord *)self recordFieldForKey:MediaServiceAccountName];
  [v16 setAccountName:v18];

  v19 = [(CKRecord *)self recordFieldForKey:MediaServiceConfigurationURL];
  v20 = [NSURL URLWithString:v19];
  [v16 setConfigURL:v20];

  v21 = [(CKRecord *)self recordFieldForKey:MediaServiceAuthFatalError];
  [v16 setAuthFatalError:{objc_msgSend(v21, "BOOLValue")}];

  v22 = [(CKRecord *)self recordFieldForKey:MediaServiceAuthConfiguration];
  v23 = [(CKRecord *)self recordFieldForKey:MediaServiceAuthCredential];
  if (v22)
  {
    v24 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v22 error:0];
    [v16 setAuthConfiguration:v24];

    authConfiguration = [v16 authConfiguration];

    if (!authConfiguration)
    {
      v26 = [CMSAuthenticationConfiguration authConfigurationFromMSAuthData:v22];
      [v16 setAuthConfiguration:v26];
    }
  }

  if (v23)
  {
    v27 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v23 error:0];
    [v16 setAuthCredential:v27];

    authCredential = [v16 authCredential];

    if (!authCredential)
    {
      v29 = [CMSAuthenticationCredential authCredentialFromMSAuthData:v23];
      [v16 setAuthCredential:v29];
    }
  }

  v30 = [MSDTransactionTask createTransactionWithIdentifier:@"com.apple.mediasetupd.imageCaching"];
  v31 = [MSDArtworkManager alloc];
  serviceIconPath = [v5 serviceIconPath];
  v33 = [(MSDArtworkManager *)v31 initWithServiceID:v15 remoteImageURL:serviceIconPath];

  getLocalCachedImageURL = [(MSDArtworkManager *)v33 getLocalCachedImageURL];
  [v16 setIconImageURL:getLocalCachedImageURL];

  [v30 releaseTransaction];
LABEL_24:

  return v16;
}

- (void)_attemptToLoadPublicInfoAgain
{
  v2 = dispatch_semaphore_create(0);
  v3 = +[MSDPublicDBManager shared];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100023770;
  v14[3] = &unk_1000514E0;
  v4 = v2;
  v15 = v4;
  [v3 syncDataWithCloudKit:v14];

  v5 = dispatch_time(0, 1000000000 * MSMaxWaitInSecondsForFetchDataFromCloudKit);
  if (dispatch_semaphore_wait(v4, v5))
  {
    v6 = sub_100030FE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002399C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

@end