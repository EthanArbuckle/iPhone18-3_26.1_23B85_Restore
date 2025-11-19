@interface NPTOLibraryChanges
- (id)_initWithMasterLibrary:(id)a3 clientLibrary:(id)a4 excludedAssets:(id)a5;
@end

@implementation NPTOLibraryChanges

- (id)_initWithMasterLibrary:(id)a3 clientLibrary:(id)a4 excludedAssets:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v224.receiver = self;
  v224.super_class = NPTOLibraryChanges;
  v12 = [(NPTOLibraryChanges *)&v224 init];
  v13 = v12;
  if (v12)
  {
    v181 = v11;
    v182 = v10;
    v183 = v9;
    objc_storeStrong(&v12->_masterLibrary, a3);
    objc_storeStrong(&v13->_clientLibrary, a4);
    objc_storeStrong(&v13->_excludedAssets, a5);
    v14 = +[NSMutableDictionary dictionary];
    v15 = [(NPTOLibrary *)v13->_masterLibrary assets];
    v222[0] = _NSConcreteStackBlock;
    v222[1] = 3221225472;
    v222[2] = sub_10005FB74;
    v222[3] = &unk_10008B858;
    v16 = v14;
    v223 = v16;
    [v15 enumerateObjectsUsingBlock:v222];

    v17 = objc_autoreleasePoolPush();
    v18 = sub_100052768();
    v186 = v13;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 allValues];
      v20 = [v19 count];
      v21 = [v16 allValues];
      v22 = [v16 allValues];
      v23 = [v22 count];

      if (v23 >= 0x3E8)
      {
        v24 = 1000;
      }

      else
      {
        v24 = v23;
      }

      v25 = [v21 subarrayWithRange:{0, v24}];
      v26 = [v25 valueForKeyPath:@"uuidData.npto_uuid"];
      *buf = 138412802;
      v226 = @"Master assets";
      v227 = 2048;
      v228 = v20;
      v229 = 2112;
      v230 = v26;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);

      v13 = v186;
    }

    objc_autoreleasePoolPop(v17);
    v27 = +[NSMutableDictionary dictionary];
    v28 = [(NPTOLibrary *)v13->_clientLibrary assets];
    v220[0] = _NSConcreteStackBlock;
    v220[1] = 3221225472;
    v220[2] = sub_10005FBF0;
    v220[3] = &unk_10008B858;
    v29 = v27;
    v221 = v29;
    [v28 enumerateObjectsUsingBlock:v220];

    v30 = objc_autoreleasePoolPush();
    v31 = sub_100052768();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v29 allValues];
      v33 = [v32 count];
      v34 = [v29 allValues];
      v35 = [v29 allValues];
      v36 = [v35 count];

      if (v36 >= 0x3E8)
      {
        v37 = 1000;
      }

      else
      {
        v37 = v36;
      }

      v38 = [v34 subarrayWithRange:{0, v37}];
      v39 = [v38 valueForKeyPath:@"uuidData.npto_uuid"];
      *buf = 138412802;
      v226 = @"Client assets";
      v227 = 2048;
      v228 = v33;
      v229 = 2112;
      v230 = v39;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);

      v13 = v186;
    }

    objc_autoreleasePoolPop(v30);
    v40 = +[NSMutableArray array];
    v41 = [(NPTOLibrary *)v13->_clientLibrary assets];
    v217[0] = _NSConcreteStackBlock;
    v217[1] = 3221225472;
    v217[2] = sub_10005FC6C;
    v217[3] = &unk_10008B880;
    v175 = v16;
    v218 = v175;
    v42 = v40;
    v219 = v42;
    [v41 enumerateObjectsUsingBlock:v217];

    v43 = objc_autoreleasePoolPush();
    v44 = sub_100052768();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [v42 count];
      v46 = [v42 count];
      if (v46 >= 0x3E8)
      {
        v47 = 1000;
      }

      else
      {
        v47 = v46;
      }

      v48 = [v42 subarrayWithRange:{0, v47}];
      v49 = [v48 valueForKeyPath:@"uuidData.npto_uuid"];
      *buf = 138412802;
      v226 = @"Deleted assets";
      v227 = 2048;
      v228 = v45;
      v229 = 2112;
      v230 = v49;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v43);
    v180 = v42;
    v50 = [v42 copy];
    deletedAssets = v13->_deletedAssets;
    v13->_deletedAssets = v50;

    v52 = +[NSMutableArray array];
    v53 = [(NPTOLibrary *)v13->_masterLibrary assets];
    v213[0] = _NSConcreteStackBlock;
    v213[1] = 3221225472;
    v213[2] = sub_10005FD00;
    v213[3] = &unk_10008B8A8;
    v54 = v29;
    v214 = v54;
    v55 = v13;
    v215 = v55;
    v56 = v52;
    v216 = v56;
    [v53 enumerateObjectsUsingBlock:v213];

    v57 = objc_autoreleasePoolPush();
    v58 = sub_100052768();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = [v56 count];
      v60 = [v56 count];
      if (v60 >= 0x3E8)
      {
        v61 = 1000;
      }

      else
      {
        v61 = v60;
      }

      v62 = [v56 subarrayWithRange:{0, v61}];
      v63 = [v62 valueForKeyPath:@"uuidData.npto_uuid"];
      *buf = 138412802;
      v226 = @"Updated assets";
      v227 = 2048;
      v228 = v59;
      v229 = 2112;
      v230 = v63;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);

      v13 = v186;
    }

    objc_autoreleasePoolPop(v57);
    v64 = [v56 copy];
    updatedAssets = v55->_updatedAssets;
    v55->_updatedAssets = v64;

    v66 = +[NSMutableArray array];
    v67 = [(NPTOLibrary *)v13->_masterLibrary assets];
    v209[0] = _NSConcreteStackBlock;
    v209[1] = 3221225472;
    v209[2] = sub_10005FDF0;
    v209[3] = &unk_10008B8A8;
    v173 = v54;
    v210 = v173;
    v184 = v55;
    v211 = v184;
    v68 = v66;
    v212 = v68;
    [v67 enumerateObjectsUsingBlock:v209];

    v69 = objc_autoreleasePoolPush();
    v70 = sub_100052768();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [v68 count];
      v72 = [v68 count];
      if (v72 >= 0x3E8)
      {
        v73 = 1000;
      }

      else
      {
        v73 = v72;
      }

      v74 = [v68 subarrayWithRange:{0, v73}];
      v75 = [v74 valueForKeyPath:@"uuidData.npto_uuid"];
      *buf = 138412802;
      v226 = @"Inserted assets";
      v227 = 2048;
      v228 = v71;
      v229 = 2112;
      v230 = v75;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);
    }

    v179 = v56;

    objc_autoreleasePoolPop(v69);
    v178 = v68;
    v76 = [v68 copy];
    insertedAssets = v184->_insertedAssets;
    v184->_insertedAssets = v76;

    v78 = objc_autoreleasePoolPush();
    v79 = sub_100052768();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = [(NSSet *)v13->_excludedAssets allObjects];
      v81 = [v80 count];
      v82 = [(NSSet *)v13->_excludedAssets allObjects];
      v83 = [(NSSet *)v13->_excludedAssets allObjects];
      v84 = [v83 count];

      if (v84 >= 0x3E8)
      {
        v85 = 1000;
      }

      else
      {
        v85 = v84;
      }

      v86 = [v82 subarrayWithRange:{0, v85}];
      v87 = [v86 valueForKeyPath:@"uuidData.npto_uuid"];
      *buf = 138412802;
      v226 = @"Excluded assets";
      v227 = 2048;
      v228 = v81;
      v229 = 2112;
      v230 = v87;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v78);
    v88 = +[NSMutableDictionary dictionary];
    v89 = [(NPTOLibrary *)v13->_masterLibrary assetCollections];
    v207[0] = _NSConcreteStackBlock;
    v207[1] = 3221225472;
    v207[2] = sub_10005FE98;
    v207[3] = &unk_10008B8D0;
    v90 = v88;
    v208 = v90;
    [v89 enumerateObjectsUsingBlock:v207];

    v91 = objc_autoreleasePoolPush();
    v92 = sub_100052768();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      v93 = [v90 allValues];
      v94 = [v93 count];
      v95 = [v90 allValues];
      v96 = [v90 allValues];
      v97 = [v96 count];

      if (v97 >= 0x3E8)
      {
        v98 = 1000;
      }

      else
      {
        v98 = v97;
      }

      v99 = [v95 subarrayWithRange:{0, v98}];
      v100 = [v99 valueForKeyPath:@"uuidData.npto_uuid"];
      *buf = 138412802;
      v226 = @"Master asset collections";
      v227 = 2048;
      v228 = v94;
      v229 = 2112;
      v230 = v100;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);

      v13 = v186;
    }

    objc_autoreleasePoolPop(v91);
    v101 = +[NSMutableDictionary dictionary];
    v102 = [(NPTOLibrary *)v13->_clientLibrary assetCollections];
    v205[0] = _NSConcreteStackBlock;
    v205[1] = 3221225472;
    v205[2] = sub_10005FF14;
    v205[3] = &unk_10008B8D0;
    v103 = v101;
    v206 = v103;
    [v102 enumerateObjectsUsingBlock:v205];

    v104 = objc_autoreleasePoolPush();
    v105 = sub_100052768();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      v106 = [v103 allValues];
      v107 = [v106 count];
      v108 = [v103 allValues];
      v109 = [v103 allValues];
      v110 = [v109 count];

      if (v110 >= 0x3E8)
      {
        v111 = 1000;
      }

      else
      {
        v111 = v110;
      }

      v112 = [v108 subarrayWithRange:{0, v111}];
      v113 = [v112 valueForKeyPath:@"uuidData.npto_uuid"];
      *buf = 138412802;
      v226 = @"Client asset collections";
      v227 = 2048;
      v228 = v107;
      v229 = 2112;
      v230 = v113;
      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);

      v13 = v186;
    }

    objc_autoreleasePoolPop(v104);
    v114 = +[NSMutableArray array];
    v115 = [(NPTOLibrary *)v13->_clientLibrary assetCollections];
    v202[0] = _NSConcreteStackBlock;
    v202[1] = 3221225472;
    v202[2] = sub_10005FF90;
    v202[3] = &unk_10008B8F8;
    v172 = v90;
    v203 = v172;
    v116 = v114;
    v204 = v116;
    [v115 enumerateObjectsUsingBlock:v202];

    v117 = objc_autoreleasePoolPush();
    v118 = sub_100052768();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      v119 = [v116 count];
      v120 = [v116 count];
      if (v120 >= 0x3E8)
      {
        v121 = 1000;
      }

      else
      {
        v121 = v120;
      }

      v122 = [v116 subarrayWithRange:{0, v121}];
      v123 = [v122 valueForKeyPath:@"uuidData.npto_uuid"];
      *buf = 138412802;
      v226 = @"Deleted asset collections";
      v227 = 2048;
      v228 = v119;
      v229 = 2112;
      v230 = v123;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v117);
    v171 = v116;
    v124 = [v116 copy];
    deletedAssetCollections = v184->_deletedAssetCollections;
    v184->_deletedAssetCollections = v124;

    v126 = +[NSMapTable strongToStrongObjectsMapTable];
    v127 = +[NSMapTable strongToStrongObjectsMapTable];
    v128 = +[NSMutableArray array];
    v129 = [(NPTOLibrary *)v13->_masterLibrary assetCollections];
    v194[0] = _NSConcreteStackBlock;
    v194[1] = 3221225472;
    v194[2] = sub_100060024;
    v194[3] = &unk_10008B920;
    v130 = v103;
    v195 = v130;
    v131 = v184;
    v196 = v131;
    v132 = v173;
    v197 = v132;
    v133 = v175;
    v198 = v133;
    v134 = v128;
    v199 = v134;
    v185 = v126;
    v200 = v185;
    v135 = v127;
    v201 = v135;
    [v129 enumerateObjectsUsingBlock:v194];

    v136 = objc_autoreleasePoolPush();
    v137 = sub_100052768();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      v138 = [v134 count];
      v139 = [v134 count];
      if (v139 >= 0x3E8)
      {
        v140 = 1000;
      }

      else
      {
        v140 = v139;
      }

      v141 = [v134 subarrayWithRange:{0, v140}];
      [v141 valueForKeyPath:@"uuidData.npto_uuid"];
      v176 = v135;
      v142 = v130;
      v143 = v132;
      v144 = v133;
      v146 = v145 = v134;
      *buf = 138412802;
      v226 = @"Updated asset collections";
      v227 = 2048;
      v228 = v138;
      v229 = 2112;
      v230 = v146;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);

      v134 = v145;
      v133 = v144;
      v132 = v143;
      v130 = v142;
      v135 = v176;
    }

    objc_autoreleasePoolPop(v136);
    v147 = [v134 copy];
    updatedAssetCollections = v131->_updatedAssetCollections;
    v131->_updatedAssetCollections = v147;

    v149 = +[NSMutableArray array];
    v150 = [(NPTOLibrary *)v186->_masterLibrary assetCollections];
    v187[0] = _NSConcreteStackBlock;
    v187[1] = 3221225472;
    v187[2] = sub_10006043C;
    v187[3] = &unk_10008B948;
    v177 = v130;
    v188 = v177;
    v151 = v149;
    v189 = v151;
    v152 = v131;
    v190 = v152;
    v153 = v132;
    v191 = v153;
    v154 = v133;
    v192 = v154;
    v155 = v135;
    v193 = v155;
    [v150 enumerateObjectsUsingBlock:v187];

    v156 = objc_autoreleasePoolPush();
    v157 = sub_100052768();
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
    {
      v158 = v154;
      v159 = [v151 count];
      v160 = [v151 count];
      if (v160 >= 0x3E8)
      {
        v161 = 1000;
      }

      else
      {
        v161 = v160;
      }

      [v151 subarrayWithRange:{0, v161}];
      v162 = v174 = v134;
      v163 = [v162 valueForKeyPath:@"uuidData.npto_uuid"];
      *buf = 138412802;
      v226 = @"Inserted asset collections";
      v227 = 2048;
      v228 = v159;
      v154 = v158;
      v229 = 2112;
      v230 = v163;
      _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "%@ (%lu):\n%@", buf, 0x20u);

      v134 = v174;
    }

    objc_autoreleasePoolPop(v156);
    v164 = [v151 copy];
    insertedAssetCollections = v152->_insertedAssetCollections;
    v152->_insertedAssetCollections = v164;

    removedAssetCollectionAssets = v152->_removedAssetCollectionAssets;
    v152->_removedAssetCollectionAssets = v185;
    v167 = v185;

    addedAssetCollectionAssets = v152->_addedAssetCollectionAssets;
    v152->_addedAssetCollectionAssets = v155;
    v169 = v155;

    v10 = v182;
    v9 = v183;
    v13 = v186;
    v11 = v181;
  }

  return v13;
}

@end