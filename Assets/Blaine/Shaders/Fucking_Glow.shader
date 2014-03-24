// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,uamb:True,mssp:True,ufog:True,aust:True,igpj:False,qofs:0,lico:1,qpre:1,flbk:,rntp:1,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|emission-5-OUT;n:type:ShaderForge.SFN_Color,id:4,x:33295,y:32601,ptlb:Rail Color,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:5,x:33056,y:32675|A-4-RGB,B-11-OUT;n:type:ShaderForge.SFN_Time,id:9,x:33928,y:32649;n:type:ShaderForge.SFN_ConstantClamp,id:11,x:33277,y:32831,min:0.5,max:5|IN-12-OUT;n:type:ShaderForge.SFN_Cos,id:12,x:33576,y:32788|IN-15-OUT;n:type:ShaderForge.SFN_Multiply,id:15,x:33749,y:32777|A-9-T,B-16-OUT;n:type:ShaderForge.SFN_Vector1,id:16,x:33919,y:32871,v1:0.7;proporder:4;pass:END;sub:END;*/

Shader "Shader Forge/Fucking_Glow" {
    Properties {
        _RailColor ("Rail Color", Color) = (1,0,0,1)
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
            uniform float4 _RailColor;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_9 = _Time + _TimeEditor;
                float3 emissive = (_RailColor.rgb*clamp(cos((node_9.g*0.7)),0.5,5));
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
