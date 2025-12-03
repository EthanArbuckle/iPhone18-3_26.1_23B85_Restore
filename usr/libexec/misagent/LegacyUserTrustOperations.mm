@interface LegacyUserTrustOperations
- (_TtC8misagent25LegacyUserTrustOperations)init;
- (id)getAuxiliarySignatureWithTeamId:(id)id;
- (id)getUserTrustedUUIDsAndReturnError:(id *)error;
@end

@implementation LegacyUserTrustOperations

- (id)getAuxiliarySignatureWithTeamId:(id)id
{
  v4 = sub_10001A6F8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_100011B00(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    isa = sub_10001A638().super.isa;
    sub_1000115DC(v8, v10);
    v11 = isa;
  }

  return v11;
}

- (id)getUserTrustedUUIDsAndReturnError:(id *)error
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8misagent25LegacyUserTrustOperations_utdb);
  selfCopy = self;
  sub_1000171E0();

  v5.super.isa = sub_10001A788().super.isa;

  return v5.super.isa;
}

- (_TtC8misagent25LegacyUserTrustOperations)init
{
  v3 = OBJC_IVAR____TtC8misagent25LegacyUserTrustOperations_utdb;
  type metadata accessor for LegacyUserTrustDB();
  sub_10001688C(1);
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for LegacyUserTrustOperations();
  return [(LegacyUserTrustOperations *)&v6 init];
}

@end