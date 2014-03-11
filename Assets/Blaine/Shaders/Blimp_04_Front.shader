// Shader created with Shader Forge Beta 0.20 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.20;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:3,bsrc:0,bdst:6,culm:2,dpts:2,wrdp:False,uamb:True,mssp:True,ufog:True,aust:True,igpj:True,qofs:0,lico:1,qpre:3,flbk:,rntp:2,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|diff-13-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33648,y:32519,tex:c758c677c92afe9438547ff79e223c4c,ntxv:0,isnm:False|TEX-4-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4,x:34124,y:32369,ptlb:node_4,tex:c758c677c92afe9438547ff79e223c4c;n:type:ShaderForge.SFN_Tex2d,id:5,x:33649,y:32806,tex:c758c677c92afe9438547ff79e223c4c,ntxv:0,isnm:False|TEX-4-TEX;n:type:ShaderForge.SFN_Tex2d,id:6,x:33642,y:33086,tex:c758c677c92afe9438547ff79e223c4c,ntxv:0,isnm:False|UVIN-24-UVOUT,TEX-4-TEX;n:type:ShaderForge.SFN_Vector3,id:7,x:33649,y:32673,v1:0.6470588,v2:0.05233565,v3:0.05233565;n:type:ShaderForge.SFN_Vector3,id:9,x:33642,y:33251,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Multiply,id:10,x:33388,y:32617|A-2-R,B-7-OUT;n:type:ShaderForge.SFN_Multiply,id:11,x:33435,y:32853|A-5-G,B-162-OUT;n:type:ShaderForge.SFN_Multiply,id:12,x:33436,y:33140|A-6-B,B-9-OUT;n:type:ShaderForge.SFN_Add,id:13,x:33004,y:32624|A-14-OUT,B-189-OUT;n:type:ShaderForge.SFN_Add,id:14,x:33192,y:32748|A-10-OUT,B-12-OUT;n:type:ShaderForge.SFN_Panner,id:24,x:33999,y:33089,spu:0,spv:-0.15|UVIN-25-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:25,x:34226,y:33089,uv:0;n:type:ShaderForge.SFN_Vector3,id:162,x:33636,y:32956,v1:1,v2:0.4344827,v3:0;n:type:ShaderForge.SFN_Sin,id:183,x:34354,y:32752|IN-184-T;n:type:ShaderForge.SFN_Time,id:184,x:34589,y:32710;n:type:ShaderForge.SFN_ConstantClamp,id:185,x:34025,y:32795,min:0.2,max:5|IN-186-OUT;n:type:ShaderForge.SFN_Multiply,id:186,x:34214,y:32658|A-188-OUT,B-183-OUT;n:type:ShaderForge.SFN_Vector1,id:188,x:34442,y:32506,v1:3;n:type:ShaderForge.SFN_Multiply,id:189,x:33855,y:32771|A-11-OUT,B-185-OUT;proporder:4;pass:END;sub:END;*/

Shader "Shader Forge/Blimp_04_Front" {
    Properties {
        _node4 ("node_4", 2D) = "white" {}
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
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _node4; uniform float4 _node4_ST;
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
                
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.xyz;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float2 node_220 = i.uv0;
                float4 node_221 = _Time + _TimeEditor;
                float4 node_184 = _Time + _TimeEditor;
                finalColor += diffuseLight * (((tex2D(_node4,TRANSFORM_TEX(node_220.rg, _node4)).r*float3(0.6470588,0.05233565,0.05233565))+(tex2D(_node4,TRANSFORM_TEX((i.uv0.rg+node_221.g*float2(0,-0.15)), _node4)).b*float3(1,1,1)))+((tex2D(_node4,TRANSFORM_TEX(node_220.rg, _node4)).g*float3(1,0.4344827,0))*clamp((3.0*sin(node_184.g)),0.2,5)));
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
            ZWrite Off
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _node4; uniform float4 _node4_ST;
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
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float2 node_222 = i.uv0;
                float4 node_223 = _Time + _TimeEditor;
                float4 node_184 = _Time + _TimeEditor;
                finalColor += diffuseLight * (((tex2D(_node4,TRANSFORM_TEX(node_222.rg, _node4)).r*float3(0.6470588,0.05233565,0.05233565))+(tex2D(_node4,TRANSFORM_TEX((i.uv0.rg+node_223.g*float2(0,-0.15)), _node4)).b*float3(1,1,1)))+((tex2D(_node4,TRANSFORM_TEX(node_222.rg, _node4)).g*float3(1,0.4344827,0))*clamp((3.0*sin(node_184.g)),0.2,5)));
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
