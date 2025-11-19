@interface CKShareSystemFieldsTransformer
- (id)reverseTransformedValue:(id)a3;
@end

@implementation CKShareSystemFieldsTransformer

- (id)reverseTransformedValue:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v9 = 0;
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v9];

    v5 = v9;
    if (v5)
    {
      v6 = +[REMLog cloudkit];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1007665BC(v5, v6);
      }
    }

    v7 = [[CKShare alloc] initWithCoder:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end