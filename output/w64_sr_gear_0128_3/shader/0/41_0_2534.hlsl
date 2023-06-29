// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:50 2023
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
  float4 cb0[66];
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
  r4.xyzw = t0.Sample(s3_s, v3.xy).xyzw;
  r3.y = t2.Sample(s4_s, v3.xy).w;
  r5.x = cmp(r3.y >= 0.156862751);
  r5.x = r5.x ? 1.000000 : 0;
  r3.y = -0.188235298 + r3.y;
  r3.y = saturate(1.231884 * r3.y);
  r3.y = saturate(cb7[r0.w+15].y * r3.y + cb7[r0.w+15].x);
  r3.y = saturate(cb7[r0.w+15].w * r3.y + cb7[r0.w+15].z);
  r5.yzw = saturate(float3(4,4,4) * r3.xzw);
  r3.xzw = saturate(float3(-0.25,-0.25,-0.25) + r3.xzw);
  r6.xyz = saturate(cb7[r0.w+9].xyz * r5.yzw + r3.xzw);
  r6.xyz = -cb7[r0.w+9].xyz + r6.xyz;
  r6.xyz = r1.www * r6.xyz + cb7[r0.w+9].xyz;
  r7.xyz = saturate(float3(4,4,4) * r4.xyz);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
  r6.xyz = saturate(r6.xyz * r7.xyz + r8.xyz);
  r3.xzw = saturate(cb7[r0.w+14].xyz * r5.yzw + r3.xzw);
  r3.xzw = -cb7[r0.w+14].xyz + r3.xzw;
  r3.xzw = r2.www * r3.xzw + cb7[r0.w+14].xyz;
  r3.xzw = saturate(r3.xzw * r7.xyz + r8.xyz);
  r5.yzw = r6.xyz + -r3.xzw;
  r3.xyz = r3.yyy * r5.yzw + r3.xzw;
  r3.xyz = r3.xyz + -r4.xyz;
  r3.xyz = r5.xxx * r3.xyz + r4.xyz;
  r1.w = dot(r2.xyz, v0.xyz);
  r1.w = r1.w * r1.w;
  r2.x = saturate(r1.w * cb0[19].x + cb0[19].y);
  r2.y = saturate(r1.w * cb0[20].x + cb0[20].y);
  r2.x = r2.x + r2.y;
  r1.w = saturate(r1.w * cb0[21].x + cb0[21].y);
  r1.w = r1.w * cb0[22].x + r2.x;
  r1.w = saturate(cb0[23].x + r1.w);
  r2.xyzw = cb0[25].xyzw * r1.wwww + cb0[24].xyzw;
  r4.xyzw = max(cb0[26].xxxx, r4.xyzw);
  r4.xyzw = min(cb0[27].xxxx, r4.xyzw);
  r4.xyzw = r4.xyzw * r4.xyzw;
  r2.xyzw = r4.xyzw * r2.xyzw;
  r2.xyzw = cb0[28].xyzw * r2.xyzw;
  r2.xyzw = float4(4.59479332,4.59479332,4.59479332,4.59479332) * r2.xyzw;
  r1.w = dot(cb0[29].xy, v3.xy);
  r4.x = cb0[29].z + r1.w;
  r1.w = dot(cb0[30].xy, v3.xy);
  r4.y = cb0[30].z + r1.w;
  r4.zw = r4.xy * cb0[31].xy + cb0[31].zw;
  r1.w = t26.Sample(s2_s, r4.zw).x;
  r1.w = saturate(r1.w * cb0[32].x + cb0[32].y);
  r1.w = cb0[35].y * r1.w + cb0[35].x;
  r1.w = max(cb0[33].x, r1.w);
  r1.w = min(cb0[34].x, r1.w);
  r4.xy = r4.xy * cb0[36].xy + cb0[36].zw;
  r3.w = t26.Sample(s2_s, r4.xy).x;
  r3.w = saturate(r3.w * cb0[37].x + cb0[37].y);
  r3.w = cb0[40].y * r3.w + cb0[40].x;
  r3.w = max(cb0[38].x, r3.w);
  r3.w = min(cb0[39].x, r3.w);
  r4.x = dot(cb0[41].xy, v3.xy);
  r4.x = cb0[41].z + r4.x;
  r4.z = dot(cb0[42].xy, v3.xy);
  r4.y = cb0[42].z + r4.z;
  r4.xy = r4.xy * cb0[43].xy + cb0[43].zw;
  r4.x = t27.Sample(s2_s, r4.xy).x;
  r4.x = saturate(r4.x * cb0[44].x + cb0[44].y);
  r4.x = cb0[47].y * r4.x + cb0[47].x;
  r4.x = max(cb0[45].x, r4.x);
  r4.x = min(cb0[46].x, r4.x);
  r3.w = r4.x * r3.w;
  r1.w = r1.w * cb0[48].x + r3.w;
  r3.w = dot(cb0[49].xy, v3.xy);
  r4.x = cb0[49].z + r3.w;
  r3.w = dot(cb0[50].xy, v3.xy);
  r4.y = cb0[50].z + r3.w;
  r4.xy = r4.xy * cb0[51].xy + cb0[51].zw;
  r3.w = t27.Sample(s2_s, r4.xy).x;
  r3.w = saturate(r3.w * cb0[52].x + cb0[52].y);
  r3.w = cb0[55].y * r3.w + cb0[55].x;
  r3.w = max(cb0[53].x, r3.w);
  r3.w = min(cb0[54].x, r3.w);
  r4.xyzw = r1.wwww * r3.wwww + cb0[56].xyzw;
  r1.w = dot(cb0[57].xy, v3.xy);
  r6.x = cb0[57].z + r1.w;
  r1.w = dot(cb0[58].xy, v3.xy);
  r6.y = cb0[58].z + r1.w;
  r5.yz = t28.Sample(s2_s, r6.xy).xy;
  r5.yz = -cb0[60].xy + r5.yz;
  r5.yz = r5.yz * cb0[59].xx + v3.xy;
  r5.yz = r5.yz * cb0[61].xy + cb0[61].zw;
  r6.xyz = t29.Sample(s2_s, r5.yz).xyz;
  r6.w = 1;
  r6.xyzw = r6.xyzw * cb0[62].xxxx + cb0[62].yyyy;
  r4.xyzw = r6.xyzw * r4.xyzw;
  r2.xyzw = r4.xyzw * r2.xyzw;
  r2.xyzw = max(cb0[63].xxxx, r2.xyzw);
  r2.xyzw = min(cb0[64].xxxx, r2.xyzw);
  r2.xyzw = cb0[65].xyzw * r2.xyzw;
  r4.xyzw = cb0[18].xxxx * r2.xyzw;
  r5.yzw = saturate(float3(4,4,4) * r3.xyz);
  r3.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r3.xyz = cb7[r0.w+9].xyz * r5.yzw + r3.xyz;
  r2.xyz = -cb0[18].xxx * r2.xyz + r3.xyz;
  r2.xyz = r5.xxx * r2.xyz + r4.xyz;
  r0.w = -cb0[18].x * r2.w + 1;
  r0.w = r5.x * r0.w + r4.w;
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