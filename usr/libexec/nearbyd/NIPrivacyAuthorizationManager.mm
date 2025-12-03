@interface NIPrivacyAuthorizationManager
- (AuthorizationState)presentUserAuthorizationPrompt:(SEL)prompt forAuditToken:(id)token withBundleRecord:(id *)record;
- (NIPrivacyAuthorizationManager)init;
- (id).cxx_construct;
- (int)authorizationStatusForSession:(id)session promptUserIfUndetermined:(BOOL)undetermined;
- (void)clearStateForPid:(int)pid;
@end

@implementation NIPrivacyAuthorizationManager

- (NIPrivacyAuthorizationManager)init
{
  v3.receiver = self;
  v3.super_class = NIPrivacyAuthorizationManager;
  return [(NIPrivacyAuthorizationManager *)&v3 init];
}

- (void)clearStateForPid:(int)pid
{
  pidCopy = pid;
  std::mutex::lock((self + 8));
  sub_10003CAB0(self + 9, &pidCopy);
  std::mutex::unlock((self + 8));
}

- (int)authorizationStatusForSession:(id)session promptUserIfUndetermined:(BOOL)undetermined
{
  undeterminedCopy = undetermined;
  sessionCopy = session;
  v26 = [sessionCopy pid];
  std::mutex::lock((self + 8));
  v7 = sub_10003CAE8(self + 9, &v26);
  if (v7)
  {
    v8 = *(v7 + 6);
    std::mutex::unlock((self + 8));
  }

  else
  {
    std::mutex::unlock((self + 8));
    displayName = [sessionCopy displayName];
    v10 = displayName == 0;

    if (v10)
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_10049CC78(v13);
      }

      v8 = 0;
    }

    else
    {
      connection = [sessionCopy connection];
      v12 = connection;
      if (connection)
      {
        [connection auditToken];
      }

      else
      {
        *buf = 0u;
        v28 = 0u;
      }

      v25 = 0;
      v14 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v25];
      v15 = v25;

      if (!v14 || v15)
      {
        v19 = qword_1009F9820;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          displayName2 = [sessionCopy displayName];
          sub_10049CC10(displayName2, v15, buf, v19);
        }

        v8 = 0;
      }

      else if (undeterminedCopy)
      {
        displayName3 = [sessionCopy displayName];
        connection2 = [sessionCopy connection];
        v18 = connection2;
        if (connection2)
        {
          [connection2 auditToken];
        }

        else
        {
          *buf = 0u;
          v28 = 0u;
        }

        [(NIPrivacyAuthorizationManager *)self presentUserAuthorizationPrompt:displayName3 forAuditToken:buf withBundleRecord:v14];

        std::mutex::lock((self + 8));
        *buf = &v26;
        v21 = sub_10003CB9C(self + 9, &v26);
        *(v21 + 3) = v23;
        v21[5] = v24;
        std::mutex::unlock((self + 8));
        AnalyticsSendEventLazy();
        v8 = v23;
      }

      else
      {
        v8 = 2;
      }
    }
  }

  return v8;
}

- (AuthorizationState)presentUserAuthorizationPrompt:(SEL)prompt forAuditToken:(id)token withBundleRecord:(id *)record
{
  v8 = a6;
  retstr->var0 = 2;
  retstr->var1.var0.__null_state_ = 0;
  retstr->var1.__engaged_ = 0;
  v16 = kTCCAccessCheckOptionPrompt;
  v17 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v10 = *&record->var0[4];
  *v15 = *record->var0;
  *&v15[16] = v10;
  v11 = TCCAccessCheckAuditToken();
  v12 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"YES";
    if (!v11)
    {
      v13 = @"NO";
    }

    *v15 = 138412546;
    *&v15[4] = v8;
    *&v15[12] = 2112;
    *&v15[14] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#bundle Application: %@, hasAccessToNearbyInteraction: %@", v15, 0x16u);
  }

  if (v11)
  {
    retstr->var0 = 3;
  }

  else
  {
    retstr->var0 = 4;
  }

  retstr->var1.var0.__val_ = sub_100005288();
  retstr->var1.__engaged_ = 1;

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 12) = 0;
  *(self + 26) = 1065353216;
  return self;
}

@end