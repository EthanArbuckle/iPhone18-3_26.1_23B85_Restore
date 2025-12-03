@interface LoadedKeySlot
+ (id)withKeySlot:(id)slot key:(id)key;
- (void)dealloc;
@end

@implementation LoadedKeySlot

+ (id)withKeySlot:(id)slot key:(id)key
{
  keyCopy = key;
  slotCopy = slot;
  v7 = objc_opt_new();
  [v7 setSlot:slotCopy];
  [v7 setKey:keyCopy];

  [slotCopy setState:3];

  return v7;
}

- (void)dealloc
{
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    slot = self->_slot;
    key = self->_key;
    *buf = 138412546;
    v8 = slot;
    v9 = 2112;
    v10 = key;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handle to keySlot %@ with key %@ released", buf, 0x16u);
  }

  if ([(KeySlot *)self->_slot state]== 3)
  {
    [(KeySlot *)self->_slot setState:2];
  }

  v6.receiver = self;
  v6.super_class = LoadedKeySlot;
  [(LoadedKeySlot *)&v6 dealloc];
}

@end