@interface MIAppReferenceManager
+ (id)defaultManager;
- (BOOL)_countFinalReferences:(unint64_t *)a3 inBundleContainer:(id)a4 withError:(id *)a5;
- (BOOL)_countReferencesWithType:(int)a3 atBaseURL:(id)a4 count:(unint64_t *)a5 withError:(id *)a6;
- (BOOL)_countTemporaryReferences:(unint64_t *)a3 inBundleContainer:(id)a4 withError:(id *)a5;
- (BOOL)_removeReferenceAtURL:(id)a3 personaUniqueString:(id)a4 inBundleContainer:(id)a5 wasLastReference:(BOOL *)a6 resultingPersonaUniqueStrings:(id *)a7 error:(id *)a8;
- (BOOL)_updateReferenceAtURL:(id)a3 byAddingPersonaUniqueString:(id)a4 resultingPersonaUniqueStrings:(id *)a5 error:(id *)a6;
- (BOOL)_updateReferenceAtURL:(id)a3 byRemovingPersonaUniqueString:(id)a4 resultingPersonaUniqueStrings:(id *)a5 error:(id *)a6;
- (BOOL)finalizeTemporaryReference:(id)a3 resultingPersonaUniqueStrings:(id *)a4 error:(id *)a5;
- (BOOL)revokeTemporaryReference:(id)a3 wasLastReference:(BOOL *)a4 error:(id *)a5;
- (MIAppReferenceManager)init;
- (id)personaUniqueStringsForAppWithBundleID:(id)a3 error:(id *)a4;
- (id)referencesForIdentifier:(id)a3 inDomain:(unint64_t)a4 error:(id *)a5;
- (void)enumerateAppReferencesWithBlock:(id)a3;
@end

@implementation MIAppReferenceManager

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005521C;
  block[3] = &unk_100090CF8;
  block[4] = a1;
  if (qword_1000A9718 != -1)
  {
    dispatch_once(&qword_1000A9718, block);
  }

  v2 = qword_1000A9710;

  return v2;
}

- (MIAppReferenceManager)init
{
  v3.receiver = self;
  v3.super_class = MIAppReferenceManager;
  return [(MIAppReferenceManager *)&v3 init];
}

- (BOOL)finalizeTemporaryReference:(id)a3 resultingPersonaUniqueStrings:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 identity];
  v10 = [v9 bundleID];
  v24 = 0;
  v11 = +[MIBundleContainer appBundleContainerForIdentifier:inDomain:withError:](MIBundleContainer, "appBundleContainerForIdentifier:inDomain:withError:", v10, [v8 domain], &v24);
  v12 = v24;

  if (v11)
  {
    v13 = [v8 uid];
    v14 = [v9 personaUniqueString];
    v22 = v12;
    v23 = 0;
    v15 = [(MIAppReferenceManager *)self addReferenceForUserWithID:v13 personaUniqueString:v14 byRemovingTemporaryReference:1 inBundleContainer:v11 resultingPersonaUniqueStrings:&v23 error:&v22];
    v16 = v23;
    v17 = v22;

    v12 = v17;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (!v15)
  {
    v18 = v12;
    *a5 = v12;
  }

LABEL_7:
  v19 = !v15;
  if (!a4)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v20 = v16;
    *a4 = v16;
  }

  return v15;
}

- (BOOL)revokeTemporaryReference:(id)a3 wasLastReference:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 identity];
  v10 = [v9 bundleID];
  v20 = 0;
  v11 = +[MIBundleContainer appBundleContainerForIdentifier:inDomain:withError:](MIBundleContainer, "appBundleContainerForIdentifier:inDomain:withError:", v10, [v8 domain], &v20);
  v12 = v20;

  if (v11)
  {
    v13 = [v8 uid];
    v14 = [v9 personaUniqueString];
    v19 = v12;
    v15 = [(MIAppReferenceManager *)self removeTemporaryReferenceForUserWithID:v13 personaUniqueString:v14 inBundleContainer:v11 wasLastReference:a4 error:&v19];
    v16 = v19;

    v12 = v16;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (!v15)
  {
    v17 = v12;
    *a5 = v12;
  }

LABEL_7:

  return v15;
}

