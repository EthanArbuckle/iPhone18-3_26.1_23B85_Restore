void sub_100077898(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() obtainActiveComplications];
  v4 = [v3 mutableCopy];
  if ([*(*(a1 + 32) + 8) count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = *(*(a1 + 32) + 8);
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 removeObject:{*(*(&v20 + 1) + 8 * v9), v20}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v7);
    }
  }

  v10 = [v4 copy];
  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  objc_storeStrong((*(a1 + 32) + 8), v3);
  v13 = [_DASDaemonLogger logForCategory:@"complications"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 8);
    v16 = *(v14 + 40);
    *buf = 138412546;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Active complications are %@ (Added: %@)", buf, 0x16u);
  }

  v17 = +[NSDate date];
  v18 = *(a1 + 32);
  v19 = *(v18 + 32);
  *(v18 + 32) = v17;
}

void sub_100077A8C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = dispatch_walltime(0, 2000000000);

  dispatch_source_set_timer(v1, v2, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
}

void sub_100077AE4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = dispatch_walltime(0, 2000000000);

  dispatch_source_set_timer(v1, v2, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
}

void sub_100077B3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() obtainActiveComplications];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  v6 = [_DASDaemonLogger logForCategory:@"complications"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Active complications are %@", &v8, 0xCu);
  }
}

id sub_100077CE4(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_100077DE8(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(a1 + 40) + 8) containsObject:{*(*(&v7 + 1) + 8 * v6), v7}])
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100077FC8(void *a1)
{
  v2 = +[NSDate date];
  if (*(a1[4] + 32))
  {
    v4 = v2;
    [v2 timeIntervalSinceDate:?];
    v2 = v4;
    if (v3 < 300.0)
    {
      *(*(a1[6] + 8) + 24) = [*(a1[4] + 40) containsObject:a1[5]];
      v2 = v4;
    }
  }
}

void sub_10007954C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B4F0;
  qword_10020B4F0 = v1;

  [qword_10020B4F0 setDateStyle:1];
  [qword_10020B4F0 setTimeStyle:1];
  v3 = qword_10020B4F0;
  v4 = +[NSTimeZone localTimeZone];
  [v3 setTimeZone:v4];
}

void sub_100079B60(id a1)
{
  v1 = objc_alloc_init(_DASActivityDependencyManager);
  v2 = qword_10020B500;
  qword_10020B500 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100079CF0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = v2;
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
    v6 = *(a1 + 40);
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Refreshing %@ dependency groups with updated file protection: %@", buf, 0x16u);
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = *(*(a1 + 32) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100079E98;
  v15[3] = &unk_1001B6F28;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v16 = v9;
  v17 = v10;
  v11 = v7;
  v18 = v11;
  [v8 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = *(a1 + 32);
  v13 = *(v12 + 8);
  *(v12 + 8) = v11;
  v14 = v11;
}

void sub_100079E98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 isPersistenceAvailableWithFileProtection:*(a1 + 32)])
  {
    v7 = &off_1001B49D8;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (v7 = off_1001B49D0, objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = [(__objc2_class *)*v7 groupFromPersistence:v5];
      v10 = *(a1 + 48);
      v9 = (a1 + 48);
      [v10 setObject:v8 forKeyedSubscript:v5];

      v11 = *(*(v9 - 1) + 3);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10012211C(v9, v11, v5);
      }
    }

    else
    {
      v12 = *(*(a1 + 40) + 24);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100122084(v12);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(*(*(a1 + 40) + 24), OS_LOG_TYPE_DEBUG))
    {
      sub_100122014();
    }

    [*(a1 + 48) setObject:v6 forKeyedSubscript:v5];
  }
}

void sub_10007A140(uint64_t a1)
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [*(a1 + 32) dependencies];
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) queue_dependencyGroupCreateIfDoesNotExist:*(*(&v26 + 1) + 8 * i)];
        [v7 handleActivitySubmission:*(a1 + 32)];
      }

      v4 = [v2 countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v4);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [*(a1 + 32) producedResultIdentifiers];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v23;
    *&v10 = 136315650;
    v21 = v10;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * j);
        v15 = [*(a1 + 32) identifier];
        v16 = [v14 isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
          v17 = [*(a1 + 40) queue_checkedResultDependencyGroupForIdentifier:v14];
          v18 = v17;
          if (v17)
          {
            [v17 registerProducer:*(a1 + 32) error:0];
          }

          else
          {
            v19 = *(*(a1 + 40) + 24);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = *(a1 + 32);
              *buf = v21;
              v31 = "[_DASActivityDependencyManager addActivityToDependencyGroups:]_block_invoke";
              v32 = 2112;
              v33 = v20;
              v34 = 2112;
              v35 = v14;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: Tried to add %@ as a producer to a result dependency group (%@) but could not create the group (persistence type conflict)", buf, 0x20u);
            }
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v22 objects:v36 count:16];
    }

    while (v11);
  }
}

void sub_10007A4E8(uint64_t a1)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = [*(a1 + 32) dependencies];
  v3 = [v2 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v37;
    *&v4 = 136315650;
    v30 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = *(*(a1 + 40) + 8);
        v10 = [v8 identifier];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (v11)
        {
          [v11 deregisterDependent:*(a1 + 32)];
        }

        else
        {
          v12 = *(*(a1 + 40) + 24);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = *(a1 + 32);
            v14 = v12;
            v15 = [v13 description];
            v16 = [v8 identifier];
            *buf = v30;
            v42 = "[_DASActivityDependencyManager removeActivityFromDependencyGroups:]_block_invoke";
            v43 = 2112;
            v44 = v15;
            v45 = 2112;
            v46 = v16;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Unable to deregister consuming activity %@ from dependency group for %@; group does not exist", buf, 0x20u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v5);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = [*(a1 + 32) producedResultIdentifiers];
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v33;
    *&v19 = 136315650;
    v31 = v19;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v32 + 1) + 8 * j);
        v24 = [*(a1 + 40) queue_checkedResultDependencyGroupForIdentifier:{v23, v31}];
        v25 = v24;
        if (v24)
        {
          [v24 deregisterProducer:*(a1 + 32) error:0];
        }

        else
        {
          v26 = *(*(a1 + 40) + 24);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = *(a1 + 32);
            v28 = v26;
            v29 = [v27 description];
            *buf = v31;
            v42 = "[_DASActivityDependencyManager removeActivityFromDependencyGroups:]_block_invoke";
            v43 = 2112;
            v44 = v29;
            v45 = 2112;
            v46 = v23;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: Unable to deregister producing activity %@ from dependency group for %@; group does not exist", buf, 0x20u);
          }
        }
      }

      v20 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v20);
  }
}

uint64_t sub_10007AA98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007AAB0(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v44;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v44 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v43 + 1) + 8 * i);
          v8 = *(a1 + 40);
          v9 = [v7 identifier];
          v10 = [v8 dependencyForIdentifier:v9];

          if (!v10)
          {
            v49[0] = @"dependencyIdentifier";
            v23 = [v7 identifier];
            v49[1] = @"activityName";
            v50[0] = v23;
            v24 = [*(a1 + 40) description];
            v50[1] = v24;
            v25 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
            v26 = [NSError errorWithDomain:@"_DASActivityDependencyManagerErrorDomain" code:1 userInfo:v25];
            v27 = *(*(a1 + 56) + 8);
            v28 = *(v27 + 40);
            *(v27 + 40) = v26;

            *(*(*(a1 + 64) + 8) + 24) = 0;
            goto LABEL_24;
          }

          v11 = *(a1 + 48);
          v12 = [v7 identifier];
          v13 = [v11 queue_checkedResultDependencyGroupForIdentifier:v12];

          if (!v13)
          {
            v29 = *(*(a1 + 48) + 24);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_10012232C((a1 + 40), v29);
            }

            v47[0] = @"dependencyIdentifier";
            v41 = [v7 identifier];
            v48[0] = v41;
            v47[1] = @"activityName";
            v30 = [*(a1 + 40) description];
            v48[1] = v30;
            v47[2] = @"knownType";
            v31 = *(*(a1 + 48) + 8);
            v32 = [v7 identifier];
            v33 = [v31 objectForKeyedSubscript:v32];
            v34 = [objc_opt_class() description];
            v35 = v34;
            if (!v34)
            {
              v35 = +[NSNull null];
            }

            v48[2] = v35;
            v47[3] = @"attemptedType";
            v36 = [objc_opt_class() description];
            v48[3] = v36;
            v37 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
            v38 = [NSError errorWithDomain:@"_DASActivityDependencyManagerErrorDomain" code:4 userInfo:v37];
            v39 = *(*(a1 + 56) + 8);
            v40 = *(v39 + 40);
            *(v39 + 40) = v38;

            if (!v34)
            {
            }

            v17 = *(*(a1 + 64) + 8);
LABEL_23:
            *(v17 + 24) = 0;

            goto LABEL_24;
          }

          v14 = *(a1 + 40);
          v15 = *(*(a1 + 56) + 8);
          obj = *(v15 + 40);
          v16 = [v13 reportActivity:v14 consumedResult:v7 error:&obj];
          objc_storeStrong((v15 + 40), obj);
          *(*(*(a1 + 64) + 8) + 24) = v16;
          v17 = *(*(a1 + 64) + 8);
          if (*(v17 + 24) != 1 || *(*(*(a1 + 56) + 8) + 40))
          {
            goto LABEL_23;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:
  }

  else
  {
    v52 = @"activityName";
    v18 = [*(a1 + 40) description];
    v53 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v20 = [NSError errorWithDomain:@"_DASActivityDependencyManagerErrorDomain" code:3 userInfo:v19];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void sub_10007B1AC(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v35;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v35 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v34 + 1) + 8 * i);
          v8 = *(a1 + 48);
          v9 = [v7 identifier];
          v10 = [v8 queue_checkedResultDependencyGroupForIdentifier:v9];

          if (!v10)
          {
            v20 = *(*(a1 + 48) + 24);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_10012244C((a1 + 40), v20);
            }

            v38[0] = @"dependencyIdentifier";
            v32 = [v7 identifier];
            v39[0] = v32;
            v38[1] = @"activityName";
            v21 = [*(a1 + 40) description];
            v39[1] = v21;
            v38[2] = @"knownType";
            v22 = *(*(a1 + 48) + 8);
            v23 = [v7 identifier];
            v24 = [v22 objectForKeyedSubscript:v23];
            v25 = [objc_opt_class() description];
            v26 = v25;
            if (!v25)
            {
              v26 = +[NSNull null];
            }

            v39[2] = v26;
            v38[3] = @"attemptedType";
            v27 = [objc_opt_class() description];
            v39[3] = v27;
            v28 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
            v29 = [NSError errorWithDomain:@"_DASActivityDependencyManagerErrorDomain" code:4 userInfo:v28];
            v30 = *(*(a1 + 56) + 8);
            v31 = *(v30 + 40);
            *(v30 + 40) = v29;

            if (!v25)
            {
            }

            v14 = *(*(a1 + 64) + 8);
LABEL_21:
            *(v14 + 24) = 0;

            goto LABEL_22;
          }

          v11 = *(a1 + 40);
          v12 = *(*(a1 + 56) + 8);
          obj = *(v12 + 40);
          v13 = [v10 reportActivity:v11 producedResult:v7 error:&obj];
          objc_storeStrong((v12 + 40), obj);
          *(*(*(a1 + 64) + 8) + 24) = v13;
          v14 = *(*(a1 + 64) + 8);
          if (*(v14 + 24) != 1 || *(*(*(a1 + 56) + 8) + 40))
          {
            goto LABEL_21;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  else
  {
    v41 = @"activityName";
    v15 = [*(a1 + 40) description];
    v42 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v17 = [NSError errorWithDomain:@"_DASActivityDependencyManagerErrorDomain" code:3 userInfo:v16];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void sub_10007B620(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 136315394;
    v24 = "[_DASActivityDependencyManager reportActivityDidFinishRunning:]_block_invoke";
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Reporting activity did finish running for %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = (a1 + 40);
  v5 = [*(a1 + 40) dependencies];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isActivityCompletionBased])
        {
          v11 = *(a1 + 32);
          v12 = [v10 identifier];
          v13 = [v11 queue_checkedCompletionDependencyGroupForIdentifier:v12];

          [v13 reportDependentActivityDidRun:*(a1 + 40)];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) identifier];
  v16 = [v14 queue_checkedCompletionDependencyGroupForIdentifier:v15];

  if (v16)
  {
    [v16 reportTrackedActivityDidRun:*v4];
  }

  else
  {
    v17 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1001224F0(v4, v17);
    }
  }
}

void sub_10007B9A8(uint64_t a1)
{
  v25 = +[NSMutableSet set];
  v2 = +[NSMutableSet set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = (a1 + 32);
  v3 = [*(a1 + 32) dependencies];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v27;
    *&v5 = 136315650;
    v23 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [*(a1 + 40) queue_dependencyGroupCreateIfDoesNotExist:{v10, v23}];
        v12 = [v11 isDependencySatisfiedForActivity:*(a1 + 32)];
        v13 = [v10 isActivityCompletionBased];
        if (v12)
        {
          if (v13)
          {
            v14 = *(*(a1 + 40) + 24);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v16 = *v24;
              *buf = v23;
              v31 = "[_DASActivityDependencyManager areDependenciesSatisfiedFor:]_block_invoke";
              v32 = 2112;
              v33 = v11;
              v34 = 2112;
              v35 = v16;
              _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s: %@ is satisfied; overriding all dependencies on %@", buf, 0x20u);
            }

            v7 = 1;
          }
        }

        else
        {
          if (v13)
          {
            v15 = v2;
          }

          else
          {
            v15 = v25;
          }

          [v15 addObject:v10];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v6);

    if (v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v17 = [v2 count];
  v18 = [*v24 dependencies];
  v19 = [v18 count];

  if (v17 == v19)
  {
    v20 = *(*(a1 + 40) + 24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10012268C(v24, v2, v20);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (![v25 count])
    {
LABEL_27:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_28;
    }

    v21 = *(*(a1 + 40) + 24);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *v24;
      *buf = 136315906;
      v31 = "[_DASActivityDependencyManager areDependenciesSatisfiedFor:]_block_invoke";
      v32 = 2112;
      v33 = v22;
      v34 = 2112;
      v35 = v25;
      v36 = 2112;
      v37 = v2;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s: %@ has unsatisfied result dependencies: %@, Unsatisfied activity completion dependencies: %@", buf, 0x2Au);
    }
  }

LABEL_28:
}

void sub_10007BE14(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  [v1 resetAccumulation];
}

void sub_10007C62C(uint64_t a1)
{
  v1 = [*(a1 + 32) queue_dependencyGroup:*(a1 + 40)];
  [v1 resetAccumulation];
}

void sub_10007C784(uint64_t a1)
{
  v5 = [*(a1 + 32) queue_dependencyGroup:*(a1 + 40)];
  v2 = [v5 dictionary];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10007C7F0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_10007CA20(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_10020B510;
  qword_10020B510 = v1;

  v3 = +[_DASApplicationPolicy policyInstance];
  [qword_10020B510 setObject:v3 forKeyedSubscript:&off_1001C9BC8];

  v4 = +[_DASBootTimePolicy policyInstance];
  [qword_10020B510 setObject:v4 forKeyedSubscript:&off_1001C9BE0];

  v5 = +[_DASCallInProgressPolicy policyInstance];
  [qword_10020B510 setObject:v5 forKeyedSubscript:&off_1001C9BF8];

  v6 = +[_DASCPUUsagePolicy policyInstance];
  [qword_10020B510 setObject:v6 forKeyedSubscript:&off_1001C9C10];

  v7 = +[_DASDeviceActivityPolicy policyInstance];
  [qword_10020B510 setObject:v7 forKeyedSubscript:&off_1001C9C28];

  v8 = +[_DASNetworkQualityPolicy policyInstance];
  [qword_10020B510 setObject:v8 forKeyedSubscript:&off_1001C9C40];

  v9 = +[_DASPhotosPolicy policyInstance];
  [qword_10020B510 setObject:v9 forKeyedSubscript:&off_1001C9C58];

  v10 = +[_DASFileProtectionPolicy policyInstance];
  [qword_10020B510 setObject:v10 forKeyedSubscript:&off_1001C9C70];

  v11 = +[_DASRequiresBuddyCompletePolicy policyInstance];
  [qword_10020B510 setObject:v11 forKeyedSubscript:&off_1001C9C88];

  v12 = +[_DASRequiresRestartPolicy policyInstance];
  [qword_10020B510 setObject:v12 forKeyedSubscript:&off_1001C9CA0];

  v13 = +[_DASThermalPolicy policyInstance];
  [qword_10020B510 setObject:v13 forKeyedSubscript:&off_1001C9CB8];

  v14 = +[_DASLowPowerModePolicy policyInstance];
  [qword_10020B510 setObject:v14 forKeyedSubscript:&off_1001C9CD0];

  v15 = +[_DASCarPlayPolicy policyInstance];
  [qword_10020B510 setObject:v15 forKeyedSubscript:&off_1001C9CE8];

  v16 = +[_DASBatteryLevelPolicy policyInstance];
  [qword_10020B510 setObject:v16 forKeyedSubscript:&off_1001C9D00];

  v17 = +[_DASRequiresPluggedInPolicy policyInstance];
  [qword_10020B510 setObject:v17 forKeyedSubscript:&off_1001C9D18];

  v18 = +[_DASWidgetRefreshBudgetPolicy policyInstance];
  [qword_10020B510 setObject:v18 forKeyedSubscript:&off_1001C9D30];

  v19 = +[_DASDefaultPairedPolicy policyInstance];
  [qword_10020B510 setObject:v19 forKeyedSubscript:&off_1001C9D48];

  v20 = +[_DASRemoteDeviceNearbyPolicy policyInstance];
  [qword_10020B510 setObject:v20 forKeyedSubscript:&off_1001C9D60];

  v21 = +[_DASActivityRateLimitPolicy policyInstance];
  [qword_10020B510 setObject:v21 forKeyedSubscript:&off_1001C9D78];

  v22 = +[_DASDataBudgetPolicy policyInstance];
  [qword_10020B510 setObject:v22 forKeyedSubscript:&off_1001C9D90];

  v23 = +[_DASConsoleModePolicy policyInstance];
  [qword_10020B510 setObject:v23 forKeyedSubscript:&off_1001C9DA8];

  v24 = +[_DASUrgencyOverridePolicy policyInstance];
  [qword_10020B510 setObject:v24 forKeyedSubscript:&off_1001C9DC0];

  v25 = +[_DASDiskSpacePolicy policyInstance];
  [qword_10020B510 setObject:v25 forKeyedSubscript:&off_1001C9DD8];

  v26 = +[_DASEnergyBudgetPolicy policyInstance];
  [qword_10020B510 setObject:v26 forKeyedSubscript:&off_1001C9DF0];

  v27 = +[_DASMemoryPressurePolicy policyInstance];
  [qword_10020B510 setObject:v27 forKeyedSubscript:&off_1001C9E08];

  v28 = +[_DASMotionStatePolicy policyInstance];
  [qword_10020B510 setObject:v28 forKeyedSubscript:&off_1001C9E20];

  v29 = +[_DASCustomSystemConstraintsPolicy policyInstance];
  [qword_10020B510 setObject:v29 forKeyedSubscript:&off_1001C9E38];

  v30 = +[_DASUserRequestedBackupPolicy policyInstance];
  [qword_10020B510 setObject:v30 forKeyedSubscript:&off_1001C9E50];

  v31 = +[_DASPeakPowerPressurePolicy policyInstance];
  [qword_10020B510 setObject:v31 forKeyedSubscript:&off_1001C9E68];

  v32 = +[_DASSmartPowerNapPolicy policyInstance];
  [qword_10020B510 setObject:v32 forKeyedSubscript:&off_1001C9E80];

  v33 = +[_DASViewfinderPolicy policyInstance];
  [qword_10020B510 setObject:v33 forKeyedSubscript:&off_1001C9E98];

  v34 = +[_DASThunderingHerdPolicy policyInstance];
  [qword_10020B510 setObject:v34 forKeyedSubscript:&off_1001C9EB0];

  v35 = +[_DASInCarPolicy policyInstance];
  [qword_10020B510 setObject:v35 forKeyedSubscript:&off_1001C9EC8];

  v36 = +[_DASRemoteWidgetBudgetPolicy policyInstance];
  [qword_10020B510 setObject:v36 forKeyedSubscript:&off_1001C9EE0];

  v37 = +[_DASNetworkSynchronizationPolicy policyInstance];
  [qword_10020B510 setObject:v37 forKeyedSubscript:&off_1001C9EF8];

  v38 = +[_DASRemoteDeviceWakePolicy policyInstance];
  [qword_10020B510 setObject:v38 forKeyedSubscript:&off_1001C9F10];

  v39 = +[_DASInternetSharingPolicy policyInstance];
  [qword_10020B510 setObject:v39 forKeyedSubscript:&off_1001C9F28];

  v40 = +[_DASGroupSchedulingPolicy policyInstance];
  [qword_10020B510 setObject:v40 forKeyedSubscript:&off_1001C9F40];

  v41 = +[_DASResultDependencyPolicy policyInstance];
  [qword_10020B510 setObject:v41 forKeyedSubscript:&off_1001C9F58];

  v42 = +[_DASFastPassPolicy policyInstance];
  [qword_10020B510 setObject:v42 forKeyedSubscript:&off_1001C9F70];

  if (+[_DASConfig isiPhone]&& _os_feature_enabled_impl())
  {
    v43 = +[NSLocale currentLocale];
    v44 = [v43 countryCode];
    v45 = [v44 isEqualToString:@"US"];

    if (v45)
    {
      v46 = +[_DASEnvironmentalPolicy policyInstance];
      [qword_10020B510 setObject:v46 forKeyedSubscript:&off_1001C9F88];
    }
  }

  if (+[_DASConfig isiPhone])
  {
    v47 = +[_DASCPMModePolicy policyInstance];
    [qword_10020B510 setObject:v47 forKeyedSubscript:&off_1001C9FA0];
  }

  v48 = +[_DASActivityProgressPolicy policyInstance];
  [qword_10020B510 setObject:v48 forKeyedSubscript:&off_1001C9FB8];

  v49 = +[UMUserManager sharedManager];
  v50 = [v49 isMultiUser];

  if (v50)
  {
    [qword_10020B510 removeObjectForKey:&off_1001C9BE0];
    [qword_10020B510 removeObjectForKey:&off_1001C9C10];
    [qword_10020B510 removeObjectForKey:&off_1001C9CD0];
    [qword_10020B510 removeObjectForKey:&off_1001C9D00];
    [qword_10020B510 removeObjectForKey:&off_1001C9E08];
    [qword_10020B510 removeObjectForKey:&off_1001C9EB0];
  }

  v51 = [NSArray alloc];
  v52 = [qword_10020B510 allValues];
  v53 = [v51 initWithArray:v52];
  v54 = qword_10020B518;
  qword_10020B518 = v53;

  v71[0] = &off_1001C9FD0;
  v71[1] = &off_1001C9FE8;
  v72[0] = @"Limitations";
  v72[1] = @"Incompatibility";
  v71[2] = &off_1001CA000;
  v71[3] = &off_1001CA018;
  v72[2] = @"Sysdiagnose";
  v72[3] = @"Preemption";
  v71[4] = &off_1001CA030;
  v72[4] = @"UserForcedCancellation";
  v55 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:5];
  v56 = qword_10020B520;
  qword_10020B520 = v55;

  v57 = +[NSMutableArray array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v58 = qword_10020B518;
  v59 = [v58 countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v67;
    do
    {
      for (i = 0; i != v60; i = i + 1)
      {
        if (*v67 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v66 + 1) + 8 * i);
        if ([v63 conformsToProtocol:{&OBJC_PROTOCOL____DASActivityPolicyPredicting, v66}])
        {
          [v57 addObject:v63];
        }
      }

      v60 = [v58 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v60);
  }

  v64 = [NSArray arrayWithArray:v57];
  v65 = qword_10020B528;
  qword_10020B528 = v64;
}

void sub_10007DA28(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B530;
  qword_10020B530 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007E1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007F388(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  v6 = 1.0;
  if ([v12 integerValue] <= 999)
  {
    [v12 doubleValue];
    v6 = v7 / 1000.0;
  }

  v8 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];

  v9 = [v8 compatibilityObject];

  v10 = [v9 bundleExecutable];
  if (v10)
  {
    v11 = [NSNumber numberWithDouble:v6];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v10];
  }
}

void sub_10007F97C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  [a3 doubleValue];
  v6 = v5;
  v7 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v11];
  [v7 doubleValue];
  v9 = v8 * 0.5 + v6 * 0.5;

  if (v9 <= 0.1)
  {
    [*(a1 + 40) setObject:&off_1001CA048 forKeyedSubscript:v11];
  }

  else
  {
    v10 = [NSNumber numberWithDouble:v9];
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
  }
}

