// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:42 2023
Texture2D<float4> t29 : register(t29);

Texture2D<float4> t28 : register(t28);

Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[63];
}

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
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
  float4 cb0[32];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD8,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v6.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xyz = t3.Sample(s5_s, v3.xy).xyz;
  r0.w = r3.y + -r3.z;
  r0.w = cmp(r0.w < 0.00470588217);
  r0.w = r0.w ? r3.y : r3.z;
  r4.xy = ddx_coarse(r3.xy);
  r4.z = ddx_coarse(r0.w);
  r5.xy = ddy_coarse(r3.xy);
  r5.z = ddy_coarse(r0.w);
  r3.zw = r4.xx * r4.yz;
  r4.xy = r5.xx * r5.yz;
  r4.zw = cmp(abs(r4.xy) < abs(r3.zw));
  r3.zw = r4.zw ? r3.zw : r4.xy;
  r1.w = -0.5 + r3.x;
  r1.w = cmp(abs(r1.w) < 0.00470588217);
  r2.w = r3.x + r3.y;
  r2.w = -1 + r2.w;
  r2.w = cmp(abs(r2.w) < 0.00588235306);
  r3.zw = cmp(r3.zw < float2(0,0));
  r2.w = r2.w ? r3.z : 0;
  r3.z = 1 + -r3.y;
  r2.w = r2.w ? r3.z : r3.x;
  r3.z = r2.w + r0.w;
  r3.z = -1 + r3.z;
  r3.z = cmp(abs(r3.z) < 0.00588235306);
  r3.z = r3.w ? r3.z : 0;
  r3.w = 1 + -r0.w;
  r2.w = r3.z ? r3.w : r2.w;
  r1.w = r1.w ? r2.w : r3.x;
  r0.w = cmp(r0.w >= 0.5);
  if (r0.w != 0) {
    r3.xz = v3.zw * cb7[6].xy + cb7[6].zw;
    r3.xzw = t8.Sample(s1_s, r3.xz).xyz;
    r0.w = 4;
  } else {
    r2.w = cmp(r3.y >= 0.5);
    if (r2.w != 0) {
      r4.xy = v3.zw * cb7[3].xy + cb7[3].zw;
      r3.xzw = t6.Sample(s1_s, r4.xy).xyz;
      r0.w = 2;
    } else {
      r4.xy = v3.zw * cb7[0].xy + cb7[0].zw;
      r3.xzw = t4.Sample(s1_s, r4.xy).xyz;
      r0.w = 0;
    }
  }
  r1.w = cmp(r1.w >= 0.5);
  r2.w = (int)r0.w + 1;
  r0.w = r1.w ? r2.w : r0.w;
  r0.w = (int)r0.w * 9;
  r1.w = saturate(cb7[r0.w+11].x);
  r2.w = saturate(cb7[r0.w+17].x);
  r4.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r3.y = t2.Sample(s4_s, v3.xy).w;
  r4.w = cmp(r3.y >= 0.156862751);
  r4.w = r4.w ? 1.000000 : 0;
  r3.y = -0.188235298 + r3.y;
  r3.y = saturate(1.231884 * r3.y);
  r3.y = saturate(cb7[r0.w+15].y * r3.y + cb7[r0.w+15].x);
  r3.y = saturate(cb7[r0.w+15].w * r3.y + cb7[r0.w+15].z);
  r5.xyz = saturate(float3(4,4,4) * r3.xzw);
  r3.xzw = saturate(float3(-0.25,-0.25,-0.25) + r3.xzw);
  r6.xyz = saturate(cb7[r0.w+9].xyz * r5.xyz + r3.xzw);
  r6.xyz = -cb7[r0.w+9].xyz + r6.xyz;
  r6.xyz = r1.www * r6.xyz + cb7[r0.w+9].xyz;
  r7.xyz = saturate(float3(4,4,4) * r4.xyz);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
  r6.xyz = saturate(r6.xyz * r7.xyz + r8.xyz);
  r3.xzw = saturate(cb7[r0.w+14].xyz * r5.xyz + r3.xzw);
  r3.xzw = -cb7[r0.w+14].xyz + r3.xzw;
  r3.xzw = r2.www * r3.xzw + cb7[r0.w+14].xyz;
  r3.xzw = saturate(r3.xzw * r7.xyz + r8.xyz);
  r5.xyz = r6.xyz + -r3.xzw;
  r3.xyz = r3.yyy * r5.xyz + r3.xzw;
  r3.xyz = r3.xyz + -r4.xyz;
  r3.xyz = r4.www * r3.xyz + r4.xyz;
  r1.w = dot(r2.xyz, v0.xyz);
  r2.xy = v3.xy * cb0[6].xy + cb0[6].zw;
  r2.x = t26.Sample(s2_s, r2.xy).x;
  r2.yz = v3.xy * cb0[7].xy + cb0[7].zw;
  r2.y = t27.Sample(s2_s, r2.yz).x;
  r2.y = r2.y * cb0[8].x + cb0[8].y;
  r2.zw = v3.xy * cb0[9].xy + cb0[9].zw;
  r2.z = t28.Sample(s2_s, r2.zw).x;
  r2.z = r2.z * cb0[10].x + cb0[10].y;
  r2.x = r2.y * r2.z + r2.x;
  r2.x = saturate(r2.x * cb0[11].x + cb0[11].y);
  r1.w = r1.w * r1.w;
  r1.w = saturate(r1.w * cb0[21].x + cb0[21].y);
  r1.w = r2.x * r1.w;
  r2.xyzw = cb0[23].xyzw * r1.wwww + cb0[22].xyzw;
  r1.w = saturate(v5.x * cb0[24].x + cb0[24].y);
  r5.xyzw = cb0[26].xyzw * r1.wwww + cb0[25].xyzw;
  r1.w = 1 + -v5.x;
  r4.xy = v3.xy * cb0[27].xy + cb0[27].zw;
  r3.w = t29.Sample(s2_s, r4.xy).x;
  r3.w = saturate(r3.w * cb0[28].x + cb0[28].y);
  r1.w = r3.w * r1.w;
  r6.xyzw = cb0[29].xyzw * r1.wwww;
  r2.xyzw = r2.xyzw * r5.xyzw + r6.xyzw;
  r1.w = cb0[1].x * cb0[0].x;
  r2.xyzw = r2.xyzw * r1.wwww;
  r4.xy = v3.xy * cb0[30].xy + cb0[30].zw;
  r1.w = t28.Sample(s2_s, r4.xy).x;
  r1.w = r1.w * cb0[31].x + cb0[31].y;
  r5.xyzw = r2.xyzw * r1.wwww;
  r4.xyz = saturate(float3(4,4,4) * r3.xyz);
  r3.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r3.xyz = cb7[r0.w+9].xyz * r4.xyz + r3.xyz;
  r2.xyz = -r2.xyz * r1.www + r3.xyz;
  r2.xyz = r4.www * r2.xyz + r5.xyz;
  r0.w = -r2.w * r1.w + 1;
  r0.w = r4.w * r0.w + r5.w;
  r2.xyz = cb13[1].www * r2.xyz;
  r2.xyz = cb13[1].xxx * r2.xyz;
  r1.x = dot(-r1.xyz, -r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r0.z = sqrt(r1.x);
  r0.z = t21.SampleLevel(s6_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s6_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r1.xyz = cb8[7].xyz * r2.xyz;
  r0.x = r0.w * r0.x;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}