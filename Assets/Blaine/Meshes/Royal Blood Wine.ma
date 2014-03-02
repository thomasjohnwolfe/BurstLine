//Maya ASCII 2014 scene
//Name: Royal Blood Wine.ma
//Last modified: Mon, Feb 24, 2014 07:06:20 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.13 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201310090514-890429";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -n "Wine";
	setAttr ".rp" -type "double3" -4.3537616439817544e-016 0 8.7537544968920938e-017 ;
	setAttr ".rpt" -type "double3" -8.7130454518871745e-018 0 -8.7537544968920938e-017 ;
	setAttr ".sp" -type "double3" -4.3537616439817544e-016 0 8.7537544968920938e-017 ;
createNode mesh -n "WineShape" -p "Wine";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.20509100062487284 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[18]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[19]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[20]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[21]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[22]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[23]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[24]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[25]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[26]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[65]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[66]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[67]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[68]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[69]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[198]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[199]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[200]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[201]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[202]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[203]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[204]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[205]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[206]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[207]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[208]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[209]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[210]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
	setAttr ".pt[211]" -type "float3" 1.8626451e-009 3.2741809e-011 4.1909516e-009 ;
createNode mesh -n "polySurfaceShape1" -p "Wine";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.11111094057559967 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 210 ".uvst[0].uvsp[0:209]" -type "float2" 0.77712131 0.081549317
		 0.77721381 0.10156897 0.67044193 0.10108623 0.67042065 0.08132562 0.80627042 0.081703216
		 0.80636919 0.10189939 0.85210484 0.081946373 0.85223067 0.10241836 0.7770288 0.061636567
		 0.67039984 0.061705738 0.80615926 0.061588794 0.85198337 0.061513305 0.77692801 0.041690767
		 0.67038542 0.042042583 0.77806401 0.31136757 0.77816176 0.33148241 0.67070836 0.33183432
		 0.67069572 0.31194738 0.77798426 0.29096919 0.67067873 0.29167923 0.77790833 0.27021533
		 0.67065781 0.27092156 0.7778331 0.24909887 0.67063427 0.24965103 0.807078 0.24873447
		 0.8071534 0.26974422 0.85292971 0.24818346 0.85302782 0.2690241 0.777722 0.22231281
		 0.67059815 0.2224959 0.80695641 0.222193 0.85282159 0.22201324 0.7776283 0.20075727
		 0.80684859 0.20086986 0.67056859 0.20058529 0.8527528 0.20103863 0.80677593 0.18491226
		 0.77756286 0.18464023 0.67054844 0.18422601 0.85267401 0.18532193 0.77748656 0.16335547
		 0.67051923 0.1627126 0.80669755 0.16378152 0.85254085 0.16442901 0.77738297 0.13722557
		 0.67048669 0.1365017 0.80657697 0.13771254 0.85239577 0.13846335 0.77728641 0.11673194
		 0.80645388 0.11715922 0.67046261 0.11610362 0.85230947 0.11782566 0.87655437 0.10251647
		 0.87643456 0.081992686 0.87632608 0.061499 0.87738681 0.26889047 0.87730336 0.24808198
		 0.87721217 0.22198033 0.87714016 0.20106956 0.87705868 0.18539709 0.87691998 0.16454864
		 0.87674624 0.13860351 0.87663734 0.1179511 0.89805067 0.081997454 0.89817202 0.10252702
		 0.89795947 0.06149739 0.87626642 0.040995896 0.89791244 0.040988207 0.89901513 0.24807125
		 0.89905989 0.26887628 0.8989408 0.22197688 0.89886159 0.20107293 0.89877069 0.18540508
		 0.89862615 0.16456133 0.89842999 0.13861841 0.898283 0.11796445 0.92530847 0.081991076
		 0.92546093 0.10251319 0.95146942 0.10246837 0.9512738 0.081969976 0.92522019 0.061499476
		 0.9511618 0.061505973 0.92518818 0.040998459 0.95114267 0.041031361 0.92638987 0.3102411
		 0.92636341 0.33078992 0.89909732 0.33077979 0.89909267 0.31022459 0.95237374 0.330823
		 0.95242751 0.31029433 0.92642224 0.28961438 0.89908469 0.28959507 0.95252573 0.28967786
		 0.92644358 0.26889497 0.9526186 0.26895595 0.92645538 0.24808538 0.95269072 0.24813163
		 0.92640197 0.22198147 0.95268619 0.22199649 0.92631853 0.20106852 0.95258951 0.20105451
		 0.92621887 0.18539453 0.95247865 0.18536031 0.92605418 0.16454464 0.9522717 0.16449016
		 0.92579788 0.1385988 0.95193553 0.1385349 0.9256022 0.11794674 0.9516542 0.1178897
		 0.98135257 0.081916869 0.98162991 0.1023556 0.98119867 0.061522484 0.98117006 0.041114509
		 0.98267066 0.31042838 0.98254043 0.33090591 0.98288542 0.28983754 0.98310721 0.26911002
		 0.98330557 0.24824882 0.98340321 0.22203445 0.98329926 0.20101881 0.98312926 0.18527347
		 0.98282933 0.16435206 0.98236227 0.13837337 0.98192453 0.11774534 0.148399 0.10142896
		 0.14847696 0.081484303 0.26399696 0.081361391 0.263973 0.10116354 0.14854145 0.061656736
		 0.26400888 0.061694771 0.14859414 0.041793019 0.26402164 0.041986391 0.14765209 0.33158457
		 0.14769822 0.31153545 0.26377439 0.31185433 0.26376182 0.33177787 0.14774698 0.29117388
		 0.263785 0.29156467 0.14780015 0.2704179 0.26380074 0.27080697 0.14785621 0.24925649
		 0.26382011 0.24956091 0.14793497 0.22236493 0.2638424 0.2224659 0.14800295 0.20070839
		 0.26386502 0.20061348 0.26388365 0.18429379 0.14806223 0.18452218 0.14814162 0.16317149
		 0.26390553 0.16281725 0.14825112 0.13701724 0.26393646 0.13661873 0.14833963 0.11655018
		 0.26396197 0.1162046 0.070288062 0.10182153 0.047934175 0.10215893 0.048115611 0.08182463
		 0.070447087 0.081666879 0.021965265 0.10243722 0.022227645 0.081955276 0.048282623
		 0.061551169 0.07058394 0.061600097 0.02241385 0.061510623 0.048450232 0.041258812
		 0.07070148 0.041506171 0.022589207 0.041054353 0.069012344 0.3312977 0.046515465
		 0.33105034 0.046660602 0.31066239 0.069122016 0.31106517 0.020472825 0.33084583 0.020597905
		 0.31033126 0.046748012 0.29011738 0.069197416 0.29060239 0.020618469 0.28972179 0.046793908
		 0.26938102 0.06924811 0.26985434 0.020598233 0.26899832 0.046827018 0.24845567 0.069283009
		 0.24881937 0.020598352 0.24816385 0.069366544 0.22222084 0.046886802 0.22210187 0.020565808
		 0.22200687 0.069485694 0.20084369 0.046963453 0.20095544 0.020558774 0.20104463 0.020680904
		 0.18533641 0.047062457 0.18511972 0.069574416 0.1848489 0.047248721 0.16410866 0.069697142
		 0.1636821 0.021021962 0.16445214 0.069928944 0.13759844 0.047546864 0.13809019 0.02147156
		 0.13849038 0.070147634 0.11705875 0.047777295 0.11749329 0.021751761 0.1178498 0.80603623
		 0.04144913 0.85185301 0.041068256 0.80733794 0.31097209 0.80745637 0.33124065 0.80723858
		 0.29048994 0.85311532 0.28974855 0.85320586 0.31035373 0.87749541 0.31023711 0.87754142
		 0.33078748 0.85331434 0.33085972 0.877446 0.28960979;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 158 ".pt";
	setAttr ".pt[2]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[3]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[6]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[11]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[12]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[15]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[20]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[21]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[24]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[28]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[32]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[36]" -type "float3" -1.3322676e-015 0 0 ;
	setAttr ".pt[40]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[43]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[44]" -type "float3" -5.5511151e-016 0 0 ;
	setAttr ".pt[46]" -type "float3" 0 0 1.110223e-016 ;
	setAttr ".pt[48]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[53]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[54]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[57]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[60]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[61]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[62]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[64]" -type "float3" 0 0 1.110223e-016 ;
	setAttr ".pt[66]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[67]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[71]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[72]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[73]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[74]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[76]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[78]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[79]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[86]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[88]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[95]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[97]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[102]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[103]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[107]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[108]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[109]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[113]" -type "float3" 0 0 1.110223e-016 ;
	setAttr ".pt[116]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[117]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[120]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[123]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[124]" -type "float3" -1.3322676e-015 0 0 ;
	setAttr ".pt[125]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[131]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[132]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[135]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[137]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[140]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[141]" -type "float3" -1.3322676e-015 0 0 ;
	setAttr ".pt[146]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[147]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[150]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[152]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[155]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[156]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[157]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[158]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[160]" -type "float3" 0 0 8.7537467e-017 ;
	setAttr ".pt[162]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[163]" -type "float3" -5.5511151e-016 0 0 ;
	setAttr ".pt[164]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[165]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[167]" -type "float3" 0 0 1.110223e-016 ;
	setAttr ".pt[174]" -type "float3" 0 0 8.6736174e-017 ;
	setAttr ".pt[177]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[178]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[182]" -type "float3" -1.3322676e-015 0 0 ;
	setAttr ".pt[185]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[188]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[189]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[195]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[198]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[199]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[202]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[207]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[208]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[211]" -type "float3" 0 0 8.6736174e-017 ;
	setAttr ".pt[216]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[217]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[220]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[224]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[228]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[232]" -type "float3" -1.3322676e-015 0 0 ;
	setAttr ".pt[236]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[239]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[240]" -type "float3" -5.5511151e-016 0 0 ;
	setAttr ".pt[242]" -type "float3" 0 0 1.110223e-016 ;
	setAttr ".pt[244]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[249]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[250]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[253]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[256]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[257]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[258]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[260]" -type "float3" 0 0 1.110223e-016 ;
	setAttr ".pt[262]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[263]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[267]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[268]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[269]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[270]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[272]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[274]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[275]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[282]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[284]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[291]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[293]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[298]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[299]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[302]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[303]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[304]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[305]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[309]" -type "float3" 0 0 1.110223e-016 ;
	setAttr ".pt[312]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[313]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[316]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[319]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[320]" -type "float3" -1.3322676e-015 0 0 ;
	setAttr ".pt[321]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[327]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[328]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[331]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[333]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[336]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[337]" -type "float3" -1.3322676e-015 0 0 ;
	setAttr ".pt[342]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[343]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[346]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[348]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".pt[351]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[352]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[353]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[354]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[356]" -type "float3" 0 0 8.7603536e-017 ;
	setAttr ".pt[358]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[359]" -type "float3" -5.5511151e-016 0 0 ;
	setAttr ".pt[360]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[361]" -type "float3" -4.4408921e-016 0 0 ;
	setAttr ".pt[363]" -type "float3" 0 0 1.110223e-016 ;
	setAttr ".pt[366]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[367]" -type "float3" -2.220446e-016 0 0 ;
	setAttr ".pt[370]" -type "float3" 0 0 8.6736174e-017 ;
	setAttr ".pt[373]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[374]" -type "float3" -6.6613381e-016 0 0 ;
	setAttr ".pt[377]" -type "float3" 0 0 1.110223e-016 ;
	setAttr ".pt[378]" -type "float3" -1.3322676e-015 0 0 ;
	setAttr ".pt[381]" -type "float3" 0 0 8.7495115e-017 ;
	setAttr ".pt[384]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[385]" -type "float3" 8.8817842e-016 0 0 ;
	setAttr ".pt[391]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr -s 196 ".vt";
	setAttr ".vt[0:165]"  23.34085655 83.045043945 -11.24035931 16.15237808 83.045043945 -20.25443077
		 5.76471996 83.045043945 -25.25686455 -5.76471138 83.045043945 -25.25686646 -16.15236664 83.045043945 -20.2544384
		 -23.34085274 83.045043945 -11.24036884 -25.90639496 83.045043945 -5.0135322e-006
		 -23.34085846 83.045043945 11.24035931 16.15237427 83.045043945 20.2544384 5.9948988 -70.31163788 -2.88240862
		 4.1480217 -70.31163788 -5.19832087 1.47920549 -70.31163788 -6.48355389 -1.48295641 -70.31163788 -6.48355389
		 -4.15177155 -70.31163788 -5.19832087 -5.99865007 -70.31163788 -2.88241029 -6.65779305 -70.31163788 0.0054841493
		 -5.99865198 -70.31163788 2.89337873 4.14801979 -70.31163788 5.20929146 21.56048012 -91.063598633 -10.38297749
		 14.9203167 -91.063598633 -18.70948029 5.32500172 -91.063598633 -23.3303299 -5.32499504 -91.063598633 -23.3303299
		 -14.92030716 -91.063598633 -18.70948219 -21.5604763 -91.063598633 -10.38298416 -23.93032074 -91.063598633 -4.6667574e-006
		 -21.56048584 -91.063598633 10.38297558 14.92030907 -91.063598633 18.70948029 -5.45557308 13.24788094 8.68213558
		 -1.1482619 13.24788094 10.18941784 9.67843819 13.24788094 3.38682938 10.18946266 13.24788094 -1.14788973
		 -12.16739845 24.0034885406 19.36351585 -2.56093264 24.0034885406 22.72516251 21.58553886 24.0034885406 7.553545
		 22.72525597 24.0034885406 -2.56010294 -15.63673782 67.90432739 24.88471603 -3.29114151 67.90432739 29.20488167
		 27.74030495 67.90432739 9.70731831 29.20499992 67.90432739 -3.29007483 -10.60417747 96.83735657 16.87576866
		 -2.23191333 96.83735657 19.80552292 18.81231117 96.83735657 6.5830946 19.80560493 96.83735657 -2.23118925
		 -2.88571548 -6.45665169 4.59240007 -0.60737151 -6.45665169 5.38967228 5.11939144 -6.45665169 1.79145682
		 5.38969612 -6.45665169 -0.60717469 -7.55106211 -86.091911316 12.016954422 -1.58931029 -86.091911316 14.10317993
		 13.39593792 -86.091911316 4.6877141 14.10324478 -86.091911316 -1.58879471 26.74888802 36.054634094 -12.8815794
		 18.51080513 36.054634094 -23.21180534 6.60643291 36.054634094 -28.94465446 -6.60642385 36.054634094 -28.94465637
		 -18.5107975 36.054634094 -23.21181488 -26.7488842 36.054634094 -12.88158894 -29.68902588 36.054634094 -6.1182309e-006
		 -26.74888802 36.054634094 12.8815794 18.51080132 36.054634094 23.21181488 -3.54278064 -70.31163788 5.64057159
		 -0.7471481 -70.31163788 6.61886168 1.47920358 -70.31163788 6.49452305 6.27985287 -70.31163788 2.203686
		 6.61152887 -70.31163788 -0.73954463 -12.73077393 -91.063598633 20.26008415 -2.67951035 -91.063598633 23.77737045
		 5.32499313 -91.063598633 23.3303299 22.58498764 -91.063598633 7.90329075 23.77747726 -91.063598633 -2.67864108
		 4.88716364 -6.4566493 -2.35353446 3.38202286 -6.4566493 -4.24092245 1.2070303 -6.4566493 -5.28834343
		 -1.2070297 -6.4566493 -5.28834391 -3.38202238 -6.4566493 -4.2409234 -4.88716412 -6.4566493 -2.35353589
		 -5.42434406 -6.4566493 -1.9061699e-006 -4.88716555 -6.4566493 2.35353279 1.20702839 -6.4566493 5.28834152
		 3.38202143 -6.4566493 4.24092197 12.78826618 -86.091911316 -6.15850401 8.84975529 -86.091911316 -11.097240448
		 3.1584425 -86.091911316 -13.83802795 -3.15843868 -86.091911316 -13.83802795 -8.84975052 -86.091911316 -11.097240448
		 -12.78826332 -86.091911316 -6.15850687 -14.19390106 -86.091911316 -3.1316927e-006
		 -12.78826809 -86.091911316 6.15850067 3.15843773 -86.091911316 13.83802509 8.84975052 -86.091911316 11.097239494
		 9.23940277 13.24788094 -4.44946003 6.80393982 8.31939793 -3.27660275 6.39386606 13.24788094 -8.017650604
		 4.7084713 8.31939793 -5.90423584 2.28194499 13.24788094 -9.99784851 1.68043423 8.31939793 -7.36246109
		 -2.28194261 13.24788094 -9.99784946 -1.6804328 8.31939793 -7.36246109 -6.39386368 13.24788094 -8.017653465
		 -4.70846939 8.31939793 -5.90423775 -9.23940182 13.24788094 -4.44946384 -6.80393744 8.31939793 -3.27660561
		 -10.25496292 13.24788094 -2.859073e-006 -7.55180073 8.31939793 -2.3838224e-006 -9.23940468 13.24788094 4.44945765
		 -6.80393982 8.31939793 3.27660084 -4.017508507 8.31939793 6.39356661 -0.84558541 8.31939793 7.50353289
		 2.28194165 13.24788094 9.9978466 1.68043196 8.31939793 7.36246061 6.39386368 13.24788094 8.017650604
		 4.70846844 8.31939793 5.90423536 7.12724638 8.31939793 2.49407625 7.50356913 8.31939793 -0.84531164
		 20.60636711 24.0034885406 -9.92349911 14.26004982 24.0034885406 -17.88153076 5.089354515 24.0034885406 -22.29790688
		 -5.089348793 24.0034885406 -22.29790688 -14.26004314 24.0034885406 -17.88153648 -20.6063652 24.0034885406 -9.92350674
		 -22.8713398 24.0034885406 -5.1285629e-006 -20.60636711 24.0034885406 9.9234972 -15.79436111 36.054634094 25.1355629
		 6.60642433 36.054634094 28.94465637 -3.32431746 36.054634094 29.4992733 5.089348793 24.0034885406 22.29790688
		 14.2600441 24.0034885406 17.88153076 28.019939423 36.054634094 9.80517197 29.49939728 36.054634094 -3.32324004
		 26.48193741 67.90432739 -12.75302505 18.3260746 67.90432739 -22.98015976 6.5405035 67.90432739 -28.65579414
		 -6.54049397 67.90432739 -28.65579605 -18.32606697 67.90432739 -22.98016548 -26.4819355 67.90432739 -12.75303459
		 -29.39273643 67.90432739 -5.873193e-006 -26.48193741 67.90432739 12.7530241 6.54049492 67.90432739 28.65579605
		 18.32606888 67.90432739 22.9801712 -13.7820282 83.045043945 21.93308067 5.76471281 83.045043945 25.25687027
		 -2.90077162 83.045043945 25.74082184 24.44996643 83.045043945 8.55591393 25.74092865 83.045043945 -2.89983082
		 17.9589386 96.83735657 -8.64856339 12.42797279 96.83735657 -15.58418179 4.43549442 96.83735657 -19.43315887
		 -4.43548679 96.83735657 -19.43315887 -12.42796803 96.83735657 -15.58418369 -17.95893478 96.83735657 -8.64857101
		 -19.93291664 96.83735657 -3.6529332e-006 -17.95893478 96.83735657 8.64856434 4.43548727 96.83735657 19.43315887
		 12.42796993 96.83735657 15.58418465 5.12038946 -54.9909935 -2.46584988 3.54341984 -54.9909935 -4.44330835
		 1.26463223 -54.9909935 -5.54071379 -1.26463163 -54.9909935 -5.54071379 -3.54341936 -54.9909935 -4.44330883
		 -5.12038994 -54.9909935 -2.46585155 -5.6832037 -54.9909935 -1.9168872e-006 -5.12039137 -54.9909935 2.46584845
		 -3.023427486 -54.9909935 4.81155872 -0.63635647 -54.9909935 5.64687824 1.26463032 -54.9909935 5.54071188
		 3.54341841 -54.9909935 4.4433074;
	setAttr ".vt[166:195]" 5.36369991 -54.9909935 1.8769486 5.64690351 -54.9909935 -0.63615018
		 8.22550201 -83.38299561 -3.95289993 5.69117832 -83.38299561 -7.13084126 2.028975964 -83.38299561 -8.89446163
		 -2.035762787 -83.38299561 -8.89446163 -5.69796515 -83.38299561 -7.13084126 -8.23228931 -83.38299561 -3.95290184
		 -9.13677788 -83.38299561 0.0099252649 -8.23229218 -83.38299561 3.97275257 -4.86229467 -83.38299561 7.74250603
		 -1.026071787 -83.38299561 9.084934235 2.028972864 -83.38299561 8.91431427 5.69117594 -83.38299561 7.15069485
		 8.61651993 -83.38299561 3.026342154 9.071653366 -83.38299561 -1.01241827 -3.49028611 50.16430664 30.98203278
		 -16.58920479 50.16430664 26.39825439 -28.096178055 50.16431427 13.52629566 -31.18458176 50.16431427 -0.0049172277
		 -28.096170425 50.16431427 -13.536129 -19.44263077 50.16431427 -24.38731194 -6.93791151 50.16431427 -30.40926743
		 6.94127941 50.16431427 -30.4092598 19.44599915 50.16431427 -24.38730621 28.099533081 50.16431427 -13.53611851
		 30.98875046 50.16430664 -3.49574375 29.43467903 50.16430664 10.29474258 19.44599342 50.16431427 24.37749672
		 6.94127083 50.16431427 30.39944839;
	setAttr -s 378 ".ed";
	setAttr ".ed[0:165]"  51 52 1 52 53 1 53 54 1 57 58 1 58 122 1 122 124 1
		 124 123 1 123 59 1 59 127 1 127 128 1 128 51 1 0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1
		 6 7 1 7 139 1 139 141 1 141 140 1 140 8 1 8 142 1 142 143 1 143 0 1 91 90 1 90 114 1
		 93 92 1 92 115 1 95 94 1 94 116 1 103 102 1 102 120 1 105 104 1 104 121 1 109 108 1
		 108 125 1 111 110 1 110 126 1 114 51 1 115 52 1 116 53 1 120 57 1 121 58 1 125 123 1
		 126 59 1 51 191 1 52 190 1 53 189 1 54 188 1 57 185 1 58 184 1 123 195 1 59 194 1
		 129 0 1 130 1 1 131 2 1 132 3 1 133 4 1 134 5 1 135 6 1 136 7 1 137 140 1 138 8 1
		 0 144 1 1 145 1 2 146 1 3 147 1 4 148 1 5 149 1 6 150 1 7 151 1 140 152 1 8 153 1
		 91 70 1 70 154 1 154 9 1 93 71 1 71 155 1 155 10 1 9 10 1 95 72 1 72 156 1 156 11 1
		 10 11 1 97 73 1 73 157 1 157 12 1 11 12 1 99 74 1 74 158 1 158 13 1 12 13 1 101 75 1
		 75 159 1 159 14 1 13 14 1 103 76 1 76 160 1 160 15 1 14 15 1 105 77 1 77 161 1 161 16 1
		 15 16 1 16 60 1 109 78 1 78 164 1 164 62 1 60 61 1 61 62 1 111 79 1 79 165 1 165 17 1
		 62 17 1 17 63 1 63 64 1 64 9 1 9 168 1 168 80 1 80 18 1 10 169 1 169 81 1 81 19 1
		 18 19 0 11 170 1 170 82 1 82 20 1 19 20 0 12 171 1 171 83 1 83 21 1 20 21 0 13 172 1
		 172 84 1 84 22 1 21 22 0 14 173 1 173 85 1 85 23 1 22 23 0 15 174 1 174 86 1 86 24 1
		 23 24 0 16 175 1 175 87 1 87 25 1 24 25 0 25 65 0 62 178 1 178 88 1 88 67 1 65 66 0
		 66 67 0 17 179 1 179 89 1 89 26 1 67 26 0 26 68 0 68 69 0 69 18 0 92 90 1 94 92 1
		 104 102 1 27 106 1;
	setAttr ".ed[166:331]" 27 31 1 27 104 1 28 107 1 28 108 1 28 32 1 28 27 1 110 108 1
		 29 112 1 29 33 1 29 110 1 30 113 1 30 90 1 30 34 1 30 29 1 115 114 1 116 115 1 121 120 1
		 31 122 1 31 121 1 32 125 1 32 124 1 32 31 1 126 125 1 33 127 1 33 126 1 34 114 1
		 34 128 1 34 33 1 122 183 1 124 182 1 127 193 1 128 192 1 130 129 1 131 130 1 132 131 1
		 133 132 1 134 133 1 135 134 1 136 135 1 35 139 1 35 136 1 36 137 1 36 141 1 36 35 1
		 138 137 1 37 142 1 37 138 1 38 129 1 38 143 1 38 37 1 145 144 0 146 145 0 147 146 0
		 148 147 0 149 148 0 150 149 0 151 150 0 39 151 0 39 139 1 39 40 0 40 141 1 40 152 0
		 153 152 0 41 153 0 41 142 1 41 42 0 42 143 1 42 144 0 70 71 1 71 72 1 72 73 1 73 74 1
		 74 75 1 75 76 1 76 77 1 43 106 1 43 77 1 43 162 1 162 60 1 44 107 1 44 43 1 44 163 1
		 163 61 1 44 78 1 78 79 1 45 112 1 45 79 1 45 166 1 166 63 1 46 113 1 46 45 1 46 167 1
		 167 64 1 46 70 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1 47 176 1
		 176 60 1 47 87 1 47 65 1 48 177 1 177 61 1 48 47 1 48 66 1 48 88 1 88 89 1 49 180 1
		 180 63 1 49 89 1 49 68 1 50 181 1 181 64 1 50 49 1 50 69 1 50 80 1 91 93 1 93 95 1
		 95 97 1 97 99 1 99 101 1 101 103 1 103 105 1 106 105 1 109 107 1 107 106 1 109 111 1
		 112 111 1 91 113 1 113 112 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 160 1
		 160 161 1 162 161 1 163 162 1 164 163 1 164 165 1 166 165 1 167 166 1 154 167 1 168 169 1
		 169 170 1 170 171 1 171 172 1 172 173 1 173 174 1 174 175 1 176 175 1 177 176 1 178 177 1
		 178 179 1 180 179 1 181 180 1 168 181 1 182 36 1 183 35 1 182 183 1 184 136 1;
	setAttr ".ed[332:377]" 183 184 1 185 135 1 184 185 1 186 134 1 185 186 1 187 133 1
		 186 187 1 188 132 1 187 188 1 189 131 1 188 189 1 190 130 1 189 190 1 191 129 1 190 191 1
		 192 38 1 191 192 1 193 37 1 192 193 1 194 138 1 193 194 1 195 137 1 194 195 1 195 182 1
		 94 96 1 96 117 1 96 97 1 96 98 1 98 100 1 100 119 1 98 99 1 100 101 1 100 102 1 116 117 1
		 54 117 1 117 118 1 55 118 1 118 119 1 56 119 1 119 120 1 54 55 1 55 187 1 55 56 1
		 56 186 1 56 57 1 98 118 0;
	setAttr -s 182 -ch 728 ".fc[0:181]" -type "polyFaces" 
		f 4 -287 74 234 -78
		mu 0 4 0 1 2 3
		f 4 27 162 -26 286
		mu 0 4 0 4 5 1
		f 4 180 -27 -163 28
		mu 0 4 6 7 5 4
		f 4 -288 77 235 -82
		mu 0 4 8 0 3 9
		f 4 29 163 -28 287
		mu 0 4 8 10 4 0
		f 4 181 -29 -164 30
		mu 0 4 11 6 4 10
		f 4 -289 81 236 -86
		mu 0 4 12 8 9 13
		f 4 -290 85 237 -90
		mu 0 4 14 15 16 17
		f 4 -291 89 238 -94
		mu 0 4 18 14 17 19
		f 4 -292 93 239 -98
		mu 0 4 20 18 19 21
		f 4 -293 97 240 -102
		mu 0 4 22 20 21 23
		f 4 33 164 -32 292
		mu 0 4 22 24 25 20
		f 4 182 -33 -165 34
		mu 0 4 26 27 25 24
		f 4 293 101 -243 241
		mu 0 4 28 22 23 29
		f 4 -34 -294 -166 167
		mu 0 4 24 22 28 30
		f 4 -35 -168 166 184
		mu 0 4 26 24 30 31
		f 4 165 -296 -169 171
		mu 0 4 30 28 32 33
		f 4 295 -242 -247 245
		mu 0 4 32 28 29 34
		f 4 -167 -172 170 187
		mu 0 4 31 30 33 35
		f 4 -170 168 -295 35
		mu 0 4 36 33 32 37
		f 4 294 -246 249 -107
		mu 0 4 37 32 34 38
		f 4 -186 -171 169 36
		mu 0 4 39 35 33 36
		f 4 -297 106 250 -112
		mu 0 4 40 37 38 41
		f 4 37 172 -36 296
		mu 0 4 40 42 36 37
		f 4 188 -37 -173 38
		mu 0 4 43 39 36 42
		f 4 297 111 -253 251
		mu 0 4 44 40 41 45
		f 4 -38 -298 -174 175
		mu 0 4 42 40 44 46
		f 4 -39 -176 174 190
		mu 0 4 43 42 46 47
		f 4 173 -300 -177 179
		mu 0 4 46 44 48 49
		f 4 299 -252 -257 255
		mu 0 4 48 44 45 50
		f 4 -175 -180 178 193
		mu 0 4 47 46 49 51
		f 4 298 -256 259 -75
		mu 0 4 1 48 50 2
		f 4 176 -299 25 -178
		mu 0 4 49 48 1 5
		f 4 -179 177 26 -192
		mu 0 4 51 49 5 7
		f 4 -40 -181 40 -1
		mu 0 4 52 7 6 53
		f 4 -41 -182 41 -2
		mu 0 4 53 6 11 54
		f 4 -43 -183 43 -4
		mu 0 4 55 27 26 56
		f 4 -44 -185 183 -5
		mu 0 4 56 26 31 57
		f 4 -184 -188 186 -6
		mu 0 4 57 31 35 58
		f 4 -187 185 44 -7
		mu 0 4 58 35 39 59
		f 4 -45 -189 45 -8
		mu 0 4 59 39 43 60
		f 4 -46 -191 189 -9
		mu 0 4 60 43 47 61
		f 4 -190 -194 192 -10
		mu 0 4 61 47 51 62
		f 4 191 39 -11 -193
		mu 0 4 51 7 52 62
		f 4 0 47 346 -47
		mu 0 4 52 53 63 64
		f 4 1 48 344 -48
		mu 0 4 53 54 65 63
		f 4 2 49 342 -49
		mu 0 4 54 66 67 65
		f 4 3 51 334 -51
		mu 0 4 55 56 68 69
		f 4 4 194 332 -52
		mu 0 4 56 57 70 68
		f 4 5 195 330 -195
		mu 0 4 57 58 71 70
		f 4 52 355 -196 6
		mu 0 4 59 72 71 58
		f 4 7 53 354 -53
		mu 0 4 59 60 73 72
		f 4 8 196 352 -54
		mu 0 4 60 61 74 73
		f 4 9 197 350 -197
		mu 0 4 61 62 75 74
		f 4 46 348 -198 10
		mu 0 4 52 64 75 62
		f 4 198 -346 -347 343
		mu 0 4 76 77 64 63
		f 4 -55 -199 55 -12
		mu 0 4 78 77 76 79
		f 4 199 -344 -345 341
		mu 0 4 80 76 63 65
		f 4 -56 -200 56 -13
		mu 0 4 79 76 80 81
		f 4 200 -342 -343 339
		mu 0 4 82 80 65 67
		f 4 -57 -201 57 -14
		mu 0 4 81 80 82 83
		f 4 201 -340 -341 337
		mu 0 4 84 85 86 87
		f 4 -58 -202 58 -15
		mu 0 4 88 85 84 89
		f 4 202 -338 -339 335
		mu 0 4 90 84 87 91
		f 4 -59 -203 59 -16
		mu 0 4 89 84 90 92
		f 4 203 -336 -337 333
		mu 0 4 93 90 91 69
		f 4 -60 -204 60 -17
		mu 0 4 92 90 93 94
		f 4 204 -334 -335 331
		mu 0 4 95 93 69 68
		f 4 -61 -205 61 -18
		mu 0 4 94 93 95 96
		f 4 206 -332 -333 329
		mu 0 4 97 95 68 70
		f 4 -62 -207 205 -19
		mu 0 4 96 95 97 98
		f 4 209 -330 -331 328
		mu 0 4 99 97 70 71
		f 4 -206 -210 208 -20
		mu 0 4 98 97 99 100
		f 4 -208 -329 -356 353
		mu 0 4 101 99 71 72
		f 4 -21 -209 207 62
		mu 0 4 102 100 99 101
		f 4 210 -354 -355 351
		mu 0 4 103 101 72 73
		f 4 -63 -211 63 -22
		mu 0 4 102 101 103 104
		f 4 212 -352 -353 349
		mu 0 4 105 103 73 74
		f 4 -64 -213 211 -23
		mu 0 4 104 103 105 106
		f 4 215 -350 -351 347
		mu 0 4 107 105 74 75
		f 4 -212 -216 214 -24
		mu 0 4 106 105 107 108
		f 4 -214 -348 -349 345
		mu 0 4 77 107 75 64
		f 4 -215 213 54 -25
		mu 0 4 108 107 77 78
		f 4 11 65 216 -65
		mu 0 4 78 79 109 110
		f 4 12 66 217 -66
		mu 0 4 79 81 111 109
		f 4 13 67 218 -67
		mu 0 4 81 83 112 111
		f 4 14 68 219 -68
		mu 0 4 88 89 113 114
		f 4 15 69 220 -69
		mu 0 4 89 92 115 113
		f 4 16 70 221 -70
		mu 0 4 92 94 116 115
		f 4 17 71 222 -71
		mu 0 4 94 96 117 116
		f 4 223 -72 18 -225
		mu 0 4 118 117 96 98
		f 4 -226 224 19 -227
		mu 0 4 119 118 98 100
		f 4 -228 226 20 72
		mu 0 4 120 119 100 102
		f 4 21 73 228 -73
		mu 0 4 102 104 121 120
		f 4 229 -74 22 -231
		mu 0 4 122 121 104 106
		f 4 -232 230 23 -233
		mu 0 4 123 122 106 108
		f 4 -234 232 24 64
		mu 0 4 110 123 108 78
		f 4 80 -80 -301 76
		mu 0 4 124 125 126 127
		f 4 300 -79 -235 75
		mu 0 4 127 126 3 2
		f 4 84 -84 -302 79
		mu 0 4 125 128 129 126
		f 4 301 -83 -236 78
		mu 0 4 126 129 9 3
		f 4 88 -88 -303 83
		mu 0 4 128 130 131 129
		f 4 302 -87 -237 82
		mu 0 4 129 131 13 9
		f 4 92 -92 -304 87
		mu 0 4 132 133 134 135
		f 4 303 -91 -238 86
		mu 0 4 135 134 17 16
		f 4 96 -96 -305 91
		mu 0 4 133 136 137 134
		f 4 304 -95 -239 90
		mu 0 4 134 137 19 17
		f 4 100 -100 -306 95
		mu 0 4 136 138 139 137
		f 4 305 -99 -240 94
		mu 0 4 137 139 21 19
		f 4 104 -104 -307 99
		mu 0 4 138 140 141 139
		f 4 306 -103 -241 98
		mu 0 4 139 141 23 21
		f 4 105 -245 307 103
		mu 0 4 140 142 143 141
		f 4 -308 -244 242 102
		mu 0 4 141 143 29 23
		f 4 109 -249 308 244
		mu 0 4 142 144 145 143
		f 4 -309 -248 246 243
		mu 0 4 143 145 34 29
		f 4 -250 247 -310 -108
		mu 0 4 38 34 145 146
		f 4 248 110 -109 309
		mu 0 4 145 144 147 146
		f 4 114 -114 -311 108
		mu 0 4 147 148 149 146
		f 4 310 -113 -251 107
		mu 0 4 146 149 41 38
		f 4 115 -255 311 113
		mu 0 4 148 150 151 149
		f 4 -312 -254 252 112
		mu 0 4 149 151 45 41
		f 4 116 -259 312 254
		mu 0 4 150 152 153 151
		f 4 -313 -258 256 253
		mu 0 4 151 153 50 45
		f 4 117 -77 313 258
		mu 0 4 152 124 127 153
		f 4 257 -314 -76 -260
		mu 0 4 50 153 127 2
		f 4 119 260 -123 -315
		mu 0 4 154 155 156 157
		f 4 118 314 -122 -81
		mu 0 4 124 154 157 125
		f 4 -261 120 124 -124
		mu 0 4 156 155 158 159
		f 4 122 261 -127 -316
		mu 0 4 157 156 160 161
		f 4 121 315 -126 -85
		mu 0 4 125 157 161 128
		f 4 -262 123 128 -128
		mu 0 4 160 156 159 162
		f 4 126 262 -131 -317
		mu 0 4 161 160 163 164
		f 4 125 316 -130 -89
		mu 0 4 128 161 164 130
		f 4 -263 127 132 -132
		mu 0 4 163 160 162 165
		f 4 130 263 -135 -318
		mu 0 4 166 167 168 169
		f 4 129 317 -134 -93
		mu 0 4 132 166 169 133
		f 4 -264 131 136 -136
		mu 0 4 168 167 170 171
		f 4 134 264 -139 -319
		mu 0 4 169 168 172 173
		f 4 133 318 -138 -97
		mu 0 4 133 169 173 136
		f 4 -265 135 140 -140
		mu 0 4 172 168 171 174
		f 4 138 265 -143 -320
		mu 0 4 173 172 175 176
		f 4 137 319 -142 -101
		mu 0 4 136 173 176 138
		f 4 -266 139 144 -144
		mu 0 4 175 172 174 177
		f 4 142 266 -147 -321
		mu 0 4 176 175 178 179
		f 4 141 320 -146 -105
		mu 0 4 138 176 179 140
		f 4 -267 143 148 -148
		mu 0 4 178 175 177 180
		f 4 -322 268 -106 145
		mu 0 4 179 181 142 140
		f 4 -270 267 321 146
		mu 0 4 178 182 181 179
		f 4 147 149 -271 269
		mu 0 4 178 180 183 182
		f 4 -323 272 -110 -269
		mu 0 4 181 184 144 142
		f 4 -274 271 322 -268
		mu 0 4 182 185 184 181
		f 4 270 153 -275 273
		mu 0 4 182 183 186 185
		f 4 274 154 -153 -276
		mu 0 4 185 186 187 188
		f 4 -111 -273 -324 -151
		mu 0 4 147 144 184 189
		f 4 -272 275 -152 323
		mu 0 4 184 185 188 189
		f 4 151 276 -157 -325
		mu 0 4 189 188 190 191
		f 4 150 324 -156 -115
		mu 0 4 147 189 191 148
		f 4 -277 152 158 -158
		mu 0 4 190 188 187 192
		f 4 -326 278 -116 155
		mu 0 4 191 193 150 148
		f 4 -280 277 325 156
		mu 0 4 190 194 193 191
		f 4 157 159 -281 279
		mu 0 4 190 192 195 194
		f 4 -327 282 -117 -279
		mu 0 4 193 196 152 150
		f 4 -284 281 326 -278
		mu 0 4 194 197 196 193
		f 4 280 160 -285 283
		mu 0 4 194 195 198 197
		f 4 284 161 -121 -286
		mu 0 4 197 198 158 155
		f 4 -283 -328 -119 -118
		mu 0 4 152 196 154 124
		f 4 285 -120 327 -282
		mu 0 4 197 155 154 196
		f 4 288 -359 -357 -30
		mu 0 4 8 12 199 10
		f 4 357 -366 -31 356
		mu 0 4 199 200 11 10
		f 4 289 -363 -360 358
		mu 0 4 15 14 201 202
		f 4 361 -370 -378 360
		mu 0 4 203 204 205 201
		f 4 290 -364 -361 362
		mu 0 4 14 18 203 201
		f 4 291 31 -365 363
		mu 0 4 18 20 25 203
		f 4 32 -372 -362 364
		mu 0 4 25 27 204 203
		f 4 -3 -42 365 -367
		mu 0 4 66 54 11 200
		f 4 -373 366 367 -369
		mu 0 4 206 207 208 205
		f 4 -375 368 369 -371
		mu 0 4 209 206 205 204
		f 4 -377 370 371 42
		mu 0 4 55 209 204 27
		f 4 -50 372 373 340
		mu 0 4 86 207 206 87
		f 4 -374 374 375 338
		mu 0 4 87 206 209 91
		f 4 -376 376 50 336
		mu 0 4 91 209 55 69
		f 4 -368 -358 359 377
		mu 0 4 205 208 202 201;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 268.607870645459 -376.92081228928492 583.18046087455446 ;
	setAttr ".r" -type "double3" 27.861647270329851 22.600000000050439 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 804.82760985903906;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.17106107139876237 -91.0635986328125 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Crown";
	setAttr ".rp" -type "double3" 0.015796015110472107 112.81221586663933 -0.078560538975338379 ;
	setAttr ".rpt" -type "double3" -0.015795538273314348 0 -0.0015723030885654195 ;
	setAttr ".sp" -type "double3" 0.015796015110472107 112.81221586663933 -0.078560538975338379 ;
