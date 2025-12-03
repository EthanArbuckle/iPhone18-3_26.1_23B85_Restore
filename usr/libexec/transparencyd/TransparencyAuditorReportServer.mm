@interface TransparencyAuditorReportServer
+ (void)makeReports:(id)reports additionalData:(id)data auditorURI:(id)i logClient:(id)client completionBlock:(id)block;
@end

@implementation TransparencyAuditorReportServer

+ (void)makeReports:(id)reports additionalData:(id)data auditorURI:(id)i logClient:(id)client completionBlock:(id)block
{
  reportsCopy = reports;
  dataCopy = data;
  iCopy = i;
  clientCopy = client;
  blockCopy = block;
  v57 = +[NSMutableDictionary dictionary];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = reportsCopy;
  v13 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v13)
  {
    v14 = *v70;
    v15 = kTransparencyAuditorReportApplication;
    v54 = kTransparencyAuditorReportUUID;
    do
    {
      v16 = 0;
      do
      {
        if (*v70 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [NSMutableDictionary dictionaryWithDictionary:*(*(&v69 + 1) + 8 * v16)];
        v18 = v17;
        if (dataCopy)
        {
          [v17 setObject:dataCopy forKeyedSubscript:@"userInput"];
        }

        v19 = [v18 objectForKeyedSubscript:v15];
        if (v19)
        {
          v20 = [TransparencyApplication applicationValueForIdentifier:v19];
          v21 = v20 == 0;

          if (v21)
          {
            if (qword_10039CB30 != -1)
            {
              sub_10025D414();
            }

            v29 = qword_10039CB38;
            if (os_log_type_enabled(qword_10039CB38, OS_LOG_TYPE_ERROR))
            {
              v30 = v29;
              v31 = [v18 objectForKeyedSubscript:v54];
              *buf = 138412546;
              *&buf[4] = v19;
              *&buf[12] = 2112;
              *&buf[14] = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "skipping auditor report with unknown application %@ : %@", buf, 0x16u);
            }
          }

          else
          {
            v22 = [v57 objectForKeyedSubscript:v19];
            v23 = v22 == 0;

            if (v23)
            {
              v24 = +[NSMutableArray array];
              [v57 setObject:v24 forKeyedSubscript:v19];
            }

            v25 = [v57 objectForKeyedSubscript:v19];
            [v25 addObject:v18];
          }
        }

        else
        {
          if (qword_10039CB30 != -1)
          {
            sub_10025D43C();
          }

          v26 = qword_10039CB38;
          if (os_log_type_enabled(qword_10039CB38, OS_LOG_TYPE_ERROR))
          {
            v27 = v26;
            v28 = [v18 objectForKeyedSubscript:v54];
            *buf = 138412290;
            *&buf[4] = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "skipping auditor report with missing application: %@", buf, 0xCu);
          }
        }

        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v13);
  }

  allKeys = [v57 allKeys];
  v33 = [allKeys count] == 0;

  if (v33)
  {
    v47 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-178 description:@"no auditor reports with valid applications"];
    blockCopy[2](blockCopy, v47);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v75 = sub_1001F1914;
    v76 = sub_1001F1924;
    v77 = 0;
    group = dispatch_group_create();
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v34 = v57;
    v35 = [v34 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v35)
    {
      v53 = *v66;
      while (2)
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v66 != v53)
          {
            objc_enumerationMutation(v34);
          }

          v37 = *(*(&v65 + 1) + 8 * i);
          v38 = [v34 objectForKeyedSubscript:v37];
          v39 = +[NSUUID UUID];
          if (![NSJSONSerialization isValidJSONObject:v38])
          {
            v48 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-300 description:@"auditor report is not a valid JSON object"];
            blockCopy[2](blockCopy, v48);

            goto LABEL_39;
          }

          v64 = 0;
          v40 = [NSJSONSerialization dataWithJSONObject:v38 options:0 error:&v64];
          v41 = v64;
          v42 = v41;
          if (v40)
          {
            v55 = v38;
            v43 = v39;
            v44 = v41;
            dispatch_group_enter(group);
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v61[2] = sub_1001F192C;
            v61[3] = &unk_100328E08;
            v63 = buf;
            v42 = v44;
            v39 = v43;
            v38 = v55;
            v62 = group;
            [clientCopy postReport:v40 uuid:v39 application:v37 completionHandler:v61];
          }

          else
          {
            blockCopy[2](blockCopy, v41);
          }

          if (!v40)
          {
            goto LABEL_39;
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v65 objects:v73 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v45 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v46 = dispatch_queue_create("com.apple.transparency.auditReports", v45);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F1994;
    block[3] = &unk_10031BE08;
    v59 = blockCopy;
    v60 = buf;
    dispatch_group_notify(group, v46, block);

    v34 = v59;
LABEL_39:

    _Block_object_dispose(buf, 8);
  }
}

@end