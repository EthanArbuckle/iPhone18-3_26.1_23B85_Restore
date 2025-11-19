@interface ATPersonalizationServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)currentLocationWithEffectiveBundleIdentifier:(NSString *)a3 completionHandler:(id)a4;
- (void)freeNowWithExcludeAllDayEvents:(BOOL)a3 completionHandler:(id)a4;
- (void)topPlayedMediaWithK:(int64_t)a3 start:(int64_t)a4 end:(int64_t)a5 mediaType:(NSString *)a6 completionHandler:(id)a7;
@end

@implementation ATPersonalizationServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100004D34(v7);

  return v9 & 1;
}

- (void)freeNowWithExcludeAllDayEvents:(BOOL)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_100002034(&unk_100010CB0, &qword_100006B78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
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
  v15 = self;
  sub_100004608(0, 0, v9, &unk_100006C10, v14);
}

- (void)topPlayedMediaWithK:(int64_t)a3 start:(int64_t)a4 end:(int64_t)a5 mediaType:(NSString *)a6 completionHandler:(id)a7
{
  v13 = (*(*(sub_100002034(&unk_100010CB0, &qword_100006B78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v23 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
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
  v21 = a6;
  v22 = self;
  sub_100004608(0, 0, v15, &unk_100006BE8, v20);
}

- (void)currentLocationWithEffectiveBundleIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_100002034(&unk_100010CB0, &qword_100006B78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_100004608(0, 0, v9, &unk_100006BA8, v14);
}

@end