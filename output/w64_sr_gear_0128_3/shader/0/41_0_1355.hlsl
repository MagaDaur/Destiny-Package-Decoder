// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:53 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t4 : register(t4);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[16];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r1.xyz = -cb12[14].xyz + v4.xyz;
  r0.w = dot(-cb12[6].xyz, r1.xyz);
  r2.xy = t4.Sample(s3_s, v3.xy).xy;
  r2.xy = r2.xy * cb0[6].xx + cb0[6].yy;
  r1.w = dot(r2.xy, r2.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r2.yzw = v2.xyz * r2.yyy;
  r2.xyz = v1.xyz * r2.xxx + r2.yzw;
  r2.xyz = v0.xyz * r1.www + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = cb0[15].xxx * cb0[5].xyz;
  r1.w = max(cb8[6].w, 9.99999975e-005);
  r1.w = log2(r1.w);
  r1.w = cb0[14].x * r1.w;
  r1.w = exp2(r1.w);
  r4.xyz = -cb3[0].xyz + v4.xyz;
  r4.xyz = abs(r4.xyz) / cb3[6].xyz;
  r5.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r4.xyz = r4.xyz / r5.xyz;
  r3.w = max(r4.x, r4.y);
  r3.w = max(r3.w, r4.z);
  r3.w = max(0.50999999, r3.w);
  r3.w = log2(r3.w);
  r3.w = floor(r3.w);
  r4.z = 1 + r3.w;
  r3.w = cmp(r4.z < cb3[8].x);
  r4.w = exp2(r4.z);
  r5.xyz = cb3[6].xyz * r4.www;
  r6.xyz = cb3[0].xyz / r5.xyz;
  r6.xyz = floor(r6.xyz);
  r5.xyz = -r6.xyz * r5.xyz + v4.xyz;
  r5.xyz = r5.xyz / cb3[6].xyz;
  r5.xyz = r5.xyz / cb3[3].xyz;
  r5.xyz = r5.xyz / r4.www;
  r4.xy = float2(0.5,0.5);
  r4.xyz = r5.xyz * float3(0.5,0.5,0.5) + r4.xyz;
  r4.z = 0.5 + r4.z;
  r4.xy = cb3[2].xy * r4.xy;
  r4.w = r4.z * cb3[2].z + cb3[9].x;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyw;
  r4.xyz = r4.xyz / cb3[4].xyz;
  r5.xy = cb8[4].zw;
  r5.z = 0;
  r4.xyz = r3.www ? r4.xyz : r5.xyz;
  r6.xyzw = t16.SampleLevel(s5_s, r4.xyz, 0).xyzw;
  r7.xyzw = t17.SampleLevel(s5_s, r4.xyz, 0).xyzw;
  r8.xyzw = t18.SampleLevel(s5_s, r4.xyz, 0).xyzw;
  r0.w = cb3[15].x * r0.w;
  r0.w = saturate(r0.w * 1.5 + cb3[15].y);
  r3.w = cmp(r0.w < 1);
  if (r3.w != 0) {
    r9.xyzw = t16.SampleLevel(s5_s, r5.xyz, 0).xyzw;
    r10.xyzw = t17.SampleLevel(s5_s, r5.xyz, 0).xyzw;
    r5.xyzw = t18.SampleLevel(s5_s, r5.xyz, 0).xyzw;
    r11.xyzw = -r9.xyzw + r6.xyzw;
    r6.xyzw = r0.wwww * r11.xyzw + r9.xyzw;
    r9.xyzw = -r10.xyzw + r7.xyzw;
    r7.xyzw = r0.wwww * r9.xyzw + r10.xyzw;
    r9.xyzw = r8.xyzw + -r5.xyzw;
    r8.xyzw = r0.wwww * r9.xyzw + r5.xyzw;
  }
  r2.w = 1;
  r5.x = dot(r6.xyzw, r2.xyzw);
  r5.y = dot(r7.xyzw, r2.xyzw);
  r5.z = dot(r8.xyzw, r2.xyzw);
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = t19.SampleLevel(s4_s, r4.xyz, 0).x;
  r2.w = -1 + r2.w;
  r0.w = r0.w * r2.w + 1;
  r2.x = saturate(dot(cb0[9].xyz, r2.xyz));
  r2.yzw = cb0[8].xyz * r1.www;
  r2.yzw = r2.yzw * r0.www;
  r2.xyz = r2.xxx * r2.yzw;
  r2.xyz = r2.xyz * float3(0.318309873,0.318309873,0.318309873) + r5.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r2.xyz = cb13[1].xxx * r2.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r1.x = 0.015625 * r0.w;
  r1.x = min(1, r1.x);
  r0.z = sqrt(r1.x);
  r0.z = t21.SampleLevel(s2_s, r0.xyz, 0).x;
  r1.xyzw = t20.SampleLevel(s2_s, r0.xy, 0).xyzw;
  r1.xyzw = float4(-0,-0,-0,-1) + r1.xyzw;
  r1.xyzw = r0.zzzz * r1.xyzw + float4(0,0,0,1);
  r0.z = saturate(r0.w * cb0[3].x + cb0[3].y);
  r3.xyzw = t11.Sample(s1_s, r0.xy).xyzw;
  r4.xyzw = t13.Sample(s1_s, r0.xy).xyzw;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r0.xyzw = r0.zzzz * r3.xyzw + r4.xyzw;
  r0.xyz = cb8[5].xyz * r0.xyz;
  r0.xyz = r0.www * cb8[6].xyz + r0.xyz;
  r2.xyz = cb8[7].xyz * r2.xyz;
  r1.xyz = r2.xyz * r1.www + r1.xyz;
  r0.xyz = r0.xyz * cb13[1].xxx + r1.xyz;
  o0.xyz = cb0[5].www * r0.xyz;
  o0.w = cb0[5].w;
  return;
}