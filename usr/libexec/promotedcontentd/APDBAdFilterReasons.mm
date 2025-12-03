@interface APDBAdFilterReasons
- (id)insertFilterReason:(id)reason policyId:(int64_t)id filterReason:(int64_t)filterReason filterDetails:(id)details;
@end

@implementation APDBAdFilterReasons

- (id)insertFilterReason:(id)reason policyId:(int64_t)id filterReason:(int64_t)filterReason filterDetails:(id)details
{
  reasonCopy = reason;
  detailsCopy = details;
  manager = [(APDBAdFilterReasons *)self manager];

  if (!manager)
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

  if (!reasonCopy)
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

  v13 = [[APDBAdFilterReasonsRow alloc] initWithCandidate:reasonCopy policyID:id policyReason:filterReason policyDetail:detailsCopy table:self];
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
    v23 = reasonCopy;
    v18 = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{private}@: Unable to create row for ad %@", &v20, 0x16u);
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

@end