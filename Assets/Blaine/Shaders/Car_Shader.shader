// Shader created with Shader Forge Beta 0.27 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.27;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32665,y:32670|emission-70-OUT,custl-233-OUT;n:type:ShaderForge.SFN_LightColor,id:2,x:33788,y:33192;n:type:ShaderForge.SFN_LightAttenuation,id:3,x:33788,y:33053;n:type:ShaderForge.SFN_NormalVector,id:7,x:34349,y:32570,pt:False;n:type:ShaderForge.SFN_LightVector,id:8,x:34342,y:32411;n:type:ShaderForge.SFN_Dot,id:9,x:34133,y:32487,dt:1|A-8-OUT,B-7-OUT;n:type:ShaderForge.SFN_Multiply,id:11,x:33842,y:32322|A-81-RGB,B-9-OUT;n:type:ShaderForge.SFN_HalfVector,id:24,x:34349,y:32738;n:type:ShaderForge.SFN_Dot,id:28,x:34110,y:32698,dt:1|A-7-OUT,B-24-OUT;n:type:ShaderForge.SFN_Power,id:30,x:33883,y:32600|VAL-28-OUT,EXP-56-OUT;n:type:ShaderForge.SFN_Add,id:32,x:33187,y:32609|A-157-OUT,B-42-OUT;n:type:ShaderForge.SFN_Slider,id:35,x:34271,y:32924,ptlb:Glossyness,ptin:_Glossyness,min:1,cur:6.126369,max:10;n:type:ShaderForge.SFN_Multiply,id:42,x:33610,y:32571,cmnt:Spec Contribution|A-30-OUT,B-44-OUT;n:type:ShaderForge.SFN_Slider,id:44,x:33626,y:32766,ptlb:Specularity,ptin:_Specularity,min:1,cur:4,max:4;n:type:ShaderForge.SFN_Exp,id:56,x:34049,y:32852,et:1|IN-35-OUT;n:type:ShaderForge.SFN_AmbientLight,id:63,x:34048,y:32062;n:type:ShaderForge.SFN_Multiply,id:70,x:33832,y:32149|A-63-RGB,B-81-RGB;n:type:ShaderForge.SFN_Color,id:81,x:34116,y:32245,ptlb:Paint Color,ptin:_PaintColor,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:82,x:33543,y:31997|A-110-OUT,B-11-OUT;n:type:ShaderForge.SFN_Tex2d,id:83,x:34016,y:31734,ptlb:Flake/Scratch,ptin:_FlakeScratch,tex:46b03ba0d2e88d04b9358b8871755464,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:109,x:33951,y:31947,ptlb:FlakeSTR,ptin:_FlakeSTR,min:0,cur:0.05571363,max:1;n:type:ShaderForge.SFN_Multiply,id:110,x:33751,y:31825|A-83-RGB,B-109-OUT;n:type:ShaderForge.SFN_Cubemap,id:122,x:33944,y:31377,ptlb:Cubemap,ptin:_Cubemap,cube:2f821dbbb5e173e468876ef2e4eaa490,pvfc:0;n:type:ShaderForge.SFN_Add,id:157,x:33227,y:31936|A-177-OUT,B-82-OUT;n:type:ShaderForge.SFN_Slider,id:176,x:33917,y:31561,ptlb:CubemapSTR,ptin:_CubemapSTR,min:0,cur:0.7081198,max:1;n:type:ShaderForge.SFN_Multiply,id:177,x:33669,y:31480|A-122-RGB,B-176-OUT;n:type:ShaderForge.SFN_Multiply,id:211,x:33539,y:33082|A-3-OUT,B-2-RGB,C-32-OUT;n:type:ShaderForge.SFN_Fresnel,id:217,x:33672,y:33398|EXP-219-OUT;n:type:ShaderForge.SFN_Slider,id:219,x:33880,y:33374,ptlb:RimSTR,ptin:_RimSTR,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Color,id:220,x:33672,y:33556,ptlb:Rim_Color,ptin:_Rim_Color,glob:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:221,x:33482,y:33443|A-217-OUT,B-220-RGB;n:type:ShaderForge.SFN_Add,id:233,x:33048,y:32972|A-211-OUT,B-221-OUT;proporder:35-44-109-176-219-81-220-83-122;pass:END;sub:END;*/

Shader "Shader Forge/Car_Shader" {
    Properties {
        _Glossyness ("Glossyness", Range(1, 10)) = 6.126369
        _Specularity ("Specularity", Range(1, 4)) = 4
        _FlakeSTR ("FlakeSTR", Range(0, 1)) = 0.05571363
        _CubemapSTR ("CubemapSTR", Range(0, 1)) = 0.7081198
        _RimSTR ("RimSTR", Range(0, 10)) = 10
        _PaintColor ("Paint Color", Color) = (0,0,0,1)
        _Rim_Color ("Rim_Color", Color) = (1,0,0,1)
        _FlakeScratch ("Flake/Scratch", 2D) = "white" {}
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Glossyness;
            uniform float _Specularity;
            uniform float4 _PaintColor;
            uniform sampler2D _FlakeScratch; uniform float4 _FlakeScratch_ST;
            uniform float _FlakeSTR;
            uniform samplerCUBE _Cubemap;
            uniform float _CubemapSTR;
            uniform float _RimSTR;
            uniform float4 _Rim_Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 uv0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.uv0;
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
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 node_81 = _PaintColor;
                float3 emissive = (UNITY_LIGHTMODEL_AMBIENT.rgb*node_81.rgb);
                float2 node_238 = i.uv0;
                float3 node_7 = i.normalDir;
                float3 finalColor = emissive + ((attenuation*_LightColor0.rgb*(((texCUBE(_Cubemap,viewReflectDirection).rgb*_CubemapSTR)+((tex2D(_FlakeScratch,TRANSFORM_TEX(node_238.rg, _FlakeScratch)).rgb*_FlakeSTR)+(node_81.rgb*max(0,dot(lightDirection,node_7)))))+(pow(max(0,dot(node_7,halfDirection)),exp2(_Glossyness))*_Specularity)))+(pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimSTR)*_Rim_Color.rgb));
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
            Cull Off
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Glossyness;
            uniform float _Specularity;
            uniform float4 _PaintColor;
            uniform sampler2D _FlakeScratch; uniform float4 _FlakeScratch_ST;
            uniform float _FlakeSTR;
            uniform samplerCUBE _Cubemap;
            uniform float _CubemapSTR;
            uniform float _RimSTR;
            uniform float4 _Rim_Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 uv0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.uv0;
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
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float2 node_239 = i.uv0;
                float4 node_81 = _PaintColor;
                float3 node_7 = i.normalDir;
                float3 finalColor = ((attenuation*_LightColor0.rgb*(((texCUBE(_Cubemap,viewReflectDirection).rgb*_CubemapSTR)+((tex2D(_FlakeScratch,TRANSFORM_TEX(node_239.rg, _FlakeScratch)).rgb*_FlakeSTR)+(node_81.rgb*max(0,dot(lightDirection,node_7)))))+(pow(max(0,dot(node_7,halfDirection)),exp2(_Glossyness))*_Specularity)))+(pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimSTR)*_Rim_Color.rgb));
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
