@interface RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders
- (_TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders)init;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders

- (_TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  if (qword_1009362A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Date();
  v9 = sub_100006654(v8, qword_1009492F8);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, v9, v8);
  (*(v10 + 56))(v7, 0, 1, v8);
  v11 = objc_allocWithZone(ObjectType);
  *&v11[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_maxReminderCountToMigrate] = 100;
  sub_10012F78C(v7, &v11[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_lastModifiedAfterDate]);
  v16.receiver = v11;
  v16.super_class = ObjectType;
  v12 = [(RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders *)&v16 init];
  sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
  swift_getObjectType();
  v13 = *((swift_isaMask & self->super.isa) + 0x30);
  v14 = *((swift_isaMask & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v12;
}

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  selfCopy = self;
  RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders.migrateStoreIfNeeded(_:metadata:)(neededCopy, metadataCopy);
}

@end