- (BOOL)_updateReferenceAtURL:(id)a3 byAddingPersonaUniqueString:(id)a4 resultingPersonaUniqueStrings:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = +[MIFileManager defaultManager];
  v39 = 0;
  v12 = [MIAppReferenceMetadata referenceMetadataFromURL:v9 error:&v39];
  v13 = v39;
  v14 = v13;
  if (!v12)
  {
    v17 = [v13 domain];
    v34 = a6;
    if ([v17 isEqualToString:NSCocoaErrorDomain])
    {
      v18 = [v14 code];

      if (v18 == 260)
      {
        v19 = [v9 URLByDeletingLastPathComponent];
        v20 = [v19 URLByDeletingLastPathComponent];
        v38 = v14;
        v21 = [v11 createDirectoryAtURL:v20 withIntermediateDirectories:0 mode:493 error:&v38];
        v22 = v38;

        if (v21)
        {
          v37 = v22;
          v23 = [v11 createDirectoryAtURL:v19 withIntermediateDirectories:0 mode:493 error:&v37];
          v14 = v37;

          if (v23)
          {
            v12 = objc_opt_new();

            a6 = v34;
            goto LABEL_14;
          }

          v22 = v14;
        }

LABEL_27:
        v12 = 0;
        v16 = 0;
        goto LABEL_31;
      }
    }

    else
    {
    }

    v36 = 0;
    v26 = [v11 removeItemAtURL:v9 error:&v36];
    v19 = v36;
    if ((v26 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      v32 = [v9 path];
      v33 = v19;
      MOLogWrite();
    }

    v27 = MIInstallerErrorDomain;
    v28 = [v9 path];
    v22 = sub_100010734("[MIAppReferenceManager _updateReferenceAtURL:byAddingPersonaUniqueString:resultingPersonaUniqueStrings:error:]", 222, v27, 4, v14, 0, @"Failed to deserialize temporary references from %@", v29, v28);

    goto LABEL_27;
  }

  v15 = [v12 personas];
  v16 = [v15 mutableCopy];

  if (!v16)
  {
LABEL_14:
    v16 = objc_opt_new();
    goto LABEL_15;
  }

  if (![v16 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059CC8(v9);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v32 = [v9 path];
      MOLogWrite();
    }
  }

LABEL_15:
  if (([v16 containsObject:{v10, v32}] & 1) == 0)
  {
    v34 = a6;
    [v16 addObject:v10];
    v24 = [v16 copy];
    [v12 setPersonas:v24];

    v35 = v14;
    LOBYTE(v24) = [v12 serializeToURL:v9 error:&v35];
    v22 = v35;

    if (v24)
    {
      v14 = v22;
      goto LABEL_18;
    }

    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
LABEL_32:
      v14 = v22;
      if (v34)
      {
        v30 = v22;
        v25 = 0;
        *v34 = v22;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_35;
    }

    v19 = [v9 path];
    MOLogWrite();
LABEL_31:

    goto LABEL_32;
  }

LABEL_18:
  if (a5)
  {
    *a5 = [NSSet setWithArray:v16];
  }

  v25 = 1;
LABEL_35:

  return v25;
}

