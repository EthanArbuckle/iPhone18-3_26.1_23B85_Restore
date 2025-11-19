uint64_t lifs_rmdir_send(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v8 = [FSFileName nameWithCString:a5];
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v9 = lifs_to_livefh(a3, &v27 + 1, &v25, &v26, 0);
  v10 = v25;
  if (v10)
  {
    v11 = v10;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10002F8C8;
    v23[3] = &unk_100061B10;
    v24 = HIDWORD(v27);
    v23[4] = a2;
    v12 = [v10 fsObjWithErrorHandler:v23];
    if (v12)
    {
      v13 = v12;
      v22 = v11;
      v14 = lifs_to_livefh(a4, &v27, &v22, &v26, 0);
      v15 = v22;

      if (v15)
      {
        if (!HIDWORD(v27) || HIDWORD(v27) == v27)
        {
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10002F9BC;
          v21[3] = &unk_100061CC8;
          v21[4] = a2;
          [v13 removeDirectory:v14 from:v9 named:v8 usingFlags:0 requestID:a2 reply:v21];
        }

        else
        {
          v16 = livefs_std_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000385B0(&v27 + 1);
          }

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
          v28 = 0u;
          sub_10002A3C0(a2, 18, 2, &v28);
        }
      }

      else
      {
        v19 = livefs_std_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100038630(&v27);
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        v28 = 0u;
        sub_10002A3C0(a2, v26, 2, &v28);
      }
    }

    else
    {
      v18 = livefs_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000386A4(&v27 + 1);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      v28 = 0u;
      sub_10002A3C0(a2, 5, 2, &v28);
    }
  }

  else
  {
    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100038630(&v27 + 1);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v28 = 0u;
    sub_10002A3C0(a2, v26, 2, &v28);
  }

  return 0;
}

void sub_10002F8C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100038718(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002F9BC(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (!a2)
  {
    if (v7 && [v7 length] >= 0xB8)
    {
      v13 = [v7 bytes];
      v14 = v13[3];
      v16 = *v13;
      v15 = v13[1];
      v26 = v13[2];
      v27 = v14;
      v24 = v16;
      v25 = v15;
      v17 = v13[7];
      v19 = v13[4];
      v18 = v13[5];
      v30 = v13[6];
      v31 = v17;
      v28 = v19;
      v29 = v18;
      v21 = v13[9];
      v20 = v13[10];
      v22 = v13[8];
      *&v35[0] = *(v13 + 22);
      v33 = v21;
      v34 = v20;
      v32 = v22;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *&v35[0] = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    if ([v8 length] >= 0x10)
    {
      *(v35 + 8) = *[v8 bytes];
LABEL_11:
      v9 = *(a1 + 32);
      v10 = &v23;
      v11 = 0;
      v12 = 8;
      goto LABEL_12;
    }

LABEL_10:
    *&v35[1] = 0;
    goto LABEL_11;
  }

  v9 = *(a1 + 32);
  memset(v54, 0, 512);
  v10 = v54;
  v11 = a2;
  v12 = 2;
LABEL_12:
  sub_10002A3C0(v9, v11, v12, v10);
}

uint64_t lifs_readdir_send(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int *a5, unsigned int a6, uint64_t a7)
{
  v29 = 0;
  v30 = 0;
  v12 = lifs_to_livefh(a5, &v30 + 1, &v29, &v30, 0);
  v13 = v29;
  v14 = v13;
  if (v13)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100030000;
    v27[3] = &unk_100061B10;
    v28 = HIDWORD(v30);
    v27[4] = a2;
    v15 = [v13 fsObjWithErrorHandler:v27];
    if (v15)
    {
      if (a3)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        sub_10002A3C0(a2, 45, 2, &v31);
      }

      else
      {
        *&v31 = 0;
        *(&v31 + 1) = &v31;
        *&v32 = 0x43010000000;
        *(&v32 + 1) = &unk_100055C71;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v23 = 0;
        v24 = &v23;
        v25 = 0x2020000000;
        v26 = &v33;
        v18 = [LiveFSSharedMutableBuffer dataWithLength:a6];
        v19 = [v18 mutableBytes];
        *(v24[3] + 32) = v19;
        [v18 detachBytes];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000300F4;
        v21[3] = &unk_100061CF0;
        v21[4] = &v23;
        v21[5] = &v31;
        v21[6] = a2;
        v22 = a6;
        [v15 readDirectory:v12 intoBuffer:v18 cookie:a4 verifier:a7 requestID:a2 reply:v21];

        _Block_object_dispose(&v23, 8);
        _Block_object_dispose(&v31, 8);
      }
    }

    else
    {
      v17 = livefs_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100038794(&v30 + 1);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      sub_10002A3C0(a2, 5, 2, &v31);
    }
  }

  else
  {
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100038808(&v30 + 1);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    sub_10002A3C0(a2, v30, 2, &v31);
  }

  return 0;
}

void sub_10002FFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100030000(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003887C(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

uint64_t sub_1000300F4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) = *(*(a1 + 40) + 8) + 32;
  v6 = a2 == -1001 && a3 != 0;
  if (!a2 || v6)
  {
    *(*(*(*(a1 + 32) + 8) + 24) + 16) = a4;
    *(*(*(*(a1 + 32) + 8) + 24) + 24) = a3;
    v7 = *(a1 + 48);
    v8 = *(*(*(a1 + 32) + 8) + 24);
    a2 = 0;
    v9 = 9;
  }

  else
  {
    v7 = *(a1 + 48);
    memset(v11, 0, 512);
    v8 = v11;
    v9 = 2;
  }

  sub_10002A3C0(v7, a2, v9, v8);
  return vm_deallocate(mach_task_self_, *(*(*(*(a1 + 32) + 8) + 24) + 32), *(a1 + 56));
}

uint64_t lifs_link_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, unsigned int *a5)
{
  v8 = [FSFileName nameWithCString:a4];
  v24 = 0;
  v25 = 0;
  v9 = lifs_to_livefh(a3, &v25 + 1, &v24, &v25, 0);
  v10 = v24;
  v23 = v10;
  v11 = lifs_to_livefh(a5, &v25 + 1, &v23, &v25, 0);
  v12 = v23;

  if (!v12)
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003896C(&v25 + 1);
    }

    v16 = v25;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = a2;
    goto LABEL_10;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003050C;
  v21[3] = &unk_100061B10;
  v22 = HIDWORD(v25);
  v21[4] = a2;
  v13 = [v12 fsObjWithErrorHandler:v21];
  if (!v13)
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000388F8(&v25 + 1);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = a2;
    v16 = 5;
LABEL_10:
    sub_10002A3C0(v17, v16, 2, &v26);
    goto LABEL_11;
  }

  v14 = v13;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100030600;
  v20[3] = &unk_100061D10;
  v20[4] = a2;
  [v13 makeLinkOf:v9 named:v8 inDirectory:v11 requestID:a2 reply:v20];

LABEL_11:
  return 0;
}

