@interface PalmspringCrashlogInfoEntry
- (PalmspringCrashlogInfoEntry)initWithUniqueID:(unsigned __int8)d type:(unsigned __int8)type headerAndRawBlobSize:(unsigned int)size name:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PalmspringCrashlogInfoEntry

- (PalmspringCrashlogInfoEntry)initWithUniqueID:(unsigned __int8)d type:(unsigned __int8)type headerAndRawBlobSize:(unsigned int)size name:(id)name
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = PalmspringCrashlogInfoEntry;
  v11 = [(PalmspringCrashlogInfoEntry *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_uniqueID = d;
    v11->_type = type;
    v11->_headerAndRawBlobSize = size;
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = v12;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PalmspringCrashlogInfoEntry allocWithZone:zone];
  uniqueID = self->_uniqueID;
  type = self->_type;
  headerAndRawBlobSize = self->_headerAndRawBlobSize;
  name = self->_name;

  return [(PalmspringCrashlogInfoEntry *)v4 initWithUniqueID:uniqueID type:type headerAndRawBlobSize:headerAndRawBlobSize name:name];
}

@end