@interface GKClientAppSigningStatus
+ (BOOL)appIsDevSigned:(int)signed auditToken:(id *)token;
+ (BOOL)appIsDevSigned:(int)signed auditToken:(id *)token csopsFnValidCat:(void *)cat csopsFnStatus:(void *)status;
+ (BOOL)isForcedAsDevSignedTeamWith:(id *)with processIdentifier:(int)identifier;
+ (id)headerValueForSignatureType:(int64_t)type;
+ (id)opsValidationCategoryAndStatus:(int)status auditToken:(id *)token csopsFnValidCat:(void *)cat csopsFnStatus:(void *)fnStatus;
+ (id)teamIdentifierFor:(id *)for processIdentifier:(int)identifier;
+ (int64_t)appSignatureType:(int)type auditToken:(id *)token;
+ (int64_t)appSignatureType:(int)type auditToken:(id *)token csopsFnValidCat:(void *)cat csopsFnStatus:(void *)status;
@end

@implementation GKClientAppSigningStatus

+ (BOOL)appIsDevSigned:(int)signed auditToken:(id *)token
{
  v4 = *&token->var0[4];
  v6[0] = *token->var0;
  v6[1] = v4;
  return [GKClientAppSigningStatus appIsDevSigned:*&signed auditToken:v6 csopsFnValidCat:&csops_audittoken csopsFnStatus:&csops_audittoken];
}

+ (int64_t)appSignatureType:(int)type auditToken:(id *)token
{
  v4 = *&token->var0[4];
  v6[0] = *token->var0;
  v6[1] = v4;
  return [GKClientAppSigningStatus appSignatureType:*&type auditToken:v6 csopsFnValidCat:&csops_audittoken csopsFnStatus:&csops_audittoken];
}

+ (BOOL)appIsDevSigned:(int)signed auditToken:(id *)token csopsFnValidCat:(void *)cat csopsFnStatus:(void *)status
{
  v6 = *&token->var0[4];
  v12[0] = *token->var0;
  v12[1] = v6;
  v7 = [GKClientAppSigningStatus opsValidationCategoryAndStatus:*&signed auditToken:v12 csopsFnValidCat:cat csopsFnStatus:status];
  if ([v7 category] && objc_msgSend(v7, "status"))
  {
    if ([v7 category] == 3)
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v9 = [v7 category] == 10 || objc_msgSend(v7, "category") == 1;
      v10 = [v7 status] & 4;
      [v7 setStatus:v10];
      v8 = v9 & (v10 >> 2);
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (id)teamIdentifierFor:(id *)for processIdentifier:(int)identifier
{
  v4 = *&for->var0[4];
  *v11.val = *for->var0;
  *&v11.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v11);
  if (v5)
  {
    v6 = v5;
    *v11.val = 0;
    v7 = SecTaskCopyTeamIdentifier();
    CFRelease(v6);
    if (*v11.val)
    {
      if (!os_log_GKGeneral)
      {
        v8 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_1002945FC();
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100294674();
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)isForcedAsDevSignedTeamWith:(id *)with processIdentifier:(int)identifier
{
  v4 = *&with->var0[4];
  v9[0] = *with->var0;
  v9[1] = v4;
  v5 = [GKClientAppSigningStatus teamIdentifierFor:v9 processIdentifier:*&identifier];
  v6 = v5;
  if (v5)
  {
    if ([v5 isEqualToString:@"DK9N2M2GK6"])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v6 isEqualToString:@"TC264XR4RQ"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int64_t)appSignatureType:(int)type auditToken:(id *)token csopsFnValidCat:(void *)cat csopsFnStatus:(void *)status
{
  v6 = *&token->var0[4];
  v11[0] = *token->var0;
  v11[1] = v6;
  v7 = [GKClientAppSigningStatus opsValidationCategoryAndStatus:*&type auditToken:v11 csopsFnValidCat:cat csopsFnStatus:status];
  v8 = [v7 category] - 2;
  if (v8 > 8)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_1002C2B38[v8];
  }

  return v9;
}

+ (id)opsValidationCategoryAndStatus:(int)status auditToken:(id *)token csopsFnValidCat:(void *)cat csopsFnStatus:(void *)fnStatus
{
  v9 = *&status;
  v10 = *&token->var0[4];
  v25[0] = *token->var0;
  v25[1] = v10;
  v11 = [GKClientAppSigningStatus hashForAuditToken:v25];
  v12 = [SigningStatusCache getValue:v11];
  if (v12)
  {
    v13 = v12;
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKLRUCache, OS_LOG_TYPE_DEBUG))
    {
      sub_1002946B4();
    }

    v15 = v13;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKLRUCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100294728();
    }

    LODWORD(v25[0]) = 0;
    if ((cat)(v9, 17, v25, 4, token))
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10029479C();
      }

      LODWORD(v25[0]) = 0;
    }

    v24 = 0;
    if ((fnStatus)(v9, 0, &v24, 4, token))
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10029480C();
      }

      v24 = 0;
    }

    v19 = [OpsValidationCategoryAndStatus alloc];
    v20 = [(OpsValidationCategoryAndStatus *)v19 initWithOpsValidationCategory:LODWORD(v25[0]) status:v24];
    v21 = +[SigningStatusCache sharedInstance];
    [v21 insertValue:v20 forKey:v11];

    v15 = v20;
  }

  v22 = v15;

  return v22;
}

+ (id)headerValueForSignatureType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_100369D98 + type - 1);
  }
}

@end