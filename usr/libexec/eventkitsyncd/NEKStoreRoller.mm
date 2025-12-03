@interface NEKStoreRoller
- (NEKStoreRoller)initWithEventStore:(id)store cause:(id)cause;
- (id)fetch:(id)fetch;
- (id)someStore;
- (void)_bump;
@end

@implementation NEKStoreRoller

- (NEKStoreRoller)initWithEventStore:(id)store cause:(id)cause
{
  storeCopy = store;
  causeCopy = cause;
  v13.receiver = self;
  v13.super_class = NEKStoreRoller;
  v9 = [(NEKStoreRoller *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_counter = 49;
    objc_storeStrong(&v9->_eventStore, store);
    objc_storeStrong(&v10->_cause, cause);
    lastStore = v10->_lastStore;
    v10->_lastStore = 0;
  }

  return v10;
}

- (void)_bump
{
  v3 = self->_counter + 1;
  self->_counter = v3;
  if (v3 == 50)
  {
    self->_counter = 0;
    lastStore = self->_lastStore;
    self->_lastStore = 0;

    v6 = [(NEKStore *)self->_eventStore freshEventStoreFor:self->_cause];
    v7 = self->_lastStore;
    self->_lastStore = v6;

    _objc_release_x1();
  }
}

- (id)fetch:(id)fetch
{
  fetchCopy = fetch;
  [(NEKStoreRoller *)self _bump];
  v5 = [(EKEventStore *)self->_lastStore publicObjectWithObjectID:fetchCopy];

  return v5;
}

- (id)someStore
{
  [(NEKStoreRoller *)self _bump];
  lastStore = self->_lastStore;

  return lastStore;
}

@end