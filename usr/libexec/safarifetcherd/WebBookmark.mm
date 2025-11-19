@interface WebBookmark
- (void)writeOfflineWebView:(id)a3 withOptions:(unint64_t)a4 quickLookFilePath:(id)a5 suggestedFileName:(id)a6 completion:(id)a7;
@end

@implementation WebBookmark

- (void)writeOfflineWebView:(id)a3 withOptions:(unint64_t)a4 quickLookFilePath:(id)a5 suggestedFileName:(id)a6 completion:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v44 = v13;
  v16 = (v10 & 1) != 0 && [v13 length] == 0;
  v17 = [(WebBookmark *)self offlineArchiveDirectoryPath];
  v43 = v14;
  if (v16)
  {
    v18 = &WBReaderWebArchiveName;
    if ((v10 & 2) == 0)
    {
      v18 = &WBPageWebArchiveName;
    }

    v19 = *v18;
  }

  else
  {
    v19 = [v12 _fileNameForSuggestedName:v14];
  }

  v20 = v19;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100006BBC;
  v47[3] = &unk_10001C888;
  v52 = v16;
  v21 = v12;
  v48 = v21;
  v22 = v17;
  v49 = v22;
  v23 = v20;
  v50 = v23;
  v24 = v15;
  v51 = v24;
  v25 = objc_retainBlock(v47);
  v26 = [v22 stringByAppendingPathComponent:v23];
  v27 = +[NSFileManager defaultManager];
  v42 = v21;
  if ([v27 fileExistsAtPath:v22 isDirectory:0])
  {
    if ([v27 fileExistsAtPath:v26 isDirectory:0])
    {
      v28 = sub_100009E64();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        v30 = [(WebBookmark *)self UUID];
        *buf = 138543362;
        v54 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Offline Reading List: Overwriting existing archive for bookmark UUID %{public}@.", buf, 0xCu);
      }
    }

    v31 = 0;
  }

  else
  {
    v46 = 0;
    v32 = [v27 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:&v46];
    v31 = v46;
    if ((v32 & 1) == 0)
    {
      v41 = sub_100009E64();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10000AA04(v41);
      }

      (v25[2])(v25, 0);
      goto LABEL_32;
    }
  }

  v33 = [v44 length];
  v34 = sub_100009E64();
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
  if (v33)
  {
    if (v35)
    {
      sub_10000AA98(v34);
    }

    v45 = v31;
    v36 = [v27 linkItemAtPath:v44 toPath:v26 error:&v45];
    v37 = v45;

    v38 = sub_100009E64();
    v39 = v38;
    if (v36)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_10000AB70(v39);
      }

      (v25[2])(v25, 1);
    }

    else
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10000AADC(v39);
      }

      (v25[2])(v25, 0);
    }

    v31 = v37;
LABEL_32:
    v40 = v42;
    goto LABEL_33;
  }

  if (v35)
  {
    sub_10000ABB4(v34);
  }

  v40 = v42;
  [v42 _writeDataAtPath:v26 asArchive:v16 completion:v25];
LABEL_33:
}

@end