@interface APEncryptedID
- (APEncryptedID)initWithIDAccountPrivate:(id)a3;
- (id)encryptStringForAdServing:(id)a3 name:(id)a4;
@end

@implementation APEncryptedID

- (APEncryptedID)initWithIDAccountPrivate:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = APEncryptedID;
  v5 = [(APEncryptedID *)&v32 init];
  if (v5)
  {
    v6 = [v4 iAdID];
    unencryptedIAdID = v5->_unencryptedIAdID;
    v5->_unencryptedIAdID = v6;

    v8 = [v4 deviceNewsPlusSubscriberID];
    v9 = [v8 UUIDString];
    v10 = [(APEncryptedID *)v5 encryptStringForAdServing:v9 name:@"deviceNewsPlusSubscriberID"];
    deviceNewsPlusSubscriberID = v5->_deviceNewsPlusSubscriberID;
    v5->_deviceNewsPlusSubscriberID = v10;

    v12 = [v4 anonymousDemandID];
    v13 = [v12 UUIDString];
    v14 = [(APEncryptedID *)v5 encryptStringForAdServing:v13 name:@"anonymousDemandID"];
    anonymousDemandID = v5->_anonymousDemandID;
    v5->_anonymousDemandID = v14;

    v16 = [v4 contentID];
    v17 = [v16 UUIDString];
    v18 = [(APEncryptedID *)v5 encryptStringForAdServing:v17 name:@"contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v18;

    v20 = [v4 DPID];
    v21 = [(APEncryptedID *)v5 encryptStringForAdServing:v20 name:@"DPID"];
    DPID = v5->_DPID;
    v5->_DPID = v21;

    v23 = [v4 iAdID];
    v24 = [v23 UUIDString];
    v25 = [(APEncryptedID *)v5 encryptStringForAdServing:v24 name:@"iAdID"];
    iAdID = v5->_iAdID;
    v5->_iAdID = v25;

    v27 = [v4 toroID];
    v28 = [v27 UUIDString];
    v29 = [(APEncryptedID *)v5 encryptStringForAdServing:v28 name:@"toroID"];
    toroID = v5->_toroID;
    v5->_toroID = v29;
  }

  return v5;
}

- (id)encryptStringForAdServing:(id)a3 name:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1004E6A38)
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot encrypt a nil string of key: %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  qword_1004E6A38 = SecKeyCreateRSAPublicKey();
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = [v5 dataUsingEncoding:4];
  if (!v7)
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v6;
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