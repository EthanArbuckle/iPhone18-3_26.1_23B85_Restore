@interface MISDBManager
- (BOOL)authorizeEntryWithProfileUUID:(id)d cdHash:(id)hash gracePeriod:(int)period currentMonotonicTime:(int64_t)time currentResetCount:(int64_t)count error:(id *)error;
- (BOOL)banCDHash:(id)hash error:(id *)error;
- (BOOL)banProfileUUID:(id)d error:(id *)error;
- (BOOL)createOnlineAuthEntry:(id)entry error:(id *)error;
- (BOOL)createTrustedTeamIDEntryWithProfileUUID:(id)d signature:(id)signature error:(id *)error;
- (BOOL)createTrustedTeamIDEntryWithTeamID:(id)d signature:(id)signature error:(id *)error;
- (BOOL)deleteOnlineAuthEntryWithCdHash:(id)hash error:(id *)error;
- (BOOL)deleteOnlineAuthEntryWithProfileUUID:(id)d cdHash:(id)hash error:(id *)error;
- (BOOL)deleteTrustedWithProfileUUID:(id)d error:(id *)error;
- (BOOL)deleteTrustedWithTeamID:(id)d error:(id *)error;
- (BOOL)migrate;
- (BOOL)recordIndeterminateEntryWithProfileUUID:(id)d cdHash:(id)hash onConflictDoNothing:(BOOL)nothing error:(id *)error;
- (BOOL)rejectEntryWithProfileUUID:(id)d cdHash:(id)hash isRejectedByWholeProfile:(BOOL)profile error:(id *)error;
- (BOOL)removeProfileWithUuid:(id)uuid error:(id *)error;
- (BOOL)setGracePeriodWithProfileUUID:(id)d gracePeriod:(int)period error:(id *)error;
- (BOOL)setupSchema;
- (id)allCMSBlobs;
- (id)allProfiles;
- (id)findProfilesMatchingEntitlements:(id)entitlements withCertificate:(id)certificate;
- (id)findProfilesMatchingPredicates:(id)predicates withCertificate:(id)certificate;
- (id)findProfilesWithCertificate:(id)certificate;
- (id)getOnlineAuthEntriesNoThrow;
- (id)getOnlineAuthEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash;
- (id)getTeamIDForProfileUUID:(id)d error:(id *)error;
- (int)insertProfile:(void *)profile;
- (int64_t)countCDHashesRejectedByProfileNoThrowWithProfileUUID:(id)d;
- (void)deleteOnlineAuthEntryNoThrowWithCdHash:(id)hash;
- (void)deleteOnlineAuthEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash;
- (void)recordIndeterminateEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash onConflictDoNothing:(BOOL)nothing;
@end

@implementation MISDBManager

- (id)allProfiles
{
  [NSMutableArray arrayWithCapacity:20];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000701C;
  v3 = v5[3] = &unk_100028C70;
  v6 = v3;
  [(SQLDB *)self executeQuery:@"SELECT uuid withBind:team_id withResults:name, expires, is_for_all_devices, is_apple_internal, is_local, is_beta FROM profiles", 0, v5];

  return v3;
}

- (BOOL)setupSchema
{
  v3 = [[MISProfileModel alloc] initWithDB:self];
  Profiles = self->Profiles;
  self->Profiles = v3;

  v5 = [[MISEntitlementsModel alloc] initWithDB:self];
  Entitlements = self->Entitlements;
  self->Entitlements = v5;

  v9.receiver = self;
  v9.super_class = MISDBManager;
  setupSchema = [(SQLDB *)&v9 setupSchema];
  if (setupSchema)
  {
    LOBYTE(setupSchema) = [(MISDBManager *)self migrate];
  }

  return setupSchema;
}

