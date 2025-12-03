@interface CKRecordSystemFieldsTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation CKRecordSystemFieldsTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v4 = REMDynamicCast();

  if (v4)
  {
    v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v4 encodeSystemFieldsWithCoder:v5];
    [v5 finishEncoding];
    encodedData = [v5 encodedData];
  }

  else
  {
    encodedData = 0;
  }

  return encodedData;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v4 = REMDynamicCast();

  if (v4)
  {
    v12 = 0;
    v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v12];
    v6 = v12;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v10 = [[CKRecord alloc] initWithCoder:v5];
    }

    else
    {
      v9 = +[REMLog cloudkit];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100766500(v7, v9);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end