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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r0.xy = float2(4,4) * r0.xy;
  r1.xyz = -cb12[14].xyz + v4.xyz;
  r0.w = dot(-cb12[6].xyz, r1.xyz);
  r1.xy = t4.Sample(s3_s, v3.xy).xy;
  r1.xy = r1.xy * cb0[6].xx + cb0[6].yy;
  r1.z = dot(r1.xy, r1.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r1.z = sqrt(r1.z);
  r2.xyz = v2.xyz * r1.yyy;
  r1.xyw = v1.xyz * r1.xxx + r2.xyz;
  r1.xyz = v0.xyz * r1.zzz + r1.xyw;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r2.xyz = cb0[15].xxx * cb0[5].xyz;
  r2.w = max(9.99999975e-005, v0.w);
  r2.w = log2(r2.w);
  r2.w = cb0[14].x * r2.w;
  r2.w = exp2(r2.w);
  r3.xyz = -cb3[0].xyz + v4.xyz;
  r3.xyz = abs(r3.xyz) / cb3[6].xyz;
  r4.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r3.xyz = r3.xyz / r4.xyz;
  r3.x = max(r3.x, r3.y);
  r3.x = max(r3.x, r3.z);
  r3.x = max(0.50999999, r3.x);
  r3.x = log2(r3.x);
  r3.x = floor(r3.x);
  r3.z = 1 + r3.x;
  r3.w = cmp(r3.z < cb3[8].x);
  r4.x = exp2(r3.z);
  r4.yzw = cb3[6].xyz * r4.xxx;
  r5.xyz = cb3[0].xyz / r4.yzw;
  r5.xyz = floor(r5.xyz);
  r4.yzw = -r5.xyz * r4.yzw + v4.xyz;
  r4.yzw = r4.yzw / cb3[6].xyz;
  r4.yzw = r4.yzw / cb3[3].xyz;
  r4.xyz = r4.yzw / r4.xxx;
  r3.xy = float2(0.5,0.5);
  r3.xyz = r4.xyz * float3(0.5,0.5,0.5) + r3.xyz;
  r3.z = 0.5 + r3.z;
  r4.xy = cb3[2].xy * r3.xy;
  r4.w = r3.z * cb3[2].z + cb3[9].x;
  r3.xyz = float3(0.5,0.5,0.5) + r4.xyw;
  r3.xyz = r3.xyz / cb3[4].xyz;
  r4.xy = cb8[4].zw;
  r4.z = 0;
  r3.xyz = r3.www ? r3.xyz : r4.xyz;
  r5.xyzw = t16.SampleLevel(s5_s, r3.xyz, 0).xyzw;
  r6.xyzw = t17.SampleLevel(s5_s, r3.xyz, 0).xyzw;
  r7.xyzw = t18.SampleLevel(s5_s, r3.xyz, 0).xyzw;
  r0.w = cb3[15].x * r0.w;
  r0.w = saturate(r0.w * 1.5 + cb3[15].y);
  r3.w = cmp(r0.w < 1);
  if (r3.w != 0) {
    r8.xyzw = t16.SampleLevel(s5_s, r4.xyz, 0).xyzw;
    r9.xyzw = t17.SampleLevel(s5_s, r4.xyz, 0).xyzw;
    r4.xyzw = t18.SampleLevel(s5_s, r4.xyz, 0).xyzw;
    r10.xyzw = -r8.xyzw + r5.xyzw;
    r5.xyzw = r0.wwww * r10.xyzw + r8.xyzw;
    r8.xyzw = -r9.xyzw + r6.xyzw;
    r6.xyzw = r0.wwww * r8.xyzw + r9.xyzw;
    r8.xyzw = r7.xyzw + -r4.xyzw;
    r7.xyzw = r0.wwww * r8.xyzw + r4.xyzw;
  }
  r1.w = 1;
  r4.x = dot(r5.xyzw, r1.xyzw);
  r4.y = dot(r6.xyzw, r1.xyzw);
  r4.z = dot(r7.xyzw, r1.xyzw);
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = t19.SampleLevel(s4_s, r3.xyz, 0).x;
  r1.w = -1 + r1.w;
  r0.w = r0.w * r1.w + 1;
  r1.x = saturate(dot(cb0[9].xyz, r1.xyz));
  r1.yzw = cb0[8].xyz * r2.www;
  r1.yzw = r1.yzw * r0.www;
  r1.xyz = r1.xxx * r1.yzw;
  r1.xyz = r1.xyz * float3(0.318309873,0.318309873,0.318309873) + r4.xyz;
  r1.xyz = r2.xyz * r1.xyz;
  r2.xyz = -cb12[7].xyz + v4.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r1.w = 0.015625 * r0.w;
  r1.w = min(1, r1.w);
  r0.z = sqrt(r1.w);
  r0.z = t21.SampleLevel(s2_s, r0.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s2_s, r0.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r0.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.z = saturate(r0.w * cb0[3].x + cb0[3].y);
  r3.xyzw = t11.Sample(s1_s, r0.xy).xyzw;
  r4.xyzw = t13.Sample(s1_s, r0.xy).xyzw;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r0.xyzw = r0.zzzz * r3.xyzw + r4.xyzw;
  r0.xyz = cb8[5].xyz * r0.xyz;
  r0.xyz = r0.www * cb8[6].xyz + r0.xyz;
  r1.xyz = cb8[7].xyz * r1.xyz;
  r1.xyz = r1.xyz * r2.www + r2.xyz;
  r0.xyz = r0.xyz * cb13[1].xxx + r1.xyz;
  o0.xyz = cb0[5].www * r0.xyz;
  o0.w = cb0[5].w;
  return;
}