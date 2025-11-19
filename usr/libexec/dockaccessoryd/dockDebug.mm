@interface dockDebug
- (void)migrateDataWithUpdate:(BOOL)a3 completion:(id)a4;
- (void)setDockAccessoryStateWithInfo:(id)a3 docked:(int64_t)a4 completion:(id)a5;
- (void)setTrackingButtonStateWithState:(int64_t)a3 completion:(id)a4;
- (void)triggerSystemEventWithInfo:(id)a3 event:(id)a4 completion:(id)a5;
@end

@implementation dockDebug

- (void)setDockAccessoryStateWithInfo:(id)a3 docked:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_1001DF9E0(a3, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)triggerSystemEventWithInfo:(id)a3 event:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1001E0674(a3, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)setTrackingButtonStateWithState:(int64_t)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v5 = TrackingButtonState.rawValue.getter();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 > 0xFF)
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_100189E44(v5);
  v4[2](v4, 1, 0);

  _Block_release(v4);
}

- (void)migrateDataWithUpdate:(BOOL)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = self;
  sub_1001E23C8(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end