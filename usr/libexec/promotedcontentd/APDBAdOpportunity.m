@interface APDBAdOpportunity
- (id)insertAdOpportunity:(id)a3 placement:(int64_t)a4;
@end

@implementation APDBAdOpportunity

- (id)insertAdOpportunity:(id)a3 placement:(int64_t)a4
{
  v6 = a3;
  v7 = [(APDBAdOpportunity *)self manager];

  if (!v7)
  {
    v8 = APLogForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v15 = 138477827;
    v16 = objc_opt_class();
    v10 = v16;
    v11 = "[%{private}@]: Error APDatabaseManager is nill.";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v11, &v15, 0xCu);

    goto LABEL_13;
  }

  if (!v6)
  {
    v8 = APLogForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v15 = 138477827;
    v16 = objc_opt_class();
    v10 = v16;
    v11 = "[%{private}@]: Error storing Ad opportunity, NONNULL params are NULL";
    goto LABEL_9;
  }

  v8 = [[APDBAdOpportunityRow alloc] initWithIdentifier:v6 placement:a4 table:self];
  if (([v8 save]& 1) != 0)
  {
    v8 = v8;
    v9 = v8;
    goto LABEL_14;
  }

  v12 = APLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = 138477827;
    v16 = objc_opt_class();
    v13 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{private}@]: Error storing Ad opportunity row.", &v15, 0xCu);
  }

LABEL_13:
  v9 = 0;
LABEL_14:

  return v9;
}

@end