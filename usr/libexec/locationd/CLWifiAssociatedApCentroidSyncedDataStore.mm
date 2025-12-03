@interface CLWifiAssociatedApCentroidSyncedDataStore
- (BOOL)areCentroidDbAndMetadataDbValid;
- (BOOL)isCentroidDatabaseValid;
- (BOOL)isMetadataDatabaseValid;
- (BOOL)isValid;
- (BOOL)purgeOlderRecords;
- (basic_string<char,)getBasicInfo;
@end

@implementation CLWifiAssociatedApCentroidSyncedDataStore

- (BOOL)areCentroidDbAndMetadataDbValid
{
  isCentroidDatabaseValid = [(CLWifiAssociatedApCentroidSyncedDataStore *)self isCentroidDatabaseValid];
  isMetadataDatabaseValid = [(CLWifiAssociatedApCentroidSyncedDataStore *)self isMetadataDatabaseValid];
  if (isCentroidDatabaseValid != isMetadataDatabaseValid)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019D63F0();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      v7[0] = 67240448;
      v7[1] = isCentroidDatabaseValid;
      v8 = 1026;
      v9 = isMetadataDatabaseValid;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "[CloudKit] WifiAssociatedApCentroidStore, centroid DB and metadata DB are in different states: %{public}d vs %{public}d", v7, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019D6404(isCentroidDatabaseValid, isMetadataDatabaseValid);
    }
  }

  return isCentroidDatabaseValid && isMetadataDatabaseValid;
}

- (BOOL)isValid
{
  areCentroidDbAndMetadataDbValid = [(CLWifiAssociatedApCentroidSyncedDataStore *)self areCentroidDbAndMetadataDbValid];
  if (areCentroidDbAndMetadataDbValid)
  {
    LOBYTE(areCentroidDbAndMetadataDbValid) = self->_syncEngine != 0;
  }

  return areCentroidDbAndMetadataDbValid;
}

- (BOOL)isCentroidDatabaseValid
{
  ptr = self->_centroidDb.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = sub_10018E854(ptr);
  }

  return ptr;
}

- (BOOL)isMetadataDatabaseValid
{
  ptr = self->_metadataDb.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = sub_100E55440(ptr);
  }

  return ptr;
}

- (BOOL)purgeOlderRecords
{
  if ([(CLWifiAssociatedApCentroidSyncedDataStore *)self isCentroidDatabaseValid])
  {
    v3 = sub_100100690();
    v18 = sub_1001B0A10(v3);
    ptr = self->_centroidDb.__ptr_;
    *buf = CFAbsoluteTimeGetCurrent();
    sub_10023A188(ptr, &v18, buf, &v16);
    v5 = v16;
    v6 = v17;
    for (i = 1; v5 != v6; v5 += 14)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019D6094();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v18;
        *v19 = CFAbsoluteTimeGetCurrent();
        v10 = sub_1008613B4(v5, v19);
        *buf = 134283777;
        *&buf[4] = v9;
        v23 = 2049;
        v24 = v10;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "[CloudKit] WifiAssociatedApCentroidStore, purging local records older than %{private}.1f, age, %{private}.1f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D6518(buf);
        v11 = v18;
        Current = CFAbsoluteTimeGetCurrent();
        v12 = sub_1008613B4(v5, &Current);
        *v19 = 134283777;
        *&v19[4] = v11;
        v20 = 2049;
        v21 = v12;
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLWifiAssociatedApCentroidSyncedDataStore purgeOlderRecords]", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      i &= [(CLWifiAssociatedApCentroidSyncedDataStore *)self deleteRecordByMac:*v5 sync:0];
    }

    *buf = &v16;
    sub_1002394D8(buf);
  }

  else
  {
    LOBYTE(i) = 0;
  }

  return i;
}

- (basic_string<char,)getBasicInfo
{
  v2 = v1;
  if ([v1 isCentroidDatabaseValid])
  {
    v4 = v2[2];

    sub_1002395C8(v4, retstr);
  }

  else
  {

    return sub_10000EC00(retstr, "invalid database");
  }

  return result;
}

@end