void sub_10003050C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000389E0(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100030600(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  memset(v46, 0, sizeof(v46));
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  if (!a2)
  {
    if (a3 && [a3 length] >= 0xB8)
    {
      v14 = [a3 bytes];
      v15 = v14[7];
      v17 = v14[4];
      v16 = v14[5];
      *(&v46[6] + 8) = v14[6];
      *(&v46[7] + 8) = v15;
      *(&v46[4] + 8) = v17;
      *(&v46[5] + 8) = v16;
      v18 = *(v14 + 22);
      v19 = v14[10];
      v20 = v14[8];
      *(&v46[9] + 8) = v14[9];
      *(&v46[10] + 8) = v19;
      *(&v46[8] + 8) = v20;
      v21 = v14[2];
      v22 = v14[3];
      v23 = v14[1];
      *(v46 + 8) = *v14;
      *(&v46[3] + 8) = v22;
      *(&v46[2] + 8) = v21;
      *(&v46[1] + 8) = v23;
      *(&v46[11] + 1) = v18;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      memset(v46 + 8, 0, 184);
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    if ([a4 length] >= 0xB8)
    {
      v24 = [a4 bytes];
      v25 = v24[3];
      v27 = *v24;
      v26 = v24[1];
      v37 = v24[2];
      v38 = v25;
      v35 = v27;
      v36 = v26;
      v28 = v24[7];
      v30 = v24[4];
      v29 = v24[5];
      v41 = v24[6];
      v42 = v28;
      v39 = v30;
      v40 = v29;
      v32 = v24[9];
      v31 = v24[10];
      v33 = v24[8];
      *&v46[0] = *(v24 + 22);
      v44 = v32;
      v45 = v31;
      v43 = v33;
      if (!v9)
      {
        goto LABEL_14;
      }

LABEL_12:
      if ([v9 length] >= 0x10)
      {
        v47 = *[v9 bytes];
LABEL_15:
        v10 = *(a1 + 32);
        v11 = &v34;
        v12 = 0;
        v13 = 11;
        goto LABEL_16;
      }

LABEL_14:
      *(&v47 + 1) = 0;
      goto LABEL_15;
    }

LABEL_11:
    *&v46[0] = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  memset(v55, 0, 512);
  v11 = v55;
  v12 = a2;
  v13 = 2;
LABEL_16:
  sub_10002A3C0(v10, v12, v13, v11);
}

uint64_t lifs_symlink_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v10 = [FSFileName nameWithCString:?];
  v11 = [NSString stringWithUTF8String:a4];
  v12 = [NSData dataWithBytes:a6 length:184];
  v27 = 0;
  v28 = 0;
  v13 = lifs_to_livefh(a5, &v28 + 1, &v27, &v28, 0);
  v14 = v27;
  v15 = v14;
  if (!v14)
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100038AD0(&v28 + 1);
    }

    v19 = v28;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = a2;
    goto LABEL_10;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100030BC0;
  v25[3] = &unk_100061B10;
  v26 = HIDWORD(v28);
  v25[4] = a2;
  v16 = [v14 fsObjWithErrorHandler:v25];
  if (!v16)
  {
    v21 = livefs_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100038A5C(&v28 + 1);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = a2;
    v19 = 5;
LABEL_10:
    sub_10002A3C0(v20, v19, 2, &v29);
    goto LABEL_11;
  }

  v17 = v16;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100030CB4;
  v23[3] = &unk_100061C48;
  v23[4] = a2;
  v24 = HIDWORD(v28);
  [v16 makeSymLinkIn:v13 named:v10 contents:v11 attributes:v12 requestID:a2 reply:v23];

LABEL_11:
  return 0;
}

void sub_100030BC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100038B44(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100030CB4(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  memset(v55, 0, sizeof(v55));
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  if (!a2)
  {
    if (v11 && [v11 length] >= 0xB8)
    {
      v19 = [v11 bytes];
      v20 = v19[3];
      v22 = *v19;
      v21 = v19[1];
      *(&v55[2] + 8) = v19[2];
      *(&v55[3] + 8) = v20;
      *(v55 + 8) = v22;
      *(&v55[1] + 8) = v21;
      v23 = v19[7];
      v25 = v19[4];
      v24 = v19[5];
      *(&v55[6] + 8) = v19[6];
      *(&v55[7] + 8) = v23;
      *(&v55[4] + 8) = v25;
      *(&v55[5] + 8) = v24;
      v26 = *(v19 + 22);
      v27 = v19[10];
      v28 = v19[8];
      *(&v55[9] + 8) = v19[9];
      *(&v55[10] + 8) = v27;
      *(&v55[8] + 8) = v28;
      *(&v55[11] + 1) = v26;
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      memset(v55 + 8, 0, 184);
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    if ([v13 length] >= 0xB8)
    {
      v29 = [v13 bytes];
      v30 = v29[3];
      v32 = *v29;
      v31 = v29[1];
      v46 = v29[2];
      v47 = v30;
      v44 = v32;
      v45 = v31;
      v33 = v29[7];
      v35 = v29[4];
      v34 = v29[5];
      v50 = v29[6];
      v51 = v33;
      v48 = v35;
      v49 = v34;
      v37 = v29[9];
      v36 = v29[10];
      v38 = v29[8];
      *&v55[0] = *(v29 + 22);
      v53 = v37;
      v54 = v36;
      v52 = v38;
      if (!v14)
      {
        goto LABEL_14;
      }

LABEL_12:
      if ([v14 length] >= 0x10)
      {
        v56 = *[v14 bytes];
LABEL_15:
        createLIFSfh(*(a1 + 40), v12, &v40);
        v15 = *(a1 + 32);
        v16 = &v39;
        v17 = 0;
        v18 = 10;
        goto LABEL_16;
      }

LABEL_14:
      *(&v56 + 1) = 0;
      goto LABEL_15;
    }

LABEL_11:
    *&v55[0] = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v15 = *(a1 + 32);
  memset(v60, 0, 512);
  v16 = v60;
  v17 = a2;
  v18 = 2;
LABEL_16:
  sub_10002A3C0(v15, v17, v18, v16);
}

uint64_t lifs_readlink_send(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v17 = 0;
  v18 = 0;
  v4 = lifs_to_livefh(a3, &v18 + 1, &v17, &v18, 0);
  v5 = v17;
  v6 = v5;
  if (!v5)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100038C34(&v18 + 1);
    }

    v10 = v18;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = a2;
    goto LABEL_10;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100031224;
  v15[3] = &unk_100061B10;
  v16 = HIDWORD(v18);
  v15[4] = a2;
  v7 = [v5 fsObjWithErrorHandler:v15];
  if (!v7)
  {
    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100038BC0(&v18 + 1);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = a2;
    v10 = 5;
LABEL_10:
    sub_10002A3C0(v11, v10, 2, &v19);
    goto LABEL_11;
  }

  v8 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100031318;
  v14[3] = &unk_100061CC8;
  v14[4] = a2;
  [v7 readLinkOf:v4 requestID:a2 reply:v14];

LABEL_11:
  return 0;
}

void sub_100031224(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100038CA8(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100031318(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (!a2 && v7)
  {
    v9 = [v7 length];
    if (v9 >= 0x3FF)
    {
      v10 = 1023;
    }

    else
    {
      v10 = v9;
    }

    [v7 bytes];
    __memcpy_chk();
    *(&v17 + v10) = 0;
    goto LABEL_7;
  }

  if (!a2 && !v7)
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100038D24();
    }

    a2 = 22;
    goto LABEL_14;
  }

  if (a2)
  {
LABEL_14:
    v11 = *(a1 + 32);
    memset(v48, 0, 512);
    v12 = v48;
    v13 = a2;
    v14 = 2;
    goto LABEL_15;
  }

LABEL_7:
  v11 = *(a1 + 32);
  v12 = &v16;
  v13 = 0;
  v14 = 12;
LABEL_15:
  sub_10002A3C0(v11, v13, v14, v12);
}

uint64_t lifs_remove_send(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v10 = [FSFileName nameWithCString:a5];
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v11 = lifs_to_livefh(a3, &v29 + 1, &v27, &v28, 0);
  v12 = v27;
  if (v12)
  {
    v13 = v12;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100031964;
    v25[3] = &unk_100061B10;
    v26 = HIDWORD(v29);
    v25[4] = a2;
    v14 = [v12 fsObjWithErrorHandler:v25];
    if (v14)
    {
      v15 = v14;
      v24 = v13;
      v16 = lifs_to_livefh(a4, &v29, &v24, &v28, 0);
      v17 = v24;

      if (v17)
      {
        if (HIDWORD(v29) == v29)
        {
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100031A58;
          v23[3] = &unk_100061CC8;
          v23[4] = a2;
          [v15 removeItem:v16 from:v11 named:v10 usingFlags:a6 requestID:a2 reply:v23];
        }

        else
        {
          v21 = livefs_std_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100038DA4(&v29 + 1);
          }

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = 0u;
          v30 = 0u;
          sub_10002A3C0(a2, 18, 2, &v30);
        }
      }

      else
      {
        v20 = livefs_std_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100038E24(&v29);
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        v30 = 0u;
        sub_10002A3C0(a2, v28, 2, &v30);
      }
    }

    else
    {
      v19 = livefs_std_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100038E98(&v29 + 1);
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v30 = 0u;
      sub_10002A3C0(a2, 5, 2, &v30);
    }
  }

  else
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100038E24(&v29 + 1);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v30 = 0u;
    sub_10002A3C0(a2, v28, 2, &v30);
  }

  return 0;
}

void sub_100031964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100038F0C(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100031A58(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (!a2)
  {
    if (v7 && [v7 length] >= 0xB8)
    {
      v13 = [v7 bytes];
      v14 = v13[3];
      v16 = *v13;
      v15 = v13[1];
      v26 = v13[2];
      v27 = v14;
      v24 = v16;
      v25 = v15;
      v17 = v13[7];
      v19 = v13[4];
      v18 = v13[5];
      v30 = v13[6];
      v31 = v17;
      v28 = v19;
      v29 = v18;
      v21 = v13[9];
      v20 = v13[10];
      v22 = v13[8];
      *&v35[0] = *(v13 + 22);
      v33 = v21;
      v34 = v20;
      v32 = v22;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *&v35[0] = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    if ([v8 length] >= 0x10)
    {
      *(v35 + 8) = *[v8 bytes];
LABEL_11:
      v9 = *(a1 + 32);
      v10 = &v23;
      v11 = 0;
      v12 = 13;
      goto LABEL_12;
    }

LABEL_10:
    *&v35[1] = 0;
    goto LABEL_11;
  }

  v9 = *(a1 + 32);
  memset(v54, 0, 512);
  v10 = v54;
  v11 = a2;
  v12 = 2;
LABEL_12:
  sub_10002A3C0(v9, v11, v12, v10);
}

uint64_t lifs_setattr_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v6 = [NSData dataWithBytes:a4 length:184];
  v20 = 0;
  v21 = 0;
  v7 = lifs_to_livefh(a3, &v21 + 1, &v20, &v21, 0);
  v8 = v20;
  v9 = v8;
  if (!v8)
  {
    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100038FFC(&v21 + 1);
    }

    v13 = v21;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = a2;
    goto LABEL_10;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100031F2C;
  v18[3] = &unk_100061B10;
  v19 = HIDWORD(v21);
  v18[4] = a2;
  v10 = [v8 fsObjWithErrorHandler:v18];
  if (!v10)
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100038F88(&v21 + 1);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = a2;
    v13 = 5;
LABEL_10:
    sub_10002A3C0(v14, v13, 2, &v22);
    goto LABEL_11;
  }

  v11 = v10;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100032020;
  v17[3] = &unk_100061CC8;
  v17[4] = a2;
  [v10 setFileAttributesOf:v7 to:v6 requestID:a2 reply:v17];

LABEL_11:
  return 0;
}

void sub_100031F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100039070(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100032020(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (!a2)
  {
    if (v7 && [v7 length] >= 0xB8)
    {
      v13 = [v7 bytes];
      v14 = v13[3];
      v16 = *v13;
      v15 = v13[1];
      v26 = v13[2];
      v27 = v14;
      v24 = v16;
      v25 = v15;
      v17 = v13[7];
      v19 = v13[4];
      v18 = v13[5];
      v30 = v13[6];
      v31 = v17;
      v28 = v19;
      v29 = v18;
      v21 = v13[9];
      v20 = v13[10];
      v22 = v13[8];
      *&v35[0] = *(v13 + 22);
      v33 = v21;
      v34 = v20;
      v32 = v22;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *&v35[0] = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    if ([v8 length] >= 0x10)
    {
      *(v35 + 8) = *[v8 bytes];
LABEL_11:
      v9 = *(a1 + 32);
      v10 = &v23;
      v11 = 0;
      v12 = 14;
      goto LABEL_12;
    }

LABEL_10:
    *&v35[1] = 0;
    goto LABEL_11;
  }

  v9 = *(a1 + 32);
  memset(v54, 0, 512);
  v10 = v54;
  v11 = a2;
  v12 = 2;
LABEL_12:
  sub_10002A3C0(v9, v11, v12, v10);
}

uint64_t lifs_getattr_send(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v19 = 0;
  v20 = 0;
  v4 = lifs_to_livefh(a3, &v20 + 1, &v19, &v20, 1);
  v5 = v19;
  v6 = v5;
  v7 = v20;
  if (!v4 && !v20)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    [v5 copyDisconnectedRootAttrs:&v22];
    v8 = a2;
    v9 = 0;
    v10 = 15;
LABEL_14:
    sub_10002A3C0(v8, v9, v10, &v21);
    goto LABEL_15;
  }

  if (!v5)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100039160(&v20 + 1);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = a2;
    v9 = v7;
    goto LABEL_13;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100032544;
  v17[3] = &unk_100061B10;
  v18 = HIDWORD(v20);
  v17[4] = a2;
  v11 = [v5 fsObjWithErrorHandler:v17];
  if (!v11)
  {
    v14 = livefs_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000390EC(&v20 + 1);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = a2;
    v9 = 5;
LABEL_13:
    v10 = 2;
    goto LABEL_14;
  }

  v12 = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100032638;
  v16[3] = &unk_100061B30;
  v16[4] = a2;
  [v11 fileAttributes:v4 requestID:a2 reply:v16];

LABEL_15:
  return 0;
}

void sub_100032544(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000391D4(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100032638(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0uLL;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (!a2)
  {
    if (v5)
    {
      if ([v5 length] > 0xB7)
      {
        v12 = [v6 bytes];
        v13 = v12[3];
        v15 = *v12;
        v14 = v12[1];
        v25 = v12[2];
        v26 = v13;
        v23 = v15;
        v24 = v14;
        v16 = v12[7];
        v18 = v12[4];
        v17 = v12[5];
        v29 = v12[6];
        v30 = v16;
        v27 = v18;
        v28 = v17;
        v20 = v12[9];
        v19 = v12[10];
        v21 = v12[8];
        *&v34 = *(v12 + 22);
        v32 = v20;
        v33 = v19;
        v31 = v21;
        v8 = *(a1 + 32);
        v9 = &v22;
        v10 = 0;
        v11 = 15;
        goto LABEL_3;
      }

      a2 = 96;
      v7 = 0uLL;
    }

    else
    {
      a2 = 96;
    }
  }

  v8 = *(a1 + 32);
  v54[31] = v7;
  v54[30] = v7;
  v54[29] = v7;
  v54[28] = v7;
  v54[27] = v7;
  v54[26] = v7;
  v54[25] = v7;
  v54[24] = v7;
  v54[23] = v7;
  v54[22] = v7;
  v54[21] = v7;
  v54[20] = v7;
  v54[19] = v7;
  v54[18] = v7;
  v54[17] = v7;
  v54[16] = v7;
  v54[15] = v7;
  v54[14] = v7;
  v54[13] = v7;
  v54[12] = v7;
  v54[11] = v7;
  v54[10] = v7;
  v54[9] = v7;
  v54[8] = v7;
  v54[7] = v7;
  v54[6] = v7;
  v54[5] = v7;
  v54[4] = v7;
  v54[3] = v7;
  v54[2] = v7;
  v54[1] = v7;
  v54[0] = v7;
  v9 = v54;
  v10 = a2;
  v11 = 2;
LABEL_3:
  sub_10002A3C0(v8, v10, v11, v9);
}

uint64_t lifs_getattrlistbulk_send(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v29 = 0;
  v30 = 0;
  v12 = lifs_to_livefh(a4, &v30 + 1, &v29, &v30, 0);
  v13 = v29;
  v14 = v13;
  if (v13)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100032BBC;
    v27[3] = &unk_100061B10;
    v28 = HIDWORD(v30);
    v27[4] = a2;
    v15 = [v13 fsObjWithErrorHandler:v27];
    if (v15)
    {
      *&v31 = 0;
      *(&v31 + 1) = &v31;
      *&v32 = 0x43010000000;
      *(&v32 + 1) = &unk_100055C71;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = &v33;
      v16 = [LiveFSSharedMutableBuffer dataWithLength:a5];
      v17 = [v16 mutableBytes];
      *(v24[3] + 40) = v17;
      [v16 detachBytes];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100032CB0;
      v21[3] = &unk_100061CF0;
      v21[4] = &v23;
      v21[5] = &v31;
      v21[6] = a2;
      v22 = a5;
      [v15 readDirectory:v12 intoBuffer:v16 requestedAttributes:a7 | 0x100 cookie:a3 verifier:a6 requestID:a2 reply:v21];

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(&v31, 8);
    }

    else
    {
      v19 = livefs_std_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100039250(&v30 + 1);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      sub_10002A3C0(a2, 5, 2, &v31);
    }
  }

  else
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000392C4(&v30 + 1);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    sub_10002A3C0(a2, v30, 2, &v31);
  }

  return 0;
}

void sub_100032B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_100032BBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100039338(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

uint64_t sub_100032CB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) = *(*(a1 + 40) + 8) + 32;
  if (a2 < 0)
  {
    if (a2 == -1002)
    {
      a2 = 22;
    }

    else if (a2 == -1001)
    {
      if (!a3)
      {
        *(*(*(*(a1 + 32) + 8) + 24) + 16) = -1;
      }

      goto LABEL_8;
    }

LABEL_10:
    v5 = *(a1 + 48);
    memset(v9, 0, 512);
    v6 = v9;
    v7 = 2;
    goto LABEL_11;
  }

  if (a2)
  {
    goto LABEL_10;
  }

LABEL_8:
  *(*(*(*(a1 + 32) + 8) + 24) + 24) = a4;
  *(*(*(*(a1 + 32) + 8) + 24) + 32) = a3;
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  a2 = 0;
  v7 = 16;
LABEL_11:
  sub_10002A3C0(v5, a2, v7, v6);
  return vm_deallocate(mach_task_self_, *(*(*(*(a1 + 32) + 8) + 24) + 40), *(a1 + 56));
}

uint64_t lifs_write_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const void *a5, unsigned int a6)
{
  v27 = 0;
  v28 = 0;
  v10 = lifs_to_livefh(a3, &v28 + 1, &v27, &v28, 0);
  v11 = v27;
  v12 = v11;
  if (!v11)
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000394A8(&v28 + 1);
    }

    v19 = v28;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = a2;
    goto LABEL_11;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100033184;
  v25[3] = &unk_100061B10;
  v26 = HIDWORD(v28);
  v25[4] = a2;
  v13 = [v11 fsObjWithErrorHandler:v25];
  if (!v13)
  {
    v21 = livefs_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100039434(&v28 + 1);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = a2;
    v19 = 5;
LABEL_11:
    sub_10002A3C0(v20, v19, 2, &v29);
    goto LABEL_16;
  }

  v14 = v13;
  v15 = dispatch_get_global_queue(0, 0);
  v16 = dispatch_data_create(a5, a6, v15, _dispatch_data_destructor_munmap);

  if (v16)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100033278;
    v24[3] = &unk_100061D30;
    v24[4] = a2;
    v17 = v16;
    [v14 writeTo:v10 atOffset:a4 fromBuffer:v17 requestID:a2 reply:v24];
  }

  else
  {
    v22 = livefs_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000393B4();
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    sub_10002A3C0(a2, 12, 2, &v29);
  }

