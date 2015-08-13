//Maya ASCII 2016 scene
//Name: boat1.ma
//Last modified: Thu, Aug 06, 2015 02:04:08 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201506101600-962028";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "CA76DDDA-40CE-1224-61E7-44B4AF6E6811";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 22.826002578636761 17.2974595686849 37.724041703090677 ;
	setAttr ".r" -type "double3" -18.938352780288671 -3211.3999999999401 9.056424698653592e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DC6CE60B-41F0-0CC8-8938-C4A6D4E613B7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 44.821869662029926;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5DF37185-4003-9751-B62F-8388F66CA135";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B0C63534-4781-59EE-613E-429AC1473DB6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "44916BE5-4B2A-BDD7-A120-EA8EE1A34C52";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "881BB657-42BE-70FE-7896-85A696C09896";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "235690EA-46E6-B28C-317F-D9815485E64C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1BEEBE4E-4A0D-B397-0365-08BC36AE437C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "boat";
	rename -uid "808ED761-44F2-59F1-1D12-F2BDCF1D697B";
	setAttr ".t" -type "double3" 0 0.9425207574029586 0 ;
	setAttr ".s" -type "double3" 6.1746113427498095 1.3990794713208032 1.9488615829619862 ;
createNode mesh -n "boatShape" -p "boat";
	rename -uid "DCC57BC8-462E-31BB-FBE1-7796C812B7A5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.40000000596046448 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[346]" -type "float3" -1.3387762e-009 2.9802322e-008 -7.4505806e-009 ;
	setAttr ".pt[347]" -type "float3" 5.0640665e-009 2.9802322e-008 -7.4505806e-009 ;
	setAttr ".pt[348]" -type "float3" 5.0640665e-009 2.9802322e-008 7.4505806e-009 ;
	setAttr ".pt[349]" -type "float3" -1.3387762e-009 2.9802322e-008 7.4505806e-009 ;
	setAttr ".pt[356]" -type "float3" -1.3387762e-009 -2.9802322e-008 -7.4505806e-009 ;
	setAttr ".pt[357]" -type "float3" 5.0640665e-009 -2.9802322e-008 -7.4505806e-009 ;
	setAttr ".pt[358]" -type "float3" 5.0640665e-009 -2.9802322e-008 7.4505806e-009 ;
	setAttr ".pt[359]" -type "float3" -1.3387762e-009 -2.9802322e-008 7.4505806e-009 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "EC17E19E-42DE-10F0-1916-FB975EEB97A1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "B029A77E-422C-2231-6E43-C092461407DC";
