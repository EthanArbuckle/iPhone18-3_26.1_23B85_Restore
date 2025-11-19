@interface MISDBManager
- (BOOL)authorizeEntryWithProfileUUID:(id)a3 cdHash:(id)a4 gracePeriod:(int)a5 currentMonotonicTime:(int64_t)a6 currentResetCount:(int64_t)a7 error:(id *)a8;
- (BOOL)banCDHash:(id)a3 error:(id *)a4;
- (BOOL)banProfileUUID:(id)a3 error:(id *)a4;
- (BOOL)createOnlineAuthEntry:(id)a3 error:(id *)a4;
- (BOOL)deleteOnlineAuthEntryWithCdHash:(id)a3 error:(id *)a4;
- (BOOL)deleteOnlineAuthEntryWithProfileUUID:(id)a3 cdHash:(id)a4 error:(id *)a5;
- (BOOL)migrate;
- (BOOL)recordIndeterminateEntryWithProfileUUID:(id)a3 cdHash:(id)a4 onConflictDoNothing:(BOOL)a5 error:(id *)a6;
- (BOOL)rejectEntryWithProfileUUID:(id)a3 cdHash:(id)a4 isRejectedByWholeProfile:(BOOL)a5 error:(id *)a6;
- (BOOL)setGracePeriodWithProfileUUID:(id)a3 gracePeriod:(int)a4 error:(id *)a5;
- (BOOL)setupSchema;
- (id)allCMSBlobs;
- (id)allProfiles;
- (id)findProfilesMatchingEntitlements:(id)a3 withCertificate:(id)a4;
- (id)findProfilesMatchingPredicates:(id)a3 withCertificate:(id)a4;
- (id)findProfilesWithCertificate:(id)a3;
- (id)getOnlineAuthEntriesNoThrow;
- (id)getOnlineAuthEntryNoThrowWithProfileUUID:(id)a3 cdHash:(id)a4;
- (int)insertProfile:(void *)a3;
- (int64_t)countCDHashesRejectedByProfileNoThrowWithProfileUUID:(id)a3;
- (void)deleteOnlineAuthEntryNoThrowWithCdHash:(id)a3;
- (void)deleteOnlineAuthEntryNoThrowWithProfileUUID:(id)a3 cdHash:(id)a4;
- (void)recordIndeterminateEntryNoThrowWithProfileUUID:(id)a3 cdHash:(id)a4 onConflictDoNothing:(BOOL)a5;
@end

@implementation MISDBManager

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
  v7 = [(SQLDB *)&v9 setupSchema];
  if (v7)
  {
    LOBYTE(v7) = [(MISDBManager *)self migrate];
  }

  return v7;
}