createNode mesh -n "CrownShape" -p "Crown";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.47916654 0.4848626
		 0.47916654 0.54784131 0.50624156 0.54784131 0.50624156 0.4848626 0.45209202 0.4848626
		 0.45209211 0.54784131 0.42501757 0.4848626 0.42501757 0.54784131 0.39794305 0.4848626
		 0.39794311 0.54784131 0.37086812 0.4848626 0.37086812 0.54784131 0.34379402 0.4848626
		 0.34379387 0.54784131 0.3167192 0.4848626 0.3167192 0.54784131 0.56039059 0.4848626
		 0.56039059 0.54784131 0.58746505 0.54784131 0.58746505 0.4848626 0.53331578 0.4848626
		 0.53331578 0.54784131 0.47916654 0.4713569 0.50624156 0.4713569 0.45209211 0.4713569
		 0.42501757 0.4713569 0.39794305 0.4713569 0.37086818 0.4713569 0.34379378 0.4713569
		 0.3167192 0.4713569 0.56039059 0.4713569 0.58746505 0.4713569 0.5333159 0.4713569
		 0.39794305 0.60672975 0.37086818 0.60672975 0.37086818 0.56134689 0.39794305 0.56134689
		 0.45209211 0.60672975 0.42501748 0.60672975 0.42501757 0.56134689 0.45209211 0.56134689
		 0.50624156 0.60672975 0.47916654 0.60672975 0.47916654 0.56134689 0.50624156 0.56134689
		 0.56039047 0.60672975 0.53331614 0.60672975 0.5333159 0.56134689 0.56039059 0.56134689
		 0.34379363 0.60672975 0.31671938 0.60672975 0.3167192 0.56134689 0.34379378 0.56134689
		 0.58746505 0.56134689 0.37077147 0.59735346 0.39786467 0.59735346 0.42498752 0.59735346
		 0.45212203 0.59735346 0.47924498 0.59735346 0.50633824 0.59735346 0.53339398 0.59735346
		 0.56042027 0.59735346 0.31668937 0.59735346 0.3437157 0.59735346 0.068922214 0.6119206
		 0.068922214 0.47416186 0.096474282 0.47416186 0.096474282 0.6119206 0.12402587 0.47416186
		 0.12402587 0.6119206 0.15157759 0.47416186 0.15157759 0.6119206 0.17912924 0.47416186
		 0.17912924 0.6119206 0.20668119 0.47416186 0.20668119 0.6119206 0.23423284 0.47416186
		 0.23423284 0.6119206 0.26178461 0.47416186 0.26178461 0.6119206 0.28933632 0.47416186
		 0.28933632 0.6119206 0.013818856 0.6119206 0.013818856 0.47416186 0.041370563 0.47416186
		 0.041370563 0.6119206;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt[0:59]" -type "float3"  -23.682287 94.066368 9.427494 
		-24.6968 94.066368 -6.3023138 -16.271784 94.066368 -19.624029 -1.6255089 94.066368 
		-25.44949 13.647655 94.066368 -21.553576 23.714039 94.066368 -9.4240894 24.72839 
		94.066368 6.3054113 16.303444 94.066368 19.627172 1.6571701 94.066368 25.452633 -13.616066 
		94.066368 21.556673 -20.625917 95.591354 8.2118425 -21.509554 95.591354 -5.4893141 
		-14.171156 95.591354 -17.092958 -1.4138327 95.591354 -22.167101 11.889547 95.591354 
		-18.773592 20.657709 95.591354 -8.2084551 21.541138 95.591354 5.4922662 14.202901 
		95.591354 17.096218 1.4455786 95.591354 22.170361 -11.857939 95.591354 18.776609 
		22.442276 109.35177 -8.9182549 12.916142 109.35177 -20.396849 -1.537387 109.35177 
		-24.083681 -15.397745 109.35177 -18.570889 -23.370604 109.35177 -5.9640269 -22.410515 
		109.35177 8.9216547 -12.884434 109.35177 20.40012 1.5690563 109.35177 24.08675 15.429388 
		109.35177 18.573893 23.402311 109.35177 5.9672995 23.714039 104.22746 -9.4240894 
		13.647655 104.22746 -21.553576 -1.6255089 104.22746 -25.44949 -16.271784 104.22746 
		-19.624029 -24.6968 104.22746 -6.3023138 -23.682287 104.22746 9.427494 -13.616066 
		104.22746 21.556673 1.6571701 104.22746 25.452633 16.303444 104.22746 19.627172 24.72839 
		104.22746 6.3054113 20.657677 102.70248 -8.2084427 11.889513 102.70248 -18.773579 
		-1.4138327 102.70248 -22.167101 -14.17119 102.70248 -17.092945 -21.509554 102.70248 
		-5.4893141 -20.625952 102.70248 8.2118559 -11.857965 102.70248 18.776545 1.4455442 
		102.70248 22.170374 14.202901 102.70248 17.096218 21.541128 102.70248 5.4923449 20.6761 
		108.29306 -8.1621208 11.907963 108.29306 -18.727194 -1.3953834 108.29306 -22.120716 
		-14.15274 108.29306 -17.04656 -21.491106 108.29306 -5.4429293 -20.607529 108.29306 
		8.2581768 -11.839516 108.29306 18.822929 1.4639678 108.29306 22.216694 14.221324 
		108.29306 17.142538 21.559553 108.29306 5.5386653;
	setAttr -s 60 ".vt[0:59]"  -2.63311982 10.25396156 0.96719176 -2.74584341 10.25396156 -0.78056461
		 -1.80973053 10.25396156 -2.26075506 -0.18236668 10.25396156 -2.9080286 1.51465154 10.25396156 -2.47514915
		 2.63313866 10.25396156 -1.12742865 2.74584436 10.25396156 0.62029374 1.80973923 10.25396156 2.10048938
		 0.18237542 10.25396156 2.74776292 -1.51465082 10.25396156 2.31487846 -2.29352307 10.42340469 0.83211935
		 -2.39170504 10.42340469 -0.69023132 -1.57632744 10.42340469 -1.97952509 -0.15884711 10.42340469 -2.54331875
		 1.31930625 10.42340469 -2.16626215 2.29354644 10.42340469 -0.99235815 2.39170527 10.42340469 0.5299443
		 1.57634544 10.42340469 1.81927228 0.15886526 10.42340469 2.38306594 -1.31930339 10.42340469 2.005982399
		 2.49183178 11.95233917 -1.071224809 1.43337226 11.95233917 -2.3466239 -0.17257537 11.95233917 -2.75627208
		 -1.71261513 11.95233917 -2.14373946 -2.59848833 11.95233917 -0.7429772 -2.49181175 11.95233917 0.91098744
		 -1.43335831 11.95233917 2.18637252 0.172585 11.95233917 2.59599805 1.71262181 11.95233917 1.98345828
		 2.5985024 11.95233917 0.58272576 2.63313866 11.38297081 -1.12742865 1.51465154 11.38297081 -2.47514915
		 -0.18236668 11.38297081 -2.9080286 -1.80973053 11.38297081 -2.26075506 -2.74584341 11.38297081 -0.78056461
		 -2.63311982 11.38297081 0.96719176 -1.51465082 11.38297081 2.31487846 0.18237542 11.38297081 2.74776292
		 1.80973923 11.38297081 2.10048938 2.74584436 11.38297081 0.62029374 2.29354286 11.21352959 -0.99235672
		 1.31930244 11.21352959 -2.16626072 -0.15884711 11.21352959 -2.54331875 -1.57633126 11.21352959 -1.97952366
		 -2.39170504 11.21352959 -0.69023132 -2.29352689 11.21352959 0.83212084 -1.31930625 11.21352959 2.0059752464
		 0.15886144 11.21352959 2.38306737 1.57634544 11.21352959 1.81927228 2.39170408 11.21352959 0.529953
		 2.29558992 11.83470535 -0.98720992 1.32135236 11.83470535 -2.16110682 -0.15679719 11.83470535 -2.53816485
		 -1.57428133 11.83470535 -1.97436976 -2.38965511 11.83470535 -0.68507743 -2.29147983 11.83470535 0.83726764
		 -1.31725633 11.83470535 2.011129141 0.16090851 11.83470535 2.38821411 1.57839251 11.83470535 1.82441902
		 2.39375138 11.83470535 0.53509974;
	setAttr -s 120 ".ed[0:119]"  0 1 0 2 3 0 4 5 0 6 7 0 8 9 0 11 44 0 44 45 0
		 45 10 0 10 11 0 12 11 0 44 43 0 43 12 0 13 42 0 42 43 0 12 13 0 14 13 0 42 41 0 41 14 0
		 15 40 0 40 41 0 14 15 0 16 49 0 49 40 0 15 16 0 17 48 0 48 49 0 16 17 0 18 17 0 48 47 0
		 47 18 0 19 46 0 46 47 0 18 19 0 10 19 0 46 45 0 0 10 0 11 1 0 2 12 0 1 2 0 13 3 0
		 4 14 0 3 4 0 15 5 0 6 16 0 5 6 0 17 7 0 8 18 0 7 8 0 19 9 0 9 0 0 21 20 0 20 30 0
		 30 31 0 31 21 0 23 22 0 22 32 0 32 33 0 33 23 0 25 24 0 24 34 0 34 35 0 35 25 0 27 26 0
		 26 36 0 36 37 0 37 27 0 29 28 0 28 38 0 38 39 0 39 29 0 30 40 0 41 31 0 32 42 0 31 32 0
		 43 33 0 34 44 0 33 34 0 45 35 0 36 46 0 35 36 0 47 37 0 38 48 0 37 38 0 49 39 0 39 30 0
		 20 50 0 50 40 0 41 51 0 51 21 0 50 51 0 22 52 0 52 42 0 43 53 0 53 23 0 52 53 0 24 54 0
		 54 44 0 45 55 0 55 25 0 54 55 0 26 56 0 56 46 0 47 57 0 57 27 0 56 57 0 28 58 0 58 48 0
		 49 59 0 59 29 0 58 59 0 30 5 0 4 31 0 32 3 0 2 33 0 34 1 0 0 35 0 36 9 0 8 37 0 38 7 0
		 6 39 0;
	setAttr -s 240 ".n";
	setAttr ".n[0:165]" -type "float3"  0.1858497 3.914966e-007 -0.011984885
		 0.1858497 3.914966e-007 -0.011984885 0.18584971 3.9149668e-007 -0.011984891 0.18584971
		 3.9149668e-007 -0.011984891 -0.15740041 1.2418939e-008 -0.099543326 -0.1574004 1.2418939e-008
		 -0.099543326 -0.1574004 1.2418963e-008 -0.099543326 -0.1574004 1.2418963e-008 -0.099543326
		 0.068829499 -3.8296781e-007 0.17304993 0.068829499 -3.8296781e-007 0.17304993 0.068829499
		 -3.8296781e-007 0.17304993 0.068829499 -3.8296781e-007 0.17304993 0.046032261 5.8599386e-007
		 -0.18045717 0.04603225 5.8599375e-007 -0.18045717 0.04603225 5.8599375e-007 -0.18045716
		 0.04603225 5.8599375e-007 -0.18045716 -0.14331026 -1.095516e-006 0.11893662 -0.14331026
		 -1.095516e-006 0.11893661 -0.14331025 -1.0955158e-006 0.11893661 -0.14331026 -1.095516e-006
		 0.11893662 -0.18584971 -6.8888744e-007 0.011984676 -0.18584971 -6.8888744e-007 0.011984676
		 -0.18584971 -6.8888755e-007 0.011984676 -0.18584971 -6.8888755e-007 0.011984683 -0.15740055
		 4.3726479e-007 -0.099543072 -0.15740056 4.3726482e-007 -0.099543087 -0.15740055 4.3726479e-007
		 -0.099543072 -0.15740056 4.3726482e-007 -0.099543087 0.068829499 -3.8296781e-007
		 0.17304993 0.068829499 -3.8296781e-007 0.17304993 0.068829499 -3.8296781e-007 0.17304993
		 0.068829499 -3.8296781e-007 0.17304993 0.046031971 2.248745e-007 -0.18045723 0.046031982
		 2.248745e-007 -0.18045726 0.046031971 2.248745e-007 -0.18045726 0.046031971 2.248745e-007
		 -0.18045726 -0.14331043 -4.4815269e-007 0.11893641 -0.14331041 -4.4815266e-007 0.1189364
		 -0.14331043 -4.4815266e-007 0.11893641 -0.14331043 -4.4815266e-007 0.11893641 -0.13690916
		 0.28143701 0.0088292425 -0.13690914 0.28143701 0.0088292425 -0.13690914 0.28143701
		 0.0088292425 -0.13690916 0.28143701 0.0088292425 0.11595138 -0.28143737 0.073330276
		 0.1159514 -0.28143737 0.073330276 0.11595138 -0.28143737 0.073330276 0.1159514 -0.2814374
		 0.073330276 -0.050704461 0.28143656 -0.12748027 -0.050704457 0.28143653 -0.12748025
		 -0.050704461 0.28143653 -0.12748027 -0.050704461 0.28143653 -0.12748027 -0.033910323
		 -0.28143623 0.1329371 -0.033910323 -0.28143626 0.1329371 -0.033910323 -0.28143626
		 0.1329371 -0.033910315 -0.28143626 0.13293712 0.10557248 0.28143522 -0.087616824
		 0.10557248 0.28143522 -0.087616839 0.10557248 0.28143522 -0.087616824 0.10557248
		 0.28143522 -0.087616824 -0.13690978 -0.28143537 0.0088289892 -0.1369098 -0.28143537
		 0.008828992 -0.1369098 -0.2814354 0.0088289892 -0.1369098 -0.2814354 0.0088289892
		 0.11595166 0.28143644 0.073330179 0.11595168 0.28143644 0.073330164 0.11595166 0.2814365
		 0.073330179 0.11595166 0.28143644 0.073330179 -0.050704475 -0.28143635 -0.12748007
		 -0.050704475 -0.28143635 -0.12748007 -0.050704475 -0.28143632 -0.12748007 -0.050704479
		 -0.28143641 -0.12748007 -0.033910103 0.2814368 0.13293673 -0.033910096 0.2814368
		 0.13293673 -0.033910092 0.28143677 0.13293672 -0.033910092 0.2814368 0.13293672 0.1055722
		 -0.28143677 -0.087616153 0.1055722 -0.2814368 -0.087616168 0.1055722 -0.28143677
		 -0.087616168 0.10557222 -0.28143677 -0.087616161 0.14239386 0.047004186 -0.11817487
		 0.14239384 0.047004178 -0.11817487 0.14239387 0.047004189 -0.11817487 0.14239384
		 0.047004186 -0.11817487 -0.068388991 0.047004703 -0.17194261 -0.068388991 0.047004703
		 -0.17194261 -0.068388991 0.0470047 -0.17194261 -0.068388999 0.047004703 -0.17194264
		 -0.18466043 0.04700473 0.011909068 -0.18466042 0.04700473 0.011909068 -0.18466042
		 0.047004733 0.011909062 -0.18466042 0.047004726 0.011909068 -0.044251394 0.11462319
		 0.17347762 -0.044284619 0.11357085 0.17360774 -0.045737285 0.047003958 0.17930256
		 -0.045737285 0.047003966 0.17930256 0.15639333 0.047003165 0.098906294 0.15639336
		 0.047003169 0.098906301 0.15639333 0.047003161 0.098906294 0.15639333 0.047003169
		 0.098906301 -0.033910308 0.28143725 0.13293648 -0.033910286 0.28143725 0.13293654
		 -0.033910278 0.28143725 0.13293654 -0.033910308 0.28143725 0.13293648 0.11595135
		 0.28143728 0.073330119 0.11595134 0.28143725 0.073330127 0.11595135 0.28143725 0.073330119
		 0.11595134 0.28143725 0.073330127 0.10557202 0.28143722 -0.08761622 0.10557202 0.28143707
		 -0.08761622 0.10557202 0.28143722 -0.08761622 0.10557202 0.28143722 -0.08761622 -0.050704189
		 0.28143781 -0.12747984 -0.050704189 0.28143778 -0.12747984 -0.050704189 0.28143781
		 -0.12747984 -0.050704189 0.28143781 -0.12747984 -0.13690881 0.28143787 0.0088289203
		 -0.13690881 0.2814379 0.0088289082 -0.13690881 0.2814379 0.008828911 -0.13690881
		 0.2814379 0.008828911 0.070759341 -0.00060163654 0.17226955 0.070759349 -0.0006016366
		 0.17226957 0.070759349 -0.0006016366 0.17226957 0.070759349 -0.00060163654 0.17226957
		 -0.15828729 0.00048405497 -0.098126687 -0.15828727 0.00048405491 -0.098126672 -0.15828729
		 0.00048405491 -0.098126687 -0.15828729 0.00048405497 -0.098126695 -0.14331017 -0.000513768
		 0.11893652 -0.14331017 -0.00051376794 0.11893652 -0.14331017 -0.000513768 0.11893652
		 -0.14331017 -0.00051376794 0.11893652 0.18580759 -0.0001846901 -0.012620158 0.18580759
		 -0.0001846901 -0.012620158 0.18580759 -0.0001846901 -0.012620158 0.18580759 -0.0001846901
		 -0.012620158 -0.14371677 -0.00018393835 0.11844504 -0.14371677 -0.00018393835 0.11844504
		 -0.14371677 -0.00018393832 0.11844504 -0.14371677 -0.00018393835 0.11844504 0.06882894
		 -0.0016621564 0.17304854 0.06882894 -0.0016621564 0.17304854 0.06882894 -0.0016621564
		 0.17304854 0.06882894 -0.0016621564 0.17304854 0.047650017 0.00048358832 -0.1800366
		 0.047650017 0.00048358846 -0.1800366 0.047650017 0.00048358846 -0.1800366 0.047650017
		 0.00048358846 -0.1800366 0.066891216 -0.00060152146 0.17380811 0.066891201 -0.00060152146
		 0.17380808 0.066891208 -0.00060152146 0.17380808 0.066891208 -0.00060152134 0.17380808
		 0.18584958 -0.00051371421 -0.011984617 0.18584958 -0.00051371421 -0.011984617 0.18584958
		 -0.00051371421 -0.011984617 0.18584958 -0.00051371421 -0.011984617 -0.15648702 0.00048991397
		 -0.10097289 -0.15648702 0.00048991392 -0.10097289 -0.15648702 0.00048991386 -0.10097289
		 -0.15648703 0.00048991403 -0.10097289 0.1858903 -0.0001879598 -0.011337698 0.18589029
		 -0.0001879598 -0.011337703 0.1858903 -0.0001879598 -0.011337703 0.1858903 -0.0001879598
		 -0.011337709 0.046031762 0.0013449559 -0.18045628 0.046031762 0.0013449559 -0.18045628;
	setAttr ".n[166:239]" -type "float3"  0.046031762 0.0013449559 -0.18045628
		 0.046031762 0.0013449559 -0.18045628 -0.14289454 -0.00018719272 0.11943567 -0.14289452
		 -0.00018719268 0.11943565 -0.14289452 -0.00018719268 0.11943565 -0.14289452 -0.00018719271
		 0.11943565 0.044385292 0.00048920937 -0.18086918 0.044385284 0.00048920943 -0.18086921
		 0.044385292 0.00048920931 -0.18086918 0.044385292 0.00048920931 -0.18086918 -0.1573998
		 0.0013447152 -0.099542461 -0.15739982 0.0013447152 -0.099542469 -0.1573998 0.0013447152
		 -0.099542461 -0.15739982 0.0013447152 -0.099542469 -0.044284619 0.11357085 0.17360774
		 -0.044251394 0.11462319 0.17347762 0.036737204 0.25076291 -0.14401951 0.036737204
		 0.25076288 -0.14401951 -0.11307873 0.25566652 0.093846075 -0.11307873 0.25566649
		 0.093846075 -0.11307873 0.25566649 0.093846075 -0.11307873 0.25566649 0.093846075
		 0.053926867 0.25861126 0.1355821 0.053926867 0.25861126 0.1355821 0.053926867 0.25861123
		 0.1355821 0.053926867 0.25861126 0.13558212 0.14664508 0.25566337 -0.0094570164 0.14664508
		 0.25566337 -0.0094570192 0.14664508 0.25566337 -0.0094570192 0.14664508 0.25566337
		 -0.0094570164 -0.12561806 0.2507641 -0.079443201 -0.12561803 0.2507641 -0.079443209
		 -0.12561806 0.2507641 -0.079443209 -0.12561804 0.2507641 -0.079443209 0.14331065
		 1.1837007e-007 -0.11893614 0.14331065 1.1837007e-007 -0.11893614 0.14331065 1.1837007e-007
		 -0.11893614 0.14331065 1.1837007e-007 -0.11893614 -0.046031971 -3.0984367e-007 0.18045723
		 -0.046031971 -3.0984367e-007 0.18045723 -0.046031971 -3.0984367e-007 0.18045723 -0.046031971
		 -3.0984367e-007 0.18045723 -0.068829499 3.8296781e-007 -0.17304993 -0.068829499 3.8296781e-007
		 -0.17304993 -0.068829499 3.8296781e-007 -0.17304993 -0.068829499 3.8296781e-007 -0.17304993
		 0.15740025 -3.0981144e-007 0.099543564 0.15740025 -3.0981144e-007 0.099543564 0.15740025
		 -3.0981144e-007 0.099543564 0.15740025 -3.0981144e-007 0.099543564 -0.18584965 1.183166e-007
		 0.011985666 -0.18584965 1.183166e-007 0.011985666 -0.18584965 1.183166e-007 0.011985666
		 -0.18584965 1.183166e-007 0.011985666 0.1433109 1.1836927e-007 -0.11893582 0.1433109
		 1.1836927e-007 -0.11893582 0.1433109 1.1836927e-007 -0.11893582 0.1433109 1.1836927e-007
		 -0.11893582 -0.046031803 -3.0984384e-007 0.18045728 -0.046031803 -3.0984384e-007
		 0.18045728 -0.046031803 -3.0984384e-007 0.18045728 -0.046031803 -3.0984384e-007 0.18045728
		 -0.068829499 3.8296781e-007 -0.17304993 -0.068829499 3.8296781e-007 -0.17304993 -0.068829499
		 3.8296781e-007 -0.17304993 -0.068829499 3.8296781e-007 -0.17304993 0.15740044 -3.0981104e-007
		 0.099543266 0.15740044 -3.0981104e-007 0.099543266 0.15740044 -3.0981104e-007 0.099543266
		 0.15740044 -3.0981104e-007 0.099543266 0.18584967 -1.1831742e-007 -0.011985254 0.18584967
		 -1.1831742e-007 -0.011985254 0.18584967 -1.1831742e-007 -0.011985254 0.18584967 -1.1831742e-007
		 -0.011985254;
	setAttr -s 60 -ch 240 ".fc[0:59]" -type "polyFaces" 
		f 4 5 6 7 8
		mu 0 4 0 1 2 3
		f 4 -12 -11 -6 -10
		mu 0 4 4 5 1 0
		f 4 12 13 11 14
		mu 0 4 6 7 5 4
		f 4 -18 -17 -13 -16
		mu 0 4 8 9 7 6
		f 4 18 19 17 20
		mu 0 4 10 11 9 8
		f 4 21 22 -19 23
		mu 0 4 12 13 11 10
		f 4 24 25 -22 26
		mu 0 4 14 15 13 12
		f 4 -30 -29 -25 -28
		mu 0 4 16 17 18 19
		f 4 30 31 29 32
		mu 0 4 20 21 17 16
		f 4 -8 -35 -31 -34
		mu 0 4 3 2 21 20
		f 4 -37 -9 -36 0
		mu 0 4 22 0 3 23
		f 4 37 9 36 38
		mu 0 4 24 4 0 22
		f 4 -40 -15 -38 1
		mu 0 4 25 6 4 24
		f 4 40 15 39 41
		mu 0 4 26 8 6 25
		f 4 -43 -21 -41 2
		mu 0 4 27 10 8 26
		f 4 43 -24 42 44
		mu 0 4 28 12 10 27
		f 4 -46 -27 -44 3
		mu 0 4 29 14 12 28
		f 4 46 27 45 47
		mu 0 4 30 16 19 31
		f 4 -49 -33 -47 4
		mu 0 4 32 20 16 30
		f 4 35 33 48 49
		mu 0 4 23 3 20 32
		f 4 50 51 52 53
		mu 0 4 33 34 35 36
		f 4 54 55 56 57
		mu 0 4 37 38 39 40
		f 4 58 59 60 61
		mu 0 4 41 42 43 44
		f 4 62 63 64 65
		mu 0 4 45 46 47 48
		f 4 66 67 68 69
		mu 0 4 49 50 51 52
		f 4 72 16 71 73
		mu 0 4 39 7 9 36
		f 4 75 10 74 76
		mu 0 4 43 1 5 40
		f 4 78 34 77 79
		mu 0 4 47 21 2 44
		f 4 81 28 80 82
		mu 0 4 53 18 17 48
		f 4 70 -23 83 84
		mu 0 4 35 11 13 52
		f 4 -52 85 86 -71
		mu 0 4 35 34 54 11
		f 4 -72 87 88 -54
		mu 0 4 36 9 55 33
		f 4 -87 89 -88 -20
		mu 0 4 11 54 55 9
		f 4 -56 90 91 -73
		mu 0 4 39 38 56 7
		f 4 -75 92 93 -58
		mu 0 4 40 5 57 37
		f 4 -92 94 -93 -14
		mu 0 4 7 56 57 5
		f 4 -60 95 96 -76
		mu 0 4 43 42 58 1
		f 4 -78 97 98 -62
		mu 0 4 44 2 59 41
		f 4 -97 99 -98 -7
		mu 0 4 1 58 59 2
		f 4 -64 100 101 -79
		mu 0 4 47 46 60 21
		f 4 -81 102 103 -66
		mu 0 4 48 17 61 45
		f 4 -102 104 -103 -32
		mu 0 4 21 60 61 17
		f 4 -68 105 106 -82
		mu 0 4 51 50 62 15
		f 4 -84 107 108 -70
		mu 0 4 52 13 63 49
		f 4 -107 109 -108 -26
		mu 0 4 15 62 63 13
		f 4 -63 -104 -105 -101
		mu 0 4 46 45 61 60
		f 4 -51 -89 -90 -86
		mu 0 4 34 33 55 54
		f 4 -55 -94 -95 -91
		mu 0 4 38 37 57 56
		f 4 -59 -99 -100 -96
		mu 0 4 42 41 59 58
		f 4 -67 -109 -110 -106
		mu 0 4 50 49 63 62
		f 4 110 -3 111 -53
		mu 0 4 64 65 66 67
		f 4 -112 -42 -113 -74
		mu 0 4 67 66 68 69
		f 4 112 -2 113 -57
		mu 0 4 69 68 70 71
		f 4 -114 -39 -115 -77
		mu 0 4 71 70 72 73
		f 4 114 -1 115 -61
		mu 0 4 73 72 74 75
		f 4 -116 -50 -117 -80
		mu 0 4 75 74 76 77
		f 4 116 -5 117 -65
		mu 0 4 77 76 78 79
		f 4 -118 -48 -119 -83
		mu 0 4 79 78 80 81
		f 4 118 -4 119 -69
		mu 0 4 82 83 84 85
		f 4 -120 -45 -111 -85
		mu 0 4 85 84 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Sign";
	setAttr ".rp" -type "double3" -6.554670437292186e-007 -25.931503285926247 8.4097047048308947e-007 ;
	setAttr ".rpt" -type "double3" 1.7862988508200442e-007 0 1.1270384592315709e-007 ;
	setAttr ".sp" -type "double3" -6.554670437292186e-007 -25.931503285926247 8.4097047048308947e-007 ;
