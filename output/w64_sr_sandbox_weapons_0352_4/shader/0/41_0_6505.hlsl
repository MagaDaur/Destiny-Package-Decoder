// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:23 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t3 : register(t3);

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
  float4 cb0[117];
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
  float3 v7 : TEXCOORD7,
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
  r3.xy = v0.xy * v3.xy + v3.zw;
  r3.x = t0.Sample(s5_s, r3.xy).x;
  r3.zw = t3.Sample(s5_s, v0.xy).xy;
  r3.zw = r3.zw * v6.xx + v0.xy;
  r3.zw = v6.xx * float2(-0.800000012,-0.400000006) + r3.zw;
  r2.w = cb0[112].x * v6.z;
  r2.w = floor(r2.w);
  r4.xy = cb0[109].xy * r2.ww;
  r3.zw = r3.zw * cb0[108].xy + r4.xy;
  r2.w = t2.Sample(s5_s, r3.zw).x;
  r2.w = log2(r2.w);
  r2.w = 2.20000005 * r2.w;
  r3.z = 0.25 * v7.x;
  r4.xy = cb12[12].xy * r0.xy;
  r4.xy = (int2)r4.xy;
  r4.zw = float2(0,0);
  r3.w = t10.Load(r4.xyz).x;
  r3.w = r3.w * cb2[0].y + cb2[0].x;
  r3.w = 1 / r3.w;
  r3.w = -v0.w + r3.w;
  r3.z = saturate(r3.w / r3.z);
  r3.z = 1 + -r3.z;
  r3.y = v6.w + r3.z;
  r3.xyw = t1.Sample(s6_s, r3.xy).xyz;
  r3.xyw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r3.xyw;
  r3.xyw = float3(1.00000024,1.00000024,1.00000024) * r3.xyw;
  r3.xyw = max(float3(0,0,0), r3.xyw);
  r3.xyw = v4.xyz * r3.xyw;
  r3.xyw = float3(10,10,10) * r3.xyw;
  r4.x = 1 / cb0[116].x;
  r2.w = r4.x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(r2.w * v7.z + v7.y);
  r4.xyz = -cb3[0].xyz + r2.xyz;
  r4.xyz = abs(r4.xyz) / cb3[6].xyz;
  r5.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r4.xyz = r4.xyz / r5.xyz;
  r4.x = max(r4.x, r4.y);
  r4.x = max(r4.x, r4.z);
  r4.x = max(0.50999999, r4.x);
  r4.x = log2(r4.x);
  r4.x = floor(r4.x);
  r4.z = 1 + r4.x;
  r4.w = cmp(r4.z < cb3[8].x);
  r5.x = exp2(r4.z);
  r5.yzw = cb3[6].xyz * r5.xxx;
  r6.xyz = cb3[0].xyz / r5.yzw;
  r6.xyz = floor(r6.xyz);
  r2.xyz = -r6.xyz * r5.yzw + r2.xyz;
  r2.xyz = r2.xyz / cb3[6].xyz;
  r2.xyz = r2.xyz / cb3[3].xyz;
  r2.xyz = r2.xyz / r5.xxx;
  r4.xy = float2(0.5,0.5);
  r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + r4.xyz;
  r2.z = 0.5 + r2.z;
  r5.xy = cb3[2].xy * r2.xy;
  r5.w = r2.z * cb3[2].z + cb3[9].x;
  r2.xyz = float3(0.5,0.5,0.5) + r5.xyw;
  r2.xyz = r2.xyz / cb3[4].xyz;
  r4.xy = cb8[4].zw;
  r4.z = 0;
  r2.xyz = r4.www ? r2.xyz : r4.xyz;
  r5.xyzw = t16.SampleLevel(s2_s, r2.xyz, 0).xyzw;
  r6.xyzw = t17.SampleLevel(s2_s, r2.xyz, 0).xyzw;
  r7.xyzw = t18.SampleLevel(s2_s, r2.xyz, 0).xyzw;
  r0.w = cb3[15].x * r0.w;
  r0.w = saturate(r0.w * 1.5 + cb3[15].y);
  r4.w = cmp(r0.w < 1);
  if (r4.w != 0) {
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
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = cb8[6].w * cb8[6].w;
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[102].x * r1.w;
  r1.w = exp2(r1.w);
  r2.x = t19.SampleLevel(s1_s, r2.xyz, 0).x;
  r2.x = -1 + r2.x;
  r0.w = r0.w * r2.x + 1;
  r1.x = saturate(dot(cb0[100].xyz, r1.xyz));
  r1.yzw = cb0[99].xyz * r1.www;
  r1.yzw = r1.yzw * r0.www;
  r1.xyz = r1.xxx * r1.yzw;
  r1.xyz = r1.xyz * float3(0.318309873,0.318309873,0.318309873) + r4.xyz;
  r1.xyz = r3.xyw * r1.xyz;
  r0.w = saturate(v0.z * r2.w);
  r1.xyz = cb13[1].xxx * r1.xyz;
  r1.w = dot(-v2.xyz, -v2.xyz);
  r1.w = sqrt(r1.w);
  r2.x = 0.015625 * r1.w;
  r2.x = min(1, r2.x);
  r0.z = sqrt(r2.x);
  r0.z = t21.SampleLevel(s4_s, r0.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s4_s, r0.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r0.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.z = saturate(r1.w * cb0[106].x + cb0[106].y);
  r4.xyzw = t11.Sample(s3_s, r0.xy).xyzw;
  r5.xyzw = t13.Sample(s3_s, r0.xy).xyzw;
  r4.xyzw = -r5.xyzw + r4.xyzw;
  r4.xyzw = r0.zzzz * r4.xyzw + r5.xyzw;
  r0.xyz = cb8[5].xyz * r4.xyz;
  r0.xyz = r4.www * cb8[6].xyz + r0.xyz;
  r1.xyz = cb8[7].xyz * r1.xyz;
  r1.xyz = r1.xyz * r2.www + r2.xyz;
  r0.xyz = r0.xyz * cb13[1].xxx + r1.xyz;
  r1.x = 1 + -r3.z;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}