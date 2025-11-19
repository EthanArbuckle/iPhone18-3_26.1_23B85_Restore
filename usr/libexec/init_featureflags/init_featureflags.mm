uint64_t start(int a1, void *a2)
{
  if (a1 >= 2)
  {
    v2 = a2[1];
    if (*v2 == 45)
    {
      if (v2[1] == 110 && !v2[2])
      {
        byte_100008150 = 1;
        byte_100008151 = 1;
      }

      if (v2[1] == 118 && !v2[2])
      {
        ++dword_100008154;
      }
    }

    if (a1 != 2)
    {
      v3 = a2[2];
      if (*v3 == 45 && v3[1] == 118 && !v3[2])
      {
        ++dword_100008154;
      }

      if (a1 >= 4)
      {
        v4 = a2[3];
        if (*v4 == 45 && v4[1] == 118 && !v4[2])
        {
          ++dword_100008154;
        }
      }
    }
  }

  v177 = objc_autoreleasePoolPush();
  if (os_variant_allows_internal_security_policies() && (byte_100008151 & 1) == 0)
  {
    v5 = +[NSFileManager defaultManager];
    v205[0] = NSFileOwnerAccountID;
    v205[1] = NSFileGroupOwnerAccountID;
    v206[0] = &off_100004380;
    v206[1] = &off_100004380;
    v205[2] = NSFilePosixPermissions;
    v206[2] = &off_100004398;
    v6 = [NSDictionary dictionaryWithObjects:v206 forKeys:v205 count:3];
    *&v211 = NSFileOwnerAccountID;
    *(&v211 + 1) = NSFileGroupOwnerAccountID;
    *&v216 = &off_100004380;
    *(&v216 + 1) = &off_100004380;
    *&v212 = NSFilePosixPermissions;
    *&v217 = &off_1000043B0;
    v193 = [NSDictionary dictionaryWithObjects:&v216 forKeys:&v211 count:3];
    v7 = [NSString stringWithUTF8String:sub_100000AF8()[1]];
    __nel = v6;
    *&v199 = 0;
    if ([v5 fileExistsAtPath:v7])
    {
      v8 = [v5 setAttributes:v6 ofItemAtPath:v7 error:&v199];
    }

    else
    {
      v8 = [v5 createDirectoryAtPath:v7 withIntermediateDirectories:0 attributes:v6 error:&v199];
    }

    v9 = v8;
    v10 = v199;
    if ((v9 & 1) == 0)
    {
      v11 = [v7 UTF8String];
      v12 = [v10 description];
      [v12 UTF8String];
      sub_1000018AC(@"Failed to create or configure directory %s: %s", v13, v14, v15, v16, v17, v18, v19, v11);
    }

    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    *&v195 = v10;
    v190 = v5;
    v20 = v7;
    v21 = [v5 contentsOfDirectoryAtPath:v7 error:&v195];
    v22 = v195;

    v23 = [v21 countByEnumeratingWithState:&v207 objects:v215 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v208;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v208 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v207 + 1) + 8 * i);
          v28 = [v27 pathExtension];
          v29 = [v28 isEqualToString:@"plist"];

          if (v29)
          {
            v30 = [v20 stringByAppendingPathComponent:v27];
            *&v203 = v22;
            v31 = [v190 setAttributes:v193 ofItemAtPath:v30 error:&v203];
            v32 = v203;

            if ((v31 & 1) == 0)
            {
              v33 = [v30 UTF8String];
              v34 = [v32 description];
              [v34 UTF8String];
              sub_1000018AC(@"Failed to set permissions for file %s: %s", v35, v36, v37, v38, v39, v40, v41, v33);
            }

            v22 = v32;
          }
        }

        v24 = [v21 countByEnumeratingWithState:&v207 objects:v215 count:16];
      }

      while (v24);
    }
  }

  v42 = objc_alloc_init(NSMutableArray);
  v43 = [[FFConfiguration alloc] initPrivateForBootTask];
  context = objc_autoreleasePoolPush();
  v44 = [v43 domains];
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  obj = v44;
  v194 = v43;
  __nela = [v44 countByEnumeratingWithState:&v199 objects:v206 count:16];
  if (__nela)
  {
    v185 = *v200;
    do
    {
      v45 = 0;
      do
      {
        if (*v200 != v185)
        {
          objc_enumerationMutation(obj);
        }

        v191 = v45;
        v46 = *(*(&v199 + 1) + 8 * v45);
        v47 = [v43 featuresForDomain:v46];
        v195 = 0u;
        v196 = 0u;
        v197 = 0u;
        v198 = 0u;
        v48 = [v47 countByEnumeratingWithState:&v195 objects:v205 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v196;
          do
          {
            for (j = 0; j != v49; j = j + 1)
            {
              if (*v196 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = [v43 stateForFeature:*(*(&v195 + 1) + 8 * j) domain:v46 level:4];
              if (v52)
              {
                [v42 addObject:v52];
              }

              if (dword_100008154 >= 2)
              {
                v53 = __stderrp;
                v54 = [v52 name];
                v55 = [v54 UTF8String];
                v56 = [v52 value];
                v57 = "disabled";
                if (v56 == 1)
                {
                  v57 = "enabled";
                }

                fprintf(v53, "Feature %s = %s\n", v55, v57);

                v43 = v194;
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v195 objects:v205 count:16];
          }

          while (v49);
        }

        v45 = v191 + 1;
      }

      while (v191 + 1 != __nela);
      __nela = [obj countByEnumeratingWithState:&v199 objects:v206 count:16];
    }

    while (__nela);
  }

  objc_autoreleasePoolPop(context);
  v178 = v42;
  v58 = +[NSMutableDictionary dictionary];
  v59 = 0;
  v60 = 0;
  v203 = *"FEATFLAG";
  v204 = *&algn_1000020E9[7];
  v186 = v58;
  do
  {
    arc4random_buf(&v204 + 8, 8uLL);
    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v192 = v178;
    v61 = [v192 countByEnumeratingWithState:&v216 objects:v215 count:16];
    contexta = v60;
    if (v61)
    {
      v62 = v61;
      v63 = 0;
      v64 = *v217;
      obja = *v217;
      while (2)
      {
        v65 = 0;
        __nelb = v62;
        do
        {
          if (*v217 != v64)
          {
            objc_enumerationMutation(v192);
          }

          v66 = *(*(&v216 + 1) + 8 * v65);
          v67 = [v66 name];
          v68 = [v67 UTF8String];

          v69 = strlen(v68);
          if (v69 < 0x401)
          {
            v77 = *(&v204 + 1) ^ (0xC6A4A7935BD1E995 * v69);
            v78 = &v68[v69];
            v79 = v68;
            if (v69 >= 0x10)
            {
              do
              {
                v77 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v79) ^ ((0xC6A4A7935BD1E995 * *v79) >> 47))) ^ v77)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(v79 + 1)) ^ ((0xC6A4A7935BD1E995 * *(v79 + 1)) >> 47))));
                v80 = v79 + 32;
                v79 += 16;
              }

              while (v80 <= v78);
            }

            if ((v79 + 8) <= v78)
            {
              do
              {
                v77 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v79) ^ ((0xC6A4A7935BD1E995 * *v79) >> 47))) ^ v77);
                v81 = (v79 + 16) > v78;
                v79 += 8;
              }

              while (!v81);
            }

            if (v79 >= v78)
            {
              v87 = v59;
              v86 = &objc_alloc_ptr;
            }

            else
            {
              v82 = 0;
              v83 = 0;
              v84 = &v68[v69] - v79;
              do
              {
                v85 = *v79++;
                v83 |= v85 << v82;
                v82 += 8;
                --v84;
              }

              while (v84);
              v86 = &objc_alloc_ptr;
              v87 = v59;
              if (v82)
              {
                v77 = 0xC6A4A7935BD1E995 * (v83 ^ v77);
              }
            }

            v88 = (0xC6A4A7935BD1E995 * (v77 ^ (v77 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v77 ^ (v77 >> 47))) >> 47);
            v89 = [v86[43] numberWithUnsignedLongLong:v88];
            v90 = [v186 objectForKeyedSubscript:v89];

            if (v90)
            {
              [v186 removeAllObjects];
              v59 = 0;
              goto LABEL_87;
            }

            v91 = [v86[43] numberWithUnsignedLongLong:v88];
            [v186 setObject:v66 forKeyedSubscript:v91];

            if ([v66 value] == 1)
            {
              v59 = v87 + 1;
            }

            else
            {
              v59 = v87;
            }

            v64 = obja;
            v62 = __nelb;
          }

          else
          {
            sub_100001934(v69, v70, v71, v72, v73, v74, v75, v76, v68);
            ++v63;
          }

          v65 = v65 + 1;
        }

        while (v65 != v62);
        v62 = [v192 countByEnumeratingWithState:&v216 objects:v215 count:16];
        if (v62)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v63 = 0;
    }