createNode mesh -n "SignShape" -p "Sign";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.84124177694320679 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 147 ".uvst[0].uvsp[0:146]" -type "float2" 0.050000012 0.87992764
		 0 0.87992764 0 0.87240046 0.050000012 0.87240046 0.099999994 0.87992764 0.099999994
		 0.87240046 0.15000001 0.87992764 0.15000001 0.87240046 0.19999999 0.87992764 0.19999999
		 0.87240046 0.25 0.87992764 0.25 0.87240046 0.30000001 0.87992764 0.30000001 0.87240046
		 0.35000002 0.87992764 0.35000002 0.87240046 0.40000004 0.87992764 0.40000004 0.87240046
		 0.45000005 0.87992764 0.45000005 0.87240046 0.50000006 0.87992764 0.50000006 0.87240046
		 0.55000007 0.87992764 0.55000007 0.87240046 0.60000008 0.87992764 0.60000008 0.87240046
		 0.6500001 0.87992764 0.6500001 0.87240046 0.70000011 0.87992764 0.70000011 0.87240046
		 0.75000012 0.87992764 0.75000012 0.87240046 0.80000013 0.87992764 0.80000013 0.87240046
		 0.85000014 0.87992764 0.85000014 0.87240046 0.90000015 0.87992764 0.90000015 0.87240046
		 0.95000017 0.87992764 0.95000017 0.87240046 1.000000119209 0.87992764 1.000000119209
		 0.87240046 0 0.86648077 0.050000012 0.86648077 0.099999994 0.86648077 0.15000001
		 0.86648077 0.19999999 0.86648077 0.25 0.86648077 0.30000001 0.86648077 0.35000002
		 0.86648077 0.40000004 0.86648077 0.45000005 0.86648077 0.50000006 0.86648077 0.55000007
		 0.86648077 0.60000008 0.86648077 0.6500001 0.86648077 0.70000011 0.86648077 0.75000012
		 0.86648077 0.80000013 0.86648077 0.85000014 0.86648077 0.90000015 0.86648077 0.95000017
		 0.86648077 1.000000119209 0.86648077 0.050000012 0.86648077 0 0.86648077 0 0.81175721
		 0.050000012 0.81175721 0.099999994 0.86648077 0.099999994 0.81175721 0.15000001 0.86648077
		 0.15000001 0.81175721 0.19999999 0.86648077 0.19999999 0.81175721 0.25 0.86648077
		 0.25 0.81175721 0.30000001 0.86648077 0.30000001 0.81175721 0.35000002 0.86648077
		 0.35000002 0.81175721 0.40000004 0.86648077 0.40000004 0.81175721 0.45000005 0.86648077
		 0.45000005 0.81175721 0.50000006 0.86648077 0.50000006 0.81175721 0.55000007 0.86648077
		 0.55000007 0.81175721 0.60000008 0.86648077 0.60000008 0.81175721 0.6500001 0.86648077
		 0.6500001 0.81175721 0.70000011 0.86648077 0.70000011 0.81175721 0.75000012 0.86648077
		 0.75000012 0.81175721 0.80000013 0.86648077 0.80000013 0.81175721 0.85000014 0.86648077
		 0.85000014 0.81175721 0.90000015 0.86648077 0.90000015 0.81175721 0.95000017 0.86648077
		 0.95000017 0.81175721 1.000000119209 0.86648077 1.000000119209 0.81175721 0.050000012
		 0.81175721 0 0.81175721 0 0.80255592 0.050000012 0.80255592 0.099999994 0.81175721
		 0.099999994 0.80255592 0.15000001 0.81175721 0.15000001 0.80255592 0.19999999 0.81175721
		 0.19999999 0.80255592 0.25 0.81175721 0.25 0.80255592 0.30000001 0.81175721 0.30000001
		 0.80255592 0.35000002 0.81175721 0.35000002 0.80255592 0.40000004 0.81175721 0.40000004
		 0.80255592 0.45000005 0.81175721 0.45000005 0.80255592 0.50000006 0.81175721 0.50000006
		 0.80255592 0.55000007 0.81175721 0.55000007 0.80255592 0.60000008 0.81175721 0.60000008
		 0.80255592 0.6500001 0.81175721 0.6500001 0.80255592 0.70000011 0.81175721 0.70000011
		 0.80255592 0.75000012 0.81175721 0.75000012 0.80255592 0.80000013 0.81175721 0.80000013
		 0.80255592 0.85000014 0.81175721 0.85000014 0.80255592 0.90000015 0.81175721 0.90000015
		 0.80255592 0.95000017 0.81175721 0.95000017 0.80255592 1.000000119209 0.81175721
		 1.000000119209 0.80255592;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 120 ".pt[0:119]" -type "float3"  91.629402 -46.932915 -2.2173746e-005 
		87.144745 -46.932915 -28.315062 74.129745 -46.932915 -53.858437 53.858425 -46.932915 
		-74.129761 28.315048 -46.932915 -87.144745 1.1234942e-005 -46.932915 -91.629417 -28.315035 
		-46.932915 -87.144768 -53.85841 -46.932915 -74.129761 -74.12973 -46.932915 -53.858444 
		-87.144737 -46.932915 -28.315063 -91.629395 -46.932915 -2.2173746e-005 -87.144737 
		-46.932915 28.315029 -74.12973 -46.932915 53.858402 -53.858425 -46.932915 74.12973 
		-28.315041 -46.932915 87.144737 1.3965709e-005 -46.932915 91.629402 28.315063 -46.932915 
		87.144737 53.858448 -46.932915 74.129753 74.129829 -46.932915 53.858421 87.144806 
		-46.932915 28.315033 91.629402 0.17658997 -2.2173746e-005 87.144745 0.17658997 -28.315062 
		74.129745 0.17658997 -53.858437 53.858425 0.17658997 -74.129761 28.315048 0.17658997 
		-87.144745 1.1234942e-005 0.17658997 -91.629417 -28.315035 0.17658997 -87.144768 
		-53.85841 0.17658997 -74.129761 -74.12973 0.17658997 -53.858444 -87.144737 0.17658997 
		-28.315063 -91.629395 0.17658997 -2.2173746e-005 -87.144737 0.17658997 28.315029 
		-74.12973 0.17658997 53.858402 -53.858425 0.17658997 74.12973 -28.315041 0.17658997 
		87.144737 1.3965709e-005 0.17658997 91.629402 28.315063 0.17658997 87.144737 53.858448 
		0.17658997 74.129753 74.129829 0.17658997 53.858421 87.144806 0.17658997 28.315033 
		103.04648 -7.8647156 -1.4764583e-005 98.003029 -7.8647156 -31.843124 83.366348 -7.8647156 
		-60.569214 60.569199 -7.8647156 -83.366364 31.843115 -7.8647156 -98.003044 5.9542213e-006 
		-7.8647156 -103.04649 -31.843109 -7.8647156 -98.003052 -60.569199 -7.8647156 -83.366371 
		-83.366348 -7.8647156 -60.569221 -98.003036 -7.8647156 -31.843132 -103.04648 -7.8647156 
		-1.4764583e-005 -98.003036 -7.8647156 31.843102 -83.366356 -7.8647156 60.569195 -60.56921 
		-7.8647156 83.366348 -31.843119 -7.8647156 98.003044 9.0252452e-006 -7.8647156 103.04649 
		31.843136 -7.8647156 98.003052 60.569233 -7.8647156 83.366379 83.366417 -7.8647156 
		60.569206 98.00309 -7.8647156 31.843113 103.04648 -38.891609 -1.4764583e-005 98.003029 
		-38.891609 -31.843124 83.366348 -38.891609 -60.569214 60.569199 -38.891609 -83.366364 
		31.843115 -38.891609 -98.003044 5.9542213e-006 -38.891609 -103.04649 -31.843109 -38.891609 
		-98.003052 -60.569199 -38.891609 -83.366371 -83.366348 -38.891609 -60.569221 -98.003036 
		-38.891609 -31.843132 -103.04648 -38.891609 -1.4764583e-005 -98.003036 -38.891609 
		31.843102 -83.366356 -38.891609 60.569195 -60.56921 -38.891609 83.366348 -31.843119 
		-38.891609 98.003044 9.0252452e-006 -38.891609 103.04649 31.843136 -38.891609 98.003052 
		60.569233 -38.891609 83.366379 83.366417 -38.891609 60.569206 98.00309 -38.891609 
		31.843113 96.941658 -11.972546 -6.7460278e-006 92.197006 -11.972546 -29.956635 96.941658 
		-34.783779 -6.7460278e-006 92.197006 -34.783779 -29.956635 78.427444 -11.972546 -56.980888 
		78.427444 -34.783779 -56.980888 56.980877 -11.972546 -78.42746 56.980877 -34.783779 
		-78.42746 29.956625 -11.972546 -92.197006 29.956625 -34.783779 -92.197006 4.8475217e-006 
		-11.972546 -96.941681 4.8475217e-006 -34.783779 -96.941681 -29.956619 -11.972546 
		-92.197014 -29.956619 -34.783779 -92.197014 -56.980869 -11.972546 -78.427467 -56.980869 
		-34.783779 -78.427467 -78.427444 -11.972546 -56.980896 -78.427444 -34.783779 -56.980896 
		-92.197006 -11.972546 -29.956638 -92.197006 -34.783779 -29.956638 -96.941658 -11.972546 
		-1.5201963e-005 -96.941658 -34.783779 -1.5201963e-005 -92.197006 -11.972546 29.956612 
		-92.197006 -34.783779 29.956612 -78.427452 -11.972546 56.980869 -78.427452 -34.783779 
		56.980869 -56.980888 -11.972546 78.427444 -56.980888 -34.783779 78.427444 -29.956625 
		-11.972546 92.197006 -29.956625 -34.783779 92.197006 1.0718201e-005 -11.972546 96.941681 
		1.0718201e-005 -34.783779 96.941681 29.956642 -11.972546 92.197014 29.956642 -34.783779 
		92.197014 56.980907 -11.972546 78.427475 56.980907 -34.783779 78.427475 78.427513 
		-11.972546 56.980888 78.427513 -34.783779 56.980888 92.197067 -11.972546 29.956629 
		92.197067 -34.783779 29.956629;
	setAttr -s 120 ".vt[0:119]"  10.18104458 -4.4096241 -1.4975525e-006 9.68274879 -4.4096241 -3.14611697
		 8.23663807 -4.4096241 -5.98426962 5.98426914 -4.4096241 -8.23663902 3.14611602 -4.4096241 -9.68274879
		 7.9133753e-007 -4.4096241 -10.18104553 -3.14611554 -4.4096241 -9.6827507 -5.98426819 -4.4096241 -8.23663902
		 -8.23663712 -4.4096241 -5.98427057 -9.68274879 -4.4096241 -3.14611721 -10.18104458 -4.4096241 -1.4975525e-006
		 -9.68274879 -4.4096241 3.1461153 -8.23663712 -4.4096241 5.98426771 -5.9842701 -4.4096241 8.23663807
		 -3.14611602 -4.4096241 9.68274975 1.094756e-006 -4.4096241 10.18104553 3.14611769 -4.4096241 9.68274975
		 5.98427153 -4.4096241 8.23663998 8.23664761 -4.4096241 5.9842701 9.68275547 -4.4096241 3.14611578
		 10.18104458 -0.69705582 -1.4975525e-006 9.68274879 -0.69705582 -3.14611697 8.23663807 -0.69705582 -5.98426962
		 5.98426914 -0.69705582 -8.23663902 3.14611602 -0.69705582 -9.68274879 7.9133753e-007 -0.69705582 -10.18104553
		 -3.14611554 -0.69705582 -9.6827507 -5.98426819 -0.69705582 -8.23663902 -8.23663712 -0.69705582 -5.98427057
		 -9.68274879 -0.69705582 -3.14611721 -10.18104458 -0.69705582 -1.4975525e-006 -9.68274879 -0.69705582 3.1461153
		 -8.23663712 -0.69705582 5.98426771 -5.9842701 -0.69705582 8.23663807 -3.14611602 -0.69705582 9.68274975
		 1.094756e-006 -0.69705582 10.18104553 3.14611769 -0.69705582 9.68274975 5.98427153 -0.69705582 8.23663998
		 8.23664761 -0.69705582 5.9842701 9.68275547 -0.69705582 3.14611578 11.44960785 -1.33076859 -6.7431228e-007
		 10.88922501 -1.33076859 -3.53812408 9.26292706 -1.33076859 -6.7299118 6.72991037 -1.33076859 -9.26292801
		 3.53812337 -1.33076859 -10.88922596 2.0459075e-007 -1.33076859 -11.44960976 -3.53812361 -1.33076859 -10.88922691
		 -6.72991133 -1.33076859 -9.26292896 -9.26292801 -1.33076859 -6.72991276 -10.88922691 -1.33076859 -3.5381248
		 -11.4496088 -1.33076859 -6.7431228e-007 -10.88922691 -1.33076859 3.53812337 -9.26292896 -1.33076859 6.72991133
		 -6.72991276 -1.33076859 9.26292896 -3.5381248 -1.33076859 10.88922787 5.4581562e-007 -1.33076859 11.44961166
		 3.53812575 -1.33076859 10.88922882 6.72991419 -1.33076859 9.26293182 9.26293468 -1.33076859 6.72991276
		 10.88923168 -1.33076859 3.53812456 11.44960785 -3.77591133 -6.7431228e-007 10.88922501 -3.77591133 -3.53812408
		 9.26292706 -3.77591133 -6.7299118 6.72991037 -3.77591133 -9.26292801 3.53812337 -3.77591133 -10.88922596
		 2.0459075e-007 -3.77591133 -11.44960976 -3.53812361 -3.77591133 -10.88922691 -6.72991133 -3.77591133 -9.26292896
		 -9.26292801 -3.77591133 -6.72991276 -10.88922691 -3.77591133 -3.5381248 -11.4496088 -3.77591133 -6.7431228e-007
		 -10.88922691 -3.77591133 3.53812337 -9.26292896 -3.77591133 6.72991133 -6.72991276 -3.77591133 9.26292896
		 -3.5381248 -3.77591133 10.88922787 5.4581562e-007 -3.77591133 11.44961166 3.53812575 -3.77591133 10.88922882
		 6.72991419 -3.77591133 9.26293182 9.26293468 -3.77591133 6.72991276 10.88923168 -3.77591133 3.53812456
		 10.77129459 -1.65449524 2.1663828e-007 10.24411106 -1.65449524 -3.3285141 10.77129459 -3.45218468 2.1663828e-007
		 10.24411106 -3.45218468 -3.3285141 8.71415997 -1.65449524 -6.33120871 8.71415997 -3.45218468 -6.33120871
		 6.33120823 -1.65449524 -8.71416092 6.33120823 -3.45218468 -8.71416092 3.32851338 -1.65449524 -10.24411106
		 3.32851338 -3.45218468 -10.24411106 8.1624137e-008 -1.65449524 -10.7712965 8.1624137e-008 -3.45218468 -10.7712965
		 -3.32851362 -1.65449524 -10.24411201 -3.32851362 -3.45218468 -10.24411201 -6.33120823 -1.65449524 -8.71416187
		 -6.33120823 -3.45218468 -8.71416187 -8.71416092 -1.65449524 -6.33120966 -8.71416092 -3.45218468 -6.33120966
		 -10.24411201 -1.65449524 -3.32851434 -10.24411201 -3.45218468 -3.32851434 -10.77129555 -1.65449524 -7.2291004e-007
		 -10.77129555 -3.45218468 -7.2291004e-007 -10.24411201 -1.65449524 3.32851338 -10.24411201 -3.45218468 3.32851338
		 -8.71416187 -1.65449524 6.33120871 -8.71416187 -3.45218468 6.33120871 -6.33121014 -1.65449524 8.71416187
		 -6.33121014 -3.45218468 8.71416187 -3.32851434 -1.65449524 10.24411297 -3.32851434 -3.45218468 10.24411297
		 7.3392198e-007 -1.65449524 10.77129841 7.3392198e-007 -3.45218468 10.77129841 3.32851529 -1.65449524 10.24411392
		 3.32851529 -3.45218468 10.24411392 6.33121157 -1.65449524 8.71416473 6.33121157 -3.45218468 8.71416473
		 8.71416759 -1.65449524 6.33121061 8.71416759 -3.45218468 6.33121061 10.24411774 -1.65449524 3.32851529
		 10.24411774 -3.45218468 3.32851529;
	setAttr -s 240 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 40 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 60 0 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1
		 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1
		 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1 25 45 1 26 46 1 27 47 1
		 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1
		 39 59 1 60 0 1 61 1 1 62 2 1 63 3 1 64 4 1 65 5 1 66 6 1 67 7 1 68 8 1 69 9 1 70 10 1
		 71 11 1 72 12 1 73 13 1 74 14 1 75 15 1 76 16 1 77 17 1 78 18 1 79 19 1 40 80 1 41 81 1
		 80 81 0 60 82 1 80 82 1 61 83 1 82 83 0 81 83 1 42 84 1 81 84 0 62 85 1 83 85 0 84 85 1
		 43 86 1 84 86 0 63 87 1 85 87 0 86 87 1 44 88 1 86 88 0 64 89 1 87 89 0 88 89 1 45 90 1
		 88 90 0 65 91 1;
	setAttr ".ed[166:239]" 89 91 0 90 91 1 46 92 1 90 92 0 66 93 1 91 93 0 92 93 1
		 47 94 1 92 94 0 67 95 1 93 95 0 94 95 1 48 96 1 94 96 0 68 97 1 95 97 0 96 97 1 49 98 1
		 96 98 0 69 99 1 97 99 0 98 99 1 50 100 1 98 100 0 70 101 1 99 101 0 100 101 1 51 102 1
		 100 102 0 71 103 1 101 103 0 102 103 1 52 104 1 102 104 0 72 105 1 103 105 0 104 105 1
		 53 106 1 104 106 0 73 107 1 105 107 0 106 107 1 54 108 1 106 108 0 74 109 1 107 109 0
		 108 109 1 55 110 1 108 110 0 75 111 1 109 111 0 110 111 1 56 112 1 110 112 0 76 113 1
		 111 113 0 112 113 1 57 114 1 112 114 0 77 115 1 113 115 0 114 115 1 58 116 1 114 116 0
		 78 117 1 115 117 0 116 117 1 59 118 1 116 118 0 79 119 1 117 119 0 118 119 1 118 80 0
		 119 82 0;
	setAttr -s 120 -ch 480 ".fc[0:119]" -type "polyFaces" 
		f 4 -1 80 20 -82
		mu 0 4 0 1 2 3
		f 4 -2 81 21 -83
		mu 0 4 4 0 3 5
		f 4 -3 82 22 -84
		mu 0 4 6 4 5 7
		f 4 -4 83 23 -85
		mu 0 4 8 6 7 9
		f 4 -5 84 24 -86
		mu 0 4 10 8 9 11
		f 4 -6 85 25 -87
		mu 0 4 12 10 11 13
		f 4 -7 86 26 -88
		mu 0 4 14 12 13 15
		f 4 -8 87 27 -89
		mu 0 4 16 14 15 17
		f 4 -9 88 28 -90
		mu 0 4 18 16 17 19
		f 4 -10 89 29 -91
		mu 0 4 20 18 19 21
		f 4 -11 90 30 -92
		mu 0 4 22 20 21 23
		f 4 -12 91 31 -93
		mu 0 4 24 22 23 25
		f 4 -13 92 32 -94
		mu 0 4 26 24 25 27
		f 4 -14 93 33 -95
		mu 0 4 28 26 27 29
		f 4 -15 94 34 -96
		mu 0 4 30 28 29 31
		f 4 -16 95 35 -97
		mu 0 4 32 30 31 33
		f 4 -17 96 36 -98
		mu 0 4 34 32 33 35
		f 4 -18 97 37 -99
		mu 0 4 36 34 35 37
		f 4 -19 98 38 -100
		mu 0 4 38 36 37 39
		f 4 -20 99 39 -81
		mu 0 4 40 38 39 41
		f 4 -21 100 40 -102
		mu 0 4 3 2 42 43
		f 4 -22 101 41 -103
		mu 0 4 5 3 43 44
		f 4 -23 102 42 -104
		mu 0 4 7 5 44 45
		f 4 -24 103 43 -105
		mu 0 4 9 7 45 46
		f 4 -25 104 44 -106
		mu 0 4 11 9 46 47
		f 4 -26 105 45 -107
		mu 0 4 13 11 47 48
		f 4 -27 106 46 -108
		mu 0 4 15 13 48 49
		f 4 -28 107 47 -109
		mu 0 4 17 15 49 50
		f 4 -29 108 48 -110
		mu 0 4 19 17 50 51
		f 4 -30 109 49 -111
		mu 0 4 21 19 51 52
		f 4 -31 110 50 -112
		mu 0 4 23 21 52 53
		f 4 -32 111 51 -113
		mu 0 4 25 23 53 54
		f 4 -33 112 52 -114
		mu 0 4 27 25 54 55
		f 4 -34 113 53 -115
		mu 0 4 29 27 55 56
		f 4 -35 114 54 -116
		mu 0 4 31 29 56 57
		f 4 -36 115 55 -117
		mu 0 4 33 31 57 58
		f 4 -37 116 56 -118
		mu 0 4 35 33 58 59
		f 4 -38 117 57 -119
		mu 0 4 37 35 59 60
		f 4 -39 118 58 -120
		mu 0 4 39 37 60 61
		f 4 -40 119 59 -101
		mu 0 4 41 39 61 62
		f 4 -143 144 146 -148
		mu 0 4 63 64 65 66
		f 4 -150 147 151 -153
		mu 0 4 67 63 66 68
		f 4 -155 152 156 -158
		mu 0 4 69 67 68 70
		f 4 -160 157 161 -163
		mu 0 4 71 69 70 72
		f 4 -165 162 166 -168
		mu 0 4 73 71 72 74
		f 4 -170 167 171 -173
		mu 0 4 75 73 74 76
		f 4 -175 172 176 -178
		mu 0 4 77 75 76 78
		f 4 -180 177 181 -183
		mu 0 4 79 77 78 80
		f 4 -185 182 186 -188
		mu 0 4 81 79 80 82
		f 4 -190 187 191 -193
		mu 0 4 83 81 82 84
		f 4 -195 192 196 -198
		mu 0 4 85 83 84 86
		f 4 -200 197 201 -203
		mu 0 4 87 85 86 88
		f 4 -205 202 206 -208
		mu 0 4 89 87 88 90
		f 4 -210 207 211 -213
		mu 0 4 91 89 90 92
		f 4 -215 212 216 -218
		mu 0 4 93 91 92 94
		f 4 -220 217 221 -223
		mu 0 4 95 93 94 96
		f 4 -225 222 226 -228
		mu 0 4 97 95 96 98
		f 4 -230 227 231 -233
		mu 0 4 99 97 98 100
		f 4 -235 232 236 -238
		mu 0 4 101 99 100 102
		f 4 -239 237 239 -145
		mu 0 4 103 101 102 104
		f 4 -61 120 0 -122
		mu 0 4 105 106 107 108
		f 4 -62 121 1 -123
		mu 0 4 109 105 108 110
		f 4 -63 122 2 -124
		mu 0 4 111 109 110 112
		f 4 -64 123 3 -125
		mu 0 4 113 111 112 114
		f 4 -65 124 4 -126
		mu 0 4 115 113 114 116
		f 4 -66 125 5 -127
		mu 0 4 117 115 116 118
		f 4 -67 126 6 -128
		mu 0 4 119 117 118 120
		f 4 -68 127 7 -129
		mu 0 4 121 119 120 122
		f 4 -69 128 8 -130
		mu 0 4 123 121 122 124
		f 4 -70 129 9 -131
		mu 0 4 125 123 124 126
		f 4 -71 130 10 -132
		mu 0 4 127 125 126 128
		f 4 -72 131 11 -133
		mu 0 4 129 127 128 130
		f 4 -73 132 12 -134
		mu 0 4 131 129 130 132
		f 4 -74 133 13 -135
		mu 0 4 133 131 132 134
		f 4 -75 134 14 -136
		mu 0 4 135 133 134 136
		f 4 -76 135 15 -137
		mu 0 4 137 135 136 138
		f 4 -77 136 16 -138
		mu 0 4 139 137 138 140
		f 4 -78 137 17 -139
		mu 0 4 141 139 140 142
		f 4 -79 138 18 -140
		mu 0 4 143 141 142 144
		f 4 -80 139 19 -121
		mu 0 4 145 143 144 146
		f 4 -41 140 142 -142
		mu 0 4 43 42 64 63
		f 4 60 145 -147 -144
		mu 0 4 106 105 66 65
		f 4 -42 141 149 -149
		mu 0 4 44 43 63 67
		f 4 61 150 -152 -146
		mu 0 4 105 109 68 66
		f 4 -43 148 154 -154
		mu 0 4 45 44 67 69
		f 4 62 155 -157 -151
		mu 0 4 109 111 70 68
		f 4 -44 153 159 -159
		mu 0 4 46 45 69 71
		f 4 63 160 -162 -156
		mu 0 4 111 113 72 70
		f 4 -45 158 164 -164
		mu 0 4 47 46 71 73
		f 4 64 165 -167 -161
		mu 0 4 113 115 74 72
		f 4 -46 163 169 -169
		mu 0 4 48 47 73 75
		f 4 65 170 -172 -166
		mu 0 4 115 117 76 74
		f 4 -47 168 174 -174
		mu 0 4 49 48 75 77
		f 4 66 175 -177 -171
		mu 0 4 117 119 78 76
		f 4 -48 173 179 -179
		mu 0 4 50 49 77 79
		f 4 67 180 -182 -176
		mu 0 4 119 121 80 78
		f 4 -49 178 184 -184
		mu 0 4 51 50 79 81
		f 4 68 185 -187 -181
		mu 0 4 121 123 82 80
		f 4 -50 183 189 -189
		mu 0 4 52 51 81 83
		f 4 69 190 -192 -186
		mu 0 4 123 125 84 82
		f 4 -51 188 194 -194
		mu 0 4 53 52 83 85
		f 4 70 195 -197 -191
		mu 0 4 125 127 86 84
		f 4 -52 193 199 -199
		mu 0 4 54 53 85 87
		f 4 71 200 -202 -196
		mu 0 4 127 129 88 86
		f 4 -53 198 204 -204
		mu 0 4 55 54 87 89
		f 4 72 205 -207 -201
		mu 0 4 129 131 90 88
		f 4 -54 203 209 -209
		mu 0 4 56 55 89 91
		f 4 73 210 -212 -206
		mu 0 4 131 133 92 90
		f 4 -55 208 214 -214
		mu 0 4 57 56 91 93
		f 4 74 215 -217 -211
		mu 0 4 133 135 94 92
		f 4 -56 213 219 -219
		mu 0 4 58 57 93 95
		f 4 75 220 -222 -216
		mu 0 4 135 137 96 94
		f 4 -57 218 224 -224
		mu 0 4 59 58 95 97
		f 4 76 225 -227 -221
		mu 0 4 137 139 98 96
		f 4 -58 223 229 -229
		mu 0 4 60 59 97 99
		f 4 77 230 -232 -226
		mu 0 4 139 141 100 98
		f 4 -59 228 234 -234
		mu 0 4 61 60 99 101
		f 4 78 235 -237 -231
		mu 0 4 141 143 102 100
		f 4 -60 233 238 -141
		mu 0 4 62 61 101 103
		f 4 79 143 -240 -236
		mu 0 4 143 145 104 102;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode animCurveTA -n "polySurface2097_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 96 -360;