- (BOOL)migrate
{
  if ([(SQLDB *)self checkpoint])
  {
    v6 = sub_100006750();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004109C(v6);
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
  v8[3] = sub_10000A7B8;
  v8[4] = sub_10000A7C8;
  v9 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A7D0;
  v7[3] = &unk_10005DE20;
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

- (int)insertProfile:(void *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000CAD8;
  v5[3] = &unk_10005DE48;
  v5[5] = &v6;
  v5[6] = a3;
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
  v10[2] = sub_10000CC80;
  v3 = v10[3] = &unk_10005DDA8;
  v11 = v3;
  [(SQLDB *)self executeQuery:@"SELECT cms_blob FROM profiles WHERE is_der = 0" withBind:0 withResults:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000CD0C;
  v8[3] = &unk_10005DDA8;
  v4 = v3;
  v9 = v4;
  [(SQLDB *)self executeQuery:@"SELECT cms_blob as blob FROM xml_profiles_cache" withBind:0 withResults:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

- (id)allProfiles
{
  [NSMutableArray arrayWithCapacity:20];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000CE58;
  v3 = v5[3] = &unk_10005DDA8;
  v6 = v3;
  [(SQLDB *)self executeQuery:@"SELECT uuid withBind:team_id withResults:name, expires, is_for_all_devices, is_apple_internal, is_local, is_beta FROM profiles", 0, v5];

  return v3;
}

- (id)findProfilesMatchingEntitlements:(id)a3 withCertificate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSMutableArray arrayWithCapacity:10];
  v9 = [(MISDBManager *)self Entitlements];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000CFD8;
  v13[3] = &unk_10005DE70;
  v14 = v8;
  v10 = v8;
  [v9 emitEntitlementPredicates:v7 predicateHandler:v13];

  v11 = [(MISDBManager *)self findProfilesMatchingPredicates:v10 withCertificate:v6];

  return v11;
}

- (id)findProfilesMatchingPredicates:(id)a3 withCertificate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSMutableArray arrayWithCapacity:2];
  if (v7)
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
  v23[2] = sub_10000D1E4;
  v24 = v23[3] = &unk_10005DE98;
  v10 = v24;
  [v6 enumerateObjectsUsingBlock:v23];
  v11 = [NSString stringWithFormat:@"WITH predicates(idx, predicate) AS (VALUES %@), filteredProfileUUIDs(uuid) AS (%@) SELECT * FROM (SELECT profiles.uuid, profiles.team_id, profiles.name, profiles.expires, profiles.is_for_all_devices, profiles.is_apple_internal, profiles.is_local, profiles.is_beta, profiles.is_der, COUNT(DISTINCT predicates.idx) as matchCount FROM filteredProfileUUIDs JOIN profiles ON profiles.uuid = filteredProfileUUIDs.uuid JOIN entitlements_provisioning_cache ON entitlements_provisioning_cache.uuid = filteredProfileUUIDs.uuid CROSS JOIN predicates WHERE profiles.is_apple_internal OR ((entitlements_provisioning_cache.wildcard = 0 AND entitlements_provisioning_cache.predicate = predicates.predicate) OR (entitlements_provisioning_cache.wildcard = 1 AND glob(entitlements_provisioning_cache.predicate, predicates.predicate))) GROUP BY profiles.uuid, profiles.is_apple_internal) AS aggregated WHERE aggregated.matchCount = @totalPredicates OR aggregated.is_apple_internal ORDER BY  aggregated.is_der DESC, aggregated.is_local ASC, aggregated.is_for_all_devices ASC", v10, v9];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000D23C;
  v20[3] = &unk_10005D8D0;
  v21 = v7;
  v22 = v6;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D3C0;
  v18[3] = &unk_10005DDA8;
  v12 = v8;
  v19 = v12;
  v13 = v6;
  v14 = v7;
  [(SQLDB *)self executeQuery:v11 withBind:v20 withResults:v18];

  v15 = v19;
  v16 = v12;

  return v12;
}

- (id)findProfilesWithCertificate:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray arrayWithCapacity:2];
  v6 = @"SELECT uuid FROM certificate_provisioning_cache JOIN certificates ON certificates.pk = leaf_pk WHERE certificates.leaf = @cert";
  if (!v4)
  {
    v6 = @"SELECT uuid FROM profiles";
  }

  v7 = [NSString stringWithFormat:@"WITH filteredProfileUUIDs(uuid) AS (%@) SELECT profiles.uuid, profiles.team_id, profiles.name, profiles.expires, profiles.is_for_all_devices, profiles.is_apple_internal, profiles.is_local, profiles.is_beta, profiles.is_der FROM filteredProfileUUIDs JOIN profiles ON profiles.uuid = filteredProfileUUIDs.uuid ORDER BY  profiles.is_der DESC, profiles.is_local ASC, profiles.is_for_all_devices ASC", v6];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D580;
  v15[3] = &unk_10005D880;
  v16 = v4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D608;
  v13[3] = &unk_10005DDA8;
  v8 = v5;
  v14 = v8;
  v9 = v4;
  [(SQLDB *)self executeQuery:v7 withBind:v15 withResults:v13];

  v10 = v14;
  v11 = v8;

  return v8;
}

- (BOOL)createOnlineAuthEntry:(id)a3 error:(id *)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = a3;
  v8 = self;
  sub_100012AE8(0xD00000000000019CLL, 0x800000010004BBB0, sub_100027658, v6, 0, 0);

  return 1;
}

- (BOOL)authorizeEntryWithProfileUUID:(id)a3 cdHash:(id)a4 gracePeriod:(int)a5 currentMonotonicTime:(int64_t)a6 currentResetCount:(int64_t)a7 error:(id *)a8
{
  v13 = sub_100043314();
  v15 = v14;
  v16 = a4;
  v17 = self;
  v18 = sub_1000430B4();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  *(v21 + 24) = a7;
  *(v21 + 32) = v13;
  *(v21 + 40) = v15;
  *(v21 + 48) = v18;
  *(v21 + 56) = v20;
  *(v21 + 64) = a5;
  sub_100013104(v18, v20);
  sub_100012AE8(0xD000000000000198, 0x800000010004BD50, sub_10002760C, v21, 0, 0);

  sub_10001316C(v18, v20);
  return 1;
}

