@interface FindMyLocateWrapper
- (_TtC13findmydeviced19FindMyLocateWrapper)init;
- (void)processLocationCommandPayload:(NSData *)payload completionHandler:(id)handler;
- (void)processLocationPayload:(NSData *)payload completionHandler:(id)handler;
- (void)publishLocation:(SPSecureLocation *)location completionHandler:(id)handler;
@end

@implementation FindMyLocateWrapper

- (void)processLocationPayload:(NSData *)payload completionHandler:(id)handler
{
  v7 = (*(*(sub_1001F6D6C(&qword_100313A50, &qword_1002588F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = payload;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100258970;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100258978;
  v14[5] = v13;
  payloadCopy = payload;
  selfCopy = self;
  sub_1001F72B8(0, 0, v9, &unk_100258980, v14);
}

- (void)processLocationCommandPayload:(NSData *)payload completionHandler:(id)handler
{
  v7 = (*(*(sub_1001F6D6C(&qword_100313A50, &qword_1002588F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = payload;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100258950;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100258958;
  v14[5] = v13;
  payloadCopy = payload;
  selfCopy = self;
  sub_1001F72B8(0, 0, v9, &unk_100258960, v14);
}

- (void)publishLocation:(SPSecureLocation *)location completionHandler:(id)handler
{
  v7 = (*(*(sub_1001F6D6C(&qword_100313A50, &qword_1002588F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = location;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100258908;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100258918;
  v14[5] = v13;
  locationCopy = location;
  selfCopy = self;
  sub_1001F72B8(0, 0, v9, &unk_100258928, v14);
}

- (_TtC13findmydeviced19FindMyLocateWrapper)init
{
  v3 = type metadata accessor for ClientOrigin();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13findmydeviced19FindMyLocateWrapper_session;
  type metadata accessor for Session();
  (*(v4 + 104))(v7, enum case for ClientOrigin.other(_:), v3);
  v9 = static Session.sharedSession(origin:)();
  (*(v4 + 8))(v7, v3);
  *(&self->super.isa + v8) = v9;
  Wrapper = type metadata accessor for FindMyLocateWrapper();
  v12.receiver = self;
  v12.super_class = Wrapper;
  return [(FindMyLocateWrapper *)&v12 init];
}

@end