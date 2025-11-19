@interface PalmspringCrashlogInfoEntry
- (PalmspringCrashlogInfoEntry)initWithUniqueID:(unsigned __int8)a3 type:(unsigned __int8)a4 headerAndRawBlobSize:(unsigned int)a5 name:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PalmspringCrashlogInfoEntry

- (PalmspringCrashlogInfoEntry)initWithUniqueID:(unsigned __int8)a3 type:(unsigned __int8)a4 headerAndRawBlobSize:(unsigned int)a5 name:(id)a6
{
  v10 = a6;
  v17.receiver = self;
  v17.super_class = PalmspringCrashlogInfoEntry;
  v11 = [(PalmspringCrashlogInfoEntry *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_uniqueID = a3;
    v11->_type = a4;
    v11->_headerAndRawBlobSize = a5;
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = v12;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PalmspringCrashlogInfoEntry allocWithZone:a3];
  uniqueID = self->_uniqueID;
  type = self->_type;
  headerAndRawBlobSize = self->_headerAndRawBlobSize;
  name = self->_name;

  return [(PalmspringCrashlogInfoEntry *)v4 initWithUniqueID:uniqueID type:type headerAndRawBlobSize:headerAndRawBlobSize name:name];
}

@end