void sub_10007FA58(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

void sub_10007FAE0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3)
  {
    [*(a1 + 32) setObject:&off_1001CA048 forKeyedSubscript:v4];
  }
}

id sub_10007FBC8(uint64_t a1)
{
  [*(a1 + 32) _queue_loadHistograms];
  v2 = [*(a1 + 32) _queue_computeScores];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(*(a1 + 32) + 80);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 56);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated Kill Histogram: %@", &v8, 0xCu);
  }

  [*(*(a1 + 32) + 48) removeAllObjects];
  return [*(a1 + 32) _queue_updateHistograms];
}

void sub_10007FE80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 updateModel];
  [v3 setTaskCompleted];
}

void sub_1000804BC(uint64_t a1)
{
  v2 = memorystatus_control();
  if (v2 <= 0)
  {
    v34 = *(*(a1 + 32) + 80);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100122924(v34);
    }
  }

  else
  {
    v3 = malloc_type_malloc(v2, 0x1000040BEF03554uLL);
    if (memorystatus_control() <= 0)
    {
      v35 = *(*(a1 + 32) + 80);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10012289C(v35);
      }
    }

    else
    {
      v4 = +[NSMutableArray array];
      v6 = v4;
      v7 = *(v3 + 24);
      if (v7)
      {
        v39 = 0;
        v40 = v4;
        v38 = 0;
        v8 = 0;
        v9 = 0;
        v37 = 0;
        v10 = 0;
        v11 = v3 + 200;
        v12 = 0.0;
        v13 = &NSLocalizedDescriptionKey_ptr;
        *&v5 = 138412290;
        v36 = v5;
        do
        {
          memcpy(__dst, v11, sizeof(__dst));
          if (__dst[10] && (__dst[5] & 0x1800000000) == 0)
          {
            v14 = [(NSErrorUserInfoKey *)v13[27] stringWithUTF8String:__dst + 4];
            if (v14)
            {
              if (!v8)
              {
                v8 = mach_absolute_time();
                v15 = +[NSDate date];

                [v15 timeIntervalSinceDate:*(*(a1 + 32) + 96)];
                v12 = v16;
                v9 = v15;
                v13 = &NSLocalizedDescriptionKey_ptr;
              }

              [*(a1 + 32) secondsFrom:v8 until:{__dst[25], v36}];
              if (v17 <= v12)
              {
                v18 = v17;
                if ((__dst[5] & 0x200000000) != 0)
                {
                  if ((__dst[5] & 0x400000000) != 0)
                  {
                    v19 = 0;
                    v39 += __dst[30];
                  }

                  else
                  {
                    ++v38;
                    v19 = 1;
                  }
                }

                else
                {
                  v19 = 0;
                }

                v20 = *(*(a1 + 32) + 80);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = v20;
                  v22 = [v9 dateByAddingTimeInterval:-v18];
                  *buf = 138412546;
                  v42 = v14;
                  v43 = 2112;
                  v44 = v22;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ killed at %@", buf, 0x16u);
                }

                if (HIDWORD(__dst[6]))
                {
                  v23 = +[NSMutableDictionary dictionary];
                  [v23 setObject:v14 forKeyedSubscript:@"BundleID"];
                  v24 = [NSNumber numberWithInt:LODWORD(__dst[0])];
                  [v23 setObject:v24 forKeyedSubscript:@"PID"];

                  v25 = [NSNumber numberWithUnsignedInt:HIDWORD(__dst[6])];
                  [v23 setObject:v25 forKeyedSubscript:@"Reason"];

                  v26 = *(*(a1 + 32) + 80);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v42 = v14;
                    v43 = 1024;
                    LODWORD(v44) = HIDWORD(__dst[6]);
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Skipped %@ (%d)", buf, 0x12u);
                  }

                  [v40 addObject:v23];
                }

                if ([*(a1 + 32) process:v14 inSet:*(a1 + 40)])
                {
                  if ((v19 & 1) == 0)
                  {
                    v27 = *(*(a1 + 32) + 80);
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = v36;
                      v42 = v14;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Adding %@ to today's kill dictionary", buf, 0xCu);
                    }

                    v28 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v14];
                    [v28 doubleValue];
                    v30 = [NSNumber numberWithDouble:v29 + 1.0];
                    [*(*(a1 + 32) + 48) setObject:v30 forKeyedSubscript:v14];

                    v37 = 1;
                  }
                }

                else
                {
                  [*(*(a1 + 32) + 64) addObject:v14];
                }

                v13 = &NSLocalizedDescriptionKey_ptr;
              }
            }

            v7 = *(v3 + 24);
          }

          ++v10;
          v11 += 288;
        }

        while (v10 < v7);
        v31 = v39;
        v32 = v38;
        v6 = v40;
        v33 = v37;
      }

      else
      {
        v33 = 0;
        v9 = 0;
        v32 = 0;
        v31 = 0;
      }

      free(v3);
      [_DASMetricRecorder setValue:v31 forKey:@"com.apple.dasd.swap.goodfreezecount"];
      [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.dasd.swap.badfreezecount" byCount:v32];
      if (v33)
      {
        objc_storeStrong((*(a1 + 32) + 96), v9);
        [*(a1 + 32) _queue_updateHistograms];
        [*(*(a1 + 32) + 72) logFreezerSkipReasons:v6];
      }
    }
  }
}

void sub_100080B64(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v2 = [*(a1 + 32) _queue_computeScores];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100080C9C;
  v6[3] = &unk_1001B7070;
  v6[4] = v7;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100080CD8;
  v3[3] = &unk_1001B7098;
  v4 = *(a1 + 40);
  v5 = v7;
  [v2 enumerateKeysAndObjectsUsingBlock:v3];

  _Block_object_dispose(v7, 8);
}

double sub_100080C9C(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

void sub_100080CD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 doubleValue];
  v7 = [NSNumber numberWithDouble:v6 / *(*(*(a1 + 40) + 8) + 24)];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

Class sub_100081158(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10020B558)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10008129C;
    v4[4] = &unk_1001B54A0;
    v4[5] = v4;
    v5 = off_1001B70B8;
    v6 = 0;
    qword_10020B558 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10020B558)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ATXProactiveSuggestionConsumer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001229AC();
  }

  qword_10020B550 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10008129C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020B558 = result;
  return result;
}

void sub_100082134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100082160(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained scheduler_activity];
    v7 = [v3 isEqual:v6];

    v8 = qword_10020B560;
    if (v7)
    {
      if (os_log_type_enabled(qword_10020B560, OS_LOG_TYPE_INFO))
      {
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "DAS told us to run %{public}@", &v10, 0xCu);
      }

      v9 = +[_DASBGSystemTaskHelper sharedInstance];
      [v9 runActivity:v5];
    }

    else if (os_log_type_enabled(qword_10020B560, OS_LOG_TYPE_ERROR))
    {
      sub_1001229D4();
    }
  }

  else if (os_log_type_enabled(qword_10020B560, OS_LOG_TYPE_ERROR))
  {
    sub_100122A3C();
  }
}

void sub_1000822B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained scheduler_activity];
    v7 = [v3 isEqual:v6];

    if (v7)
    {
      v8 = [v5 state];
      v9 = qword_10020B560;
      v10 = os_log_type_enabled(qword_10020B560, OS_LOG_TYPE_INFO);
      if (v8 == 3)
      {
        if (v10)
        {
          v14 = 138543362;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "DAS told us to suspend %{public}@", &v14, 0xCu);
        }

        v11 = [v3 lastDenialValue];
        v12 = [v5 scheduler_activity];
        [v12 setLastDenialValue:v11];

        v13 = +[_DASBGSystemTaskHelper sharedInstance];
        [v13 suspendActivity:v5];
      }

      else if (v10)
      {
        v14 = 138543362;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "DAS told us to suspend %{public}@, but task isn't running", &v14, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_10020B560, OS_LOG_TYPE_ERROR))
    {
      sub_100122AA4();
    }
  }

  else if (os_log_type_enabled(qword_10020B560, OS_LOG_TYPE_ERROR))
  {
    sub_100122B0C();
  }
}

uint64_t sub_100083288(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B570;
  qword_10020B570 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10008339C(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:off_10020A088[0]])
  {
    v26 = [[_DASRuntimeTracker alloc] initRuntimeTrackingGroupWithMaximumRuntime:*(a1 + 32) inGroup:*(a1 + 56) withWindow:-1.0];
    v2 = *(a1 + 40);
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = v3;
      v5 = *(v2 + 8);
      *(v2 + 8) = v4;
    }

    else
    {
      v13 = +[NSMutableDictionary dictionary];
      v14 = *(a1 + 40);
      v5 = *(v14 + 8);
      *(v14 + 8) = v13;
    }

    v15 = 8;
LABEL_20:

    [*(*(a1 + 40) + v15) setObject:v26 forKeyedSubscript:*(a1 + 48)];

    return;
  }

  if ([*(a1 + 32) isEqualToString:off_10020A090[0]])
  {
    v6 = *(*(a1 + 40) + 16);
    if (!v6 || ([v6 objectForKeyedSubscript:*(a1 + 48)], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      v8 = [[_DASRuntimeTracker alloc] initRuntimeTrackingGroupWithMaximumRuntime:*(a1 + 32) inGroup:*(a1 + 56) withWindow:14400.0];
      v9 = *(a1 + 40);
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v10;
        v12 = *(v9 + 16);
        *(v9 + 16) = v11;
      }

      else
      {
        v16 = +[NSMutableDictionary dictionary];
        v17 = *(a1 + 40);
        v12 = *(v17 + 16);
        *(v17 + 16) = v16;
      }

      [*(*(a1 + 40) + 16) setObject:v8 forKeyedSubscript:*(a1 + 48)];
    }

    v18 = *(*(a1 + 40) + 24);
    if (!v18 || ([v18 objectForKeyedSubscript:*(a1 + 48)], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
    {
      v20 = [_DASRuntimeTracker alloc];
      v26 = [(_DASRuntimeTracker *)v20 initRuntimeTrackingGroupWithMaximumRuntime:off_10020A098 inGroup:*&qword_10020A0A0 withWindow:600.0];
      v21 = *(a1 + 40);
      v22 = *(v21 + 24);
      if (v22)
      {
        v23 = v22;
        v5 = *(v21 + 24);
        *(v21 + 24) = v23;
      }

      else
      {
        v24 = +[NSMutableDictionary dictionary];
        v25 = *(a1 + 40);
        v5 = *(v25 + 24);
        *(v25 + 24) = v24;
      }

      v15 = 24;
      goto LABEL_20;
    }
  }
}

void sub_10008367C(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 16);
  if (v3)
  {
    if (*(v2 + 24))
    {
      v4 = [v3 objectForKeyedSubscript:a1[5]];
      if (v4)
      {
        v5 = v4;
        v6 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];

        if (v6)
        {
          *(*(a1[6] + 8) + 24) = 1;
        }
      }
    }
  }
}

void sub_1000837B4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = (a1 + 40);
    v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];
    if (v4)
    {
      if (*(a1 + 56) != 1)
      {
        goto LABEL_5;
      }

      [*(a1 + 32) unprotectedCurrentRuntimeForActivityName:*(a1 + 40)];
      v6 = v5;
      v7 = *(a1 + 48);
      v8 = [v4 runningTracker];
      [v8 reallocatedRuntime];
      v10 = v7 - v9;

      if (v6 >= v10)
      {
        v18 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 40);
          v20 = *(a1 + 48);
          v21 = [v4 runningTracker];
          [v21 reallocatedRuntime];
          v23 = v20 - v22;
          v24 = *(a1 + 48);
          v25 = [v4 runningTracker];
          [v25 reallocatedRuntime];
          v27 = 138413570;
          v28 = v19;
          v29 = 2048;
          v30 = v20;
          v31 = 2048;
          v32 = v6;
          v33 = 2048;
          v34 = v23;
          v35 = 2048;
          v36 = v24;
          v37 = 2048;
          v38 = v26;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not reallocate runtime tracker %@ with new max %f: %f >= %f (%f - %f)", &v27, 0x3Eu);
        }
      }

      else
      {
LABEL_5:
        [v4 updateMaximumRuntime:*(a1 + 48)];
      }
    }

    else
    {
      v11 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100122CF0(v3, v11, v12, v13, v14, v15, v16, v17);
      }
    }
  }
}

void sub_100083A58(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = +[NSMutableDictionary dictionary];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{v8, v12}];
          if (!v9)
          {
            v11 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              sub_100122D60();
            }

            goto LABEL_14;
          }

          v10 = v9;
          [v9 updateAdditionalRuntime:*(a1 + 48)];
          [v2 setObject:v10 forKeyedSubscript:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v3 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [NSNumber numberWithDouble:*(a1 + 48)];
      *buf = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Additional runtime %@ distributed to trackers now %@", buf, 0x16u);
LABEL_14:
    }
  }
}

