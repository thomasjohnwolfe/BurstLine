//Maya ASCII 2014 scene
//Name: Squid1.ma
//Last modified: Mon, Feb 24, 2014 07:02:42 PM
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
createNode transform -n "Background_Stuff2:polySurface2042";
	setAttr ".rp" -type "double3" -0.00012111663818359375 -0.67033100128173828 0.00024127960205078125 ;
	setAttr ".sp" -type "double3" -0.00012111663818359375 -0.67033100128173828 0.00024127960205078125 ;
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 63.89797201979863 151.63678920739119 439.54515818269402 ;
	setAttr ".r" -type "double3" -19.538352729602767 6.1999999999998892 -1.9995420695181815e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 474.3367388958618;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.0013662042988045187 -9.3590870843459797 0.0023295032913068781 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.02516081128724057 100.12413111348233 -0.29122740138504627 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 13.10386045639002;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7773486744389708 7.2272229393374117 100.68688852676054 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 11.654035918384803;
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
createNode transform -n "Fin";
	setAttr ".t" -type "double3" 0 -0.18906394408276306 0 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode transform -n "transform1" -p "Fin";
	setAttr ".v" no;
createNode mesh -n "FinShape" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:63]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 124 ".uvst[0].uvsp[0:123]" -type "float2" 0.42913213 0.75641036
		 0.43672097 0.75608122 0.42615566 0.77499056 0.434457 0.77455211 0.53058183 0.66528618
		 0.52797061 0.70844042 0.48317289 0.73908484 0.52827483 0.71686602 0.48254204 0.75349379
		 0.54672235 0.66528618 0.54460829 0.69027019 0.55758965 0.61811996 0.55758965 0.63444424
		 0.55133986 0.62813628 0.55133986 0.61453307 0.55523759 0.66528618 0.55133986 0.59582853
		 0.55758965 0.59582853 0.49481225 0.73112285 0.49442431 0.74397719 0.45759386 0.74844402
		 0.45606372 0.76508963 0.52598751 0.66528618 0.49563795 0.70657223 0.48381406 0.7162798
		 0.45786184 0.73650461 0.43691981 0.74543685 0.42986688 0.75637853 0.42924824 0.74891722
		 0.41815418 0.75188529 0.40334198 0.75446254 0.434457 0.77455211 0.42615566 0.77499056
		 0.42913213 0.75641036 0.42986688 0.75637853 0.43672097 0.75608122 0.49442431 0.74397719
		 0.48254204 0.75349379 0.48317289 0.73908484 0.49481225 0.73112285 0.45759386 0.74844402
		 0.45606372 0.76508963 0.53058183 0.66528618 0.54672235 0.66528618 0.54460829 0.69027019
		 0.52797061 0.70844042 0.55758965 0.61811996 0.55758965 0.63444424 0.55133986 0.62813628
		 0.55133986 0.61453307 0.55523759 0.66528618 0.55133986 0.59582853 0.55758965 0.59582853
		 0.52827483 0.71686602 0.52598751 0.66528618 0.49563795 0.70657223 0.48381406 0.7162798
		 0.45786184 0.73650461 0.43691981 0.74543685 0.42924824 0.74891722 0.41815418 0.75188529
		 0.40334198 0.75446254 0.434457 0.77455211 0.43672097 0.75608122 0.42986688 0.75637853
		 0.42913213 0.75641036 0.42615566 0.77499056 0.49442431 0.74397719 0.49481225 0.73112285
		 0.48317289 0.73908484 0.48254204 0.75349379 0.45759386 0.74844402 0.45606372 0.76508963
		 0.53058183 0.66528618 0.52797061 0.70844042 0.54460829 0.69027019 0.54672235 0.66528618
		 0.55758965 0.61811996 0.55133986 0.61453307 0.55133986 0.62813628 0.55758965 0.63444424
		 0.55523759 0.66528618 0.55133986 0.59582853 0.55758965 0.59582853 0.52827483 0.71686602
		 0.52598751 0.66528618 0.49563795 0.70657223 0.48381406 0.7162798 0.45786184 0.73650461
		 0.43691981 0.74543685 0.42924824 0.74891722 0.41815418 0.75188529 0.40334198 0.75446254
		 0.434457 0.77455211 0.42615566 0.77499056 0.42913213 0.75641036 0.42986688 0.75637853
		 0.43672097 0.75608122 0.49442431 0.74397719 0.48254204 0.75349379 0.48317289 0.73908484
		 0.49481225 0.73112285 0.45759386 0.74844402 0.45606372 0.76508963 0.53058183 0.66528618
		 0.54672235 0.66528618 0.54460829 0.69027019 0.52797061 0.70844042 0.55758965 0.61811996
		 0.55758965 0.63444424 0.55133986 0.62813628 0.55133986 0.61453307 0.55523759 0.66528618
		 0.55133986 0.59582853 0.55758965 0.59582853 0.52827483 0.71686602 0.52598751 0.66528618
		 0.49563795 0.70657223 0.48381406 0.7162798 0.45786184 0.73650461 0.43691981 0.74543685
		 0.42924824 0.74891722 0.41815418 0.75188529 0.40334198 0.75446254;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 81 ".vt[0:80]"  2.93816662 5.939188 -0.36878568 1.3681103 8.69762421 -0.36878568
		 2.35749483 7.46229076 -0.36878568 0.77912265 9.16259766 -0.36878568 1.96828473 7.47933435 -0.59427977
		 2.43628097 6.019586086 -0.5925076 2.42738676 6.2245779 -0.59427977 2.92632008 6.16342306 -0.36878568
		 1.14051759 8.68940544 -0.59427977 0.64970416 9.13882065 -0.59427977 -0.025160825 8.75993824 -0.61929798
		 -0.025160825 9.19592667 -0.61929798 -0.025160825 9.48787689 -0.36878568 -0.025160825 9.42594242 -0.59427977
		 1.75321424 7.79373503 -0.59427977 2.10043287 7.7832551 -0.36878568 2.22109222 6.7883954 -0.59427977
		 2.67072201 6.74706125 -0.36878568 -0.025160825 8.6358366 -0.61929798 1.090055227 7.81603765 -0.60360909
		 1.35227597 7.49665308 -0.60201085 1.89858627 6.79563236 -0.59787172 2.13986158 6.22994947 -0.59721279
		 2.4354198 6.039433479 -0.5926792 2.23387742 6.022723198 -0.59450483 2.29670286 5.78373384 -0.58214122
		 2.38366246 5.32294512 -0.36878568 1.96828473 7.47933435 -0.14329162 2.43628097 6.019586086 -0.14506374
		 2.42738676 6.2245779 -0.14329162 1.14051759 8.68940544 -0.14329162 0.64970416 9.13882065 -0.14329162
		 -0.025160825 8.75993824 -0.11827336 -0.025160825 9.19592667 -0.11827336 -0.025160825 9.42594242 -0.14329162
		 1.75321424 7.79373503 -0.14329162 2.22109222 6.7883954 -0.14329162 -0.025160825 8.6358366 -0.11827336
		 1.090055227 7.81603765 -0.13396227 1.35227597 7.49665308 -0.13556054 1.89858627 6.79563236 -0.13969962
		 2.13986158 6.22994947 -0.1403586 2.4354198 6.039433479 -0.14489216 2.23387742 6.022723198 -0.1430665
		 2.29670286 5.78373384 -0.15543012 -2.9884882 5.939188 -0.36878568 -1.418432 8.69762421 -0.36878568
		 -2.40781641 7.46229076 -0.36878568 -0.82944429 9.16259766 -0.36878568 -2.018606424 7.47933435 -0.59427977
		 -2.48660254 6.019586086 -0.5925076 -2.47770834 6.2245779 -0.59427977 -2.97664165 6.16342306 -0.36878568
		 -1.19083929 8.68940544 -0.59427977 -0.7000258 9.13882065 -0.59427977 -1.80353594 7.79373503 -0.59427977
		 -2.15075445 7.7832551 -0.36878568 -2.2714138 6.7883954 -0.59427977 -2.72104359 6.74706125 -0.36878568
		 -1.14037693 7.81603765 -0.60360909 -1.40259767 7.49665308 -0.60201085 -1.94890797 6.79563141 -0.59787172
		 -2.19018316 6.22994947 -0.59721279 -2.48574138 6.039433479 -0.5926792 -2.284199 6.022723198 -0.59450483
		 -2.34702444 5.78373384 -0.58214122 -2.43398404 5.32294512 -0.36878568 -2.018606424 7.47933435 -0.14329162
		 -2.48660254 6.019586086 -0.14506374 -2.47770834 6.2245779 -0.14329162 -1.19083929 8.68940544 -0.14329162
		 -0.7000258 9.13882065 -0.14329162 -1.80353594 7.79373503 -0.14329162 -2.2714138 6.7883954 -0.14329162
		 -1.14037693 7.81603765 -0.13396227 -1.40259767 7.49665308 -0.13556054 -1.94890797 6.79563236 -0.13969962
		 -2.19018316 6.22994947 -0.1403586 -2.48574138 6.039433479 -0.14489216 -2.284199 6.022723198 -0.1430665
		 -2.34702444 5.78373384 -0.15543012;
	setAttr -s 144 ".ed[0:143]"  5 23 1 13 12 0 4 14 1 4 2 1 6 16 1 6 7 1
		 10 11 0 8 9 1 11 13 0 9 13 1 0 5 1 10 8 1 1 8 1 11 9 1 3 9 1 3 12 0 3 1 0 1 15 0
		 2 17 0 0 7 0 14 8 1 15 2 0 14 15 1 16 4 1 17 7 0 16 17 1 18 10 0 19 14 1 18 19 0
		 20 4 1 19 20 0 21 16 1 20 21 0 22 6 1 21 22 0 23 6 1 24 5 1 22 24 0 25 5 1 24 25 0
		 26 0 0 25 26 0 28 42 1 34 12 0 27 35 1 27 2 1 29 36 1 29 7 1 32 33 0 30 31 1 33 34 0
		 31 34 1 0 28 1 32 30 1 1 30 1 33 31 1 3 31 1 35 30 1 35 15 1 36 27 1 36 17 1 37 32 0
		 38 35 1 37 38 0 39 27 1 38 39 0 40 36 1 39 40 0 41 29 1 40 41 0 42 29 1 43 28 1 41 43 0
		 44 28 1 43 44 0 44 26 0 50 63 1 49 55 1 49 47 1 51 57 1 51 52 1 53 54 1 54 13 1 45 50 1
		 10 53 1 46 53 1 11 54 1 48 54 1 48 12 0 48 46 0 46 56 0 47 58 0 45 52 0 55 53 1 56 47 0
		 55 56 1 57 49 1 58 52 0 57 58 1 59 55 1 18 59 0 60 49 1 59 60 0 61 57 1 60 61 0 62 51 1
		 61 62 0 63 51 1 64 50 1 62 64 0 65 50 1 64 65 0 66 45 0 65 66 0 68 78 1 67 72 1 67 47 1
		 69 73 1 69 52 1 70 71 1 71 34 1 45 68 1 32 70 1 46 70 1 33 71 1 48 71 1 72 70 1 72 56 1
		 73 67 1 73 58 1 74 72 1 37 74 0 75 67 1 74 75 0 76 73 1 75 76 0 77 69 1 76 77 0 78 69 1
		 79 68 1 77 79 0 80 68 1 79 80 0 80 66 0;
	setAttr -s 64 -ch 260 ".fc[0:63]" -type "polyFaces" 
		f 5 -20 10 0 35 5
		mu 0 5 3 2 0 27 1
		f 4 21 -4 2 22
		mu 0 4 19 8 6 18
		f 4 25 24 -6 4
		mu 0 4 20 21 3 1
		f 4 6 13 -8 -12
		mu 0 4 4 9 10 5
		f 4 16 12 7 -15
		mu 0 4 11 12 13 14
		f 3 8 -10 -14
		mu 0 3 9 15 10
		f 4 1 -16 14 9
		mu 0 4 16 17 11 14
		f 4 17 -23 20 -13
		mu 0 4 7 19 18 5
		f 4 3 18 -26 23
		mu 0 4 6 8 21 20
		f 5 26 11 -21 -28 -29
		mu 0 5 22 4 5 18 23
		f 4 -31 27 -3 -30
		mu 0 4 24 23 18 6
		f 4 -32 -33 29 -24
		mu 0 4 20 25 24 6
		f 4 -35 31 -5 -34
		mu 0 4 26 25 20 1
		f 5 -1 -37 -38 33 -36
		mu 0 5 27 0 28 26 1
		f 3 -40 36 -39
		mu 0 3 29 28 0
		f 4 38 -11 -41 -42
		mu 0 4 29 0 2 30
		f 5 -48 -71 -43 -53 19
		mu 0 5 31 35 34 33 32
		f 4 -59 -45 45 -22
		mu 0 4 36 39 38 37
		f 4 -47 47 -25 -61
		mu 0 4 40 35 31 41
		f 4 53 49 -56 -49
		mu 0 4 42 45 44 43
		f 4 56 -50 -55 -17
		mu 0 4 46 49 48 47
		f 3 55 51 -51
		mu 0 3 43 44 50
		f 4 -52 -57 15 -44
		mu 0 4 51 49 46 52
		f 4 54 -58 58 -18
		mu 0 4 53 45 39 36
		f 4 -60 60 -19 -46
		mu 0 4 38 40 41 37
		f 5 63 62 57 -54 -62
		mu 0 5 54 55 39 45 42
		f 4 64 44 -63 65
		mu 0 4 56 38 39 55
		f 4 59 -65 67 66
		mu 0 4 40 38 56 57
		f 4 68 46 -67 69
		mu 0 4 58 35 40 57
		f 5 70 -69 72 71 42
		mu 0 5 34 35 58 59 33
		f 3 73 -72 74
		mu 0 3 60 33 59
		f 4 75 40 52 -74
		mu 0 4 60 61 32 33
		f 5 -81 -108 -77 -84 92
		mu 0 5 62 63 64 65 66
		f 4 -96 -78 78 -95
		mu 0 4 67 68 69 70
		f 4 -80 80 -98 -99
		mu 0 4 71 63 62 72
		f 4 84 81 -87 -7
		mu 0 4 73 74 75 76
		f 4 87 -82 -86 -90
		mu 0 4 77 78 79 80
		f 3 86 82 -9
		mu 0 3 76 75 81
		f 4 -83 -88 88 -2
		mu 0 4 82 78 77 83
		f 4 85 -94 95 -91
		mu 0 4 84 74 68 67
		f 4 -97 98 -92 -79
		mu 0 4 69 71 72 70
		f 5 100 99 93 -85 -27
		mu 0 5 85 86 68 74 73
		f 4 101 77 -100 102
		mu 0 4 87 69 68 86
		f 4 96 -102 104 103
		mu 0 4 71 69 87 88
		f 4 105 79 -104 106
		mu 0 4 89 63 71 88
		f 5 107 -106 109 108 76
		mu 0 5 64 63 89 90 65
		f 3 110 -109 111
		mu 0 3 91 65 90
		f 4 113 112 83 -111
		mu 0 4 91 92 66 65
		f 5 -93 121 114 138 118
		mu 0 5 93 94 95 96 97
		f 4 94 -117 115 127
		mu 0 4 98 99 100 101
		f 4 129 97 -119 117
		mu 0 4 102 103 93 97
		f 4 48 124 -120 -123
		mu 0 4 104 105 106 107
		f 4 89 123 119 -126
		mu 0 4 108 109 110 111
		f 3 50 -121 -125
		mu 0 3 105 112 106
		f 4 43 -89 125 120
		mu 0 4 113 114 108 111
		f 4 90 -128 126 -124
		mu 0 4 115 98 101 107
		f 4 116 91 -130 128
		mu 0 4 100 99 103 102
		f 5 61 122 -127 -131 -132
		mu 0 5 116 104 107 101 117
		f 4 -134 130 -116 -133
		mu 0 4 118 117 101 100
		f 4 -135 -136 132 -129
		mu 0 4 102 119 118 100
		f 4 -138 134 -118 -137
		mu 0 4 120 119 102 97
		f 5 -115 -140 -141 136 -139
		mu 0 5 96 95 121 120 97
		f 3 -143 139 -142
		mu 0 3 122 121 95
		f 4 141 -122 -113 -144
		mu 0 4 122 95 94 123;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tenticle2";
	setAttr ".t" -type "double3" 5.1203364889936758 -5.0387465772916205 0 ;
	setAttr ".rp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
	setAttr ".sp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
