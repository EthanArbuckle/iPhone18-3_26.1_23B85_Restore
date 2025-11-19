@interface APDBAdFilterReasons
- (id)insertFilterReason:(id)a3 policyId:(int64_t)a4 filterReason:(int64_t)a5 filterDetails:(id)a6;
@end

@implementation APDBAdFilterReasons

- (id)insertFilterReason:(id)a3 policyId:(int64_t)a4 filterReason:(int64_t)a5 filterDetails:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(APDBAdFilterReasons *)self manager];

  if (!v12)
  {
    v13 = APLogForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v20 = 138477827;
    v21 = objc_opt_class();
    v15 = v21;
    v16 = "[%{private}@]: Error APDatabaseManager is nil.";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v16, &v20, 0xCu);

    goto LABEL_13;
  }

  if (!v10)
  {
    v13 = APLogForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v20 = 138477827;
    v21 = objc_opt_class();
    v15 = v21;
    v16 = "[%{private}@]: Error storing filter reason, NONNULL params are NULL";
    goto LABEL_9;
  }

  v13 = [[APDBAdFilterReasonsRow alloc] initWithCandidate:v10 policyID:a4 policyReason:a5 policyDetail:v11 table:self];
  if (([v13 save]& 1) != 0)
  {
    v13 = v13;
    v14 = v13;
    goto LABEL_14;
  }

  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 138478083;
    v21 = objc_opt_class();
    v22 = 2112;
    v23 = v10;
    v18 = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{private}@: Unable to create row for ad %@", &v20, 0x16u);
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

@end