- (BOOL)_updateReferenceAtURL:(id)a3 byRemovingPersonaUniqueString:(id)a4 resultingPersonaUniqueStrings:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = +[MIFileManager defaultManager];
  v41 = 0;
  v12 = [MIAppReferenceMetadata referenceMetadataFromURL:v9 error:&v41];
  v13 = v41;
  v14 = v13;
  if (!v12)
  {
    v21 = [v13 domain];
    if ([v21 isEqualToString:NSCocoaErrorDomain])
    {
      v22 = [v14 code];

      if (v22 == 260)
      {

        v16 = 0;
        if (!a5)
        {
          v30 = 1;
          v14 = 0;
          goto LABEL_37;
        }

        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v40 = 0;
    v25 = [v11 removeItemAtURL:v9 error:&v40];
    v24 = v40;
    if ((v25 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      v35 = [v9 path];
      v37 = v24;
      MOLogWrite();
    }

    v26 = MIInstallerErrorDomain;
    v27 = [v9 path];
    v20 = sub_100010734("[MIAppReferenceManager _updateReferenceAtURL:byRemovingPersonaUniqueString:resultingPersonaUniqueStrings:error:]", 280, v26, 4, v14, 0, @"Failed to deserialize temporary references from %@", v28, v27);

    v16 = 0;
    goto LABEL_20;
  }

  v15 = [v12 personas];
  v16 = [v15 mutableCopy];

  if (!v16)
  {
    if (!a5)
    {
      goto LABEL_36;
    }

LABEL_12:
    v23 = 0;
LABEL_35:
    v33 = v23;
    *a5 = v33;

    goto LABEL_36;
  }

  if (([v16 containsObject:v10] & 1) == 0)
  {
    v20 = sub_100010734("[MIAppReferenceManager _updateReferenceAtURL:byRemovingPersonaUniqueString:resultingPersonaUniqueStrings:error:]", 289, MIInstallerErrorDomain, 4, 0, 0, @"Persona %@ not found in %@", v17, v10);
    v24 = v14;
LABEL_20:

    goto LABEL_21;
  }

  [v16 removeObject:v10];
  v18 = [v16 copy];
  [v12 setPersonas:v18];

  if (![v16 count])
  {
    v38 = v14;
    v31 = [v11 removeItemAtURL:v9 error:&v38];
    v32 = v38;

    if (v31)
    {
      v14 = v32;
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v36 = [v9 path];
        MOLogWrite();
      }

      v14 = 0;
    }

LABEL_33:
    if (a5)
    {
      v23 = [NSSet setWithArray:v16];
      goto LABEL_35;
    }

LABEL_36:
    v30 = 1;
    goto LABEL_37;
  }

  v39 = v14;
  v19 = [v12 serializeToURL:v9 error:&v39];
  v20 = v39;

  if (v19)
  {
    v14 = v20;
    goto LABEL_33;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v24 = [v9 path];
    MOLogWrite();
    goto LABEL_20;
  }

LABEL_21:
  v14 = v20;
  if (a6)
  {
    v29 = v20;
    v30 = 0;
    *a6 = v20;
  }

  else
  {
    v30 = 0;
  }

LABEL_37:

  return v30;
}

- (BOOL)_countReferencesWithType:(int)a3 atBaseURL:(id)a4 count:(unint64_t *)a5 withError:(id *)a6
{
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000564D4;
  v21 = sub_1000564E4;
  v22 = 0;
  v10 = +[MIFileManager defaultManager];
  if ([v10 itemDoesNotExistAtURL:v9])
  {
    if (a5)
    {
      *a5 = 0;
    }

    v11 = 1;
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000564EC;
    v15[3] = &unk_100091BB8;
    v16 = a3;
    v15[4] = &v17;
    v15[5] = &v23;
    v12 = [v10 traverseDirectoryAtURL:v9 withBlock:v15];
    if (v12)
    {
      objc_storeStrong(v18 + 5, v12);
    }

    v13 = v18[5];
    v11 = v13 == 0;
    if (v13)
    {
      if (a6)
      {
        *a6 = v13;
      }
    }

    else if (a5)
    {
      *a5 = v24[3];
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (BOOL)_countFinalReferences:(unint64_t *)a3 inBundleContainer:(id)a4 withError:(id *)a5
{
  v8 = [a4 referenceStorageURL];
  LOBYTE(a5) = [(MIAppReferenceManager *)self _countReferencesWithType:2 atBaseURL:v8 count:a3 withError:a5];

  return a5;
}

- (BOOL)_countTemporaryReferences:(unint64_t *)a3 inBundleContainer:(id)a4 withError:(id *)a5
{
  v8 = [a4 referenceStorageURL];
  LOBYTE(a5) = [(MIAppReferenceManager *)self _countReferencesWithType:1 atBaseURL:v8 count:a3 withError:a5];

  return a5;
}

- (BOOL)_removeReferenceAtURL:(id)a3 personaUniqueString:(id)a4 inBundleContainer:(id)a5 wasLastReference:(BOOL *)a6 resultingPersonaUniqueStrings:(id *)a7 error:(id *)a8
{
  v14 = a4;
  v15 = a5;
  v16 = [(MIAppReferenceManager *)self _updateReferenceAtURL:a3 byRemovingPersonaUniqueString:v14 resultingPersonaUniqueStrings:a7 error:a8];
  v17 = v16;
  if (a6 && v16)
  {
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v18 = [(MIAppReferenceManager *)self _countFinalReferences:&v30 inBundleContainer:v15 withError:&v28];
    v19 = v28;
    if ((v18 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v24 = v19;
        MOLogWrite();
      }

      v19 = 0;
    }

    v27 = v19;
    v20 = [(MIAppReferenceManager *)self _countTemporaryReferences:&v29 inBundleContainer:v15 withError:&v27, v24];
    v21 = v27;

    v22 = qword_1000A9720;
    if ((v20 & 1) == 0)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
LABEL_13:
        if (*(v22 + 44) < 5)
        {
LABEL_15:
          *a6 = v30 + v29 == 0;

          goto LABEL_16;
        }

LABEL_14:
        v26 = [v15 identifier];
        MOLogWrite();

        goto LABEL_15;
      }

      v25 = v21;
      MOLogWrite();
      v22 = qword_1000A9720;
    }

    if (!v22)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_16:

  return v17;
}

- (void)enumerateAppReferencesWithBlock:(id)a3
{
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (id)referencesForIdentifier:(id)a3 inDomain:(unint64_t)a4 error:(id *)a5
{
  v30 = a3;
  v28 = objc_opt_new();
  v7 = sub_100009938();
  v8 = sub_100009864();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v29 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v33;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v33 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = [*(*(&v32 + 1) + 8 * v14) uid];
      v16 = v15;
      if (a4 != 3 || v8 == v15)
      {
        v31 = v12;
        v17 = [(MIAppReferenceManager *)self personaUniqueStringsForAppWithBundleID:v30 domain:a4 forUserWithID:v15 error:&v31];
        v18 = v31;

        if (!v17)
        {

          v20 = 0;
          v21 = a5;
          v22 = v28;
          if (a5)
          {
            goto LABEL_20;
          }

          goto LABEL_22;
        }

        v19 = [NSNumber numberWithUnsignedInt:v16];
        [v28 setObject:v17 forKeyedSubscript:v19];

        v12 = v18;
        v9 = v29;
      }

      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }
  }

  v12 = 0;
LABEL_16:

  v22 = v28;
  if ([v28 count])
  {
    v20 = [v28 copy];
    v18 = v12;
  }

  else
  {
    v18 = sub_100010734("[MIAppReferenceManager referencesForIdentifier:inDomain:error:]", 511, MIInstallerErrorDomain, 4, 0, 0, @"Unexpectedly got no references for %@ for users %@", v23, v30);

    v20 = 0;
  }

  v21 = a5;
  if (a5)
  {
LABEL_20:
    if (!v20)
    {
      v24 = v18;
      *v21 = v18;
    }
  }

LABEL_22:
  v25 = v20;

  return v20;
}

- (id)personaUniqueStringsForAppWithBundleID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIAppReferenceManager *)self personaUniqueStringsForAppWithBundleID:v6 domain:2 forUserWithID:sub_100009864() error:a4];

  return v7;
}

@end