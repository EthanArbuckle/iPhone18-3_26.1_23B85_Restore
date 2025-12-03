@interface SWTConfigBagFetcher
- (void)fetchConfigBag:(NSURLRequest *)bag completionHandler:(id)handler;
- (void)triggerConfigBagFetch:(double)fetch;
@end

@implementation SWTConfigBagFetcher

- (void)fetchConfigBag:(NSURLRequest *)bag completionHandler:(id)handler
{
  v7 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = bag;
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
  bagCopy = bag;

  sub_100039048(0, 0, v10, &unk_100104250, v15);
}

- (void)triggerConfigBagFetch:(double)fetch
{

  sub_1000388BC(fetch);
}

@end