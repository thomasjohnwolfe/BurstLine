// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,uamb:True,mssp:True,ufog:True,aust:True,igpj:False,qofs:0,lico:1,qpre:1,flbk:,rntp:1,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|emission-3-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33327,y:32624,ptlb:node_2,tex:9fe27008addbb1a4f87a9228580313bb,ntxv:0,isnm:False|UVIN-5-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3,x:33089,y:32676|A-2-RGB,B-4-OUT;n:type:ShaderForge.SFN_Vector3,id:4,x:33270,y:32822,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Panner,id:5,x:33673,y:32666,spu:1,spv:1|UVIN-14-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:14,x:33840,y:32634,uv:0;proporder:2;pass:END;sub:END;*/

Shader "Shader Forge/testing" {
    Properties {
        _node2 ("node_2", 2D) = "white" {}
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node2; uniform float4 _node2_ST;
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
                float4 node_21 = _Time + _TimeEditor;
                float3 emissive = (tex2D(_node2,TRANSFORM_TEX((i.uv0.rg+node_21.g*float2(1,1)), _node2)).rgb*float3(1,1,1));
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