createNode mesh -n "TenticleShape2" -p "Tenticle2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 24 "f[0:23]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.92934406 0.39031744
		 0.95246536 0.3903175 0.97026312 0.52459359 0.94623011 0.52459365 0.82223654 0.39031738
		 0.84538907 0.39031744 0.8475185 0.52459365 0.82411653 0.52459359 0.86700225 0.39031738
		 0.87078536 0.52459359 0.88797659 0.39031738 0.89550656 0.52459353 0.9083398 0.39031756
		 0.92135924 0.52459359 0.90881431 0.30319029 0.84532118 0.30319023 0.96247494 0.6430521
		 0.93891549 0.64305204 0.84012252 0.64305204 0.81503981 0.64305222 0.86670053 0.6430521
		 0.8919391 0.64305198 0.91557938 0.6430521 0.96444011 0.78026342 0.93929881 0.78026336
		 0.83960915 0.78026336 0.81453347 0.7802633 0.86450863 0.78026342 0.88934565 0.78026348
		 0.91428816 0.78026336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -41.924942 -73.284149 4.1342483 
		-36.265343 -74.948395 5.3386364 -32.420361 -76.022675 0.82894456 -34.234959 -75.432655 
		-4.8850608 -39.894547 -73.76841 -6.0893946 -43.739552 -72.694145 -1.5797195 -30.30777 
		-44.055214 2.7659934 -24.634518 -45.402821 1.2607718 -22.420437 -43.645477 -4.0532017 
		-25.879566 -40.540524 -7.8618946 -31.552811 -39.192917 -6.3566966 -33.766903 -40.95026 
		-1.0427684 -42.872715 -93.906105 5.3286653 -31.454693 -17.114058 10.010641 -25.475052 
		-17.577551 10.579177 -21.922579 -16.800303 5.7774954 -24.349787 -15.559583 0.40728846 
		-30.329458 -15.096094 -0.16126287 -33.881886 -15.87333 4.6404047 -19.589256 14.818445 
		12.494868 -13.979003 12.71243 13.051219 -10.556157 11.933799 8.1560144 -12.743487 
		13.261186 2.704535 -18.353695 15.367196 2.1481736 -21.776587 16.145836 7.0433912;
	setAttr -s 25 ".vt[0:24]"  -4.93053818 -8.24277115 0.083552361 -4.3141942 -8.4243536 -0.077620983
		 -4.15596771 -8.53281975 -0.71167612 -4.61407948 -8.45970058 -1.18455219 -5.23041964 -8.27812004 -1.023374081
		 -5.38864946 -8.16965389 -0.38931942 -2.90461159 -4.98381519 0.72461486 -2.41941357 -5.1258173 0.29653835
		 -2.46121836 -4.91992092 -0.33170462 -2.98821402 -4.57202244 -0.5318675 -3.47341204 -4.43002033 -0.1037941
		 -3.43161058 -4.63591671 0.52444506 -5.35636282 -10.53606224 -0.32249832 -2.70896316 -2.003565073 1.48353028
		 -2.092221737 -2.050422668 1.24633932 -1.97713351 -1.95299578 0.60128713 -2.47879004 -1.8087132 0.19342875
		 -3.095535278 -1.76185584 0.43061972 -3.21061969 -1.85928178 1.075668335 -1.41979635 1.55093646 1.20775795
		 -0.83998442 1.32128131 0.98435718 -0.7421912 1.24589097 0.33352661 -1.22419858 1.40015602 -0.093899488
		 -1.80400658 1.62981093 0.129498 -1.90180361 1.70520198 0.78033209;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 0 7 14 0 13 14 1 8 15 0 14 15 1 9 16 0 15 16 1 10 17 0
		 16 17 1 11 18 0 17 18 1 18 13 1 13 19 0 14 20 0 19 20 0 15 21 0 20 21 0 16 22 0 21 22 0
		 17 23 0 22 23 0 18 24 0 23 24 0 24 19 0;
	setAttr -s 24 -ch 90 ".fc[0:23]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 4 5 6 7
		f 4 2 15 -9 -15
		mu 0 4 5 8 9 6
		f 4 3 16 -10 -16
		mu 0 4 8 10 11 9
		f 4 4 17 -11 -17
		mu 0 4 10 12 13 11
		f 4 5 12 -12 -18
		mu 0 4 12 0 3 13
		f 3 -1 -19 19
		mu 0 3 1 0 14
		f 3 -2 -20 20
		mu 0 3 5 4 15
		f 3 -3 -21 21
		mu 0 3 8 5 15
		f 3 -4 -22 22
		mu 0 3 10 8 14
		f 3 -5 -23 23
		mu 0 3 12 10 14
		f 3 -6 -24 18
		mu 0 3 0 12 14
		f 4 6 25 -27 -25
		mu 0 4 3 2 16 17
		f 4 7 27 -29 -26
		mu 0 4 7 6 18 19
		f 4 8 29 -31 -28
		mu 0 4 6 9 20 18
		f 4 9 31 -33 -30
		mu 0 4 9 11 21 20
		f 4 10 33 -35 -32
		mu 0 4 11 13 22 21
		f 4 11 24 -36 -34
		mu 0 4 13 3 17 22
		f 4 26 37 -39 -37
		mu 0 4 17 16 23 24
		f 4 28 39 -41 -38
		mu 0 4 19 18 25 26
		f 4 30 41 -43 -40
		mu 0 4 18 20 27 25
		f 4 32 43 -45 -42
		mu 0 4 20 21 28 27
		f 4 34 45 -47 -44
		mu 0 4 21 22 29 28
		f 4 35 36 -48 -46
		mu 0 4 22 17 24 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tenticle5";
	setAttr ".t" -type "double3" 0 -2.9638694953008784 0 ;
	setAttr ".rp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
	setAttr ".sp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
createNode mesh -n "TenticleShape5" -p "Tenticle5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 24 "f[0:23]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.92934406 0.39031744
		 0.95246536 0.3903175 0.97026312 0.52459359 0.94623011 0.52459365 0.82223654 0.39031738
		 0.84538907 0.39031744 0.8475185 0.52459365 0.82411653 0.52459359 0.86700225 0.39031738
		 0.87078536 0.52459359 0.88797659 0.39031738 0.89550656 0.52459353 0.9083398 0.39031756
		 0.92135924 0.52459359 0.90881431 0.30319029 0.84532118 0.30319023 0.96247494 0.6430521
		 0.93891549 0.64305204 0.84012252 0.64305204 0.81503981 0.64305222 0.86670053 0.6430521
		 0.8919391 0.64305198 0.91557938 0.6430521 0.96444011 0.78026342 0.93929881 0.78026336
		 0.83960915 0.78026336 0.81453347 0.7802633 0.86450863 0.78026342 0.88934565 0.78026348
		 0.91428816 0.78026336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  32.145691 -78.800827 -29.057175 
		28.977228 -80.3377 -24.203907 31.763397 -81.259979 -18.972477 37.717915 -80.645378 
		-18.594349 40.88636 -79.108521 -23.447659 38.100189 -78.186241 -28.679077 21.003323 
		-49.228912 -19.228554 20.340656 -50.415623 -13.386945 24.455736 -48.538288 -9.4533291 
		29.23345 -45.474239 -11.361337 29.896172 -44.287525 -17.202917 25.78113 -46.164867 
		-21.136518 38.794174 -99.48391 -28.063135 10.645566 -22.405621 -25.246553 7.9460897 
		-22.726366 -19.899046 11.103085 -21.801575 -14.884068 16.959427 -20.556055 -15.216647 
		19.658899 -20.235312 -20.564156 16.501972 -21.160093 -25.579096 3.9209204 9.7809801 
		-16.041412 1.3726639 7.8092461 -10.986141 4.6686554 7.1766605 -6.01403 10.51287 8.5158119 
		-6.0972004 13.061193 10.487543 -11.15245 9.7651348 11.120136 -16.124584;
	setAttr -s 25 ".vt[0:24]"  2.46454239 -8.24277115 -4.54949951 2.32195616 -8.4243536 -3.92859364
		 2.81064606 -8.53281975 -3.49472094 3.44190884 -8.45970058 -3.68175316 3.58449125 -8.27812004 -4.30266237
		 3.09580183 -8.16965389 -4.73653412 1.6786176 -4.98381519 -3.050796032 1.83332908 -5.1258173 -2.42252159
		 2.40950155 -4.91992092 -2.16862822 2.83095789 -4.57202244 -2.54300976 2.6762538 -4.43002033 -3.17128325
		 2.10008574 -4.63591671 -3.42517614 3.19613123 -10.53606224 -4.73886442 0.36941743 -2.003565073 -3.22885251
		 0.29402006 -2.050422668 -2.57238674 0.81244022 -1.95299578 -2.17165828 1.40624249 -1.8087132 -2.42739606
		 1.48163986 -1.76185584 -3.083861351 0.96322757 -1.85928178 -3.48458862 0.016811013 1.55093646 -1.95854664
		 -0.053699017 1.32128131 -1.34120321 0.47784436 1.24589097 -0.95312166 1.079893827 1.40015602 -1.18238354
		 1.15041161 1.62981093 -1.7997272 0.6188606 1.70520198 -2.18780851;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 0 7 14 0 13 14 1 8 15 0 14 15 1 9 16 0 15 16 1 10 17 0
		 16 17 1 11 18 0 17 18 1 18 13 1 13 19 0 14 20 0 19 20 0 15 21 0 20 21 0 16 22 0 21 22 0
		 17 23 0 22 23 0 18 24 0 23 24 0 24 19 0;
	setAttr -s 24 -ch 90 ".fc[0:23]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 4 5 6 7
		f 4 2 15 -9 -15
		mu 0 4 5 8 9 6
		f 4 3 16 -10 -16
		mu 0 4 8 10 11 9
		f 4 4 17 -11 -17
		mu 0 4 10 12 13 11
		f 4 5 12 -12 -18
		mu 0 4 12 0 3 13
		f 3 -1 -19 19
		mu 0 3 1 0 14
		f 3 -2 -20 20
		mu 0 3 5 4 15
		f 3 -3 -21 21
		mu 0 3 8 5 15
		f 3 -4 -22 22
		mu 0 3 10 8 14
		f 3 -5 -23 23
		mu 0 3 12 10 14
		f 3 -6 -24 18
		mu 0 3 0 12 14
		f 4 6 25 -27 -25
		mu 0 4 3 2 16 17
		f 4 7 27 -29 -26
		mu 0 4 7 6 18 19
		f 4 8 29 -31 -28
		mu 0 4 6 9 20 18
		f 4 9 31 -33 -30
		mu 0 4 9 11 21 20
		f 4 10 33 -35 -32
		mu 0 4 11 13 22 21
		f 4 11 24 -36 -34
		mu 0 4 13 3 17 22
		f 4 26 37 -39 -37
		mu 0 4 17 16 23 24
		f 4 28 39 -41 -38
		mu 0 4 19 18 25 26
		f 4 30 41 -43 -40
		mu 0 4 18 20 27 25
		f 4 32 43 -45 -42
		mu 0 4 20 21 28 27
		f 4 34 45 -47 -44
		mu 0 4 21 22 29 28
		f 4 35 36 -48 -46
		mu 0 4 22 17 24 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tenticle3";
	setAttr ".rp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
	setAttr ".sp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
createNode mesh -n "TenticleShape3" -p "Tenticle3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 24 "f[0:23]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.92934406 0.39031744
		 0.95246536 0.3903175 0.97026312 0.52459359 0.94623011 0.52459365 0.82223654 0.39031738
		 0.84538907 0.39031744 0.8475185 0.52459365 0.82411653 0.52459359 0.86700225 0.39031738
		 0.87078536 0.52459359 0.88797659 0.39031738 0.89550656 0.52459353 0.9083398 0.39031756
		 0.92135924 0.52459359 0.90881431 0.30319029 0.84532118 0.30319023 0.96247494 0.6430521
		 0.93891549 0.64305204 0.84012252 0.64305204 0.81503981 0.64305222 0.86670053 0.6430521
		 0.8919391 0.64305198 0.91557938 0.6430521 0.96444011 0.78026342 0.93929881 0.78026336
		 0.83960915 0.78026336 0.81453347 0.7802633 0.86450863 0.78026342 0.88934565 0.78026348
		 0.91428816 0.78026336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -44.351307 -76.810303 -34.905354 
		-42.054802 -79.171944 -29.925491 -36.787289 -81.975563 -30.108583 -33.816292 -82.417534 
		-35.271469 -36.112804 -80.055908 -40.251316 -41.380314 -77.252274 -40.068218 -37.146358 
		-46.477299 -22.510576 -32.868088 -49.177029 -19.340519 -27.230408 -49.166939 -21.314106 
		-25.871065 -46.457096 -26.457745 -30.149269 -43.757397 -29.627806 -35.786911 -43.767506 
		-27.654234 -48.654144 -97.263206 -39.079662 -32.48 -20.952721 -13.603872 -29.172319 
		-22.379854 -8.8407078 -23.327471 -23.433533 -9.4721184 -20.790348 -23.060072 -14.866679 
		-24.09803 -21.63294 -19.629835 -29.942837 -20.579266 -18.99844 -16.865713 7.8316417 
		-3.9369681 -14.28645 4.906004 0.58245319 -8.9332418 2.3723581 -0.17350207 -6.1593671 
		2.7643819 -5.4488716 -8.7385893 5.6900029 -9.9683113 -14.091835 8.2236681 -9.2123394;
	setAttr -s 25 ".vt[0:24]"  -3.95060253 -8.56880093 -5.15343666 -3.80391955 -8.83767319 -4.56605148
		 -3.22345352 -9.1444521 -4.47789335 -2.78967404 -9.18235493 -4.97711372 -2.93635821 -8.91348362 -5.56449747
		 -3.51682377 -8.60670471 -5.65265465 -3.4657793 -5.21396589 -3.60623121 -3.064486027 -5.51569176 -3.17408037
		 -2.40890312 -5.50654984 -3.26873446 -2.1546216 -5.19567919 -3.79554081 -2.55590796 -4.89395618 -4.2276907
		 -3.21148586 -4.90310001 -4.13303709 -4.30612946 -10.83750534 -5.72960329 -3.1773653 -2.38952851 -2.49981236
		 -2.91710949 -2.55337739 -1.91308594 -2.26631045 -2.66450953 -1.85883212 -1.87577236 -2.6117928 -2.39130425
		 -2.13602853 -2.44794416 -2.97802973 -2.78682256 -2.33681273 -3.03228426 -1.71742547 0.80486238 -1.072600365
		 -1.52950644 0.4743464 -0.53013265 -0.92783391 0.19860125 -0.50209343 -0.51408809 0.25337553 -1.016522646
		 -0.70200229 0.58388972 -1.55899143 -1.30367923 0.85963702 -1.5870297;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 0 7 14 0 13 14 1 8 15 0 14 15 1 9 16 0 15 16 1 10 17 0
		 16 17 1 11 18 0 17 18 1 18 13 1 13 19 0 14 20 0 19 20 0 15 21 0 20 21 0 16 22 0 21 22 0
		 17 23 0 22 23 0 18 24 0 23 24 0 24 19 0;
	setAttr -s 24 -ch 90 ".fc[0:23]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 4 5 6 7
		f 4 2 15 -9 -15
		mu 0 4 5 8 9 6
		f 4 3 16 -10 -16
		mu 0 4 8 10 11 9
		f 4 4 17 -11 -17
		mu 0 4 10 12 13 11
		f 4 5 12 -12 -18
		mu 0 4 12 0 3 13
		f 3 -1 -19 19
		mu 0 3 1 0 14
		f 3 -2 -20 20
		mu 0 3 5 4 15
		f 3 -3 -21 21
		mu 0 3 8 5 15
		f 3 -4 -22 22
		mu 0 3 10 8 14
		f 3 -5 -23 23
		mu 0 3 12 10 14
		f 3 -6 -24 18
		mu 0 3 0 12 14
		f 4 6 25 -27 -25
		mu 0 4 3 2 16 17
		f 4 7 27 -29 -26
		mu 0 4 7 6 18 19
		f 4 8 29 -31 -28
		mu 0 4 6 9 20 18
		f 4 9 31 -33 -30
		mu 0 4 9 11 21 20
		f 4 10 33 -35 -32
		mu 0 4 11 13 22 21
		f 4 11 24 -36 -34
		mu 0 4 13 3 17 22
		f 4 26 37 -39 -37
		mu 0 4 17 16 23 24
		f 4 28 39 -41 -38
		mu 0 4 19 18 25 26
		f 4 30 41 -43 -40
		mu 0 4 18 20 27 25
		f 4 32 43 -45 -42
		mu 0 4 20 21 28 27
		f 4 34 45 -47 -44
		mu 0 4 21 22 29 28
		f 4 35 36 -48 -46
		mu 0 4 22 17 24 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tenticle6";
	setAttr ".rp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
	setAttr ".sp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
createNode mesh -n "TenticleShape6" -p "Tenticle6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 24 "f[0:23]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.92934406 0.39031744
		 0.95246536 0.3903175 0.97026312 0.52459359 0.94623011 0.52459365 0.82223654 0.39031738
		 0.84538907 0.39031744 0.8475185 0.52459365 0.82411653 0.52459359 0.86700225 0.39031738
		 0.87078536 0.52459359 0.88797659 0.39031738 0.89550656 0.52459353 0.9083398 0.39031756
		 0.92135924 0.52459359 0.90881431 0.30319029 0.84532118 0.30319023 0.96247494 0.6430521
		 0.93891549 0.64305204 0.84012252 0.64305204 0.81503981 0.64305222 0.86670053 0.6430521
		 0.8919391 0.64305198 0.91557938 0.6430521 0.96444011 0.78026342 0.93929881 0.78026336
		 0.83960915 0.78026336 0.81453347 0.7802633 0.86450863 0.78026342 0.88934565 0.78026348
		 0.91428816 0.78026336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  41.617474 -81.090965 -2.1272867 
		36.368298 -82.650276 0.42197776 36.05687 -83.533363 6.391983 40.994534 -82.857124 
		9.8126869 46.243687 -81.297829 7.2633891 46.555119 -80.414742 1.29338 22.578094 -51.66436 
		-4.7560186 18.97473 -52.845879 -0.052259564 20.466375 -50.91853 5.4720497 25.561398 
		-47.809654 6.2925529 29.164841 -46.628136 1.5887866 27.673185 -48.555485 -3.9354742 
		45.982903 -101.71511 1.0731905 19.702562 -24.922739 -11.613395 14.592731 -25.26018 
		-8.4010448 14.701387 -24.292925 -2.4362426 19.919834 -22.988247 0.31619334 25.029701 
		-22.650808 -2.8961706 24.921091 -23.618057 -8.86096 8.891161 7.212275 -7.365109 4.075058 
		5.2248783 -4.3162036 4.3365321 4.6361675 1.693506 9.4141216 6.0348549 4.6542645 14.230273 
		8.0222492 1.6053692 13.968752 8.6109657 -4.4043503;
	setAttr -s 25 ".vt[0:24]"  4.58932114 -8.24277115 2.019576073 3.95447493 -8.4243536 1.96640635
		 3.59422302 -8.53281975 2.51164055 3.86881161 -8.45970058 3.11003637 4.50365782 -8.27812004 3.16320157
		 4.8639102 -8.16965389 2.61796713 2.89229393 -4.98381519 0.74072981 2.29228306 -5.1258173 0.98289776
		 2.12258673 -4.91992092 1.58923149 2.55290461 -4.57202244 1.95339334 3.15292311 -4.43002033 1.71122909
		 3.3226161 -4.63591671 1.10489941 4.85570765 -10.53606224 2.54421043 2.9604094 -2.003565073 -0.040033102
		 2.29988718 -2.050422668 -0.021652222 1.97665906 -1.95299578 0.54831195 2.31394982 -1.8087132 1.099891305
		 2.97447586 -1.76185584 1.081510782 3.2977078 -1.85928178 0.51155066 1.65296137 1.55093646 -0.20909047
		 1.031857014 1.32128131 -0.19141948 0.72300351 1.24589097 0.38974756 1.035258055 1.40015602 0.95323986
		 1.65636635 1.62981093 0.93557256 1.96521604 1.70520198 0.35440195;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 0 7 14 0 13 14 1 8 15 0 14 15 1 9 16 0 15 16 1 10 17 0
		 16 17 1 11 18 0 17 18 1 18 13 1 13 19 0 14 20 0 19 20 0 15 21 0 20 21 0 16 22 0 21 22 0
		 17 23 0 22 23 0 18 24 0 23 24 0 24 19 0;
	setAttr -s 24 -ch 90 ".fc[0:23]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 4 5 6 7
		f 4 2 15 -9 -15
		mu 0 4 5 8 9 6
		f 4 3 16 -10 -16
		mu 0 4 8 10 11 9
		f 4 4 17 -11 -17
		mu 0 4 10 12 13 11
		f 4 5 12 -12 -18
		mu 0 4 12 0 3 13
		f 3 -1 -19 19
		mu 0 3 1 0 14
		f 3 -2 -20 20
		mu 0 3 5 4 15
		f 3 -3 -21 21
		mu 0 3 8 5 15
		f 3 -4 -22 22
		mu 0 3 10 8 14
		f 3 -5 -23 23
		mu 0 3 12 10 14
		f 3 -6 -24 18
		mu 0 3 0 12 14
		f 4 6 25 -27 -25
		mu 0 4 3 2 16 17
		f 4 7 27 -29 -26
		mu 0 4 7 6 18 19
		f 4 8 29 -31 -28
		mu 0 4 6 9 20 18
		f 4 9 31 -33 -30
		mu 0 4 9 11 21 20
		f 4 10 33 -35 -32
		mu 0 4 11 13 22 21
		f 4 11 24 -36 -34
		mu 0 4 13 3 17 22
		f 4 26 37 -39 -37
		mu 0 4 17 16 23 24
		f 4 28 39 -41 -38
		mu 0 4 19 18 25 26
		f 4 30 41 -43 -40
		mu 0 4 18 20 27 25
		f 4 32 43 -45 -42
		mu 0 4 20 21 28 27
		f 4 34 45 -47 -44
		mu 0 4 21 22 29 28
		f 4 35 36 -48 -46
		mu 0 4 22 17 24 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Sighn";
	setAttr ".rp" -type "double3" 0 -4.3822397178483108 0 ;
	setAttr ".sp" -type "double3" 0 -4.3822397178483108 0 ;