createNode materialInfo -n "materialInfo11";
createNode shadingEngine -n "lambert11SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "lambert11";
createNode file -n "file7";
	setAttr ".ftn" -type "string" "C:/Users/Roger/Desktop/Winter 2014/Game Prototyping 2/Textures/Royal Wine2.psd";
createNode place2dTexture -n "place2dTexture7";
createNode animCurveTA -n "polySurface2099_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 96 -360;
createNode animCurveTA -n "polySurface2102_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 96 360;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode lambert -n "lambert12";
createNode shadingEngine -n "lambert12SG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
createNode file -n "file8";
	setAttr ".ftn" -type "string" "D:/Roger G/Game Prototyping 2/Textures/Royal Wine.tga";
createNode place2dTexture -n "place2dTexture8";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 96 -ast 1 -aet 96 ";
	setAttr ".st" 6;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[216:223]" "e[225]" "e[227:229]" "e[231]" "e[233]";
	setAttr ".ix" -type "matrix" 0.65258576152416858 0 -0.75771486976033475 0 0 1 0 0
		 0.75771486976033475 0 0.65258576152416858 0 -2.2629742354207305e-016 0 -3.8701674914921698e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.099531986 96.837357 0.16973272 ;
	setAttr ".rs" 51944;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -19.918682695139267 96.837356567382812 -19.586874924947857 ;
	setAttr ".cbx" -type "double3" 19.91868466246104 96.837356567382812 19.251681875894988 ;
