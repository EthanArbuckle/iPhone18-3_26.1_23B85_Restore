@interface ATPersonalizationServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)currentLocationWithEffectiveBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)freeNowWithExcludeAllDayEvents:(BOOL)events completionHandler:(id)handler;
- (void)topPlayedMediaWithK:(int64_t)k start:(int64_t)start end:(int64_t)end mediaType:(NSString *)type completionHandler:(id)handler;
@end

@implementation ATPersonalizationServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100004D34(connectionCopy);

  return v9 & 1;
}

- (void)freeNowWithExcludeAllDayEvents:(BOOL)events completionHandler:(id)handler
{
  v7 = (*(*(sub_100002034(&unk_100010CB0, &qword_100006B78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = events;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006C00;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100006C08;
  v14[5] = v13;
  selfCopy = self;
  sub_100004608(0, 0, v9, &unk_100006C10, v14);
}

- (void)topPlayedMediaWithK:(int64_t)k start:(int64_t)start end:(int64_t)end mediaType:(NSString *)type completionHandler:(id)handler
{
  v13 = (*(*(sub_100002034(&unk_100010CB0, &qword_100006B78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v23 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = k;
  v17[3] = start;
  v17[4] = end;
  v17[5] = type;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100006BD8;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_100006BE0;
  v20[5] = v19;
  typeCopy = type;
  selfCopy = self;
  sub_100004608(0, 0, v15, &unk_100006BE8, v20);
}

- (void)currentLocationWithEffectiveBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = (*(*(sub_100002034(&unk_100010CB0, &qword_100006B78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006B88;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100006B98;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100004608(0, 0, v9, &unk_100006BA8, v14);
}

@end