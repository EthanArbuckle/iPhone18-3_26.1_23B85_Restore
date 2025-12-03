@interface CKRecord
+ (id)acceptedClasses;
- (NSSecureCoding)data;
- (void)setData:(id)data;
@end

@implementation CKRecord

- (void)setData:(id)data
{
  if (data)
  {
    v9 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:data requiringSecureCoding:1 error:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = CKLogContextDaemon;
      if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[CKRecord(SiriKnowledgeAdditions) setData:]";
        v12 = 2112;
        v13 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Error encountered while encoding record data: %@", buf, 0x16u);
      }
    }

    else
    {
      if (!v4)
      {
LABEL_11:

        return;
      }

      encryptedValuesByKey = [(CKRecord *)self encryptedValuesByKey];
      [encryptedValuesByKey setObject:v4 forKey:@"value"];
    }

    goto LABEL_11;
  }

  encryptedValuesByKey2 = [(CKRecord *)self encryptedValuesByKey];
  [encryptedValuesByKey2 setObject:0 forKey:@"value"];
}

- (NSSecureCoding)data
{
  encryptedValuesByKey = [(CKRecord *)self encryptedValuesByKey];
  v3 = [encryptedValuesByKey objectForKey:@"value"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v18];
    v5 = v18;
    acceptedClasses = [objc_opt_class() acceptedClasses];
    if (!acceptedClasses)
    {
      v17 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      acceptedClasses = [NSSet setWithObjects:v17, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0];
    }

    v14 = [v4 decodeObjectOfClasses:acceptedClasses forKey:NSKeyedArchiveRootObjectKey];
    [v4 finishDecoding];
    if (v5)
    {
      v15 = CKLogContextDaemon;
      if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[CKRecord(SiriKnowledgeAdditions) data]";
        v21 = 2112;
        v22 = v5;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Error encountered while decoding record data: %@", buf, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = v3;
  }

  return v14;
}

+ (id)acceptedClasses
{
  if (qword_10001D948 != -1)
  {
    dispatch_once(&qword_10001D948, &stru_100018560);
  }

  v3 = qword_10001D940;

  return v3;
}

@end