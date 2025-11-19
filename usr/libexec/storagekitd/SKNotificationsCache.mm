@interface SKNotificationsCache
- (SKNotificationsCache)initWithDiskOperationMap:(id)a3;
- (void)prepareWithDiskOperationMap:(id)a3;
@end

@implementation SKNotificationsCache

- (void)prepareWithDiskOperationMap:(id)a3
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a3;
  v36 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v36)
  {
    v4 = *v39;
    p_cb = &OBJC_PROTOCOL___SKWaitable.cb;
    v34 = *v39;
    v35 = self;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v39 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [obj objectForKey:*(*(&v38 + 1) + 8 * i)];
        v8 = [(SKDiskOperations *)v7 objectForKeyedSubscript:*(p_cb + 88)];
        if ([v8 isEqualToString:off_1000592E8])
        {

LABEL_8:
          v9 = [(SKNotificationsCache *)self disksToProcess];
          v10 = [[SKDiskOperations alloc] initWithWholeDiskOperation:v7];
          [v9 addObject:v10];
          goto LABEL_34;
        }

        v11 = p_cb;
        v12 = [(SKDiskOperations *)v7 objectForKeyedSubscript:*(p_cb + 88)];
        if ([v12 isEqualToString:off_1000592E0])
        {
          v13 = [(SKDiskOperations *)v7 objectForKeyedSubscript:off_1000592F0];
          v14 = sub_100010370(v13);

          self = v35;
          p_cb = v11;
          if ((v14 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {

          p_cb = v11;
        }

        v9 = [(SKDiskOperations *)v7 objectForKey:off_1000592F8];
        v10 = DADiskCopyDescription(v9);
        v15 = [(SKDiskOperations *)v10 objectForKeyedSubscript:kDADiskDescriptionVolumeNetworkKey];
        if (sub_100010328(v15))
        {
          v16 = sub_10000BFD0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v45 = "[SKNotificationsCache prepareWithDiskOperationMap:]";
            v46 = 2112;
            v47 = v9;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s: %@ is a network disk, ignoring", buf, 0x16u);
          }
        }

        else
        {
          v16 = [(SKDiskOperations *)v10 objectForKeyedSubscript:kDADiskDescriptionMediaWholeKey];
          if ((sub_100010328(v16) & 1) != 0 || [SKAPFSDisk isLIFSAPFSWithDiskDescription:v10])
          {
            v17 = [(SKNotificationsCache *)self disksToProcess];
            v18 = [v17 indexOfObject:v9];

            self = v35;
            v19 = [(SKNotificationsCache *)v35 disksToProcess];
            v20 = v19;
            if (v18 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = [[SKDiskOperations alloc] initWithWholeDiskOperation:v7];
              [(__DADisk *)v20 addObject:v21];
            }

            else
            {
              v21 = [(__DADisk *)v19 objectAtIndexedSubscript:v18];
              [(SKDiskOperations *)v21 setWholeDiskOperation:v7];
            }
          }

          else
          {
            v20 = DADiskCopyWholeDisk(v9);
            if (v20)
            {
              v22 = [(SKNotificationsCache *)self disksToProcess];
              v23 = [v22 indexOfObject:v20];

              if (v23 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v24 = *(v11 + 88);
                v42[0] = off_1000592F8;
                v42[1] = v24;
                v43[0] = v20;
                v43[1] = off_1000592D0;
                v21 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
                v33 = [[SKDiskOperations alloc] initWithWholeDiskOperation:v21];
                v25 = [(SKDiskOperations *)v33 childrenOperations];
                [v25 addObject:v7];

                v26 = [(SKNotificationsCache *)v35 disksToProcess];
                v27 = v26;
                v28 = v33;
              }

              else
              {
                v21 = [(SKNotificationsCache *)v35 disksToProcess];
                v33 = [(SKDiskOperations *)v21 objectAtIndexedSubscript:v23];
                v26 = [(SKDiskOperations *)v33 childrenOperations];
                v27 = v26;
                v28 = v7;
              }

              [v26 addObject:v28];

              self = v35;
            }

            else
            {
              v29 = sub_10000BFD0();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v45 = "[SKNotificationsCache prepareWithDiskOperationMap:]";
                v46 = 2112;
                v47 = v9;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s: Failed to get whole disk for %@", buf, 0x16u);
              }

              v21 = [[SKDiskOperations alloc] initWithWholeDiskOperation:v7];
              v30 = [(SKNotificationsCache *)self disksToProcess];
              v32 = [v30 indexOfObject:v9];

              self = v35;
              v31 = [(SKNotificationsCache *)v35 disksToProcess];
              v33 = v31;
              if (v32 == 0x7FFFFFFFFFFFFFFFLL)
              {
                [(SKDiskOperations *)v31 addObject:v21];
              }

              else
              {
                [(SKDiskOperations *)v31 setObject:v21 atIndexedSubscript:?];
              }
            }
          }

          p_cb = v11;
        }

        v4 = v34;
LABEL_34:
      }

      v36 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v36);
  }
}

- (SKNotificationsCache)initWithDiskOperationMap:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SKNotificationsCache;
  v5 = [(SKNotificationsCache *)&v17 init];
  if (v5)
  {
    v6 = +[NSMutableArray array];
    appearedDisks = v5->_appearedDisks;
    v5->_appearedDisks = v6;

    v8 = +[NSMutableArray array];
    changedDisks = v5->_changedDisks;
    v5->_changedDisks = v8;

    v10 = +[NSMutableArray array];
    disappearedDisks = v5->_disappearedDisks;
    v5->_disappearedDisks = v10;

    v12 = +[NSMutableArray array];
    disksToProcess = v5->_disksToProcess;
    v5->_disksToProcess = v12;

    v14 = dispatch_group_create();
    processingGroup = v5->_processingGroup;
    v5->_processingGroup = v14;

    [(SKNotificationsCache *)v5 prepareWithDiskOperationMap:v4];
  }

  return v5;
}

@end