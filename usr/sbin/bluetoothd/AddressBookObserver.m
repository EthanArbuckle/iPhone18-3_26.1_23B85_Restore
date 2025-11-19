@interface AddressBookObserver
- ($5E5F304956FB491AF6F034FDF0808287)getDatabaseIdentifier;
- ($5E5F304956FB491AF6F034FDF0808287)getPrimaryFolderVersionForAddressBook:(int)a3;
- ($5E5F304956FB491AF6F034FDF0808287)getSecondaryFolderVersionForAddressBook:(int)a3;
- (AddressBookObserver)init;
- (BOOL)_incrementOI_UINT128:(id *)a3;
- (id)_addressBookToString:(int)a3;
- (void)_handleCNContactStoreDidChangeNotification:(id)a3;
- (void)_incrementPrimaryFolderVersionForAddressBook:(int)a3;
- (void)_incrementSecondaryFolderVersionForAddressBook:(int)a3;
- (void)_initializeDatabaseIdentifer;
- (void)_initializePrimaryFolderVersions;
- (void)_initializeSecondaryFolderVersions;
- (void)incrementMainAddressBookVersions;
@end

@implementation AddressBookObserver

- (AddressBookObserver)init
{
  v6.receiver = self;
  v6.super_class = AddressBookObserver;
  v2 = [(AddressBookObserver *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_handleCNContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1007F2EFC, CNFavoritesChangedExternallyNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(AddressBookObserver *)v2 _initializePrimaryFolderVersions];
    [(AddressBookObserver *)v2 _initializeSecondaryFolderVersions];
    [(AddressBookObserver *)v2 _initializeDatabaseIdentifer];
  }

  return v2;
}

- ($5E5F304956FB491AF6F034FDF0808287)getPrimaryFolderVersionForAddressBook:(int)a3
{
  v3 = *&a3;
  v5 = [(AddressBookObserver *)self primaryFolderVersions];
  v6 = [NSNumber numberWithUnsignedInt:v3];
  v7 = [v5 objectForKey:v6];

  v16 = 0;
  v17 = 0;
  [v7 getValue:&v16];
  v8 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
  {
    v10 = v16;
    v9 = HIDWORD(v16);
    v12 = v17;
    v11 = HIDWORD(v17);
    v13 = [(AddressBookObserver *)self _addressBookToString:v3];
    *buf = 67110146;
    v19 = v10;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v12;
    v24 = 1024;
    v25 = v11;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Retrieving primary folder version %u-%u-%u-%u for '%@'", buf, 0x24u);
  }

  v14 = v16;
  v15 = v17;
  result.var2 = v15;
  result.var3 = HIDWORD(v15);
  result.var0 = v14;
  result.var1 = HIDWORD(v14);
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)getSecondaryFolderVersionForAddressBook:(int)a3
{
  v3 = *&a3;
  v5 = [(AddressBookObserver *)self secondaryFolderVersions];
  v6 = [NSNumber numberWithUnsignedInt:v3];
  v7 = [v5 objectForKey:v6];

  v16 = 0;
  v17 = 0;
  [v7 getValue:&v16];
  v8 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
  {
    v10 = v16;
    v9 = HIDWORD(v16);
    v12 = v17;
    v11 = HIDWORD(v17);
    v13 = [(AddressBookObserver *)self _addressBookToString:v3];
    *buf = 67110146;
    v19 = v10;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v12;
    v24 = 1024;
    v25 = v11;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Retrieving secondary folder version %u-%u-%u-%u for '%@'", buf, 0x24u);
  }

  v14 = v16;
  v15 = v17;
  result.var2 = v15;
  result.var3 = HIDWORD(v15);
  result.var0 = v14;
  result.var1 = HIDWORD(v14);
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)getDatabaseIdentifier
{
  v17[0] = 0;
  v17[1] = 0;
  v2 = [(AddressBookObserver *)self databaseIdentifier];
  [v2 getUUIDBytes:v17];

  v3 = [NSData dataWithBytes:v17 length:16];
  v7 = 0;
  v8 = 0;
  [v3 getBytes:&v7 range:{0, 4}];
  [v3 getBytes:&v7 + 4 range:{4, 4}];
  [v3 getBytes:&v8 range:{8, 4}];
  [v3 getBytes:&v8 + 4 range:{12, 4}];
  v4 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
  {
    *buf = 67109888;
    v10 = v7;
    v11 = 1024;
    v12 = HIDWORD(v7);
    v13 = 1024;
    v14 = v8;
    v15 = 1024;
    v16 = HIDWORD(v8);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Retrieving database identifier %u-%u-%u-%u", buf, 0x1Au);
  }

  v5 = v7;
  v6 = v8;
  result.var2 = v6;
  result.var3 = HIDWORD(v6);
  result.var0 = v5;
  result.var1 = HIDWORD(v5);
  return result;
}