LABEL_16:
  return 0;
}

void sub_100033184(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003951C(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100033278(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  if (!a2)
  {
    LODWORD(v20[1]) = a3;
    if (v9 && [v9 length] >= 0x10)
    {
      *(&v20[1] + 8) = *[v9 bytes];
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *&v20[2] = 0;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    if ([v10 length] >= 0x58)
    {
      v15 = [v10 bytes];
      v16 = v15[1];
      *(&v20[2] + 8) = *v15;
      *(&v20[3] + 8) = v16;
      v18 = v15[3];
      v17 = v15[4];
      v19 = *(v15 + 10);
      *(&v20[4] + 8) = v15[2];
      *(&v20[7] + 1) = v19;
      *(&v20[6] + 8) = v17;
      *(&v20[5] + 8) = v18;
LABEL_11:
      v11 = *(a1 + 32);
      v12 = v20;
      v13 = 0;
      v14 = 17;
      goto LABEL_12;
    }

LABEL_10:
    *(&v20[2] + 1) = 0;
    goto LABEL_11;
  }

  v11 = *(a1 + 32);
  memset(v45, 0, 512);
  v12 = v45;
  v13 = a2;
  v14 = 2;
LABEL_12:
  sub_10002A3C0(v11, v13, v14, v12);
}

uint64_t lifs_write_wrapped_send(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v12 = dispatch_semaphore_create(0);
  v30 = 0;
  v29 = 0;
  v13 = lifs_to_livefh(a2, &v30, &v29, a7, 0);
  v14 = v29;
  v15 = v14;
  if (v13 && v14)
  {
    *a7 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100033680;
    v26[3] = &unk_100061D58;
    v28 = a7;
    v16 = v12;
    v27 = v16;
    v17 = [v15 fsObjWithErrorHandler:v26];
    v18 = [LiveFSSharedMutableBuffer newByCopyingPort:a5];
    if (v18)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100033694;
      v22[3] = &unk_100061D80;
      v24 = a7;
      v25 = a6;
      v19 = v16;
      v23 = v19;
      [v17 writeTo:v13 atOffset:a3 sharedBuffer:v18 requestID:-1 reply:v22];
      v20 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v19, v20))
      {
        *a7 = 60;
      }
    }

    else
    {
      *a7 = 12;
    }
  }

  else
  {
    *a7 = 70;
  }

  return 0;
}

intptr_t sub_100033694(uint64_t a1, int a2, int a3)
{
  **(a1 + 40) = a2;
  if (!a2)
  {
    **(a1 + 48) = a3;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t lifs_read_send(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4, uint64_t a5)
{
  v25 = 0;
  v26 = 0;
  v8 = lifs_to_livefh(a3, &v26 + 1, &v25, &v26, 0);
  v9 = v25;
  v10 = v9;
  if (v9)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100033A4C;
    v23[3] = &unk_100061B10;
    v24 = HIDWORD(v26);
    v23[4] = a2;
    v11 = [v9 fsObjWithErrorHandler:v23];
    if (v11)
    {
      *&v27 = 0;
      *(&v27 + 1) = &v27;
      *&v28 = 0x43010000000;
      *(&v28 + 1) = &unk_100055C71;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = &v29;
      v12 = [LiveFSSharedMutableBuffer dataWithLength:a4];
      v13 = [v12 mutableBytes];
      *(v20[3] + 24) = v13;
      [v12 detachBytes];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100033B40;
      v17[3] = &unk_100061DA8;
      v17[4] = &v19;
      v17[5] = &v27;
      v17[6] = a2;
      v18 = a4;
      [v11 readFrom:v8 atOffset:a5 intoBuffer:v12 requestID:a2 reply:v17];

      _Block_object_dispose(&v19, 8);
      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v15 = livefs_std_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100039598(&v26 + 1);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      sub_10002A3C0(a2, 5, 2, &v27);
    }
  }

  else
  {
    v14 = livefs_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003960C(&v26 + 1);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    sub_10002A3C0(a2, v26, 2, &v27);
  }

  return 0;
}

void sub_100033A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100033A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100039680(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100033B40(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  *(*(*(a1 + 32) + 8) + 24) = *(*(a1 + 40) + 8) + 32;
  if (a2)
  {
    v9 = *(a1 + 48);
    memset(v19, 0, 512);
    v10 = v19;
    v11 = a2;
    v12 = 2;
  }

  else
  {
    *(*(*(*(a1 + 32) + 8) + 24) + 16) = a3;
    if (v7 && [v7 length] >= 0x58)
    {
      v13 = *(*(*(a1 + 32) + 8) + 24);
      v14 = [v8 bytes];
      v15 = v14[1];
      *(v13 + 32) = *v14;
      *(v13 + 48) = v15;
      v17 = v14[3];
      v16 = v14[4];
      v18 = v14[2];
      *(v13 + 112) = *(v14 + 10);
      *(v13 + 80) = v17;
      *(v13 + 96) = v16;
      *(v13 + 64) = v18;
    }

    else
    {
      *(*(*(*(a1 + 32) + 8) + 24) + 32) = 0;
    }

    v9 = *(a1 + 48);
    v10 = *(*(*(a1 + 32) + 8) + 24);
    v11 = 0;
    v12 = 19;
  }

  sub_10002A3C0(v9, v11, v12, v10);
  vm_deallocate(mach_task_self_, *(*(*(*(a1 + 32) + 8) + 24) + 24), *(a1 + 56));
}

uint64_t lifs_read_wrapped_send(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v12 = dispatch_semaphore_create(0);
  v30 = 0;
  v29 = 0;
  v13 = lifs_to_livefh(a2, &v30, &v29, a7, 0);
  v14 = v29;
  v15 = v14;
  if (v13 && v14)
  {
    *a7 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100033EE0;
    v26[3] = &unk_100061D58;
    v28 = a7;
    v16 = v12;
    v27 = v16;
    v17 = [v15 fsObjWithErrorHandler:v26];
    v18 = [LiveFSSharedMutableBuffer newByCopyingPort:a5];
    if (v18)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100033EF4;
      v22[3] = &unk_100061DD0;
      v24 = a7;
      v25 = a6;
      v19 = v16;
      v23 = v19;
      [v17 readFrom:v13 atOffset:a3 intoBuffer:v18 requestID:-1 reply:v22];
      v20 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v19, v20))
      {
        *a7 = 60;
      }
    }

    else
    {
      *a7 = 12;
    }
  }

  else
  {
    *a7 = 70;
  }

  return 0;
}