createNode polySewEdge -n "polySewEdge1";
	setAttr ".ics" -type "componentList" 13 "e[380]" "e[382]" "e[384]" "e[386]" "e[388]" "e[390]" "e[392]" "e[394]" "e[396]" "e[398]" "e[400]" "e[402]" "e[404:405]";
	setAttr ".ix" -type "matrix" 0.65258576152416858 0 -0.75771486976033475 0 0 1 0 0
		 0.75771486976033475 0 0.65258576152416858 0 -2.2629742354207305e-016 0 -3.8701674914921698e-016 1;
	setAttr ".ws" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[196:209]" -type "float3"  -12.23725128 0 15.39463806
		 -17.73955917 0 8.49495506 -4.28618097 0 19.22367859 4.53884125 0 19.22367859 12.48991585
		 0 15.39463997 17.99222946 0 8.49496269 19.95598221 0 -0.10879922 17.99222946 0 -8.71256161
		 10.6755743 0 -16.89714432 2.34668422 0 -19.81171799 -4.28617382 0 -19.44128418 -12.23724842
		 0 -15.61224651 -18.58851433 0 -6.65778971 -19.57665634 0 2.11082649;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 6 "vtx[37]" "vtx[59]" "vtx[127]" "vtx[138]" "vtx[193:194]" "vtx[196:209]";
	setAttr ".ix" -type "matrix" 0.65258576152416858 0 -0.75771486976033475 0 0 1 0 0
		 0.75771486976033475 0 0.65258576152416858 0 -2.2629742354207305e-016 0 -3.8701674914921698e-016 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 6 "vtx[37]" "vtx[59]" "vtx[127]" "vtx[138]" "vtx[193:194]" "vtx[196:209]";
	setAttr ".ix" -type "matrix" 0.65258576152416858 0 -0.75771486976033475 0 0 1 0 0
		 0.75771486976033475 0 0.65258576152416858 0 -2.2629742354207305e-016 0 -3.8701674914921698e-016 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 1 "vtx[196:209]";
	setAttr ".ix" -type "matrix" 0.65258576152416858 0 -0.75771486976033475 0 0 1 0 0
		 0.75771486976033475 0 0.65258576152416858 0 -2.2629742354207305e-016 0 -3.8701674914921698e-016 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 1 "vtx[196:209]";
	setAttr ".ix" -type "matrix" 0.65258576152416858 0 -0.75771486976033475 0 0 1 0 0
		 0.75771486976033475 0 0.65258576152416858 0 -2.2629742354207305e-016 0 -3.8701674914921698e-016 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[196]" -type "float3" -0.050651737 0 0.063723288 ;
	setAttr ".tk[197]" -type "float3" -0.073428638 0 0.035161305 ;
	setAttr ".tk[198]" -type "float3" -0.017738946 0 0.079569049 ;
	setAttr ".tk[199]" -type "float3" 0.018789463 0 0.079569019 ;
	setAttr ".tk[200]" -type "float3" 0.051699195 0 0.063723288 ;
	setAttr ".tk[201]" -type "float3" 0.074473858 0 0.035161305 ;
	setAttr ".tk[202]" -type "float3" 0.08260411 0 -0.00045050427 ;
	setAttr ".tk[203]" -type "float3" 0.074473858 0 -0.036063433 ;
	setAttr ".tk[204]" -type "float3" 0.044189785 0 -0.06993895 ;
	setAttr ".tk[205]" -type "float3" 0.0097156903 0 -0.082004562 ;
	setAttr ".tk[206]" -type "float3" -0.017738929 0 -0.080470502 ;
	setAttr ".tk[207]" -type "float3" -0.05065174 0 -0.064625315 ;
	setAttr ".tk[208]" -type "float3" -0.076939717 0 -0.027559901 ;
	setAttr ".tk[209]" -type "float3" -0.081032924 0 0.0087369289 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[124]" "e[128]" "e[132]" "e[136]" "e[140]" "e[144]" "e[148:149]" "e[153:154]" "e[158:161]";
	setAttr ".ix" -type "matrix" 0.65258576152416858 0 -0.75771486976033475 0 0 1 0 0
		 0.75771486976033475 0 0.65258576152416858 0 -2.2629742354207305e-016 0 -3.8701674914921698e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.1194929 -91.063599 0.20377204 ;
	setAttr ".rs" 47217;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.913230805373523 -91.0635986328125 -23.514884094308243 ;
	setAttr ".cbx" -type "double3" 23.913230805373523 -91.0635986328125 23.112480677183086 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[395]" "e[397]" "e[399]" "e[401]" "e[403]" "e[405]" "e[407]" "e[409]" "e[411]" "e[413]" "e[415]" "e[417]" "e[419:420]";
	setAttr ".ix" -type "matrix" 0.65258576152416858 0 -0.75771486976033475 0 0 1 0 0
		 0.75771486976033475 0 0.65258576152416858 0 -2.2629742354207305e-016 0 -3.8701674914921698e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.1194929 -91.063599 0.20377204 ;
	setAttr ".rs" 38839;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.913230805373523 -91.0635986328125 -23.514884094308243 ;
	setAttr ".cbx" -type "double3" 23.913230805373523 -91.0635986328125 23.112480677183086 ;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 1 "vtx[212:225]";
	setAttr ".ix" -type "matrix" 0.65258576152416858 0 -0.75771486976033475 0 0 1 0 0
		 0.75771486976033475 0 0.65258576152416858 0 -2.2629742354207305e-016 0 -3.8701674914921698e-016 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[212]" -type "float3" -21.38397 0 10.24016 ;
	setAttr ".tk[213]" -type "float3" -14.75127 0 18.557308 ;
	setAttr ".tk[214]" -type "float3" -5.1667361 0 23.172974 ;
	setAttr ".tk[215]" -type "float3" 5.4712968 0 23.172976 ;
	setAttr ".tk[216]" -type "float3" 15.055825 0 18.557308 ;
	setAttr ".tk[217]" -type "float3" 21.688536 0 10.240162 ;
	setAttr ".tk[218]" -type "float3" 24.055729 0 -0.1311491 ;
	setAttr ".tk[219]" -type "float3" 21.688545 0 -10.502468 ;
	setAttr ".tk[220]" -type "float3" 12.868757 0 -20.368469 ;
	setAttr ".tk[221]" -type "float3" 2.8287811 0 -23.881811 ;
	setAttr ".tk[222]" -type "float3" -5.1667285 0 -23.435276 ;
	setAttr ".tk[223]" -type "float3" -14.751263 0 -18.819613 ;
	setAttr ".tk[224]" -type "float3" -22.407333 0 -8.0255651 ;
	setAttr ".tk[225]" -type "float3" -23.59849 0 2.5444782 ;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 1 "vtx[212:223]";
	setAttr ".ix" -type "matrix" 0.65258576152416858 0 -0.75771486976033475 0 0 1 0 0
		 0.75771486976033475 0 0.65258576152416858 0 -2.2629742354207305e-016 0 -3.8701674914921698e-016 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[212:223]" -type "float3"  -0.018311691 -2.8421709e-014
		 0.0052043521 -0.012009557 -2.8421709e-014 0.015109278 -0.004206032 -2.8421709e-014
		 0.01886097 0.0044546216 -2.8421709e-014 0.01886097 0.012260805 -2.8421709e-014 0.015109278
		 0.017660148 -2.8421709e-014 0.0083377901 0.019580729 -2.8421709e-014 -0.00010701475
		 0.017660148 -2.8421709e-014 -0.0085486947 0.010476891 -2.8421709e-014 -0.01658798
		 -0.00095119269 -2.8421709e-014 -0.019261748 -0.012009557 -2.8421709e-014 -0.015325799
		 -0.018243225 -2.8421709e-014 -0.0065326178;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[182:195]" "f[210:223]";
	setAttr ".ix" -type "matrix" -0.67728157162574099 0 -0.7357239106731317 0 0 1 0 0
		 0.7357239106731317 0 -0.67728157162574099 0 -8.0336492763730548e-016 0 -2.610290882520842e-016 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.17106056213378906 2.8868789672851562 0 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 47.398410797119141 47.297622680664062 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 88 ".uvtk";
	setAttr ".uvtk[210]" -type "float2" 0.69607747 -0.14367393 ;
	setAttr ".uvtk[211]" -type "float2" 0.71895224 0.0044535138 ;
	setAttr ".uvtk[212]" -type "float2" 0.38661325 -0.019630414 ;
	setAttr ".uvtk[213]" -type "float2" 0.67542815 0.14785787 ;
	setAttr ".uvtk[214]" -type "float2" 0.57412589 0.25813606 ;
	setAttr ".uvtk[215]" -type "float2" 0.43510932 0.31344613 ;
	setAttr ".uvtk[216]" -type "float2" 0.28591275 0.30283329 ;
	setAttr ".uvtk[217]" -type "float2" 0.15608615 0.2283996 ;
	setAttr ".uvtk[218]" -type "float2" 0.071343489 0.1048875 ;
	setAttr ".uvtk[219]" -type "float2" 0.053273648 -0.080692805 ;
	setAttr ".uvtk[220]" -type "float2" 0.38629025 -0.019951325 ;
	setAttr ".uvtk[221]" -type "float2" 0.11253744 -0.21829909 ;
	setAttr ".uvtk[222]" -type "float2" 0.19329506 -0.2969225 ;
	setAttr ".uvtk[223]" -type "float2" 0.33231163 -0.35223252 ;
	setAttr ".uvtk[224]" -type "float2" 0.51687539 -0.32859141 ;
	setAttr ".uvtk[225]" -type "float2" 0.63755858 -0.24006993 ;
	setAttr ".uvtk[226]" -type "float2" 0.62004948 0.12220625 ;
	setAttr ".uvtk[227]" -type "float2" 0.59258747 -0.055627085 ;
	setAttr ".uvtk[228]" -type "float2" 0.22094706 0.093196541 ;
	setAttr ".uvtk[229]" -type "float2" 0.56779671 0.29436916 ;
	setAttr ".uvtk[230]" -type "float2" 0.44617894 0.42676288 ;
	setAttr ".uvtk[231]" -type "float2" 0.27928391 0.49316514 ;
	setAttr ".uvtk[232]" -type "float2" 0.10016692 0.48042405 ;
	setAttr ".uvtk[233]" -type "float2" -0.0556954 0.39106321 ;
	setAttr ".uvtk[234]" -type "float2" -0.15743279 0.24278158 ;
	setAttr ".uvtk[235]" -type "float2" -0.17912634 0.019984405 ;
	setAttr ".uvtk[236]" -type "float2" -0.10797741 -0.14521766 ;
	setAttr ".uvtk[237]" -type "float2" -0.011024281 -0.23960832 ;
	setAttr ".uvtk[238]" -type "float2" 0.15587074 -0.30601072 ;
	setAttr ".uvtk[239]" -type "float2" 0.37744752 -0.27762848 ;
	setAttr ".uvtk[240]" -type "float2" 0.52233291 -0.17135471 ;
	setAttr ".uvtk[241]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[242]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[243]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[244]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[245]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[246]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[247]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[248]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[249]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[250]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[251]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[252]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[253]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[254]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[255]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[256]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[257]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[258]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[259]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[260]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[261]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[262]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[263]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[264]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[265]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[266]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[267]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[268]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[269]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[270]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[271]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[272]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[273]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[274]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[275]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[276]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[277]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[278]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[279]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[280]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[281]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[282]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[283]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[284]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[285]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[286]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[287]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[288]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[289]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[290]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[291]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[292]" -type "float2" -1.0860434 -0.38095236 ;
	setAttr ".uvtk[293]" -type "float2" -0.32413864 -0.38095236 ;
	setAttr ".uvtk[294]" -type "float2" -0.32413864 0.38095239 ;
	setAttr ".uvtk[295]" -type "float2" -1.0860434 0.38095239 ;
	setAttr ".uvtk[296]" -type "float2" -1.0860434 -0.38095236 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[196:209]";
