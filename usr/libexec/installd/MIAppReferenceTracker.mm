@interface MIAppReferenceTracker
+ (id)managerForInstallationDomain:(unint64_t)domain;
- (BOOL)addReferenceForIdentity:(id)identity error:(id *)error;
- (BOOL)finalizeTemporaryReference:(id)reference error:(id *)error;
- (BOOL)referenceExists:(BOOL *)exists forIdentity:(id)identity error:(id *)error;
- (BOOL)removeReferenceForIdentity:(id)identity waitingForSpaceReclaimation:(BOOL)reclaimation error:(id *)error;
- (BOOL)revokeTemporaryReference:(id)reference error:(id *)error;
- (id)addTemporaryReferenceForIdentity:(id)identity error:(id *)error;
- (id)initForInstallationDomain:(unint64_t)domain;
- (void)enumerateAppReferencesWithBlock:(id)block;
@end

@implementation MIAppReferenceTracker

+ (id)managerForInstallationDomain:(unint64_t)domain
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052D20;
  block[3] = &unk_100090CF8;
  block[4] = self;
  if (qword_1000A96F8 != -1)
  {
    dispatch_once(&qword_1000A96F8, block);
  }

  if (domain == 2)
  {
    v4 = qword_1000A96E8;
    goto LABEL_7;
  }

  if (domain == 3)
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

- (id)initForInstallationDomain:(unint64_t)domain
{
  v5.receiver = self;
  v5.super_class = MIAppReferenceTracker;
  result = [(MIAppReferenceTracker *)&v5 init];
  if (result)
  {
    *(result + 1) = domain;
  }

  return result;
}

- (BOOL)referenceExists:(BOOL *)exists forIdentity:(id)identity error:(id *)error
{
  v7 = sub_100010734("[MIAppReferenceTracker referenceExists:forIdentity:error:]", 59, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v5, "[MIAppReferenceTracker referenceExists:forIdentity:error:]");
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (BOOL)addReferenceForIdentity:(id)identity error:(id *)error
{
  v6 = sub_100010734("[MIAppReferenceTracker addReferenceForIdentity:error:]", 68, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MIAppReferenceTracker addReferenceForIdentity:error:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (BOOL)removeReferenceForIdentity:(id)identity waitingForSpaceReclaimation:(BOOL)reclaimation error:(id *)error
{
  v7 = sub_100010734("[MIAppReferenceTracker removeReferenceForIdentity:waitingForSpaceReclaimation:error:]", 77, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v5, "[MIAppReferenceTracker removeReferenceForIdentity:waitingForSpaceReclaimation:error:]");
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (id)addTemporaryReferenceForIdentity:(id)identity error:(id *)error
{
  v6 = sub_100010734("[MIAppReferenceTracker addTemporaryReferenceForIdentity:error:]", 86, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MIAppReferenceTracker addTemporaryReferenceForIdentity:error:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (BOOL)finalizeTemporaryReference:(id)reference error:(id *)error
{
  v6 = sub_100010734("[MIAppReferenceTracker finalizeTemporaryReference:error:]", 95, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MIAppReferenceTracker finalizeTemporaryReference:error:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (BOOL)revokeTemporaryReference:(id)reference error:(id *)error
{
  v6 = sub_100010734("[MIAppReferenceTracker revokeTemporaryReference:error:]", 104, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MIAppReferenceTracker revokeTemporaryReference:error:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (void)enumerateAppReferencesWithBlock:(id)block
{
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }
}

@end