createNode mesh -n "SighnShape" -p "Sighn";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.050000012 0.97528708
		 0 0.97528708 0 0.96153295 0.050000012 0.96153295 0.099999994 0.97528708 0.099999994
		 0.96153295 0.15000001 0.97528708 0.15000001 0.96153295 0.19999999 0.97528708 0.19999999
		 0.96153295 0.25 0.97528708 0.25 0.96153295 0.30000001 0.97528708 0.30000001 0.96153295
		 0.35000002 0.97528708 0.35000002 0.96153295 0.40000004 0.97528708 0.40000004 0.96153295
		 0.45000005 0.97528708 0.45000005 0.96153295 0.50000006 0.97528708 0.50000006 0.96153295
		 0.55000007 0.97528708 0.55000007 0.96153295 0.60000008 0.97528708 0.60000008 0.96153295
		 0.6500001 0.97528708 0.6500001 0.96153295 0.70000011 0.97528708 0.70000011 0.96153295
		 0.75000012 0.97528708 0.75000012 0.96153295 0.80000013 0.97528708 0.80000013 0.96153295
		 0.85000014 0.97528708 0.85000014 0.96153295 0.90000015 0.97528708 0.90000015 0.96153295
		 0.95000017 0.97528708 0.95000017 0.96153295 1.000000119209 0.97528708 1.000000119209
		 0.96153295 0 0.95071626 0.050000012 0.95071626 0.099999994 0.95071626 0.15000001
		 0.95071626 0.19999999 0.95071626 0.25 0.95071626 0.30000001 0.95071626 0.35000002
		 0.95071626 0.40000004 0.95071626 0.45000005 0.95071626 0.50000006 0.95071626 0.55000007
		 0.95071626 0.60000008 0.95071626 0.6500001 0.95071626 0.70000011 0.95071626 0.75000012
		 0.95071626 0.80000013 0.95071626 0.85000014 0.95071626 0.90000015 0.95071626 0.95000017
		 0.95071626 1.000000119209 0.95071626 0.050000012 0.95071626 0 0.95071626 0 0.93198496
		 0.050000012 0.93198496 0.099999994 0.95071626 0.099999994 0.93198496 0.15000001 0.95071626
		 0.15000001 0.93198496 0.19999999 0.95071626 0.19999999 0.93198496 0.25 0.95071626
		 0.25 0.93198496 0.30000001 0.95071626 0.30000001 0.93198496 0.35000002 0.95071626
		 0.35000002 0.93198496 0.40000004 0.95071626 0.40000004 0.93198496 0.45000005 0.95071626
		 0.45000005 0.93198496 0.50000006 0.95071626 0.50000006 0.93198496 0.55000007 0.95071626
		 0.55000007 0.93198496 0.60000008 0.95071626 0.60000008 0.93198496 0.6500001 0.95071626
		 0.65000015 0.93198496 0.70000011 0.95071626 0.70000011 0.93198496 0.75000012 0.95071626
		 0.75000012 0.93198496 0.80000013 0.95071626 0.80000013 0.93198496 0.85000014 0.95071626
		 0.8500002 0.93198496 0.90000015 0.95071626 0.90000015 0.93198496 0.95000017 0.95071626
		 0.95000017 0.93198496 1.000000119209 0.95071626 1.000000119209 0.93198496 0.050000012
		 0.85072237 0 0.85072237 0 0.83390915 0.050000012 0.83390915 0.099999994 0.85072237
		 0.099999994 0.83390915 0.15000001 0.85072237 0.15000001 0.83390915 0.19999999 0.85072237
		 0.19999999 0.83390915 0.25 0.85072237 0.25 0.83390915 0.30000001 0.85072237 0.30000001
		 0.83390915 0.35000002 0.85072237 0.35000002 0.83390915 0.40000004 0.85072237 0.40000004
		 0.83390915 0.45000005 0.85072237 0.45000005 0.83390915 0.50000006 0.85072237 0.50000006
		 0.83390915 0.55000007 0.85072237 0.55000007 0.83390915 0.60000008 0.85072237 0.60000008
		 0.83390915 0.6500001 0.85072237 0.6500001 0.83390915 0.70000011 0.85072237 0.70000011
		 0.83390915 0.75000012 0.85072237 0.75000012 0.83390915 0.80000013 0.85072237 0.80000013
		 0.83390915 0.85000014 0.85072237 0.85000014 0.83390915 0.90000015 0.85072237 0.90000015
		 0.83390915 0.95000017 0.85072237 0.95000017 0.83390915 1.000000119209 0.85072237
		 1.000000119209 0.83390915 0.050000012 0.85072237 0 0.85072237 0.099999994 0.85072237
		 0.15000001 0.85072237 0.19999999 0.85072237 0.25 0.85072237 0.30000001 0.85072237
		 0.35000002 0.85072237 0.40000004 0.85072237 0.45000005 0.85072237 0.50000006 0.85072237
		 0.55000007 0.85072237 0.60000008 0.85072237 0.6500001 0.85072237 0.70000011 0.85072237
		 0.75000012 0.85072237 0.80000013 0.85072237 0.85000014 0.85072237 0.90000015 0.85072237
		 0.95000017 0.85072237 1.000000119209 0.85072237 0.70000011 0.8922891 0.75000012 0.8922891
		 0.80000013 0.8922891 0.85000014 0.8922891 0.90000015 0.8922891 0.95000017 0.8922891
		 1.000000119209 0.8922891 0 0.8922891 0.050000012 0.8922891 0.099999994 0.8922891
		 0.15000001 0.8922891 0.19999999 0.8922891 0.25 0.8922891 0.30000001 0.8922891 0.35000002
		 0.8922891 0.40000004 0.8922891 0.45000005 0.8922891 0.50000006 0.8922891 0.55000007
		 0.8922891 0.60000008 0.8922891 0.6500001 0.8922891;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 160 ".vt[0:159]"  59.47829437 -14.080438614 -11.95666409 52.87160492 -14.080438614 -29.75152588
		 41.089355469 -14.080438614 -44.63386917 25.28488159 -14.080438614 -55.14690399 7.0052146912 -14.080438614 -60.26152802
		 -11.96028328 -14.080438614 -59.47711563 -29.75515175 -14.080438614 -52.87042999 -44.63749313 -14.080438614 -41.088176727
		 -55.15052414 -14.080438614 -25.28370857 -60.26515961 -14.080438614 -7.0040369034
		 -59.48074341 -14.080438614 11.96146107 -52.87405396 -14.080438614 29.7563324 -41.09180069 -14.080438614 44.63867188
		 -25.28733444 -14.080438614 55.15171051 -7.0076608658 -14.080438614 60.26634979 11.95784569 -14.080438614 59.48192978
		 29.75271416 -14.080438614 52.87523651 44.63506699 -14.080438614 41.092990875 55.14813232 -14.080438614 25.28850746
		 60.26275253 -14.080438614 7.0088362694 59.47829437 24.19905853 -11.95666409 52.87160492 24.19905853 -29.75152588
		 41.089355469 24.19905853 -44.63386917 25.28488159 24.19905853 -55.14690399 7.0052146912 24.19905853 -60.26152802
		 -11.96028328 24.19905853 -59.47711563 -29.75515175 24.19905853 -52.87042999 -44.63749313 24.19905853 -41.088176727
		 -55.15052414 24.19905853 -25.28370857 -60.26515961 24.19905853 -7.0040369034 -59.48074341 24.19905853 11.96146107
		 -52.87405396 24.19905853 29.7563324 -41.09180069 24.19905853 44.63867188 -25.28733444 24.19905853 55.15171051
		 -7.0076608658 24.19905853 60.26634979 11.95784569 24.19905853 59.48192978 29.75271416 24.19905853 52.87523651
		 44.63506699 24.19905853 41.092990875 55.14813232 24.19905853 25.28850746 60.26275253 24.19905853 7.0088362694
		 66.88947296 17.66498184 -13.44676495 59.45959091 17.66498184 -33.45887756 46.20925903 17.66498184 -50.1955719
		 28.43553352 17.66498184 -62.018527985 7.87821531 17.66498184 -67.77045441 -13.45039272 17.66498184 -66.88829803
		 -33.46250916 17.66498184 -59.4584198 -50.19919968 17.66498184 -46.20808411 -62.022163391 17.66498184 -28.43436241
		 -67.77409363 17.66498184 -7.87703991 -66.89192963 17.66498184 13.45157242 -59.46205139 17.66498184 33.46369171
		 -46.21171951 17.66498184 50.20038223 -28.437994 17.66498184 62.023353577 -7.88067102 17.66498184 67.77528381
		 13.44795227 17.66498184 66.89312744 33.46007538 17.66498184 59.46324158 50.19676971 17.66498184 46.21291733
		 62.019752502 17.66498184 28.43916893 67.77167511 17.66498184 7.88184881 66.88947296 -7.54636192 -13.44676495
		 59.45959091 -7.54636192 -33.45887756 46.20925903 -7.54636192 -50.1955719 28.43553352 -7.54636192 -62.018527985
		 7.87821531 -7.54636192 -67.77045441 -13.45039272 -7.54636192 -66.88829803 -33.46250916 -7.54636192 -59.4584198
		 -50.19919968 -7.54636192 -46.20808411 -62.022163391 -7.54636192 -28.43436241 -67.77409363 -7.54636192 -7.87703991
		 -66.89192963 -7.54636192 13.45157242 -59.46205139 -7.54636192 33.46369171 -46.21171951 -7.54636192 50.20038223
		 -28.437994 -7.54636192 62.023353577 -7.88067102 -7.54636192 67.77528381 13.44795227 -7.54636192 66.89312744
		 33.46007538 -7.54636192 59.46324158 50.19676971 -7.54636192 46.21291733 62.019752502 -7.54636192 28.43916893
		 67.77167511 -7.54636192 7.88184881 62.92663956 14.32710457 -12.64998531 55.93693161 14.32710457 -31.47652054
		 62.92663956 -4.20848513 -12.64998531 55.93693161 -4.20848513 -31.47652054 43.47159576 14.32710457 -47.22167206
		 43.47159576 -4.20848513 -47.22167206 26.75084686 14.32710457 -58.34420013 26.75084686 -4.20848513 -58.34420013
		 7.41141319 14.32710457 -63.75535965 7.41141319 -4.20848513 -63.75535965 -12.65361881 14.32710457 -62.92546844
		 -12.65361881 -4.20848513 -62.92546844 -31.48015213 14.32710457 -55.93575287 -31.48015213 -4.20848513 -55.93575287
		 -47.22529984 14.32710457 -43.47042084 -47.22529984 -4.20848513 -43.47042084 -58.34783554 14.32710457 -26.74967003
		 -58.34783554 -4.20848513 -26.74967003 -63.75900269 14.32710457 -7.4102354 -63.75900269 -4.20848513 -7.4102354
		 -62.92909622 14.32710457 12.65479851 -62.92909622 -4.20848513 12.65479851 -55.93938828 14.32710457 31.48133278
		 -55.93938828 -4.20848513 31.48133278 -43.47405243 14.32710457 47.22648621 -43.47405243 -4.20848513 47.22648621
		 -26.75330353 14.32710457 58.34902191 -26.75330353 -4.20848513 58.34902191 -7.41386652 14.32710457 63.76018524
		 -7.41386652 -4.20848513 63.76018524 12.65117836 14.32710457 62.93029404 12.65117836 -4.20848513 62.93029404
		 31.47771645 14.32710457 55.94058228 31.47771645 -4.20848513 55.94058228 47.22286987 14.32710457 43.47525024
		 47.22286987 -4.20848513 43.47525024 58.34542084 14.32710457 26.75448227 58.34542084 -4.20848513 26.75448227
		 63.75658417 14.32710457 7.41504908 63.75658417 -4.20848513 7.41504908 -7.41386652 13.20887947 63.76018524
		 12.65118027 13.20887947 62.93029785 31.47771835 13.20887947 55.94058228 47.22286987 13.20887947 43.47525024
		 58.34542847 13.20887947 26.75448418 63.7565918 13.20887947 7.41504955 62.92663956 13.20887947 -12.64998531
		 55.93693161 13.20887947 -31.47652054 43.47159958 13.20887947 -47.22167206 26.75084877 13.20887947 -58.34420013
		 7.41141367 13.20887947 -63.75535965 -12.65361881 13.20887947 -62.92547226 -31.48015213 13.20887947 -55.93575287
		 -47.22529984 13.20887947 -43.47042084 -58.34783554 13.20887947 -26.74967003 -63.75900269 13.20887947 -7.41023588
		 -62.92909622 13.20887947 12.65479851 -55.93938828 13.20887947 31.48133278 -43.47405243 13.20887947 47.22648621
		 -26.75330353 13.20887947 58.34902191 -7.41386652 -2.12125731 63.76018524 12.65117836 -2.12125731 62.93029404
		 31.47771645 -2.12125731 55.94058228 47.22286987 -2.12125731 43.47525024 58.34542084 -2.12125731 26.75448227
		 63.75658417 -2.12125731 7.41504908 62.92663956 -2.12125731 -12.64998531 55.9369278 -2.12125731 -31.47652054
		 43.47159576 -2.12125731 -47.22167206 26.75084686 -2.12125731 -58.34420013 7.41141319 -2.12125731 -63.75535965
		 -12.65361786 -2.12125731 -62.92547226 -31.48015213 -2.12125731 -55.93575287 -47.22529984 -2.12125731 -43.47042084
		 -58.34783554 -2.12125731 -26.74967003 -63.75900269 -2.12125731 -7.4102354 -62.92909622 -2.12125731 12.65479851
		 -55.93938828 -2.12125731 31.48133278 -43.47405243 -2.12125731 47.22648621 -26.75330353 -2.12125731 58.34902191;
	setAttr -s 320 ".ed";
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
		 80 81 0 60 82 1 80 126 1 61 83 1 82 83 0 81 127 1 42 84 1 81 84 0 62 85 1 83 85 0
		 84 128 1 43 86 1 84 86 0 63 87 1 85 87 0 86 129 1 44 88 1 86 88 0 64 89 1 87 89 0
		 88 130 1 45 90 1 88 90 0 65 91 1;
	setAttr ".ed[166:319]" 89 91 0 90 131 1 46 92 1 90 92 0 66 93 1 91 93 0 92 132 1
		 47 94 1 92 94 0 67 95 1 93 95 0 94 133 1 48 96 1 94 96 0 68 97 1 95 97 0 96 134 1
		 49 98 1 96 98 0 69 99 1 97 99 0 98 135 1 50 100 1 98 100 0 70 101 1 99 101 0 100 136 1
		 51 102 1 100 102 0 71 103 1 101 103 0 102 137 1 52 104 1 102 104 0 72 105 1 103 105 0
		 104 138 1 53 106 1 104 106 0 73 107 1 105 107 0 106 139 1 54 108 1 106 108 0 74 109 1
		 107 109 0 108 120 1 55 110 1 108 110 0 75 111 1 109 111 0 110 121 1 56 112 1 110 112 0
		 76 113 1 111 113 0 112 122 1 57 114 1 112 114 0 77 115 1 113 115 0 114 123 1 58 116 1
		 114 116 0 78 117 1 115 117 0 116 124 1 59 118 1 116 118 0 79 119 1 117 119 0 118 125 1
		 118 80 0 119 82 0 120 140 1 121 141 1 120 121 1 122 142 1 121 122 1 123 143 1 122 123 1
		 124 144 1 123 124 1 125 145 1 124 125 1 126 146 1 125 126 1 127 147 1 126 127 1 128 148 1
		 127 128 1 129 149 1 128 129 1 130 150 1 129 130 1 131 151 1 130 131 1 132 152 1 131 132 1
		 133 153 1 132 133 1 134 154 1 133 134 1 135 155 1 134 135 1 136 156 1 135 136 1 137 157 1
		 136 137 1 138 158 1 137 138 1 139 159 1 138 139 1 139 120 1 140 109 1 141 111 1 140 141 1
		 142 113 1 141 142 1 143 115 1 142 143 1 144 117 1 143 144 1 145 119 1 144 145 1 146 82 1
		 145 146 1 147 83 1 146 147 1 148 85 1 147 148 1 149 87 1 148 149 1 150 89 1 149 150 1
		 151 91 1 150 151 1 152 93 1 151 152 1 153 95 1 152 153 1 154 97 1 153 154 1 155 99 1
		 154 155 1 156 101 1 155 156 1 157 103 1 156 157 1 158 105 1 157 158 1 159 107 1 158 159 1
		 159 140 1;
	setAttr -s 160 -ch 640 ".fc[0:159]" -type "polyFaces" 
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
		f 4 -143 144 254 -148
		mu 0 4 63 64 65 66
		f 4 -150 147 256 -153
		mu 0 4 67 63 66 68
		f 4 -155 152 258 -158
		mu 0 4 69 67 68 70
		f 4 -160 157 260 -163
		mu 0 4 71 69 70 72
		f 4 -165 162 262 -168
		mu 0 4 73 71 72 74
		f 4 -170 167 264 -173
		mu 0 4 75 73 74 76
		f 4 -175 172 266 -178
		mu 0 4 77 75 76 78
		f 4 -180 177 268 -183
		mu 0 4 79 77 78 80
		f 4 -185 182 270 -188
		mu 0 4 81 79 80 82
		f 4 -190 187 272 -193
		mu 0 4 83 81 82 84
		f 4 -195 192 274 -198
		mu 0 4 85 83 84 86
		f 4 -200 197 276 -203
		mu 0 4 87 85 86 88
		f 4 -205 202 278 -208
		mu 0 4 89 87 88 90
		f 4 -210 207 279 -213
		mu 0 4 91 89 90 92
		f 4 -215 212 242 -218
		mu 0 4 93 91 92 94
		f 4 -220 217 244 -223
		mu 0 4 95 93 94 96
		f 4 -225 222 246 -228
		mu 0 4 97 95 96 98
		f 4 -230 227 248 -233
		mu 0 4 99 97 98 100
		f 4 -235 232 250 -238
		mu 0 4 101 99 100 102
		f 4 -239 237 252 -145
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
		mu 0 4 106 105 147 148
		f 4 -42 141 149 -149
		mu 0 4 44 43 63 67
		f 4 61 150 -152 -146
		mu 0 4 105 109 149 147
		f 4 -43 148 154 -154
		mu 0 4 45 44 67 69
		f 4 62 155 -157 -151
		mu 0 4 109 111 150 149
		f 4 -44 153 159 -159
		mu 0 4 46 45 69 71
		f 4 63 160 -162 -156
		mu 0 4 111 113 151 150
		f 4 -45 158 164 -164
		mu 0 4 47 46 71 73
		f 4 64 165 -167 -161
		mu 0 4 113 115 152 151
		f 4 -46 163 169 -169
		mu 0 4 48 47 73 75
		f 4 65 170 -172 -166
		mu 0 4 115 117 153 152
		f 4 -47 168 174 -174
		mu 0 4 49 48 75 77
		f 4 66 175 -177 -171
		mu 0 4 117 119 154 153
		f 4 -48 173 179 -179
		mu 0 4 50 49 77 79
		f 4 67 180 -182 -176
		mu 0 4 119 121 155 154
		f 4 -49 178 184 -184
		mu 0 4 51 50 79 81
		f 4 68 185 -187 -181
		mu 0 4 121 123 156 155
		f 4 -50 183 189 -189
		mu 0 4 52 51 81 83
		f 4 69 190 -192 -186
		mu 0 4 123 125 157 156
		f 4 -51 188 194 -194
		mu 0 4 53 52 83 85
		f 4 70 195 -197 -191
		mu 0 4 125 127 158 157
		f 4 -52 193 199 -199
		mu 0 4 54 53 85 87
		f 4 71 200 -202 -196
		mu 0 4 127 129 159 158
		f 4 -53 198 204 -204
		mu 0 4 55 54 87 89
		f 4 72 205 -207 -201
		mu 0 4 129 131 160 159
		f 4 -54 203 209 -209
		mu 0 4 56 55 89 91
		f 4 73 210 -212 -206
		mu 0 4 131 133 161 160
		f 4 -55 208 214 -214
		mu 0 4 57 56 91 93
		f 4 74 215 -217 -211
		mu 0 4 133 135 162 161
		f 4 -56 213 219 -219
		mu 0 4 58 57 93 95
		f 4 75 220 -222 -216
		mu 0 4 135 137 163 162
		f 4 -57 218 224 -224
		mu 0 4 59 58 95 97
		f 4 76 225 -227 -221
		mu 0 4 137 139 164 163
		f 4 -58 223 229 -229
		mu 0 4 60 59 97 99
		f 4 77 230 -232 -226
		mu 0 4 139 141 165 164
		f 4 -59 228 234 -234
		mu 0 4 61 60 99 101
		f 4 78 235 -237 -231
		mu 0 4 141 143 166 165
		f 4 -60 233 238 -141
		mu 0 4 62 61 101 103
		f 4 79 143 -240 -236
		mu 0 4 143 145 167 166
		f 4 -243 240 282 -242
		mu 0 4 94 92 168 169
		f 4 -245 241 284 -244
		mu 0 4 96 94 169 170
		f 4 -247 243 286 -246
		mu 0 4 98 96 170 171
		f 4 -249 245 288 -248
		mu 0 4 100 98 171 172
		f 4 -251 247 290 -250
		mu 0 4 102 100 172 173
		f 4 -253 249 292 -252
		mu 0 4 104 102 173 174
		f 4 -255 251 294 -254
		mu 0 4 66 65 175 176
		f 4 -257 253 296 -256
		mu 0 4 68 66 176 177
		f 4 -259 255 298 -258
		mu 0 4 70 68 177 178
		f 4 -261 257 300 -260
		mu 0 4 72 70 178 179
		f 4 -263 259 302 -262
		mu 0 4 74 72 179 180
		f 4 -265 261 304 -264
		mu 0 4 76 74 180 181
		f 4 -267 263 306 -266
		mu 0 4 78 76 181 182
		f 4 -269 265 308 -268
		mu 0 4 80 78 182 183
		f 4 -271 267 310 -270
		mu 0 4 82 80 183 184
		f 4 -273 269 312 -272
		mu 0 4 84 82 184 185
		f 4 -275 271 314 -274
		mu 0 4 86 84 185 186
		f 4 -277 273 316 -276
		mu 0 4 88 86 186 187
		f 4 -279 275 318 -278
		mu 0 4 90 88 187 188
		f 4 -280 277 319 -241
		mu 0 4 92 90 188 168
		f 4 -283 280 216 -282
		mu 0 4 169 168 161 162
		f 4 -285 281 221 -284
		mu 0 4 170 169 162 163
		f 4 -287 283 226 -286
		mu 0 4 171 170 163 164
		f 4 -289 285 231 -288
		mu 0 4 172 171 164 165
		f 4 -291 287 236 -290
		mu 0 4 173 172 165 166
		f 4 -293 289 239 -292
		mu 0 4 174 173 166 167
		f 4 -295 291 146 -294
		mu 0 4 176 175 148 147
		f 4 -297 293 151 -296
		mu 0 4 177 176 147 149
		f 4 -299 295 156 -298
		mu 0 4 178 177 149 150
		f 4 -301 297 161 -300
		mu 0 4 179 178 150 151
		f 4 -303 299 166 -302
		mu 0 4 180 179 151 152
		f 4 -305 301 171 -304
		mu 0 4 181 180 152 153
		f 4 -307 303 176 -306
		mu 0 4 182 181 153 154
		f 4 -309 305 181 -308
		mu 0 4 183 182 154 155
		f 4 -311 307 186 -310
		mu 0 4 184 183 155 156
		f 4 -313 309 191 -312
		mu 0 4 185 184 156 157
		f 4 -315 311 196 -314
		mu 0 4 186 185 157 158
		f 4 -317 313 201 -316
		mu 0 4 187 186 158 159
		f 4 -319 315 206 -318
		mu 0 4 188 187 159 160
		f 4 -320 317 211 -281
		mu 0 4 168 188 160 161;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Squid";
	setAttr ".t" -type "double3" -0.025159857612924399 -0.00896616292323138 -0.29122632850146102 ;
	setAttr ".rp" -type "double3" -4.779179789693444e-007 -0.053719267249107416 -8.916263141145464e-007 ;
	setAttr ".sp" -type "double3" -4.779179789693444e-007 -0.053719267249107416 -8.916263141145464e-007 ;
