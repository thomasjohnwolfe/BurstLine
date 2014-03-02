// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:0,blpr:0,bsrc:0,bdst:0,culm:2,dpts:2,wrdp:True,uamb:True,mssp:True,ufog:True,aust:True,igpj:False,qofs:0,lico:1,qpre:1,flbk:,rntp:1,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|emission-70-OUT,custl-4-OUT;n:type:ShaderForge.SFN_LightColor,id:2,x:33591,y:33269;n:type:ShaderForge.SFN_LightAttenuation,id:3,x:33591,y:33100;n:type:ShaderForge.SFN_Multiply,id:4,x:33311,y:32986|A-32-OUT,B-3-OUT,C-2-RGB;n:type:ShaderForge.SFN_NormalVector,id:7,x:33988,y:32613,pt:False;n:type:ShaderForge.SFN_LightVector,id:8,x:33988,y:32481;n:type:ShaderForge.SFN_Dot,id:9,x:33779,y:32557,dt:1|A-8-OUT,B-7-OUT;n:type:ShaderForge.SFN_Tex2d,id:10,x:33651,y:32401,ptlb:Diffuse,tex:e950636c300acaa45a3365cbe5b186ab,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:11,x:33407,y:32498|A-10-RGB,B-9-OUT;n:type:ShaderForge.SFN_HalfVector,id:24,x:33988,y:32756;n:type:ShaderForge.SFN_Dot,id:28,x:33779,y:32696,dt:1|A-7-OUT,B-24-OUT;n:type:ShaderForge.SFN_Power,id:30,x:33548,y:32671|VAL-28-OUT,EXP-56-OUT;n:type:ShaderForge.SFN_Add,id:32,x:33144,y:32652|A-11-OUT,B-42-OUT;n:type:ShaderForge.SFN_Slider,id:35,x:33945,y:32946,ptlb:Glossyness,min:1,cur:7.022556,max:10;n:type:ShaderForge.SFN_Multiply,id:42,x:33352,y:32671,cmnt:Spec Contribution|A-30-OUT,B-44-OUT;n:type:ShaderForge.SFN_Slider,id:44,x:33296,y:32825,ptlb:Specularity,min:1,cur:4,max:4;n:type:ShaderForge.SFN_Exp,id:56,x:33779,y:32909,et:1|IN-35-OUT;n:type:ShaderForge.SFN_AmbientLight,id:63,x:33619,y:32182;n:type:ShaderForge.SFN_Multiply,id:70,x:33405,y:32258|A-63-RGB,B-10-RGB;proporder:10-35-44;pass:END;sub:END;*/

Shader "Shader Forge/Car_Shader" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Glossyness ("Glossyness", Range(1, 10)) = 1
        _Specularity ("Specularity", Range(1, 4)) = 1
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Glossyness;
            uniform float _Specularity;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection =  i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
////// Emissive:
                float4 node_10 = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0.rg, _Diffuse));
                float3 emissive = (UNITY_LIGHTMODEL_AMBIENT.rgb*node_10.rgb);
                float3 node_7 = i.normalDir;
                float3 finalColor = emissive + (((node_10.rgb*max(0,dot(lightDirection,node_7)))+(pow(max(0,dot(node_7,halfDirection)),exp2(_Glossyness))*_Specularity))*attenuation*_LightColor0.rgb);
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Glossyness;
            uniform float _Specularity;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection =  i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float4 node_10 = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0.rg, _Diffuse));
                float3 node_7 = i.normalDir;
                float3 finalColor = (((node_10.rgb*max(0,dot(lightDirection,node_7)))+(pow(max(0,dot(node_7,halfDirection)),exp2(_Glossyness))*_Specularity))*attenuation*_LightColor0.rgb);
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
