@interface MIAppReferenceTracker
+ (id)managerForInstallationDomain:(unint64_t)a3;
- (BOOL)addReferenceForIdentity:(id)a3 error:(id *)a4;
- (BOOL)finalizeTemporaryReference:(id)a3 error:(id *)a4;
- (BOOL)referenceExists:(BOOL *)a3 forIdentity:(id)a4 error:(id *)a5;
- (BOOL)removeReferenceForIdentity:(id)a3 waitingForSpaceReclaimation:(BOOL)a4 error:(id *)a5;
- (BOOL)revokeTemporaryReference:(id)a3 error:(id *)a4;
- (id)addTemporaryReferenceForIdentity:(id)a3 error:(id *)a4;
- (id)initForInstallationDomain:(unint64_t)a3;
- (void)enumerateAppReferencesWithBlock:(id)a3;
@end

@implementation MIAppReferenceTracker

+ (id)managerForInstallationDomain:(unint64_t)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052D20;
  block[3] = &unk_100090CF8;
  block[4] = a1;
  if (qword_1000A96F8 != -1)
  {
    dispatch_once(&qword_1000A96F8, block);
  }

  if (a3 == 2)
  {
    v4 = qword_1000A96E8;
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v4 = qword_1000A96F0;
LABEL_7:
    v5 = v4;
    goto LABEL_12;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (id)initForInstallationDomain:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MIAppReferenceTracker;
  result = [(MIAppReferenceTracker *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (BOOL)referenceExists:(BOOL *)a3 forIdentity:(id)a4 error:(id *)a5
{
  v7 = sub_100010734("[MIAppReferenceTracker referenceExists:forIdentity:error:]", 59, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v5, "[MIAppReferenceTracker referenceExists:forIdentity:error:]");
  if (a5)
  {
    v7 = v7;
    *a5 = v7;
  }

  return 0;
}

- (BOOL)addReferenceForIdentity:(id)a3 error:(id *)a4
{
  v6 = sub_100010734("[MIAppReferenceTracker addReferenceForIdentity:error:]", 68, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MIAppReferenceTracker addReferenceForIdentity:error:]");
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return 0;
}

- (BOOL)removeReferenceForIdentity:(id)a3 waitingForSpaceReclaimation:(BOOL)a4 error:(id *)a5
{
  v7 = sub_100010734("[MIAppReferenceTracker removeReferenceForIdentity:waitingForSpaceReclaimation:error:]", 77, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v5, "[MIAppReferenceTracker removeReferenceForIdentity:waitingForSpaceReclaimation:error:]");
  if (a5)
  {
    v7 = v7;
    *a5 = v7;
  }

  return 0;
}

- (id)addTemporaryReferenceForIdentity:(id)a3 error:(id *)a4
{
  v6 = sub_100010734("[MIAppReferenceTracker addTemporaryReferenceForIdentity:error:]", 86, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MIAppReferenceTracker addTemporaryReferenceForIdentity:error:]");
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return 0;
}

- (BOOL)finalizeTemporaryReference:(id)a3 error:(id *)a4
{
  v6 = sub_100010734("[MIAppReferenceTracker finalizeTemporaryReference:error:]", 95, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MIAppReferenceTracker finalizeTemporaryReference:error:]");
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return 0;
}

- (BOOL)revokeTemporaryReference:(id)a3 error:(id *)a4
{
  v6 = sub_100010734("[MIAppReferenceTracker revokeTemporaryReference:error:]", 104, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MIAppReferenceTracker revokeTemporaryReference:error:]");
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return 0;
}

- (void)enumerateAppReferencesWithBlock:(id)a3
{
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }
}

@end