createNode transform -n "transform2" -p "Squid";
	setAttr ".v" no;
createNode mesh -n "SquidShape" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:177]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 200 ".uvst[0].uvsp[0:199]" -type "float2" 0.30449542 0.71428704
		 0.27959743 0.74893272 0.2728748 0.74851918 0.29035702 0.71459353 0.26477572 0.74904263
		 0.27740291 0.71462762 0.29342565 0.74745309 0.28687271 0.7480818 0.32017246 0.713521
		 0.33689561 0.71258736 0.073427886 0.74745309 0.06612736 0.74745309 0.046300378 0.71258736
		 0.056012597 0.71306252 0.17343733 0.74904263 0.15920612 0.74844301 0.13937351 0.71462762
		 0.1549761 0.71462762 0.1828886 0.71462762 0.19539288 0.74904263 0.18403348 0.74853015
		 0.16942158 0.71462762 0.20762667 0.71462762 0.21460709 0.74904263 0.204761 0.74853015
		 0.19555995 0.71462762 0.23068556 0.71462762 0.23214969 0.74904263 0.22328582 0.74853015
		 0.21927801 0.71462762 0.24877641 0.74904263 0.24054447 0.74853015 0.24201921 0.71462762
		 0.25345752 0.71462762 0.25709787 0.74853015 0.2651839 0.71462762 0.25908712 0.48482797
		 0.26349363 0.48485461 0.27079716 0.48977289 0.26444671 0.48976222 0.29564545 0.52385342
		 0.28208402 0.52385342 0.25701889 0.48977289 0.2699872 0.52385342 0.25263903 0.48485461
		 0.27647182 0.48949537 0.2672824 0.48442766 0.26653489 0.4795309 0.28016868 0.48764339
		 0.3112472 0.52375937 0.3289586 0.52310133 0.08026427 0.4795309 0.10183296 0.4795309
		 0.10066488 0.48764339 0.077090949 0.48764339 0.088135809 0.52385342 0.064050049 0.52375937
		 0.039822634 0.52310133 0.054877844 0.48764339 0.065941781 0.48764339 0.05194601 0.52347744
		 0.058695581 0.4795309 0.069479898 0.4795309 0.15048268 0.4795309 0.16669926 0.4795309
		 0.1554341 0.48790756 0.14345714 0.48764339 0.12922928 0.48764339 0.13426611 0.4795309
		 0.11174217 0.52385342 0.12276211 0.52385342 0.13288274 0.52385342 0.16878799 0.48949537
		 0.17554191 0.48442766 0.18357792 0.48485461 0.17813161 0.48977289 0.1497871 0.52385342
		 0.16364285 0.52385342 0.19040605 0.48482797 0.19813123 0.48485461 0.1949921 0.48977289
		 0.18647203 0.48976222 0.18729851 0.52385342 0.17596737 0.52385342 0.2050468 0.48482797
		 0.21233132 0.48485461 0.21107265 0.48977289 0.20302489 0.48976222 0.20823625 0.52385342
		 0.19798645 0.52385342 0.21920648 0.48482797 0.22609523 0.48485461 0.22658971 0.48977289
		 0.21885815 0.48976222 0.22811601 0.52385342 0.21822581 0.52385342 0.23431465 0.48976222
		 0.23302224 0.48482797 0.23960242 0.48485461 0.24190065 0.48977289 0.23806557 0.52385342
		 0.24823615 0.52385342 0.24657056 0.48482797 0.24965295 0.48976222 0.25879976 0.52385342
		 0.3126311 0.57123184 0.29491672 0.57123184 0.27951935 0.57123184 0.33328268 0.57114077
		 0.35627624 0.57050228 0.077551737 0.57123184 0.052987423 0.57114077 0.02718189 0.57050228
		 0.040169146 0.57086706 0.10030392 0.57123184 0.11087021 0.57123184 0.12082872 0.57123184
		 0.13883707 0.57123184 0.15475252 0.57123184 0.1822823 0.57123184 0.16909805 0.57123184
		 0.20650831 0.57123184 0.19467303 0.57123184 0.22942188 0.57123184 0.21800891 0.57123184
		 0.24099955 0.57123184 0.25300029 0.57123184 0.26570454 0.57123184 0.31951872 0.64035809
		 0.30069885 0.64035809 0.2842249 0.64035809 0.34118405 0.64040053 0.36475101 0.64069748
		 0.073599488 0.64035809 0.049659338 0.64040053 0.024430778 0.64069748 0.03713062 0.64052784
		 0.095555514 0.64035809 0.10578981 0.64035809 0.11554977 0.64035809 0.13372454 0.64035809
		 0.15030548 0.64035809 0.17968413 0.64035809 0.16553596 0.64035809 0.20576593 0.64035809
		 0.19301644 0.64035809 0.23045447 0.64035809 0.2181628 0.64035809 0.24289659 0.64035809
		 0.25577781 0.64035809 0.26941141 0.64035809 0.314136 0.68546653 0.29716656 0.68547642
		 0.2820259 0.6854775 0.35383722 0.68599153 0.33331403 0.68551421 0.078109115 0.68546653
		 0.056364205 0.68551421 0.045175578 0.68571699 0.033893313 0.68599153 0.11766967 0.6854775
		 0.10831729 0.6854775 0.098597854 0.68547642 0.1514819 0.6854775 0.13525465 0.6854775
		 0.20634499 0.6854775 0.19373676 0.6854775 0.18053779 0.6854775 0.25520095 0.6854775
		 0.24279794 0.6854775 0.23068056 0.6854775 0.26816377 0.6854775 0.12245193 0.71462762
		 0.16651616 0.6854775 0.21859512 0.6854775 0.2227228 0.48108461 0.22073916 0.48068336
		 0.25434169 0.4795309 0.2177622 0.4795309 0.24214855 0.4795309 0.17946503 0.4795309
		 0.19223073 0.4795309 0.24071619 0.78681064 0.26109776 0.77225649 0.29337451 0.74745309
		 0.29332337 0.74745309 0.29322109 0.74745309 0.30225673 0.74745309 0.30526862 0.74745309
		 0.24071619 0.78681064 0.13725355 0.74745309 0.085046127 0.71428704 0.095329493 0.74745309
		 0.080728412 0.74745309 0.06571421 0.713521 0.12677255 0.74745309 0.11344686 0.71462762
		 0.11629149 0.74745309 0.10415539 0.71459353 0.29924485 0.74745309;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 180 ".pt";
	setAttr ".pt[0:165]" -type "float3"  5.3187909 61.674068 -16.369558 -17.211964 
		61.764153 8.7426156e-007 -5.3187871 61.764153 16.369556 13.924777 61.764153 10.11694 
		3.1474195 70.836678 -9.6867609 -10.185256 70.865738 -1.2227019e-008 -3.1474166 70.865738 
		9.6867599 8.2400494 70.865738 5.9867439 6.3617058 54.052021 -19.579319 -20.586916 
		54.054928 1.9559891e-006 -6.3617034 54.054928 19.579319 16.655161 54.054928 12.100683 
		-3.3881318e-021 3.8857806e-016 -3.3881318e-021 4.3483748 0.99703783 -13.382934 -11.384208 
		0.99703783 -8.2711067 -14.071657 0.99703783 1.0288381e-006 11.384197 0.99703783 8.2711067 
		10.110341 61.755142 -13.915692 1.1211635e-006 61.48489 -17.200739 -10.110343 61.48489 
		-13.915689 -16.358873 61.755142 -5.315321 -16.358868 61.764156 5.3153219 -10.110334 
		61.764156 13.915691 1.3726205e-006 61.764156 17.200739 10.110341 61.764156 13.915689 
		16.358877 61.764156 5.3153186 16.358877 61.764156 -5.3153229 6.0727568 70.727303 
		-8.3584356 1.246892e-006 70.640121 -10.331592 -6.0727539 70.640121 -8.3584328 -9.825922 
		70.727303 -3.192637 -9.825923 70.730209 3.1926374 -6.0727539 70.730209 8.3584318 
		1.2636558e-006 70.730209 10.331591 6.0727568 70.730209 8.3584299 9.8259258 70.730209 
		3.1926353 9.8259258 70.730209 -3.1926391 9.4246979 2.2949171 -12.971986 -6.6572429e-006 
		2.2949171 -16.034254 -9.4247046 2.2949171 -12.971984 -15.24949 2.2949171 -4.9548564 
		-15.249489 2.2949171 4.9548593 -9.424696 2.2949171 12.971988 1.0541082e-006 2.2949159 
		16.034254 9.4246922 2.2949159 12.971984 15.249479 2.2949171 4.9548569 15.249484 2.2949181 
		-4.9548583 11.997403 11.310878 -16.513016 -11.997409 11.310878 -16.513012 -19.412218 
		11.310878 -6.3074088 11.997402 11.310878 16.513012 13.182182 23.84087 -18.143723 
		-13.182186 23.84087 -18.143715 -21.329229 23.84087 -6.9302816 13.182182 23.84087 
		18.143715 13.323272 42.122391 -18.337912 1.1211635e-006 42.122391 -22.666903 -13.323273 
		42.122391 -18.337906 -21.557512 42.122391 -7.004456 -21.557512 42.122391 7.0044608 
		1.1211635e-006 42.122391 22.666899 21.557505 42.122391 7.004457 21.557505 42.122391 
		-7.0044589 12.092788 54.054638 -16.644297 1.0038168e-006 54.045921 -20.573479 -12.092794 
		54.045921 -16.644293 -19.566549 54.054638 -6.3575535 -19.566542 54.054928 6.3575578 
		-12.092787 54.054928 16.644299 1.2552739e-006 54.054928 20.573479 12.092788 54.054928 
		16.644295 19.566544 54.054928 6.357554 19.566542 54.054928 -6.3575573 8.3925772 0.98998249 
		-11.551394 -8.3925838 0.98998249 -11.551392 -13.579482 0.98998249 -4.4122386 8.3925724 
		0.98998249 11.551391 -13.323273 42.122387 18.33791 13.323272 42.122387 18.337906 
		1.2509827e-006 78.970665 -9.3697645e-007 16.523792 11.310878 -12.005242 4.9313917 
		2.2977393 -15.177276 6.3115239 11.310878 -19.424887 -16.523796 11.310878 -12.005238 
		-15.958341 2.2977393 1.2666808e-006 -20.424543 11.310878 2.0713435e-006 -4.9313912 
		2.2977393 15.177277 -6.3115239 11.310878 19.424885 6.3115249 11.310878 19.424883 
		12.910556 2.2977393 9.3800716 16.52379 11.310878 12.005239 18.155561 23.84087 -13.190792 
		6.9348087 23.84087 -21.343147 -18.155571 23.84087 -13.190785 -22.441521 23.84087 
		2.5407301e-006 -6.9348078 23.84087 21.343145 6.9348087 23.84087 21.343143 18.155561 
		23.84087 13.190789 18.349882 42.122391 -13.331972 7.0090318 42.122391 -21.571583 
		-18.349886 42.122391 -13.331966 -22.681709 42.122391 2.4560295e-006 -7.0090313 42.122391 
		21.571579 7.0090318 42.122387 21.571577 18.349882 42.122391 13.331967 -4.3483744 
		0.99703836 13.382935 -4.6767774 70.681732 -9.1294794 -3.1384876 76.300262 -2.2802467 
		-8.2400465 70.865738 5.9867463 13.924777 61.764156 -10.116944 -5.31879 61.367771 
		-16.369555 -7.8093948 61.403805 -15.330576 -16.993477 61.764153 -2.6897659 -13.92478 
		61.674068 -10.116941 -13.924768 61.764153 10.116944 5.3187909 61.764153 16.369555 
		17.211973 61.764153 -1.2817743e-006 8.2400494 70.865738 -5.9867492 -3.1474166 70.737877 
		-9.686759 -10.127851 70.797966 -1.6267174 -8.2400465 70.836678 -5.9867463 3.1474195 
		70.865738 9.686758 10.185261 70.865738 -1.5593328e-006 12.910563 2.2977371 -9.3800726 
		-4.9314027 2.2977371 -15.177275 -7.271944 2.2963262 -14.246445 -15.796335 2.2963262 
		-2.5136292 -12.910566 2.2977371 -9.3800716 -12.910563 2.2977371 9.3800745 4.9313917 
		2.2977371 15.177275 15.95833 2.2977371 -3.4264457e-007 -6.3115315 11.310875 -19.424885 
		-4.5114757e-006 11.310878 -20.411205 -9.2669973 11.310878 -18.191982 -20.165272 11.310878 
		-3.191802 -16.523796 11.310878 12.005243 -19.412218 11.310878 6.3074131 -11.997404 
		11.310878 16.513018 1.1211635e-006 11.310878 20.411205 20.424532 11.310878 -4.0969979e-007 
		19.412209 11.310878 6.3074098 19.41221 11.310878 -6.3074112 -6.9348083 23.84087 -21.343145 
		-7.0090313 42.122391 -21.571579 5.8472165e-007 23.84087 -22.42687 -10.182137 23.84087 
		-19.988487 -22.156647 23.840868 -3.5070004 -18.155567 23.84087 13.190793 -18.349886 
		42.122387 13.331972 -21.329229 23.84087 6.9302869 -13.182185 23.84087 18.143721 1.0541082e-006 
		23.84087 22.42687 22.441511 23.84087 -3.4264457e-007 22.681702 42.122391 -4.4811361e-007 
		21.329218 23.84087 6.9302835 21.329218 23.84087 -6.9302855 -10.291116 42.122391 -20.202425 
		-22.393787 42.122391 -3.5445356 16.655163 54.054928 -12.100686 -6.3617058 54.042141 
		-19.579315 -9.3406715 54.043304 -18.336611 -20.325586 54.054928 -3.2171774 -16.655172 
		54.052021 -12.100681 -16.655161 54.054928 12.100688 6.3617053 54.054928 19.579313 
		20.586912 54.054928 -7.2013563e-007;
	setAttr ".pt[166:179]" 11.384206 0.99703783 -8.2711096 -6.1235964e-006 0.98998249 
		-14.278306 -4.3483849 0.99703783 -13.382933 -6.4629345 0.99351013 -12.614702 -4.4282293 
		-0.10611436 -3.2172949 -13.994457 0.99351013 -2.2484515 -13.579482 0.98998231 4.412241 
		-11.384206 0.99703765 8.2711096 -8.3925753 0.98998231 11.551395 1.0541082e-006 0.98998231 
		14.278305 4.3483748 0.99703765 13.382932 13.579472 0.98998231 4.4122391 14.071647 
		0.99703765 -2.4347372e-007 13.579478 0.98998231 -4.4122396;
	setAttr -s 180 ".vt";
	setAttr ".vt[0:165]"  0.5909763 6.79895496 -1.81884062 -1.9124409 6.80896425 -7.9448614e-007
		 -0.59097683 6.80896425 1.81883872 1.54719698 6.80896425 1.12410355 0.34971279 7.8170228 -1.076307654
		 -1.13169563 7.82025194 -8.9298487e-007 -0.34971344 7.82025194 1.076305747 0.91556054 7.82025194 0.6651929
		 0.70685571 5.9520607 -2.17548084 -2.28743553 5.952384 -6.742942e-007 -0.70685643 5.952384 2.17547894
		 1.85057294 5.952384 1.3445195 -4.7791798e-007 -0.053719267 -8.9162631e-007 0.4831523 0.057062712 -1.48699355
		 -1.26491249 0.057062712 -0.91901278 -1.56351793 0.057062712 -7.7731096e-007 1.26491034 0.057062712 0.919011
		 1.12337077 6.80796337 -1.54618895 -3.5334426e-007 6.77793503 -1.91119421 -1.12337196 6.77793503 -1.54618859
		 -1.81765318 6.80796337 -0.59059209 -1.81765234 6.80896473 0.59059042 -1.12337101 6.80896473 1.54618704
		 -3.2540459e-007 6.80896473 1.9111923 1.12337077 6.80896473 1.5461868 1.81765246 6.80896473 0.59059006
		 1.81765246 6.80896473 -0.59059232 0.67475027 7.80486965 -0.92871594 -3.3937442e-007 7.79518318 -1.14795554
		 -0.67475092 7.79518318 -0.92871565 -1.091769576 7.80486965 -0.35473832 -1.091769695 7.80519247 0.3547366
		 -0.67475092 7.80519247 0.92871374 -3.3751178e-007 7.80519247 1.14795363 0.67475027 7.80519247 0.92871356
		 1.091769099 7.80519247 0.35473636 1.091769099 7.80519247 -0.35473856 1.047188163 0.20127152 -1.4413327
		 -1.2176116e-006 0.20127152 -1.78158474 -1.047189832 0.20127152 -1.44133246 -1.69438827 0.20127152 -0.55054051
		 -1.69438815 0.20127152 0.55053902 -1.047188878 0.20127152 1.44133103 -3.6079484e-007 0.2012714 1.78158295
		 1.047187567 0.2012714 1.44133067 1.69438612 0.20127152 0.55053878 1.6943866 0.20127164 -0.55054069
		 1.33304429 1.20304489 -1.83478045 -1.33304596 1.20304489 -1.83477998 -2.15691352 1.20304489 -0.70082408
		 1.33304417 1.20304489 1.83477831 1.46468639 2.59526634 -2.015969992 -1.46468782 2.59526634 -2.015969276
		 -2.36991477 2.59526634 -0.77003217 1.46468639 2.59526634 2.015967369 1.48036301 4.62654638 -2.037546635
		 -3.5334426e-007 4.62654638 -2.51854563 -1.48036408 4.62654638 -2.037545919 -2.39527965 4.62654638 -0.77827376
		 -2.39527965 4.62654638 0.77827251 -3.5334426e-007 4.62654638 2.51854348 2.39527774 4.62654638 0.77827209
		 2.39527774 4.62654638 -0.77827412 1.34364259 5.95235157 -1.84936726 -3.6638278e-007 5.95138311 -2.28594303
		 -1.34364426 5.95138311 -1.84936678 -2.17406154 5.95235157 -0.70639575 -2.17406058 5.952384 0.70639443
		 -1.34364343 5.952384 1.84936559 -3.384431e-007 5.952384 2.28594112 1.34364259 5.952384 1.84936512
		 2.17405987 5.952384 0.70639402 2.17405963 5.952384 -0.70639616 0.93250811 0.056278784 -1.28348911
		 -0.93250978 0.056278784 -1.28348887 -1.50883186 0.056278784 -0.4902496 0.93250751 0.056278784 1.28348696
		 -1.48036408 4.62654591 2.037544727 1.48036301 4.62654591 2.03754425 -3.389199e-007 8.72079945 -9.9573481e-007
		 1.83597636 1.20304489 -1.33391666 0.54793191 0.20158508 -1.68636489 0.70127994 1.20304489 -2.15832162
		 -1.83597791 1.20304489 -1.33391619 -1.77314949 0.20158508 -7.50884e-007 -2.26939416 1.20304489 -6.6147703e-007
		 -0.54793286 0.20158508 1.68636322 -0.70128089 1.20304489 2.15831971 0.70128006 1.20304489 2.15831947
		 1.4345057 0.20158508 1.042229295 1.83597624 1.20304489 1.33391452 2.017284155 2.59526634 -1.46564448
		 0.7705338 2.59526634 -2.37146163 -2.017286062 2.59526634 -1.46564376 -2.49350286 2.59526634 -6.0932297e-007
		 -0.77053469 2.59526634 2.37145972 0.7705338 2.59526634 2.37145948 2.017284155 2.59526634 1.46564233
		 2.038875341 4.62654638 -1.48133111 0.77878082 4.62654638 -2.39684343 -2.038876772 4.62654638 -1.48133051
		 -2.52019048 4.62654638 -6.1873413e-007 -0.77878171 4.62654638 2.39684129 0.77878082 4.62654591 2.39684105
		 2.038875341 4.62654638 1.48132885 -0.48315319 0.057062771 1.48699188 -0.51964241 7.79980659 -1.014387488
		 -0.34872133 8.42408752 -0.25336164 -0.9155612 7.82025194 0.66519314 1.54719698 6.80896473 -1.12410581
		 -0.59097713 6.76492214 -1.81884038 -0.86771101 6.76892567 -1.70339823 -1.88816464 6.80896425 -0.29886377
		 -1.5471983 6.79895496 -1.12410545 -1.54719698 6.80896425 1.12410402 0.5909763 6.80896425 1.81883848
		 1.9124409 6.80896425 -1.0340457e-006 0.91556054 7.82025146 -0.66519523 -0.34971344 7.80604458 -1.076307416
		 -1.12531722 7.81272173 -0.18074727 -0.9155612 7.8170228 -0.66519493 0.34971279 7.82025194 1.076305509
		 1.13169515 7.82025194 -1.0648855e-006 1.43450654 0.20158485 -1.042231202 -0.54793411 0.20158485 -1.68636477
		 -0.80799425 0.20142807 -1.58293915 -1.75514889 0.20142807 -0.27929303 -1.43450785 0.20158485 -1.042231083
		 -1.43450749 0.20158485 1.042229652 0.54793191 0.20158485 1.68636298 1.77314734 0.20158485 -9.2969793e-007
		 -0.70128179 1.20304465 -2.15832138 -9.7919303e-007 1.20304489 -2.26791263 -1.029666901 1.20304489 -2.021332264
		 -2.24058628 1.20304489 -0.35464555 -1.83597779 1.20304489 1.333915 -2.15691352 1.20304489 0.70082277
		 -1.33304536 1.20304489 1.83477879 -3.5334426e-007 1.20304489 2.26791072 2.26939201 1.20304489 -9.3714851e-007
		 2.15691161 1.20304489 0.70082241 2.15691185 1.20304489 -0.70082438 -0.77053475 2.59526634 -2.37146139
		 -0.77878171 4.62654638 -2.39684296 -4.1294891e-007 2.59526634 -2.49187541 -1.13134897 2.59526634 -2.22094393
		 -2.46185017 2.5952661 -0.3896676 -2.017285824 2.59526634 1.46564281 -2.038876772 4.62654591 1.48132932
		 -2.36991477 2.59526634 0.77003098 -1.46468771 2.59526634 2.015968084 -3.6079484e-007 2.59526634 2.4918735
		 2.49350071 2.59526634 -9.2969793e-007 2.52018857 4.62654638 -9.4141672e-007 2.36991262 2.59526634 0.77003062
		 2.36991262 2.59526634 -0.77003258 -1.14345777 4.62654638 -2.24471474 -2.488199 4.62654638 -0.3938382
		 1.85057318 5.952384 -1.34452152 -0.70685667 5.95096302 -2.17548037 -1.037852883 5.95109224 -2.037402153
		 -2.25839901 5.952384 -0.35746506 -1.85057509 5.9520607 -1.34452105 -1.8505739 5.952384 1.34451997
		 0.70685565 5.952384 2.17547846 2.2874341 5.952384 -9.7164138e-007;
	setAttr ".vt[166:179]" 1.26491129 0.057062712 -0.91901302 -1.1583176e-006 0.056278784 -1.58647931
		 -0.48315433 0.057062712 -1.48699343 -0.7181043 0.056670748 -1.40163445 -0.49202594 -0.065509751 -0.35747811
		 -1.55494022 0.056670748 -0.24982885 -1.50883186 0.056278769 0.49024808 -1.26491225 0.057062697 0.91901124
		 -0.93250889 0.056278769 1.28348744 -3.6079484e-007 0.056278769 1.5864774 0.4831523 0.057062697 1.48699152
		 1.50882971 0.056278769 0.49024791 1.56351578 0.057062697 -9.1867895e-007 1.50883043 0.056278769 -0.49024972;
	setAttr -s 356 ".ed";
	setAttr ".ed[0:165]"  0 4 1 4 27 1 27 17 1 17 0 1 27 117 1 117 109 1 109 17 1
		 118 28 1 28 18 1 18 110 1 110 118 1 28 4 1 0 18 1 106 118 1 110 111 1 111 106 1 108 31 1
		 31 21 1 21 114 1 114 108 1 2 6 1 6 32 1 32 22 1 22 2 1 32 108 1 114 22 1 115 121 1
		 121 33 1 33 23 1 23 115 1 33 6 1 2 23 1 3 7 1 7 34 1 34 24 1 24 3 1 34 121 1 115 24 1
		 122 35 1 35 25 1 25 116 1 116 122 1 35 7 1 3 25 1 117 36 1 36 26 1 26 109 1 36 122 1
		 116 26 1 73 13 1 13 81 1 81 37 1 37 73 1 81 82 1 82 47 1 47 37 1 123 37 1 47 80 1
		 80 123 1 166 73 1 123 166 1 38 167 1 167 168 1 168 124 1 124 38 1 132 38 1 124 131 1
		 131 132 1 81 38 1 132 82 1 13 167 1 74 14 1 14 127 1 127 39 1 39 74 1 127 83 1 83 48 1
		 48 39 1 124 125 1 125 133 1 133 131 1 125 39 1 48 133 1 168 169 1 169 125 1 169 74 1
		 171 15 1 15 84 1 84 126 1 126 171 1 40 75 1 75 171 1 126 40 1 49 40 1 126 134 1 134 49 1
		 84 85 1 85 134 1 127 40 1 49 83 1 14 75 1 41 172 1 172 173 1 173 128 1 128 41 1 136 41 1
		 128 135 1 135 136 1 84 41 1 136 85 1 15 172 1 174 105 1 105 86 1 86 42 1 42 174 1
		 86 87 1 87 137 1 137 42 1 128 42 1 137 135 1 173 174 1 175 176 1 176 129 1 129 43 1
		 43 175 1 129 88 1 88 138 1 138 43 1 86 43 1 138 87 1 105 175 1 76 16 1 16 89 1 89 44 1
		 44 76 1 89 90 1 90 50 1 50 44 1 129 44 1 50 88 1 176 76 1 45 177 1 177 178 1 178 130 1
		 130 45 1 140 45 1 130 139 1 139 140 1 89 45 1 140 90 1 16 177 1 179 166 1 123 46 1
		 46 179 1 80 141 1 141 46 1 130 46 1 141 139 1 178 179 1 82 92 1 92 51 1 51 47 1 51 91 1
		 91 80 1 144 132 1 131 142 1;
	setAttr ".ed[166:331]" 142 144 1 144 92 1 83 93 1 93 52 1 52 48 1 133 145 1
		 145 142 1 52 145 1 53 49 1 134 146 1 146 53 1 85 94 1 94 146 1 53 93 1 149 136 1
		 135 147 1 147 149 1 149 94 1 87 95 1 95 150 1 150 137 1 150 147 1 88 96 1 96 151 1
		 151 138 1 151 95 1 90 97 1 97 54 1 54 50 1 54 96 1 154 140 1 139 152 1 152 154 1
		 154 97 1 91 155 1 155 141 1 155 152 1 92 99 1 99 55 1 55 51 1 55 98 1 98 91 1 56 144 1
		 142 143 1 143 56 1 56 99 1 93 100 1 100 57 1 57 52 1 145 156 1 156 143 1 57 156 1
		 58 53 1 146 157 1 157 58 1 94 101 1 101 157 1 58 100 1 59 149 1 147 148 1 148 59 1
		 59 101 1 95 102 1 102 77 1 77 150 1 77 148 1 96 103 1 103 60 1 60 151 1 60 102 1
		 97 104 1 104 78 1 78 54 1 78 103 1 61 154 1 152 153 1 153 61 1 61 104 1 98 62 1 62 155 1
		 62 153 1 99 8 1 8 63 1 63 55 1 63 158 1 158 98 1 159 64 1 64 56 1 143 159 1 64 8 1
		 100 162 1 162 65 1 65 57 1 160 159 1 156 160 1 65 160 1 101 9 1 9 161 1 161 157 1
		 161 66 1 66 58 1 66 162 1 163 67 1 67 59 1 148 163 1 67 9 1 103 164 1 164 69 1 69 60 1
		 69 10 1 10 102 1 165 71 1 71 61 1 153 165 1 71 11 1 11 104 1 158 72 1 72 62 1 72 165 1
		 8 0 1 17 63 1 109 158 1 18 64 1 159 110 1 160 111 1 21 67 1 163 114 1 21 1 1 1 9 1
		 10 2 1 22 68 1 68 10 1 163 68 1 164 115 1 23 69 1 11 3 1 24 70 1 70 11 1 164 70 1
		 25 71 1 165 116 1 26 72 1 12 13 1 166 12 1 12 168 1 12 170 1 170 169 1 170 14 1 12 15 1
		 171 170 1 12 173 1 12 105 1 12 176 1 12 16 1 12 178 1 68 77 1 70 78 1 4 79 1 79 117 1
		 118 79 1 107 79 1 106 107 1 106 29 1 29 120 1 120 107 1 107 119 1;
	setAttr ".ed[332:355]" 119 5 1 5 79 1 5 31 1 108 79 1 6 79 1 121 79 1 7 79 1
		 122 79 1 113 120 1 29 19 1 19 113 1 111 19 1 1 5 1 119 112 1 112 1 1 119 30 1 30 20 1
		 20 112 1 113 20 1 30 120 1 162 113 1 19 65 1 112 161 1 20 66 1;
	setAttr -s 180 ".n";
	setAttr ".n[0:165]" -type "float3"  0.025924249 0.050517578 -0.082315907
		 0.021104721 0.069639504 -0.068592504 0.042559784 0.068396889 -0.05924971 0.050557859
		 0.050387956 -0.070035391 0.057834297 0.069847964 -0.042148028 0.069914192 0.050284948
		 -0.05082744 -0.014925462 0.068699203 -0.071117155 -0.0013318007 0.067797564 -0.073496364
		 -0.00090147462 0.05061559 -0.086239487 -0.02050354 0.050653495 -0.083748601 -0.033661883
		 0.068086967 -0.065046459 -0.038342249 0.050972957 -0.077017084 -0.057903796 0.069837689
		 0.042069558 -0.069356181 0.068424314 0.02253516 -0.082201064 0.050295394 0.02670875
		 -0.069934025 0.050274964 0.050810039 -0.026712412 0.05027495 0.082212389 -0.022117278
		 0.069837689 0.068069987 -0.042864479 0.068424314 0.058997877 -0.050803054 0.050295379
		 0.069924437 0.026712453 0.050274964 0.082212374 0.022117294 0.069837689 0.068069987
		 2.4746809e-008 0.068424314 0.072925396 1.7240973e-008 0.050295372 0.086431339 0.069934025
		 0.05027495 0.050810065 0.057903778 0.069837704 0.042069558 0.042864464 0.068424307
		 0.058997888 0.050803065 0.050295364 0.069924422 0.071573004 0.069837704 -1.0270967e-007
		 0.069356158 0.068424337 0.022535147 0.082201086 0.050295364 0.026708772 0.086443216
		 0.050274946 -1.1230165e-008 0.069356136 0.068424314 -0.022535317 0.082201093 0.05029536
		 -0.026708752 0.0095230145 -0.09867882 -0.013107322 0.0047015869 -0.098835796 -0.014470013
		 0.026764033 -0.049986582 -0.08237128 0.050911903 -0.049975775 -0.070074253 0.029748121
		 -0.027067786 -0.091555372 0.056580693 -0.02708965 -0.077876665 0.070069194 -0.049986571
		 -0.050908264 0.077881642 -0.027067769 -0.056584336 0.012308921 -0.098835789 -0.0089429561
		 -5.4671347e-009 -0.049975775 -0.086616516 2.4513119e-010 -0.09867882 -0.016201532
		 -0.00045024842 -0.098702513 -0.016050283 -0.020386409 -0.050115116 -0.084100358 -1.0027011e-008
		 -0.02708964 -0.096260853 -0.02252521 -0.027094988 -0.093586728 -0.015960203 -0.097046964
		 -0.018087599 -0.021081831 -0.09654507 -0.015316849 -0.070069186 -0.049986571 -0.050908267
		 -0.056530874 -0.049835272 -0.065732069 -0.077881627 -0.027067769 -0.056584336 -0.062516622
		 -0.027048076 -0.073212534 -0.038593497 -0.05031525 -0.077323467 -0.043607488 -0.027286423
		 -0.085754529 -0.0037197277 -0.098473452 -0.01700422 -0.017321428 -0.098473452 0.0017169236
		 -0.015403864 -0.09870252 0.0045316019 -0.08628393 -0.050115108 0.0065998505 -0.085465029
		 -0.050315257 -0.012810344 -0.079983905 -0.049835272 -0.033451773 -0.022134289 -0.097046956
		 -0.0095896795 -0.088947922 -0.027048087 -0.03683297 -0.095032841 -0.027286446 -0.014973606
		 -0.09596695 -0.027094999 0.0074971789 -0.082377188 -0.049975775 0.026766023 -0.01540857
		 -0.098678835 0.0050065541 -0.012308912 -0.098835789 0.0089429617 -0.070069157 -0.049986597
		 0.050908294 -0.091549493 -0.027089654 0.029746288 -0.077881604 -0.02706779 0.056584354
		 -0.009523009 -0.09867882 0.013107325 -0.0047015883 -0.098835796 0.014470008 -0.026764033
		 -0.049986582 0.082371287 -0.050911881 -0.049975786 0.07007426 -0.02974811 -0.027067769
		 0.091555372 -0.056580674 -0.027089654 0.07787668 -3.7218044e-009 -0.098678827 0.016201528
		 0.0047015892 -0.098835796 0.014469999 0.026764065 -0.049986582 0.082371272 1.6259419e-008
		 -0.049975779 0.086616524 0.029748155 -0.027067769 0.09155535 1.3369356e-008 -0.02708964
		 0.096260853 0.0095230257 -0.09867882 0.013107314 0.012308928 -0.098835796 0.0089429608
		 0.070069171 -0.049986597 0.050908264 0.050911911 -0.049975786 0.070074238 0.077881627
		 -0.027067775 0.05658434 0.056580711 -0.02708965 0.077876665 0.082377188 -0.049975798
		 0.026766006 0.015408575 -0.09867882 0.0050065611 0.015214659 -0.098835796 7.1169226e-009
		 0.08661028 -0.049986601 2.8246289e-008 0.091549501 -0.027089639 0.029746255 0.096267007
		 -0.027067766 1.3930408e-008 0.015408578 -0.098678835 -0.005006542 0.082377218 -0.049975764
		 -0.026765971 0.091549508 -0.027089629 -0.029746244 0.030824486 -0.0070642703 -0.094868056
		 0.058631796 -0.0070613027 -0.080699764 0.080699585 -0.007064274 -0.058631677 -1.1717927e-008
		 -0.0070612966 -0.099750377 -0.023245251 -0.0070524267 -0.097004756 -0.08069957 -0.0070642619
		 -0.0586317 -0.064705074 -0.0070502455 -0.075918041 -0.045467239 -0.0070925676 -0.088783033
		 -0.092197284 -0.007050253 -0.038078275 -0.098487817 -0.0070925741 -0.015806464 -0.09944018
		 -0.0070524276 0.007868601 -0.094868235 -0.0070612966 0.0308246 -0.080699556 -0.0070642694
		 0.058631707 -0.030824481 -0.0070642629 0.094868056 -0.058631778 -0.0070612985 0.080699764
		 0.030824516 -0.0070642629 0.094868042 2.3069672e-008 -0.0070612915 0.09975037 0.080699585
		 -0.0070642713 0.058631685 0.058631804 -0.0070612989 0.080699749 0.094868235 -0.0070612938
		 0.03082457 0.099750176 -0.0070642601 2.5653395e-009 0.094868258 -0.0070612989 -0.03082457
		 0.030847484 0.0058678254 -0.0949421 0.058677047 0.0058653923 -0.080762617 0.080762327
		 0.005867139 -0.058677297 -1.1928227e-006 0.0058667422 -0.099827759 -0.02326897 0.0058628814
		 -0.097078219 -0.080761693 0.0058678179 -0.058678091 -0.064749457 0.0058609149 -0.075981304
		 -0.045500886 0.0059036515 -0.088852778 -0.092270158 0.0058597927 -0.038103562 -0.098564409
		 0.005901597 -0.015818646 -0.09951745 0.0058608591 0.007869387 -0.094941922 0.0058652484
		 0.030848527 -0.080762319 0.0058671422 0.058677297 -0.030848442 0.0058671297 0.09494184
		 -0.058677312 0.0058652274 0.080762446 0.030848477 0.0058671287 0.094941825 2.7407314e-008
		 0.0058652302 0.099827848 0.080762334 0.0058671222 0.058677267 0.058677334 0.0058652214
		 0.080762431 0.094941929 0.0058652186 0.030848503 0.099827737 0.0058671269 -2.2392375e-009
		 0.094941929 0.0058652186 -0.030848492 0.029727969 0.025894869 -0.091900513 0.056756116
		 0.02578911 -0.078189932 0.078167468 0.025766907 -0.056797136 -0.022548035 0.026116762
		 -0.09385895 -0.0001447713 0.026035009 -0.096551321 -0.078068197 0.025894865 -0.056875415
		 -0.062487163 0.025982877 -0.073622316 -0.043846905 0.026304016 -0.085939214 -0.096328638
		 0.025741195 0.007627713 -0.095360585 0.025918731 -0.015315927 -0.089276217 0.025776813
		 -0.036950145 -0.078170508 0.025764108 0.056794215 -0.091896802 0.025756789 0.029859111
		 0.02985849 0.025764067 0.091894962 1.9699357e-008 0.02575672 0.096626036 -0.02985844
		 0.025764057 0.091894977 0.096624091 0.025764061 -1.1350254e-008 0.091896825 0.02575672
		 0.02985909 0.078170516 0.025764067 0.056794222 0.091896832 0.025756717 -0.029859072
		 -0.086176954 0.05028199 0.0067270435 -0.056795318 0.025756732 0.078172132;
	setAttr ".n[166:179]" -type "float3"  0.056795355 0.025756726 0.07817211 0.0010071269
		 -0.099992245 0.0007317196 -0.0031383426 -0.099924736 -0.0022801396 0.006583319 0.099671923
		 0.0047082389 -0.046421278 0.08147458 -0.034741301 -0.04808585 0.065334663 -0.058473345
		 -0.060410809 0.065528035 -0.045349881 -0.071302518 0.068878666 -0.013102706 -0.071375258
		 0.069559373 0.0081893681 -0.069357231 0.050517607 -0.051357038 -0.055224895 0.050478607
		 -0.066348486 -0.085209422 0.050568055 -0.013499095 -0.069264844 0.065851174 -0.029427996
		 -0.079683512 0.050348159 -0.033400618;
	setAttr -s 178 -ch 712 ".fc[0:177]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -3 4 5 6
		mu 0 4 3 2 4 5
		f 4 7 8 9 10
		mu 0 4 6 7 8 9
		f 4 11 -1 12 -9
		mu 0 4 7 1 0 8
		f 4 13 -11 14 15
		mu 0 4 10 11 12 13
		f 4 16 17 18 19
		mu 0 4 14 15 16 17
		f 4 20 21 22 23
		mu 0 4 18 19 20 21
		f 4 24 -20 25 -23
		mu 0 4 20 14 17 21
		f 4 26 27 28 29
		mu 0 4 22 23 24 25
		f 4 30 -21 31 -29
		mu 0 4 24 19 18 25
		f 4 32 33 34 35
		mu 0 4 26 27 28 29
		f 4 -35 36 -27 37
		mu 0 4 29 28 23 22
		f 4 38 39 40 41
		mu 0 4 30 31 32 33
		f 4 42 -33 43 -40
		mu 0 4 31 27 26 32
		f 4 -6 44 45 46
		mu 0 4 5 4 34 35
		f 4 47 -42 48 -46
		mu 0 4 34 30 33 35
		f 4 49 50 51 52
		mu 0 4 36 37 38 39
		f 4 -52 53 54 55
		mu 0 4 39 38 40 41
		f 4 56 -56 57 58
		mu 0 4 42 39 41 43
		f 4 59 -53 -57 60
		mu 0 4 44 36 39 42
		f 4 61 62 63 64
		mu 0 4 45 46 47 48
		f 4 65 -65 66 67
		mu 0 4 49 45 48 50
		f 4 -54 68 -66 69
		mu 0 4 40 38 45 49
		f 4 -51 70 -62 -69
		mu 0 4 38 37 46 45
		f 4 71 72 73 74
		mu 0 4 51 52 53 54
		f 4 -74 75 76 77
		mu 0 4 54 53 55 56
		f 4 -67 78 79 80
		mu 0 4 57 58 59 60
		f 4 81 -78 82 -80
		mu 0 4 59 54 56 60
		f 4 -64 83 84 -79
		mu 0 4 58 61 62 59
		f 4 85 -75 -82 -85
		mu 0 4 62 51 54 59
		f 4 86 87 88 89
		mu 0 4 63 64 65 66
		f 4 90 91 -90 92
		mu 0 4 67 68 63 66
		f 4 93 -93 94 95
		mu 0 4 69 67 66 70
		f 4 -89 96 97 -95
		mu 0 4 66 65 71 70
		f 4 98 -94 99 -76
		mu 0 4 53 67 69 55
		f 4 100 -91 -99 -73
		mu 0 4 52 68 67 53
		f 4 101 102 103 104
		mu 0 4 72 73 74 75
		f 4 105 -105 106 107
		mu 0 4 76 72 75 77
		f 4 -97 108 -106 109
		mu 0 4 71 65 72 76
		f 4 -88 110 -102 -109
		mu 0 4 65 64 73 72
		f 4 111 112 113 114
		mu 0 4 78 79 80 81
		f 4 -114 115 116 117
		mu 0 4 81 80 82 83
		f 4 -107 118 -118 119
		mu 0 4 77 75 81 83
		f 4 -104 120 -115 -119
		mu 0 4 75 74 78 81
		f 4 121 122 123 124
		mu 0 4 84 85 86 87
		f 4 -124 125 126 127
		mu 0 4 87 86 88 89
		f 4 -116 128 -128 129
		mu 0 4 82 80 87 89
		f 4 -113 130 -125 -129
		mu 0 4 80 79 84 87
		f 4 131 132 133 134
		mu 0 4 90 91 92 93
		f 4 -134 135 136 137
		mu 0 4 93 92 94 95
		f 4 138 -138 139 -126
		mu 0 4 86 93 95 88
		f 4 140 -135 -139 -123
		mu 0 4 85 90 93 86
		f 4 141 142 143 144
		mu 0 4 96 97 98 99
		f 4 145 -145 146 147
		mu 0 4 100 96 99 101
		f 4 -136 148 -146 149
		mu 0 4 94 92 96 100
		f 4 -133 150 -142 -149
		mu 0 4 92 91 97 96
		f 4 151 -61 152 153
		mu 0 4 102 44 42 103
		f 4 -153 -59 154 155
		mu 0 4 103 42 43 104
		f 4 -147 156 -156 157
		mu 0 4 101 99 103 104
		f 4 -144 158 -154 -157
		mu 0 4 99 98 102 103
		f 4 -55 159 160 161
		mu 0 4 41 40 105 106
		f 4 -58 -162 162 163
		mu 0 4 43 41 106 107
		f 4 164 -68 165 166
		mu 0 4 108 49 50 109
		f 4 -160 -70 -165 167
		mu 0 4 105 40 49 108
		f 4 -77 168 169 170
		mu 0 4 56 55 110 111
		f 4 -166 -81 171 172
		mu 0 4 112 57 60 113
		f 4 -83 -171 173 -172
		mu 0 4 60 56 111 113
		f 4 174 -96 175 176
		mu 0 4 114 69 70 115
		f 4 -98 177 178 -176
		mu 0 4 70 71 116 115
		f 4 -100 -175 179 -169
		mu 0 4 55 69 114 110
		f 4 180 -108 181 182
		mu 0 4 117 76 77 118
		f 4 -178 -110 -181 183
		mu 0 4 116 71 76 117
		f 4 -117 184 185 186
		mu 0 4 83 82 119 120
		f 4 -182 -120 -187 187
		mu 0 4 118 77 83 120
		f 4 -127 188 189 190
		mu 0 4 89 88 121 122
		f 4 -185 -130 -191 191
		mu 0 4 119 82 89 122
		f 4 -137 192 193 194
		mu 0 4 95 94 123 124
		f 4 -140 -195 195 -189
		mu 0 4 88 95 124 121
		f 4 196 -148 197 198
		mu 0 4 125 100 101 126
		f 4 -193 -150 -197 199
		mu 0 4 123 94 100 125
		f 4 -155 -164 200 201
		mu 0 4 104 43 107 127
		f 4 -198 -158 -202 202
		mu 0 4 126 101 104 127
		f 4 -161 203 204 205
		mu 0 4 106 105 128 129
		f 4 -163 -206 206 207
		mu 0 4 107 106 129 130
		f 4 208 -167 209 210
		mu 0 4 131 108 109 132
		f 4 -204 -168 -209 211
		mu 0 4 128 105 108 131
		f 4 -170 212 213 214
		mu 0 4 111 110 133 134
		f 4 -210 -173 215 216
		mu 0 4 135 112 113 136
		f 4 -174 -215 217 -216
		mu 0 4 113 111 134 136
		f 4 218 -177 219 220
		mu 0 4 137 114 115 138
		f 4 -179 221 222 -220
		mu 0 4 115 116 139 138
		f 4 -180 -219 223 -213
		mu 0 4 110 114 137 133
		f 4 224 -183 225 226
		mu 0 4 140 117 118 141
		f 4 -222 -184 -225 227
		mu 0 4 139 116 117 140
		f 4 -186 228 229 230
		mu 0 4 120 119 142 143
		f 4 -226 -188 -231 231
		mu 0 4 141 118 120 143
		f 4 -190 232 233 234
		mu 0 4 122 121 144 145
		f 4 -229 -192 -235 235
		mu 0 4 142 119 122 145
		f 4 -194 236 237 238
		mu 0 4 124 123 146 147
		f 4 -196 -239 239 -233
		mu 0 4 121 124 147 144
		f 4 240 -199 241 242
		mu 0 4 148 125 126 149
		f 4 -237 -200 -241 243
		mu 0 4 146 123 125 148
		f 4 -201 -208 244 245
		mu 0 4 127 107 130 150
		f 4 -242 -203 -246 246
		mu 0 4 149 126 127 150
		f 4 247 248 249 -205
		mu 0 4 128 151 152 129
		f 4 -250 250 251 -207
		mu 0 4 129 152 153 130
		f 4 252 253 -211 254
		mu 0 4 154 155 131 132
		f 4 255 -248 -212 -254
		mu 0 4 155 151 128 131
		f 4 256 257 258 -214
		mu 0 4 133 156 157 134
		f 4 259 -255 -217 260
		mu 0 4 158 159 135 136
		f 4 -259 261 -261 -218
		mu 0 4 134 157 158 136
		f 4 262 263 264 -223
		mu 0 4 139 160 161 138
		f 4 265 266 -221 -265
		mu 0 4 161 162 137 138
		f 4 -267 267 -257 -224
		mu 0 4 137 162 156 133
		f 4 268 269 -227 270
		mu 0 4 163 164 140 141
		f 4 271 -263 -228 -270
		mu 0 4 164 160 139 140
		f 4 272 273 274 -234
		mu 0 4 144 165 166 145
		f 4 275 276 -236 -275
		mu 0 4 166 167 142 145
		f 4 277 278 -243 279
		mu 0 4 168 169 148 149
		f 4 280 281 -244 -279
		mu 0 4 169 170 146 148
		f 4 -252 282 283 -245
		mu 0 4 130 153 171 150
		f 4 284 -280 -247 -284
		mu 0 4 171 168 149 150
		f 4 285 -4 286 -249
		mu 0 4 151 0 3 152
		f 4 -287 -7 287 -251
		mu 0 4 152 3 5 153
		f 4 -10 288 -253 289
		mu 0 4 9 8 155 154
		f 4 -13 -286 -256 -289
		mu 0 4 8 0 151 155
		f 4 -15 -290 -260 290
		mu 0 4 13 12 159 158
		f 4 -19 291 -269 292
		mu 0 4 17 16 164 163
		f 4 293 294 -272 -292
		mu 0 4 16 172 160 164
		f 4 295 -24 296 297
		mu 0 4 167 18 21 173
		f 4 -26 -293 298 -297
		mu 0 4 21 17 163 173
		f 4 299 -30 300 -274
		mu 0 4 165 22 25 166
		f 4 -32 -296 -276 -301
		mu 0 4 25 18 167 166
		f 4 301 -36 302 303
		mu 0 4 170 26 29 174
		f 4 -303 -38 -300 304
		mu 0 4 174 29 22 165
		f 4 -41 305 -278 306
		mu 0 4 33 32 169 168
		f 4 -44 -302 -281 -306
		mu 0 4 32 26 170 169
		f 4 -288 -47 307 -283
		mu 0 4 153 5 35 171
		f 4 -49 -307 -285 -308
		mu 0 4 35 33 168 171
		f 4 308 -50 -60 309
		mu 0 4 175 37 36 44
		f 4 -71 -309 310 -63
		mu 0 4 46 37 175 47
		f 4 -311 311 312 -84
		mu 0 4 47 175 176 177
		f 4 313 -72 -86 -313
		mu 0 4 176 178 179 177
		f 4 314 -87 315 -312
		mu 0 4 175 64 180 176
		f 4 -92 -101 -314 -316
		mu 0 4 180 181 178 176
		f 4 -111 -315 316 -103
		mu 0 4 73 64 175 74
		f 4 -317 317 -112 -121
		mu 0 4 74 175 79 78
		f 4 -318 318 -122 -131
		mu 0 4 79 175 85 84
		f 4 319 -132 -141 -319
		mu 0 4 175 91 90 85
		f 4 -151 -320 320 -143
		mu 0 4 97 91 175 98
		f 4 -321 -310 -152 -159
		mu 0 4 98 175 44 102
		f 4 -277 -298 321 -230
		mu 0 4 142 167 173 143
		f 4 -299 -271 -232 -322
		mu 0 4 173 163 141 143
		f 4 -282 -304 322 -238
		mu 0 4 146 170 174 147
		f 4 -323 -305 -273 -240
		mu 0 4 147 174 165 144
		f 4 -2 323 324 -5
		mu 0 4 2 1 182 4
		f 4 -8 325 -324 -12
		mu 0 4 7 6 182 1
		f 4 326 -326 -14 327
		mu 0 4 183 182 6 184
		f 4 -328 328 329 330
		mu 0 4 183 184 185 186
		f 4 331 332 333 -327
		mu 0 4 183 187 188 189
		f 4 -334 334 -17 335
		mu 0 4 182 190 15 14
		f 4 -22 336 -336 -25
		mu 0 4 20 19 182 14
		f 4 -28 337 -337 -31
		mu 0 4 24 23 182 19
		f 4 -34 338 -338 -37
		mu 0 4 28 27 182 23
		f 4 -339 -43 -39 339
		mu 0 4 182 27 31 30
		f 4 -45 -325 -340 -48
		mu 0 4 34 4 182 30
		f 4 340 -330 341 342
		mu 0 4 191 192 193 194
		f 4 343 -342 -329 -16
		mu 0 4 13 194 193 10
		f 4 344 -333 345 346
		mu 0 4 172 190 195 196
		f 4 -346 347 348 349
		mu 0 4 196 195 197 198
		f 4 350 -349 351 -341
		mu 0 4 191 198 197 192
		f 4 -335 -345 -294 -18
		mu 0 4 15 190 172 16
		f 4 352 -343 353 -258
		mu 0 4 156 191 194 157
		f 4 -354 -344 -291 -262
		mu 0 4 157 194 13 158
		f 4 -264 -295 -347 354
		mu 0 4 161 160 172 196
		f 4 -355 -350 355 -266
		mu 0 4 161 196 198 162
		f 4 -356 -351 -353 -268
		mu 0 4 162 198 191 156
		f 4 -331 -352 -348 -332
		mu 0 4 183 186 199 187;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tenticle1";
	setAttr ".rp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
	setAttr ".sp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