void sub_100083D1C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
    v4 = v3;
    if (v3)
    {
      [v3 updateReallocatedRuntime:*(a1 + 48)];
      v5 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [NSNumber numberWithDouble:*(a1 + 48)];
        v7 = *(a1 + 40);
        v8 = [v4 description];
        v15 = 138412802;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reallocated %@, Now activity %@ has %@", &v15, 0x20u);
      }
    }

    else
    {
      v5 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100122DC8((a1 + 40), v5, v9, v10, v11, v12, v13, v14);
      }
    }
  }
}

void sub_100083F0C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    [v2 removeAllObjects];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
  }
}

void sub_100084030(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = [*(a1 + 40) name];
    v5 = [v3 objectForKeyedSubscript:v4];

    v2 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v2 + 16);
      v7 = [*(a1 + 40) name];
      v8 = [v6 objectForKeyedSubscript:v7];

      v9 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 groupType];
        v11 = [*(a1 + 40) name];
        v12 = [v8 hasRemainingRuntime];
        v13 = [v8 description];
        v25 = 138413058;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        v29 = 1024;
        v30 = v12;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RuntimeTracker [%@]: %@ hasRemainingRuntime %d, %@", &v25, 0x26u);
      }

      *(*(*(a1 + 48) + 8) + 24) = [v8 hasRemainingRuntime];
      v2 = *(a1 + 32);
    }
  }

  v14 = *(v2 + 24);
  if (v14)
  {
    v15 = [*(a1 + 40) name];
    v16 = [v14 objectForKeyedSubscript:v15];

    if (v16)
    {
      v17 = *(*(a1 + 32) + 24);
      v18 = [*(a1 + 40) name];
      v19 = [v17 objectForKeyedSubscript:v18];

      v20 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 groupType];
        v22 = [*(a1 + 40) name];
        v23 = [v19 hasRemainingRuntime];
        v24 = [v19 description];
        v25 = 138413058;
        v26 = v21;
        v27 = 2112;
        v28 = v22;
        v29 = 1024;
        v30 = v23;
        v31 = 2112;
        v32 = v24;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "RuntimeTracker [%@]: %@ hasRemainingRuntime %d, %@", &v25, 0x26u);
      }

      *(*(*(a1 + 48) + 8) + 24) &= [v19 hasRemainingRuntime];
    }
  }
}

void sub_1000846D0(uint64_t a1)
{
  v1 = a1 + 40;
  v2 = [*(a1 + 32) runtimeTrackerFor:*(a1 + 40) inGroup:*(a1 + 48)];
  if (v2)
  {
    v3 = [*v1 copy];
    [v2 activityStarted:v3];
  }

  else
  {
    v4 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100122E38((v1 + 8), v1);
    }
  }
}

void sub_100084954(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) startDate];

  if (v3)
  {
    v5 = *(a1 + 48);
    v4 = (a1 + 48);
    v6 = [*(v4 - 1) runtimeTrackerFor:*(v4 - 2) inGroup:v5];
    if (v6)
    {
      v7 = [*v2 copy];
      [v6 activityEnded:v7];

      v8 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v6 groupType];
        v10 = [*v2 name];
        v11 = [v6 hasRemainingRuntime];
        v12 = [v6 description];
        v13 = 138413058;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 1024;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "RuntimeTracker activityEnded [%@]: %@ hasRemainingRuntime %d, %@", &v13, 0x26u);
      }
    }

    else
    {
      v8 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100122ECC(v4, v2);
      }
    }
  }
}

void sub_100084BE8(void *a1)
{
  v2 = *(a1[4] + 8);
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:a1[5]];
    if (v3)
    {
      v6 = v3;
      v4 = [v3 runningTracker];
      [v4 maximumRuntime];
      *(*(a1[6] + 8) + 24) = v5;

      v3 = v6;
    }
  }
}

void sub_100084DE8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    v3 = [*(a1 + 40) name];
    v7 = [v1 objectForKeyedSubscript:v3];

    v4 = v7;
    if (v7)
    {
      v5 = [v7 runningTracker];
      [v5 reallocatedRuntime];
      *(*(*(a1 + 48) + 8) + 24) = v6;

      v4 = v7;
    }
  }
}

void sub_100084F84(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    v3 = [*(a1 + 40) name];
    v4 = [v1 objectForKeyedSubscript:v3];

    if (v4)
    {
      v5 = [v4 runningTracker];
      [v5 remainingRuntime];
      *(*(*(a1 + 48) + 8) + 24) = v6;

      if (*(*(*(a1 + 48) + 8) + 24) > 0.0)
      {
        v7 = +[NSDate now];
        v8 = [*(a1 + 40) uuid];
        v9 = [v8 UUIDString];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v4 activeActivities];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            v14 = 0;
            do
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * v14);
              v16 = [v4 activeActivities];
              v17 = [v16 objectForKeyedSubscript:v15];

              [v17 timeIntervalSinceDate:v7];
              if (v18 < 0.0)
              {
                *(*(*(a1 + 48) + 8) + 24) = v18 + *(*(*(a1 + 48) + 8) + 24);
              }

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v12);
        }
      }
    }
  }
}

void sub_100085230(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = [v2 allKeys];
    *(*(*(a1 + 40) + 8) + 24) = [v3 count];
  }
}

void sub_100085350(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v1;
    v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v21;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v20 + 1) + 8 * i);
          v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
          v9 = [v8 runningTracker];
          [v9 maximumRuntime];
          v11 = v10;
          v12 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
          v13 = [v12 runningTracker];
          [v13 additionalRuntime];
          v15 = v11 + v14;
          v16 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
          v17 = [v16 runningTracker];
          [v17 reallocatedRuntime];
          *(*(*(a1 + 40) + 8) + 24) = v15 - v18 + *(*(*(a1 + 40) + 8) + 24);
        }

        v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v4);
    }
  }
}

uint64_t sub_100085614(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008562C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{v8, v20}];
          v10 = [v9 runningTracker];
          [v10 maximumRuntime];
          v12 = v11;

          v13 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v8];
          [v13 currentRuntime];
          v15 = v14;

          if (v15 >= v12)
          {
            v15 = v12;
          }

          v16 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v8];
          [v16 actualReallocatedRuntime];
          v18 = v17;

          v19 = [[_DASActivityRuntimeAllocationInfo alloc] initActivityRuntimeAllocationInfo:v8 allocatedRuntime:v12 utilizedRuntime:v15 reallocatedDuration:v18];
          [*(*(*(a1 + 40) + 8) + 40) setObject:v19 forKeyedSubscript:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v5);
    }
  }
}

void sub_1000858B0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * v7), v10}];
          [v8 currentRuntime];
          *(*(*(a1 + 40) + 8) + 24) = v9 + *(*(*(a1 + 40) + 8) + 24);

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

void sub_100085A88(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * v7), v18}];
          [v8 currentRuntime];
          v10 = v9;
          v11 = [v8 runningTracker];
          [v11 maximumRuntime];
          v13 = v12;
          v14 = [v8 runningTracker];
          [v14 additionalRuntime];
          v16 = v13 + v15;

          if (v10 >= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v10;
          }

          *(*(*(a1 + 40) + 8) + 24) = v17 + *(*(*(a1 + 40) + 8) + 24);

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v5);
    }
  }
}

void sub_100085CB4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v7), v12}];
          v9 = [v8 runningTracker];
          [v9 reallocatedRuntime];
          v11 = v10;

          if (v11 > 0.0)
          {
            ++*(*(*(a1 + 40) + 8) + 24);
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }
}

void sub_100085EB8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * v7), v15}];
          v9 = [v8 runningTracker];
          [v9 maximumRuntime];
          v11 = v10 * *(a1 + 48);
          v12 = [v8 runningTracker];
          [v12 currentRuntime];
          v14 = v13;

          if (v11 <= v14)
          {
            ++*(*(*(a1 + 40) + 8) + 24);
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }
  }
}

void sub_1000860E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v7), v14}];
          v9 = [v8 runningTracker];
          [v9 maximumRuntime];
          v11 = v10;

          [v8 currentRuntime];
          v13 = v11 - v12;
          if (v13 > 0.0)
          {
            v13 = 0.0;
          }

          *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) - v13;

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }
}

void sub_1000862EC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * v7), v10}];
          [v8 actualReallocatedRuntime];
          *(*(*(a1 + 40) + 8) + 24) = v9 + *(*(*(a1 + 40) + 8) + 24);

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

void *sub_100086824(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    v3 = [result description];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return _objc_release_x1(v3, v5);
  }

  return result;
}

void sub_10008698C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000869A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1] || v2[2] || v2[3])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(a1 + 32) runtimeTrackerFor:*(a1 + 48) inGroup:{*(*(&v9 + 1) + 8 * v7), v9}];
          if (v8)
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

void sub_100086BA8(void *a1)
{
  v2 = *(a1[4] + 8);
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:a1[5]];
    if (v3)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }
  }
}

void sub_100086D08(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) name];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10008700C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100087070(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B580;
  qword_10020B580 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000874E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10008752C(id a1)
{
  if (!qword_10020B588)
  {
    v1 = objc_opt_new();
    v2 = qword_10020B588;
    qword_10020B588 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000875C8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.duetactivityscheduler.predictionGenerationQueue", v3);
  v2 = qword_10020B5A0;
  qword_10020B5A0 = v1;
}

void sub_100087D40(uint64_t a1)
{
  v2 = qword_10020B5A8;
  if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001230CC(v2);
  }

  v3 = objc_alloc_init(*(a1 + 32));
  v4 = qword_10020B5B8;
  qword_10020B5B8 = v3;
}

void sub_10008A560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10008A5B4(uint64_t a1, void *a2)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    v6 = kUsageNetworkWiFiInBytes;
    v7 = kUsageNetworkCellInBytes;
    v8 = kUsageNetworkWiFiOutBytes;
    v9 = kUsageNetworkCellOutBytes;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:v6];
        [v12 doubleValue];
        *(*(*(a1 + 48) + 8) + 24) = v13 + *(*(*(a1 + 48) + 8) + 24);

        v14 = [v11 objectForKeyedSubscript:v7];
        [v14 doubleValue];
        *(*(*(a1 + 56) + 8) + 24) = v15 + *(*(*(a1 + 56) + 8) + 24);

        v16 = [v11 objectForKeyedSubscript:v8];
        [v16 doubleValue];
        *(*(*(a1 + 64) + 8) + 24) = v17 + *(*(*(a1 + 64) + 8) + 24);

        v18 = [v11 objectForKeyedSubscript:v9];
        [v18 doubleValue];
        *(*(*(a1 + 72) + 8) + 24) = v19 + *(*(*(a1 + 72) + 8) + 24);
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  v20 = qword_10020B5A8;
  if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100123928(a1, v20, v21, v22, v23, v24, v25, v26);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10008AC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10008ACC0(uint64_t a1, void *a2)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    v6 = kUsageNetworkWiFiInBytes;
    v7 = kUsageNetworkCellInBytes;
    v8 = kUsageNetworkWiFiOutBytes;
    v9 = kUsageNetworkCellOutBytes;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:v6];
        [v12 doubleValue];
        *(*(*(a1 + 48) + 8) + 24) = v13 + *(*(*(a1 + 48) + 8) + 24);

        v14 = [v11 objectForKeyedSubscript:v7];
        [v14 doubleValue];
        *(*(*(a1 + 56) + 8) + 24) = v15 + *(*(*(a1 + 56) + 8) + 24);

        v16 = [v11 objectForKeyedSubscript:v8];
        [v16 doubleValue];
        *(*(*(a1 + 64) + 8) + 24) = v17 + *(*(*(a1 + 64) + 8) + 24);

        v18 = [v11 objectForKeyedSubscript:v9];
        [v18 doubleValue];
        *(*(*(a1 + 72) + 8) + 24) = v19 + *(*(*(a1 + 72) + 8) + 24);
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  v20 = qword_10020B5A8;
  if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100123BA0(a1, v20, v21, v22, v23, v24, v25, v26);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10008B1B8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10008B8DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_10020B5C8;
  if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"com.apple.dasd.closureOnBoot";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Run task %@", &v6, 0xCu);
  }

  v5 = objc_autoreleasePoolPush();
  [*(a1 + 32) buildClosuresOnBootWithTask:v3];
  objc_autoreleasePoolPop(v5);
}

void sub_10008B9B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_10020B5C8;
  if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"com.apple.dasd.closureOpportunistic";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Run task %@", &v6, 0xCu);
  }

  v5 = objc_autoreleasePoolPush();
  [*(a1 + 32) buildClosuresOpportunisticWithTask:v3];
  objc_autoreleasePoolPop(v5);
}

BOOL sub_10008C46C(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 isInstall];

  return v3;
}

void sub_10008C4A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = qword_10020B5C8;
    if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_ERROR))
    {
      sub_100123E7C(a1, v4, v3);
    }
  }
}

void sub_10008C510(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 eventBody];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v8 eventBody];
    v7 = [v6 bundleID];
    [v5 addObject:v7];
  }
}

uint64_t sub_10008CDC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 bundleID];

  if (v5)
  {
    v6 = [v3 eventBody];
    if ([v6 starting])
    {
      v7 = [v3 eventBody];
      if ([v7 type] == 1)
      {
        v8 = [*(a1 + 32) containsObject:v5] ^ 1;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10008CE88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  [v7 doubleValue];
  v9 = v8;
  v10 = [*(a1 + 32) objectForKeyedSubscript:v6];

  [v10 doubleValue];
  v12 = v11;

  if (v9 <= v12)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_10008D228(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  [v5 signpostTimestamp];
  v9 = v8;
  [v6 signpostTimestamp];
  v11 = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008D314;
  v14[3] = &unk_1001B7338;
  v15 = v5;
  v16 = v6;
  v12 = v6;
  v13 = v5;
  [v7 collectLaunchDataWithBootBatchTimestamp:v14 opportunisticBatchTimestamp:v9 completion:v11];
}

void sub_10008D314(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v9 = a2;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v10 = &v39;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10008D774;
  v29[3] = &unk_1001B7310;
  v30 = *(a1 + 32);
  v32 = &v43;
  v31 = *(a1 + 40);
  v33 = &v39;
  v34 = &v35;
  [v9 enumerateKeysAndObjectsUsingBlock:v29];
  v11 = qword_10020B5C8;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v9 allKeys];
    v12 = [*(a1 + 32) bundleIDs];
    v13 = [*(a1 + 40) bundleIDs];
    *buf = 138412802;
    *v48 = v10;
    *&v48[8] = 2112;
    v49 = v12;
    v50 = 2112;
    v51 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Closures built: %@, onBoot: %@, batch2: %@", buf, 0x20u);
  }

  v14 = qword_10020B5C0;
  v15 = os_signpost_id_generate(qword_10020B5C0);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v15;
    if (os_signpost_enabled(v14))
    {
      if (a3)
      {
        v16 = *(v44 + 6);
      }

      else
      {
        v16 = -1;
      }

      *buf = 67240192;
      *v48 = v16;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v10, "DuetClosuresBeforeOnBoot", "appBundles=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", buf, 8u);
    }
  }

  v17 = qword_10020B5C0;
  v18 = os_signpost_id_generate(qword_10020B5C0);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v17))
    {
      v20 = a4 ? *(v40 + 6) : -1;
      v21 = *(a1 + 32);
      if (v21)
      {
        v10 = [*(a1 + 32) bundleIDs];
        v22 = [v10 count];
      }

      else
      {
        v22 = -1;
      }

      *buf = 67240448;
      *v48 = v20;
      *&v48[4] = 1026;
      *&v48[6] = v22;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, v19, "DuetClosuresAfterOnBoot", "appBundles=%{public, signpost.telemetry:number1}d prewarmed=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", buf, 0xEu);
      if (v21)
      {
      }
    }
  }

  v23 = qword_10020B5C0;
  v24 = os_signpost_id_generate(qword_10020B5C0);
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = v24;
    if (os_signpost_enabled(v23))
    {
      if (a5)
      {
        v26 = *(v36 + 6);
      }

      else
      {
        v26 = -1;
      }

      v27 = *(a1 + 40);
      if (v27)
      {
        a5 = [v27 bundleIDs];
        v28 = [a5 count];
      }

      else
      {
        v28 = -1;
      }

      *buf = 67240448;
      *v48 = v26;
      *&v48[4] = 1026;
      *&v48[6] = v28;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, v25, "DuetClosuresAfterOpportunistic", "appBundles=%{public, signpost.telemetry:number1}d prewarmed=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", buf, 0xEu);
      if (v27)
      {
      }
    }
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
}

void sub_10008D730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10008D774(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 timeIntervalSince1970];
  v7 = v6;
  [*(a1 + 32) signpostTimestamp];
  if (v7 >= v8 && *(a1 + 32))
  {
    [*(a1 + 40) signpostTimestamp];
    if (v7 >= v9 && *(a1 + 40))
    {
      ++*(*(*(a1 + 64) + 8) + 24);
      v10 = [*(a1 + 40) bundleIDs];
      v11 = [v10 containsObject:v5];

      if (v11)
      {
        v12 = qword_10020B5C8;
        if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = v5;
          v13 = "Closure built for %@, although prewarmed opportunistically";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v16, 0xCu);
        }
      }
    }

    else
    {
      ++*(*(*(a1 + 56) + 8) + 24);
      v14 = [*(a1 + 32) bundleIDs];
      v15 = [v14 containsObject:v5];

      if (v15)
      {
        v12 = qword_10020B5C8;
        if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = v5;
          v13 = "Closure built for %@, although prewarmed on boot";
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void sub_10008DBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008DC04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  if (([v4 isEqualToString:@"ApplicationLaunchExtendedResponsive"] & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v5 = [v3 metadataSegments];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v7 = qword_10020B5C8;
    if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v3 processName];
      v25 = 138412290;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Analyzing launch for %@", &v25, 0xCu);
    }

    v10 = [v3 beginDate];
    [v10 timeIntervalSince1970];
    v12 = v11;

    if (v12 >= *(a1 + 64))
    {
      v13 = 56;
      if (v12 < *(a1 + 72))
      {
        v13 = 48;
      }
    }

    else
    {
      v13 = 40;
    }

    *(*(*(a1 + v13) + 8) + 24) = 1;
    v14 = [v3 number2Value];
    v15 = [v14 intValue];

    if ((v15 & 4) != 0)
    {
      v16 = [v3 processImagePath];

      if (v16)
      {
        v17 = [v3 processImagePath];
        v18 = [v17 stringByDeletingLastPathComponent];
        v4 = [NSURL fileURLWithPath:v18];

        v19 = [[LSApplicationRecord alloc] initWithURL:v4 allowPlaceholder:0 error:0];
        v20 = [v19 bundleIdentifier];
        if (v20)
        {
          v21 = [v3 beginDate];
          [*(a1 + 32) setObject:v21 forKeyedSubscript:v20];
        }

        else
        {
          v23 = qword_10020B5C8;
          if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_ERROR))
          {
            sub_100123FA8(v23, v3);
          }
        }

        goto LABEL_18;
      }

      v22 = qword_10020B5C8;
      if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_ERROR))
      {
        sub_100124044(v22, v3);
      }
    }
  }

