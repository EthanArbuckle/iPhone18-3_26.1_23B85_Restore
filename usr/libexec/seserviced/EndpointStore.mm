@interface EndpointStore
+ (BOOL)containsWithFilter:(id)filter;
+ (void)insertWithEndpoint:(id)endpoint;
+ (void)removeWithEndpoint:(id)endpoint;
+ (void)updateWithEndpoint:(id)endpoint;
- (_TtC10seserviced13EndpointStore)init;
@end

@implementation EndpointStore

- (_TtC10seserviced13EndpointStore)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(EndpointStore *)&v3 init];
}

+ (void)insertWithEndpoint:(id)endpoint
{
  v3 = qword_1005019E8;
  endpointCopy = endpoint;
  v5 = endpointCopy;
  if (v3 != -1)
  {
    endpointCopy = swift_once();
  }

  v6 = *(off_100504A68 + 3);
  __chkstk_darwin(endpointCopy);
  os_unfair_lock_lock((v6 + 32));
  sub_10014E55C((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));
}

+ (void)updateWithEndpoint:(id)endpoint
{
  v3 = qword_1005019E8;
  endpointCopy = endpoint;
  v5 = endpointCopy;
  if (v3 != -1)
  {
    endpointCopy = swift_once();
  }

  v6 = *(off_100504A68 + 3);
  __chkstk_darwin(endpointCopy);
  os_unfair_lock_lock((v6 + 32));
  sub_10014E474((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));
}

+ (void)removeWithEndpoint:(id)endpoint
{
  v3 = qword_1005019E8;
  endpointCopy = endpoint;
  v5 = endpointCopy;
  if (v3 != -1)
  {
    endpointCopy = swift_once();
  }

  v6 = *(off_100504A68 + 3);
  __chkstk_darwin(endpointCopy);
  os_unfair_lock_lock((v6 + 32));
  sub_10014E454((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));
}

+ (BOOL)containsWithFilter:(id)filter
{
  v3 = _Block_copy(filter);
  v4 = v3;
  if (qword_1005019E8 != -1)
  {
    v3 = swift_once();
  }

  v5 = __chkstk_darwin(v3);
  v7 = *(v6 + 24);
  __chkstk_darwin(v5);
  os_unfair_lock_lock(v7 + 8);
  sub_1000B3630(&v7[4], &v10);
  os_unfair_lock_unlock(v7 + 8);
  v8 = v10;
  _Block_release(v4);
  return v8;
}

@end