createNode mesh -n "TenticleShape1" -p "Tenticle1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 24 "f[0:23]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.92934406 0.39031744
		 0.95246536 0.3903175 0.97026312 0.52459359 0.94623011 0.52459365 0.82223654 0.39031738
		 0.84538907 0.39031744 0.8475185 0.52459365 0.82411653 0.52459359 0.86700225 0.39031738
		 0.87078536 0.52459359 0.88797659 0.39031738 0.89550656 0.52459353 0.9083398 0.39031756
		 0.92135924 0.52459359 0.90881431 0.30319029 0.84532118 0.30319023 0.96247494 0.6430521
		 0.93891549 0.64305204 0.84012252 0.64305204 0.81503981 0.64305222 0.86670053 0.6430521
		 0.8919391 0.64305198 0.91557938 0.6430521 0.96444011 0.78026342 0.93929881 0.78026336
		 0.83960915 0.78026336 0.81453347 0.7802633 0.86450863 0.78026342 0.88934565 0.78026348
		 0.91428816 0.78026336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -23.830175 -78.159195 45.642971 
		-22.498949 -79.888245 40.083511 -26.87174 -80.891876 36.140297 -32.575741 -80.166451 
		37.756531 -33.906963 -78.437416 43.31601 -29.534172 -77.433769 47.25922 -9.8791237 
		-49.138462 31.832043 -11.224778 -50.492737 26.172525 -16.381231 -48.636894 23.800852 
		-20.192038 -45.426777 27.088709 -18.846354 -44.072502 32.748207 -13.689929 -45.928345 
		35.119881 -29.03142 -98.733253 47.608795 -2.8057165 -22.345516 33.104904 -2.0674484 
		-22.862671 27.200176 -6.6969485 -22.006985 23.524963 -12.064679 -20.634159 25.75448 
		-12.802948 -20.117002 31.659206 -8.1734505 -20.972681 35.334404 0.74197686 9.4424171 
		21.203241 1.419758 7.2860117 15.675581 -3.3414283 6.5891562 12.136622 -8.7803278 
		8.048707 14.125322 -9.4580765 10.20511 19.652967 -4.696888 10.901973 23.191935;
	setAttr -s 25 ".vt[0:24]"  -3.43104553 -8.24277115 4.0484519 -3.16578341 -8.4243536 3.46923733
		 -3.55657578 -8.53281975 2.94546056 -4.21262836 -8.45970058 3.00089859962 -4.47789049 -8.27812004 3.5801158
		 -4.087097645 -8.16965389 4.10389233 -1.65257442 -4.98381519 2.88554049 -1.67695916 -5.1258173 2.23895836
		 -2.18984079 -4.91992092 1.87373734 -2.67833853 -4.57202244 2.15509939 -2.65395021 -4.43002033 2.80168033
		 -2.1410718 -4.63591671 3.16690016 -4.014928341 -10.53606224 4.12118244 -0.94115233 -2.003565073 3.21434188
		 -0.73449099 -2.050422668 2.58670926 -1.1611011 -1.95299578 2.089376688 -1.79436862 -1.8087132 2.21967745
		 -2.0010299683 -1.76185584 2.84731007 -1.57441974 -1.85928178 3.34464097 -0.33881414 1.55093646 2.041654348
		 -0.14484739 1.32128131 1.45134664 -0.5868758 1.24589097 0.96374297 -1.22286344 1.40015602 1.066448212
		 -1.41682625 1.62981093 1.65675497 -0.97479784 1.70520198 2.14435959;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 0 7 14 0 13 14 1 8 15 0 14 15 1 9 16 0 15 16 1 10 17 0
		 16 17 1 11 18 0 17 18 1 18 13 1 13 19 0 14 20 0 19 20 0 15 21 0 20 21 0 16 22 0 21 22 0
		 17 23 0 22 23 0 18 24 0 23 24 0 24 19 0;
	setAttr -s 24 -ch 90 ".fc[0:23]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 4 5 6 7
		f 4 2 15 -9 -15
		mu 0 4 5 8 9 6
		f 4 3 16 -10 -16
		mu 0 4 8 10 11 9
		f 4 4 17 -11 -17
		mu 0 4 10 12 13 11
		f 4 5 12 -12 -18
		mu 0 4 12 0 3 13
		f 3 -1 -19 19
		mu 0 3 1 0 14
		f 3 -2 -20 20
		mu 0 3 5 4 15
		f 3 -3 -21 21
		mu 0 3 8 5 15
		f 3 -4 -22 22
		mu 0 3 10 8 14
		f 3 -5 -23 23
		mu 0 3 12 10 14
		f 3 -6 -24 18
		mu 0 3 0 12 14
		f 4 6 25 -27 -25
		mu 0 4 3 2 16 17
		f 4 7 27 -29 -26
		mu 0 4 7 6 18 19
		f 4 8 29 -31 -28
		mu 0 4 6 9 20 18
		f 4 9 31 -33 -30
		mu 0 4 9 11 21 20
		f 4 10 33 -35 -32
		mu 0 4 11 13 22 21
		f 4 11 24 -36 -34
		mu 0 4 13 3 17 22
		f 4 26 37 -39 -37
		mu 0 4 17 16 23 24
		f 4 28 39 -41 -38
		mu 0 4 19 18 25 26
		f 4 30 41 -43 -40
		mu 0 4 18 20 27 25
		f 4 32 43 -45 -42
		mu 0 4 20 21 28 27
		f 4 34 45 -47 -44
		mu 0 4 21 22 29 28
		f 4 35 36 -48 -46
		mu 0 4 22 17 24 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tenticle4";
	setAttr ".t" -type "double3" 0 -8.0117546806969973 0 ;
	setAttr ".rp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
	setAttr ".sp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
