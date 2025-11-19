@interface SponsorshipAdFetchActivity
+ (APClientInfo)defaultClientInfo;
+ (APXPCConnection)xpcConnection;
+ (BOOL)saveWithItems:(id)a3 fetchedUsingContext:(id)a4 error:(id *)a5;
+ (NSArray)defaultRequestTypes;
+ (NSString)appleNewsBundleIdentifier;
+ (void)isFetchFeatureFlagEnabledWithCompletionHandler:(id)a3;
- (_TtC16promotedcontentd26SponsorshipAdFetchActivity)init;
@end

@implementation SponsorshipAdFetchActivity

+ (NSString)appleNewsBundleIdentifier
{
  v2 = sub_100398F28();

  return v2;
}

+ (NSArray)defaultRequestTypes
{
  if (qword_1004D3F08 != -1)
  {
    swift_once();
  }

  v2.super.isa = sub_100399178().super.isa;

  return v2.super.isa;
}

+ (APXPCConnection)xpcConnection
{
  v2 = objc_allocWithZone(NSXPCConnection);
  v3 = sub_100398F28();
  v4 = [v2 initWithMachServiceName:v3 options:4096];

  v5 = [objc_allocWithZone(APXPCConnection) initWithConnection:v4];

  return v5;
}

+ (APClientInfo)defaultClientInfo
{
  v2 = sub_1001FB2B4();

  return v2;
}

+ (void)isFetchFeatureFlagEnabledWithCompletionHandler:(id)a3
{
  v5 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_100399268();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1003C9C80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1003C9C90;
  v12[5] = v11;
  sub_1001FAFC8(0, 0, v7, &unk_1003C9CA0, v12);
}

+ (BOOL)saveWithItems:(id)a3 fetchedUsingContext:(id)a4 error:(id *)a5
{
  sub_100004218(0, &qword_1004D4828);
  v6 = sub_100399198();
  v7 = a4;
  sub_1001FBAD4(v6, v7);

  return 1;
}

- (_TtC16promotedcontentd26SponsorshipAdFetchActivity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SponsorshipAdFetchActivity();
  return [(SponsorshipAdFetchActivity *)&v3 init];
}

@end