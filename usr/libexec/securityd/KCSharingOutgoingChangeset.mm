@interface KCSharingOutgoingChangeset
- (KCSharingOutgoingChangeset)initWithRecordsToSave:(id)save recordIDsToDelete:(id)delete cursor:(id)cursor;
@end

@implementation KCSharingOutgoingChangeset

- (KCSharingOutgoingChangeset)initWithRecordsToSave:(id)save recordIDsToDelete:(id)delete cursor:(id)cursor
{
  saveCopy = save;
  deleteCopy = delete;
  cursorCopy = cursor;
  v17.receiver = self;
  v17.super_class = KCSharingOutgoingChangeset;
  v11 = [(KCSharingOutgoingChangeset *)&v17 init];
  if (v11)
  {
    v12 = [saveCopy copy];
    recordsToSave = v11->_recordsToSave;
    v11->_recordsToSave = v12;

    v14 = [deleteCopy copy];
    recordIDsToDelete = v11->_recordIDsToDelete;
    v11->_recordIDsToDelete = v14;

    objc_storeStrong(&v11->_cursor, cursor);
  }

  return v11;
}

@end