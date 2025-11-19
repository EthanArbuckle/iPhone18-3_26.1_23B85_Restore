@interface SQLiteManager
+ (id)executeQuery:(id)a3 onDatabaseAtPath:(id)a4;
@end

@implementation SQLiteManager

+ (id)executeQuery:(id)a3 onDatabaseAtPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v10 = @"\nError: SQL query should not be null \n";
LABEL_7:
    v11 = [NSString stringWithFormat:v10];
    [v11 writeToStdErr];

    v8 = 0;
    goto LABEL_8;
  }

  if (!v6)
  {
    v10 = @"\nError: DB Path should not be null \n";
    goto LABEL_7;
  }

  ppStmt = 0xAAAAAAAAAAAAAAAALL;
  ppDb = 0xAAAAAAAAAAAAAAAALL;
  v8 = +[NSMutableArray array];
  if (sqlite3_open_v2([v7 UTF8String], &ppDb, 1, 0))
  {
    v9 = [NSString stringWithFormat:@"\nError: Failed to open SQL DB %s \n", sqlite3_errmsg(ppDb)];
    [v9 writeToStdErr];
  }

  else
  {
    if (sqlite3_prepare_v2(ppDb, [v5 UTF8String], -1, &ppStmt, 0))
    {
      v13 = [NSString stringWithFormat:@"\nError: Failed to prepare statement %s \n", sqlite3_errmsg(ppDb)];
      [v13 writeToStdErr];
    }

    else
    {
      v14 = sqlite3_column_count(ppStmt);
      v15 = v14;
      v13 = [NSMutableArray arrayWithCapacity:v14];
      if (v14 >= 1)
      {
        v16 = 0;
        do
        {
          v17 = sqlite3_column_name(ppStmt, v16);
          if (v17)
          {
            [NSString stringWithUTF8String:v17];
          }

          else
          {
            +[NSNull null];
          }
          v18 = ;
          [v13 addObject:v18];

          ++v16;
        }

        while (v15 != v16);
      }

      [v8 addObject:v13];
      while (sqlite3_step(ppStmt) == 100)
      {
        v19 = [NSMutableArray arrayWithCapacity:v15];
        if (v15 >= 1)
        {
          v20 = 0;
          do
          {
            v21 = sqlite3_column_text(ppStmt, v20);
            if (v21)
            {
              [NSString stringWithUTF8String:v21];
            }

            else
            {
              +[NSNull null];
            }
            v22 = ;
            [v19 addObject:v22];

            ++v20;
          }

          while (v15 != v20);
        }

        [v8 addObject:v19];
      }

      sqlite3_finalize(ppStmt);
    }

    sqlite3_close(ppDb);
  }

LABEL_8:

  return v8;
}

@end