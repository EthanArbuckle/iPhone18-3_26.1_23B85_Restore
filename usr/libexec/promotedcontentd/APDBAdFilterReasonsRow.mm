@interface APDBAdFilterReasonsRow
- (APDBAdFilterReasonsRow)initWithCandidate:(id)a3 policyID:(int64_t)a4 policyReason:(int64_t)a5 policyDetail:(id)a6 table:(id)a7;
- (NSDictionary)details;
- (id)_dictionaryToJsonString:(id)a3;
- (id)_jsonStringToDictionary:(id)a3 error:(id *)a4;
- (id)readOnlyColumns;
- (int64_t)policy;
- (int64_t)policy_reason;
- (void)setPolicy:(int64_t)a3;
- (void)setPolicy_reason:(int64_t)a3;
- (void)set_details:(id)a3;
@end

@implementation APDBAdFilterReasonsRow

- (id)readOnlyColumns
{
  v3 = [NSSet setWithObjects:@"details", 0];
  v7.receiver = self;
  v7.super_class = APDBAdFilterReasonsRow;
  v4 = [(APDBAdFilterReasonsRow *)&v7 readOnlyColumns];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (APDBAdFilterReasonsRow)initWithCandidate:(id)a3 policyID:(int64_t)a4 policyReason:(int64_t)a5 policyDetail:(id)a6 table:(id)a7
{
  v12 = a3;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = APDBAdFilterReasonsRow;
  v14 = [(APDBAdFilterReasonsRow *)&v21 initAsNewObjectWithTable:a7];
  v15 = v14;
  if (v14)
  {
    [(APDBAdFilterReasonsRow *)v14 setValue:v12 forColumnName:@"candidate_id"];
    v16 = [NSNumber numberWithInteger:a4];
    [(APDBAdFilterReasonsRow *)v15 setValue:v16 forColumnName:@"policy_id"];

    v17 = [NSNumber numberWithInteger:a5];
    [(APDBAdFilterReasonsRow *)v15 setValue:v17 forColumnName:@"policy_reason"];

    v18 = [(APDBAdFilterReasonsRow *)v15 _dictionaryToJsonString:v13];
    [(APDBAdFilterReasonsRow *)v15 setValue:v18 forColumnName:@"policy_detail"];

    v19 = +[NSDate now];
    [(APDBAdFilterReasonsRow *)v15 setValue:v19 forColumnName:@"filter_time"];
  }

  return v15;
}

- (NSDictionary)details
{
  v3 = [(APDBAdFilterReasonsRow *)self valueForColumnName:@"policy_detail"];
  if (v3)
  {
    v8 = 0;
    v4 = [(APDBAdFilterReasonsRow *)self _jsonStringToDictionary:v3 error:&v8];
    v5 = v4;
    v6 = 0;
    if (!v8)
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)set_details:(id)a3
{
  v4 = [(APDBAdFilterReasonsRow *)self _dictionaryToJsonString:a3];
  [(APDBAdFilterReasonsRow *)self setValue:v4 forColumnName:@"policy_detail"];
}

- (int64_t)policy
{
  v2 = [(APDBAdFilterReasonsRow *)self valueForColumnName:@"policy_id"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPolicy:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APDBAdFilterReasonsRow *)self setValue:v4 forColumnName:@"policy_id"];
}

- (int64_t)policy_reason
{
  v2 = [(APDBAdFilterReasonsRow *)self valueForColumnName:@"policy_reason"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPolicy_reason:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APDBAdFilterReasonsRow *)self setValue:v4 forColumnName:@"policy_reason"];
}

- (id)_jsonStringToDictionary:(id)a3 error:(id *)a4
{
  v5 = [a3 dataUsingEncoding:4];
  if (v5)
  {
    v6 = [NSJSONSerialization JSONObjectWithData:v5 options:4 error:a4];
    v7 = v6;
    if (a4 || !v6)
    {
      v8 = APLogForCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        goto LABEL_16;
      }

      v15 = objc_opt_class();
      v16 = *a4;
      v18 = 138478083;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v9 = v15;
      v10 = "%{private}@: Error creating JSON object: %@";
      v11 = v8;
      v12 = 22;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_16;
      }

      v8 = APLogForCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v18 = 138477827;
      v19 = objc_opt_class();
      v9 = v19;
      v10 = "%{private}@: JSON object created for string is not a dictionary.";
      v11 = v8;
      v12 = 12;
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, &v18, v12);

    goto LABEL_14;
  }

  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v18 = 138477827;
    v19 = objc_opt_class();
    v14 = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{private}@: Value cannot be serialized to data", &v18, 0xCu);
  }

  if (a4)
  {
    [NSError errorWithDomain:@"kAPNSStringDictionaryErrorDomain" code:2001 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_16:

  return v7;
}

- (id)_dictionaryToJsonString:(id)a3
{
  if (a3)
  {
    v4 = [a3 jsonStringWithOptions:5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end