@interface NFRemoteAdminConnectionHTTP
- (NFRemoteAdminConnectionHTTP)initWithURL:(id)a3 SEID:(id)a4;
- (NFRemoteAdminConnectionHTTP)initWithURL:(id)a3 SEID:(id)a4 showProprietaryHeaders:(BOOL)a5 disableEVTrustValidation:(BOOL)a6;
- (unsigned)disconnect;
- (unsigned)performRequest:(id)a3 body:(id)a4 header:(id)a5 response:(id)a6 responseHeader:(id)a7 httpStatus:(int64_t *)a8 duration:(double *)a9 sessionError:(id *)a10;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation NFRemoteAdminConnectionHTTP

- (NFRemoteAdminConnectionHTTP)initWithURL:(id)a3 SEID:(id)a4
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i API is deprecated!!", v11, ClassName, Name, 95);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v18 = v14;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 95;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i API is deprecated!!", buf, 0x22u);
  }

  return 0;
}

- (NFRemoteAdminConnectionHTTP)initWithURL:(id)a3 SEID:(id)a4 showProprietaryHeaders:(BOOL)a5 disableEVTrustValidation:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = NFRemoteAdminConnectionHTTP;
  v12 = [(NFRemoteAdminConnectionHTTP *)&v18 init];
  if (v12)
  {
    v13 = dispatch_semaphore_create(0);
    sem = v12->_sem;
    v12->_sem = v13;

    if ([v11 length])
    {
      v15 = [v10 URLByAppendingPathComponent:v11];
    }

    else
    {
      v15 = v10;
    }

    baseURL = v12->_baseURL;
    v12->_baseURL = v15;

    if (os_variant_has_internal_content())
    {
      v12->_disableEVTrustValidation = a6;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100038E88;
    block[3] = &unk_100054A40;
    block[4] = v12;
    block[5] = "_getSessionWithProprietaryHeaders";
    if (qword_10005BAA0 != -1)
    {
      dispatch_once(&qword_10005BAA0, block);
    }

    objc_storeStrong(&v12->_netSession, qword_10005BAA8);
    v12->_proprietaryHeaders = a5;
  }

  return v12;
}

- (unsigned)disconnect
{
  v2 = self;
  objc_sync_enter(v2);
  [(NSURLSessionTask *)v2->_netSessionTask cancel];
  objc_sync_exit(v2);

  return 0;
}

- (unsigned)performRequest:(id)a3 body:(id)a4 header:(id)a5 response:(id)a6 responseHeader:(id)a7 httpStatus:(int64_t *)a8 duration:(double *)a9 sessionError:(id *)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v117 = a7;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 6;
  v129 = 0;
  v130 = &v129;
  v131 = 0x3032000000;
  v132 = sub_100039F6C;
  v133 = sub_100039F7C;
  v134 = 0;
  v116 = objc_autoreleasePoolPush();
  *v143 = 0;
  *v144 = v143;
  *&v144[8] = 0x3032000000;
  *&v144[16] = sub_100039F6C;
  *&v144[24] = sub_100039F7C;
  *&v144[32] = 0;
  v19 = [v15 length];
  baseURL = self->_baseURL;
  if (v19)
  {
    v21 = [(NSURL *)baseURL URLByAppendingPathComponent:v15];
  }

  else
  {
    v21 = [(NSURL *)baseURL copy];
  }

  url = self->_url;
  self->_url = v21;

  objc_storeStrong((*v144 + 40), self->_url);
  if (!v16)
  {
    v115 = 0;
    goto LABEL_9;
  }

  if (![NSJSONSerialization isValidJSONObject:v16])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v31 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v34 = 45;
      if (isMetaClass)
      {
        v34 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i JSON serialization failed, invalid body: %{public}@", v34, ClassName, Name, 277, v16);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      v37 = object_getClassName(self);
      v38 = sel_getName(a2);
      *buf = 67110146;
      *&buf[4] = v36;
      *v140 = 2082;
      *&v140[2] = v37;
      *&v140[10] = 2082;
      *&v140[12] = v38;
      *&v140[20] = 1024;
      *&v140[22] = 277;
      v141 = 2114;
      v142 = v16;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i JSON serialization failed, invalid body: %{public}@", buf, 0x2Cu);
    }

    goto LABEL_67;
  }

  v128 = 0;
  v23 = [NSJSONSerialization dataWithJSONObject:v16 options:0 error:&v128];
  v24 = v128;
  v25 = v24;
  v115 = v23;
  if (!v23)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v86 = NFLogGetLogger();
    if (v86)
    {
      v87 = v86;
      v88 = object_getClass(self);
      v89 = class_isMetaClass(v88);
      v99 = object_getClassName(self);
      v102 = sel_getName(a2);
      v90 = 45;
      if (v89)
      {
        v90 = 43;
      }

      v87(3, "%c[%{public}s %{public}s]:%i JSON serialization failed: %{public}@", v90, v99, v102, 273, v25);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v91 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      v92 = object_getClass(self);
      if (class_isMetaClass(v92))
      {
        v93 = 43;
      }

      else
      {
        v93 = 45;
      }

      v94 = object_getClassName(self);
      v95 = sel_getName(a2);
      *buf = 67110146;
      *&buf[4] = v93;
      *v140 = 2082;
      *&v140[2] = v94;
      *&v140[10] = 2082;
      *&v140[12] = v95;
      *&v140[20] = 1024;
      *&v140[22] = 273;
      v141 = 2114;
      v142 = v25;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i JSON serialization failed: %{public}@", buf, 0x2Cu);
    }

