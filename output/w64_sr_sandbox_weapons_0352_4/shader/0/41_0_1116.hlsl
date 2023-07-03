// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:44 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
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
  float4 cb0[110];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD8,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : SV_POSITION0,
  uint v9 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v8.xy;
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v1.xyz * r0.www;
  r2.xyz = cb12[14].xyz + -v2.xyz;
  r0.w = dot(-cb12[6].xyz, -v2.xyz);
  r3.xy = v0.xy * v4.xy + v4.zw;
  r2.w = 0.300000012 * v7.w;
  r3.xy = t1.Sample(s5_s, r3.xy).xy;
  r3.xy = r3.xy * v7.zz + v0.xy;
  r3.xy = v7.zz * float2(-0.5,-0.5) + r3.xy;
  r3.x = t0.Sample(s5_s, r3.xy).x;
  r3.x = log2(r3.x);
  r3.x = 2.20000005 * r3.x;
  r3.x = exp2(r3.x);
  r3.y = t2.Sample(s5_s, v0.xy).x;
  r3.x = r3.x * r3.y;
  r3.yz = cb12[12].xy * r0.xy;
  r4.xy = (int2)r3.yz;
  r4.zw = float2(0,0);
  r3.y = t10.Load(r4.xyz).x;
  r3.y = r3.y * cb2[0].y + cb2[0].x;
  r3.y = 1 / r3.y;
  r3.y = -v0.w + r3.y;
  r2.w = saturate(r3.y / r2.w);
  r2.w = 1 + -r2.w;
  r3.x = saturate(w1.x * r3.x);
  r3.yzw = -cb3[0].xyz + r2.xyz;
  r3.yzw = abs(r3.yzw) / cb3[6].xyz;
  r4.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r3.yzw = r3.yzw / r4.xyz;
  r3.y = max(r3.y, r3.z);
  r3.y = max(r3.y, r3.w);
  r3.y = max(0.50999999, r3.y);
  r3.y = log2(r3.y);
  r3.y = floor(r3.y);
  r4.z = 1 + r3.y;
  r3.y = cmp(r4.z < cb3[8].x);
  r3.z = exp2(r4.z);
  r5.xyz = cb3[6].xyz * r3.zzz;
  r6.xyz = cb3[0].xyz / r5.xyz;
  r6.xyz = floor(r6.xyz);
  r2.xyz = -r6.xyz * r5.xyz + r2.xyz;
  r2.xyz = r2.xyz / cb3[6].xyz;
  r2.xyz = r2.xyz / cb3[3].xyz;
  r2.xyz = r2.xyz / r3.zzz;
  r4.xy = float2(0.5,0.5);
  r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + r4.xyz;
  r2.z = 0.5 + r2.z;
  r4.xy = cb3[2].xy * r2.xy;
  r4.w = r2.z * cb3[2].z + cb3[9].x;
  r2.xyz = float3(0.5,0.5,0.5) + r4.xyw;
  r2.xyz = r2.xyz / cb3[4].xyz;
  r4.xy = cb8[4].zw;
  r4.z = 0;
  r2.xyz = r3.yyy ? r2.xyz : r4.xyz;
  r5.xyzw = t16.SampleLevel(s2_s, r2.xyz, 0).xyzw;
  r6.xyzw = t17.SampleLevel(s2_s, r2.xyz, 0).xyzw;
  r7.xyzw = t18.SampleLevel(s2_s, r2.xyz, 0).xyzw;
  r0.w = cb3[15].x * r0.w;
  r0.w = saturate(r0.w * 1.5 + cb3[15].y);
  r3.y = cmp(r0.w < 1);
  if (r3.y != 0) {
    r8.xyzw = t16.SampleLevel(s2_s, r4.xyz, 0).xyzw;
    r9.xyzw = t17.SampleLevel(s2_s, r4.xyz, 0).xyzw;
    r4.xyzw = t18.SampleLevel(s2_s, r4.xyz, 0).xyzw;
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
  r3.yzw = max(float3(0,0,0), r4.xyz);
  r1.w = cb8[6].w * cb8[6].w;
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[105].x * r1.w;
  r1.w = exp2(r1.w);
  r2.x = t19.SampleLevel(s1_s, r2.xyz, 0).x;
  r2.x = -1 + r2.x;
  r0.w = r0.w * r2.x + 1;
  r1.x = saturate(dot(cb0[103].xyz, r1.xyz));
  r1.yzw = cb0[102].xyz * r1.www;
  r1.yzw = r1.yzw * r0.www;
  r1.xyz = r1.xxx * r1.yzw;
  r1.xyz = r1.xyz * float3(0.318309873,0.318309873,0.318309873) + r3.yzw;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r0.w = saturate(v0.z * r3.x);
  r1.xyz = cb8[7].xyz * r1.xyz;
  r1.w = dot(-v2.xyz, -v2.xyz);
  r1.w = sqrt(r1.w);
  r2.x = 0.015625 * r1.w;
  r2.x = min(1, r2.x);
  r0.z = sqrt(r2.x);
  r0.z = t21.SampleLevel(s4_s, r0.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s4_s, r0.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r0.zzzz * r3.xyzw + float4(0,0,0,1);
  r0.z = saturate(r1.w * cb0[109].x + cb0[109].y);
  r4.xyzw = t11.Sample(s3_s, r0.xy).xyzw;
  r5.xyzw = t13.Sample(s3_s, r0.xy).xyzw;
  r4.xyzw = -r5.xyzw + r4.xyzw;
  r4.xyzw = r0.zzzz * r4.xyzw + r5.xyzw;
  r0.xyz = cb8[5].xyz * r4.xyz;
  r0.xyz = r4.www * cb8[6].xyz + r0.xyz;
  r1.xyz = r3.www * r1.xyz;
  r1.xyz = r1.xyz * float3(0.568199992,0.568813026,0.570482016) + r3.xyz;
  r0.xyz = r0.xyz * cb13[1].xxx + r1.xyz;
  r1.x = 1 + -r2.w;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}