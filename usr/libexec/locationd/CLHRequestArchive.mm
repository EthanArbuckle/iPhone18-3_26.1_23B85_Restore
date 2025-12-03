@interface CLHRequestArchive
- (BOOL)isActiveSubArchive;
- (NSFileHandle)secondaryFileHandle;
- (unint64_t)totalCountIncludingAllSubArchives;
@end

@implementation CLHRequestArchive

- (NSFileHandle)secondaryFileHandle
{
  Current = CFAbsoluteTimeGetCurrent();
  rotationInterval = self->_rotationInterval;
  lastRotationTime = self->_lastRotationTime;
  v6 = rotationInterval >= 0.0;
  if (lastRotationTime <= 0.0)
  {
    v6 = 1;
  }

  if (Current <= lastRotationTime + rotationInterval)
  {
    v6 = 0;
  }

  if (self->_secondaryPath)
  {
    v7 = !v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    [(CLHRequestArchive *)self rotateSecondaryFile];
  }

  return self->_secondaryFileHandle;
}

- (BOOL)isActiveSubArchive
{
  lastPathComponent = [(NSString *)[(CLHRequestArchive *)self directory] lastPathComponent];

  return [(NSString *)lastPathComponent hasPrefix:@"sub_"];
}

- (unint64_t)totalCountIncludingAllSubArchives
{
  isActiveSubArchive = [(CLHRequestArchive *)self isActiveSubArchive];
  v4 = 40;
  if (isActiveSubArchive)
  {
    v4 = 48;
  }

  return *(&self->super.isa + v4);
}

@end