select -ne :time1;
	setAttr ".o" 12;
	setAttr ".unw" 12;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polySurface2102_rotateY.o" "Wine.ry";
connectAttr "deleteComponent1.og" "WineShape.i";
connectAttr "polyTweakUV1.uvtk[0]" "WineShape.uvst[0].uvtw";
connectAttr "polySurface2097_rotateY.o" "Crown.ry";
connectAttr "polySurface2099_rotateY.o" "Sign.ry";
connectAttr "lambert11SG.msg" "materialInfo11.sg";
connectAttr "lambert11.msg" "materialInfo11.m";
connectAttr "file7.msg" "materialInfo11.t" -na;
connectAttr "lambert11.oc" "lambert11SG.ss";
connectAttr "file7.oc" "lambert11.c";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file8.oc" "lambert12.c";
connectAttr "file8.ot" "lambert12.it";
connectAttr "lambert12.oc" "lambert12SG.ss";
connectAttr "WineShape.iog" "lambert12SG.dsm" -na;
connectAttr "SignShape.iog" "lambert12SG.dsm" -na;
connectAttr "CrownShape.iog" "lambert12SG.dsm" -na;
connectAttr "lambert12SG.msg" "materialInfo12.sg";
connectAttr "lambert12.msg" "materialInfo12.m";
connectAttr "file8.msg" "materialInfo12.t" -na;
connectAttr "place2dTexture8.c" "file8.c";
connectAttr "place2dTexture8.tf" "file8.tf";
connectAttr "place2dTexture8.rf" "file8.rf";
connectAttr "place2dTexture8.mu" "file8.mu";
connectAttr "place2dTexture8.mv" "file8.mv";
connectAttr "place2dTexture8.s" "file8.s";
connectAttr "place2dTexture8.wu" "file8.wu";
connectAttr "place2dTexture8.wv" "file8.wv";
connectAttr "place2dTexture8.re" "file8.re";
connectAttr "place2dTexture8.of" "file8.of";
connectAttr "place2dTexture8.r" "file8.ro";
connectAttr "place2dTexture8.n" "file8.n";
connectAttr "place2dTexture8.vt1" "file8.vt1";
connectAttr "place2dTexture8.vt2" "file8.vt2";
connectAttr "place2dTexture8.vt3" "file8.vt3";
connectAttr "place2dTexture8.vc1" "file8.vc1";
connectAttr "place2dTexture8.o" "file8.uv";
connectAttr "place2dTexture8.ofs" "file8.fs";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "polySurfaceShape1.o" "polyExtrudeEdge1.ip";
connectAttr "WineShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak1.out" "polySewEdge1.ip";
connectAttr "WineShape.wm" "polySewEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak1.ip";
connectAttr "polySewEdge1.out" "polyMergeVert1.ip";
connectAttr "WineShape.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "WineShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "WineShape.wm" "polyMergeVert3.mp";
connectAttr "polyTweak2.out" "polyMergeVert4.ip";
connectAttr "WineShape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak2.ip";
connectAttr "polyMergeVert4.out" "polyExtrudeEdge2.ip";
connectAttr "WineShape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyExtrudeEdge3.ip";
connectAttr "WineShape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyTweak3.out" "polyMergeVert5.ip";
connectAttr "WineShape.wm" "polyMergeVert5.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert6.ip";
connectAttr "WineShape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak4.ip";
connectAttr "polyMergeVert6.out" "polyPlanarProj1.ip";
connectAttr "WineShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "deleteComponent1.ig";
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "lambert11.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert12.msg" ":defaultShaderList1.s" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Royal Blood Wine.ma