intptr_t sub_100033EF4(uint64_t a1, int a2, int a3)
{
  **(a1 + 40) = a2;
  if (!a2)
  {
    **(a1 + 48) = a3;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t lifs_pathconf_send(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v18 = 0;
  v19 = 0;
  v4 = lifs_to_livefh(a3, &v19 + 1, &v18, &v19, 0);
  v5 = v18;
  v6 = v5;
  if (!v5)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100039770(&v19 + 1);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = a2;
    v12 = 22;
    goto LABEL_10;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000341A0;
  v16[3] = &unk_100061B10;
  v17 = HIDWORD(v19);
  v16[4] = a2;
  v7 = [v5 fsSynchObjWithErrorHandler:v16];
  if (!v7)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000396FC(&v19 + 1);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = a2;
    v12 = 5;
LABEL_10:
    sub_10002A3C0(v11, v12, 2, &v20);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v6 rootLIFileHandle];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100034294;
  v15[3] = &unk_100061B30;
  v15[4] = a2;
  [v8 pathConfiguration:v9 requestID:a2 reply:v15];

LABEL_11:
  return 0;
}

void sub_1000341A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000397E4(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100034294(uint64_t a1, int a2, id a3)
{
  v6 = a3;
  v7 = [a3 bytes];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (a2)
  {
    v8 = *(a1 + 32);
    memset(v46, 0, 512);
    v9 = v46;
    v10 = a2;
    v11 = 2;
  }

  else
  {
    v12 = v7[1];
    LODWORD(v15) = *v7;
    v13 = *(v7 + 12);
    DWORD1(v15) = v12;
    DWORD2(v15) = (v13 >> 1) & 1;
    HIDWORD(v15) = v13 & 1;
    LODWORD(v16) = (v13 & 4) == 0;
    *(&v16 + 4) = __PAIR64__(v7[2], (v13 >> 3) & 1);
    v8 = *(a1 + 32);
    v9 = &v14;
    v10 = 0;
    v11 = 21;
  }

  sub_10002A3C0(v8, v10, v11, v9);
}

uint64_t lifs_reclaim_send(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v17 = 0;
  v18 = 0;
  v4 = lifs_to_livefh(a3, &v18 + 1, &v17, &v18, 1);
  v5 = v17;
  v6 = v5;
  if (!v5)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "lifs_reclaim_send";
      *&buf[12] = 1024;
      *&buf[14] = HIDWORD(v18);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Unable to find entry for index %u", buf, 0x12u);
    }

    v10 = v18;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    memset(buf, 0, sizeof(buf));
    v11 = a2;
    goto LABEL_10;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100034718;
  v15[3] = &unk_100061DF0;
  v16 = HIDWORD(v18);
  v7 = [v5 fsObjWithErrorHandler:v15];
  if (!v7)
  {
    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "lifs_reclaim_send";
      *&buf[12] = 1024;
      *&buf[14] = HIDWORD(v18);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Unable to get fsobj for idx %u", buf, 0x12u);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    memset(buf, 0, sizeof(buf));
    v11 = a2;
    v10 = 5;
LABEL_10:
    sub_10002A3C0(v11, v10, 2, buf);
    goto LABEL_11;
  }

  v8 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003477C;
  v14[3] = &unk_100061B30;
  v14[4] = a2;
  [v7 reclaim:v4 requestID:a2 reply:v14];

LABEL_11:
  return 0;
}

void sub_100034718(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100039860(a1);
  }
}

void sub_10003477C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (a2)
  {
    v7 = *(a1 + 32);
    memset(v43, 0, 512);
    v8 = v43;
    v9 = a2;
    v10 = 2;
  }

  else
  {
    if (v5 && [v5 length] >= 0x10)
    {
      v12 = *[v6 bytes];
    }

    else
    {
      *(&v12 + 1) = 0;
    }

    v7 = *(a1 + 32);
    v8 = &v11;
    v9 = 0;
    v10 = 42;
  }

  sub_10002A3C0(v7, v9, v10, v8);
}

uint64_t lifs_access_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  v6 = lifs_to_livefh(a3, &v20 + 1, &v19, &v20, 1);
  v7 = v19;
  v8 = v7;
  if (!v7)
  {
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "lifs_access_send";
      *&buf[12] = 1024;
      *&buf[14] = HIDWORD(v20);
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Unable to find entry for index %u", buf, 0x12u);
    }

    v12 = v20;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    memset(buf, 0, sizeof(buf));
    v13 = a2;
    goto LABEL_10;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100034C10;
  v17[3] = &unk_100061B10;
  v18 = HIDWORD(v20);
  v17[4] = a2;
  v9 = [v7 fsObjWithErrorHandler:v17];
  if (!v9)
  {
    v14 = livefs_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "lifs_access_send";
      *&buf[12] = 1024;
      *&buf[14] = HIDWORD(v20);
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: Unable to get fsobj for idx %u", buf, 0x12u);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    memset(buf, 0, sizeof(buf));
    v13 = a2;
    v12 = 5;
LABEL_10:
    sub_10002A3C0(v13, v12, 2, buf);
    goto LABEL_11;
  }

  v10 = v9;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100034D04;
  v16[3] = &unk_100061C88;
  v16[4] = a2;
  [v9 checkAccessTo:v6 requestedAccess:a4 requestID:a2 reply:v16];

LABEL_11:
  return 0;
}

void sub_100034C10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000398E0(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100034D04(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  memset(v3, 0, 512);
  sub_10002A3C0(v2, a2, 2, v3);
}

uint64_t lifs_getxattr_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, int a6)
{
  v25 = 0;
  v26 = 0;
  v10 = lifs_to_livefh(a3, &v26 + 1, &v25, &v26, 0);
  v11 = v25;
  v12 = v11;
  if (!v11)
  {
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100039A44(&v26 + 1);
    }

    v17 = v26;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = a2;
    goto LABEL_13;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000350E8;
  v23[3] = &unk_100061B10;
  v24 = HIDWORD(v26);
  v23[4] = a2;
  v13 = [v11 fsObjWithErrorHandler:v23];
  if (!v13)
  {
    v19 = livefs_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000399D0(&v26 + 1);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = a2;
    v17 = 5;
LABEL_13:
    sub_10002A3C0(v18, v17, 2, &v27);
    goto LABEL_16;
  }

  v14 = v13;
  if (a6)
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003995C();
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    sub_10002A3C0(a2, 22, 2, &v27);
  }

  else
  {
    v20 = [FSFileName nameWithCString:a4];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000351DC;
    v22[3] = &unk_100061E10;
    v22[4] = a2;
    v22[5] = a5;
    [v14 xattrOf:v10 named:v20 requestID:a2 reply:v22];
  }

LABEL_16:
  return 0;
}

void sub_1000350E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100039AB8(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_1000351DC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (a2)
  {
    v7 = *(a1 + 32);
    memset(v45, 0, 512);
    v8 = v45;
    v9 = a2;
    v10 = 2;
  }

  else
  {
    *&v14 = [v5 length];
    v11 = [v6 length];
    v12 = *(a1 + 40);
    if (v11 < v12)
    {
      v12 = v11;
    }

    *(&v14 + 1) = v12;
    *&v15 = [v6 bytes];
    v7 = *(a1 + 32);
    v8 = &v13;
    v9 = 0;
    v10 = 24;
  }

  sub_10002A3C0(v7, v9, v10, v8);
}

uint64_t lifs_setxattr_small_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8)
{
  if (a6 < 0x401)
  {
    sub_10003544C(a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    memset(v9, 0, 512);
    sub_10002A3C0(a2, 22, 2, v9);
  }

  return 0;
}

void sub_10003544C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v28 = 0;
  v29 = 0;
  v13 = lifs_to_livefh(a2, &v29 + 1, &v28, &v29, 0);
  v14 = v28;
  v15 = v14;
  if (!v14)
  {
    v19 = livefs_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100039C1C(&v29 + 1);
    }

    v20 = v29;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = a1;
    goto LABEL_13;
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100036F68;
  v26[3] = &unk_100061B10;
  v27 = HIDWORD(v29);
  v26[4] = a1;
  v16 = [v14 fsObjWithErrorHandler:v26];
  if (!v16)
  {
    v22 = livefs_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100039BA8(&v29 + 1);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = a1;
    v20 = 5;
LABEL_13:
    sub_10002A3C0(v21, v20, 2, &v30);
    goto LABEL_19;
  }

  v17 = v16;
  if (a6)
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100039B34();
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    sub_10002A3C0(a1, 22, 2, &v30);
  }

  else
  {
    if (a4)
    {
      v23 = [NSData dataWithBytes:a4 length:a5];
    }

    else
    {
      v23 = 0;
    }

    v24 = [FSFileName nameWithCString:a3];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10003705C;
    v25[3] = &unk_100061C88;
    v25[4] = a1;
    [v17 setXattrOf:v13 named:v24 value:v23 how:a7 requestID:a1 reply:v25];
  }

LABEL_19:
}

uint64_t lifs_setxattr_large_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, vm_address_t a5, unsigned int a6, int a7, uint64_t a8)
{
  LODWORD(v8) = a6;
  if (a6 <= 0x40000)
  {
    v8 = a6;
    sub_10003544C(a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    memset(v11, 0, 512);
    sub_10002A3C0(a2, 22, 2, v11);
    v8 = v8;
  }

  vm_deallocate(mach_task_self_, a5, v8);
  return 0;
}

uint64_t lifs_listxattr_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  v6 = lifs_to_livefh(a3, &v20 + 1, &v19, &v20, 0);
  v7 = v19;
  v8 = v7;
  if (!v7)
  {
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100039D04(&v20 + 1);
    }

    v12 = v20;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = a2;
    goto LABEL_10;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100035B88;
  v17[3] = &unk_100061B10;
  v18 = HIDWORD(v20);
  v17[4] = a2;
  v9 = [v7 fsObjWithErrorHandler:v17];
  if (!v9)
  {
    v14 = livefs_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100039C90(&v20 + 1);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = a2;
    v12 = 5;
LABEL_10:
    sub_10002A3C0(v13, v12, 2, &v21);
    goto LABEL_11;
  }

  v10 = v9;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100035C7C;
  v16[3] = &unk_100061E30;
  v16[4] = a2;
  v16[5] = a4;
  [v9 listXattrsOf:v6 requestID:a2 reply:v16];

LABEL_11:
  return 0;
}

void sub_100035B88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100039D78(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100035C7C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (a2 || !v5)
  {
    sub_10002A3C0(*(a1 + 32), a2, 24, &v22);
  }

  else
  {
    v7 = [v5 count];
    v8 = v7;
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = [v6 objectAtIndex:v9];

        v11 += [v12 lengthOfBytesUsingEncoding:4] + 1;
        ++v9;
        v10 = v12;
      }

      while (v8 != v9);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    if (v11 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11;
    }

    v14 = malloc_type_malloc(v13, 0xC15DBA9EuLL);
    if (v14)
    {
      v15 = v14;
      if (v8)
      {
        v16 = 0;
        v17 = v14;
        do
        {
          v18 = [v6 objectAtIndex:v16];

          strcpy(v17, [v18 UTF8String]);
          v19 = [v18 lengthOfBytesUsingEncoding:4] + v17;
          *v19 = 0;
          v17 = v19 + 1;
          ++v16;
          v12 = v18;
        }

        while (v8 != v16);
      }

      else
      {
        v18 = v12;
      }

      v21 = *(a1 + 40);
      if (v21 >= v11)
      {
        v21 = v11;
      }

      *&v23 = v11;
      *(&v23 + 1) = v21;
      *&v24 = v15;

      sub_10002A3C0(*(a1 + 32), 0, 24, &v22);
      free(v15);
    }

    else
    {
      v20 = *(a1 + 32);
      memset(v54, 0, 512);
      sub_10002A3C0(v20, 12, 2, v54);
    }
  }
}

uint64_t lifs_get_volume_port_send(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v17 = 0;
  v18 = 0;
  v4 = lifs_to_livefh(a3, &v18 + 1, &v17, &v18, 0);
  v5 = v17;
  v6 = v5;
  if (!v5)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100039E68(&v18 + 1);
    }

    v10 = v18;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = a2;
    goto LABEL_10;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000361B0;
  v15[3] = &unk_100061B10;
  v16 = HIDWORD(v18);
  v15[4] = a2;
  v7 = [v5 fsObjWithErrorHandler:v15];
  if (!v7)
  {
    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100039DF4(&v18 + 1);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = a2;
    v10 = 5;
LABEL_10:
    sub_10002A3C0(v11, v10, 2, &v19);
    goto LABEL_11;
  }

  v8 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000362A4;
  v14[3] = &unk_100061E50;
  v14[4] = a2;
  [v7 fetchVolumeMachPortLabeled:FSKitVolumeMachPortForKernelMount requestID:a2 reply:v14];