LABEL_67:
    _Block_object_dispose(v143, 8);

    objc_autoreleasePoolPop(v116);
    v85 = 22;
    goto LABEL_68;
  }

LABEL_9:
  v26 = [NSMutableURLRequest requestWithURL:*(*v144 + 40) cachePolicy:1 timeoutInterval:30.0];
  [v26 setHTTPMethod:@"POST"];
  v27 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{@"application/json", @"Content-Type", 0}];
  v28 = v27;
  if (v17)
  {
    [v27 addEntriesFromDictionary:v17];
  }

  v112 = v17;
  v113 = v18;
  if (self->_proprietaryHeaders)
  {
    context = objc_autoreleasePoolPush();
    v110 = v16;
    v111 = v15;
    v109 = v28;
    if (NFIsSimulator())
    {
      v29 = @"Simulator";
    }

    else
    {
      v29 = MGCopyAnswer();
    }

    v106 = v29;
    v107 = MGCopyAnswer();
    v105 = MGCopyAnswer();
    v104 = NFBuildVersion();
    v103 = [[NSString alloc] initWithFormat:@"%@", v29];
    v39 = [[NSString alloc] initWithFormat:@"%@;%@;%@", v107, v105, v104];
    v40 = [NSBundle bundleForClass:objc_opt_class()];
    v41 = [v40 infoDictionary];
    v42 = [v41 objectForKey:kCFBundleVersionKey];

    v43 = +[NSBundle mainBundle];
    v44 = [v43 infoDictionary];
    v45 = [v44 objectForKey:kCFBundleVersionKey];

    v46 = [NSString alloc];
    v47 = [v40 bundleIdentifier];
    v48 = [v43 bundleIdentifier];
    v49 = [v46 initWithFormat:@"%@/%@ (%@/%@)", v47, v42, v48, v45];

    v50 = [[NSString alloc] initWithFormat:@"<%@> <%@> <%@>", v103, v39, v49];
    objc_autoreleasePoolPop(context);
    v28 = v109;
    [v109 setObject:v50 forKey:@"X-Apple-Client-Info"];

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v16 = v110;
    v15 = v111;
    v18 = v113;
  }

  [v26 setAllHTTPHeaderFields:v28];
  [v26 setHTTPBody:v115];
  if (byte_10005BAB0 == 1)
  {
    v51 = v28;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFLogGetLogger();
    if (v52)
    {
      v53 = v52;
      v54 = object_getClass(self);
      v55 = class_isMetaClass(v54);
      v98 = object_getClassName(self);
      v101 = sel_getName(a2);
      v56 = 45;
      if (v55)
      {
        v56 = 43;
      }

      v53(6, "%c[%{public}s %{public}s]:%i [TSM] Request Header: %@", v56, v98, v101, 300, v51);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = object_getClass(self);
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(self);
      v61 = sel_getName(a2);
      *buf = 67110146;
      *&buf[4] = v59;
      *v140 = 2082;
      *&v140[2] = v60;
      *&v140[10] = 2082;
      *&v140[12] = v61;
      *&v140[20] = 1024;
      *&v140[22] = 300;
      v141 = 2112;
      v142 = v51;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Request Header: %@", buf, 0x2Cu);
    }

    v18 = v113;
    v28 = v51;
    sub_10002D188("[TSM] Request Body: ", v16);
  }

  v62 = v28;
  *buf = 0;
  *v140 = buf;
  *&v140[8] = 0x2020000000;
  *&v140[16] = 0;
  v63 = self;
  objc_sync_enter(v63);
  netSession = v63->_netSession;
  v119[0] = _NSConcreteStackBlock;
  v119[1] = 3221225472;
  v119[2] = sub_100039F84;
  v119[3] = &unk_100055078;
  v119[4] = v63;
  v126 = a2;
  v120 = v117;
  v122 = buf;
  v123 = &v129;
  v124 = v143;
  v127 = a8;
  v125 = &v135;
  v65 = v18;
  v121 = v65;
  v66 = [(NSURLSession *)netSession dataTaskWithRequest:v26 completionHandler:v119];
  netSessionTask = v63->_netSessionTask;
  v63->_netSessionTask = v66;

  mach_continuous_time();
  [(NSURLSessionTask *)v63->_netSessionTask resume];

  objc_sync_exit(v63);
  if (v63->_netSessionTask)
  {
    dispatch_semaphore_wait(v63->_sem, 0xFFFFFFFFFFFFFFFFLL);
  }

  v68 = v63;
  objc_sync_enter(v68);
  v69 = v63->_netSessionTask;
  v63->_netSessionTask = 0;

  [(NSURLSession *)v63->_netSession flushWithCompletionHandler:&stru_100055098];
  objc_sync_exit(v68);

  if (a9)
  {
    v70 = *(*v140 + 24);
    *a9 = GetElapsedTimeInMillisecondsFromMachTime() / 1000.0;
  }

  if (byte_10005BAB0 == 1 && [v65 count])
  {
    sub_10002D188("[TSM] Response Body: ", v65);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v143, 8);
  objc_autoreleasePoolPop(v116);
  v17 = v112;
  if (a10)
  {
    *a10 = v130[5];
  }

  if (v130[5])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v71 = NFLogGetLogger();
    if (v71)
    {
      v72 = v71;
      v73 = object_getClass(v68);
      v74 = class_isMetaClass(v73);
      v75 = object_getClassName(v68);
      v76 = sel_getName(a2);
      v77 = [v130[5] description];
      v78 = 45;
      if (v74)
      {
        v78 = 43;
      }

      v72(3, "%c[%{public}s %{public}s]:%i NetSessionError=%{public}@", v78, v75, v76, 447, v77);

      v17 = v112;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v79 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v80 = object_getClass(v68);
      if (class_isMetaClass(v80))
      {
        v81 = 43;
      }

      else
      {
        v81 = 45;
      }

      v82 = object_getClassName(v68);
      v83 = sel_getName(a2);
      v84 = [v130[5] description];
      *v143 = 67110146;
      *&v143[4] = v81;
      v17 = v112;
      *v144 = 2082;
      *&v144[2] = v82;
      *&v144[10] = 2082;
      *&v144[12] = v83;
      *&v144[20] = 1024;
      *&v144[22] = 447;
      *&v144[26] = 2114;
      *&v144[28] = v84;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NetSessionError=%{public}@", v143, 0x2Cu);
    }
  }

  v85 = *(v136 + 6);
  v18 = v113;