LABEL_87:

    v92 = [v186 count] + v63;
    if (v92 == [v192 count])
    {
      break;
    }

    v60 = contexta + 1;
  }

  while (contexta != 9);
  v93 = [v186 count] + v63;
  if (v93 != [v192 count])
  {
    sub_1000019AC(@"hash collision retry reached", v94, v95, v96, v97, v98, v99, v100, v175);
  }

  v101 = malloc_type_malloc(8 * v59 + 32, 0x1000040E0EAB150uLL);
  if (!v101)
  {
    v176 = *__error();
    sub_1000019AC(@"could not malloc(%zu): %d", v128, v129, v130, v131, v132, v133, v134, 8 * v59 + 32);
  }

  v102 = v101;
  contextb = (8 * v59 + 32);
  objb = v59;
  v103 = v204;
  *v101 = v203;
  v101[1] = v103;
  *(v101 + 2) = v59;
  if (dword_100008154 >= 1)
  {
    fprintf(__stderrp, "Generating hash table with %zu enabled features of %lu known\n", v59, [v186 count]);
  }

  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  v104 = v186;
  v105 = [v104 countByEnumeratingWithState:&v211 objects:&v207 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = 0;
    v108 = *v212;
    do
    {
      for (k = 0; k != v106; k = k + 1)
      {
        if (*v212 != v108)
        {
          objc_enumerationMutation(v104);
        }

        v110 = *(*(&v211 + 1) + 8 * k);
        v111 = [v104 objectForKeyedSubscript:v110];
        if ([v111 value] == 1)
        {
          v102[v107++ + 4] = [v110 unsignedLongLongValue];
        }
      }

      v106 = [v104 countByEnumeratingWithState:&v211 objects:&v207 count:16];
    }

    while (v106);
  }

  qsort_b(v102 + 4, v59, 8uLL, &stru_1000041B0);
  v112 = *(&v204 + 1) ^ (0x35253C9ADE8F4CA8 * v59);
  v113 = &v102[objb + 4];
  if (objb >= 2)
  {
    v116 = v102 + 4;
    v115 = &OBJC_CATEGORY_FFFeatureState___Name;
    do
    {
      v112 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v116) ^ ((0xC6A4A7935BD1E995 * *v116) >> 47))) ^ v112)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v116[1]) ^ ((0xC6A4A7935BD1E995 * v116[1]) >> 47))));
      v114 = (v116 + 2);
      v117 = v116 + 4;
      v116 += 2;
    }

    while (v117 <= v113);
  }

  else
  {
    v114 = (v102 + 4);
    v115 = &OBJC_CATEGORY_FFFeatureState___Name;
  }

  if ((v114 + 8) <= v113)
  {
    do
    {
      v118 = v114 + 8;
      v112 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v114) ^ ((0xC6A4A7935BD1E995 * *v114) >> 47))) ^ v112);
      v81 = (v114 + 16) > v113;
      v114 += 8;
    }

    while (!v81);
  }

  else
  {
    v118 = v114;
  }

  if (v118 < v113)
  {
    v119 = 0;
    v120 = 0;
    v121 = &v102[objb + 4] - v118;
    do
    {
      v122 = *v118++;
      v120 |= v122 << v119;
      v119 += 8;
      --v121;
    }

    while (v121);
    if (v119)
    {
      v112 = 0xC6A4A7935BD1E995 * (v120 ^ v112);
    }
  }

  v102[1] = (0xC6A4A7935BD1E995 * (v112 ^ (v112 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v112 ^ (v112 >> 47))) >> 47);

  if ((v115[7].name & 1) == 0)
  {
    v123 = shm_open("com.apple.featureflags.shm", 2562, 420);
    if (v123 < 0)
    {
      v135 = __error();
      sub_1000019AC(@"shm_open failed: %d", v136, v137, v138, v139, v140, v141, v142, *v135);
    }

    v124 = v123;
    if (ftruncate(v123, contextb) == -1)
    {
      v143 = __error();
      sub_1000019AC(@"failed to size shared memory: %d", v144, v145, v146, v147, v148, v149, v150, *v143);
    }

    v125 = mmap(0, contextb, 3, 1, v124, 0);
    if (v125 == -1)
    {
      v151 = __error();
      sub_1000019AC(@"failed to mmap shared memory: %d", v152, v153, v154, v155, v156, v157, v158, *v151);
    }

    v126 = v125;
    memcpy(v125, v102, contextb);
    if (munmap(v126, contextb) == -1)
    {
      v159 = __error();
      sub_1000019AC(@"failed to unmap shared memory: %d", v160, v161, v162, v163, v164, v165, v166, *v159);
    }

    if (close(v124) == -1)
    {
      v167 = __error();
      sub_1000019AC(@"failed to close shared memory descriptor: %d", v168, v169, v170, v171, v172, v173, v174, *v167);
    }
  }

  objc_autoreleasePoolPop(v177);
  return 0;
}

void sub_1000018AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  fprintf(__stderrp, "init_featureflags: %s\n", [v10 UTF8String]);
}

void sub_100001934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [[NSString alloc] initWithFormat:@"feature name is too long: %s - ignored" arguments:&a9];
  fprintf(__stderrp, "init_featureflags: %s\n", [v9 UTF8String]);
}

void sub_1000019AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  fprintf(__stderrp, "init_featureflags: %s\n", [v9 UTF8String]);
  abort();
}

int sub_100001A14(id a1, const void *a2, const void *a3)
{
  if (*a2 == *a3)
  {
    sub_1000019AC(@"duplicate hash found in table: 0x%llx", a2, a3, v3, v4, v5, v6, v7, *a2);
  }

  if (*a2 < *a3)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}