createNode mesh -n "TenticleShape4" -p "Tenticle4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 24 "f[0:23]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.92934406 0.39031744
		 0.95246536 0.3903175 0.97026312 0.52459359 0.94623011 0.52459365 0.82223654 0.39031738
		 0.84538907 0.39031744 0.8475185 0.52459365 0.82411653 0.52459359 0.86700225 0.39031738
		 0.87078536 0.52459359 0.88797659 0.39031738 0.89550656 0.52459353 0.9083398 0.39031756
		 0.92135924 0.52459359 0.90881431 0.30319029 0.84532118 0.30319023 0.96247494 0.6430521
		 0.93891549 0.64305204 0.84012252 0.64305204 0.81503981 0.64305222 0.86670053 0.6430521
		 0.8919391 0.64305198 0.91557938 0.6430521 0.96444011 0.78026342 0.93929881 0.78026336
		 0.83960915 0.78026336 0.81453347 0.7802633 0.86450863 0.78026342 0.88934565 0.78026348
		 0.91428816 0.78026336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -9.405405 -74.240814 -41.986141 
		-6.0839419 -75.828606 -37.284069 -0.24090198 -76.859085 -37.967937 2.2806647 -76.30172 
		-43.35384 -1.0408328 -74.713928 -48.055912 -6.8839006 -73.683472 -47.372032 -3.7729626 
		-44.737324 -28.160084 1.3801228 -46.012455 -25.423927 6.5549541 -44.234226 -27.817549 
		6.576664 -41.180866 -32.9473 1.4236081 -39.905731 -35.683475 -3.7511873 -41.68396 
		-33.289879 -6.4649968 -94.993263 -47.740986 -12.59995 -17.732845 -20.802666 -8.6271095 
		-18.116734 -16.359133 -2.8152406 -17.300129 -17.469791 -0.9762423 -16.099651 -23.023956 
		-4.949048 -15.715766 -27.467489 -10.760885 -16.532362 -26.35685 -5.8939147 14.357078 
		-11.305532 -2.1685393 12.325917 -7.104219 3.6244929 11.584921 -8.3556032 5.6920853 
		12.875088 -13.808267 1.96674 14.906246 -18.009605 -3.8263206 15.647249 -16.758194;
	setAttr -s 25 ".vt[0:24]"  -0.57839584 -8.24277115 -5.18682194 -0.31515169 -8.4243536 -4.60668755
		 0.33654022 -8.53281975 -4.55814695 0.72498608 -8.45970058 -5.089736938 0.46173811 -8.27812004 -5.66987181
		 -0.18995714 -8.16965389 -5.71841145 -0.29421794 -4.98381519 -3.51858139 0.20985878 -5.1258173 -3.11290836
		 0.82194269 -4.91992092 -3.26052332 0.92994547 -4.57202244 -3.81380939 0.42587233 -4.43002033 -4.21948338
		 -0.18620718 -4.63591671 -4.071870327 -0.11160421 -10.53606224 -5.78111887 -1.44310164 -2.003565073 -2.86605906
		 -1.10486758 -2.050422668 -2.29840517 -0.44964093 -1.95299578 -2.29424644 -0.13265213 -1.8087132 -2.85773969
		 -0.47088236 -1.76185584 -3.4253931 -1.12610507 -1.85928178 -3.42955303 -0.95294225 1.55093646 -1.64223123
		 -0.63455915 1.32128131 -1.10864305 0.023433805 1.24589097 -1.12250161 0.36303592 1.40015602 -1.66994596
		 0.044656694 1.62981093 -2.20353627 -0.61334002 1.70520198 -2.18967533;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 0 7 14 0 13 14 1 8 15 0 14 15 1 9 16 0 15 16 1 10 17 0
		 16 17 1 11 18 0 17 18 1 18 13 1 13 19 0 14 20 0 19 20 0 15 21 0 20 21 0 16 22 0 21 22 0
		 17 23 0 22 23 0 18 24 0 23 24 0 24 19 0;
	setAttr -s 24 -ch 90 ".fc[0:23]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 4 5 6 7
		f 4 2 15 -9 -15
		mu 0 4 5 8 9 6
		f 4 3 16 -10 -16
		mu 0 4 8 10 11 9
		f 4 4 17 -11 -17
		mu 0 4 10 12 13 11
		f 4 5 12 -12 -18
		mu 0 4 12 0 3 13
		f 3 -1 -19 19
		mu 0 3 1 0 14
		f 3 -2 -20 20
		mu 0 3 5 4 15
		f 3 -3 -21 21
		mu 0 3 8 5 15
		f 3 -4 -22 22
		mu 0 3 10 8 14
		f 3 -5 -23 23
		mu 0 3 12 10 14
		f 3 -6 -24 18
		mu 0 3 0 12 14
		f 4 6 25 -27 -25
		mu 0 4 3 2 16 17
		f 4 7 27 -29 -26
		mu 0 4 7 6 18 19
		f 4 8 29 -31 -28
		mu 0 4 6 9 20 18
		f 4 9 31 -33 -30
		mu 0 4 9 11 21 20
		f 4 10 33 -35 -32
		mu 0 4 11 13 22 21
		f 4 11 24 -36 -34
		mu 0 4 13 3 17 22
		f 4 26 37 -39 -37
		mu 0 4 17 16 23 24
		f 4 28 39 -41 -38
		mu 0 4 19 18 25 26
		f 4 30 41 -43 -40
		mu 0 4 18 20 27 25
		f 4 32 43 -45 -42
		mu 0 4 20 21 28 27
		f 4 34 45 -47 -44
		mu 0 4 21 22 29 28
		f 4 35 36 -48 -46
		mu 0 4 22 17 24 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tenticle7";
	setAttr ".rp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
	setAttr ".sp" -type "double3" -0.025160335530903355 -0.062685430172338741 -0.29122722012777569 ;
