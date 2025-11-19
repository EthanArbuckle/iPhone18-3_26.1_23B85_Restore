@interface NFAssertPKWalletForegroundPresentment
- (BOOL)isEntitled:(id)a3;
- (id)onAssert;
- (id)onDeassert;
@end

@implementation NFAssertPKWalletForegroundPresentment

- (id)onAssert
{
  [(NFAsserter *)self setState:1];
  v67 = +[_NFHardwareManager sharedHardwareManager];
  if (self)
  {
    v66 = +[_NFHardwareManager sharedHardwareManager];
    v65 = [v66 expressModeManager];
    v3 = sub_100006D58(v65);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v74 objects:v90 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v75;
      v69 = v3;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v75 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v74 + 1) + 8 * i);
          expressPassIDList = self->_expressPassIDList;
          v10 = [v8 objectForKeyedSubscript:@"passUniqueID"];
          LODWORD(expressPassIDList) = [(NSSet *)expressPassIDList containsObject:v10];

          if (expressPassIDList)
          {
            v11 = [v8 objectForKeyedSubscript:@"appletIdentifier"];
            v12 = [NSData NF_dataWithHexString:v11];
            v13 = sub_10001A63C(v12);

            if ((v13 & 0xFFFFFFFFFFFFFFFDLL) == 1)
            {
              v15 = sub_10027EAA8(v14);
              v17 = *(v16 + 216);
              v18 = [v8 objectForKeyedSubscript:{@"keyIdentifier", v15}];
              v19 = [v8 objectForKeyedSubscript:@"appletIdentifier"];
              v73 = 0;
              v20 = [v17 requestAssertionForKeyID:v18 withAppletID:v19 withOptions:0 error:&v73];
              v21 = v73;

              if (v20)
              {
                [(NSMutableSet *)self->_sesAssertionList addObject:v20];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v23 = Logger;
                  Class = object_getClass(self);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(self);
                  Name = sel_getName("_initSESAssertion");
                  v26 = 45;
                  if (isMetaClass)
                  {
                    v26 = 43;
                  }

                  v3 = v69;
                  v23(4, "%c[%{public}s %{public}s]:%i SES assert creation failed, %{public}@", v26, ClassName, Name, 102, v21);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v27 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v28 = object_getClass(self);
                  if (class_isMetaClass(v28))
                  {
                    v29 = 43;
                  }

                  else
                  {
                    v29 = 45;
                  }

                  v30 = object_getClassName(self);
                  v31 = sel_getName("_initSESAssertion");
                  *buf = 67110146;
                  v81 = v29;
                  v82 = 2082;
                  v83 = v30;
                  v3 = v69;
                  v84 = 2082;
                  v85 = v31;
                  v86 = 1024;
                  v87 = 102;
                  v88 = 2114;
                  v89 = v21;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SES assert creation failed, %{public}@", buf, 0x2Cu);
                }
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v74 objects:v90 count:16];
      }

      while (v5);
    }
  }

  if (([(NFAssertPKPresentConfiguration *)self->_config options]& 1) != 0)
  {
    v33 = +[_NFHardwareManager sharedHardwareManager];
    v34 = v33;
    if (v33)
    {
      v35 = *(v33 + 128);
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;

    if (!v36)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFLogGetLogger();
      if (v37)
      {
        v38 = v37;
        v39 = object_getClass(self);
        v40 = class_isMetaClass(v39);
        v41 = object_getClassName(self);
        v64 = sel_getName(a2);
        v42 = 45;
        if (v40)
        {
          v42 = 43;
        }

        v38(4, "%c[%{public}s %{public}s]:%i Presentation service is not available", v42, v41, v64, 132);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = object_getClass(self);
        if (class_isMetaClass(v44))
        {
          v45 = 43;
        }

        else
        {
          v45 = 45;
        }

        v46 = object_getClassName(self);
        v47 = sel_getName(a2);
        *v90 = 67109890;
        *&v90[4] = v45;
        v91 = 2082;
        v92 = v46;
        v93 = 2082;
        v94 = v47;
        v95 = 1024;
        v96 = 132;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Presentation service is not available", v90, 0x22u);
      }

      sub_100199548(NFBugCapture, @"Assertion Failure", @"[NFAssertPKWalletForegroundPresentment onAssert]", @"Presentation service is not available", 0, 0);
    }

    *v90 = 0;
    v48 = [(NFAsserter *)self remoteAssertion];
    v49 = [v48 description];
    v32 = [v36 assert:0 requestor:v49 isFirst:0 updatedVal:v90];
  }

  else
  {
    v32 = 1;
  }

  if (([(NFAssertPKPresentConfiguration *)self->_config options]& 2) != 0)
  {
    if (v67)
    {
      v50 = *(v67 + 416);
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;
    [v51 queueSuspend];
  }

  v52 = sub_100007D90(v67);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000077E0;
  block[3] = &unk_100315F80;
  block[4] = self;
  v53 = v67;
  v71 = v53;
  v72 = a2;
  dispatch_async(v52, block);

  if (v32)
  {
    v54 = 0;
  }

  else
  {
    v55 = [NSError alloc];
    v56 = [NSString stringWithUTF8String:"nfcd"];
    v78[0] = NSLocalizedDescriptionKey;
    v57 = [NSString stringWithUTF8String:"Invalid State"];
    v79[0] = v57;
    v79[1] = &off_100330DF8;
    v78[1] = @"Line";
    v78[2] = @"Method";
    v58 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v79[2] = v58;
    v78[3] = NSDebugDescriptionErrorKey;
    v59 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 216];
    v79[3] = v59;
    v60 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:4];
    v54 = [v55 initWithDomain:v56 code:12 userInfo:v60];
  }

  return v54;
}

