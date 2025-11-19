@interface SKVolumeDescriptor
- (id)toVolumeWithDisk:(id)a3;
@end

@implementation SKVolumeDescriptor

- (id)toVolumeWithDisk:(id)a3
{
  v4 = a3;
  v5 = [SKVolume alloc];
  v6 = [(SKVolumeDescriptor *)self filesystem];
  v7 = [(SKVolumeDescriptor *)self name];
  v8 = [(SKVolumeDescriptor *)self password];
  v9 = [(SKVolume *)v5 initWithDisk:v4 filesystem:v6 name:v7 password:v8];

  return v9;
}

@end