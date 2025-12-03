@interface SDAirDropNearFieldService
- (_TtC16DaemoniOSLibrary25SDAirDropNearFieldService)init;
- (void)didDetectDeviceNearbyForNearFieldController:(id)controller;
- (void)nearFieldController:(id)controller didBeginTransaction:(id)transaction;
- (void)nearFieldController:(id)controller didDetectDeviceNearbyWithInitiatorRole:(BOOL)role;
- (void)nearFieldController:(id)controller didInterruptTransaction:(id)transaction error:(id)error;
- (void)nearFieldController:(id)controller didInvalidateWithError:(id)error;
- (void)nearFieldController:(id)controller transaction:(id)transaction didReceiveTapEvent:(id)event;
@end

@implementation SDAirDropNearFieldService

- (_TtC16DaemoniOSLibrary25SDAirDropNearFieldService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)nearFieldController:(id)controller didInvalidateWithError:(id)error
{
  ObjectType = swift_getObjectType();
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = qword_1009735E0;
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  v17 = errorCopy;
  v18 = controllerCopy;
  v19 = selfCopy;
  if (v13 != -1)
  {
    swift_once();
  }

  v20 = static AirDropActor.shared;
  v21 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = v17;
  v22[5] = v18;
  v22[6] = v19;
  v22[7] = ObjectType;

  sub_1002B3098(0, 0, v11, &unk_1007F9690, v22);
}

- (void)didDetectDeviceNearbyForNearFieldController:(id)controller
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = qword_1009735E0;
  selfCopy = self;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v12 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = selfCopy;

  sub_1002B3098(0, 0, v7, &unk_1007F9680, v13);
}

- (void)nearFieldController:(id)controller didDetectDeviceNearbyWithInitiatorRole:(BOOL)role
{
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = qword_1009735E0;
  selfCopy = self;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v14 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v15 + 32) = role;
  *(v15 + 40) = selfCopy;

  sub_1002B3098(0, 0, v9, &unk_1007F9678, v15);
}

- (void)nearFieldController:(id)controller didBeginTransaction:(id)transaction
{
  swift_getObjectType();
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002D8418(transaction, selfCopy);

  swift_unknownObjectRelease();
}

- (void)nearFieldController:(id)controller transaction:(id)transaction didReceiveTapEvent:(id)event
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = qword_1009735E0;
  swift_unknownObjectRetain_n();
  eventCopy = event;
  selfCopy = self;
  v16 = eventCopy;
  v17 = selfCopy;
  if (v13 != -1)
  {
    swift_once();
  }

  v18 = static AirDropActor.shared;
  v19 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = transaction;
  v20[5] = v16;
  v20[6] = v17;

  sub_1002B3098(0, 0, v11, &unk_1007F9668, v20);

  swift_unknownObjectRelease();
}

- (void)nearFieldController:(id)controller didInterruptTransaction:(id)transaction error:(id)error
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = qword_1009735E0;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v15 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = transaction;
  v16[5] = selfCopy;

  sub_1002B3098(0, 0, v10, &unk_1007F9658, v16);

  swift_unknownObjectRelease();
}

@end