@interface MSDContentFilesUninstallOperation
- (BOOL)_clearDataContainer:(id)container ofType:(id)type;
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
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  context2 = [(MSDOperation *)self context];
  containerType = [context2 containerType];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = identifier;
    v12 = 2114;
    v13 = containerType;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleting content files from container %{public}@ of type %{public}@", &v10, 0x16u);
  }

  v8 = [(MSDContentFilesUninstallOperation *)self _clearDataContainer:identifier ofType:containerType];
  return v8;
}

- (BOOL)_clearDataContainer:(id)container ofType:(id)type
{
  containerCopy = container;
  typeCopy = type;
  v11 = 0;
  if (([typeCopy isEqualToString:@"AppData"] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", @"GroupData") & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", @"ExtensionData") & 1) == 0)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000EB2E4(typeCopy, v10);
    }

    goto LABEL_14;
  }

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = containerCopy;
    v14 = 2114;
    v15 = typeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Clearing data container: %{public}@ (%{public}@)", buf, 0x16u);
  }

  [containerCopy cStringUsingEncoding:4];
  if (!container_create_or_lookup_for_current_user())
  {
    sub_1000EB404(containerCopy, typeCopy, &v11);
LABEL_14:
    v8 = 0;
    goto LABEL_10;
  }

  v11 = container_delete_all_container_content();
  v8 = v11 == 1;
  if (v11 != 1)
  {
    sub_1000EB35C(containerCopy, typeCopy, &v11);
  }

  container_free_object();
LABEL_10:

  return v8;
}

@end