LABEL_19:

  return 1;
}

void sub_10008DEA8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = *(*(a1[6] + 8) + 24);
  v9 = *(*(a1[7] + 8) + 24);
  v10 = *(*(a1[8] + 8) + 24);
  (*(a1[5] + 16))();
  if (v5 && os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_ERROR))
  {
    sub_1001240E0();
  }
}

void sub_10008E1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008E1EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10008E204(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:@"DuetClosuresPrewarm"];

  if (v5)
  {
    v6 = [v3 metadataSegments];
    v7 = [v6 firstObject];
    v8 = [v7 argument];
    v9 = [v8 argumentObject];

    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 performSelector:"BOOLValue"];
      v11 = [v3 metadataSegments];
      v12 = [v11 lastObject];
      v13 = [v12 argument];
      v14 = [v13 argumentObject];

      if (objc_opt_respondsToSelector())
      {
        v15 = [v14 performSelector:"componentsSeparatedByString:" withObject:{@", "}];
        if ([v15 count] == 1)
        {
          v16 = [v15 firstObject];
          v17 = [&stru_1001BA3C0 isEqualToString:v16];

          if (v17)
          {

            v15 = 0;
          }
        }

        v18 = objc_opt_new();
        [v18 setBundleIDs:v15];
        v19 = [v3 beginDate];
        [v19 timeIntervalSince1970];
        [v18 setSignpostTimestamp:?];

        v20 = 40;
        if (!v10)
        {
          v20 = 48;
        }

        v21 = *(*(a1 + v20) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v18;
      }
    }
  }

  v23 = [*(*(a1 + 32) + 8) wasDeferred];

  return v23 ^ 1;
}

void sub_10008E404(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1[5] + 8) + 40);
  v8 = *(*(a1[6] + 8) + 40);
  (*(a1[4] + 16))();
  if (v5)
  {
    v9 = qword_10020B5C8;
    if (os_log_type_enabled(qword_10020B5C8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error processing prewarming signposts: %@, %@", &v10, 0x16u);
    }
  }
}

uint64_t sub_10008E724(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_10008E73C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020B5D0 = objc_opt_new();

  return _objc_release_x1();
}

id sub_10008F414(uint64_t a1)
{
  v13[0] = @"FeatureCode";
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v14[0] = v2;
  v13[1] = @"WorkloadSize";
  v3 = *(a1 + 32);
  v4 = v3;
  if (!v3)
  {
    v4 = +[NSNull null];
  }

  v14[1] = v4;
  v13[2] = @"OSUpdateType";
  v5 = [NSNumber numberWithBool:*(a1 + 72)];
  v14[2] = v5;
  v13[3] = @"TimeSinceOSUpdate";
  v6 = *(a1 + 48);
  if (v6 > 0.0)
  {
    [NSNumber numberWithDouble:v6 / 3600.0];
  }

  else
  {
    +[NSNull null];
  }
  v7 = ;
  v14[3] = v7;
  v13[4] = @"FeatureState";
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v14[4] = v8;
  v13[5] = @"InferredCarry";
  v9 = [NSNumber numberWithBool:*(a1 + 73)];
  v14[5] = v9;
  v13[6] = @"FeatureUsage";
  v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
  v14[6] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];

  if (!v3)
  {
  }

  return v11;
}

void sub_10008F93C(uint64_t a1)
{
  v2 = +[_DASPostRestoreBUILogger sharedInstance];
  [v2 reportState:*(a1 + 48) forActivity:*(a1 + 32)];

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) taskInstanceID];
  v6 = 0;
  [v4 sendTaskCheckpoint:v3 forTask:v5 error:&v6];
}

void sub_10008FC50(void *a1)
{
  [*(a1[4] + 72) setObject:a1[6] forKeyedSubscript:a1[5]];
  v2 = [NSNumber numberWithInteger:a1[7]];
  [*(a1[4] + 80) setObject:v2 forKeyedSubscript:a1[5]];
}

void sub_10008FE30(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) allKeys];
  v3 = [NSMutableSet setWithArray:v2];

  v4 = [*(*(a1 + 32) + 80) allKeys];
  v5 = [NSSet setWithArray:v4];
  [v3 unionSet:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = +[NSMutableDictionary dictionary];
        [v12 setObject:v11 forKeyedSubscript:@"TaskName"];
        v13 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v11];
        [v12 setObject:v13 forKeyedSubscript:@"FeatureCodes"];

        v14 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:v11];
        [v12 setObject:v14 forKeyedSubscript:@"Version"];

        if (([*(a1 + 32) sendDataToPPS:v12 subsystem:@"BackgroundProcessing" category:@"TaskFeatureCodes"] & 1) == 0)
        {
          if (os_log_type_enabled(*(*(a1 + 32) + 56), OS_LOG_TYPE_ERROR))
          {
            sub_1001241D8();
          }

          goto LABEL_13;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 32) + 72) removeAllObjects];
  [*(*(a1 + 32) + 80) removeAllObjects];
LABEL_13:
}

void sub_1000906EC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKey:@"availableStatus"];
  v3 = [v2 mutableCopy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = v3;

  v6 = *(a1 + 32);
  if (!*(v6 + 88))
  {
    [v6 populateFeatureStatusFromPast];
    v6 = *(a1 + 32);
  }

  v7 = [*(v6 + 64) objectForKey:@"availableStatus"];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v7 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:v13];
        [*(a1 + 32) reportFeatureStatus:50 forFeature:objc_msgSend(v13 stateChangedDate:"integerValue") error:{v14, 0}];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v15 = [*(*(a1 + 32) + 64) objectForKey:@"previewAvailableStatus"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [v15 allKeys];
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * j);
        v22 = [v15 objectForKeyedSubscript:v21];
        [*(a1 + 32) reportFeatureStatus:30 forFeature:objc_msgSend(v21 stateChangedDate:"integerValue") error:{v22, 0}];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }
}

void sub_100090A5C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = +[NSSet set];
  }

  v4 = v3;
  v5 = a1[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = +[NSSet set];
  }

  v7 = v6;
  v9[0] = v4;
  v9[1] = v6;
  v8 = [NSArray arrayWithObjects:v9 count:2];
  [*(a1[6] + 104) setObject:v8 forKeyedSubscript:a1[7]];
}

void sub_100091914(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 reportFeatureStatus];
  [v3 setTaskCompleted];
}

void sub_100091A04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 reportFeatureCodesForTasks];
  [*(a1 + 32) reportDependencyInfoForTasks];
  [v4 setTaskCompleted];
}

void sub_100091AD8(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(*(a1 + 32) + 104);
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = +[NSMutableDictionary dictionary];
        [v7 setObject:v6 forKeyedSubscript:@"TaskName"];
        v8 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:v6];
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v9 allObjects];
        [v7 setObject:v10 forKeyedSubscript:@"ProducedResultIdentifiers"];

        v11 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:v6];
        v12 = [v11 objectAtIndexedSubscript:1];
        v13 = [v12 allObjects];
        [v7 setObject:v13 forKeyedSubscript:@"DependencyIdentifiers"];

        if (([*(a1 + 32) sendDataToPPS:v7 subsystem:@"BackgroundProcessing" category:@"TaskDependencies"] & 1) == 0)
        {
          if (os_log_type_enabled(*(*(a1 + 32) + 56), OS_LOG_TYPE_ERROR))
          {
            sub_100124350();
          }

          return;
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 32) + 104) removeAllObjects];
}

void sub_100091ECC(uint64_t a1)
{
  v12 = [NSMutableDictionary dictionaryWithCapacity:10];
  [v12 setObject:*(a1 + 32) forKeyedSubscript:@"Identifier"];
  v2 = *(a1 + 40);
  if (v2)
  {
    [v12 setObject:v2 forKeyedSubscript:@"TaskName"];
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    [v12 setObject:v3 forKeyedSubscript:@"QoS"];
  }

  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 80)];
  [v12 setObject:v4 forKeyedSubscript:@"WorkloadType"];

  v5 = *(a1 + 56);
  if (v5)
  {
    [v12 setObject:v5 forKeyedSubscript:@"ExpectedValue"];
  }

  v6 = +[_DASConfig isInternalBuild];
  v7 = *(a1 + 88);
  if (v6)
  {
    v8 = [NSNumber numberWithUnsignedInteger:v7];
    [v12 setObject:v8 forKeyedSubscript:@"ItemCount"];

    v9 = *(a1 + 96);
  }

  else
  {
    v10 = [NSNumber numberWithDouble:(100 * v7) / 100.0];
    [v12 setObject:v10 forKeyedSubscript:@"ItemCount"];

    v9 = round(*(a1 + 96) * 100.0) / 100.0;
  }

  v11 = [NSNumber numberWithDouble:v9];
  [v12 setObject:v11 forKeyedSubscript:@"Duration"];

  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 64) sendDataToPPS:v12 subsystem:@"BackgroundProcessing" category:@"TaskThroughput"];
}

uint64_t sub_100092318(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100092330(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(*(*(a1 + 96) + 8) + 24) = [v2 unsignedIntegerValue];
    goto LABEL_41;
  }

  v3 = [NSPredicate predicateWithFormat:@"Identifier == %@", *(a1 + 40)];
  v4 = +[_DASPPSDataManager sharedInstance];
  v5 = a1 + 88;
  v6 = *(*(a1 + 88) + 8);
  obj = *(v6 + 40);
  v7 = [v4 getPPSTimeSeries:@"BackgroundProcessing" category:@"Progress" valueFilter:v3 metrics:0 timeFilter:0 limitCount:1 offsetCount:0 readDirection:1 filepath:0 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  v8 = *(*(*(a1 + 88) + 8) + 40);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    if (v8)
    {
      if (os_log_type_enabled(*(*(a1 + 48) + 56), OS_LOG_TYPE_ERROR))
      {
        sub_100124470(a1 + 88, (a1 + 40));
      }

      v13 = 0;
      *(*(*(a1 + 104) + 8) + 24) = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v10 = [v7 firstObject];
    v11 = [v10 metricKeysAndValues];
    v12 = [v11 objectForKeyedSubscript:@"ItemsCompleted"];
    *(*(*(a1 + 96) + 8) + 24) = [v12 unsignedIntegerValue];

    [v10 epochTimestamp];
    v13 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  if (*(*(*(a1 + 104) + 8) + 24) == 1)
  {
    v14 = +[NSDate now];
    v15 = v14;
    if (v13)
    {
      if ([v14 compare:v13] == 1)
      {
        v16 = [[NSDateInterval alloc] initWithStartDate:v13 endDate:v15];
        goto LABEL_17;
      }
    }

    else
    {
      if (*(*(*(a1 + 96) + 8) + 24))
      {
        if (os_log_type_enabled(*(*(a1 + 48) + 56), OS_LOG_TYPE_ERROR))
        {
          sub_1001244D8(a1 + 88, (a1 + 40));
        }

        goto LABEL_38;
      }

      v33 = [v14 compare:0];
      v16 = 0;
      if (v33 == 1)
      {
LABEL_17:
        v47 = v13;
        v50 = v15;
        v17 = v16;
        v18 = [NSPredicate predicateWithFormat:@"Identifier == %@", *(a1 + 40)];
        v19 = +[_DASPPSDataManager sharedInstance];
        v20 = *(*v5 + 8);
        v55 = *(v20 + 40);
        v49 = v18;
        v21 = [v19 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskThroughput" valueFilter:v18 metrics:0 timeFilter:v17 filepath:0 error:&v55];
        objc_storeStrong((v20 + 40), v55);

        v22 = *(*(*v5 + 8) + 40);
        v23 = v17;
        v48 = v21;
        if (v22 || !v21)
        {
          v32 = v49;
          v15 = v50;
          v13 = v47;
          if (v22)
          {
            if (os_log_type_enabled(*(*(a1 + 48) + 56), OS_LOG_TYPE_ERROR))
            {
              sub_1001245B4(a1 + 88, (a1 + 40));
            }

            *(*(*(a1 + 104) + 8) + 24) = 0;
          }
        }

        else
        {
          v44 = v17;
          v45 = v7;
          v46 = v3;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v24 = v21;
          v25 = [v24 countByEnumeratingWithState:&v51 objects:v57 count:16];
          v13 = v47;
          if (v25)
          {
            v26 = v25;
            v27 = *v52;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v52 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = [*(*(&v51 + 1) + 8 * i) metricKeysAndValues];
                v30 = [v29 objectForKeyedSubscript:@"ItemCount"];
                v31 = [v30 unsignedIntegerValue];

                *(*(*(a1 + 96) + 8) + 24) += v31;
              }

              v26 = [v24 countByEnumeratingWithState:&v51 objects:v57 count:16];
            }

            while (v26);
          }

          v7 = v45;
          v3 = v46;
          v32 = v49;
          v15 = v50;
          v23 = v44;
        }

        goto LABEL_39;
      }
    }

    if (os_log_type_enabled(*(*(a1 + 48) + 56), OS_LOG_TYPE_ERROR))
    {
      sub_100124540();
    }

LABEL_38:
    *(*(*(a1 + 104) + 8) + 24) = 0;
LABEL_39:
  }

LABEL_41:
  if (*(*(*(a1 + 104) + 8) + 24) == 1)
  {
    v34 = +[NSMutableDictionary dictionary];
    [v34 setObject:*(a1 + 40) forKeyedSubscript:@"Identifier"];
    v35 = *(a1 + 56);
    if (v35)
    {
      [v34 setObject:v35 forKeyedSubscript:@"TaskName"];
    }

    v36 = *(a1 + 64);
    if (v36)
    {
      [v34 setObject:v36 forKeyedSubscript:@"QoS"];
    }

    v37 = [NSNumber numberWithUnsignedInteger:*(a1 + 112)];
    [v34 setObject:v37 forKeyedSubscript:@"WorkloadType"];

    v38 = *(a1 + 72);
    if (v38)
    {
      [v34 setObject:v38 forKeyedSubscript:@"ExpectedValue"];
    }

    v39 = +[_DASConfig isInternalBuild];
    v40 = *(*(*(a1 + 96) + 8) + 24);
    if (v39)
    {
      v41 = [NSNumber numberWithUnsignedInteger:v40];
      [v34 setObject:v41 forKeyedSubscript:@"ItemsCompleted"];

      [v34 setObject:*(a1 + 80) forKeyedSubscript:@"TotalItemCount"];
    }

    else
    {
      v42 = [NSNumber numberWithDouble:(100 * v40) / 100.0];
      [v34 setObject:v42 forKeyedSubscript:@"ItemsCompleted"];

      v43 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", (100 * [*(a1 + 80) integerValue]) / 100.0);
      [v34 setObject:v43 forKeyedSubscript:@"TotalItemCount"];
    }

    *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 48) sendDataToPPS:v34 subsystem:@"BackgroundProcessing" category:@"Progress"];
  }
}

uint64_t sub_100092D04(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  qword_10020B5E8 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10009362C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessPredicate predicateMatchingProcessTypeApplication];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  [v3 setPredicates:v5];

  [v3 setStateDescriptor:*(a1 + 32)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000027C8;
  v6[3] = &unk_1001B5EB8;
  v7 = *(a1 + 40);
  [v3 setUpdateHandler:v6];
}

void sub_100093AE0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B5F8;
  qword_10020B5F8 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000940C8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B610;
  qword_10020B610 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_100094748(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B620;
  qword_10020B620 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100095F10(uint64_t a1, void *a2)
{
  v3 = kSymptomDiagnosticReplySuccess;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:kSymptomDiagnosticReplySessionID];

    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001250E0(v7, a1, v8);
    }
  }

  else
  {
    v9 = [v4 objectForKeyedSubscript:kSymptomDiagnosticReplyReason];

    v10 = [v9 intValue];
    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100125050(v10, a1, v11);
    }
  }
}

void sub_100096448(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Asked to defer significantly overdue check", v2, 2u);
  }
}

void sub_1000965A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
  {
    sub_100125248();
  }

  v4 = *(a1 + 40);
  [objc_opt_class() checkAllTasksForBGSystemTask:v3];
}

void sub_10009660C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1000975DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100097678;
  v8[3] = &unk_1001B7610;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

void sub_100097678(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 40) convertBiomeStream:a2 toKnowledgeStoreStream:v5])
  {
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    v8 = [qword_10020B648 objectForKeyedSubscript:v7];
    v9 = [v8 mutableCopy];

    v10 = [_DKEventStream eventStreamWithName:v5];
    [v9 addObject:v10];

    [qword_10020B648 setObject:v9 forKeyedSubscript:*v6];
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
    {
      sub_100125484(v5, v6);
    }
  }
}

void sub_1000999D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

_DKEvent *__cdecl sub_100099A04(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 dkEvent];

  return v3;
}

void sub_100099A74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  *(*(*(a1 + 48) + 8) + 24) += [v4 count];
  v5 = [*(a1 + 64) processEvents:v4];
  v13 = 0;
  v6 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:&v13];
  v7 = v13;
  if (v7)
  {
    if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_ERROR))
    {
      sub_100125E10();
    }
  }

  else
  {
    [*(a1 + 64) extendJSONArrayWithAnotherArray:v6 toFileHandler:*(a1 + 32) isPreviouslyEmpty:*(*(*(a1 + 56) + 8) + 24) == 0];
    *(*(*(a1 + 56) + 8) + 24) += [v5 count];
    v8 = qword_10020B650;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 40) name];
      v10 = [v4 count];
      v11 = [v5 count];
      v12 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 138413058;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = v12;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "writeStream: %@ : From %lu events, written %lu events, total written so far: %lu", buf, 0x2Au);
    }
  }
}

void sub_100099C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    v13 = qword_10020B650;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(v11 + 40) name];
      sub_100125E80(v14, v12, &a11);
    }

    objc_end_catch();
    JUMPOUT(0x100099BA8);
  }

  _Unwind_Resume(exception_object);
}

