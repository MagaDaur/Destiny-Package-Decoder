// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:53 2023
Texture2D<float4> t10 : register(t10);

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
  float4 cb0[23];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.yzw = t3.Sample(s6_s, v3.xy).xyz;
  r1.x = r0.z + -r0.w;
  r1.x = cmp(r1.x < 0.00470588217);
  r0.w = r1.x ? r0.z : r0.w;
  r1.xyz = ddx_coarse(r0.yzw);
  r2.xyz = ddy_coarse(r0.yzw);
  r1.xy = r1.xx * r1.yz;
  r1.zw = r2.xx * r2.yz;
  r2.xy = cmp(abs(r1.zw) < abs(r1.xy));
  r1.xy = r2.xy ? r1.xy : r1.zw;
  r1.z = -0.5 + r0.y;
  r1.w = r0.y + r0.z;
  r1.w = -1 + r1.w;
  r1.zw = cmp(abs(r1.zw) < float2(0.00470588217,0.00588235306));
  r1.xy = cmp(r1.xy < float2(0,0));
  r1.x = r1.x ? r1.w : 0;
  r1.w = 1 + -r0.z;
  r1.x = r1.x ? r1.w : r0.y;
  r1.w = r1.x + r0.w;
  r1.w = -1 + r1.w;
  r1.w = cmp(abs(r1.w) < 0.00588235306);
  r1.y = r1.y ? r1.w : 0;
  r1.w = 1 + -r0.w;
  r1.x = r1.y ? r1.w : r1.x;
  r0.y = r1.z ? r1.x : r0.y;
  r0.w = cmp(r0.w >= 0.5);
  if (r0.w != 0) {
    r1.xy = v3.zw * cb7[7].xy + cb7[7].zw;
    r0.w = t9.Sample(s1_s, r1.xy).z;
    r0.w = saturate(cb7[8].z + r0.w);
    r1.x = 4;
  } else {
    r0.z = cmp(r0.z >= 0.5);
    if (r0.z != 0) {
      r1.yz = v3.zw * cb7[4].xy + cb7[4].zw;
      r0.z = t7.Sample(s1_s, r1.yz).z;
      r0.w = saturate(cb7[5].z + r0.z);
      r1.x = 2;
    } else {
      r1.yz = v3.zw * cb7[1].xy + cb7[1].zw;
      r0.z = t5.Sample(s1_s, r1.yz).z;
      r0.w = saturate(cb7[2].z + r0.z);
      r1.x = 0;
    }
  }
  r0.y = cmp(r0.y >= 0.5);
  r0.z = (int)r1.x + 1;
  r0.y = r0.y ? r0.z : r1.x;
  r0.z = (int)r0.y * 9;
  r1.xy = saturate(cb7[r0.z+11].yw);
  r1.zw = saturate(cb7[r0.z+12].yz);
  r2.x = saturate(cb7[r0.z+17].w);
  r2.yzw = t0.Sample(s3_s, v3.xy).xyz;
  r3.xy = t1.Sample(s4_s, v3.xy).xy;
  r3.xy = r3.xy * cb0[22].xx + cb0[22].yy;
  r4.xyzw = t2.Sample(s5_s, v3.xy).xyzw;
  r3.z = cmp(r4.w >= 0.156862751);
  r3.w = r3.z ? 1.000000 : 0;
  r5.xy = float2(-0.188235298,-0.156862751) + r4.wz;
  r5.xy = saturate(float2(1.231884,1.18604648) * r5.xy);
  r4.z = saturate(cb7[r0.z+15].y * r5.x + cb7[r0.z+15].x);
  r4.z = saturate(cb7[r0.z+15].w * r4.z + cb7[r0.z+15].z);
  r6.y = saturate(7.96875 * r4.w);
  r4.w = cb0[2].x + 128.5;
  r4.w = 0.00390625 * r4.w;
  r5.x = cmp(0.0500000007 >= r6.y);
  r4.w = r5.x ? r4.w : -1;
  r5.x = saturate(cb7[r0.z+13].y * r4.y + cb7[r0.z+13].x);
  r5.x = saturate(cb7[r0.z+13].w * r5.x + cb7[r0.z+13].z);
  r7.xyz = saturate(float3(4,4,4) * r2.yzw);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.yzw);
  r9.xyz = saturate(cb7[r0.z+9].xyz * r7.xyz + r8.xyz);
  r0.w = -1 + r0.w;
  r0.w = r1.x * r0.w;
  r7.xyz = saturate(cb7[r0.z+14].xyz * r7.xyz + r8.xyz);
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r4.zzz * r8.xyz + r7.xyz;
  r6.x = r4.y;
  r1.x = -r6.x + r5.x;
  r1.x = r4.z * r1.x + r4.y;
  r4.y = -r2.x + r1.y;
  r8.y = r4.z * r4.y + r2.x;
  r0.w = r4.z * r0.w + 1;
  r2.x = cb7[r0.z+12].x + 128.5;
  r2.x = 0.00390625 * r2.x;
  r1.y = cmp(0.0500000007 >= r1.y);
  r1.y = r1.y ? r2.x : -1;
  r0.w = min(r1.x, r0.w);
  r1.x = cmp(9.99999975e-005 < r1.z);
  r2.x = -2 * r1.z;
  r1.z = r1.z * -2 + -0.200000003;
  r1.z = r1.z * r0.w;
  r1.z = r1.z * -5.00250101 + r2.x;
  r1.z = min(r1.z, r0.w);
  r8.x = r1.x ? r1.z : r0.w;
  r5.xzw = r7.xyz + -r2.yzw;
  r2.xyz = r3.www * r5.xzw + r2.yzw;
  r1.xz = r4.zz * r3.xy + -r3.xy;
  r7.xy = r3.ww * r1.xz + r3.xy;
  r1.xz = r8.xy + -r6.xy;
  r1.xz = r3.ww * r1.xz + r6.xy;
  r0.w = r3.w * r1.w;
  o0.w = r3.z ? r1.y : r4.w;
  r1.y = cmp(0 != cb7[r0.z+10].w);
  r3.xyz = r1.yyy ? cb7[r0.z+10].xyz : 0;
  r0.z = cmp((int)r0.y == 5);
  r0.z = r0.z ? 1.000000 : 0;
  r0.y = r0.y ? 0 : cb0[15].x;
  r0.y = cb0[14].x * r0.z + r0.y;
  r0.y = r5.y * r0.y;
  r1.yw = v3.xy * cb0[16].xy + cb0[16].zw;
  r1.yw = r1.yw * cb0[19].xy + cb0[19].zw;
  r0.z = t10.Sample(s2_s, r1.yw).x;
  r0.z = 1 + -r0.z;
  r0.z = r0.z * cb0[20].x + cb0[20].y;
  r0.y = r0.y * r0.z;
  r0.y = cb0[21].x * r0.y;
  r0.y = 4.59479332 * r0.y;
  r3.xyz = r0.yyy * r3.xyz;
  r3.xyz = r3.xyz * r3.www;
  r5.xyz = r3.xyz * r4.zzz;
  r3.xyz = r3.xyz * r4.zzz + r2.xyz;
  r0.y = max(r3.x, r3.y);
  r0.y = max(r0.y, r3.z);
  r0.y = saturate(-1 + r0.y);
  r0.y = 1 + -r0.y;
  r2.xyz = r2.xyz * r0.yyy + r5.xyz;
  r0.y = max(r2.x, r2.y);
  r0.y = max(r0.y, r2.z);
  r0.y = max(1, r0.y);
  r2.xyz = r2.xyz / r0.yyy;
  r0.y = max(r5.x, r5.y);
  r0.y = max(r0.y, r5.z);
  r0.z = dot(r7.xy, r7.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r7.z = sqrt(r0.z);
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r7.xyz * r0.zzz;
  r4.yzw = v2.xyz * r3.yyy;
  r3.xyw = v1.xyz * r3.xxx + r4.yzw;
  r3.xyz = v0.xyz * r3.zzz + r3.xyw;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r0.z = saturate(cb0[12].x);
  r1.y = dot(v0.xyz, v0.xyz);
  r1.y = rsqrt(r1.y);
  r4.yzw = v0.xyz * r1.yyy;
  r1.y = dot(cb0[5].xyz, r4.yzw);
  r1.w = cb0[4].x + -cb0[3].x;
  r1.y = saturate(r1.y * r1.w + cb0[3].x);
  r1.w = -cb0[6].z + v4.z;
  r1.w = cb0[7].x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[8].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb0[9].x * r1.w);
  r1.y = r1.y * r1.w;
  r0.x = saturate(r0.x * cb0[10].x + cb0[10].y);
  r0.x = r1.y * r0.x;
  r1.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.y = max(9.99999975e-005, r1.y);
  r1.y = log2(r1.y);
  r1.y = -cb0[11].x * r1.y;
  r1.y = exp2(r1.y);
  r0.x = r1.y * r0.x;
  o2.w = v0.w + r0.z;
  r0.x = r0.x * cb0[13].x + r0.y;
  r0.y = r1.x * 0.125 + 0.375;
  o1.xyz = saturate(r3.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r4.x = saturate(r4.x);
  r0.x = r4.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xw;
  o0.xyz = r2.xyz;
  o1.w = 0;
  o2.x = r1.z;
  return;
}