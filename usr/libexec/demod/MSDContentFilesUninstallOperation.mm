@interface MSDContentFilesUninstallOperation
- (BOOL)_clearDataContainer:(id)a3 ofType:(id)a4;
- (BOOL)_removeContentFiles;
- (id)methodSelectors;
@end

@implementation MSDContentFilesUninstallOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_removeContentFiles"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_removeContentFiles
{
  v3 = [(MSDOperation *)self context];
  v4 = [v3 identifier];

  v5 = [(MSDOperation *)self context];
  v6 = [v5 containerType];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleting content files from container %{public}@ of type %{public}@", &v10, 0x16u);
  }

  v8 = [(MSDContentFilesUninstallOperation *)self _clearDataContainer:v4 ofType:v6];
  return v8;
}

- (BOOL)_clearDataContainer:(id)a3 ofType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0;
  if (([v6 isEqualToString:@"AppData"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"GroupData") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"ExtensionData") & 1) == 0)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000EB2E4(v6, v10);
    }

    goto LABEL_14;
  }

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Clearing data container: %{public}@ (%{public}@)", buf, 0x16u);
  }

  [v5 cStringUsingEncoding:4];
  if (!container_create_or_lookup_for_current_user())
  {
    sub_1000EB404(v5, v6, &v11);
LABEL_14:
    v8 = 0;
    goto LABEL_10;
  }

  v11 = container_delete_all_container_content();
  v8 = v11 == 1;
  if (v11 != 1)
  {
    sub_1000EB35C(v5, v6, &v11);
  }

  container_free_object();
LABEL_10:

  return v8;
}

@end