createNode mesh -n "Tenticle7Shape" -p "Tenticle7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 24 "f[0:23]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.92934406 0.39031744
		 0.95246536 0.3903175 0.97026312 0.52459359 0.94623011 0.52459365 0.82223654 0.39031738
		 0.84538907 0.39031744 0.8475185 0.52459365 0.82411653 0.52459359 0.86700225 0.39031738
		 0.87078536 0.52459359 0.88797659 0.39031738 0.89550656 0.52459353 0.9083398 0.39031756
		 0.92135924 0.52459359 0.90881431 0.30319029 0.84532118 0.30319023 0.96247494 0.6430521
		 0.93891549 0.64305204 0.84012252 0.64305204 0.81503981 0.64305222 0.86670053 0.6430521
		 0.8919391 0.64305198 0.91557938 0.6430521 0.96444011 0.78026342 0.93929881 0.78026336
		 0.83960915 0.78026336 0.81453347 0.7802633 0.86450863 0.78026342 0.88934565 0.78026348
		 0.91428816 0.78026336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  25.802795 -80.532455 40.272758 
		21.118929 -82.182411 36.954189 15.803842 -83.079849 39.52742 15.172597 -82.327293 
		45.419155 19.856495 -80.677353 48.737698 25.171583 -79.779915 46.164467 18.793079 
		-51.42144 22.090849 13.018117 -52.669792 21.214685 8.9187565 -50.726677 25.098269 
		10.594347 -47.535198 29.857994 16.369312 -46.286842 30.734186 20.468651 -48.229965 
		26.850628 25.282806 -101.08617 45.876968 23.13438 -24.720795 15.954626 17.93075 -25.147804 
		13.053209 12.802631 -24.188217 15.960916 12.878138 -22.80164 21.770008 18.081802 
		-22.374632 24.671415 23.209929 -23.334209 21.763735 14.038352 7.223681 8.125165 9.1304436 
		5.1520858 5.4251223 4.0498195 4.558403 8.5094633 3.8771305 6.0363183 14.293815 8.7850447 
		8.1079121 16.993883 13.86563 8.7016001 13.909522;
	setAttr -s 25 ".vt[0:24]"  2.087646484 -8.24277115 4.51823902 1.650455 -8.4243536 4.054859638
		 1.018253326 -8.53281975 4.22033358 0.82324123 -8.45970058 4.84918022 1.26043653 -8.27812004 5.3125577
		 1.89263868 -8.16965389 5.14708328 1.67779744 -4.98381519 2.43320537 1.069390178 -5.1258173 2.21297407
		 0.53828561 -4.91992092 2.55114841 0.61558771 -4.57202244 3.10955143 1.22399473 -4.43002033 3.32978582
		 1.75509608 -4.63591671 2.99161386 1.9357667 -10.53606224 5.086690903 2.24971223 -2.003565073 1.89734948
		 1.74564207 -2.050422668 1.4701004 1.12449765 -1.95299578 1.67870164 1.0074235201 -1.8087132 2.31454849
		 1.5114975 -1.76185584 2.74179745 2.13264203 -1.85928178 2.53319931 1.38909113 1.55093646 0.89868498
		 0.91484118 1.32128131 0.49722183 0.2969209 1.24589097 0.72376305 0.15325427 1.40015602 1.35176444
		 0.62750429 1.62981093 1.75323045 1.24542081 1.70520198 1.52668631;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 0 7 14 0 13 14 1 8 15 0 14 15 1 9 16 0 15 16 1 10 17 0
		 16 17 1 11 18 0 17 18 1 18 13 1 13 19 0 14 20 0 19 20 0 15 21 0 20 21 0 16 22 0 21 22 0
		 17 23 0 22 23 0 18 24 0 23 24 0 24 19 0;
	setAttr -s 24 -ch 90 ".fc[0:23]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 4 5 6 7
		f 4 2 15 -9 -15
		mu 0 4 5 8 9 6
		f 4 3 16 -10 -16
		mu 0 4 8 10 11 9
		f 4 4 17 -11 -17
		mu 0 4 10 12 13 11
		f 4 5 12 -12 -18
		mu 0 4 12 0 3 13
		f 3 -1 -19 19
		mu 0 3 1 0 14
		f 3 -2 -20 20
		mu 0 3 5 4 15
		f 3 -3 -21 21
		mu 0 3 8 5 15
		f 3 -4 -22 22
		mu 0 3 10 8 14
		f 3 -5 -23 23
		mu 0 3 12 10 14
		f 3 -6 -24 18
		mu 0 3 0 12 14
		f 4 6 25 -27 -25
		mu 0 4 3 2 16 17
		f 4 7 27 -29 -26
		mu 0 4 7 6 18 19
		f 4 8 29 -31 -28
		mu 0 4 6 9 20 18
		f 4 9 31 -33 -30
		mu 0 4 9 11 21 20
		f 4 10 33 -35 -32
		mu 0 4 11 13 22 21
		f 4 11 24 -36 -34
		mu 0 4 13 3 17 22
		f 4 26 37 -39 -37
		mu 0 4 17 16 23 24
		f 4 28 39 -41 -38
		mu 0 4 19 18 25 26
		f 4 30 41 -43 -40
		mu 0 4 18 20 27 25
		f 4 32 43 -45 -42
		mu 0 4 20 21 28 27
		f 4 34 45 -47 -44
		mu 0 4 21 22 29 28
		f 4 35 36 -48 -46
		mu 0 4 22 17 24 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Head1";