int64_t sub_10009AA4C(id a1, _DKEvent *a2, _DKEvent *a3)
{
  v4 = a3;
  v5 = [(_DKEvent *)a2 startDate];
  v6 = [(_DKEvent *)v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10009AEF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [NSData dataWithBytesNoCopy:v2 length:v3 freeWhenDone:0];
  [v4 writeData:v5];
}

NSDate *sub_10009AF70(void *a1)
{
  [a1 timeIntervalSince1970];
  v2 = floor(v1 / 300.0) * 300.0;

  return [NSDate dateWithTimeIntervalSince1970:v2];
}

void sub_10009B748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B778(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009B790(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 32) saveObjects:*(a1 + 40) error:0];
  [*(a1 + 40) removeAllObjects];
  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
  {
    sub_100126420(a1);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10009B810(uint64_t a1, void *a2)
{
  v17 = a2;
  ++*(*(*(a1 + 56) + 8) + 24);
  v3 = objc_autoreleasePoolPush();
  v4 = [v17 eventBody];
  v5 = [*(*(*(a1 + 64) + 8) + 40) eventBody];
  if ([v4 starting])
  {
    v6 = *(*(a1 + 64) + 8);
    v7 = v17;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
    goto LABEL_12;
  }

  [v17 timestamp];
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v10 = v9;
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v11 = [v4 semanticType];
    if (v11 != [v5 semanticType])
    {
      v8 = v10;
      [*(*(*(a1 + 64) + 8) + 40) timestamp];
      v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v14 = +[_DKEvent eventWithStream:startDate:endDate:categoryIntegerValue:metadata:](_DKEvent, "eventWithStream:startDate:endDate:categoryIntegerValue:metadata:", *(a1 + 32), v13, v13, [v5 semanticType], 0);
      [*(a1 + 40) addObject:v14];

      goto LABEL_9;
    }

    [*(*(*(a1 + 64) + 8) + 40) timestamp];
    v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v12 = v9;
  }

  v8 = v12;
LABEL_9:
  if ([v8 compare:v10] != 1)
  {
    v15 = +[_DKEvent eventWithStream:startDate:endDate:categoryIntegerValue:metadata:](_DKEvent, "eventWithStream:startDate:endDate:categoryIntegerValue:metadata:", *(a1 + 32), v8, v10, [v4 semanticType], 0);
    [*(a1 + 40) addObject:v15];
  }

LABEL_12:
  if ([*(a1 + 40) count] >= 0x21)
  {
    v16 = objc_autoreleasePoolPush();
    [*(a1 + 48) saveObjects:*(a1 + 40) error:0];
    [*(a1 + 40) removeAllObjects];
    objc_autoreleasePoolPop(v16);
  }

  objc_autoreleasePoolPop(v3);
}

id sub_10009BB70(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009BBE8;
  v4[3] = &unk_1001B7830;
  v4[4] = *(a1 + 32);
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_10009BFCC(uint64_t a1)
{
  v2 = os_transaction_create();
  byte_10020B658 = 1;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
  {
    sub_100126518();
  }

  v4 = *(a1 + 32);
  [objc_opt_class() loadParameters];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() experimentsToWrite];
  if (os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG))
  {
    sub_100126554();
  }

  v7 = [*(a1 + 32) writeExperiments:v6 atFileName:@"/var/mobile/Library/DuetActivityScheduler/dasd_data.json" withTask:0];
  v8 = os_log_type_enabled(qword_10020B650, OS_LOG_TYPE_DEBUG);
  if (v7 < 1)
  {
    if (v8)
    {
      sub_1001265C4();
    }
  }

  else if (v8)
  {
    sub_100126600();
  }

  [*(a1 + 32) deleteConvertedStreams];

  objc_autoreleasePoolPop(v3);
  byte_10020B658 = 0;
}

void sub_10009C194(uint64_t a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [_DASDaemonLogger logForCategory:@"dataCollection"];
  v4 = qword_10020B650;
  qword_10020B650 = v3;

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10009C7C0;
  v21[3] = &unk_1001B7870;
  v21[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dataCollection" usingQueue:0 launchHandler:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009C818;
  v20[3] = &unk_1001B7870;
  v20[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.analyticsReporting" usingQueue:0 launchHandler:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10009C870;
  v19[3] = &unk_1001B7870;
  v19[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicBackgroundAppRefreshReporting" usingQueue:0 launchHandler:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10009C8C8;
  v18[3] = &unk_1001B7870;
  v18[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicBasic" usingQueue:0 launchHandler:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009C930;
  v17[3] = &unk_1001B7870;
  v17[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicNetworking" usingQueue:0 launchHandler:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009C998;
  v16[3] = &unk_1001B7870;
  v16[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicPlugin" usingQueue:0 launchHandler:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009CA00;
  v15[3] = &unk_1001B7870;
  v15[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicPluginWiFi" usingQueue:0 launchHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009CA68;
  v14[3] = &unk_1001B7870;
  v14[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicInactivity" usingQueue:0 launchHandler:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009CAD0;
  v13[3] = &unk_1001B7870;
  v13[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicInactivityPlugin" usingQueue:0 launchHandler:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009CB38;
  v12[3] = &unk_1001B7870;
  v12[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicInactivityPluginWiFi" usingQueue:0 launchHandler:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009CBA0;
  v11[3] = &unk_1001B7870;
  v11[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicUtilityBasic" usingQueue:0 launchHandler:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009CC08;
  v10[3] = &unk_1001B7870;
  v10[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicUtilityNetworking" usingQueue:0 launchHandler:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009CC70;
  v9[3] = &unk_1001B7870;
  v9[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicUtilityPlugin" usingQueue:0 launchHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009CCD8;
  v8[3] = &unk_1001B7870;
  v8[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicUtilityPluginWiFi" usingQueue:0 launchHandler:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009CD40;
  v7[3] = &unk_1001B7870;
  v7[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicUtilityInactivity" usingQueue:0 launchHandler:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009CDA8;
  v6[3] = &unk_1001B7870;
  v6[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicUtilityInactivityPlugin" usingQueue:0 launchHandler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009CE10;
  v5[3] = &unk_1001B7870;
  v5[4] = *(a1 + 32);
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.dailyPeriodicUtilityInactivityPluginWiFi" usingQueue:0 launchHandler:v5];
  [*(a1 + 32) scheduleDASTelemetryActivities];
  [*(a1 + 32) registerForDataCollectionTestNotification];
}

void sub_10009C7C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 reportDataOnExperiments:v3];
  [v3 setTaskCompleted];
}

void sub_10009C818(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 reportWakeAnalytics:v3];
  [v3 setTaskCompleted];
}

void sub_10009C870(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 reportBackgroundAppRefreshAnalytics:v3];
  [v3 setTaskCompleted];
}

void sub_10009C8C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009C930(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009C998(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CA00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CA68(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CAD0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CB38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CBA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CC08(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CC70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CCD8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CD40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CDA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

void sub_10009CE10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 identifier];
  [v2 reportAnalyticsForActivity:v3];

  [v4 setTaskCompleted];
}

id sub_10009D4D4(uint64_t a1)
{
  v4 = @"backgroundKillEnabled";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

Class sub_10009E7B8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10020B670)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10009E8FC;
    v4[4] = &unk_1001B54A0;
    v4[5] = v4;
    v5 = off_1001B78B0;
    v6 = 0;
    qword_10020B670 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10020B670)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("OSIUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001268EC();
  }

  qword_10020B668 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10009E8FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020B670 = result;
  return result;
}

void sub_10009E984(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_10009E9EC(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_BACKGROUND, 0);

  v2 = dispatch_queue_create("com.apple.dasscheduler.metricqueue", attr);
  v3 = qword_10020B680;
  qword_10020B680 = v2;
}

void sub_10009EA70(uint64_t a1)
{
  v2 = [*(a1 + 32) metricQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005688;
  v5[3] = &unk_1001B79A8;
  v5[4] = *(a1 + 32);
  v3 = [_DASBatchingQueue queueWithName:@"metrics_recorder" maxBatchingDelay:50 maxQueueDepth:v2 queue:v5 workItemsHandler:1800.0];
  v4 = qword_10020B690;
  qword_10020B690 = v3;
}

id sub_10009F10C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[1] = @"value";
  v6[0] = v1;
  v5[0] = @"key";
  v2 = [NSNumber numberWithInt:*(a1 + 40)];
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

uint64_t sub_10009F630(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B6A0;
  qword_10020B6A0 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10009F844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009F870(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained consoleModeNotificationHandler:*(a1 + 32)];
}

uint64_t sub_10009FB54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009FB6C(void *a1)
{
  v5 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v2 = [v5 allValues];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10009FE3C(void *a1)
{
  v2 = a1[4];
  v3 = [NSNumber numberWithUnsignedInteger:a1[6]];
  [v2 queryAndUpdateCurrentConsoleModeState:v3];

  v4 = *(a1[4] + 56);
  v6 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v5 = [v4 objectForKeyedSubscript:v6];
  *(*(a1[5] + 8) + 24) = [v5 BOOLValue];
}

void sub_10009FFEC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    v9 = 138412546;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registered handler %@ for state changes to %lu", &v9, 0x16u);
  }

  v5 = objc_retainBlock(*(a1 + 48));
  v6 = *(*(a1 + 32) + 32);
  v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v8 = [v6 objectForKeyedSubscript:v7];
  [v8 setObject:v5 forKeyedSubscript:*(a1 + 40)];
}

void sub_1000A01A8(void *a1)
{
  v2 = *(a1[4] + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    v4 = a1[6];
    v8 = 138412546;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deregistered handler %@ for state changes to %lu", &v8, 0x16u);
  }

  v5 = *(a1[4] + 32);
  v6 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v7 = [v5 objectForKeyedSubscript:v6];
  [v7 removeObjectForKey:a1[5]];
}

void sub_1000A09E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) taskIdentifier];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 16);
    v7 = [v5 taskIdentifier];
    [v6 setObject:v5 forKey:v7];
  }

  v8 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];

  if (!v8)
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = +[NSMutableArray array];
    [v9 setObject:v10 forKey:*(a1 + 40)];
  }
}

void sub_1000A0BB0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) taskIdentifier];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 16);
    v7 = [v5 taskIdentifier];
    [v6 setObject:v5 forKey:v7];
  }

  v8 = *(*(a1 + 32) + 16);
  v9 = [*(a1 + 48) taskIdentifier];
  v10 = [v8 objectForKey:v9];

  if (!v10)
  {
    v11 = *(*(a1 + 32) + 16);
    v12 = *(a1 + 48);
    v13 = [v12 taskIdentifier];
    [v11 setObject:v12 forKey:v13];
  }

  v14 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];

  if (!v14)
  {
    v15 = *(*(a1 + 32) + 8);
    v16 = +[NSMutableArray array];
    [v15 setObject:v16 forKey:*(a1 + 40)];
  }

  v17 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  [v17 addObject:*(a1 + 48)];
}

uint64_t sub_1000A0E4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000A0E64(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_1000A1080(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000A1C0C(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(*(a1 + 32) + 16) keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(*(a1 + 40) + 8) + 40) addObject:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000A1E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A1E5C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [v2 keyEnumerator];
    v3 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"%@ -> [", v7];
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v8 = [*(*(a1 + 32) + 8) objectForKey:v7];
          v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v15;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v15 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"%@, ", *(*(&v14 + 1) + 8 * j)];
              }

              v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
            }

            while (v10);
          }

          [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"]\n"];
        }

        v4 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v4);
    }
  }
}

uint64_t sub_1000A2254(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B6B0;
  qword_10020B6B0 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_1000A2A44(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B6C0;
  qword_10020B6C0 = v1;

  v3 = qword_10020B6C0;

  [v3 startRecording];
}

id sub_1000A3DA4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:a3];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

void sub_1000A4470(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = [a2 dk_dedup];
  v6 = [v5 integerValue];

  v7 = 32;
  if (!v6)
  {
    v7 = 40;
  }

  [*(a1 + v7) addObject:v8];
}

void sub_1000A4628(uint64_t a1)
{
  v2 = a1 + 40;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A46D0;
  v11[3] = &unk_1001B5608;
  v11[4] = v1;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];
  v4 = *(*v2 + 176);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100126E04(v2, v4, v5, v6, v7, v8, v9, v10);
  }
}

void sub_1000A46D0(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  if (![a3 integerValue])
  {
    v5 = *(*(a1 + 32) + 120);
    v6 = [v7 dk_dedup];
    [v5 addObject:v6];
  }
}

void sub_1000A474C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MCProfileConnection sharedConnection];
  [v1 queueHandleBARSettingsChangedNotification:{objc_msgSend(v2, "isAutomaticAppUpdatesAllowed")}];
}

void sub_1000A4848(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) arrayForKey:@"killed"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(a1 + 32) + 128);
        v8 = [*(*(&v9 + 1) + 8 * v6) dk_dedup];
        [v7 addObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  if (os_log_type_enabled(*(*(a1 + 32) + 176), OS_LOG_TYPE_DEBUG))
  {
    sub_100126E78();
  }
}

void sub_1000A5158(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) bundleIdentifier];
        [v2 addObject:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) queueHandleAppsUninstalled:v2];
}

void sub_1000A5358(uint64_t a1)
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v28;
    v19 = *v28;
    do
    {
      v5 = 0;
      v20 = v3;
      do
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        if (([v6 isLaunchProhibited] & 1) == 0)
        {
          v22 = v5;
          v7 = [v6 UIBackgroundModes];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v8 = [v7 countByEnumeratingWithState:&v23 objects:v35 count:16];
          if (!v8)
          {
            goto LABEL_23;
          }

          v9 = v8;
          v10 = *v24;
          while (1)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v23 + 1) + 8 * i);
              if ([v12 isEqualToString:@"fetch"] && !objc_msgSend(*(a1 + 48), "appUsesBackgroundTaskScheduler:", v6))
              {
                v13 = 96;
              }

              else if ([v12 isEqualToString:@"remote-notification"])
              {
                v13 = 104;
              }

              else
              {
                if (![v12 isEqualToString:@"newsstand"])
                {
                  continue;
                }

                v13 = 112;
              }

              v14 = *(*(a1 + 48) + v13);
              v15 = [v6 bundleIdentifier];
              [v14 addObject:v15];

              v16 = *(*(a1 + 48) + 176);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v17 = v16;
                v18 = [v6 bundleIdentifier];
                *buf = 138412546;
                v32 = v18;
                v33 = 2112;
                v34 = v12;
                _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "App %@ with mode %@ installed", buf, 0x16u);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v23 objects:v35 count:16];
            if (!v9)
            {
LABEL_23:

              v4 = v19;
              v3 = v20;
              v5 = v22;
              break;
            }
          }
        }

        v5 = v5 + 1;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v3);
  }
}

BOOL sub_1000A5830(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

void sub_1000A586C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 176);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100126F48(v5, v3);
    }
  }
}

void sub_1000A58DC(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 eventBody];
  v4 = [v3 parentBundleID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v13 eventBody];
    v6 = [v7 bundleID];
  }

  v8 = *(a1 + 40);
  [v13 timestamp];
  LODWORD(v5) = vcvtpd_s64_f64((v8 - v9) / 86400.0);
  v10 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v11 = v10;
  if (!v10 || [v10 intValue] > v5)
  {
    v12 = [NSNumber numberWithInt:v5];
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v6];
  }
}

void sub_1000A5B14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 intValue] <= 3)
  {
    [*(*(a1 + 32) + 144) addObject:v5];
  }

  [*(*(a1 + 32) + 136) addObject:v5];
}

void sub_1000A5B8C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allPendingBackgroundTasks];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A5C74;
  v5[3] = &unk_1001B7B00;
  v6 = *(a1 + 40);
  v3 = [NSPredicate predicateWithBlock:v5];
  v4 = [v2 filteredSetUsingPredicate:v3];

  [*(*(a1 + 32) + 48) cancelActivities:v4];
}

BOOL sub_1000A5C74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 relatedApplications];
  v5 = [v4 firstObject];

  LOBYTE(v4) = [v3 allowsUnrestrictedBackgroundLaunches];
  v6 = 0;
  if ((v4 & 1) == 0 && v5)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v6 = v7 == 0;
  }

  return v6;
}

void sub_1000A5E1C(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 48) activityCanceled:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  NSLog(@"Done canceling activities!");
}

void sub_1000A6154(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 48) activityCanceled:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000A66DC(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 48) activityCompleted:a2];
  [*(a1 + 32) minimumDelayBetweenLaunchesForApp:*(a1 + 40)];
  v4 = v3;
  v5 = +[NSDate date];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A67C8;
  v10[3] = &unk_1001B7100;
  v10[4] = v7;
  v11 = v5;
  v12 = v6;
  v13 = v4;
  v9 = v5;
  dispatch_sync(v8, v10);
}

void sub_1000A67C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [NSSet setWithObject:*(a1 + 48)];
  [v2 queueUpdateLastLaunchTimesToDate:v3 forApps:v4];

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = [NSDate dateWithTimeInterval:*(a1 + 40) sinceDate:*(a1 + 56)];
  [v6 queueScheduleActivityForApp:v5 startingAfter:v7];
}

void sub_1000A6AF0(uint64_t a1)
{
  v2 = os_transaction_create();
  if (byte_10020B6C8 == 1)
  {
    [*(a1 + 32) queueCancelActivitiesForAllApps];
    v3 = [*(a1 + 32) queueObtainAppsEligibleForBackgroundFetch];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = *(a1 + 32);
          v10 = +[NSDate date];
          [v9 queueScheduleActivityForApp:v8 startingAfter:v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  [*(a1 + 32) queue_cancelBackgroundTasksForUnusedApps];
  byte_10020B6C8 = 1;
}

void sub_1000A7168(uint64_t a1)
{
  [*(*(a1 + 40) + 136) addObjectsFromArray:*(a1 + 48)];
  [*(*(a1 + 40) + 144) addObjectsFromArray:*(a1 + 48)];
  v2 = [*(*(a1 + 40) + 152) mutableCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        if (([*(*(a1 + 40) + 152) containsObject:v8] & 1) == 0)
        {
          if ([v8 length])
          {
            [v2 removeObject:v8];
            if (([*(*(a1 + 40) + 104) containsObject:v8] & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 112), "containsObject:", v8) & 1) != 0 || objc_msgSend(*(*(a1 + 40) + 96), "containsObject:", v8) && (objc_msgSend(*(*(a1 + 40) + 160), "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
            {
              v10 = *(a1 + 56);
              v11 = [v8 dk_dedup];
              [v10 addObject:v11];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v5);
  }

  v12 = +[NSMutableSet set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = *(a1 + 48);
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v32 + 1) + 8 * j) dk_dedup];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v15);
  }

  [*(a1 + 40) queueHandleAppsRevived:v12];
  [*(a1 + 40) queueCancelActivitiesForApps:v12];
  v19 = [v12 copy];
  v20 = *(a1 + 40);
  v21 = *(v20 + 152);
  *(v20 + 152) = v19;

  [*(a1 + 40) queueUpdateLastLaunchTimesToDate:*(a1 + 64) forApps:*(a1 + 56)];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = *(*(a1 + 40) + 168);
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [v2 removeObject:{*(*(&v28 + 1) + 8 * k), v28}];
      }

      v24 = [v22 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v24);
  }

  v27 = *(a1 + 40);
  if (*(v27 + 8) == 1)
  {
    if (os_log_type_enabled(*(v27 + 176), OS_LOG_TYPE_DEBUG))
    {
      sub_100127070();
    }

    [*(a1 + 40) queueScheduleActivitiesForEligibleApps:v2 withDelay:{1, v28}];
  }
}

