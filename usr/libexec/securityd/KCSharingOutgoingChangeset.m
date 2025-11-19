@interface KCSharingOutgoingChangeset
- (KCSharingOutgoingChangeset)initWithRecordsToSave:(id)a3 recordIDsToDelete:(id)a4 cursor:(id)a5;
@end

@implementation KCSharingOutgoingChangeset

- (KCSharingOutgoingChangeset)initWithRecordsToSave:(id)a3 recordIDsToDelete:(id)a4 cursor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = KCSharingOutgoingChangeset;
  v11 = [(KCSharingOutgoingChangeset *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    recordsToSave = v11->_recordsToSave;
    v11->_recordsToSave = v12;

    v14 = [v9 copy];
    recordIDsToDelete = v11->_recordIDsToDelete;
    v11->_recordIDsToDelete = v14;

    objc_storeStrong(&v11->_cursor, a5);
  }

  return v11;
}

@end