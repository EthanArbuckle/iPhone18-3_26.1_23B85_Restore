@interface SDAirDropUserSafetyInterventionAlert
- (_TtC16DaemoniOSLibrary36SDAirDropUserSafetyInterventionAlert)init;
- (void)showInterventionWithIsSend:(BOOL)send completion:(id)completion;
@end

@implementation SDAirDropUserSafetyInterventionAlert

- (void)showInterventionWithIsSend:(BOOL)send completion:(id)completion
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = send;
  *(v14 + 40) = self;
  *(v14 + 48) = sub_1004B2790;
  *(v14 + 56) = v12;
  selfCopy = self;
  sub_1002B3098(0, 0, v10, &unk_100805FF8, v14);
}

- (_TtC16DaemoniOSLibrary36SDAirDropUserSafetyInterventionAlert)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDAirDropUserSafetyInterventionAlert *)&v3 init];
}

@end