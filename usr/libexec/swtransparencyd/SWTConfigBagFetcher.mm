@interface SWTConfigBagFetcher
- (void)fetchConfigBag:(NSURLRequest *)a3 completionHandler:(id)a4;
- (void)triggerConfigBagFetch:(double)a3;
@end

@implementation SWTConfigBagFetcher

- (void)fetchConfigBag:(NSURLRequest *)a3 completionHandler:(id)a4
{
  v7 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100104230;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100104240;
  v15[5] = v14;
  v16 = a3;

  sub_100039048(0, 0, v10, &unk_100104250, v15);
}

- (void)triggerConfigBagFetch:(double)a3
{

  sub_1000388BC(a3);
}

@end