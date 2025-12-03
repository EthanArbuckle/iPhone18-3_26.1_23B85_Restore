@interface APEncryptedID
- (APEncryptedID)initWithIDAccountPrivate:(id)private;
- (id)encryptStringForAdServing:(id)serving name:(id)name;
@end

@implementation APEncryptedID

- (APEncryptedID)initWithIDAccountPrivate:(id)private
{
  privateCopy = private;
  v32.receiver = self;
  v32.super_class = APEncryptedID;
  v5 = [(APEncryptedID *)&v32 init];
  if (v5)
  {
    iAdID = [privateCopy iAdID];
    unencryptedIAdID = v5->_unencryptedIAdID;
    v5->_unencryptedIAdID = iAdID;

    deviceNewsPlusSubscriberID = [privateCopy deviceNewsPlusSubscriberID];
    uUIDString = [deviceNewsPlusSubscriberID UUIDString];
    v10 = [(APEncryptedID *)v5 encryptStringForAdServing:uUIDString name:@"deviceNewsPlusSubscriberID"];
    deviceNewsPlusSubscriberID = v5->_deviceNewsPlusSubscriberID;
    v5->_deviceNewsPlusSubscriberID = v10;

    anonymousDemandID = [privateCopy anonymousDemandID];
    uUIDString2 = [anonymousDemandID UUIDString];
    v14 = [(APEncryptedID *)v5 encryptStringForAdServing:uUIDString2 name:@"anonymousDemandID"];
    anonymousDemandID = v5->_anonymousDemandID;
    v5->_anonymousDemandID = v14;

    contentID = [privateCopy contentID];
    uUIDString3 = [contentID UUIDString];
    v18 = [(APEncryptedID *)v5 encryptStringForAdServing:uUIDString3 name:@"contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v18;

    dPID = [privateCopy DPID];
    v21 = [(APEncryptedID *)v5 encryptStringForAdServing:dPID name:@"DPID"];
    DPID = v5->_DPID;
    v5->_DPID = v21;

    iAdID2 = [privateCopy iAdID];
    uUIDString4 = [iAdID2 UUIDString];
    v25 = [(APEncryptedID *)v5 encryptStringForAdServing:uUIDString4 name:@"iAdID"];
    iAdID = v5->_iAdID;
    v5->_iAdID = v25;

    toroID = [privateCopy toroID];
    uUIDString5 = [toroID UUIDString];
    v29 = [(APEncryptedID *)v5 encryptStringForAdServing:uUIDString5 name:@"toroID"];
    toroID = v5->_toroID;
    v5->_toroID = v29;
  }

  return v5;
}

- (id)encryptStringForAdServing:(id)serving name:(id)name
{
  servingCopy = serving;
  nameCopy = name;
  if (qword_1004E6A38)
  {
    if (servingCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = nameCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot encrypt a nil string of key: %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  qword_1004E6A38 = SecKeyCreateRSAPublicKey();
  if (!servingCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = [servingCopy dataUsingEncoding:4];
  if (!v7)
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = nameCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to Base64 for %{public}@", buf, 0xCu);
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  error = 0;
  v8 = SecKeyCreateEncryptedData(qword_1004E6A38, kSecKeyAlgorithmRSAEncryptionPKCS1, v7, &error);
  if (error)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Code = CFErrorGetCode(error);
      v11 = CFErrorCopyDescription(error);
      *buf = 134218242;
      v16 = Code;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error %ld encrypting string: %{public}@.", buf, 0x16u);
    }
  }

LABEL_15:

  return v8;
}

@end