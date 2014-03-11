// Shader created with Shader Forge Beta 0.26 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.26;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|custl-212-OUT;n:type:ShaderForge.SFN_LightColor,id:45,x:33546,y:33031;n:type:ShaderForge.SFN_LightAttenuation,id:47,x:33546,y:32904;n:type:ShaderForge.SFN_NormalVector,id:49,x:34107,y:32594,pt:False;n:type:ShaderForge.SFN_LightVector,id:51,x:34118,y:32450;n:type:ShaderForge.SFN_Dot,id:53,x:33696,y:32449,dt:1|A-51-OUT,B-49-OUT;n:type:ShaderForge.SFN_Multiply,id:55,x:33443,y:32447|A-82-RGB,B-53-OUT;n:type:ShaderForge.SFN_HalfVector,id:57,x:34116,y:32723;n:type:ShaderForge.SFN_Dot,id:59,x:33872,y:32683,dt:1|A-49-OUT,B-57-OUT;n:type:ShaderForge.SFN_Power,id:61,x:33641,y:32658|VAL-59-OUT,EXP-71-OUT;n:type:ShaderForge.SFN_Add,id:63,x:33040,y:32569|A-158-OUT,B-67-OUT;n:type:ShaderForge.SFN_Slider,id:65,x:34040,y:32878,ptlb:Glossyness,ptin:_Glossyness,min:1,cur:7.022556,max:10;n:type:ShaderForge.SFN_Multiply,id:67,x:33445,y:32658,cmnt:Spec Contribution|A-61-OUT,B-69-OUT;n:type:ShaderForge.SFN_Slider,id:69,x:33546,y:32832,ptlb:Specularity,ptin:_Specularity,min:1,cur:4,max:4;n:type:ShaderForge.SFN_Exp,id:71,x:33874,y:32841,et:1|IN-65-OUT;n:type:ShaderForge.SFN_Color,id:82,x:33673,y:32282,ptlb:Glass Color,ptin:_GlassColor,glob:False,c1:0.1172414,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Cubemap,id:123,x:33689,y:32013,ptlb:Cubemap,ptin:_Cubemap,cube:2f821dbbb5e173e468876ef2e4eaa490,pvfc:0;n:type:ShaderForge.SFN_Add,id:158,x:33198,y:32301|A-179-OUT,B-55-OUT;n:type:ShaderForge.SFN_Slider,id:177,x:33611,y:32183,ptlb:CubemapSTR,ptin:_CubemapSTR,min:0,cur:0.7081198,max:1;n:type:ShaderForge.SFN_Multiply,id:179,x:33392,y:32111|A-123-RGB,B-177-OUT;n:type:ShaderForge.SFN_Multiply,id:212,x:33083,y:32912|A-47-OUT,B-45-RGB,C-63-OUT;proporder:65-69-177-82-123;pass:END;sub:END;*/

Shader "Shader Forge/Car_Glass" {
    Properties {
        _Glossyness ("Glossyness", Range(1, 10)) = 7.022556
        _Specularity ("Specularity", Range(1, 4)) = 4
        _CubemapSTR ("CubemapSTR", Range(0, 1)) = 0.7081198
        _GlassColor ("Glass Color", Color) = (0.1172414,0,1,1)
        _Cubemap ("Cubemap", Cube) = "_Skybox" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Glossyness;
            uniform float _Specularity;
            uniform float4 _GlassColor;
            uniform samplerCUBE _Cubemap;
            uniform float _CubemapSTR;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float3 normalDirection =  i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 node_49 = i.normalDir;
                float3 finalColor = (attenuation*_LightColor0.rgb*(((texCUBE(_Cubemap,viewReflectDirection).rgb*_CubemapSTR)+(_GlassColor.rgb*max(0,dot(lightDirection,node_49))))+(pow(max(0,dot(node_49,halfDirection)),exp2(_Glossyness))*_Specularity)));
/// Final Color:
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Glossyness;
            uniform float _Specularity;
            uniform float4 _GlassColor;
            uniform samplerCUBE _Cubemap;
            uniform float _CubemapSTR;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float3 normalDirection =  i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 node_49 = i.normalDir;
                float3 finalColor = (attenuation*_LightColor0.rgb*(((texCUBE(_Cubemap,viewReflectDirection).rgb*_CubemapSTR)+(_GlassColor.rgb*max(0,dot(lightDirection,node_49))))+(pow(max(0,dot(node_49,halfDirection)),exp2(_Glossyness))*_Specularity)));
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