- (BOOL)migrate
{
  if ([(SQLDB *)self checkpoint])
  {
    v6 = sub_1000027A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001831C(v6);
    }

    abort();
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_100004A3C;
  v8[4] = sub_100004A4C;
  v9 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004A54;
  v7[3] = &unk_100028D10;
  v7[4] = self;
  v7[5] = v8;
  v7[6] = &v10;
  v3 = [(SQLDB *)self transaction:v7 immediate:1];
  *(v11 + 6) = v3;
  v4 = v3 == 0;
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (int)insertProfile:(void *)profile
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006D5C;
  v5[3] = &unk_100028D38;
  v5[5] = &v6;
  v5[6] = profile;
  v5[4] = self;
  [(SQLDB *)self transaction:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)allCMSBlobs
{
  [NSMutableArray arrayWithCapacity:20];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006F04;
  v3 = v10[3] = &unk_100028C70;
  v11 = v3;
  [(SQLDB *)self executeQuery:@"SELECT cms_blob FROM profiles WHERE is_der = 0" withBind:0 withResults:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006F90;
  v8[3] = &unk_100028C70;
  v4 = v3;
  v9 = v4;
  [(SQLDB *)self executeQuery:@"SELECT cms_blob as blob FROM xml_profiles_cache" withBind:0 withResults:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

- (id)findProfilesMatchingEntitlements:(id)entitlements withCertificate:(id)certificate
{
  certificateCopy = certificate;
  entitlementsCopy = entitlements;
  v8 = [NSMutableArray arrayWithCapacity:10];
  entitlements = [(MISDBManager *)self Entitlements];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000719C;
  v13[3] = &unk_100028D60;
  v14 = v8;
  v10 = v8;
  [entitlements emitEntitlementPredicates:entitlementsCopy predicateHandler:v13];

  v11 = [(MISDBManager *)self findProfilesMatchingPredicates:v10 withCertificate:certificateCopy];

  return v11;
}

- (id)findProfilesMatchingPredicates:(id)predicates withCertificate:(id)certificate
{
  predicatesCopy = predicates;
  certificateCopy = certificate;
  v8 = [NSMutableArray arrayWithCapacity:2];
  if (certificateCopy)
  {
    v9 = @"SELECT uuid FROM certificate_provisioning_cache JOIN certificates ON certificates.pk = leaf_pk WHERE certificates.leaf = @cert";
  }

  else
  {
    v9 = @"SELECT uuid FROM profiles";
  }

  [NSMutableString stringWithCapacity:1024];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000073A8;
  v24 = v23[3] = &unk_100028D88;
  v10 = v24;
  [predicatesCopy enumerateObjectsUsingBlock:v23];
  v11 = [NSString stringWithFormat:@"WITH predicates(idx, predicate) AS (VALUES %@), filteredProfileUUIDs(uuid) AS (%@) SELECT * FROM (SELECT profiles.uuid, profiles.team_id, profiles.name, profiles.expires, profiles.is_for_all_devices, profiles.is_apple_internal, profiles.is_local, profiles.is_beta, profiles.is_der, COUNT(DISTINCT predicates.idx) as matchCount FROM filteredProfileUUIDs JOIN profiles ON profiles.uuid = filteredProfileUUIDs.uuid JOIN entitlements_provisioning_cache ON entitlements_provisioning_cache.uuid = filteredProfileUUIDs.uuid CROSS JOIN predicates WHERE profiles.is_apple_internal OR ((entitlements_provisioning_cache.wildcard = 0 AND entitlements_provisioning_cache.predicate = predicates.predicate) OR (entitlements_provisioning_cache.wildcard = 1 AND glob(entitlements_provisioning_cache.predicate, predicates.predicate))) GROUP BY profiles.uuid, profiles.is_apple_internal) AS aggregated WHERE aggregated.matchCount = @totalPredicates OR aggregated.is_apple_internal ORDER BY  aggregated.is_der DESC, aggregated.is_local ASC, aggregated.is_for_all_devices ASC", v10, v9];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100007400;
  v20[3] = &unk_100028C98;
  v21 = certificateCopy;
  v22 = predicatesCopy;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007584;
  v18[3] = &unk_100028C70;
  v12 = v8;
  v19 = v12;
  v13 = predicatesCopy;
  v14 = certificateCopy;
  [(SQLDB *)self executeQuery:v11 withBind:v20 withResults:v18];

  v15 = v19;
  v16 = v12;

  return v12;
}

- (id)findProfilesWithCertificate:(id)certificate
{
  certificateCopy = certificate;
  v5 = [NSMutableArray arrayWithCapacity:2];
  v6 = @"SELECT uuid FROM certificate_provisioning_cache JOIN certificates ON certificates.pk = leaf_pk WHERE certificates.leaf = @cert";
  if (!certificateCopy)
  {
    v6 = @"SELECT uuid FROM profiles";
  }

  v7 = [NSString stringWithFormat:@"WITH filteredProfileUUIDs(uuid) AS (%@) SELECT profiles.uuid, profiles.team_id, profiles.name, profiles.expires, profiles.is_for_all_devices, profiles.is_apple_internal, profiles.is_local, profiles.is_beta, profiles.is_der FROM filteredProfileUUIDs JOIN profiles ON profiles.uuid = filteredProfileUUIDs.uuid ORDER BY  profiles.is_der DESC, profiles.is_local ASC, profiles.is_for_all_devices ASC", v6];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007744;
  v15[3] = &unk_100028C48;
  v16 = certificateCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000077CC;
  v13[3] = &unk_100028C70;
  v8 = v5;
  v14 = v8;
  v9 = certificateCopy;
  [(SQLDB *)self executeQuery:v7 withBind:v15 withResults:v13];

  v10 = v14;
  v11 = v8;

  return v8;
}

- (BOOL)createTrustedTeamIDEntryWithTeamID:(id)d signature:(id)signature error:(id *)error
{
  signatureCopy = signature;
  if (signature)
  {
    dCopy = d;
    selfCopy = self;
    v10 = signatureCopy;
    signatureCopy = sub_10001A648();
    v12 = v11;

    v13.super.isa = sub_10001A638().super.isa;
  }

  else
  {
    dCopy2 = d;
    selfCopy2 = self;
    v13.super.isa = 0;
    v12 = 0xF000000000000000;
  }

  v16 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:d signature:v13.super.isa];

  __chkstk_darwin();
  sub_100011190(sub_1000131F8);

  sub_1000115DC(signatureCopy, v12);
  return 1;
}

- (BOOL)createTrustedTeamIDEntryWithProfileUUID:(id)d signature:(id)signature error:(id *)error
{
  sub_10001A6F8();
  selfCopy = self;
  if (signature)
  {
    signatureCopy = signature;
    signature = sub_10001A648();
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  __chkstk_darwin();
  sub_100011190(sub_1000131E0);

  sub_1000115DC(signature, v10);

  return 1;
}

- (BOOL)deleteTrustedWithTeamID:(id)d error:(id *)error
{
  v5 = sub_10001A6F8();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  selfCopy = self;
  sub_100010E34(0xD00000000000002FLL, 0x80000001000216C0, sub_1000131DC, v8, 0, 0);

  return 1;
}

- (BOOL)deleteTrustedWithProfileUUID:(id)d error:(id *)error
{
  v5 = sub_10001A6F8();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  selfCopy = self;
  sub_100010E34(0xD000000000000090, 0x80000001000216F0, sub_1000131DC, v8, 0, 0);

  return 1;
}

- (BOOL)createOnlineAuthEntry:(id)entry error:(id *)error
{
  v6 = swift_allocObject();
  *(v6 + 16) = entry;
  entryCopy = entry;
  selfCopy = self;
  sub_100010E34(0xD00000000000019CLL, 0x8000000100021890, sub_100016634, v6, 0, 0);

  return 1;
}

- (BOOL)authorizeEntryWithProfileUUID:(id)d cdHash:(id)hash gracePeriod:(int)period currentMonotonicTime:(int64_t)time currentResetCount:(int64_t)count error:(id *)error
{
  v13 = sub_10001A6F8();
  v15 = v14;
  hashCopy = hash;
  selfCopy = self;
  v18 = sub_10001A648();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = time;
  *(v21 + 24) = count;
  *(v21 + 32) = v13;
  *(v21 + 40) = v15;
  *(v21 + 48) = v18;
  *(v21 + 56) = v20;
  *(v21 + 64) = period;
  sub_100010198(v18, v20);
  sub_100010E34(0xD000000000000198, 0x8000000100021A30, sub_1000165E8, v21, 0, 0);

  sub_100010300(v18, v20);
  return 1;
}

- (BOOL)recordIndeterminateEntryWithProfileUUID:(id)d cdHash:(id)hash onConflictDoNothing:(BOOL)nothing error:(id *)error
{
  v9 = sub_10001A6F8();
  v11 = v10;
  hashCopy = hash;
  selfCopy = self;
  v14 = sub_10001A648();
  v16 = v15;

  sub_100013740(v9, v11, v14, v16, nothing);
  sub_100010300(v14, v16);

  return 1;
}

- (void)recordIndeterminateEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash onConflictDoNothing:(BOOL)nothing
{
  nothingCopy = nothing;
  v8 = sub_10001A6F8();
  v10 = v9;
  hashCopy = hash;
  selfCopy = self;
  v13 = sub_10001A648();
  v15 = v14;

  sub_100013994(v8, v10, v13, v15, nothingCopy);
  sub_100010300(v13, v15);
}

- (BOOL)setGracePeriodWithProfileUUID:(id)d gracePeriod:(int)period error:(id *)error
{
  v7 = sub_10001A6F8();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v10 + 32) = period;
  selfCopy = self;
  sub_100010E34(0xD000000000000038, 0x8000000100021D70, sub_1000165E4, v10, 0, 0);

  return 1;
}

- (BOOL)rejectEntryWithProfileUUID:(id)d cdHash:(id)hash isRejectedByWholeProfile:(BOOL)profile error:(id *)error
{
  v9 = sub_10001A6F8();
  v11 = v10;
  hashCopy = hash;
  selfCopy = self;
  v14 = sub_10001A648();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v11;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
  *(v17 + 48) = profile;
  sub_100010198(v14, v16);
  sub_100010E34(0xD000000000000139, 0x8000000100021DB0, sub_1000165E0, v17, 0, 0);

  sub_100010300(v14, v16);
  return 1;
}

- (BOOL)banProfileUUID:(id)d error:(id *)error
{
  v5 = sub_10001A6F8();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  selfCopy = self;
  sub_100010E34(0xD00000000000004ALL, 0x8000000100021EF0, sub_1000131DC, v8, 0, 0);

  return 1;
}

- (BOOL)banCDHash:(id)hash error:(id *)error
{
  hashCopy = hash;
  selfCopy = self;
  v7 = sub_10001A648();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  sub_100010198(v7, v9);
  sub_100010E34(0xD000000000000047, 0x8000000100021F40, sub_1000165DC, v10, 0, 0);

  sub_100010300(v7, v9);
  return 1;
}

- (id)getOnlineAuthEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash
{
  v6 = sub_10001A6F8();
  v8 = v7;
  hashCopy = hash;
  selfCopy = self;
  v11 = sub_10001A648();
  v13 = v12;

  v14 = sub_1000147F0(v6, v8, v11, v13);
  sub_100010300(v11, v13);

  return v14;
}

- (id)getOnlineAuthEntriesNoThrow
{
  selfCopy = self;
  sub_100014E28();

  sub_1000163BC();
  v3.super.isa = sub_10001A788().super.isa;

  return v3.super.isa;
}

- (int64_t)countCDHashesRejectedByProfileNoThrowWithProfileUUID:(id)d
{
  v4 = sub_10001A6F8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_100015108(v4, v6);

  return v8;
}

- (BOOL)deleteOnlineAuthEntryWithProfileUUID:(id)d cdHash:(id)hash error:(id *)error
{
  v7 = sub_10001A6F8();
  v9 = v8;
  hashCopy = hash;
  selfCopy = self;
  v12 = sub_10001A648();
  v14 = v13;

  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = v9;
  v15[4] = v12;
  v15[5] = v14;
  sub_100010198(v12, v14);
  sub_100010E34(0xD000000000000037, 0x80000001000221A0, sub_1000165D4, v15, 0, 0);

  sub_100010300(v12, v14);
  return 1;
}

- (void)deleteOnlineAuthEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash
{
  v6 = sub_10001A6F8();
  v8 = v7;
  hashCopy = hash;
  selfCopy = self;
  v11 = sub_10001A648();
  v13 = v12;

  sub_100015560(v6, v8, v11, v13);
  sub_100010300(v11, v13);
}

- (BOOL)deleteOnlineAuthEntryWithCdHash:(id)hash error:(id *)error
{
  hashCopy = hash;
  selfCopy = self;
  v7 = sub_10001A648();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  sub_100010198(v7, v9);
  sub_100010E34(0xD000000000000029, 0x80000001000221E0, sub_1000165DC, v10, 0, 0);

  sub_100010300(v7, v9);
  return 1;
}

- (void)deleteOnlineAuthEntryNoThrowWithCdHash:(id)hash
{
  hashCopy = hash;
  selfCopy = self;
  v5 = sub_10001A648();
  v7 = v6;

  sub_100015A68(v5, v7);
  sub_100010300(v5, v7);
}

- (id)getTeamIDForProfileUUID:(id)d error:(id *)error
{
  v5 = sub_10001A6F8();
  v7 = v6;
  selfCopy = self;
  sub_1000174F0(v5, v7);

  v9 = sub_10001A6E8();

  return v9;
}

- (BOOL)removeProfileWithUuid:(id)uuid error:(id *)error
{
  sub_10001A6F8();
  selfCopy = self;
  sub_100011190(sub_100018060);

  return 1;
}

@end