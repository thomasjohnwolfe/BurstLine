// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:2,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:False,uamb:True,mssp:True,ufog:True,aust:True,igpj:True,qofs:0,lico:1,qpre:3,flbk:,rntp:2,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|emission-29-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33558,y:32609,tex:1366ebeba5bd8c04a98241f8bb0759f0,ntxv:0,isnm:False|UVIN-9-UVOUT,TEX-3-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3,x:34252,y:32378,ptlb:node_3,tex:1366ebeba5bd8c04a98241f8bb0759f0;n:type:ShaderForge.SFN_Panner,id:9,x:33925,y:32754,spu:1,spv:1|UVIN-11-OUT;n:type:ShaderForge.SFN_TexCoord,id:10,x:34422,y:32754,uv:0;n:type:ShaderForge.SFN_Multiply,id:11,x:34171,y:32754|A-10-UVOUT,B-12-OUT;n:type:ShaderForge.SFN_Vector1,id:12,x:34422,y:32908,v1:1;n:type:ShaderForge.SFN_Tex2d,id:26,x:33526,y:32836,tex:1366ebeba5bd8c04a98241f8bb0759f0,ntxv:0,isnm:False|UVIN-258-UVOUT,TEX-3-TEX;n:type:ShaderForge.SFN_Tex2d,id:27,x:33526,y:33070,tex:1366ebeba5bd8c04a98241f8bb0759f0,ntxv:0,isnm:False|UVIN-259-UVOUT,TEX-3-TEX;n:type:ShaderForge.SFN_Add,id:28,x:33143,y:32872|A-44-OUT,B-46-OUT;n:type:ShaderForge.SFN_Add,id:29,x:33100,y:32675|A-45-OUT,B-28-OUT;n:type:ShaderForge.SFN_Multiply,id:44,x:33354,y:32899|A-26-G,B-48-OUT;n:type:ShaderForge.SFN_Multiply,id:45,x:33312,y:32630|A-2-R,B-47-OUT;n:type:ShaderForge.SFN_Multiply,id:46,x:33310,y:33070|A-27-B,B-49-OUT;n:type:ShaderForge.SFN_Vector3,id:47,x:33558,y:32735,v1:0.1009427,v2:0.06747404,v3:0.3529412;n:type:ShaderForge.SFN_Vector3,id:48,x:33526,y:32959,v1:0.1211073,v2:0.4117647,v3:0.4117647;n:type:ShaderForge.SFN_Vector3,id:49,x:33526,y:33195,v1:0.3840614,v2:0.1563041,v3:0.4338235;n:type:ShaderForge.SFN_Panner,id:258,x:33889,y:32895,spu:0,spv:-1|UVIN-11-OUT;n:type:ShaderForge.SFN_Panner,id:259,x:33910,y:33071,spu:0.5,spv:0.5|UVIN-11-OUT;n:type:ShaderForge.SFN_Tex2d,id:275,x:33393,y:33732,ptlb:node_275,tex:1366ebeba5bd8c04a98241f8bb0759f0,ntxv:0,isnm:False|UVIN-281-UVOUT;n:type:ShaderForge.SFN_Panner,id:281,x:33703,y:33830,spu:1,spv:1|UVIN-283-OUT,DIST-285-TSL;n:type:ShaderForge.SFN_Append,id:283,x:33872,y:33789|A-286-X,B-286-Z;n:type:ShaderForge.SFN_Time,id:285,x:33884,y:33928;n:type:ShaderForge.SFN_FragmentPosition,id:286,x:34122,y:33791;n:type:ShaderForge.SFN_Append,id:288,x:33456,y:33476|A-290-OUT,B-289-V;n:type:ShaderForge.SFN_TexCoord,id:289,x:33667,y:33575,uv:0;n:type:ShaderForge.SFN_Fresnel,id:290,x:33717,y:33423|EXP-291-OUT;n:type:ShaderForge.SFN_Vector1,id:291,x:33914,y:33480,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:292,x:33207,y:33516,ptlb:node_292,tex:9b05907d018e5a941a46e85eb3c05df7,ntxv:0,isnm:False|UVIN-288-OUT;n:type:ShaderForge.SFN_Multiply,id:298,x:32948,y:33648|A-292-R,B-275-RGB,C-300-OUT;n:type:ShaderForge.SFN_Slider,id:300,x:33144,y:33412,ptlb:node_300,min:0,cur:0.6842105,max:1;n:type:ShaderForge.SFN_Vector1,id:323,x:33412,y:33253,v1:1;proporder:3-275-292-300;pass:END;sub:END;*/

Shader "Shader Forge/Item_Pickup_Box" {
    Properties {
        _node3 ("node_3", 2D) = "white" {}
        _node275 ("node_275", 2D) = "white" {}
        _node292 ("node_292", 2D) = "white" {}
        _node300 ("node_300", Range(0, 1)) = 0
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
            Blend One One
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
            uniform sampler2D _node3; uniform float4 _node3_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float4 uv0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.uv0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_338 = _Time + _TimeEditor;
                float2 node_11 = (i.uv0.rg*1.0);
                float3 emissive = ((tex2D(_node3,TRANSFORM_TEX((node_11+node_338.g*float2(1,1)), _node3)).r*float3(0.1009427,0.06747404,0.3529412))+((tex2D(_node3,TRANSFORM_TEX((node_11+node_338.g*float2(0,-1)), _node3)).g*float3(0.1211073,0.4117647,0.4117647))+(tex2D(_node3,TRANSFORM_TEX((node_11+node_338.g*float2(0.5,0.5)), _node3)).b*float3(0.3840614,0.1563041,0.4338235))));
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
