@interface WANWActivityMessageSubmitter
- (WANWActivityMessageSubmitter)initWithMessageGroupType:(int64_t)type;
- (id)submitMessage:(id)message;
@end

@implementation WANWActivityMessageSubmitter

- (WANWActivityMessageSubmitter)initWithMessageGroupType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = WANWActivityMessageSubmitter;
  v4 = [(WANWActivityMessageSubmitter *)&v8 init];
  v4->_groupTypeForThisSubmitter = type;
  if (!qword_10010DEF0)
  {
    qword_10010DEF0 = symptom_framework_init();
    if (!qword_10010DEF0)
    {
      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v10 = "[WANWActivityMessageSubmitter initWithMessageGroupType:]";
        v11 = 1024;
        v12 = 73;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error creating reporter", buf, 0x12u);
      }

      v7 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v10 = "[WANWActivityMessageSubmitter initWithMessageGroupType:]";
        v11 = 1024;
        v12 = 78;
        v13 = 2048;
        typeCopy = type;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error configuring groupType: %ld", buf, 0x1Cu);
      }

      return 0;
    }
  }

  return v4;
}

- (id)submitMessage:(id)message
{
  messageCopy = message;
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [messageCopy key];
    *buf = 136446722;
    v43 = "[WANWActivityMessageSubmitter submitMessage:]";
    v44 = 1024;
    v45 = 87;
    v46 = 2112;
    v47 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Attempting to submit: %@", buf, 0x1Cu);
  }

  v7 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WANWActivityMessageSubmitter submitMessage", "", buf, 2u);
  }

  v8 = objc_autoreleasePoolPush();
  if (!symptom_new())
  {
    v29 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v43 = "[WANWActivityMessageSubmitter submitMessage:]";
      v44 = 1024;
      v45 = 92;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error creating symptom", buf, 0x12u);
    }

    v56 = NSLocalizedFailureReasonErrorKey;
    v57 = @"WAErrorCodeSubmissionModelFailure";
    v30 = &v57;
    v31 = &v56;
    goto LABEL_34;
  }

  v9 = symptom_set_qualifier();
  if (v9)
  {
    v32 = v9;
    v33 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v43 = "[WANWActivityMessageSubmitter submitMessage:]";
      v44 = 1024;
      v45 = 94;
      v46 = 1024;
      LODWORD(v47) = v32;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error setting symptom qualifier kNWActivityQualifierWiFiFragment %d", buf, 0x18u);
    }

    v54 = NSLocalizedFailureReasonErrorKey;
    v55 = @"WAErrorCodeSubmissionModelFailure";
    v30 = &v55;
    v31 = &v54;
    goto LABEL_34;
  }

  v10 = [(WAProtobufMessageSubmitter *)self instantiateAWDProtobufAndPopulateValues:messageCopy];
  if (!v10)
  {
    v34 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v43 = "[WANWActivityMessageSubmitter submitMessage:]";
      v44 = 1024;
      v45 = 98;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error creating data to send to symptom_send", buf, 0x12u);
    }

    v52 = NSLocalizedFailureReasonErrorKey;
    v53 = @"WAErrorCodeSubmissionModelFailure";
    v30 = &v53;
    v31 = &v52;
LABEL_34:
    v35 = [NSDictionary dictionaryWithObjects:v30 forKeys:v31 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9007 userInfo:v35];

    objc_autoreleasePoolPop(v8);
    goto LABEL_20;
  }

  v11 = v10;
  v39 = 0;
  v12 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v39];
  v13 = v39;
  v14 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v12 length];
    *buf = 136447234;
    v43 = "[WANWActivityMessageSubmitter submitMessage:]";
    v44 = 1024;
    v45 = 101;
    v46 = 2112;
    v47 = v16;
    v48 = 2048;
    v49 = v17;
    v50 = 2112;
    v51 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Size of %@: %zd %@", buf, 0x30u);
  }

  [v12 length];
  [v12 bytes];
  v18 = symptom_set_additional_qualifier();
  v19 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v43 = "[WANWActivityMessageSubmitter submitMessage:]";
    v44 = 1024;
    v45 = 117;
    v46 = 1024;
    LODWORD(v47) = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:symptom_set_additional_qualifier: %d", buf, 0x18u);
  }

  v20 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WANWActivityMessageSubmitter symptom_send", "", buf, 2u);
  }

  v21 = symptom_send();
  v22 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WANWActivityMessageSubmitter symptom_send", "", buf, 2u);
  }

  if (v21)
  {
    v36 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v43 = "[WANWActivityMessageSubmitter submitMessage:]";
      v44 = 1024;
      v45 = 123;
      v46 = 1024;
      LODWORD(v47) = v21;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error symptom_send() %d", buf, 0x18u);
    }

    v40 = NSLocalizedFailureReasonErrorKey;
    v41 = @"WAErrorCodeSubmissionModelFailure";
    v37 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v38 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9007 userInfo:v37];

    objc_autoreleasePoolPop(v8);
    v13 = v38;
  }

  else
  {

    objc_autoreleasePoolPop(v8);
    v23 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [messageCopy key];
      *buf = 136446722;
      v43 = "[WANWActivityMessageSubmitter submitMessage:]";
      v44 = 1024;
      v45 = 127;
      v46 = 2112;
      v47 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Submit complete: %@", buf, 0x1Cu);
    }
  }

LABEL_20:
  submissionDelegate = [(WAMessageAWDSubmitter *)self submissionDelegate];
  uuid = [messageCopy uuid];
  [submissionDelegate messsageWasSubmittedWithUUID:uuid];

  v27 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WANWActivityMessageSubmitter submitMessage", "", buf, 2u);
  }

  return v13;
}

@end