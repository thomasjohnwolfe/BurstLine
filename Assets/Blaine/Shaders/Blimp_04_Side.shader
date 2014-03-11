// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:3,bsrc:0,bdst:6,culm:2,dpts:2,wrdp:False,uamb:True,mssp:True,ufog:True,aust:True,igpj:True,qofs:0,lico:1,qpre:3,flbk:,rntp:2,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|emission-15-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2,x:33869,y:32300,ptlb:node_2,tex:395a51e6485dde04db6b9baf500c9a61;n:type:ShaderForge.SFN_Tex2d,id:3,x:33446,y:32538,tex:395a51e6485dde04db6b9baf500c9a61,ntxv:0,isnm:False|TEX-2-TEX;n:type:ShaderForge.SFN_Tex2d,id:4,x:33446,y:32794,tex:395a51e6485dde04db6b9baf500c9a61,ntxv:0,isnm:False|UVIN-97-UVOUT,TEX-2-TEX;n:type:ShaderForge.SFN_Tex2d,id:5,x:33490,y:33105,tex:395a51e6485dde04db6b9baf500c9a61,ntxv:0,isnm:False|UVIN-28-UVOUT,TEX-2-TEX;n:type:ShaderForge.SFN_Multiply,id:6,x:33240,y:32575|A-3-R,B-10-OUT;n:type:ShaderForge.SFN_Multiply,id:7,x:33277,y:33105|A-5-B,B-12-OUT;n:type:ShaderForge.SFN_Vector3,id:10,x:33446,y:32663,v1:0.6544118,v2:0.09623704,v3:0.2694636;n:type:ShaderForge.SFN_Vector3,id:11,x:33446,y:32919,v1:1,v2:0.8196754,v3:0.06617647;n:type:ShaderForge.SFN_Vector3,id:12,x:33490,y:33238,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Multiply,id:13,x:33243,y:32805|A-4-G,B-11-OUT;n:type:ShaderForge.SFN_Add,id:14,x:33070,y:32655|A-6-OUT,B-13-OUT;n:type:ShaderForge.SFN_Add,id:15,x:32948,y:32856|A-14-OUT,B-152-OUT;n:type:ShaderForge.SFN_Multiply,id:21,x:33106,y:33059|A-22-OUT,B-7-OUT;n:type:ShaderForge.SFN_Vector1,id:22,x:33294,y:33043,v1:5;n:type:ShaderForge.SFN_Panner,id:28,x:33956,y:33321,spu:0,spv:0.5|UVIN-29-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:29,x:34163,y:33321,uv:0;n:type:ShaderForge.SFN_Panner,id:97,x:33795,y:32831,spu:0,spv:-0.1|UVIN-99-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:99,x:34013,y:32831,uv:0;n:type:ShaderForge.SFN_Sin,id:135,x:34301,y:33096|IN-136-T;n:type:ShaderForge.SFN_Time,id:136,x:34469,y:33086;n:type:ShaderForge.SFN_ConstantClamp,id:137,x:33931,y:33002,min:0.2,max:5|IN-138-OUT;n:type:ShaderForge.SFN_Multiply,id:138,x:34301,y:32950|A-139-OUT,B-135-OUT;n:type:ShaderForge.SFN_Vector1,id:139,x:34483,y:32927,v1:5;n:type:ShaderForge.SFN_Multiply,id:152,x:33128,y:33262|A-137-OUT,B-21-OUT;proporder:2;pass:END;sub:END;*/

Shader "Shader Forge/Blimp_04_Side" {
    Properties {
        _node2 ("node_2", 2D) = "white" {}
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
            uniform sampler2D _node2; uniform float4 _node2_ST;
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
                float4 node_211 = _Time + _TimeEditor;
                float4 node_136 = _Time + _TimeEditor;
                float3 emissive = (((tex2D(_node2,TRANSFORM_TEX(i.uv0.rg, _node2)).r*float3(0.6544118,0.09623704,0.2694636))+(tex2D(_node2,TRANSFORM_TEX((i.uv0.rg+node_211.g*float2(0,-0.1)), _node2)).g*float3(1,0.8196754,0.06617647)))+(clamp((5.0*sin(node_136.g)),0.2,5)*(5.0*(tex2D(_node2,TRANSFORM_TEX((i.uv0.rg+node_211.g*float2(0,0.5)), _node2)).b*float3(1,1,1)))));
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