uint64_t sub_1000A75D8(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 8) == 1 && ([*(v2 + 120) containsObject:a1[5]] & 1) == 0)
  {
    if ([*(a1[4] + 128) containsObject:a1[5]])
    {
      result = [*(a1[4] + 144) containsObject:a1[5]];
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_1000A7A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A7A48(void *a1)
{
  if ([*(a1[4] + 104) containsObject:a1[5]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [*(a1[4] + 112) containsObject:a1[5]];
  }

  *(*(a1[6] + 8) + 24) = v2;
  v3 = a1[4];
  if (*(*(a1[6] + 8) + 24))
  {
    if ([*(v3 + 152) containsObject:a1[5]])
    {
      v4 = a1[7];
      if (v4)
      {
        *v4 = 1;
      }

      *(*(a1[6] + 8) + 24) = 1;
      v5 = *(a1[4] + 176);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = a1[5];
        v14 = 138412290;
        v15 = v6;
        v7 = "Remote Notification: %@ - Foreground";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v14, 0xCu);
      }
    }

    else
    {
      v9 = [*(a1[4] + 136) containsObject:a1[5]];
      v10 = a1[4];
      if (v9)
      {
        if (([*(v10 + 120) containsObject:a1[5]] & 1) != 0 || objc_msgSend(*(a1[4] + 128), "containsObject:", a1[5]) && (objc_msgSend(*(a1[4] + 144), "containsObject:", a1[5]) & 1) == 0)
        {
          *(*(a1[6] + 8) + 24) = 0;
          v5 = *(a1[4] + 176);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            v11 = a1[5];
            v14 = 138412290;
            v15 = v11;
            v7 = "Remote Notification: %@ - Disallowed/Killed";
            goto LABEL_12;
          }
        }
      }

      else
      {
        v12 = *(v10 + 176);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = a1[5];
          v14 = 138412290;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Remote Notification: %@ - Not launched", &v14, 0xCu);
        }

        *(*(a1[6] + 8) + 24) = 0;
      }
    }
  }

  else
  {
    v5 = *(v3 + 176);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = a1[5];
      v14 = 138412290;
      v15 = v8;
      v7 = "Remote Notification: %@ - Not eligible";
      goto LABEL_12;
    }
  }
}

id sub_1000A7D70(void *a1)
{
  result = [*(a1[4] + 112) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_1000A7FF8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 dk_dedup];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

void sub_1000A8144(void *a1)
{
  v2 = [*(a1[4] + 160) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v4 = v2;
    [v2 doubleValue];
    v2 = v4;
    *(*(a1[6] + 8) + 24) = v3;
  }
}

void sub_1000A8250(uint64_t a1)
{
  v2 = [*(a1 + 32) dk_dedup];
  v3 = [*(*(a1 + 40) + 160) objectForKeyedSubscript:*(a1 + 32)];
  if (![*(*(a1 + 40) + 96) containsObject:*(a1 + 32)])
  {
    goto LABEL_20;
  }

  v4 = *(*(a1 + 40) + 176);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = v4;
    v8 = [NSNumber numberWithDouble:v6];
    v24 = 138412546;
    v25 = v5;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ => %@", &v24, 0x16u);
  }

  v9 = *(a1 + 48);
  if (v9 == 1.79769313e308)
  {
    if (!v3)
    {
      goto LABEL_20;
    }

    [*(*(a1 + 40) + 160) removeObjectForKey:*(a1 + 32)];
    v10 = *(a1 + 40);
    v11 = [NSSet setWithObject:v2];
    [v10 queueCancelActivitiesForApps:v11];
    v12 = 0;
  }

  else
  {
    v13 = fmax(v9, 450.0);
    v12 = v3 == 0;
    [v3 doubleValue];
    v15 = v13 - v14;
    if (v15 < 0.0)
    {
      v15 = -v15;
    }

    if (v15 <= 2.22044605e-16)
    {
      goto LABEL_13;
    }

    v11 = [NSNumber numberWithDouble:v13];
    [*(*(a1 + 40) + 160) setObject:v11 forKeyedSubscript:v2];
  }

  [*(*(a1 + 40) + 72) setObject:*(*(a1 + 40) + 160) forKey:@"delays"];
  v16 = *(*(a1 + 40) + 176);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v24 = 138412290;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Saved new value for %@", &v24, 0xCu);
  }

LABEL_13:
  v18 = *(a1 + 40);
  if (*(v18 + 8) == 1 && v12)
  {
    v20 = *(v18 + 176);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v24 = 138412290;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Scheduling update for %@", &v24, 0xCu);
    }

    v22 = *(a1 + 40);
    v23 = [NSSet setWithObject:v2];
    [v22 queueScheduleActivitiesForEligibleApps:v23 withDelay:1];
  }

LABEL_20:
}

uint64_t sub_1000A8EF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_10020B6D0;
  qword_10020B6D0 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_1000A9070(id a1, BGRepeatingSystemTask *a2)
{
  v2 = a2;
  +[_DASConfig isInternalBuild];
  [(BGRepeatingSystemTask *)v2 setTaskCompleted];
}

uint64_t sub_1000AAF20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B6E8;
  qword_10020B6E8 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_1000AB328(uint64_t a1)
{
  v2 = [_DASDaemonLogger logForCategory:@"remoteWidgetBudget"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10012772C();
  }

  v3 = *(a1 + 32);
  if ((v3[8] & 1) == 0)
  {
    [v3 logExhaustedDuration:1 withPluginConsideration:0.0];
    [*(a1 + 32) logExhaustedDuration:0 withPluginConsideration:0.0];
    v3 = *(a1 + 32);
  }

  v3[8] = 0;
  v4 = +[NSDate now];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v8 = [NSNumber numberWithDouble:v6 + 86400.0];
  [v7 setObject:v8 forKey:@"remoteWidgetLoggingInterval"];
}

id sub_1000AB558(uint64_t a1)
{
  v4 = @"remoteWidgetActualUnavailableDuration";
  v1 = [NSNumber numberWithDouble:*(a1 + 32) / 3600.0];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_1000AB618(uint64_t a1)
{
  v4 = @"remoteWidgetUnavailableDuration";
  v1 = [NSNumber numberWithDouble:*(a1 + 32) / 3600.0];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_1000AC4B0(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) updateBudgetsForNextSlot];
  objc_sync_exit(obj);
}

uint64_t sub_1000ACB58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_DASDaemonLogger logForCategory:@"bar"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Blue List notification called (%@)", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  [*(a1 + 32) updateBlueListStatus:{objc_msgSend(*(a1 + 32), "shouldBlueListPushes")}];
  objc_sync_exit(v5);

  return 1;
}

void sub_1000ACC74(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) updateBlueListStatus:{objc_msgSend(*(a1 + 32), "shouldBlueListPushes")}];
  objc_sync_exit(obj);
}

uint64_t sub_1000ACF70(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020B6F0 = objc_opt_new();

  return _objc_release_x1();
}

void sub_1000AD444(id a1)
{
  v1 = objc_alloc_init(_DASBGSystemTaskHelper);
  v2 = qword_10020B700;
  qword_10020B700 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AD758(void *a1)
{
  v2 = *(a1[4] + 56);
  v3 = a1[6];
  v4 = xpc_event_publisher_set_event();
  v5 = a1[4];
  v6 = *(v5 + 32);
  if (v4)
  {
    if (os_log_type_enabled(*(v5 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_100127C8C(a1);
    }
  }

  else if (os_log_type_enabled(*(v5 + 32), OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    *buf = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "XPC_EVENT_PUBLISHER_ACTION_ADD: Cleared subscription for %{public}@ due to error", buf, 0xCu);
  }
}

uint64_t sub_1000AD9EC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Soliciting running BGSTs", v3, 2u);
  }

  return notify_post([@"com.apple.bg.system.task.resubmission" UTF8String]);
}

uint64_t sub_1000AE548(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) priority];
  v5 = v4 <= 2;
  if (v4 <= 2)
  {
    result = 9;
  }

  else
  {
    result = 21;
  }

  if (v5 && (a2 & 1) == 0)
  {
    if ([*(a1 + 32) requiresExternalPower])
    {
      return 17;
    }

    else
    {
      return 9;
    }
  }

  return result;
}

void sub_1000AE5A4(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(*(a1 + 32) + 56);
  [*(a1 + 40) token];
  v4 = v2[1];
  if (xpc_event_publisher_fire())
  {
    v5 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100127DC0(v2, v5);
    }
  }
}

void sub_1000AEAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AEACC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AEAE4(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 64)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    if ([v3 state] == 2)
    {
      v5 = *(*(a1 + 40) + 48);
      v6 = [v4 scheduler_activity];
      LOBYTE(v5) = [v5 wasActivityAllowedToRun:v6];

      if (v5)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
        [v4 setState:3];
        [v4 setPid:*(a1 + 68)];
        v7 = [v4 pid];
        v8 = [v4 scheduler_activity];
        [v8 setPid:v7];

        v9 = *(*(a1 + 40) + 32);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          *buf = 67109378;
          *v51 = [v4 pid];
          *&v51[4] = 2114;
          *&v51[6] = v4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client (PID %d) confirmed run for %{public}@", buf, 0x12u);
        }

        v11 = *(*(a1 + 40) + 48);
        v12 = [v4 scheduler_activity];
        [v11 activityStarted:v12];

        v13 = dispatch_source_create(&_dispatch_source_type_proc, *(a1 + 68), 0x80000000uLL, *(*(a1 + 40) + 16));
        if (v13)
        {
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_1000AEFDC;
          handler[3] = &unk_1001B5F08;
          v14 = *(a1 + 32);
          v45 = *(a1 + 64);
          v15 = *(a1 + 40);
          v43 = v14;
          v44 = v15;
          dispatch_source_set_event_handler(v13, handler);
          dispatch_resume(v13);
          [v4 setDispatchSourceProcessExit:v13];
        }
      }

      else
      {
        v34 = *(a1 + 32);
        v46 = @"taskIdentifier";
        v47 = v34;
        v35 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v36 = [NSError errorWithDomain:@"_DASBGSystemTaskHelperErrorDomain" code:5 userInfo:v35];
        v38 = *(a1 + 48);
        v37 = a1 + 48;
        v39 = *(v38 + 8);
        v40 = *(v39 + 40);
        *(v39 + 40) = v36;

        *(*(*(v37 + 8) + 8) + 24) = 0;
        v41 = *(*(v37 - 8) + 32);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_100127FF8(v41, v4, v37);
        }
      }
    }

    else
    {
      v48[0] = @"currentState";
      v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 state]);
      v48[1] = @"expectedState";
      v49[0] = v26;
      v49[1] = &off_1001CA378;
      v27 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
      v28 = [NSError errorWithDomain:@"_DASBGSystemTaskHelperErrorDomain" code:2 userInfo:v27];
      v30 = *(a1 + 48);
      v29 = a1 + 48;
      v31 = *(v30 + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v28;

      *(*(*(v29 + 8) + 8) + 24) = 0;
      v33 = *(*(v29 - 8) + 32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100127F20(v33, v4, v29);
      }
    }
  }

  else
  {
    v16 = *(a1 + 32);
    v56 = @"taskIdentifier";
    v57 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v18 = [NSError errorWithDomain:@"_DASBGSystemTaskHelperErrorDomain" code:1 userInfo:v17];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v21 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 64);
      v24 = *(a1 + 68);
      v25 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138544130;
      *v51 = v22;
      *&v51[8] = 1024;
      *&v51[10] = v23;
      v52 = 1024;
      v53 = v24;
      v54 = 2112;
      v55 = v25;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "acknowledgeSystemTaskLaunchWithIdentifier: Task %{public}@ from UID %d, PID %d not found: %@", buf, 0x22u);
    }
  }
}

void sub_1000AEFDC(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 48)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3 && ([v3 state] == 3 || objc_msgSend(v4, "state") == 4))
  {
    v5 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      LODWORD(v7) = 67109634;
      HIDWORD(v7) = [v4 pid];
      v8 = 2114;
      v9 = v4;
      v10 = 1024;
      v11 = [v4 state] == 4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client (PID %d) died while task %{public}@ was still running. Asked to suspend: %d", &v7, 0x18u);
    }

    [v4 setState:{0, v7}];
    [*(a1 + 40) dasCancelActivityWithReason:v4 expirationReason:5];
    [*(a1 + 40) dasSubmitActivity:v4 withClientOffset:0 error:300.0];
  }
}

void sub_1000AF274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AF28C(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 64)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
    v6 = *(a1 + 40);
    v7 = *(v6 + 32);
    if (v5 == 4)
    {
      if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        *buf = 67109378;
        *v24 = [v4 pid];
        *&v24[4] = 2114;
        *&v24[6] = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client (PID %d) confirmed suspension for %{public}@", buf, 0x12u);
      }

      if ([v4 suspensionReason] == 1 && *(a1 + 56) < 300.0 && objc_msgSend(v4, "priority") <= 2 && objc_msgSend(v4, "type") != 3 && (objc_msgSend(v4, "requestsApplicationLaunch") & 1) == 0 && (objc_msgSend(v4, "beforeApplicationLaunch") & 1) == 0 && (objc_msgSend(v4, "runOnAppForeground") & 1) == 0 && objc_msgSend(v4, "requires_protection_class") >= 4)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0x4072C00000000000;
        v9 = *(*(a1 + 40) + 32);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(*(*(a1 + 48) + 8) + 24);
          v11 = v9;
          v12 = [v4 name];
          *buf = 67109378;
          *v24 = v10;
          *&v24[4] = 2114;
          *&v24[6] = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Imposing a %ds cool-off on %{public}@ upon suspension due to runtime limits", buf, 0x12u);
        }
      }

      [*(a1 + 40) dasCancelActivity:v4];
      v13 = *(a1 + 40);
      v14 = *(*(*(a1 + 48) + 8) + 24);
      v22 = 0;
      v15 = [v13 dasSubmitActivity:v4 withClientOffset:&v22 error:v14];
      v16 = v22;
      if (v15)
      {
        v17 = 5;
      }

      else
      {
        v17 = 0;
      }

      [v4 setState:v17];
    }

    else if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_1001280B4(v7);
    }
  }

  else
  {
    v18 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 64);
      v21 = *(a1 + 68);
      *buf = 138543874;
      *v24 = v19;
      *&v24[8] = 1024;
      *&v24[10] = v20;
      v25 = 1024;
      v26 = v21;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "acknowledgeSystemTaskSuspensionWithIdentifier: Task %{public}@ from UID %d, PID %d not found", buf, 0x18u);
    }
  }
}

void sub_1000AF6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AF6DC(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 64)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  v4 = v3;
  if (!v3)
  {
    v14 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 64);
      v17 = *(a1 + 68);
      *buf = 138543874;
      *v20 = v15;
      *&v20[8] = 1024;
      *&v20[10] = v16;
      v21 = 1024;
      v22 = v17;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "handleClientLedSystemTaskExpirationWithIdentifier: Task %{public}@ from UID %d, PID %d not found", buf, 0x18u);
    }

    goto LABEL_13;
  }

  v5 = [v3 state];
  v6 = *(a1 + 40);
  v7 = *(v6 + 32);
  if (v5 != 3)
  {
    if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_100128140(v7);
    }

LABEL_13:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 67109378;
    *v20 = [v4 pid];
    *&v20[4] = 2114;
    *&v20[6] = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client (PID %d) requested expiration for %{public}@", buf, 0x12u);
  }

  [*(a1 + 40) dasCancelActivityWithReason:v4 expirationReason:4];
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v18 = 0;
  v11 = [v9 dasSubmitActivity:v4 withClientOffset:&v18 error:v10];
  v12 = v18;
  *(*(*(a1 + 48) + 8) + 24) = v11;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v13 = 7;
  }

  else
  {
    v13 = 0;
  }

  [v4 setState:v13];

LABEL_14:
}

void sub_1000AFA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AFA2C(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 56)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  v4 = *(a1 + 40);
  v5 = *(v4 + 32);
  if (v3)
  {
    if (os_log_type_enabled(*(v4 + 32), OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v12 = 67109378;
      *v13 = [v3 pid];
      *&v13[4] = 2114;
      *&v13[6] = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client (PID %d) failed to respond to the expiration of %{public}@", &v12, 0x12u);
    }

    v7 = *(*(a1 + 40) + 48);
    v8 = [v3 scheduler_activity];
    [v7 clientFailedtoExpireTaskWithIdentifier:v8];
  }

  else
  {
    if (os_log_type_enabled(*(v4 + 32), OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      v11 = *(a1 + 60);
      v12 = 138543874;
      *v13 = v9;
      *&v13[8] = 1024;
      *&v13[10] = v10;
      v14 = 1024;
      v15 = v11;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "handleClientFailedtoExpireTaskWithIdentifier: Task %{public}@ from UID %d, PID %d not found", &v12, 0x18u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_1000AFD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AFD28(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 64)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  if (!v3)
  {
    v30 = 0;
    v11 = *(*(a1 + 40) + 56);
    [*(a1 + 32) UTF8String];
    v12 = *(a1 + 48);
    v13 = *(a1 + 68);
    if (xpc_event_publisher_create_subscription())
    {
      if (os_log_type_enabled(*(*(a1 + 40) + 32), OS_LOG_TYPE_ERROR))
      {
        sub_1001281CC();
      }

      v4 = 0;
      goto LABEL_11;
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B0130;
    v28[3] = &unk_1001B7D18;
    v14 = *(a1 + 56);
    v28[4] = *(a1 + 40);
    v28[5] = v14;
    v28[6] = v30;
    v29 = *(a1 + 68);
    v15 = objc_retainBlock(v28);
    v16 = [*(a1 + 40) serviceNameFromToken:v30];
    if ([v16 length])
    {
      v17 = [_DASBGSystemTask alloc];
      v4 = [(_DASBGSystemTask *)v17 initWithDescriptor:*(a1 + 48) withToken:v30 withUID:*(a1 + 64) withService:v16 staticSubmission:0];
      v18 = *(a1 + 40);
      if (v4)
      {
        v27 = 0;
        v19 = [(os_log_t *)v18 dasSubmitActivity:v4 error:&v27];
        v20 = v27;
        *(*(*(a1 + 56) + 8) + 24) = v19;
        v21 = *(*(a1 + 40) + 32);
        if (*(*(*(a1 + 56) + 8) + 24))
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v32 = v4;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "submitTaskRequestWithIdentifier: Submitted BGSystemTask %{public}@", buf, 0xCu);
          }

          v22 = *(*(a1 + 40) + 40);
          v23 = [(_DASBGSystemTask *)v4 name];
          [v22 setObject:v4 forKeyedSubscript:v23];
        }

        else
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100128208();
          }

          (v15[2])(v15);
        }

        goto LABEL_27;
      }

      if (os_log_type_enabled(v18[4], OS_LOG_TYPE_ERROR))
      {
        sub_100128278();
      }
    }

    else if (os_log_type_enabled(*(*(a1 + 40) + 32), OS_LOG_TYPE_ERROR))
    {
      sub_1001282E8();
    }

    (v15[2])(v15);
    v4 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v4 = v3;
  v5 = [(_DASBGSystemTask *)v3 type];
  v6 = *(a1 + 40);
  v7 = *(v6 + 32);
  if (v5 != 3)
  {
    if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 64);
      v26 = *(a1 + 68);
      *buf = 138543874;
      v32 = v24;
      v33 = 1024;
      v34 = v25;
      v35 = 1024;
      v36 = v26;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "submitTaskRequestWithIdentifier: Task %{public}@ from UID %d, PID %d already exists", buf, 0x18u);
    }