createNode mesh -n "HeadShape1" -p "Head1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode animCurveTA -n "Background_Stuff2:polySurface2043_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -6.948120057164453 48 -13.111612340013192
		 72 -6.948120057164453 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2043_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 13.693118285047422 48 1.6279474546900645
		 72 13.693118285047422 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2043_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -15.994932553436232 48 -11.376260501180523
		 72 -15.994932553436232 96 0;
createNode shadingEngine -n "Background_Stuff2:lambert18SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Background_Stuff2:materialInfo17";
createNode lambert -n "Background_Stuff2:lambert18";
createNode file -n "Background_Stuff2:file15";
	setAttr ".ftn" -type "string" "C:/Users/Roger/Desktop/Winter 2014/Game Prototyping 2/Textures/Squid.PSD";
createNode place2dTexture -n "Background_Stuff2:place2dTexture15";
createNode animCurveTA -n "Background_Stuff2:polySurface2045_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 22.77855564324479 48 0.72335981939636895
		 72 22.77855564324479 96 0;
	setAttr -s 5 ".kit[1:4]"  18 9 18 9;
	setAttr -s 5 ".kot[1:4]"  18 9 18 9;
createNode animCurveTA -n "Background_Stuff2:polySurface2045_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 3.1020173979149921 48 -3.7795021551841992
		 72 3.1020173979149921 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2045_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -6.1683039754971736 48 9.2738168150696829
		 72 -6.1683039754971736 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2046_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 7.2392923442223696 48 7.7900614520451699
		 72 7.2392923442223696 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2046_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -9.3752510371011741 48 -9.0594310316422426
		 72 -9.3752510371011741 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2046_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -8.2148370719088231 48 -3.378835087612488
		 72 -8.2148370719088231 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2047_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 9.0220216781271034 48 3.5084953718502199
		 72 9.0220216781271034 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2047_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -8.5058629601004547 48 -23.08195926474794
		 72 -8.5058629601004547 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2047_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 16.067199940286113 48 9.3746914270313564
		 72 16.067199940286113 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2048_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 96 -360;
createNode animCurveTA -n "Background_Stuff2:polySurface2049_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -12.239811569059338 48 -10.824433977685237
		 72 -12.239811569059338 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2049_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 5.8775073072140271 48 5.8715467402097392
		 72 5.8775073072140271 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2049_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -1.2725932107426132 48 -11.334381222319136
		 72 -1.2725932107426132 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2050_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 17.7317535260079 48 12.515823817192114
		 72 17.7317535260079 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2050_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 3.3739294695038997 48 0 72 3.3739294695038997
		 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2050_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -2.6992464021536993 48 0 72 -2.6992464021536993
		 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2051_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -6.5842429460216483 48 -2.4436775628756187
		 72 -6.5842429460216483 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2051_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -4.0488816529560472 48 -14.345728691107455
		 72 -4.0488816529560472 96 0;
createNode animCurveTA -n "Background_Stuff2:polySurface2051_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 15.597421725904924 48 11.137395833150258
		 72 15.597421725904924 96 0;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/Roger/Desktop/Winter 2014/Game Prototyping 2/Textures/Squid.png";
createNode place2dTexture -n "place2dTexture1";
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
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 96 -ast 1 -aet 96 ";
	setAttr ".st" 6;
createNode lambert -n "lambert3";
createNode shadingEngine -n "polySurface10SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode shadingEngine -n "polySurface10SG1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo3";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/Roger/Desktop/squid head.fbm/Squid.png";
createNode place2dTexture -n "place2dTexture2";
createNode shadingEngine -n "Head:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Head:materialInfo1";
createNode lambert -n "Head:lambert2";
createNode file -n "Head:file1";
	setAttr ".ftn" -type "string" "C:/Users/Roger/Desktop/Winter 2014/Game Prototyping 2/Textures/Squid.png";
createNode place2dTexture -n "Head:place2dTexture1";
createNode lambert -n "lambert4";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo4";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode animCurveTA -n "Head1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -12.322578279618501 48 14.418782859888831
		 72 3.9478768825902866 96 0;
createNode animCurveTA -n "Head1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 -22.368619205456827 48 13.974464126088991
		 72 -40.111133430667465 96 0;
createNode animCurveTA -n "Head1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 24 8.59837479898555e-016 48 4.013141641550817
		 72 8.6563368198038475 96 0;
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode lambert -n "lambert5";
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "D:/Roger G/Game Prototyping 2/Textures/Squid.PSD";
createNode place2dTexture -n "place2dTexture3";
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
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 5 ".u";
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
connectAttr "Head:lambert2SG.mwc" "FinShape.iog.og[0].gco";
connectAttr "groupId3.id" "FinShape.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "FinShape.iog.og[1].gco";
connectAttr "groupId4.id" "FinShape.ciog.cog[0].cgid";
connectAttr "Background_Stuff2:polySurface2043_rotateX.o" "Tenticle2.rx";
connectAttr "Background_Stuff2:polySurface2043_rotateY.o" "Tenticle2.ry";
connectAttr "Background_Stuff2:polySurface2043_rotateZ.o" "Tenticle2.rz";
connectAttr "Background_Stuff2:polySurface2045_rotateX.o" "Tenticle5.rx";
connectAttr "Background_Stuff2:polySurface2045_rotateY.o" "Tenticle5.ry";
connectAttr "Background_Stuff2:polySurface2045_rotateZ.o" "Tenticle5.rz";
connectAttr "Background_Stuff2:polySurface2046_rotateX.o" "Tenticle3.rx";
connectAttr "Background_Stuff2:polySurface2046_rotateY.o" "Tenticle3.ry";
connectAttr "Background_Stuff2:polySurface2046_rotateZ.o" "Tenticle3.rz";
connectAttr "Background_Stuff2:polySurface2047_rotateX.o" "Tenticle6.rx";
connectAttr "Background_Stuff2:polySurface2047_rotateY.o" "Tenticle6.ry";
connectAttr "Background_Stuff2:polySurface2047_rotateZ.o" "Tenticle6.rz";
connectAttr "Background_Stuff2:polySurface2048_rotateY.o" "Sighn.ry";
connectAttr "groupId1.id" "SquidShape.iog.og[0].gid";
connectAttr "polySurface10SG1.mwc" "SquidShape.iog.og[0].gco";
connectAttr "groupId2.id" "SquidShape.ciog.cog[0].cgid";
connectAttr "Background_Stuff2:polySurface2049_rotateX.o" "Tenticle1.rx";
connectAttr "Background_Stuff2:polySurface2049_rotateY.o" "Tenticle1.ry";
connectAttr "Background_Stuff2:polySurface2049_rotateZ.o" "Tenticle1.rz";
connectAttr "Background_Stuff2:polySurface2050_rotateX.o" "Tenticle4.rx";
connectAttr "Background_Stuff2:polySurface2050_rotateY.o" "Tenticle4.ry";
connectAttr "Background_Stuff2:polySurface2050_rotateZ.o" "Tenticle4.rz";
connectAttr "Background_Stuff2:polySurface2051_rotateX.o" "Tenticle7.rx";
connectAttr "Background_Stuff2:polySurface2051_rotateY.o" "Tenticle7.ry";
connectAttr "Background_Stuff2:polySurface2051_rotateZ.o" "Tenticle7.rz";
connectAttr "Head1_rotateX.o" "Head1.rx";
connectAttr "Head1_rotateY.o" "Head1.ry";
connectAttr "Head1_rotateZ.o" "Head1.rz";
connectAttr "polyUnite1.out" "HeadShape1.i";
connectAttr "Background_Stuff2:lambert18.oc" "Background_Stuff2:lambert18SG.ss";
connectAttr "Background_Stuff2:lambert18SG.msg" "Background_Stuff2:materialInfo17.sg"
		;
connectAttr "Background_Stuff2:lambert18.msg" "Background_Stuff2:materialInfo17.m"
		;
connectAttr "Background_Stuff2:file15.msg" "Background_Stuff2:materialInfo17.t" 
		-na;
connectAttr "Background_Stuff2:file15.oc" "Background_Stuff2:lambert18.c";
connectAttr "Background_Stuff2:place2dTexture15.c" "Background_Stuff2:file15.c";
connectAttr "Background_Stuff2:place2dTexture15.tf" "Background_Stuff2:file15.tf"
		;
connectAttr "Background_Stuff2:place2dTexture15.rf" "Background_Stuff2:file15.rf"
		;
connectAttr "Background_Stuff2:place2dTexture15.mu" "Background_Stuff2:file15.mu"
		;
connectAttr "Background_Stuff2:place2dTexture15.mv" "Background_Stuff2:file15.mv"
		;
connectAttr "Background_Stuff2:place2dTexture15.s" "Background_Stuff2:file15.s";
connectAttr "Background_Stuff2:place2dTexture15.wu" "Background_Stuff2:file15.wu"
		;
connectAttr "Background_Stuff2:place2dTexture15.wv" "Background_Stuff2:file15.wv"
		;
connectAttr "Background_Stuff2:place2dTexture15.re" "Background_Stuff2:file15.re"
		;
connectAttr "Background_Stuff2:place2dTexture15.of" "Background_Stuff2:file15.of"
		;
connectAttr "Background_Stuff2:place2dTexture15.r" "Background_Stuff2:file15.ro"
		;
connectAttr "Background_Stuff2:place2dTexture15.n" "Background_Stuff2:file15.n";
connectAttr "Background_Stuff2:place2dTexture15.vt1" "Background_Stuff2:file15.vt1"
		;
connectAttr "Background_Stuff2:place2dTexture15.vt2" "Background_Stuff2:file15.vt2"
		;
connectAttr "Background_Stuff2:place2dTexture15.vt3" "Background_Stuff2:file15.vt3"
		;
connectAttr "Background_Stuff2:place2dTexture15.vc1" "Background_Stuff2:file15.vc1"
		;
connectAttr "Background_Stuff2:place2dTexture15.o" "Background_Stuff2:file15.uv"
		;
connectAttr "Background_Stuff2:place2dTexture15.ofs" "Background_Stuff2:file15.fs"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Background_Stuff2:lambert18SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface10SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Head:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Background_Stuff2:lambert18SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface10SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Head:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "lambert2.c";
connectAttr "file1.ot" "lambert2.it";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "lambert3.c";
connectAttr "file2.ot" "lambert3.it";
connectAttr "lambert3.oc" "polySurface10SG.ss";
connectAttr "polySurface10SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr "lambert3.oc" "polySurface10SG1.ss";
connectAttr "SquidShape.iog.og[0]" "polySurface10SG1.dsm" -na;
connectAttr "SquidShape.ciog.cog[0]" "polySurface10SG1.dsm" -na;
connectAttr "groupId1.msg" "polySurface10SG1.gn" -na;
connectAttr "groupId2.msg" "polySurface10SG1.gn" -na;
connectAttr "polySurface10SG1.msg" "materialInfo3.sg";
connectAttr "lambert3.msg" "materialInfo3.m";
connectAttr "file2.msg" "materialInfo3.t" -na;
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofu" "file2.ofu";
connectAttr "place2dTexture2.ofv" "file2.ofv";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.reu" "file2.reu";
connectAttr "place2dTexture2.rev" "file2.rev";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "Head:lambert2.oc" "Head:lambert2SG.ss";
connectAttr "FinShape.iog.og[0]" "Head:lambert2SG.dsm" -na;
connectAttr "Head:lambert2SG.msg" "Head:materialInfo1.sg";
connectAttr "Head:lambert2.msg" "Head:materialInfo1.m";
connectAttr "Head:file1.msg" "Head:materialInfo1.t" -na;
connectAttr "Head:file1.oc" "Head:lambert2.c";
connectAttr "Head:file1.ot" "Head:lambert2.it";
connectAttr "Head:place2dTexture1.c" "Head:file1.c";
connectAttr "Head:place2dTexture1.tf" "Head:file1.tf";
connectAttr "Head:place2dTexture1.rf" "Head:file1.rf";
connectAttr "Head:place2dTexture1.mu" "Head:file1.mu";
connectAttr "Head:place2dTexture1.mv" "Head:file1.mv";
connectAttr "Head:place2dTexture1.s" "Head:file1.s";
connectAttr "Head:place2dTexture1.wu" "Head:file1.wu";
connectAttr "Head:place2dTexture1.wv" "Head:file1.wv";
connectAttr "Head:place2dTexture1.re" "Head:file1.re";
connectAttr "Head:place2dTexture1.of" "Head:file1.of";
connectAttr "Head:place2dTexture1.r" "Head:file1.ro";
connectAttr "Head:place2dTexture1.n" "Head:file1.n";
connectAttr "Head:place2dTexture1.vt1" "Head:file1.vt1";
connectAttr "Head:place2dTexture1.vt2" "Head:file1.vt2";
connectAttr "Head:place2dTexture1.vt3" "Head:file1.vt3";
connectAttr "Head:place2dTexture1.vc1" "Head:file1.vc1";
connectAttr "Head:place2dTexture1.o" "Head:file1.uv";
connectAttr "Head:place2dTexture1.ofs" "Head:file1.fs";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "FinShape.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "FinShape.ciog.cog[0]" "lambert4SG.dsm" -na;
connectAttr "groupId3.msg" "lambert4SG.gn" -na;
connectAttr "groupId4.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo4.sg";
connectAttr "lambert4.msg" "materialInfo4.m";
connectAttr "SquidShape.o" "polyUnite1.ip[0]";
connectAttr "FinShape.o" "polyUnite1.ip[1]";
connectAttr "SquidShape.wm" "polyUnite1.im[0]";
connectAttr "FinShape.wm" "polyUnite1.im[1]";
connectAttr "file3.oc" "lambert5.c";
connectAttr "file3.ot" "lambert5.it";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "HeadShape1.iog" "lambert5SG.dsm" -na;
connectAttr "Tenticle7Shape.iog" "lambert5SG.dsm" -na;
connectAttr "TenticleShape4.iog" "lambert5SG.dsm" -na;
connectAttr "TenticleShape1.iog" "lambert5SG.dsm" -na;
connectAttr "SighnShape.iog" "lambert5SG.dsm" -na;
connectAttr "TenticleShape6.iog" "lambert5SG.dsm" -na;
connectAttr "TenticleShape3.iog" "lambert5SG.dsm" -na;
connectAttr "TenticleShape5.iog" "lambert5SG.dsm" -na;
connectAttr "TenticleShape2.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo5.sg";
connectAttr "lambert5.msg" "materialInfo5.m";
connectAttr "file3.msg" "materialInfo5.t" -na;
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "Background_Stuff2:lambert18SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface10SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface10SG1.pa" ":renderPartition.st" -na;
connectAttr "Head:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "Background_Stuff2:lambert18.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "Head:lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "Background_Stuff2:file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Head:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Background_Stuff2:place2dTexture15.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Head:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Squid1.ma