- (BOOL)isEntitled:(id)a3
{
  v3 = [a3 NF_whitelistChecker];
  v4 = [v3 internalAccess];

  return v4;
}

- (id)onDeassert
{
  [(NFAsserter *)self setState:3];
  v4 = +[_NFHardwareManager sharedHardwareManager];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  if (self)
  {
    sesAssertionList = self->_sesAssertionList;
  }

  else
  {
    sesAssertionList = 0;
  }

  v6 = sesAssertionList;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v46 + 1) + 8 * i) invalidate];
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v8);
  }

  if (self)
  {
    v11 = self->_sesAssertionList;
  }

  else
  {
    v11 = 0;
  }

  [(NSMutableSet *)v11 removeAllObjects];
  v12 = +[_NFHardwareManager sharedHardwareManager];
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 128);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (!v15)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v17(4, "%c[%{public}s %{public}s]:%i Presentation service is not available", v21, ClassName, Name, 238);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(self);
      v26 = sel_getName(a2);
      *buf = 67109890;
      *&buf[4] = v24;
      v53 = 2082;
      v54 = v25;
      v55 = 2082;
      v56 = v26;
      v57 = 1024;
      v58 = 238;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Presentation service is not available", buf, 0x22u);
    }

    sub_100199548(NFBugCapture, @"Assertion Failure", @"[NFAssertPKWalletForegroundPresentment onDeassert]", @"Presentation service is not available", 0, 0);
  }

  if (([(NFAssertPKPresentConfiguration *)self->_config options]& 5) != 0)
  {
    *buf = 0;
    v27 = [(NFAsserter *)self remoteAssertion];
    v28 = [v27 description];
    v29 = [v15 deassert:0 requestor:v28 isLast:0 updatedVal:buf];
  }

  else
  {
    v29 = 1;
  }

  if (([(NFAssertPKPresentConfiguration *)self->_config options]& 2) != 0)
  {
    if (v4)
    {
      v30 = *(v4 + 416);
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    [v31 queueResume];
  }

  v32 = sub_100007D90(v4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AB4F4;
  block[3] = &unk_100315F80;
  block[4] = self;
  v33 = v4;
  v44 = v33;
  v45 = a2;
  dispatch_async(v32, block);

  if (v29)
  {
    v34 = 0;
  }

  else
  {
    v35 = [NSError alloc];
    v36 = [NSString stringWithUTF8String:"nfcd"];
    v50[0] = NSLocalizedDescriptionKey;
    v37 = [NSString stringWithUTF8String:"Invalid State"];
    v51[0] = v37;
    v51[1] = &off_100330E10;
    v50[1] = @"Line";
    v50[2] = @"Method";
    v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v51[2] = v38;
    v50[3] = NSDebugDescriptionErrorKey;
    v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 338];
    v51[3] = v39;
    v40 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:4];
    v34 = [v35 initWithDomain:v36 code:12 userInfo:v40];
  }

  return v34;
}

@end