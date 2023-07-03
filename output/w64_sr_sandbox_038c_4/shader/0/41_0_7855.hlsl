// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:53 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

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
  float4 cb0[130];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v4.xy;
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v1.xyz * r0.www;
  r2.xyz = cb12[14].xyz + -v2.xyz;
  r0.w = dot(-cb12[6].xyz, -v2.xyz);
  r3.xy = float2(5,5) * r0.xy;
  r3.xy = t0.Sample(s1_s, r3.xy).xy;
  r3.xy = float2(-0.5,-0.5) + r3.xy;
  r3.xy = r3.xy * v3.yy + v0.xy;
  r3.xy = r3.xy * float2(-1.5,-1.5) + float2(1.25,1.25);
  r2.w = t1.Sample(s2_s, r3.xy).x;
  r3.x = t2.Sample(s2_s, r3.xy).x;
  r2.w = saturate(r2.w * cb0[101].x + r3.x);
  r2.w = cb0[102].x * r2.w;
  r2.w = saturate(v3.w * r2.w);
  r3.xyz = -cb3[0].xyz + r2.xyz;
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
  r2.xyz = -r5.xyz * r4.yzw + r2.xyz;
  r2.xyz = r2.xyz / cb3[6].xyz;
  r2.xyz = r2.xyz / cb3[3].xyz;
  r2.xyz = r2.xyz / r4.xxx;
  r3.xy = float2(0.5,0.5);
  r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + r3.xyz;
  r2.z = 0.5 + r2.z;
  r4.xy = cb3[2].xy * r2.xy;
  r4.w = r2.z * cb3[2].z + cb3[9].x;
  r2.xyz = float3(0.5,0.5,0.5) + r4.xyw;
  r2.xyz = r2.xyz / cb3[4].xyz;
  r3.xy = cb8[4].zw;
  r3.z = 0;
  r2.xyz = r3.www ? r2.xyz : r3.xyz;
  r4.xyzw = t16.SampleLevel(s4_s, r2.xyz, 0).xyzw;
  r5.xyzw = t17.SampleLevel(s4_s, r2.xyz, 0).xyzw;
  r6.xyzw = t18.SampleLevel(s4_s, r2.xyz, 0).xyzw;
  r0.w = cb3[15].x * r0.w;
  r0.w = saturate(r0.w * 1.5 + cb3[15].y);
  r3.w = cmp(r0.w < 1);
  if (r3.w != 0) {
    r7.xyzw = t16.SampleLevel(s4_s, r3.xyz, 0).xyzw;
    r8.xyzw = t17.SampleLevel(s4_s, r3.xyz, 0).xyzw;
    r3.xyzw = t18.SampleLevel(s4_s, r3.xyz, 0).xyzw;
    r9.xyzw = -r7.xyzw + r4.xyzw;
    r4.xyzw = r0.wwww * r9.xyzw + r7.xyzw;
    r7.xyzw = -r8.xyzw + r5.xyzw;
    r5.xyzw = r0.wwww * r7.xyzw + r8.xyzw;
    r7.xyzw = r6.xyzw + -r3.xyzw;
    r6.xyzw = r0.wwww * r7.xyzw + r3.xyzw;
  }
  r1.w = 1;
  r3.x = dot(r4.xyzw, r1.xyzw);
  r3.y = dot(r5.xyzw, r1.xyzw);
  r3.z = dot(r6.xyzw, r1.xyzw);
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r1.w = cb8[6].w * cb8[6].w;
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[125].x * r1.w;
  r1.w = exp2(r1.w);
  r2.x = t19.SampleLevel(s3_s, r2.xyz, 0).x;
  r2.x = -1 + r2.x;
  r0.w = r0.w * r2.x + 1;
  r1.x = saturate(dot(cb0[123].xyz, r1.xyz));
  r1.yzw = cb0[122].xyz * r1.www;
  r1.yzw = r1.yzw * r0.www;
  r1.xyz = r1.xxx * r1.yzw;
  r1.xyz = r1.xyz * float3(0.318309873,0.318309873,0.318309873) + r3.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r0.w = saturate(v0.z * r2.w);
  r1.xyz = cb8[7].xyz * r1.xyz;
  r1.w = dot(-v2.xyz, -v2.xyz);
  r1.w = sqrt(r1.w);
  r2.x = 0.015625 * r1.w;
  r2.x = min(1, r2.x);
  r0.z = sqrt(r2.x);
  r0.z = t21.SampleLevel(s6_s, r0.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s6_s, r0.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r0.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.z = saturate(r1.w * cb0[129].x + cb0[129].y);
  r3.xyzw = t11.Sample(s5_s, r0.xy).xyzw;
  r4.xyzw = t13.Sample(s5_s, r0.xy).xyzw;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r3.xyzw = r0.zzzz * r3.xyzw + r4.xyzw;
  r0.xyz = cb8[5].xyz * r3.xyz;
  r0.xyz = r3.www * cb8[6].xyz + r0.xyz;
  r1.xyz = r2.www * r1.xyz;
  r1.xyz = r1.xyz * float3(3.13999939,22.3549614,80) + r2.xyz;
  r0.xyz = r0.xyz * cb13[1].xxx + r1.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}