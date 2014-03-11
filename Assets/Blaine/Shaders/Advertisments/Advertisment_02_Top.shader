// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:3,bsrc:0,bdst:6,culm:2,dpts:2,wrdp:False,uamb:True,mssp:True,ufog:True,aust:True,igpj:True,qofs:0,lico:1,qpre:3,flbk:,rntp:2,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|emission-13-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2,x:33951,y:32289,ptlb:node_2,tex:12dfd539420c20a459419d3689adeadb;n:type:ShaderForge.SFN_Tex2d,id:3,x:33370,y:32561,tex:12dfd539420c20a459419d3689adeadb,ntxv:0,isnm:False|TEX-2-TEX;n:type:ShaderForge.SFN_Tex2d,id:4,x:33400,y:32904,tex:12dfd539420c20a459419d3689adeadb,ntxv:0,isnm:False|TEX-2-TEX;n:type:ShaderForge.SFN_Tex2d,id:5,x:33708,y:33312,tex:12dfd539420c20a459419d3689adeadb,ntxv:0,isnm:False|TEX-2-TEX;n:type:ShaderForge.SFN_Vector3,id:6,x:33370,y:32684,v1:0.3529412,v2:0.3529412,v3:0.3529412;n:type:ShaderForge.SFN_Vector3,id:7,x:33405,y:33022,v1:1,v2:0.7655173,v3:0;n:type:ShaderForge.SFN_Vector3,id:8,x:33704,y:33423,v1:0.8308824,v2:0,v3:0;n:type:ShaderForge.SFN_Multiply,id:9,x:33189,y:32597|A-3-R,B-6-OUT;n:type:ShaderForge.SFN_Multiply,id:10,x:33210,y:32914|A-4-G,B-7-OUT;n:type:ShaderForge.SFN_Multiply,id:11,x:33509,y:33330|A-5-B,B-8-OUT;n:type:ShaderForge.SFN_Add,id:12,x:33070,y:32766|A-9-OUT,B-10-OUT;n:type:ShaderForge.SFN_Add,id:13,x:32959,y:32896|A-12-OUT,B-61-OUT;n:type:ShaderForge.SFN_Sin,id:59,x:33862,y:33108|IN-60-T;n:type:ShaderForge.SFN_Time,id:60,x:34050,y:32985;n:type:ShaderForge.SFN_Multiply,id:61,x:33352,y:33168|A-70-OUT,B-11-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:70,x:33582,y:33135,min:0.2,max:4|IN-84-OUT;n:type:ShaderForge.SFN_Multiply,id:84,x:33666,y:32953|A-85-OUT,B-59-OUT;n:type:ShaderForge.SFN_Vector1,id:85,x:33849,y:32905,v1:3;proporder:2;pass:END;sub:END;*/

Shader "Shader Forge/Advertisment_02_Top" {
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
                float2 node_102 = i.uv0;
                float4 node_60 = _Time + _TimeEditor;
                float3 emissive = (((tex2D(_node2,TRANSFORM_TEX(node_102.rg, _node2)).r*float3(0.3529412,0.3529412,0.3529412))+(tex2D(_node2,TRANSFORM_TEX(node_102.rg, _node2)).g*float3(1,0.7655173,0)))+(clamp((3.0*sin(node_60.g)),0.2,4)*(tex2D(_node2,TRANSFORM_TEX(node_102.rg, _node2)).b*float3(0.8308824,0,0))));
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