LABEL_11:
  return 0;
}

void sub_1000361B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100039EDC(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_1000362A4(uint64_t a1, int a2, void *a3)
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if (a2)
  {
    v4 = *(a1 + 32);
    memset(v39, 0, 512);
    v5 = v39;
    v6 = 2;
  }

  else
  {
    LODWORD(v8) = [a3 machPort];
    v4 = *(a1 + 32);
    v5 = &v7;
    a2 = 0;
    v6 = 30;
  }

  sub_10002A3C0(v4, a2, v6, v5);
}

uint64_t lifs_blockmap_file_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v26 = 0;
  v27 = 0;
  v12 = lifs_to_livefh(a3, &v27 + 1, &v26, &v27, 0);
  v13 = v26;
  v14 = v13;
  if (!v13)
  {
    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100039FCC(&v27 + 1);
    }

    v18 = v27;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v28 = 0u;
    v19 = a2;
    goto LABEL_10;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000366A8;
  v24[3] = &unk_100061B10;
  v25 = HIDWORD(v27);
  v24[4] = a2;
  v15 = [v13 fsObjWithErrorHandler:v24];
  if (!v15)
  {
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100039F58(&v27 + 1);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v28 = 0u;
    v19 = a2;
    v18 = 5;
LABEL_10:
    sub_10002A3C0(v19, v18, 2, &v28);
    goto LABEL_11;
  }

  v16 = v15;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003679C;
  v22[3] = &unk_100061E70;
  v23 = a6;
  v22[4] = a7;
  v22[5] = a2;
  [v15 blockmapFile:v12 range:a4 flags:a5 operationID:a6 reply:{a7, v22}];

LABEL_11:
  return 0;
}

void sub_1000366A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003A040(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10003679C(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v40 = 0u;
  memset(v41, 0, sizeof(v41));
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (a2)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003A0BC(a1);
    }

    v10 = *(a1 + 40);
    memset(v47, 0, 512);
    v11 = v47;
    v12 = a2;
    v13 = 2;
  }

  else
  {
    if (v7)
    {
      v14 = [v7 length] / 0x18;
      if (v14 >= 0x10)
      {
        v15 = 16;
      }

      else
      {
        v15 = v14;
      }

      LODWORD(v41[0]) = v15;
      [v7 bytes];
      __memcpy_chk();
    }

    if (v8 && [v8 length] >= 0x10)
    {
      *(v41 + 8) = *[v8 bytes];
    }

    else
    {
      *&v41[1] = 0;
    }

    v10 = *(a1 + 40);
    v11 = &v16;
    v12 = 0;
    v13 = 31;
  }

  sub_10002A3C0(v10, v12, v13, v11);
}

uint64_t lifs_endio_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 0;
  v30 = 0;
  v14 = lifs_to_livefh(a3, &v30 + 1, &v29, &v30, 0);
  v15 = v29;
  v16 = v15;
  if (!v15)
  {
    v19 = livefs_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10003A1D4(&v30 + 1);
    }

    v20 = v30;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v31 = 0u;
    v21 = a2;
    goto LABEL_10;
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100036C8C;
  v27[3] = &unk_100061B10;
  v28 = HIDWORD(v30);
  v27[4] = a2;
  v17 = [v15 fsObjWithErrorHandler:v27];
  if (!v17)
  {
    v22 = livefs_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10003A160(&v30 + 1);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v31 = 0u;
    v21 = a2;
    v20 = 5;
LABEL_10:
    sub_10002A3C0(v21, v20, 2, &v31);
    goto LABEL_11;
  }

  v18 = v17;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100036D80;
  v24[3] = &unk_100061E90;
  v25 = a6;
  v26 = a7;
  v24[4] = a8;
  v24[5] = a2;
  [v17 endIO:v14 range:a4 status:a5 flags:a6 operationID:a7 reply:{a8, v24}];

LABEL_11:
  return 0;
}

void sub_100036C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003A248(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_100036D80(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (a2)
  {
    v7 = livefs_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003A2C4(a1);
    }

    v8 = *(a1 + 40);
    memset(v49, 0, 512);
    v9 = v49;
    v10 = a2;
    v11 = 2;
  }

  else
  {
    if (v5 && [v5 length] >= 0x58)
    {
      v12 = [v6 bytes];
      v13 = v12[1];
      v18 = *v12;
      v19 = v13;
      v15 = v12[3];
      v14 = v12[4];
      v16 = v12[2];
      *&v23 = *(v12 + 10);
      v21 = v15;
      v22 = v14;
      v20 = v16;
    }

    else
    {
      *&v18 = 0;
    }

    v8 = *(a1 + 40);
    v9 = &v17;
    v10 = 0;
    v11 = 44;
  }

  sub_10002A3C0(v8, v10, v11, v9);
}

void sub_100036F68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003A370(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10003705C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  memset(v3, 0, 512);
  sub_10002A3C0(v2, a2, 2, v3);
}

