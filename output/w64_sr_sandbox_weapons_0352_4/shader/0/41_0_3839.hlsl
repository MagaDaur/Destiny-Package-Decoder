// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:34 2023
Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[16];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
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
  float4 cb0[114];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float2 v8 : TEXCOORD8,
  float4 v9 : SV_POSITION0,
  uint v10 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v9.xy;
  r0.z = dot(v1.xyz, v1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = v1.xyz * r0.zzz;
  r2.xyz = cb12[14].xyz + -v2.xyz;
  r0.z = dot(-cb12[6].xyz, -v2.xyz);
  r0.w = t0.Sample(s4_s, v0.xy).x;
  r0.w = log2(r0.w);
  r0.w = 2.20000005 * r0.w;
  r0.w = exp2(r0.w);
  r2.w = cb0[113].x * v7.y;
  r2.w = floor(r2.w);
  r3.xy = cb0[110].xy * r2.ww;
  r3.xy = v0.xy * cb0[109].xy + r3.xy;
  r2.w = t1.Sample(s4_s, r3.xy).x;
  r0.w = r2.w * r0.w;
  r0.xy = t10.Sample(s1_s, r0.xy).yw;
  r0.x = cmp(v0.w < r0.x);
  r2.w = r0.x ? 1.000000 : 0;
  r0.y = -1 + r0.y;
  r0.y = cb2[5].x * r0.y + 1;
  r0.x = r0.x ? 0 : 1;
  r0.x = r0.y * r0.x + r2.w;
  r0.y = max(0.00100000005, v7.z);
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = 1 + -r0.y;
  r3.x = max(9.99999975e-006, r0.y);
  r0.y = r0.y / r3.x;
  r0.y = max(0, r0.y);
  r3.xyz = v4.xyz * r0.yyy;
  r3.xyz = v8.yyy * r3.xyz;
  r0.y = saturate(v8.x * r0.w);
  r4.xyz = -cb3[0].xyz + r2.xyz;
  r4.xyz = abs(r4.xyz) / cb3[6].xyz;
  r5.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r4.xyz = r4.xyz / r5.xyz;
  r0.w = max(r4.x, r4.y);
  r0.w = max(r0.w, r4.z);
  r0.w = max(0.50999999, r0.w);
  r0.w = log2(r0.w);
  r0.w = floor(r0.w);
  r4.z = 1 + r0.w;
  r0.w = cmp(r4.z < cb3[8].x);
  r3.w = exp2(r4.z);
  r5.xyz = cb3[6].xyz * r3.www;
  r6.xyz = cb3[0].xyz / r5.xyz;
  r6.xyz = floor(r6.xyz);
  r2.xyz = -r6.xyz * r5.xyz + r2.xyz;
  r2.xyz = r2.xyz / cb3[6].xyz;
  r2.xyz = r2.xyz / cb3[3].xyz;
  r2.xyz = r2.xyz / r3.www;
  r4.xy = float2(0.5,0.5);
  r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + r4.xyz;
  r2.z = 0.5 + r2.z;
  r4.xy = cb3[2].xy * r2.xy;
  r4.w = r2.z * cb3[2].z + cb3[9].x;
  r2.xyz = float3(0.5,0.5,0.5) + r4.xyw;
  r2.xyz = r2.xyz / cb3[4].xyz;
  r4.xy = cb8[4].zw;
  r4.z = 0;
  r2.xyz = r0.www ? r2.xyz : r4.xyz;
  r5.xyzw = t16.SampleLevel(s3_s, r2.xyz, 0).xyzw;
  r6.xyzw = t17.SampleLevel(s3_s, r2.xyz, 0).xyzw;
  r7.xyzw = t18.SampleLevel(s3_s, r2.xyz, 0).xyzw;
  r0.z = cb3[15].x * r0.z;
  r0.z = saturate(r0.z * 1.5 + cb3[15].y);
  r0.w = cmp(r0.z < 1);
  if (r0.w != 0) {
    r8.xyzw = t16.SampleLevel(s3_s, r4.xyz, 0).xyzw;
    r9.xyzw = t17.SampleLevel(s3_s, r4.xyz, 0).xyzw;
    r4.xyzw = t18.SampleLevel(s3_s, r4.xyz, 0).xyzw;
    r10.xyzw = -r8.xyzw + r5.xyzw;
    r5.xyzw = r0.zzzz * r10.xyzw + r8.xyzw;
    r8.xyzw = -r9.xyzw + r6.xyzw;
    r6.xyzw = r0.zzzz * r8.xyzw + r9.xyzw;
    r8.xyzw = r7.xyzw + -r4.xyzw;
    r7.xyzw = r0.zzzz * r8.xyzw + r4.xyzw;
  }
  r1.w = 1;
  r4.x = dot(r5.xyzw, r1.xyzw);
  r4.y = dot(r6.xyzw, r1.xyzw);
  r4.z = dot(r7.xyzw, r1.xyzw);
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cb8[6].w * cb8[6].w;
  r0.w = max(9.99999975e-005, r0.w);
  r0.w = log2(r0.w);
  r0.w = cb0[104].x * r0.w;
  r0.w = exp2(r0.w);
  r1.w = t19.SampleLevel(s2_s, r2.xyz, 0).x;
  r1.w = -1 + r1.w;
  r0.z = r0.z * r1.w + 1;
  r1.x = saturate(dot(cb0[102].xyz, r1.xyz));
  r1.yzw = cb0[101].xyz * r0.www;
  r1.yzw = r1.yzw * r0.zzz;
  r1.xyz = r1.xxx * r1.yzw;
  r1.xyz = r1.xyz * float3(0.318309873,0.318309873,0.318309873) + r4.xyz;
  r1.xyz = r3.xyz * r1.xyz;
  r0.y = saturate(v0.z * r0.y);
  r1.xyz = cb13[1].xxx * r1.xyz;
  r3.xyzw = r0.yyyy * r0.xxxx;
  r0.xyzw = r0.yyyy * r2.wwww;
  o0.xyz = r3.www * r1.xyz;
  o1.xyz = r1.xyz * r0.xyz;
  o0.w = r3.w;
  o1.w = r0.w;
  o2.xyzw = r3.xyzw;
  o3.xyzw = r0.xyzw;
  return;
}