LABEL_11:
    *(*(*(a1 + 56) + 8) + 24) = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(*(v6 + 32), OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    v10 = *(a1 + 68);
    *buf = 138543874;
    v32 = v8;
    v33 = 1024;
    v34 = v9;
    v35 = 1024;
    v36 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "submitTaskRequestWithIdentifier: Task %{public}@ from UID %d, PID %d already exists", buf, 0x18u);
  }

LABEL_28:
}

void sub_1000B0130(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v3 = *(*(a1 + 32) + 56);
  v4 = *(a1 + 56);
  if (xpc_event_publisher_set_event())
  {
    if (os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
    {
      sub_100128358();
    }
  }
}

void sub_1000B02E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B02F8(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 64)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    if ([v3 state] == 1 || objc_msgSend(v4, "state") == 4 || objc_msgSend(v4, "state") == 7 || objc_msgSend(v4, "state") == 5)
    {
      v23 = 0;
      v5 = *(*(a1 + 40) + 56);
      [v4 token];
      v6 = *(a1 + 48);
      v7 = *(a1 + 68);
      v8 = xpc_event_publisher_set_event();
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      if (v8)
      {
        if (os_log_type_enabled(*(v9 + 32), OS_LOG_TYPE_ERROR))
        {
          sub_100128420();
        }
      }

      else
      {
        if (os_log_type_enabled(*(v9 + 32), OS_LOG_TYPE_DEFAULT))
        {
          v15 = v10;
          *buf = 67109378;
          *v25 = [v4 pid];
          *&v25[4] = 2114;
          *&v25[6] = v4;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Client (PID %d) updated task request for %{public}@", buf, 0x12u);
        }

        v16 = [*(a1 + 40) serviceNameFromToken:v23];
        if ([v16 length])
        {
          v17 = [[_DASBGSystemTask alloc] initWithDescriptor:*(a1 + 48) withToken:v23 withUID:*(a1 + 64) withService:v16 staticSubmission:0 task:v4];
          if (v17)
          {
            [*(a1 + 40) dasCancelActivityWithReason:v4 expirationReason:2];
            [*(*(a1 + 40) + 40) setObject:v17 forKeyedSubscript:v2];
            v18 = *(a1 + 40);
            v22 = 0;
            v19 = [v18 dasSubmitActivity:v17 error:&v22];
            v20 = v22;
            *(*(*(a1 + 56) + 8) + 24) = v19;
            if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
            {
              if (os_log_type_enabled(*(*(a1 + 40) + 32), OS_LOG_TYPE_ERROR))
              {
                sub_10012845C();
              }

              [*(*(a1 + 40) + 40) setObject:0 forKeyedSubscript:v2];
            }
          }
        }

        else if (os_log_type_enabled(*(*(a1 + 40) + 32), OS_LOG_TYPE_ERROR))
        {
          sub_100127BAC();
        }
      }
    }

    else
    {
      v21 = *(*(a1 + 40) + 32);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100128394(v21);
      }
    }
  }

  else
  {
    v11 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 64);
      v14 = *(a1 + 68);
      *buf = 138543874;
      *v25 = v12;
      *&v25[8] = 1024;
      *&v25[10] = v13;
      v26 = 1024;
      v27 = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "updateTaskRequestWithIdentifier: Task %{public}@ from UID %d, PID %d not found", buf, 0x18u);
    }
  }
}

void sub_1000B0728(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 48)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    if ([v3 state] == 3 || objc_msgSend(v4, "state") == 2 || objc_msgSend(v4, "state") == 4)
    {
      v5 = *(*(a1 + 40) + 32);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 138543362;
        *&v17[4] = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Completed %{public}@", v17, 0xCu);
      }

      [*(a1 + 40) dasCompleteActivity:v4];
      [v4 advanceBaseTime];
      if ([v4 post_install])
      {
        [v4 markInstallActivityDone];
      }

      if ([v4 type] == 2)
      {
        v6 = *(*(a1 + 40) + 32);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 138543362;
          *&v17[4] = v4;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Rescheduling repeating task %{public}@", v17, 0xCu);
        }

        [*(a1 + 40) dasSubmitActivity:v4 error:0];
        goto LABEL_26;
      }

      if ([v4 type] == 3)
      {
        v11 = [v4 name];
        +[_DASBGSystemTask markFastPassActivityDone:semanticVersion:](_DASBGSystemTask, "markFastPassActivityDone:semanticVersion:", v11, [v4 semanticVersion]);
      }

      *v17 = 0;
      v12 = *(*(a1 + 40) + 56);
      [v4 token];
      v13 = *(a1 + 52);
      if (xpc_event_publisher_set_event() && os_log_type_enabled(*(*(a1 + 40) + 32), OS_LOG_TYPE_ERROR))
      {
        sub_100128558();
      }
    }

    else
    {
      v14 = *(*(a1 + 40) + 32);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1001284CC(v14);
      }

      [*(a1 + 40) dasCancelActivity:v4];
      *v17 = 0;
      v15 = *(*(a1 + 40) + 56);
      [v4 token];
      v16 = *(a1 + 52);
      if (xpc_event_publisher_set_event() && os_log_type_enabled(*(*(a1 + 40) + 32), OS_LOG_TYPE_ERROR))
      {
        sub_100128558();
      }
    }

    [*(*(a1 + 40) + 40) removeObjectForKey:v2];
    goto LABEL_26;
  }

  v7 = *(*(a1 + 40) + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 52);
    *v17 = 138543874;
    *&v17[4] = v8;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v10;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "completeSystemTaskWithIdentifier: Task %{public}@ from UID %d, PID %d not found", v17, 0x18u);
  }

LABEL_26:
}

void sub_1000B0B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B0B98(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 56)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  if ([v3 state] == 7)
  {
    v4 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resuming scheduling for %{public}@", &v6, 0xCu);
    }

    [*(a1 + 40) dasCancelActivity:v3];
    [*(a1 + 40) dasSubmitActivity:v3 error:0];
  }

  else if ([v3 state] == 5 || objc_msgSend(v3, "state") == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v5 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100128594(v5);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_1000B0E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B0E3C(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 56)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  v4 = *(a1 + 40);
  if (v3)
  {
    [v4 dasCancelActivity:v3];
    v5 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 138543362;
      *&v12[4] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unregistering %{public}@", v12, 0xCu);
    }

    *v12 = 0;
    v6 = *(*(a1 + 40) + 56);
    [v3 token];
    v7 = *(a1 + 60);
    if (xpc_event_publisher_set_event())
    {
      if (os_log_type_enabled(*(*(a1 + 40) + 32), OS_LOG_TYPE_ERROR))
      {
        sub_100128620();
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    [*(*(a1 + 40) + 40) removeObjectForKey:v2];
  }

  else
  {
    v8 = v4[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      v11 = *(a1 + 60);
      *v12 = 138543874;
      *&v12[4] = v9;
      v13 = 1024;
      v14 = v10;
      v15 = 1024;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "unregisterSystemTaskWithIdentifier: Task %{public}@ from UID %d, PID %d not found", v12, 0x18u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_1000B1158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B1170(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          if (v7)
          {
            if (![_DASBGSystemTask resetFastPass:*(*(&v9 + 1) + 8 * i) resetAll:0, v9])
            {
              [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v8 = *(a1 + 48);

    [_DASBGSystemTask resetFastPass:&stru_1001BA3C0 resetAll:v8];
  }
}

void sub_1000B1434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B144C(void *a1)
{
  v2 = [*(a1[4] + 40) allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 containsString:a1[5]])
        {
          v8 = [*(a1[4] + 40) objectForKeyedSubscript:v7];
          v9 = [v8 aboutMe];

          if (v9)
          {
            [*(*(a1[6] + 8) + 40) addObject:v9];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

id sub_1000B16BC(uint64_t a1)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v24;
    *&v4 = 138543362;
    v22 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [_DASBGSystemTask taskNameWithIdentifier:*(*(&v23 + 1) + 8 * i) UID:*(a1 + 56), v22, v23];
        v9 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v8];
        v10 = v9;
        if (!v9)
        {
          v15 = *(*(a1 + 40) + 32);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          *buf = v22;
          v28 = v8;
          v16 = v15;
          v17 = "Resubmitted running BGST %{public}@ not found";
          goto LABEL_13;
        }

        if ([v9 state] == 1)
        {
          [v10 setPid:*(a1 + 60)];
          v11 = [v10 pid];
          v12 = [v10 scheduler_activity];
          [v12 setPid:v11];

          [v10 setState:3];
          v13 = *(*(*(a1 + 48) + 8) + 40);
          v14 = [v10 scheduler_activity];
          [v13 addObject:v14];

          goto LABEL_14;
        }

        v18 = *(*(a1 + 40) + 32);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v22;
          v28 = v8;
          v16 = v18;
          v17 = "Resubmitted running BGST %{public}@ has been scheduled after DAS came up, not restoring state to DAS";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
        }

LABEL_14:
      }

      v5 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }

  v19 = *(*(a1 + 40) + 32);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543362;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Resubmitting running BGSTs to DAS %{public}@", buf, 0xCu);
  }

  return [*(*(a1 + 40) + 48) resubmitRunningActivities:*(*(*(a1 + 48) + 8) + 40)];
}

void sub_1000B1B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000B1B34(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 72)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  if (!v3)
  {
    v9 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 72);
      v18 = *(a1 + 76);
      *buf = 138543874;
      v23 = v16;
      v24 = 1024;
      v25 = v17;
      v26 = 1024;
      v27 = v18;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "reportSystemTaskWithIdentifier:producedResults: Task %{public}@ from (UID %d, PID %d) not found", buf, 0x18u);
    }

    v10 = _DASActivitySchedulerErrorDomain;
    v11 = *(a1 + 32);
    v20 = @"taskIdentifier";
    v21 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = [NSError errorWithDomain:v10 code:3 userInfo:v12];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    goto LABEL_8;
  }

  if (*(*(*(a1 + 56) + 8) + 40) || !*(a1 + 48))
  {
LABEL_8:
    *(*(*(a1 + 64) + 8) + 24) = 0;
    goto LABEL_9;
  }

  v4 = +[_DASActivityDependencyManager sharedInstance];
  v5 = [v3 scheduler_activity];
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [v4 reportActivity:v5 producedResults:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v8;

LABEL_9:
}

void sub_1000B1EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000B1F0C(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 72)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  if (!v3)
  {
    v9 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 72);
      v18 = *(a1 + 76);
      *buf = 138543874;
      v23 = v16;
      v24 = 1024;
      v25 = v17;
      v26 = 1024;
      v27 = v18;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "reportSystemTaskWithIdentifier:consumedResults: Task %{public}@ from (UID %d, PID %d) not found", buf, 0x18u);
    }

    v10 = _DASActivitySchedulerErrorDomain;
    v11 = *(a1 + 32);
    v20 = @"taskIdentifier";
    v21 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = [NSError errorWithDomain:v10 code:3 userInfo:v12];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    goto LABEL_8;
  }

  if (*(*(*(a1 + 56) + 8) + 40) || !*(a1 + 48))
  {
LABEL_8:
    *(*(*(a1 + 64) + 8) + 24) = 0;
    goto LABEL_9;
  }

  v4 = +[_DASActivityDependencyManager sharedInstance];
  v5 = [v3 scheduler_activity];
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [v4 reportActivity:v5 consumedResults:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v8;

LABEL_9:
}

void sub_1000B22C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000B22E4(uint64_t a1)
{
  v2 = [_DASBGSystemTask taskNameWithIdentifier:*(a1 + 32) UID:*(a1 + 72)];
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
  if (v3)
  {
    v4 = +[_DASActivityDependencyManager sharedInstance];
    v5 = *(a1 + 48);
    v6 = [v3 scheduler_activity];
    [v4 resetDependenciesForIdentifier:v5 byActivity:v6];
  }

  else
  {
    v7 = *(*(a1 + 40) + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 72);
      v16 = *(a1 + 76);
      *buf = 138543874;
      v20 = v14;
      v21 = 1024;
      v22 = v15;
      v23 = 1024;
      v24 = v16;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "resetResultsForIdentifier:byTaskWithIdentifier: Task %{public}@ from UID %d, PID %d not found", buf, 0x18u);
    }

    v8 = _DASActivitySchedulerErrorDomain;
    v9 = *(a1 + 32);
    v17 = @"taskIdentifier";
    v18 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [NSError errorWithDomain:v8 code:3 userInfo:v10];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void sub_1000B2600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B2618(uint64_t a1)
{
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:*(a1 + 32) forKeyedSubscript:@"TaskName"];
  v2 = [NSNumber numberWithDouble:(100 * *(a1 + 64)) / 100.0];
  [v5 setObject:v2 forKeyedSubscript:@"Target"];

  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
  [v5 setObject:v3 forKeyedSubscript:@"CompletedPercentage"];

  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 80)];
  [v5 setObject:v4 forKeyedSubscript:@"WorkloadCategory"];

  [v5 setObject:*(a1 + 40) forKeyedSubscript:@"SubCategory"];
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) sendToPPS:v5];
}

void sub_1000B2A14(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(*(a1 + 32) + 40) allValues];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 138543362;
    v16 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 state] == 1 || objc_msgSend(v8, "state") == 7 || objc_msgSend(v8, "state") == 5)
        {
          if ([v8 type] == 2 && (v9 = fabs(*(a1 + 40)), objc_msgSend(v8, "interval"), v9 >= v10 * 0.01) || (objc_msgSend(v8, "type") == 1 || objc_msgSend(v8, "type") == 3) && (v11 = fabs(*(a1 + 40)), objc_msgSend(v8, "trySchedulingBefore"), v13 = v12, objc_msgSend(v8, "startAfter"), v11 >= (v13 - v14) * 0.01))
          {
            v15 = *(*(a1 + 32) + 32);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v16;
              v22 = v8;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Time change: resubmitting activity %{public}@", buf, 0xCu);
            }

            [*(a1 + 32) dasCancelActivity:v8];
            [v8 adjustBaseTimeByOffset:*(a1 + 40)];
            [*(a1 + 32) dasSubmitActivity:v8 error:0];
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }
}

void sub_1000B2F7C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

id sub_1000B2F9C()
{

  return [v0 state];
}

id sub_1000B2FB4()
{

  return [v0 pid];
}

void sub_1000B4A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000B4A8C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_10020B728;
  v6 = qword_10020B728;
  if (!qword_10020B728)
  {
    sub_1000B6678();
    v4[3] = objc_getClass("APKActivityProgress");
    qword_10020B728 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1000B4B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B4D24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B718;
  qword_10020B718 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_1000B50B8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setName:@"ActivityProgressUISessionClient"];
  v4 = +[BSServiceQuality utility];
  [v3 setServiceQuality:v4];

  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B51B4;
  v6[3] = &unk_1001B7E30;
  v6[4] = *(a1 + 40);
  [v3 setInvalidationHandler:v6];
  v5 = [*(a1 + 40) queue];
  [v3 setTargetQueue:v5];
}

id sub_1000B51B4(uint64_t a1)
{
  if (os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
  {
    sub_100128B4C();
  }

  return [*(a1 + 32) invalidateConnection];
}

uint64_t sub_1000B6678()
{
  if (!qword_10020B720)
  {
    qword_10020B720 = _sl_dlopen();
  }

  return qword_10020B720;
}

uint64_t sub_1000B6748(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020B720 = result;
  return result;
}

Class sub_1000B67BC(uint64_t a1)
{
  sub_1000B6678();
  result = objc_getClass("APKActivityProgress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10020B728 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000B680C(uint64_t a1)
{
  sub_1000B6678();
  result = objc_getClass("APKActivityProgressTasksSpecifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10020B730 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1000B78AC(uint64_t a1)
{
  [*(a1 + 32) updateScores];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = *(v2 + 48);

  return [v3 logAppResumePredictions:v4 durationCheck:1];
}

id sub_1000B78F4(uint64_t a1)
{
  [*(a1 + 32) updateScores];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = *(v2 + 48);

  return [v3 logAppResumePredictions:v4 durationCheck:0];
}

void sub_1000B7E78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc(objc_opt_class());
  v3 = objc_opt_new();
  v8[0] = v3;
  v4 = objc_opt_new();
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [v2 initWithAlgorithms:v5];
  v7 = qword_10020B738;
  qword_10020B738 = v6;
}

id sub_1000B82E0(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 resultIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void sub_1000B833C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100128DE0(v4, v3);
    }
  }
}

void sub_1000B8398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 type];
    if (v6 == 2)
    {
      v7 = [[_DASActivityResult alloc] initWithIdentifier:*(a1 + 48) count:{objc_msgSend(v5, "resultCount")}];
      v9 = [*(a1 + 40) cumulativeResultConsumption];
      v10 = [v5 activityIdentifier];
      [v9 setObject:v7 forKeyedSubscript:v10];

      goto LABEL_8;
    }

    if (v6 == 1)
    {
      v7 = [[_DASActivityResult alloc] initWithIdentifier:*(a1 + 48) count:{objc_msgSend(v5, "resultCount")}];
      [*(a1 + 40) setCumulativelyProducedResult:v7];
LABEL_8:

      goto LABEL_11;
    }

    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100128E80(v5, v11);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100128F20(v3, v8);
    }
  }

LABEL_11:
}

