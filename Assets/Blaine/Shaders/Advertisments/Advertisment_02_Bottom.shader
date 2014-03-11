// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:3,bsrc:0,bdst:6,culm:2,dpts:2,wrdp:False,uamb:True,mssp:True,ufog:True,aust:True,igpj:True,qofs:0,lico:1,qpre:3,flbk:,rntp:2,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|emission-27-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33548,y:32593,ptlb:node_2,tex:912bbc82f1a98fb4b8a560aec93e9d53,ntxv:0,isnm:False|UVIN-33-UVOUT;n:type:ShaderForge.SFN_Vector3,id:3,x:33484,y:32868,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Multiply,id:4,x:33289,y:32721|A-2-R,B-3-OUT;n:type:ShaderForge.SFN_Tex2d,id:24,x:33668,y:33206,ptlb:node_24,tex:912bbc82f1a98fb4b8a560aec93e9d53,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector3,id:25,x:33637,y:33456,v1:0.9034482,v2:1,v3:0;n:type:ShaderForge.SFN_Multiply,id:26,x:33416,y:33286|A-24-B,B-25-OUT;n:type:ShaderForge.SFN_Add,id:27,x:33044,y:32852|A-4-OUT,B-77-OUT;n:type:ShaderForge.SFN_Panner,id:33,x:33723,y:32642,spu:0.5,spv:0|UVIN-34-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:34,x:33897,y:32642,uv:0;n:type:ShaderForge.SFN_Time,id:74,x:34538,y:32872;n:type:ShaderForge.SFN_ConstantClamp,id:76,x:33763,y:32972,min:0.2,max:1|IN-176-OUT;n:type:ShaderForge.SFN_Multiply,id:77,x:33280,y:33119|A-76-OUT,B-26-OUT;n:type:ShaderForge.SFN_Cos,id:176,x:34078,y:32956|IN-74-TDB;proporder:2-24;pass:END;sub:END;*/

Shader "Shader Forge/Advertisment_02_Bottom" {
    Properties {
        _node2 ("node_2", 2D) = "white" {}
        _node24 ("node_24", 2D) = "white" {}
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
            uniform sampler2D _node24; uniform float4 _node24_ST;
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
                float4 node_260 = _Time + _TimeEditor;
                float4 node_74 = _Time + _TimeEditor;
                float3 emissive = ((tex2D(_node2,TRANSFORM_TEX((i.uv0.rg+node_260.g*float2(0.5,0)), _node2)).r*float3(1,0,0))+(clamp(cos(node_74.b),0.2,1)*(tex2D(_node24,TRANSFORM_TEX(i.uv0.rg, _node24)).b*float3(0.9034482,1,0))));
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
