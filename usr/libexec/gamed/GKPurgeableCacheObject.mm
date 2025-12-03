@interface GKPurgeableCacheObject
- (void)purge;
@end

@implementation GKPurgeableCacheObject

- (void)purge
{
  if ([(GKPurgeableCacheObject *)self purgeable])
  {
    managedObjectContext = [(GKPurgeableCacheObject *)self managedObjectContext];
    [managedObjectContext deleteObject:self];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028FDD0();
    }
  }
}

@end