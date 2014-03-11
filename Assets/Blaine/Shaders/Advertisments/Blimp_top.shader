// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:3,bsrc:0,bdst:6,culm:2,dpts:2,wrdp:False,uamb:True,mssp:True,ufog:True,aust:True,igpj:True,qofs:0,lico:1,qpre:3,flbk:,rntp:2,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|emission-17-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2,x:33724,y:32393,ptlb:node_2,tex:269177b34eb78ef49a1b0f519d9399ad;n:type:ShaderForge.SFN_Tex2d,id:3,x:33324,y:32556,tex:269177b34eb78ef49a1b0f519d9399ad,ntxv:0,isnm:False|TEX-2-TEX;n:type:ShaderForge.SFN_Tex2d,id:4,x:33579,y:32912,tex:269177b34eb78ef49a1b0f519d9399ad,ntxv:0,isnm:False|UVIN-48-UVOUT,TEX-2-TEX;n:type:ShaderForge.SFN_Tex2d,id:6,x:33611,y:33209,tex:269177b34eb78ef49a1b0f519d9399ad,ntxv:0,isnm:False|TEX-2-TEX;n:type:ShaderForge.SFN_Vector3,id:7,x:33329,y:32665,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Vector3,id:8,x:33577,y:33053,v1:1,v2:0.9724138,v3:0;n:type:ShaderForge.SFN_Vector3,id:9,x:33611,y:33331,v1:0.5582597,v2:0.1708477,v3:0.5808823;n:type:ShaderForge.SFN_Multiply,id:10,x:33123,y:32617|A-3-G,B-7-OUT;n:type:ShaderForge.SFN_Multiply,id:11,x:33358,y:32946|A-4-B,B-8-OUT;n:type:ShaderForge.SFN_Multiply,id:12,x:33404,y:33182|A-6-R,B-9-OUT;n:type:ShaderForge.SFN_Parallax,id:13,x:33995,y:32312|UVIN-14-UVOUT,HEI-15-OUT;n:type:ShaderForge.SFN_TexCoord,id:14,x:34231,y:32222,uv:0;n:type:ShaderForge.SFN_Vector1,id:15,x:34165,y:32445,v1:1;n:type:ShaderForge.SFN_Add,id:16,x:33123,y:32840|A-28-OUT,B-11-OUT;n:type:ShaderForge.SFN_Add,id:17,x:32970,y:32940|A-16-OUT,B-12-OUT;n:type:ShaderForge.SFN_Sin,id:26,x:33968,y:32576|IN-27-T;n:type:ShaderForge.SFN_Time,id:27,x:34165,y:32562;n:type:ShaderForge.SFN_Multiply,id:28,x:33405,y:32806|A-34-OUT,B-10-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:34,x:33801,y:32576,min:0.1,max:1|IN-26-OUT;n:type:ShaderForge.SFN_Panner,id:48,x:33997,y:32847,spu:-0.25,spv:0|UVIN-49-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:49,x:34236,y:32776,uv:0;proporder:2;pass:END;sub:END;*/

Shader "Shader Forge/Blimp_top" {
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
                float4 node_27 = _Time + _TimeEditor;
                float2 node_126 = i.uv0;
                float4 node_127 = _Time + _TimeEditor;
                float3 emissive = (((clamp(sin(node_27.g),0.1,1)*(tex2D(_node2,TRANSFORM_TEX(node_126.rg, _node2)).g*float3(1,1,1)))+(tex2D(_node2,TRANSFORM_TEX((i.uv0.rg+node_127.g*float2(-0.25,0)), _node2)).b*float3(1,0.9724138,0)))+(tex2D(_node2,TRANSFORM_TEX(node_126.rg, _node2)).r*float3(0.5582597,0.1708477,0.5808823)));
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
