// Shader created with Shader Forge Beta 0.17 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.17;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,uamb:True,mssp:True,ufog:False,aust:True,igpj:False,qofs:0,lico:1,qpre:1,flbk:,rntp:1,lmpd:False,lprd:True,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,hqsc:True,hqlp:False,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300;n:type:ShaderForge.SFN_Final,id:0,x:32768,y:32453|diff-270-RGB,spec-6-OUT,gloss-4-OUT,normal-9-RGB,lwrap-272-RGB;n:type:ShaderForge.SFN_Vector1,id:3,x:33333,y:32629,v1:0.3;n:type:ShaderForge.SFN_Vector1,id:4,x:33143,y:32637,v1:2;n:type:ShaderForge.SFN_OneMinus,id:5,x:33333,y:32486|IN-270-RGB;n:type:ShaderForge.SFN_Multiply,id:6,x:33143,y:32486|A-5-OUT,B-3-OUT;n:type:ShaderForge.SFN_Tex2d,id:9,x:33143,y:32717,ptlb:Normal,tex:80286949e259c2d44876306923857245,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Color,id:270,x:33535,y:32412,ptlb:Diffuse,c1:0.9019608,c2:0.7019608,c3:0.3764706,c4:1;n:type:ShaderForge.SFN_Color,id:272,x:33143,y:32896,ptlb:Light Wrapping,c1:0.9058824,c2:0.4941176,c3:0.4901961,c4:1;proporder:9-272-270;pass:END;sub:END;*/

Shader "Shader Forge/Examples/LightWrapping" {
    Properties {
        _Normal ("Normal", 2D) = "bump" {}
        _LightWrapping ("Light Wrapping", Color) = (0.9058824,0.4941176,0.4901961,1)
        _Diffuse ("Diffuse", Color) = (0.9019608,0.7019608,0.3764706,1)
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
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles xbox360 ps3 flash 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float4 _Diffuse;
            uniform float4 _LightWrapping;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float4 uv0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float3 shLight : TEXCOORD0;
                float4 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 binormalDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.uv0;
                o.shLight = ShadeSH9(float4(v.normal * unity_Scale.w,1)) * 0.5;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0.rg, _Normal))).rgb;
                float3 normalDirection = normalize( mul( normalLocal, tangentTransform ) );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 w = _LightWrapping.rgb*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 diffuse = forwardLight * attenColor;
///////// Gloss:
                float gloss = exp2(2.0*10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float4 node_270 = _Diffuse;
                float3 specularColor = ((1.0 - node_270.rgb)*0.3);
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),gloss) * specularColor;
                float3 finalColor = ( diffuse + i.shLight ) * node_270.rgb + specular;
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
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers gles xbox360 ps3 flash 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float4 _Diffuse;
            uniform float4 _LightWrapping;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float4 uv0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.uv0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0.rg, _Normal))).rgb;
                float3 normalDirection = normalize( mul( normalLocal, tangentTransform ) );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 w = _LightWrapping.rgb*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 diffuse = forwardLight * attenColor;
///////// Gloss:
                float gloss = exp2(2.0*10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float4 node_270 = _Diffuse;
                float3 specularColor = ((1.0 - node_270.rgb)*0.3);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),gloss) * specularColor;
                float3 finalColor = diffuse * node_270.rgb + specular;
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