LABEL_68:
  _Block_object_dispose(&v129, 8);

  _Block_object_dispose(&v135, 8);
  return v85;
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 protectionSpace];
  v13 = [v12 authenticationMethod];
  if ([v13 isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    v14 = [v9 delegateQueue];
    v15 = [v14 underlyingQueue];

    if (!v15)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v35 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v39 = 45;
        if (isMetaClass)
        {
          v39 = 43;
        }

        v35(3, "%c[%{public}s %{public}s]:%i session delegate queue is nil", v39, ClassName, Name, 542);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = object_getClass(self);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        LODWORD(result) = 67109890;
        HIDWORD(result) = v42;
        *v65 = 2082;
        *&v65[2] = object_getClassName(self);
        *&v65[10] = 2082;
        *&v65[12] = sel_getName(a2);
        *&v65[20] = 1024;
        *&v65[22] = 542;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i session delegate queue is nil", &result, 0x22u);
      }

      NFSimulateCrash();
      exit(-1);
    }

    v16 = [v12 serverTrust];
    v17 = [v9 delegateQueue];
    v18 = [v17 underlyingQueue];
    v49[1] = 3221225472;
    v49[0] = _NSConcreteStackBlock;
    v50 = sub_10003BB64;
    v51 = &unk_1000550E8;
    v53 = v11;
    v52 = v12;
    v19 = v18;
    v20 = v49;
    v21 = v20;
    if (self)
    {
      if (v16)
      {
        result = _NSConcreteStackBlock;
        *v65 = 3221225472;
        *&v65[8] = sub_10003AFFC;
        *&v65[16] = &unk_1000550C0;
        *&v65[24] = self;
        v67 = "_trustPassesExtendedValidation:queue:completionHandler:";
        v48 = v20;
        v66 = v48;
        v22 = SecTrustEvaluateAsyncWithError(v16, v19, &result);
        if (v22)
        {
          v23 = v22;
          v47 = v17;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v24 = NFLogGetLogger();
          if (v24)
          {
            v25 = v24;
            v26 = object_getClass(self);
            v44 = class_isMetaClass(v26);
            v45 = object_getClassName(self);
            v27 = sel_getName("_trustPassesExtendedValidation:queue:completionHandler:");
            v28 = 45;
            if (v44)
            {
              v28 = 43;
            }

            v25(3, "%c[%{public}s %{public}s]:%i Trust eval error: %d", v28, v45, v27, 529, v23);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v29 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = object_getClass(self);
            if (class_isMetaClass(v30))
            {
              v31 = 43;
            }

            else
            {
              v31 = 45;
            }

            v46 = v31;
            v32 = object_getClassName(self);
            v33 = sel_getName("_trustPassesExtendedValidation:queue:completionHandler:");
            *buf = 67110146;
            v55 = v46;
            v56 = 2082;
            v57 = v32;
            v58 = 2082;
            v59 = v33;
            v60 = 1024;
            v61 = 529;
            v62 = 1024;
            v63 = v23;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Trust eval error: %d", buf, 0x28u);
          }

          v50(v48, 0);
          v17 = v47;
        }
      }

      else
      {
        v50(v20, 0);
      }
    }
  }

  else
  {
    (*(v11 + 2))(v11, 1, 0);
  }
}

@end