void sub_100037148(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

unsigned int *sub_100037164@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t sub_100037170@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void sub_1000371AC()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100037268()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100037324()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000373DC()
{
  sub_100003800();
  sub_100037138();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100037458(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error %@ forgetting volume %@", buf, 0x16u);
}

void sub_1000374C0()
{
  sub_100003800();
  sub_100037138();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003753C(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_1000375B0(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100037624(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000376A0(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100037714(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100037788(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100037884(void *a1)
{
  [a1 length];
  sub_100037198();
  sub_10000FE74(&_mh_execute_header, v1, v2, "%s: Got NSData too small for BOOL: %lu", v3, v4, v5, v6, 2u);
}

void sub_100037908(void *a1)
{
  [a1 length];
  sub_100037198();
  sub_10000FE74(&_mh_execute_header, v1, v2, "%s: Got NSData too small for number: %lu", v3, v4, v5, v6, 2u);
}

void sub_100037A0C(os_log_t log)
{
  v1 = 136315138;
  v2 = "lifs_setfsattr_send";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: sync is async", &v1, 0xCu);
}

void sub_100037A90(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100037B04(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100037B78(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100037BF4(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100037C68(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100037CDC(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100037D58(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100037DCC(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100037E40(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100037EBC(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100037F30(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100037FA4(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100038108(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100038184(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_1000381F8(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_10003826C(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000382E8(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_10003835C(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_1000383D0(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003844C(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_1000384C0(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100038534(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000385B0(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10003717C();
  sub_100037138();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x18u);
}

void sub_100038630(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_1000386A4(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100038718(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100038794(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100038808(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_10003887C(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000388F8(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_10003896C(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_1000389E0(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100038A5C(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100038AD0(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100038B44(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100038BC0(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100038C34(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100038CA8(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100038DA4(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10003717C();
  sub_100037138();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x18u);
}

void sub_100038E24(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100038E98(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100038F0C(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100038F88(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100038FFC(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100039070(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000390EC(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100039160(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_1000391D4(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100039250(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_1000392C4(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100039338(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100039434(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_1000394A8(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_10003951C(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100039598(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_10003960C(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100039680(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000396FC(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100039770(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_1000397E4(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100039860(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000398E0(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000399D0(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100039A44(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100039AB8(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100039BA8(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100039C1C(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100039C90(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100039D04(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100039D78(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100039DF4(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100039E68(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_100039EDC(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100039F58(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_100039FCC(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_10003A040(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003A0BC(uint64_t a1)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_10003A160(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to get fsobj for idx %u", v3, v4, v5, v6, 2u);
}

void sub_10003A1D4(unsigned int *a1)
{
  sub_100037164(a1, __stack_chk_guard);
  sub_100037124();
  sub_100037148(&_mh_execute_header, v1, v2, "%s: Unable to find entry for index %u", v3, v4, v5, v6, 2u);
}

void sub_10003A248(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003A2C4(uint64_t a1)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 52);
  v8 = *(a1 + 32);
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void sub_10003A370(uint64_t a1)
{
  sub_100037170(a1, __stack_chk_guard);
  sub_100037104();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003A7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003A7E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003A800(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10003AA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10003AA9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10003B1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10003B1DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10003C124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose((v39 - 160), 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_10003C194(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_10003C21C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10003C2AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_10003CDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Block_object_dispose((v32 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_10003CE28(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = livefs_std_log();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Got connection", buf, 2u);
    }

    if (*(a1 + 56) == 1)
    {
      +[FSKitConstants FSVolumeXPCProtocol];
    }

    else
    {
      +[LiveFSClient interfaceForListeners];
    }
    v10 = ;
    [v6 setRemoteObjectInterface:v10];

    objc_storeStrong((*(a1 + 40) + 152), a2);
    objc_initWeak(buf, *(a1 + 40));
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003D0B8;
    v18[3] = &unk_1000609A0;
    objc_copyWeak(&v19, buf);
    [v6 setInterruptionHandler:v18];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10003D0FC;
    v16 = &unk_1000609A0;
    objc_copyWeak(&v17, buf);
    [v6 setInvalidationHandler:&v13];
    v11 = objc_opt_new();
    v12 = [LiveFSVolumeClient exportedClientInterface:v13];
    [v6 setExportedInterface:v12];

    [v6 setExportedObject:v11];
    [v6 resume];
    dispatch_semaphore_signal(*(a1 + 32));

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100041820();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_10003D088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003D0B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleConnectionInterrupted];
    WeakRetained = v2;
  }
}

void sub_10003D0FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100041890();
  }

  if (WeakRetained)
  {
    [WeakRetained handleConnectionInvalidated];
  }
}

void sub_10003D170(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1 + 32) + 120), a2);
  if (v6)
  {
    *(*(a1 + 32) + 40) = 1;
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 32) + 120);
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got root fh %@", &v18, 0xCu);
    }
  }

  else
  {
    v10 = livefs_std_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v11)
      {
        sub_100041914();
      }

      *(*(a1 + 32) + 40) = 0;
      v12 = *(*(a1 + 40) + 8);
      v13 = v7;
      v8 = *(v12 + 40);
      *(v12 + 40) = v13;
    }

    else
    {
      if (v11)
      {
        sub_100041984();
      }

      *(*(a1 + 32) + 40) = 0;
      [*(*(a1 + 32) + 152) invalidate];
      v14 = *(a1 + 32);
      v15 = *(v14 + 152);
      *(v14 + 152) = 0;

      v16 = fs_errorForPOSIXError();
      v17 = *(*(a1 + 40) + 8);
      v8 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }
}

void sub_10003D31C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 && v5 && [v5 bytes])
  {
    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v6 bytes]);
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(*(*(a1 + 32) + 8) + 40) stringByReplacingOccurrencesOfString:@"/dev/" withString:&stru_100062B08];
    v11 = *(a1 + 32);
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000419C0();
    }

    v10 = fs_errorForPOSIXError();
    v11 = *(a1 + 40);
  }

  v13 = *(v11 + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
}

void sub_10003D41C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 && v5 && [v5 bytes])
  {
    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v6 bytes]);
    v8 = *(a1 + 32);
  }

  else
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100041A34();
    }

    v7 = fs_errorForPOSIXError();
    v8 = *(a1 + 40);
  }

  v10 = *(v8 + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void sub_10003DAC4(uint64_t a1)
{
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100041B64();
  }

  v3 = *(a1 + 32);
  if (v3[57])
  {
    [v3 setCurrentState:2];
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "xpc connection interrupted for auto eject me", v10, 2u);
    }

    v3 = *(a1 + 32);
  }

  v5 = [v3 unmount:1];
  [*(a1 + 32) removeMountTask];
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 32) + 152);
  v8 = *(a1 + 32);
  v9 = *(v8 + 152);
  *(v8 + 152) = 0;

  [v7 invalidate];
  objc_sync_exit(v6);
}

uint64_t sub_10003E80C(const char *a1, unint64_t a2, unint64_t a3)
{
  v12 = 0;
  v11 = xmmword_10004CFD8;
  if (!(a2 | a3))
  {
    return 0;
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  if (getattrlist(a1, &v11, &v7, 0x38uLL, 0))
  {
    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100042170();
    }

LABEL_9:

    return 0xFFFFFFFFLL;
  }

  if ((BYTE10(v7) & 2) == 0)
  {
    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004221C();
    }

    goto LABEL_9;
  }

  if (a2)
  {
    *a2 = DWORD2(v8);
  }

  if (!a3)
  {
    return 0;
  }

  result = 0;
  *a3 = HIDWORD(v8);
  return result;
}

void sub_10003F68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003F6C8(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100042704(a1);
  }
}

void sub_10003FD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003FDB4(void *a1)
{
  v2 = [*(a1[4] + 208) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10003FF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003FF2C(void *a1)
{
  v7 = [*(a1[4] + 208) objectEnumerator];
  do
  {
    v2 = [v7 nextObject];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    if (!v2)
    {
      break;
    }

    v5 = [*(*(a1[6] + 8) + 40) mntOn];
    v6 = [v5 isEqualToString:a1[5]];
  }

  while (!v6);
}

void sub_100040118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040130(void *a1)
{
  v2 = [*(a1[4] + 208) objectEnumerator];
  for (i = v2; ; v2 = i)
  {
    v3 = [v2 nextObject];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (!v3)
    {
      break;
    }

    v6 = [*(*(a1[7] + 8) + 40) volumeName];
    if ([v6 isEqualToString:a1[5]])
    {
      v7 = [*(*(a1[7] + 8) + 40) providerName];
      v8 = [v7 isEqualToString:a1[6]];

      if (v8)
      {
        break;
      }
    }

    else
    {
    }
  }
}

void sub_1000404EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10004051C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 208);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004066C;
  v14[3] = &unk_100062020;
  v15 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v16 = v3;
  v17 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v14];
  v5 = *(*(a1 + 32) + 208);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100040734;
  v8[3] = &unk_100062048;
  v12 = *(a1 + 72);
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v11 = v6;
  v13 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
}

void sub_10004066C(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v6 = [v11 providerName];
  if ([v6 isEqualToString:a1[4]])
  {
    v7 = [v11 volumeName];
    v8 = [v7 isEqualToString:a1[5]];

    if (!v8)
    {
      goto LABEL_5;
    }

    *a4 = 1;
    v9 = *(a1[6] + 8);
    v10 = v11;
    v6 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

LABEL_5:
}

void sub_100040734(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = v8;
  v10 = *(*(a1[7] + 8) + 40);
  if (v10)
  {
    v11 = v10 == v8;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 && [v8 currentState] <= 1)
  {
    v12 = [v9 providerName];
    v13 = [v12 isEqualToString:a1[4]];
    if (v13)
    {
      v4 = [v9 storageName];
      if ([v4 isEqualToString:a1[5]])
      {

        goto LABEL_13;
      }
    }

    v14 = [v9 mntOn];
    v15 = [v14 isEqualToString:a1[6]];

    if (!v13)
    {

      if (!v15)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (v15)
    {
LABEL_13:
      *(*(a1[8] + 8) + 24) = 1;
      *a4 = 1;
    }
  }

LABEL_14:
}

void sub_100040B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040B44(uint64_t a1)
{
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(*(a1 + 32) + 208) count]);
  v29 = v28 = a1;
  v31 = [*(*(a1 + 32) + 208) objectEnumerator];
  v2 = [v31 nextObject];
  if (v2)
  {
    v3 = v2;
    v4 = &DADiskCreateFromBSDName_ptr;
    v5 = &DADiskCreateFromBSDName_ptr;
    do
    {
      v6 = [v3 volumeName];
      if (v6)
      {
        v7 = v6;
        if ([v3 currentState] == 1)
        {

LABEL_7:
          v34[0] = LiveFSMounterMountedOnKey;
          v9 = [v3 mntOn];
          v35[0] = v9;
          v34[1] = LiveFSMounterVolumeNameKey;
          v10 = [v3 volumeName];
          v35[1] = v10;
          v34[2] = LiveFSMounterVolumeProviderNameKey;
          v11 = [v3 providerName];
          v35[2] = v11;
          v34[3] = LiveFSMounterDisplayNameKey;
          v12 = [v3 displayName];
          v35[3] = v12;
          v34[4] = LiveFSMounterMountIDKey;
          v13 = [v4[248] numberWithUnsignedInt:{objc_msgSend(v3, "midx")}];
          v35[4] = v13;
          v34[5] = LiveFSMounterDomainStorageKey;
          v14 = [v3 volumeName];
          v35[5] = v14;
          v34[6] = LiveFSMounterMountStateKey;
          v15 = [v3 stateAsString];
          v35[6] = v15;
          v16 = [v5[274] dictionaryWithObjects:v35 forKeys:v34 count:7];

          v17 = [v3 domainError];

          if (v17)
          {
            v18 = objc_opt_new();
            [v18 addEntriesFromDictionary:v16];
            v32[0] = @"errorDomain";
            v30 = [v3 domainError];
            v19 = [v30 domain];
            v33[0] = v19;
            v32[1] = @"errorCode";
            v20 = [v3 domainError];
            v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 code]);
            v33[1] = v21;
            v32[2] = @"errorDescription";
            v22 = [v3 domainError];
            v23 = [v22 description];
            v33[2] = v23;
            v24 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:3];
            [v18 setValue:v24 forKey:LiveFSMounterDomainErrorKey];

            v16 = v18;
            v5 = &DADiskCreateFromBSDName_ptr;
          }

          else
          {
            v5 = &DADiskCreateFromBSDName_ptr;
          }

          [v29 addObject:v16];

          v4 = &DADiskCreateFromBSDName_ptr;
          goto LABEL_11;
        }

        v8 = *(v28 + 48);

        if (v8)
        {
          goto LABEL_7;
        }
      }

LABEL_11:
      v25 = [v31 nextObject];

      v3 = v25;
    }

    while (v25);
  }

  v26 = *(*(v28 + 40) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v29;
}

void sub_100040F8C(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [*(*(a1 + 32) + 208) allKeys];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004110C;
  v5[3] = &unk_1000620C0;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  atomic_store(*(v7 + 6) + 1, (*(a1 + 32) + 216));
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v7 + 6) + 1;
    *buf = 67109120;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Index reset to %u", buf, 8u);
  }

  _Block_object_dispose(&v6, 8);
}

void sub_1000410E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10004110C(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntValue];
  v4 = *(*(a1 + 32) + 8);
  if (result > *(v4 + 24))
  {
    *(v4 + 24) = result;
  }

  return result;
}

void sub_10004120C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a2 + 40);
  v4 = 136315650;
  v5 = "+[LIFSClientConnector getLiveFilesConnectionForProvider:volume:withHandler:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Got to end of %s, returning conn %@ error %@", &v4, 0x20u);
}

void sub_1000412AC(uint64_t a1)
{
  sub_100025444(a1, __stack_chk_guard);
  sub_1000254E4();
  sub_1000037E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004131C(uint64_t a1)
{
  sub_100025444(a1, __stack_chk_guard);
  sub_1000254E4();
  sub_1000037E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004138C(uint64_t a1)
{
  v1 = *(a1 + 45);
  sub_10000380C();
  sub_10000381C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100041410()
{
  sub_10004118C();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100041494()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100041550(uint64_t a1)
{
  sub_100025444(a1, __stack_chk_guard);
  sub_1000254E4();
  sub_10004118C();
  sub_100037138();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000415C8()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100041684()
{
  sub_10004117C();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004170C(uint64_t *a1)
{
  v6 = *a1;
  sub_10000381C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000417A8()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000417E4()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100041820()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100041890()
{
  sub_10004118C();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100041914()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100041984()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100041AA8()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100041AE4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "connect called while still building domain", buf, 2u);
}

void sub_100041B24(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "mountEntry connect woke while we are still waiting for an answer", buf, 2u);
}

void sub_100041BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  sub_100003800();
  sub_10000380C();
  sub_100037138();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100041C5C(uint64_t *a1)
{
  v1 = *a1;
  sub_1000254E4();
  sub_100037138();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100041CDC()
{
  sub_10004117C();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041D64()
{
  sub_100041158();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100041DE0()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100041E1C()
{
  *v3 = 136315650;
  sub_10004117C();
  *&v3[7] = v0;
  v3[9] = 2080;
  v4 = v1;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s:cmdParamCount:%d:options:%s", v3, 0x1Cu);
}

void sub_100041EB0()
{
  sub_100041158();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100041F2C()
{
  sub_100041158();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100041FA8()
{
  sub_10004117C();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100042028()
{
  sub_100041158();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000420A4()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000420E0(int a1)
{
  strerror(a1);
  sub_100003800();
  sub_10004116C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100042170()
{
  v5 = *__error();
  sub_10004116C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10004221C()
{
  sub_100041158();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100042298(uint64_t *a1)
{
  v1 = *a1;
  sub_100025430();
  sub_10000381C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100042318(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "[mountEntry removeMountTask]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: Removing resource (%@) from mount task", buf, 0x16u);
}

void sub_100042384(void *a1)
{
  [a1 fileSystemRepresentation];
  v1 = *__error();
  sub_10000380C();
  sub_10004116C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10004241C()
{
  sub_100003800();
  sub_10004118C();
  sub_100037138();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100042494()
{
  sub_100003800();
  sub_100037138();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100042518()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100042588(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_100025430();
  sub_1000037E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100042608(uint64_t a1)
{
  sub_100025444(a1, __stack_chk_guard);
  sub_100025430();
  sub_1000037E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100042684(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_100025430();
  sub_1000037E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100042704(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  sub_100025430();
  sub_100037138();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100042790()
{
  v0 = *__error();
  sub_10000380C();
  sub_10004116C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100042820()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t nsgetopt(void *a1, char *a2)
{
  v3 = a1;
  v4 = [v3 count];
  v5 = v4;
  if (!optreset)
  {
    v11 = *off_100068620;
    if (*off_100068620)
    {
      v9 = ++off_100068620;
      optopt = v11;
LABEL_15:
      if (v11 == 58)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  optreset = 0;
  v6 = optind;
  if (optind >= v4)
  {
    off_100068620 = 0;
  }

  else
  {
    v7 = [v3 objectAtIndexedSubscript:optind];
    off_100068620 = [v7 UTF8String];

    v6 = optind;
  }

  if (v6 < v5 && (v8 = off_100068620, *off_100068620 == 45))
  {
    v9 = off_100068620 + 2;
    off_100068620 += 2;
    v10 = v8[1];
    v11 = v10;
    optopt = v10;
    if (v10)
    {
      if (v10 != 45)
      {
        goto LABEL_15;
      }

      if (*v9)
      {
        v11 = 45;
        goto LABEL_19;
      }

      optind = v6 + 1;
      off_100068620 = &byte_100068700;
    }

    else
    {
      off_100068620 = &byte_100068700;
      v11 = 45;
      if (strchr(a2, 45))
      {
        optopt = 45;
        v9 = &byte_100068700;
LABEL_19:
        v12 = strchr(a2, v11);
        if (v12)
        {
          if (v12[1] == 58)
          {
            if (*v9)
            {
              optarg = v9;
            }

            else if (v12[2] == 58)
            {
              optarg = 0;
            }

            else
            {
              v15 = optind++;
              if (optind >= v5)
              {
                optind = v15 + 2;
                optarg = 0;
                off_100068620 = &byte_100068700;
                if (*a2 == 58)
                {
                  v11 = 58;
                  goto LABEL_39;
                }

                if (!opterr)
                {
                  goto LABEL_29;
                }

                v18 = __stderrp;
                v14 = [v3 objectAtIndexedSubscript:0];
                [v14 UTF8String];
                fprintf(v18, "%s: option requires an argument -- %c\n");
                goto LABEL_28;
              }

              v16 = [v3 objectAtIndexedSubscript:?];
              optarg = [v16 UTF8String];

              v11 = optopt;
            }

            off_100068620 = &byte_100068700;
          }

          else
          {
            optarg = 0;
            if (*v9)
            {
              goto LABEL_39;
            }
          }

          ++optind;
          goto LABEL_39;
        }

LABEL_23:
        if (!*v9)
        {
          ++optind;
        }

        if (!opterr || *a2 == 58)
        {
          goto LABEL_29;
        }

        v13 = __stderrp;
        v14 = [v3 objectAtIndexedSubscript:0];
        [v14 UTF8String];
        fprintf(v13, "%s: illegal option -- %c\n");
LABEL_28:

LABEL_29:
        v11 = 63;
        goto LABEL_39;
      }
    }
  }

  else
  {
    off_100068620 = &byte_100068700;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_39:

  return v11;
}

uint64_t lifs_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 706) >= 0xFFFFFFD8)
  {
    return *(&lifs_subsystem + 5 * (v1 - 666) + 5);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_100042C1C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v3 = result;
  v4 = result[1];
  if ((v4 - 2177) < 0xFFFFF7FF)
  {
    goto LABEL_25;
  }

  v5 = result[11];
  if (v5 > 0x400)
  {
    goto LABEL_25;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 128 < v5 || v4 < v6 + 128)
  {
    goto LABEL_25;
  }

  v8 = result + v6;
  v9 = *(v8 + 13);
  if (v9 > 0x400)
  {
    goto LABEL_25;
  }

  v10 = (v9 + 3) & 0xFFFFFFFC;
  v11 = v4 - v6;
  if (v11 - 128 < v9 || v11 != v10 + 128)
  {
    goto LABEL_25;
  }

  v13 = 1072;
  if (v4 < 0x430)
  {
    v13 = result[1];
  }

  result = memchr(result + 12, 0, v13 - 48);
  if (result && ((v14 = v8 - 1024, v15 = v8 + 56, v3 + v4 - v15 >= 1024) ? (v16 = 1024) : (v16 = v3 + v4 - v15), (result = memchr(v15, 0, v16)) != 0))
  {
    v17 = v3 + ((v4 + 3) & 0x1FFC);
    if (!*v17 && *(v17 + 1) > 0x1Fu)
    {
      v19 = *(v17 + 20);
      v20 = *(v17 + 36);
      result = lifs_mount_send(v3[3], *(v3 + 4), (v3 + 12), v15, *&v14[v10 + 1080], *&v14[v10 + 1084], &v14[v10 + 1088]);
      *(a2 + 32) = result;
      return result;
    }

    v18 = -309;
  }

  else
  {
LABEL_25:
    v18 = -304;
  }

  *(a2 + 32) = v18;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100042D94(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 108)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 108) && *(result + 112) > 0x1Fu)
    {
      v4 = *(result + 128);
      v5 = *(result + 144);
      result = lifs_unmount_send(*(result + 12), *(result + 32), *(result + 40), (result + 44));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100042E38(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 108)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 108) && *(result + 112) > 0x1Fu)
    {
      v4 = *(result + 128);
      v5 = *(result + 144);
      result = lifs_unmount2_send(*(result + 12), *(result + 32), *(result + 40), (result + 44));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100042EDC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 104)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 104) && *(result + 108) > 0x1Fu)
    {
      v4 = *(result + 124);
      v5 = *(result + 140);
      result = lifs_statfs_send(*(result + 12), *(result + 32), (result + 40));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100042F7C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v3 = result;
  v4 = result[1];
  if (v4 - 149 < 0xFFFFFFDB)
  {
    goto LABEL_10;
  }

  v5 = result[27];
  v6 = v5 <= 0x21 && v4 - 112 >= v5;
  v7 = ((v5 + 3) & 0x7C) + 112;
  v8 = v6 && v4 == v7;
  if (v8 && (v4 >= 0x91 ? (v10 = 145) : (v10 = v4), (result = memchr(result + 28, 0, v10 - 112)) != 0))
  {
    v11 = v3 + ((v4 + 3) & 0x1FC);
    if (!*v11 && *(v11 + 1) > 0x1Fu)
    {
      v12 = *(v11 + 20);
      v13 = *(v11 + 36);
      result = lifs_getfsattr_send(v3[3], *(v3 + 4), v3 + 10, (v3 + 28));
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
LABEL_10:
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100043078(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 409) >= 0xFFFFFFDB) && (v5 = result[27], v5 <= 0x21) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 372 >= v5) ? (v7 = v4 == v6 + 372) : (v7 = 0), v7 && (result = memchr(result + 28, 0, 0x21uLL)) != 0))
  {
    v8 = v3 + ((v4 + 3) & 0x3FC);
    if (!*v8 && *(v8 + 1) > 0x1Fu)
    {
      v10 = *(v8 + 20);
      v11 = *(v8 + 36);
      result = lifs_setfsattr_send(v3[3], *(v3 + 4), v3 + 10, v3 + 112, v3 + v6 + 112, *(v3 + v6 + 368));
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10004317C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 108)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 108) || *(result + 112) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 128);
  v5 = *(result + 144);
  result = lifs_sync_send(*(result + 12), *(result + 32), result + 40, *(result + 104), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_100043240(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1321 >= 0xFFFFFBFF) && (v5 = result[11], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 296 >= v5) ? (v7 = v4 == v6 + 296) : (v7 = 0), v7 && (v4 >= 0x430 ? (v8 = 1072) : (v8 = v4), (result = memchr(result + 12, 0, v8 - 48)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v9 + 20);
      v12 = *(v9 + 36);
      result = lifs_create_send(v3[3], *(v3 + 4), (v3 + 12), (v3 + v6 + 48), v3 + v6 + 112);
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10004334C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1389 >= 0xFFFFFBFF) && (v5 = result[11], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 364 >= v5) ? (v7 = v4 == v6 + 364) : (v7 = 0), v7 && (v4 >= 0x430 ? (v8 = 1072) : (v8 = v4), (result = memchr(result + 12, 0, v8 - 48)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v9 + 20);
      v12 = *(v9 + 36);
      result = lifs_clonefile_send(v3[3], *(v3 + 4), (v3 + 12), (v3 + v6 + 48), (v3 + v6 + 112), *(v3 + v6 + 176), v3 + v6 + 180);
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100043460(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1321 >= 0xFFFFFBFF) && (v5 = result[11], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 296 >= v5) ? (v7 = v4 == v6 + 296) : (v7 = 0), v7 && (v4 >= 0x430 ? (v8 = 1072) : (v8 = v4), (result = memchr(result + 12, 0, v8 - 48)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v9 + 20);
      v12 = *(v9 + 36);
      result = lifs_mkdir_send(v3[3], *(v3 + 4), (v3 + 12), (v3 + v6 + 48), v3 + v6 + 112);
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10004356C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1141 >= 0xFFFFFBFF) && (v5 = result[11], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 116 >= v5) ? (v7 = v4 == v6 + 116) : (v7 = 0), v7 && (v4 >= 0x430 ? (v8 = 1072) : (v8 = v4), (result = memchr(result + 12, 0, v8 - 48)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v9 + 20);
      v12 = *(v9 + 36);
      result = lifs_lookup_send(v3[3], *(v3 + 4), (v3 + 12), (v3 + v6 + 48), *(v3 + v6 + 112));
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100043678(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 153) >= 0xFFFFFFDB) && (v5 = result[11], v5 <= 0x21) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 116 >= v5) ? (v7 = v4 == v6 + 116) : (v7 = 0), v7 && (result = memchr(result + 12, 0, 0x21uLL)) != 0))
  {
    v8 = v3 + ((v4 + 3) & 0x1FC);
    if (!*v8 && *(v8 + 1) > 0x1Fu)
    {
      v10 = *(v8 + 20);
      v11 = *(v8 + 36);
      result = lifs_lookupsmall_send(v3[3], *(v3 + 4), (v3 + 12), (v3 + v6 + 48), *(v3 + v6 + 112));
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100043778(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 185) >= 0xFFFFFFBB) && (v5 = result[11], v5 <= 0x41) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 116 >= v5) ? (v7 = v4 == v6 + 116) : (v7 = 0), v7 && (result = memchr(result + 12, 0, 0x41uLL)) != 0))
  {
    v8 = v3 + ((v4 + 3) & 0x1FC);
    if (!*v8 && *(v8 + 1) > 0x1Fu)
    {
      v10 = *(v8 + 20);
      v11 = *(v8 + 36);
      result = lifs_lookupmed_send(v3[3], *(v3 + 4), (v3 + 12), (v3 + v6 + 48), *(v3 + v6 + 112));
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100043878(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 108)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 108) && *(result + 112) > 0x1Fu)
    {
      v4 = *(result + 128);
      v5 = *(result + 144);
      result = lifs_open_send(*(result + 12), *(result + 32), (result + 40), *(result + 104));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10004391C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 108)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 108) && *(result + 112) > 0x1Fu)
    {
      v4 = *(result + 128);
      v5 = *(result + 144);
      result = lifs_close_send(*(result + 12), *(result + 32), (result + 40), *(result + 104));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000439C0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v3 = result;
  v4 = result[1];
  if ((v4 - 2365) < 0xFFFFF7FF)
  {
    goto LABEL_25;
  }

  v5 = result[11];
  if (v5 > 0x400)
  {
    goto LABEL_25;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 316 < v5 || v4 < v6 + 316)
  {
    goto LABEL_25;
  }

  v8 = result + v6;
  v9 = *(v8 + 45);
  if (v9 > 0x400)
  {
    goto LABEL_25;
  }

  v10 = (v9 + 3) & 0xFFFFFFFC;
  v11 = v4 - v6;
  if (v11 - 316 < v9 || v11 != v10 + 316)
  {
    goto LABEL_25;
  }

  v13 = 1072;
  if (v4 < 0x430)
  {
    v13 = result[1];
  }

  result = memchr(result + 12, 0, v13 - 48);
  if (result && ((v14 = v8 - 1024, v15 = v8 + 184, v3 + v4 - v15 >= 1024) ? (v16 = 1024) : (v16 = v3 + v4 - v15), (result = memchr(v15, 0, v16)) != 0))
  {
    v17 = v3 + ((v4 + 3) & 0x1FFC);
    if (!*v17 && *(v17 + 1) > 0x1Fu)
    {
      v19 = *(v17 + 20);
      v20 = *(v17 + 36);
      result = lifs_rename_send(v3[3], *(v3 + 4), (v3 + 12), v14 + 268, v14 + 284, v15, &v14[v10 + 1208], &v14[v10 + 1272], *&v14[v10 + 1336]);
      *(a2 + 32) = result;
      return result;
    }

    v18 = -309;
  }

  else
  {
LABEL_25:
    v18 = -304;
  }

  *(a2 + 32) = v18;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100043B48(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 1201) >= 0xFFFFFBFF) && ((v5 = result[43], v5 <= 0x400) ? (v6 = v4 - 176 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 176, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr(result + 44, 0, v4 - 176)) != 0))
  {
    v10 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v10 && *(v10 + 1) > 0x1Fu)
    {
      v11 = *(v10 + 20);
      v12 = *(v10 + 36);
      result = lifs_rmdir_send(v3[3], *(v3 + 4), v3 + 10, v3 + 26, (v3 + 44));
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100043C3C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 128)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 128) && *(result + 132) > 0x1Fu)
    {
      v4 = *(result + 148);
      v5 = *(result + 164);
      result = lifs_readdir_send(*(result + 12), *(result + 32), *(result + 40), *(result + 44), (result + 52), *(result + 116), *(result + 120));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100043CEC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v3 = result;
  v4 = result[1];
  if ((v4 - 2353) < 0xFFFFF7FF)
  {
    goto LABEL_25;
  }

  v5 = result[11];
  if (v5 > 0x400)
  {
    goto LABEL_25;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 304 < v5 || v4 < v6 + 304)
  {
    goto LABEL_25;
  }

  v8 = result + v6;
  v9 = *(v8 + 13);
  if (v9 > 0x400)
  {
    goto LABEL_25;
  }

  v10 = (v9 + 3) & 0xFFFFFFFC;
  v11 = v4 - v6;
  if (v11 - 304 < v9 || v11 != v10 + 304)
  {
    goto LABEL_25;
  }

  v13 = 1072;
  if (v4 < 0x430)
  {
    v13 = result[1];
  }

  result = memchr(result + 12, 0, v13 - 48);
  if (result && ((v14 = v8 - 1024, v15 = v8 + 56, v3 + v4 - v15 >= 1024) ? (v16 = 1024) : (v16 = v3 + v4 - v15), (result = memchr(v15, 0, v16)) != 0))
  {
    v17 = v3 + ((v4 + 3) & 0x1FFC);
    if (!*v17 && *(v17 + 1) > 0x1Fu)
    {
      v19 = *(v17 + 20);
      v20 = *(v17 + 36);
      result = lifs_symlink_send(v3[3], *(v3 + 4), (v3 + 12), v15, &v14[v10 + 1080], &v14[v10 + 1144]);
      *(a2 + 32) = result;
      return result;
    }

    v18 = -309;
  }

  else
  {
LABEL_25:
    v18 = -304;
  }

  *(a2 + 32) = v18;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100043E60(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1201 >= 0xFFFFFBFF) && (v5 = result[27], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 176 >= v5) ? (v7 = v4 == v6 + 176) : (v7 = 0), v7 && (v4 >= 0x470 ? (v8 = 1136) : (v8 = v4), (result = memchr(result + 28, 0, v8 - 112)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v9 + 20);
      v12 = *(v9 + 36);
      result = lifs_link_send(v3[3], *(v3 + 4), v3 + 10, (v3 + 28), (v3 + v6 + 112));
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100043F6C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 104)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 104) && *(result + 108) > 0x1Fu)
    {
      v4 = *(result + 124);
      v5 = *(result + 140);
      result = lifs_readlink_send(*(result + 12), *(result + 32), (result + 40));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10004400C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1205 >= 0xFFFFFBFF) && (v5 = result[43], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 180 >= v5) ? (v7 = v4 == v6 + 180) : (v7 = 0), v7 && (v4 >= 0x4B0 ? (v8 = 1200) : (v8 = v4), (result = memchr(result + 44, 0, v8 - 176)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v9 + 20);
      v12 = *(v9 + 36);
      result = lifs_remove_send(v3[3], *(v3 + 4), v3 + 10, v3 + 26, (v3 + 44), *(v3 + v6 + 176));
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10004411C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 288)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 288) && *(result + 292) > 0x1Fu)
    {
      v4 = *(result + 308);
      v5 = *(result + 324);
      result = lifs_setattr_send(*(result + 12), *(result + 32), (result + 40), result + 104);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000441C0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 104)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 104) && *(result + 108) > 0x1Fu)
    {
      v4 = *(result + 124);
      v5 = *(result + 140);
      result = lifs_getattr_send(*(result + 12), *(result + 32), (result + 40));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100044260(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 132)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 132) && *(result + 136) > 0x1Fu)
    {
      v4 = *(result + 152);
      v5 = *(result + 168);
      result = lifs_getattrlistbulk_send(*(result + 12), *(result + 32), *(result + 40), (result + 48), *(result + 112), *(result + 116), *(result + 124));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10004430C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 136)
  {
    if (*(result + 39) == 1 && (v3 = *(result + 40), v3 == *(result + 132)))
    {
      if (!*(result + 136) && *(result + 140) > 0x1Fu)
      {
        v5 = *(result + 156);
        v6 = *(result + 172);
        result = lifs_write_send(*(result + 12), *(result + 52), (result + 60), *(result + 124), *(result + 28), v3);
        *(a2 + 32) = result;
        return result;
      }

      v4 = -309;
    }

    else
    {
      v4 = -300;
    }
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000443E4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 128)
  {
    v3 = -304;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_9;
  }

  if (*(result + 128) || *(result + 132) <= 0x1Fu)
  {
    v3 = -309;
LABEL_9:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 148);
  v5 = *(result + 164);
  result = lifs_write_wrapped_send(*(result + 12), (result + 48), *(result + 112), *(result + 120), *(result + 28), a2 + 36, (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_1000444D0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 116)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 116) && *(result + 120) > 0x1Fu)
    {
      v4 = *(result + 136);
      v5 = *(result + 152);
      result = lifs_read_send(*(result + 12), *(result + 32), (result + 40), *(result + 104), *(result + 108));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100044578(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 128)
  {
    v3 = -304;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_9;
  }

  if (*(result + 128) || *(result + 132) <= 0x1Fu)
  {
    v3 = -309;
LABEL_9:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 148);
  v5 = *(result + 164);
  result = lifs_read_wrapped_send(*(result + 12), (result + 48), *(result + 112), *(result + 120), *(result + 28), a2 + 36, (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_100044664(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 104)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 104) && *(result + 108) > 0x1Fu)
    {
      v4 = *(result + 124);
      v5 = *(result + 140);
      result = lifs_pathconf_send(*(result + 12), *(result + 32), (result + 40));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100044704(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 104)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 104) && *(result + 108) > 0x1Fu)
    {
      v4 = *(result + 124);
      v5 = *(result + 140);
      result = lifs_reclaim_send(*(result + 12), *(result + 32), (result + 40));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000447A4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 108)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 108) && *(result + 112) > 0x1Fu)
    {
      v4 = *(result + 128);
      v5 = *(result + 144);
      result = lifs_access_send(*(result + 12), *(result + 32), (result + 40), *(result + 104));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100044848(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 253 >= 0xFFFFFF7F) && (v5 = result[27], v5 <= 0x80) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 124 >= v5) ? (v7 = v4 == v6 + 124) : (v7 = 0), v7 && (v4 >= 0xF0 ? (v8 = 240) : (v8 = v4), (result = memchr(result + 28, 0, v8 - 112)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0x1FC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v9 + 20);
      v12 = *(v9 + 36);
      result = lifs_getxattr_send(v3[3], *(v3 + 4), v3 + 10, (v3 + 28), *(v3 + v6 + 112), *(v3 + v6 + 120));
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100044958(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 112)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 112) && *(result + 116) > 0x1Fu)
    {
      v4 = *(result + 132);
      v5 = *(result + 148);
      result = lifs_listxattr_send(*(result + 12), *(result + 32), (result + 40), *(result + 104));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000449FC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 241) >= 0xFFFFFF7F) && ((v5 = result[27], v5 <= 0x80) ? (v6 = v4 - 112 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x1FC) + 112, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr(result + 28, 0, v4 - 112)) != 0))
  {
    v10 = v3 + ((v4 + 3) & 0x1FC);
    if (!*v10 && *(v10 + 1) > 0x1Fu)
    {
      v11 = *(v10 + 20);
      v12 = *(v10 + 36);
      result = lifs_removexattr_send(v3[3], *(v3 + 4), v3 + 10, (v3 + 28));
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100044AEC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 1281) >= 0xFFFFFF7F) && (v5 = result[27], v5 <= 0x80) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 1152 >= v5) ? (v7 = v4 == v6 + 1152) : (v7 = 0), v7 && (result = memchr(result + 28, 0, 0x80uLL)) != 0))
  {
    v8 = v3 + ((v4 + 3) & 0x7FC);
    if (!*v8 && *(v8 + 1) > 0x1Fu)
    {
      v10 = *(v8 + 20);
      v11 = *(v8 + 36);
      result = lifs_setxattr_small_send(v3[3], *(v3 + 4), v3 + 10, (v3 + 28), v3 + v6 + 112, *(v3 + v6 + 1136), *(v3 + v6 + 1144), *(v3 + v6 + 1148));
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100044BFC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if (v5 - 273 < 0xFFFFFF7F)
  {
    goto LABEL_3;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_19;
  }

  v6 = *(result + 128);
  if (v6 > 0x80)
  {
LABEL_2:
    v3 = -304;
    goto LABEL_3;
  }

  v3 = -304;
  if (v5 - 144 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 144)
  {
    goto LABEL_3;
  }

  v8 = (result + v7);
  v9 = *(result + 40);
  if (v9 != v8[33])
  {
LABEL_19:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x104)
  {
    v10 = 260;
  }

  else
  {
    v10 = v5;
  }

  result = memchr((result + 132), 0, v10 - 132);
  if (!result)
  {
    goto LABEL_2;
  }

  v11 = ((v5 + 3) & 0x3FC) + v4;
  if (!*v11 && *(v11 + 4) > 0x1Fu)
  {
    v12 = *(v11 + 20);
    v13 = *(v11 + 36);
    result = lifs_setxattr_large_send(*(v4 + 12), *(v4 + 52), (v4 + 60), v4 + 132, *(v4 + 28), v9, v8[34], v8[35]);
    *(a2 + 32) = result;
    return result;
  }

  v3 = -309;
LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100044D5C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 104)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 104) && *(result + 108) > 0x1Fu)
    {
      v4 = *(result + 124);
      v5 = *(result + 140);
      result = lifs_get_volume_port_send(*(result + 12), *(result + 32), (result + 40));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100044DFC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 128)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 128) && *(result + 132) > 0x1Fu)
    {
      v4 = *(result + 148);
      v5 = *(result + 164);
      result = lifs_blockmap_file_send(*(result + 12), *(result + 32), (result + 40), *(result + 104), *(result + 112), *(result + 116), *(result + 120));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100044EA8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 136)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 136) && *(result + 140) > 0x1Fu)
    {
      v4 = *(result + 156);
      v5 = *(result + 172);
      result = lifs_endio_send(*(result + 12), *(result + 32), (result + 40), *(result + 104), *(result + 112), *(result + 120), *(result + 124), *(result + 128));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t lifs_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 706) >= 0xFFFFFFD8 && (v5 = *(&lifs_subsystem + 5 * (v4 - 666) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void sub_100044FE8()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100045058(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  sub_100003800();
  sub_100003828();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_100045284()
{
  sub_1000037F4();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000452DC(void *a1)
{
  v1 = [a1 FPNfsPortStr];
  sub_100003800();
  sub_10000380C();
  sub_100003828();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

void sub_100045438()
{
  sub_1000037F4();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100045474()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000454B0()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100045514()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100045720()
{
  v0 = *__error();
  sub_10000380C();
  sub_100003828();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x12u);
}

void sub_1000457F4()
{
  v0 = *__error();
  sub_10000380C();
  sub_100003828();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x12u);
}

void sub_100045888()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000458F8()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100045934()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000459A4()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000459E0()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100045A1C()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100045A58()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}