- (void)incrementMainAddressBookVersions
{
  [(AddressBookObserver *)self _incrementPrimaryFolderVersionForAddressBook:2];

  [(AddressBookObserver *)self _incrementSecondaryFolderVersionForAddressBook:2];
}

- (void)_incrementPrimaryFolderVersionForAddressBook:(int)a3
{
  v3 = *&a3;
  v5 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(AddressBookObserver *)self _addressBookToString:v3];
    LODWORD(v11) = 138412290;
    *(&v11 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Incrementing primary folder version for '%@'", &v11, 0xCu);
  }

  *&v11 = [(AddressBookObserver *)self getPrimaryFolderVersionForAddressBook:v3];
  *(&v11 + 1) = v7;
  if ([(AddressBookObserver *)self _incrementOI_UINT128:&v11])
  {
    [(AddressBookObserver *)self _initializeDatabaseIdentifer];
  }

  v8 = [NSValue value:&v11 withObjCType:"{?=IIII}"];
  v9 = [(AddressBookObserver *)self primaryFolderVersions];
  v10 = [NSNumber numberWithUnsignedInt:v3];
  [v9 setObject:v8 forKey:v10];
}

- (void)_incrementSecondaryFolderVersionForAddressBook:(int)a3
{
  v3 = *&a3;
  v5 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(AddressBookObserver *)self _addressBookToString:v3];
    LODWORD(v11) = 138412290;
    *(&v11 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Incrementing secondary folder version for '%@'", &v11, 0xCu);
  }

  *&v11 = [(AddressBookObserver *)self getSecondaryFolderVersionForAddressBook:v3];
  *(&v11 + 1) = v7;
  if ([(AddressBookObserver *)self _incrementOI_UINT128:&v11])
  {
    [(AddressBookObserver *)self _initializeDatabaseIdentifer];
  }

  v8 = [NSValue value:&v11 withObjCType:"{?=IIII}"];
  v9 = [(AddressBookObserver *)self secondaryFolderVersions];
  v10 = [NSNumber numberWithUnsignedInt:v3];
  [v9 setObject:v8 forKey:v10];
}

- (BOOL)_incrementOI_UINT128:(id *)a3
{
  var3 = a3->var3;
  if (var3 == -1)
  {
    var2 = a3->var2;
    if (var2 == -1)
    {
      var1 = a3->var1;
      result = var1 == -1 && a3->var0++ == -1;
      a3->var1 = var1 + 1;
    }

    else
    {
      result = 0;
    }

    a3->var2 = var2 + 1;
  }

  else
  {
    result = 0;
  }

  a3->var3 = var3 + 1;
  return result;
}

- (void)_initializePrimaryFolderVersions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [(AddressBookObserver *)self setPrimaryFolderVersions:v3];

  v14[0] = 0;
  v14[1] = 0;
  v4 = [NSValue value:v14 withObjCType:"{?=IIII}"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [&off_100B34708 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&off_100B34708);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(AddressBookObserver *)self primaryFolderVersions];
        [v9 setObject:v4 forKey:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [&off_100B34708 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_initializeSecondaryFolderVersions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [(AddressBookObserver *)self setSecondaryFolderVersions:v3];

  v14[0] = 0;
  v14[1] = 0;
  v4 = [NSValue value:v14 withObjCType:"{?=IIII}"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [&off_100B34720 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&off_100B34720);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(AddressBookObserver *)self secondaryFolderVersions];
        [v9 setObject:v4 forKey:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [&off_100B34720 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_initializeDatabaseIdentifer
{
  v3 = +[NSUUID UUID];
  [(AddressBookObserver *)self setDatabaseIdentifier:?];
}

- (id)_addressBookToString:(int)a3
{
  if ((a3 - 2) > 6)
  {
    return @"Invalid";
  }

  else
  {
    return off_100B0EB10[a3 - 2];
  }
}

- (void)_handleCNContactStoreDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received 'contact store changed' notification", v6, 2u);
  }

  [(AddressBookObserver *)self _incrementPrimaryFolderVersionForAddressBook:2];
  [(AddressBookObserver *)self _incrementSecondaryFolderVersionForAddressBook:2];
}

@end