- (BOOL)recordIndeterminateEntryWithProfileUUID:(id)a3 cdHash:(id)a4 onConflictDoNothing:(BOOL)a5 error:(id *)a6
{
  v9 = sub_100043314();
  v11 = v10;
  v12 = a4;
  v13 = self;
  v14 = sub_1000430B4();
  v16 = v15;

  sub_100024614(v9, v11, v14, v16, a5);
  sub_10001316C(v14, v16);

  return 1;
}

- (void)recordIndeterminateEntryNoThrowWithProfileUUID:(id)a3 cdHash:(id)a4 onConflictDoNothing:(BOOL)a5
{
  v5 = a5;
  v8 = sub_100043314();
  v10 = v9;
  v11 = a4;
  v12 = self;
  v13 = sub_1000430B4();
  v15 = v14;

  sub_100024868(v8, v10, v13, v15, v5);
  sub_10001316C(v13, v15);
}

- (BOOL)setGracePeriodWithProfileUUID:(id)a3 gracePeriod:(int)a4 error:(id *)a5
{
  v7 = sub_100043314();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v10 + 32) = a4;
  v11 = self;
  sub_100012AE8(0xD000000000000038, 0x800000010004C090, sub_100027608, v10, 0, 0);

  return 1;
}

- (BOOL)rejectEntryWithProfileUUID:(id)a3 cdHash:(id)a4 isRejectedByWholeProfile:(BOOL)a5 error:(id *)a6
{
  v9 = sub_100043314();
  v11 = v10;
  v12 = a4;
  v13 = self;
  v14 = sub_1000430B4();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v11;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
  *(v17 + 48) = a5;
  sub_100013104(v14, v16);
  sub_100012AE8(0xD000000000000139, 0x800000010004C0D0, sub_100027604, v17, 0, 0);

  sub_10001316C(v14, v16);
  return 1;
}

- (BOOL)banProfileUUID:(id)a3 error:(id *)a4
{
  v5 = sub_100043314();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = self;
  sub_100012AE8(0xD00000000000004ALL, 0x800000010004C210, sub_1000275F8, v8, 0, 0);

  return 1;
}

- (BOOL)banCDHash:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1000430B4();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  sub_100013104(v7, v9);
  sub_100012AE8(0xD000000000000047, 0x800000010004C260, sub_100027600, v10, 0, 0);

  sub_10001316C(v7, v9);
  return 1;
}

- (id)getOnlineAuthEntryNoThrowWithProfileUUID:(id)a3 cdHash:(id)a4
{
  v6 = sub_100043314();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11 = sub_1000430B4();
  v13 = v12;

  v14 = sub_1000256C4(v6, v8, v11, v13);
  sub_10001316C(v11, v13);

  return v14;
}

- (id)getOnlineAuthEntriesNoThrow
{
  v2 = self;
  sub_100025CFC();

  sub_1000272E8();
  v3.super.isa = sub_1000433F4().super.isa;

  return v3.super.isa;
}

- (int64_t)countCDHashesRejectedByProfileNoThrowWithProfileUUID:(id)a3
{
  v4 = sub_100043314();
  v6 = v5;
  v7 = self;
  v8 = sub_100025FDC(v4, v6);

  return v8;
}

- (BOOL)deleteOnlineAuthEntryWithProfileUUID:(id)a3 cdHash:(id)a4 error:(id *)a5
{
  v7 = sub_100043314();
  v9 = v8;
  v10 = a4;
  v11 = self;
  v12 = sub_1000430B4();
  v14 = v13;

  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = v9;
  v15[4] = v12;
  v15[5] = v14;
  sub_100013104(v12, v14);
  sub_100012AE8(0xD000000000000037, 0x800000010004C4C0, sub_1000275F4, v15, 0, 0);

  sub_10001316C(v12, v14);
  return 1;
}

- (void)deleteOnlineAuthEntryNoThrowWithProfileUUID:(id)a3 cdHash:(id)a4
{
  v6 = sub_100043314();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11 = sub_1000430B4();
  v13 = v12;

  sub_100026434(v6, v8, v11, v13);
  sub_10001316C(v11, v13);
}

- (BOOL)deleteOnlineAuthEntryWithCdHash:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1000430B4();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  sub_100013104(v7, v9);
  sub_100012AE8(0xD000000000000029, 0x800000010004C500, sub_100027600, v10, 0, 0);

  sub_10001316C(v7, v9);
  return 1;
}

- (void)deleteOnlineAuthEntryNoThrowWithCdHash:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_1000430B4();
  v7 = v6;

  sub_10002693C(v5, v7);
  sub_10001316C(v5, v7);
}

@end