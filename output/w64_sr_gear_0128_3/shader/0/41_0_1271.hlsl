// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
TextureCube<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t5 : register(t5);

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

cbuffer cb7 : register(b7)
{
  float4 cb7[63];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, v0.xyz);
  r0.w = r0.w + r0.w;
  r0.xyz = v0.xyz * r0.www + -r0.xyz;
  r1.xyz = t3.Sample(s6_s, v3.xy).xyz;
  r0.w = r1.y + -r1.z;
  r0.w = cmp(r0.w < 0.00470588217);
  r0.w = r0.w ? r1.y : r1.z;
  r2.xy = ddx_coarse(r1.xy);
  r2.z = ddx_coarse(r0.w);
  r3.xy = ddy_coarse(r1.xy);
  r3.z = ddy_coarse(r0.w);
  r1.zw = r2.xx * r2.yz;
  r2.xy = r3.xx * r3.yz;
  r2.zw = cmp(abs(r2.xy) < abs(r1.zw));
  r1.zw = r2.zw ? r1.zw : r2.xy;
  r2.x = -0.5 + r1.x;
  r2.y = r1.x + r1.y;
  r2.y = -1 + r2.y;
  r2.xy = cmp(abs(r2.xy) < float2(0.00470588217,0.00588235306));
  r1.zw = cmp(r1.zw < float2(0,0));
  r1.z = r1.z ? r2.y : 0;
  r2.y = 1 + -r1.y;
  r1.z = r1.z ? r2.y : r1.x;
  r2.y = r1.z + r0.w;
  r2.y = -1 + r2.y;
  r2.y = cmp(abs(r2.y) < 0.00588235306);
  r1.w = r1.w ? r2.y : 0;
  r2.y = 1 + -r0.w;
  r1.z = r1.w ? r2.y : r1.z;
  r1.x = r2.x ? r1.z : r1.x;
  r0.w = cmp(r0.w >= 0.5);
  if (r0.w != 0) {
    r1.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r0.w = t9.Sample(s1_s, r1.zw).z;
    r0.w = saturate(cb7[8].z + r0.w);
    r1.z = 4;
  } else {
    r1.y = cmp(r1.y >= 0.5);
    if (r1.y != 0) {
      r1.yw = v3.zw * cb7[4].xy + cb7[4].zw;
      r1.y = t7.Sample(s1_s, r1.yw).z;
      r0.w = saturate(cb7[5].z + r1.y);
      r1.z = 2;
    } else {
      r1.yw = v3.zw * cb7[1].xy + cb7[1].zw;
      r1.y = t5.Sample(s1_s, r1.yw).z;
      r0.w = saturate(cb7[2].z + r1.y);
      r1.z = 0;
    }
  }
  r1.x = cmp(r1.x >= 0.5);
  r1.y = (int)r1.z + 1;
  r1.x = r1.x ? r1.y : r1.z;
  r1.x = (int)r1.x * 9;
  r1.yz = saturate(cb7[r1.x+11].yw);
  r2.xy = saturate(cb7[r1.x+12].yz);
  r1.w = saturate(cb7[r1.x+17].w);
  r3.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r2.zw = t1.Sample(s4_s, v3.xy).xy;
  r2.zw = r2.zw * cb0[11].xx + cb0[11].yy;
  r4.xyz = t2.Sample(s5_s, v3.xy).xyw;
  r3.w = cmp(r4.z >= 0.156862751);
  r4.w = r3.w ? 1.000000 : 0;
  r5.x = -0.188235298 + r4.z;
  r5.x = saturate(1.231884 * r5.x);
  r5.x = saturate(cb7[r1.x+15].y * r5.x + cb7[r1.x+15].x);
  r5.x = saturate(cb7[r1.x+15].w * r5.x + cb7[r1.x+15].z);
  r6.y = saturate(7.96875 * r4.z);
  r4.z = cb0[2].x + 128.5;
  r4.z = 0.00390625 * r4.z;
  r5.y = cmp(0.0500000007 >= r6.y);
  r4.z = r5.y ? r4.z : -1;
  r5.y = saturate(cb7[r1.x+13].y * r4.y + cb7[r1.x+13].x);
  r5.y = saturate(cb7[r1.x+13].w * r5.y + cb7[r1.x+13].z);
  r7.xyz = saturate(float3(4,4,4) * r3.xyz);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r9.xyz = saturate(cb7[r1.x+9].xyz * r7.xyz + r8.xyz);
  r0.w = -1 + r0.w;
  r0.w = r1.y * r0.w;
  r7.xyz = saturate(cb7[r1.x+14].xyz * r7.xyz + r8.xyz);
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r5.xxx * r8.xyz + r7.xyz;
  r6.x = r4.y;
  r1.y = -r6.x + r5.y;
  r7.w = r5.x * r1.y + r4.y;
  r1.y = r1.z + -r1.w;
  r8.y = r5.x * r1.y + r1.w;
  r0.w = r5.x * r0.w + 1;
  r1.y = t10.CalculateLevelOfDetail(s2_s, r0.xyz);
  r1.y = max(cb0[7].x, r1.y);
  r0.xyz = t10.SampleLevel(s2_s, r0.xyz, r1.y).xyz;
  r0.x = dot(r0.xyz, cb0[8].xyz);
  r0.x = r0.x * cb0[9].x + cb0[9].y;
  r9.xyz = cb0[10].xxx * r0.xxx;
  r9.w = cb0[10].x * cb0[10].x;
  r10.xyzw = saturate(float4(4,4,4,4) * r7.xyzw);
  r7.xyzw = saturate(float4(-0.25,-0.25,-0.25,-0.25) + r7.xyzw);
  r7.xyzw = r9.xyzw * r10.xyzw + r7.xyzw;
  r0.x = cb7[r1.x+12].x + 128.5;
  r0.x = 0.00390625 * r0.x;
  r0.y = cmp(0.0500000007 >= r1.z);
  r0.x = r0.y ? r0.x : -1;
  r0.y = min(r7.w, r0.w);
  r0.z = cmp(9.99999975e-005 < r2.x);
  r0.w = -2 * r2.x;
  r1.x = r2.x * -2 + -0.200000003;
  r1.x = r1.x * r0.y;
  r0.w = r1.x * -5.00250101 + r0.w;
  r0.w = min(r0.y, r0.w);
  r8.x = r0.z ? r0.w : r0.y;
  r0.yzw = r7.xyz + -r3.xyz;
  o0.xyz = r4.www * r0.yzw + r3.xyz;
  r0.yz = r5.xx * r2.zw + -r2.zw;
  r1.xy = r4.ww * r0.yz + r2.zw;
  r0.yz = r8.xy + -r6.xy;
  r0.yz = r4.ww * r0.yz + r6.xy;
  r0.w = r4.w * r2.y;
  o0.w = r3.w ? r0.x : r4.z;
  r0.x = dot(r1.xy, r1.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r1.z = sqrt(r0.x);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r1.xyz = r1.xyz * r0.xxx;
  r2.xyz = v2.xyz * r1.yyy;
  r1.xyw = v1.xyz * r1.xxx + r2.xyz;
  r1.xyz = v0.xyz * r1.zzz + r1.xyw;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r1.xyz = r1.xyz * r0.xxx;
  r0.x = r0.y * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.xxx + float3(0.5,0.5,0.5));
  r4.x = saturate(r4.x);
  o2.y = 0.5 * r4.x;
  o2.z = 0.800000012 * r0.w;
  o1.w = 0;
  o2.x = r0.z;
  o2.w = v0.w;
  return;
}