// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:3,bsrc:0,bdst:6,culm:2,dpts:2,wrdp:False,uamb:True,mssp:True,ufog:True,aust:True,igpj:True,qofs:0,lico:1,qpre:3,flbk:,rntp:2,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|emission-90-OUT;n:type:ShaderForge.SFN_Tex2d,id:4,x:33617,y:32599,tex:9fe27008addbb1a4f87a9228580313bb,ntxv:0,isnm:False|UVIN-5-UVOUT,TEX-6-TEX;n:type:ShaderForge.SFN_Panner,id:5,x:34021,y:32565,spu:-0.5,spv:0;n:type:ShaderForge.SFN_Tex2dAsset,id:6,x:34121,y:32354,ptlb:Texture,tex:9fe27008addbb1a4f87a9228580313bb;n:type:ShaderForge.SFN_Multiply,id:7,x:33344,y:32614|A-4-R,B-8-OUT;n:type:ShaderForge.SFN_Vector3,id:8,x:33598,y:32750,v1:0.8304258,v2:0.3529412,v3:1;n:type:ShaderForge.SFN_Tex2d,id:54,x:33628,y:32871,tex:9fe27008addbb1a4f87a9228580313bb,ntxv:0,isnm:False|TEX-6-TEX;n:type:ShaderForge.SFN_Multiply,id:56,x:33355,y:32886|A-54-G,B-58-OUT;n:type:ShaderForge.SFN_Vector3,id:58,x:33609,y:33022,v1:0.4852941,v2:1,v3:0.8509127;n:type:ShaderForge.SFN_Add,id:59,x:33159,y:32763|A-7-OUT,B-56-OUT;n:type:ShaderForge.SFN_Tex2d,id:85,x:33474,y:33128,tex:9fe27008addbb1a4f87a9228580313bb,ntxv:0,isnm:False|TEX-6-TEX;n:type:ShaderForge.SFN_Multiply,id:87,x:33201,y:33143|A-85-B,B-89-OUT;n:type:ShaderForge.SFN_Vector3,id:89,x:33455,y:33279,v1:0.4852941,v2:0.6592293,v3:1;n:type:ShaderForge.SFN_Add,id:90,x:32988,y:32942|A-59-OUT,B-87-OUT;proporder:6;pass:END;sub:END;*/

Shader "Shader Forge/Rail_Shader_01" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One OneMinusSrcColor
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.uv0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
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
                
////// Lighting:
////// Emissive:
                float4 node_164 = _Time + _TimeEditor;
                float2 node_163 = i.uv0;
                float3 emissive = (((tex2D(_Texture,TRANSFORM_TEX((node_163.rg+node_164.g*float2(-0.5,0)), _Texture)).r*float3(0.8304258,0.3529412,1))+(tex2D(_Texture,TRANSFORM_TEX(node_163.rg, _Texture)).g*float3(0.4852941,1,0.8509127)))+(tex2D(_Texture,TRANSFORM_TEX(node_163.rg, _Texture)).b*float3(0.4852941,0.6592293,1)));
                float3 finalColor = emissive;
/// Final Color:
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
