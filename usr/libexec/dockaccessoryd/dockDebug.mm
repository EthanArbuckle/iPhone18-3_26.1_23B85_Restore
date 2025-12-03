@interface dockDebug
- (void)migrateDataWithUpdate:(BOOL)update completion:(id)completion;
- (void)setDockAccessoryStateWithInfo:(id)info docked:(int64_t)docked completion:(id)completion;
- (void)setTrackingButtonStateWithState:(int64_t)state completion:(id)completion;
- (void)triggerSystemEventWithInfo:(id)info event:(id)event completion:(id)completion;
@end

@implementation dockDebug

- (void)setDockAccessoryStateWithInfo:(id)info docked:(int64_t)docked completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  infoCopy = info;
  selfCopy = self;
  sub_1001DF9E0(info, docked, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)triggerSystemEventWithInfo:(id)info event:(id)event completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  infoCopy = info;
  eventCopy = event;
  selfCopy = self;
  sub_1001E0674(info, eventCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)setTrackingButtonStateWithState:(int64_t)state completion:(id)completion
{
  v4 = _Block_copy(completion);
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

- (void)migrateDataWithUpdate:(BOOL)update completion:(id)completion
{
  v5 = _Block_copy(completion);
  _Block_copy(v5);
  selfCopy = self;
  sub_1001E23C8(selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end