createNode displayLayer -n "defaultLayer";
	rename -uid "4A4F5107-4C8D-5705-6E0A-A2B6BFFAF843";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D091BC4B-4901-64F0-A6BC-D99177522187";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5AB26536-418D-FBFE-9123-07AC4F51FAFD";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "41E56743-4F65-D417-254F-E18FE895CB83";
	setAttr ".sw" 5;
	setAttr ".sh" 5;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "08896EF9-451B-E8F7-E92C-FFB1DF2FEA93";
	setAttr ".ics" -type "componentList" 5 "f[101:103]" "f[106:108]" "f[111:113]" "f[116:118]" "f[121:123]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.9488615829619862 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.0873058 0.94252074 0 ;
	setAttr ".rs" 32827;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.0873056713749047 -0.031910034078034499 -0.58465849812083637 ;
	setAttr ".cbx" -type "double3" 3.0873056713749047 1.9169515488839517 0.58465849812083637 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "BA8DF50E-4A3E-51B6-97B6-8B8740AF3160";
	setAttr ".ics" -type "componentList" 10 "f[101:103]" "f[106:108]" "f[111:113]" "f[116:118]" "f[121:123]" "f[126:128]" "f[131:133]" "f[136:138]" "f[141:143]" "f[146:148]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.9488615829619862 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.94252074 0 ;
	setAttr ".rs" 43398;
	setAttr ".lt" -type "double3" -2.7487138898378683e-016 -9.1114953457045765e-018 
		1.512089314997807 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.0873056713749047 -0.031910034078034499 -0.58465849812083637 ;
	setAttr ".cbx" -type "double3" 3.0873056713749047 1.9169515488839517 0.58465849812083637 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "FA83F860-4999-9B17-CACC-6C94234EFD4B";
	setAttr ".ics" -type "componentList" 5 "f[102]" "f[107]" "f[112]" "f[117]" "f[122]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.9488615829619862 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.5993953 0.94252068 0 ;
	setAttr ".rs" 39369;
	setAttr ".lt" -type "double3" -2.5972191032198093e-016 -2.3288539636137559e-017 
		1.1696834888015761 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.599395045163976 -0.031910034078034499 -0.19488617572037897 ;
	setAttr ".cbx" -type "double3" 4.599395045163976 1.9169514327227493 0.19488617572037897 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "9328ADA6-4050-7397-3A57-C69F0756BBDA";
	setAttr ".ics" -type "componentList" 3 "f[80:94]" "f[168]" "f[184]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.9488615829619862 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.049086738 -0.11369565 2.9040301e-008 ;
	setAttr ".rs" 59970;
	setAttr ".lt" -type "double3" 0 -7.5708211977970596e-017 0.3409594752528749 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.0345164427139384 -0.11369565182987396 -0.9559426325925674 ;
	setAttr ".cbx" -type "double3" 4.9363429688981091 -0.11369565182987396 0.9559426906731685 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "3A623C73-40F2-C9CD-4D22-FF8B7520C1A4";
	setAttr ".uopa" yes;
	setAttr -s 212 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -0.049915604 -0.041965842 0.31752226
		 -0.033129267 -0.041965842 0.31752226 -0.016342932 -0.041965842 0.31752226 0.00044339636
		 -0.041965842 0.31752226 0.017229727 -0.041965842 0.31752226 0.034016054 -0.041965842
		 0.31752226 -0.049915604 -0.025179505 0.31752226 -0.033129267 -0.025179505 0.31752226
		 -0.016342932 -0.025179505 0.31752226 0.00044339636 -0.025179505 0.31752226 0.017229727
		 -0.025179505 0.31752226 0.034016054 -0.025179505 0.31752226 -0.049915604 -0.0083931684
		 0.31752226 -0.033129267 -0.0083931684 0.31752226 -0.016342932 -0.0083931684 0.31752226
		 0.00044339636 -0.0083931684 0.31752226 0.017229727 -0.0083931684 0.31752226 0.034016054
		 -0.0083931684 0.31752226 -0.049915604 0.0083931684 0.31752226 -0.033129267 0.0083931684
		 0.31752226 -0.016342932 0.0083931684 0.31752226 0.00044339636 0.0083931684 0.31752226
		 0.017229727 0.0083931684 0.31752226 0.034016054 0.0083931684 0.31752226 -0.049915604
		 0.025179505 0.31752226 -0.033129267 0.025179505 0.31752226 -0.016342932 0.025179505
		 0.31752226 0.00044339636 0.025179505 0.31752226 0.017229727 0.025179505 0.31752226
		 0.034016054 0.025179505 0.31752226 -0.049915604 0.041965842 0.31752226 -0.033129267
		 0.041965842 0.31752226 -0.016342932 0.041965842 0.31752226 0.00044339636 0.041965842
		 0.31752226 0.017229727 0.041965842 0.31752226 0.034016054 0.041965842 0.31752226
		 -0.049915627 0.041965842 0.19051337 -0.033129267 0.041965842 0.19051334 -0.016342932
		 0.041965842 0.19051334 0.00044339636 0.041965842 0.19051334 0.017229727 0.041965842
		 0.19051334 0.034016054 0.041965842 0.19051334 -0.049915604 0.041965842 0.063504457
		 -0.033129267 0.041965842 0.063504457 -0.016342932 0.041965842 0.063504457 0.00044339636
		 0.041965842 0.063504457 0.017229727 0.041965842 0.063504457 0.034016054 0.041965842
		 0.063504457 -0.049915604 0.041965842 -0.06350445 -0.033129267 0.041965842 -0.06350445
		 -0.016342932 0.041965842 -0.06350445 0.00044339636 0.041965842 -0.06350445 0.017229727
		 0.041965842 -0.06350445 0.034016054 0.041965842 -0.06350445 -0.049915627 0.041965842
		 -0.19051331 -0.033129267 0.041965842 -0.19051334 -0.016342932 0.041965842 -0.19051334
		 0.00044339636 0.041965842 -0.19051334 0.017229727 0.041965842 -0.19051334 0.034016054
		 0.041965842 -0.19051334 -0.049915604 0.041965842 -0.31752226 -0.033129267 0.041965842
		 -0.31752226 -0.016342932 0.041965842 -0.31752226 0.00044339636 0.041965842 -0.31752226
		 0.017229727 0.041965842 -0.31752226 0.034016054 0.041965842 -0.31752226 -0.049915604
		 0.025179505 -0.31752226 -0.033129267 0.025179505 -0.31752226 -0.016342932 0.025179505
		 -0.31752226 0.00044339636 0.025179505 -0.31752226 0.017229727 0.025179505 -0.31752226
		 0.034016054 0.025179505 -0.31752226 -0.049915604 0.0083931684 -0.31752226 -0.033129267
		 0.0083931684 -0.31752226 -0.016342932 0.0083931684 -0.31752226 0.00044339636 0.0083931684
		 -0.31752226 0.017229727 0.0083931684 -0.31752226 0.034016054 0.0083931684 -0.31752226
		 -0.049915604 -0.0083931684 -0.31752226 -0.033129267 -0.0083931684 -0.31752226 -0.016342932
		 -0.0083931684 -0.31752226 0.00044339636 -0.0083931684 -0.31752226 0.017229727 -0.0083931684
		 -0.31752226 0.034016054 -0.0083931684 -0.31752226 -0.049915604 -0.025179505 -0.31752226
		 -0.033129267 -0.025179505 -0.31752226 -0.016342932 -0.025179505 -0.31752226 0.00044339636
		 -0.025179505 -0.31752226 0.017229727 -0.025179505 -0.31752226 0.034016054 -0.025179505
		 -0.31752226 -0.049915604 -0.041965842 -0.31752226 -0.033129267 -0.041965842 -0.31752226
		 -0.016342932 -0.041965842 -0.31752226 0.00044339636 -0.041965842 -0.31752226 0.017229727
		 -0.041965842 -0.31752226 0.034016054 -0.041965842 -0.31752226 -0.049915627 -0.041965842
		 -0.19051331 -0.033129267 -0.041965842 -0.19051334 -0.016342932 -0.041965842 -0.19051334
		 0.00044339636 -0.041965842 -0.19051334 0.017229727 -0.041965842 -0.19051334 0.034016054
		 -0.041965842 -0.19051334 -0.049915604 -0.041965842 -0.063504457 -0.033129267 -0.041965842
		 -0.063504457 -0.016342932 -0.041965842 -0.063504457 0.00044339636 -0.041965842 -0.063504457
		 0.017229727 -0.041965842 -0.063504457 0.034016054 -0.041965842 -0.063504457 -0.049915604
		 -0.041965842 0.06350445 -0.033129267 -0.041965842 0.06350445 -0.016342932 -0.041965842
		 0.06350445 0.00044339636 -0.041965842 0.06350445 0.017229727 -0.041965842 0.06350445
		 0.034016054 -0.041965842 0.06350445 -0.049915627 -0.041965842 0.19051337 -0.033129267
		 -0.041965842 0.19051334 -0.016342932 -0.041965842 0.19051334 0.00044339636 -0.041965842
		 0.19051334 0.017229727 -0.041965842 0.19051334 0.034016054 -0.041965842 0.19051334
		 0.034016054 -0.025179505 -0.19051334 0.034016054 -0.025179505 0.19051334 0.034016054
		 -0.0083931684 -0.19051334 0.034016054 -0.0083931684 0.19051334 0.034016054 0.0083931684
		 -0.19051334 0.034016054 0.0083931684 0.19051334 0.034016054 0.025179505 -0.19051334
		 0.034016054 0.025179505 0.19051334 -0.049915627 -0.025179505 -0.19051331 -0.049915627
		 -0.025179505 0.19051337 -0.049915627 -0.0083931684 -0.19051331 -0.049915627 -0.0083931684
		 0.19051337 -0.049915627 0.0083931684 -0.19051331 -0.049915627 0.0083931684 0.19051337
		 -0.049915627 0.025179505 -0.19051331 -0.049915627 0.025179505 0.19051337 0.034016054
		 -0.041965842 -0.19051334 0.034016054 -0.041965842 -0.063504457 0.034016054 -0.025179505
		 -0.19051334 0.034016054 -0.041965842 0.06350445 0.034016054 -0.041965842 0.19051334
		 0.034016054 -0.025179505 0.19051334 0.034016054 -0.0083931684 -0.19051334 0.034016054
		 -0.0083931684 0.19051334 0.034016054 0.0083931684 -0.19051334 0.034016054 0.0083931684
		 0.19051334 0.034016054 0.025179505 -0.19051334 0.034016054 0.025179505 0.19051334
		 0.034016054 0.041965842 -0.19051334 0.034016054 0.041965842 -0.06350445 0.034016054
		 0.041965842 0.063504457 0.034016054 0.041965842 0.19051334 0.054569915 -0.041965842
		 -0.19051334 0.054569915 -0.041965842 -0.063504457 0.054569915 -0.025179505 -0.19051334
		 0.054569915 -0.025179505 -0.063504457 0.054569915 -0.041965842 0.06350445 0.054569915
		 -0.025179505 0.06350445 0.054569915 -0.041965842 0.19051334 0.054569915 -0.025179505
		 0.19051334 0.054569915 -0.0083931684 -0.19051334 0.054569915 -0.0083931684 -0.063504457
		 0.054569915 -0.0083931684 0.06350445 0.054569915 -0.0083931684 0.19051334 0.054569915
		 0.0083931684 -0.19051334 0.054569915 0.0083931684 -0.063504457;
	setAttr ".tk[166:211]" 0.054569915 0.0083931684 0.06350445 0.054569915 0.0083931684
		 0.19051334 0.054569915 0.025179505 -0.19051334 0.054569915 0.025179505 -0.063504457
		 0.054569915 0.025179505 0.06350445 0.054569915 0.025179505 0.19051334 0.054569915
		 0.041965842 -0.19051334 0.054569915 0.041965842 -0.06350445 0.054569915 0.041965842
		 0.063504457 0.054569915 0.041965842 0.19051334 -0.070469461 -0.041965842 -0.19051334
		 -0.070469461 -0.041965842 -0.063504457 -0.070469461 -0.025179505 -0.063504457 -0.070469461
		 -0.025179505 -0.19051334 -0.070469461 -0.041965842 0.06350445 -0.070469461 -0.025179505
		 0.06350445 -0.070469461 -0.041965842 0.19051334 -0.070469461 -0.025179505 0.19051334
		 -0.070469461 -0.0083931684 -0.063504457 -0.070469461 -0.0083931684 -0.19051334 -0.070469461
		 -0.0083931684 0.06350445 -0.070469461 -0.0083931684 0.19051334 -0.070469461 0.0083931684
		 -0.063504457 -0.070469461 0.0083931684 -0.19051334 -0.070469461 0.0083931684 0.06350445
		 -0.070469461 0.0083931684 0.19051334 -0.070469461 0.025179505 -0.063504457 -0.070469461
		 0.025179505 -0.19051334 -0.070469461 0.025179505 0.06350445 -0.070469461 0.025179505
		 0.19051334 -0.070469461 0.041965842 -0.06350445 -0.070469461 0.041965842 -0.19051334
		 -0.070469461 0.041965842 0.063504457 -0.070469461 0.041965842 0.19051334 0.070469461
		 -0.041965842 -0.063504457 0.070469461 -0.041965842 0.06350445 0.070469461 -0.025179505
		 -0.063504457 0.070469461 -0.025179505 0.06350445 0.070469461 -0.0083931684 -0.063504457
		 0.070469461 -0.0083931684 0.06350445 0.070469461 0.0083931684 -0.063504457 0.070469461
		 0.0083931684 0.06350445 0.070469461 0.025179505 -0.063504457 0.070469461 0.025179505
		 0.06350445 0.070469461 0.041965842 -0.06350445 0.070469461 0.041965842 0.063504457;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "06DFD9EF-4288-9FD5-FE54-5B9823E0817B";
	setAttr ".ics" -type "componentList" 1 "f[85:89]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.9488615829619862 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.049086738 -0.45465502 -1.452015e-008 ;
	setAttr ".rs" 32778;
	setAttr ".lt" -type "double3" 0 -1.8418261552746799e-024 0.37395685250547228 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.3955151738292519 -0.45465503321419787 -0.31864754419752245 ;
	setAttr ".cbx" -type "double3" 3.2973417000134226 -0.45465503321419787 0.31864751515722184 ;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "F9DE8CDD-4E11-84D3-4B56-018F4E542438";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[315:316]" "e[319]" "e[322]" "e[326]" "e[328]" "e[332]" "e[337]" "e[341]" "e[346]" "e[350]" "e[355]" "e[358]" "e[360]" "e[363]" "e[366]" "e[448]" "e[451]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.9488615829619862 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".wt" 0.51377993822097778;
	setAttr ".re" 358;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "20A58CF9-4479-EA4C-7F95-78B0DD1B1497";
	setAttr ".uopa" yes;
	setAttr -s 246 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0;
	setAttr ".tk[166:245]" 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404
		 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0 0 1.30055404 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "F345F92F-41B9-8169-29EC-D2AD3308C811";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[490]" "e[492]" "e[494]" "e[496]" "e[498]" "e[500]" "e[502]" "e[504]" "e[506]" "e[508]" "e[510]" "e[512]" "e[514]" "e[516]" "e[518]" "e[520]" "e[522:523]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.9488615829619862 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.2376013 3.3066409 5.8080602e-008 ;
	setAttr ".rs" 34344;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.2376014117997292 2.0799447662446431 -0.95594245835076386 ;
	setAttr ".cbx" -type "double3" -4.2376014117997292 4.5333369660946321 0.95594257451196618 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "1DB29FDE-4035-45D1-6DDE-768F85F5C39E";
	setAttr ".ics" -type "componentList" 10 "f[25:29]" "f[45:49]" "f[178]" "f[180]" "f[193]" "f[195]" "f[197]" "f[208]" "f[244:245]" "f[261]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.3990794713208032 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.58484155 3.5203519 0 ;
	setAttr ".rs" 34651;
	setAttr ".lt" -type "double3" 0 -1.2590681418990936e-016 0.43296611853091793 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.0345168107494542 3.5203516621732618 -1.5932374305846064 ;
	setAttr ".cbx" -type "double3" 6.2041999260708867 3.5203523293063408 1.5932374305846064 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "4F7BFB97-40CA-334E-C276-6290D5258275";
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.3990794713208032 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.7262294 3.5203519 0 ;
	setAttr ".rs" 53745;
	setAttr ".lt" -type "double3" 0 1.4791141972893971e-031 0.64995925142398425 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.3955151738292519 3.5203518289565312 -0.31864745707662068 ;
	setAttr ".cbx" -type "double3" -2.0569438726678202 3.5203518289565312 0.31864745707662068 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "3930235E-401E-6AFD-C314-68B98B94B430";
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.3990794713208032 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.7262297 4.1703105 0 ;
	setAttr ".rs" 34379;
	setAttr ".lt" -type "double3" 0 1.7256332301709633e-031 0.86516815407448089 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.2527667104926055 4.170310734520231 -0.25068470296336837 ;
	setAttr ".cbx" -type "double3" -2.1996927040399825 4.170310734520231 0.25068470296336837 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "185AA8A3-4766-ACA5-2A9F-B093419F6C2A";
	setAttr ".uopa" yes;
	setAttr -s 106 ".tk";
	setAttr ".tk[36]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[54]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[96]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[106]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[120]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[121]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[122]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[123]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[124]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[125]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[126]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[127]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[282]" -type "float3" 2.2351742e-008 0 1.1175871e-008 ;
	setAttr ".tk[283]" -type "float3" -1.8626451e-009 0 1.1175871e-008 ;
	setAttr ".tk[284]" -type "float3" -1.8626451e-009 0 1.8626451e-009 ;
	setAttr ".tk[285]" -type "float3" 2.2351742e-008 0 -1.8626451e-009 ;
	setAttr ".tk[286]" -type "float3" 2.7939677e-009 0 1.1175871e-008 ;
	setAttr ".tk[287]" -type "float3" 2.7939677e-009 0 1.8626451e-009 ;
	setAttr ".tk[288]" -type "float3" 0 0 1.1175871e-008 ;
	setAttr ".tk[289]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[290]" -type "float3" -1.8626451e-009 0 1.1175871e-008 ;
	setAttr ".tk[291]" -type "float3" -1.8626451e-009 0 1.8626451e-009 ;
	setAttr ".tk[292]" -type "float3" 0 0 1.1175871e-008 ;
	setAttr ".tk[293]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[294]" -type "float3" 2.2351742e-008 0 1.8626451e-009 ;
	setAttr ".tk[295]" -type "float3" -1.8626451e-009 0 -1.8626451e-009 ;
	setAttr ".tk[296]" -type "float3" -1.8626451e-009 0 -1.1175871e-008 ;
	setAttr ".tk[297]" -type "float3" 2.2351742e-008 0 -1.1175871e-008 ;
	setAttr ".tk[298]" -type "float3" 2.7939677e-009 0 -1.8626451e-009 ;
	setAttr ".tk[299]" -type "float3" 2.7939677e-009 0 -1.1175871e-008 ;
	setAttr ".tk[300]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[301]" -type "float3" 0 0 -1.1175871e-008 ;
	setAttr ".tk[302]" -type "float3" -1.8626451e-009 0 -1.8626451e-009 ;
	setAttr ".tk[303]" -type "float3" -1.8626451e-009 0 -1.1175871e-008 ;
	setAttr ".tk[304]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[305]" -type "float3" 0 0 -1.1175871e-008 ;
	setAttr ".tk[306]" -type "float3" 0 0 5.5879354e-009 ;
	setAttr ".tk[307]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[308]" -type "float3" 3.7252903e-009 1.7763568e-015 5.5879354e-009 ;
	setAttr ".tk[309]" -type "float3" 3.7252903e-009 1.7763568e-015 -1.8626451e-009 ;
	setAttr ".tk[310]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[311]" -type "float3" 0 0 -5.5879354e-009 ;
	setAttr ".tk[312]" -type "float3" 3.7252903e-009 0 1.8626451e-009 ;
	setAttr ".tk[313]" -type "float3" 3.7252903e-009 0 -5.5879354e-009 ;
	setAttr ".tk[314]" -type "float3" 2.2351742e-008 0 5.5879354e-009 ;
	setAttr ".tk[315]" -type "float3" 2.2351742e-008 0 1.8626451e-009 ;
	setAttr ".tk[316]" -type "float3" 7.4505806e-009 1.7763568e-015 -3.7252903e-009 ;
	setAttr ".tk[317]" -type "float3" 7.4505806e-009 0 4.6566129e-009 ;
	setAttr ".tk[318]" -type "float3" 2.2351742e-008 0 -5.5879354e-009 ;
	setAttr ".tk[319]" -type "float3" 7.4505806e-009 0 -5.5879354e-009 ;
	setAttr ".tk[320]" -type "float3" 2.2351742e-008 0 -1.8626451e-009 ;
	setAttr ".tk[321]" -type "float3" 7.4505806e-009 0 -1.8626451e-009 ;
	setAttr ".tk[322]" -type "float3" 0 -3.5527137e-015 -6.519258e-009 ;
	setAttr ".tk[323]" -type "float3" 0 -3.5527137e-015 -5.5879354e-009 ;
	setAttr ".tk[324]" -type "float3" 0 -3.5527137e-015 1.8626451e-009 ;
	setAttr ".tk[325]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[326]" -type "float3" 3.7252903e-009 0 5.5879354e-009 ;
	setAttr ".tk[327]" -type "float3" 3.7252903e-009 1.7763568e-015 9.3132257e-010 ;
	setAttr ".tk[328]" -type "float3" 0 -3.5527137e-015 5.5879354e-009 ;
	setAttr ".tk[329]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".tk[330]" -type "float3" 0.023118641 0 -0.034873053 ;
	setAttr ".tk[331]" -type "float3" -0.023118664 0 -0.034873053 ;
	setAttr ".tk[332]" -type "float3" -0.023118664 0 0.034873053 ;
	setAttr ".tk[333]" -type "float3" 0.023118641 0 0.034873053 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "AA083B4F-422B-C98D-2D00-CC8FD470715D";
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.3990794713208032 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.7262297 5.0354791 0 ;
	setAttr ".rs" 48247;
	setAttr ".lt" -type "double3" 0 7.3955709864469857e-032 0.86754326829083794 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.2527667104926055 5.0354789326217642 -0.25068470296336837 ;
	setAttr ".cbx" -type "double3" -2.1996927040399825 5.0354789326217642 0.25068470296336837 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "5E7C0A2D-4118-D68C-EB70-A39BD651D392";
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.3990794713208032 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.7262299 5.9030213 0 ;
	setAttr ".rs" 52662;
	setAttr ".lt" -type "double3" 0 0 3.492503250836716 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.1863458688302329 5.9030214573521889 -0.21906161611708441 ;
	setAttr ".cbx" -type "double3" -2.266113729720113 5.9030214573521889 0.21906161611708441 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "6174CE32-4523-659F-382E-82BDCD1E3839";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[338:341]" -type "float3"  0.010757115 0 -0.016226437
		 -0.010757107 0 -0.016226437 -0.010757107 0 0.016226437 0.010757115 0 0.016226437;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "EF15E85F-40DF-E330-A65C-4D816599A4B5";
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.3990794713208032 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.7262299 9.395525 0 ;
	setAttr ".rs" 57340;
	setAttr ".lt" -type "double3" 0 3.944304526105059e-031 3.1884204099470583 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.0034184161901756 9.3955245032333483 -0.12557894281060894 ;
	setAttr ".cbx" -type "double3" -2.4490411823601703 9.3955245032333483 0.12557894281060894 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "B35B9B38-4BF6-76C2-70BC-4EBBB6313EBA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[342:345]" -type "float3"  0.029625736 0 -0.047967825
		 -0.029625738 0 -0.047967825 -0.029625738 0 0.047967825 0.029625736 0 0.047967825;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "1ECD5201-4F83-C8C0-B938-FD8FE2D1A1AF";
	setAttr ".ics" -type "componentList" 2 "f[345]" "f[349]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.3990794713208032 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4192829 9.2434826 0 ;
	setAttr ".rs" 60998;
	setAttr ".lt" -type "double3" -1.0164220741442025e-031 -8.8484061712170519e-016 
		5.4974636901295808 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.572452139612587 5.90302012308603 -0.21906158707678383 ;
	setAttr ".cbx" -type "double3" -2.266113729720113 12.5839449559475 0.21906158707678383 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "CA9996A8-4262-EAF5-27D0-2E9EDC1E66E5";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[346]" -type "float3" 0.019986819 3.5527137e-015 -0.028688885 ;
	setAttr ".tk[347]" -type "float3" -0.019986819 3.5527137e-015 -0.028688885 ;
	setAttr ".tk[348]" -type "float3" -0.019986819 3.5527137e-015 0.028688885 ;
	setAttr ".tk[349]" -type "float3" 0.019986819 3.5527137e-015 0.028688885 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "9D9C5605-4BC3-3A8E-5B94-A0BAE642BCCA";
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 6.1746113427498095 0 0 0 0 1.3990794713208032 0 0 0 0 1.9488615829619862 0
		 0 0.9425207574029586 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.7262299 12.583945 0 ;
	setAttr ".rs" 51394;
	setAttr ".lt" -type "double3" 0 -2.2186712959340957e-031 0.59971492513108871 ;
	setAttr ".ls" -type "double3" 1 1 0.54071733688162327 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.8800076429555164 12.5839449559475 -0.069668261926732422 ;
	setAttr ".cbx" -type "double3" -2.5724523236303449 12.5839449559475 0.069668261926732422 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "7138BEAE-4C07-9DAC-9DF4-24A945D19110";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[350]" -type "float3" 0.088713743 -0.19882053 -1.4849233e-015 ;
	setAttr ".tk[351]" -type "float3" 0.088713743 -0.19882053 1.4849233e-015 ;
	setAttr ".tk[352]" -type "float3" -0.055110056 -0.31649175 1.4849233e-015 ;
	setAttr ".tk[353]" -type "float3" -0.055110056 -0.31649175 -1.4849233e-015 ;
	setAttr ".tk[354]" -type "float3" -0.37363511 -0.80069214 4.9960036e-016 ;
	setAttr ".tk[355]" -type "float3" -0.37363511 -0.80069214 -4.9960036e-016 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "90F86323-4AB1-E465-6799-01A6FECBCB3F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1113\n                -height 714\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1113\n            -height 714\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1113\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1113\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A0A59FCF-4959-6B08-DFA3-C2A005B3B18E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyExtrudeFace13.out" "boatShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "boatShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "boatShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "boatShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace4.ip";
connectAttr "boatShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "boatShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyTweak2.out" "polySplitRing1.ip";
connectAttr "boatShape.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak2.ip";
connectAttr "polySplitRing1.out" "polyExtrudeEdge1.ip";
connectAttr "boatShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeFace6.ip";
connectAttr "boatShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "boatShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace8.ip";
connectAttr "boatShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "boatShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak4.out" "polyExtrudeFace10.ip";
connectAttr "boatShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace11.ip";
connectAttr "boatShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace12.ip";
connectAttr "boatShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace13.ip";
connectAttr "boatShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak7.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "boatShape.iog" ":initialShadingGroup.dsm" -na;
// End of boat1.ma