uint64_t sub_1000B894C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B8964(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v2 = *(a1 + 32);
    v19[0] = *(v2 + 8);
    v18[0] = @"resultIdentifier";
    v18[1] = @"registeredProducerIdentifier";
    v3 = [*(v2 + 40) description];
    v19[1] = v3;
    v18[2] = @"attemptedProducerIdentifier";
    v4 = [*(a1 + 40) description];
    v19[2] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
    v6 = [NSError errorWithDomain:@"_DASResultDependencyGroupErrorDomain" code:5 userInfo:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 40) producedResultIdentifiers];
    v10 = [v9 containsObject:*(*(a1 + 32) + 8)];

    if (v10)
    {
      objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v11 = *(*(a1 + 32) + 8);
      v16 = @"resultIdentifier";
      v17 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v13 = [NSError errorWithDomain:@"_DASResultDependencyGroupErrorDomain" code:2 userInfo:v12];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

void sub_1000B8D88(uint64_t a1)
{
  if ([*(*(a1 + 32) + 40) isEqual:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v11[0] = @"registerdProducerIdentifier";
    v4 = [*(*(a1 + 32) + 40) description];
    v5 = v4;
    if (!v4)
    {
      v5 = +[NSNull null];
    }

    v11[1] = @"attemptedProducerIdentifier";
    v12[0] = v5;
    v6 = [*(a1 + 40) description];
    v12[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    v8 = [NSError errorWithDomain:@"_DASResultDependencyGroupErrorDomain" code:6 userInfo:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (!v4)
    {
    }
  }
}

void sub_1000B9154(uint64_t a1)
{
  if ([*(a1 + 32) queue_isConsumerActivity:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) queue_aggregateResultConsumptionForActivity:*(a1 + 40)];
    v3 = [v2 count];
    v4 = &v3[[*(a1 + 48) count]];
    if (v4 <= [*(*(a1 + 32) + 16) count])
    {
      [v2 setCount:{objc_msgSend(*(a1 + 48), "count") + objc_msgSend(v2, "count")}];
      [*(a1 + 32) persistUpdatedResultConsumptionBy:*(a1 + 40) result:v2];
    }

    else
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      v22[0] = *(v5 + 8);
      v21[0] = @"dependencyIdentifier";
      v21[1] = @"cumulativelyProducedResults";
      v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 count]);
      v22[1] = v7;
      v21[2] = @"previouslyConsumedResultCount";
      v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v2 count]);
      v22[2] = v8;
      v21[3] = @"newlyConsumedResultCount";
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 48) count]);
      v22[3] = v9;
      v21[4] = @"attemptedTotalConsumptionCount";
      v10 = [NSNumber numberWithInteger:v4];
      v22[4] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
      v12 = [NSError errorWithDomain:@"_DASResultDependencyGroupErrorDomain" code:4 userInfo:v11];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  else
  {
    v15 = *(a1 + 40);
    v24[0] = *(*(a1 + 32) + 8);
    v23[0] = @"dependencyIdentifier";
    v23[1] = @"activityIdentifier";
    v16 = [v15 description];
    v24[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    v18 = [NSError errorWithDomain:@"_DASResultDependencyGroupErrorDomain" code:1 userInfo:v17];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void sub_1000B95D4(uint64_t a1)
{
  if (([*(a1 + 32) queue_isProducerActivity:*(a1 + 40)] & 1) == 0)
  {
    v19[0] = @"resultIdentifier";
    v6 = [*(a1 + 48) identifier];
    v19[1] = @"activityName";
    v20[0] = v6;
    v7 = [*(a1 + 40) description];
    v20[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v9 = [NSError errorWithDomain:@"_DASResultDependencyGroupErrorDomain" code:2 userInfo:v8];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

LABEL_8:
    *(*(*(a1 + 64) + 8) + 24) = 0;
    return;
  }

  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 48) identifier];
  LOBYTE(v2) = [v2 isEqualToString:v3];

  if ((v2 & 1) == 0)
  {
    v17[0] = @"reportedProducedResultIdentifier";
    v12 = [*(a1 + 48) identifier];
    v17[1] = @"dependencyGroupIdentifier";
    v18[0] = v12;
    v18[1] = *(*(a1 + 32) + 8);
    v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14 = [NSError errorWithDomain:@"_DASResultDependencyGroupErrorDomain" code:3 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    goto LABEL_8;
  }

  [*(*(a1 + 32) + 16) setCount:{objc_msgSend(*(a1 + 48), "count")}];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  [v4 persistUpdatedResultProductionBy:v5];
}

uint64_t sub_1000B9910(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 resultIdentifier];
  if ([v5 containsString:*(a1 + 32)])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 eventBody];
    v8 = [v7 activityIdentifier];
    v6 = [v8 containsString:*(a1 + 32)];
  }

  return v6;
}

BOOL sub_1000B9AEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 resultIdentifier];
  if ([v5 isEqualToString:*(*(a1 + 32) + 8)])
  {
    v6 = [v3 eventBody];
    v7 = [v6 type] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_1000B9D50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 activityIdentifier];
  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v6 = [v3 eventBody];
    v7 = [v6 resultIdentifier];
    if ([v7 isEqualToString:*(*(a1 + 40) + 8)])
    {
      v8 = [v3 eventBody];
      v9 = [v8 type] == 2;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1000BA020(uint64_t a1)
{
  v3 = [*(a1 + 32) queue_aggregateResultConsumptionForActivity:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 48) + 8) + 24) = v2 - [v3 count];
}

void sub_1000BA21C(uint64_t a1)
{
  v2 = [_DASActivityResult alloc];
  v4 = *(a1 + 32);
  v3 = a1 + 32;
  v5 = [v2 initWithIdentifier:*(v4 + 8)];
  v6 = *(*v3 + 16);
  *(*v3 + 16) = v5;

  v7 = +[NSMutableDictionary dictionary];
  v8 = *(*v3 + 24);
  *(*v3 + 24) = v7;

  v9 = [*(*v3 + 48) pruner];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BA320;
  v11[3] = &unk_1001B7F68;
  v11[4] = *v3;
  [v9 deleteEventsPassingTest:v11];

  v10 = *(*v3 + 64);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100129178(v3, v10);
  }
}

id sub_1000BA320(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 resultIdentifier];
  v5 = [v4 isEqualToString:*(*(a1 + 32) + 8)];

  return v5;
}

void sub_1000BA56C(uint64_t a1)
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(*(a1 + 32) + 24) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v7];
        v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 count]);
        [*(a1 + 40) setObject:v9 forKeyedSubscript:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(*(a1 + 32) + 32);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(a1 + 48);
        v16 = [*(*(&v17 + 1) + 8 * j) identifier];
        [v15 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }
}

id sub_1000BAA38(uint64_t a1)
{
  [*(a1 + 32) appendFormat:@"\nCumulative Result Produced: %@, ", *(*(a1 + 40) + 16)];
  [*(a1 + 32) appendFormat:@"\nCumulative Result Consumption: %@, ", *(*(a1 + 40) + 24)];
  [*(a1 + 32) appendFormat:@"\nConsumers: %@, ", *(*(a1 + 40) + 32)];
  return [*(a1 + 32) appendFormat:@"\nProducer: %@", *(*(a1 + 40) + 40)];
}

void sub_1000BAE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000BAE48(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 resultIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void sub_1000BAEA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100128DE0(v4, v3);
    }
  }
}

uint64_t sub_1000BAF34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 8);
  v5 = *(*a2 + 40);
  return result;
}

uint64_t sub_1000BAFE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B750;
  qword_10020B750 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_1000BBA64(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [a2 factorWithName:v8];
  v10 = v9;
  if (v9)
  {
    v13 = [v9 longValue];
    if (a4)
    {
      v11 = @"kern.trial.%@";
    }

    else
    {
      v11 = @"kern.%@";
    }

    v12 = [NSString stringWithFormat:v11, v8];
    if (sysctlbyname([v12 cStringUsingEncoding:4], 0, 0, &v13, 8uLL))
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10012920C();
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v12;
      v16 = 2048;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trial: Successfully set sysctl %@ to %lld", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100129290();
  }
}

void sub_1000BD470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BD4B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000BD4CC(void *a1, void *a2)
{
  v3 = *(*(*(a1[4] + 8) + 24) + *(*(a1[5] + 8) + 24));
  v4 = a2;
  v5 = [NSNumber numberWithUnsignedChar:v3];
  [*(*(a1[6] + 8) + 40) setObject:v5 forKey:v4];

  ++*(*(a1[5] + 8) + 24);
}

id sub_1000BE180(uint64_t a1)
{
  v10[0] = @"app_launch";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v11[0] = v2;
  v10[1] = @"app_resume";
  v3 = [NSNumber numberWithInt:*(a1 + 40) ^ 1u];
  v11[1] = v3;
  v10[2] = @"app_resume_from_dock";
  v4 = [NSNumber numberWithBool:*(a1 + 41)];
  v11[2] = v4;
  v10[3] = @"app_frozen";
  v5 = [NSNumber numberWithBool:*(a1 + 42)];
  v11[3] = v5;
  v11[4] = &off_1001CA3A8;
  v10[4] = @"dock_config";
  v10[5] = @"num_docked_apps";
  v6 = [NSNumber numberWithInt:*(a1 + 32)];
  v11[5] = v6;
  v10[6] = @"dock_utilization_percentage";
  v7 = [NSNumber numberWithInt:*(a1 + 36)];
  v11[6] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:7];

  return v8;
}

void sub_1000BE44C(void *a1, void *a2)
{
  v6 = a1[4];
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 setPredicates:v4];

  [v3 setStateDescriptor:a1[5]];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000027C0;
  v5[3] = &unk_1001B5EB8;
  v5[4] = a1[6];
  [v3 setUpdateHandler:v5];
}

void sub_1000BEF78(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) getProcessHandleFromRunningBoardForPid:{objc_msgSend(v5, "intValue")}];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 bundle];
    v9 = [v8 identifier];
    v10 = [v9 isEqualToString:v12];

    if (v10)
    {
      v11 = *(*(a1 + 32) + 48);
      objc_sync_enter(v11);
      [*(*(a1 + 32) + 48) setObject:v7 forKey:v12];
      objc_sync_exit(v11);
    }
  }
}

void sub_1000BF12C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000BF148(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = +[_DASDataProtectionStateMonitor dataProtectionClassC];

    if (v5 == v4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v7 = [WeakRetained logger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Class C protected data now available, refreshing state and performing initial policy update.", v9, 2u);
      }

      [WeakRetained refreshLedgerInformationForApplicationProcesses];
      [WeakRetained updatePolicy];
      v8 = [WeakRetained lockStateMonitor];
      [v8 setChangeHandler:0];
    }
  }
}

void sub_1000BF2E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000BF2FC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (a2)
    {
      [WeakRetained purgeApplicationDock];
    }

    else
    {
      [WeakRetained enableApplicationDock];
    }

    WeakRetained = v4;
  }
}

void sub_1000BF6DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000C00C0(uint64_t a1)
{
  v4 = +[_APRSMetricRecorder sharedInstance];
  v2 = [*(a1 + 32) bundle];
  v3 = [v2 identifier];
  [v4 endEventForApp:v3 pid:objc_msgSend(*(a1 + 32) forEvent:{"pid"), 0}];
}

id sub_1000C094C(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void sub_1000C09A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100128DE0(v4, v3);
    }
  }
}

void sub_1000C0A04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 type];
    if (v6 == 2)
    {
      v8 = [*(a1 + 40) haveRunActivities];
      v9 = [v5 consumerIdentifier];
      [v8 addObject:v9];
    }

    else if (v6 == 1)
    {
      [*(a1 + 40) setHasDependencyRun:1];
    }

    else
    {
      v10 = *(a1 + 32);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10012A030(v5, v10);
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100128F20(v3, v7);
    }
  }
}

id sub_1000C1000(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  [*(*(a1 + 32) + 32) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 updateStreamForTrackedActivityDidRun:v3];
}

id sub_1000C10E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 persistActivityDidConsume:v5];
}

void sub_1000C1228(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) identifier];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:v3];
}

id sub_1000C1304(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A0D0(v1, v2);
  }

  [*(*v1 + 4) removeAllObjects];
  *(*v1 + 8) = 0;
  return [*v1 pruneStreamOfGroup];
}

void sub_1000C14F0(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v18 + 1) + 8 * v6) identifier];
        [v7 addObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(*(a1 + 32) + 32);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(a1 + 48) addObject:{*(*(&v14 + 1) + 8 * v13), v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

uint64_t sub_1000C1794(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 identifier];
  if ([v5 containsString:*(a1 + 32)])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 eventBody];
    v8 = [v7 consumerIdentifier];
    v6 = [v8 containsString:*(a1 + 32)];
  }

  return v6;
}

id sub_1000C191C(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(*(a1 + 32) + 16)];

  return v5;
}

id sub_1000C1C14(uint64_t a1)
{
  [*(a1 + 32) appendFormat:@"\nDependents: %@", *(*(a1 + 40) + 24)];
  if (*(*(a1 + 40) + 8))
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [*(a1 + 32) appendFormat:@"\nHas the dependency run: %@", v2];
}

id sub_1000C1D5C(uint64_t a1)
{
  [*(a1 + 32) appendFormat:@"\nDependents: %@", *(*(a1 + 40) + 24)];
  [*(a1 + 32) appendFormat:@"\nDependents that have run: %@", *(*(a1 + 40) + 32)];
  if (*(*(a1 + 40) + 8))
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [*(a1 + 32) appendFormat:@"\nHas the dependency run: %@", v2];
}

void sub_1000C2124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000C213C(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void sub_1000C2198(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100128DE0(v4, v3);
    }
  }
}

void sub_1000C2874(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  [a3 doubleValue];
  v6 = v5;
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v11];
  [v7 doubleValue];
  v9 = v8 * 0.5 + v6 * 0.5;

  if (v9 <= 0.1)
  {
    [*(a1 + 40) setObject:&off_1001CA438 forKeyedSubscript:v11];
  }

  else
  {
    v10 = [NSNumber numberWithDouble:v9];
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
  }
}

void sub_1000C2950(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

void sub_1000C29D8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3)
  {
    [*(a1 + 32) setObject:&off_1001CA438 forKeyedSubscript:v4];
  }
}

id sub_1000C2AC0(uint64_t a1)
{
  [*(a1 + 32) _queue_loadHistograms];
  v2 = [*(a1 + 32) _queue_computeScores];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(*(a1 + 32) + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 24);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated Kill Histogram: %@", &v8, 0xCu);
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
  return [*(a1 + 32) _queue_updateHistograms];
}

void sub_1000C2D78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 updateModel];
  [v3 setTaskCompleted];
}

void sub_1000C33B4(uint64_t a1)
{
  v2 = memorystatus_control();
  if (v2 <= 0)
  {
    v33 = *(*(a1 + 32) + 48);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10012A204(v33);
    }
  }

  else
  {
    v3 = malloc_type_malloc(v2, 0x1000040BEF03554uLL);
    if (memorystatus_control() <= 0)
    {
      v34 = *(*(a1 + 32) + 48);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10012A178(v34);
      }
    }

    else
    {
      v4 = +[NSMutableArray array];
      v6 = v4;
      v7 = *(v3 + 24);
      if (v7)
      {
        v37 = v4;
        v38 = 0;
        v39 = 0;
        v8 = 0;
        v9 = 0;
        v36 = 0;
        v10 = 0;
        v11 = v3 + 200;
        v12 = 0.0;
        v13 = &NSLocalizedDescriptionKey_ptr;
        *&v5 = 138412290;
        v35 = v5;
        do
        {
          memcpy(__dst, v11, sizeof(__dst));
          if (__dst[10] && (__dst[5] & 0x1800000000) == 0)
          {
            v14 = [(NSErrorUserInfoKey *)v13[27] stringWithUTF8String:__dst + 4];
            if (v14)
            {
              if (!v8)
              {
                v8 = mach_absolute_time();
                v15 = +[NSDate date];

                [v15 timeIntervalSinceDate:*(*(a1 + 32) + 56)];
                v12 = v16;
                v9 = v15;
                v13 = &NSLocalizedDescriptionKey_ptr;
              }

              [*(a1 + 32) secondsFrom:v8 until:{__dst[25], v35}];
              if (v17 <= v12)
              {
                v18 = v17;
                if ((__dst[5] & 0x200000000) != 0)
                {
                  if ((__dst[5] & 0x400000000) != 0)
                  {
                    v19 = 0;
                    v39 += __dst[30];
                  }

                  else
                  {
                    ++v38;
                    v19 = 1;
                  }
                }

                else
                {
                  v19 = 0;
                }

                v20 = *(*(a1 + 32) + 48);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = v20;
                  v22 = [v9 dateByAddingTimeInterval:-v18];
                  *buf = 138412546;
                  v41 = v14;
                  v42 = 2112;
                  v43 = v22;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ killed at %@", buf, 0x16u);
                }

                if ([*(a1 + 32) process:v14 inSet:*(a1 + 40)])
                {
                  if (HIDWORD(__dst[6]))
                  {
                    v23 = +[NSMutableDictionary dictionary];
                    [v23 setObject:v14 forKeyedSubscript:@"BundleID"];
                    v24 = [NSNumber numberWithInt:LODWORD(__dst[0])];
                    [v23 setObject:v24 forKeyedSubscript:@"PID"];

                    v25 = [NSNumber numberWithUnsignedInt:HIDWORD(__dst[6])];
                    [v23 setObject:v25 forKeyedSubscript:@"Reason"];

                    v26 = *(*(a1 + 32) + 48);
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v41 = v14;
                      v42 = 1024;
                      LODWORD(v43) = HIDWORD(__dst[6]);
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Skipped %@ (%d)", buf, 0x12u);
                    }

                    [v37 addObject:v23];
                  }

                  if ((v19 & 1) == 0)
                  {
                    v27 = *(*(a1 + 32) + 48);
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = v35;
                      v41 = v14;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Adding %@ to today's kill dictionary", buf, 0xCu);
                    }

                    v28 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v14];
                    [v28 doubleValue];
                    v30 = [NSNumber numberWithDouble:v29 + 1.0];
                    [*(*(a1 + 32) + 16) setObject:v30 forKeyedSubscript:v14];

                    v36 = 1;
                  }
                }

                else
                {
                  [*(*(a1 + 32) + 32) addObject:v14];
                }

                v13 = &NSLocalizedDescriptionKey_ptr;
              }
            }

            v7 = *(v3 + 24);
          }

          ++v10;
          v11 += 288;
        }

        while (v10 < v7);
        v6 = v37;
        v31 = v38;
        v7 = v39;
        v32 = v36;
      }

      else
      {
        v32 = 0;
        v9 = 0;
        v31 = 0;
      }

      free(v3);
      [_DASMetricRecorder setValue:v7 forKey:@"com.apple.dasd.swap.goodfreezecount"];
      [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.dasd.swap.badfreezecount" byCount:v31];
      if (v32)
      {
        objc_storeStrong((*(a1 + 32) + 56), v9);
        [*(a1 + 32) _queue_updateHistograms];
        [*(*(a1 + 32) + 40) logFreezerSkipReasons:v6];
      }
    }
  }
}

void sub_1000C3AC4(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v2 = [*(a1 + 32) _queue_computeScores];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C3BFC;
  v6[3] = &unk_1001B7070;
  v6[4] = v7;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C3C38;
  v3[3] = &unk_1001B7098;
  v4 = *(a1 + 40);
  v5 = v7;
  [v2 enumerateKeysAndObjectsUsingBlock:v3];

  _Block_object_dispose(v7, 8);
}

double sub_1000C3BFC(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}