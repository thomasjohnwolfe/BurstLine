// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:3,bsrc:0,bdst:6,culm:2,dpts:2,wrdp:False,uamb:True,mssp:True,ufog:True,aust:True,igpj:True,qofs:0,lico:1,qpre:3,flbk:,rntp:2,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|emission-10-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2,x:33733,y:32377,ptlb:node_2,tex:f489cc18e5378cf489f2651a00f3a0d4;n:type:ShaderForge.SFN_Tex2d,id:3,x:33443,y:32603,tex:f489cc18e5378cf489f2651a00f3a0d4,ntxv:0,isnm:False|TEX-2-TEX;n:type:ShaderForge.SFN_Tex2d,id:4,x:33449,y:32891,tex:f489cc18e5378cf489f2651a00f3a0d4,ntxv:0,isnm:False|UVIN-18-UVOUT,TEX-2-TEX;n:type:ShaderForge.SFN_Vector3,id:6,x:33429,y:32727,v1:0.498149,v2:0.06801471,v3:0.5441177;n:type:ShaderForge.SFN_Vector3,id:7,x:33449,y:33013,v1:1,v2:0.9724137,v3:0;n:type:ShaderForge.SFN_Multiply,id:8,x:33256,y:32634|A-3-R,B-6-OUT;n:type:ShaderForge.SFN_Multiply,id:9,x:33245,y:32933|A-4-G,B-7-OUT;n:type:ShaderForge.SFN_Add,id:10,x:33083,y:32781|A-40-OUT,B-9-OUT;n:type:ShaderForge.SFN_Panner,id:18,x:33733,y:32940,spu:-0.25,spv:0|UVIN-19-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:19,x:33941,y:32963,uv:0;n:type:ShaderForge.SFN_Sin,id:34,x:33947,y:32705|IN-35-T;n:type:ShaderForge.SFN_Time,id:35,x:34165,y:32705;n:type:ShaderForge.SFN_ConstantClamp,id:37,x:33767,y:32657,min:0.2,max:4|IN-38-OUT;n:type:ShaderForge.SFN_Multiply,id:38,x:33891,y:32487|A-39-OUT,B-34-OUT;n:type:ShaderForge.SFN_Vector1,id:39,x:34083,y:32441,v1:4;n:type:ShaderForge.SFN_Multiply,id:40,x:33025,y:32506|A-8-OUT,B-37-OUT;proporder:2;pass:END;sub:END;*/

Shader "Shader Forge/Blimp_03_Bottom" {
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
                float4 node_35 = _Time + _TimeEditor;
                float4 node_67 = _Time + _TimeEditor;
                float3 emissive = (((tex2D(_node2,TRANSFORM_TEX(i.uv0.rg, _node2)).r*float3(0.498149,0.06801471,0.5441177))*clamp((4.0*sin(node_35.g)),0.2,4))+(tex2D(_node2,TRANSFORM_TEX((i.uv0.rg+node_67.g*float2(-0.25,0)), _node2)).g*float3(1,0.9724137,0)));
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
