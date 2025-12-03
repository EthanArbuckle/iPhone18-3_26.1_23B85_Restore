@interface SKVolumeDescriptor
- (id)toVolumeWithDisk:(id)disk;
@end

@implementation SKVolumeDescriptor

- (id)toVolumeWithDisk:(id)disk
{
  diskCopy = disk;
  v5 = [SKVolume alloc];
  filesystem = [(SKVolumeDescriptor *)self filesystem];
  name = [(SKVolumeDescriptor *)self name];
  password = [(SKVolumeDescriptor *)self password];
  v9 = [(SKVolume *)v5 initWithDisk:diskCopy filesystem:filesystem name:name password:password];

  return v9;
}

@end