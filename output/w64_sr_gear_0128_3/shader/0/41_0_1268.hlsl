// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.yzw = t3.Sample(s5_s, v3.xy).xyz;
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
  r0.y = (int)r0.y * 9;
  r1.xy = saturate(cb7[r0.y+11].yw);
  r1.zw = saturate(cb7[r0.y+12].yz);
  r0.z = saturate(cb7[r0.y+17].w);
  r2.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r3.xy = t1.Sample(s3_s, v3.xy).xy;
  r3.xy = r3.xy * cb0[15].xx + cb0[15].yy;
  r4.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r2.w = cmp(r4.w >= 0.156862751);
  r3.z = r2.w ? 1.000000 : 0;
  r5.xy = float2(-0.188235298,-0.156862751) + r4.wz;
  r5.xy = saturate(float2(1.231884,1.18604648) * r5.xy);
  r3.w = saturate(cb7[r0.y+15].y * r5.x + cb7[r0.y+15].x);
  r3.w = saturate(cb7[r0.y+15].w * r3.w + cb7[r0.y+15].z);
  r6.y = saturate(7.96875 * r4.w);
  r4.z = cb0[2].x + 128.5;
  r4.z = 0.00390625 * r4.z;
  r4.w = cmp(0.0500000007 >= r6.y);
  r4.z = r4.w ? r4.z : -1;
  r4.w = saturate(cb7[r0.y+13].y * r4.y + cb7[r0.y+13].x);
  r4.w = saturate(cb7[r0.y+13].w * r4.w + cb7[r0.y+13].z);
  r5.xzw = saturate(float3(4,4,4) * r2.xyz);
  r7.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.xyz);
  r8.xyz = saturate(cb7[r0.y+9].xyz * r5.xzw + r7.xyz);
  r0.w = -1 + r0.w;
  r0.w = r1.x * r0.w;
  r5.xzw = saturate(cb7[r0.y+14].xyz * r5.xzw + r7.xyz);
  r7.xyz = r8.xyz + -r5.xzw;
  r5.xzw = r3.www * r7.xyz + r5.xzw;
  r6.x = r4.y;
  r1.x = -r6.x + r4.w;
  r1.x = r3.w * r1.x + r4.y;
  r4.y = r1.y + -r0.z;
  r7.y = r3.w * r4.y + r0.z;
  r0.z = r3.w * r0.w + 1;
  r0.w = cb7[r0.y+12].x + 128.5;
  r0.w = 0.00390625 * r0.w;
  r1.y = cmp(0.0500000007 >= r1.y);
  r0.w = r1.y ? r0.w : -1;
  r0.z = min(r1.x, r0.z);
  r1.x = cmp(9.99999975e-005 < r1.z);
  r1.y = -2 * r1.z;
  r1.z = r1.z * -2 + -0.200000003;
  r1.z = r1.z * r0.z;
  r1.y = r1.z * -5.00250101 + r1.y;
  r1.y = min(r1.y, r0.z);
  r7.x = r1.x ? r1.y : r0.z;
  r1.xyz = r5.xzw + -r2.xyz;
  r1.xyz = r3.zzz * r1.xyz + r2.xyz;
  r2.xy = r3.ww * r3.xy + -r3.xy;
  r2.xy = r3.zz * r2.xy + r3.xy;
  r3.xy = r7.xy + -r6.xy;
  r3.xy = r3.zz * r3.xy + r6.xy;
  r0.z = r3.z * r1.w;
  o0.w = r2.w ? r0.w : r4.z;
  r0.w = cmp(0 != cb7[r0.y+10].w);
  r4.yzw = r0.www ? cb7[r0.y+10].xyz : 0;
  r0.y = cb0[14].x * r5.y;
  r4.yzw = r0.yyy * r4.yzw;
  r4.yzw = r4.yzw * r3.zzz;
  r5.xyz = r4.yzw * r3.www;
  r4.yzw = r4.yzw * r3.www + r1.xyz;
  r0.y = max(r4.y, r4.z);
  r0.y = max(r0.y, r4.w);
  r0.y = saturate(-1 + r0.y);
  r0.y = 1 + -r0.y;
  r1.xyz = r1.xyz * r0.yyy + r5.xyz;
  r0.y = max(r1.x, r1.y);
  r0.y = max(r0.y, r1.z);
  r0.y = max(1, r0.y);
  r1.xyz = r1.xyz / r0.yyy;
  r0.y = max(r5.x, r5.y);
  r0.y = max(r0.y, r5.z);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r4.yzw = v2.xyz * r2.yyy;
  r2.xyw = v1.xyz * r2.xxx + r4.yzw;
  r2.xyz = v0.xyz * r2.zzz + r2.xyw;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = saturate(cb0[12].x);
  r1.w = dot(v0.xyz, v0.xyz);
  r1.w = rsqrt(r1.w);
  r4.yzw = v0.xyz * r1.www;
  r1.w = dot(cb0[5].xyz, r4.yzw);
  r2.w = cb0[4].x + -cb0[3].x;
  r1.w = saturate(r1.w * r2.w + cb0[3].x);
  r2.w = -cb0[6].z + v4.z;
  r2.w = cb0[7].x * r2.w;
  r2.w = max(0, r2.w);
  r2.w = log2(r2.w);
  r2.w = cb0[8].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb0[9].x * r2.w);
  r1.w = r2.w * r1.w;
  r0.x = saturate(r0.x * cb0[10].x + cb0[10].y);
  r0.x = r1.w * r0.x;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = -cb0[11].x * r1.w;
  r1.w = exp2(r1.w);
  r0.x = r1.w * r0.x;
  o2.w = v0.w + r0.w;
  r0.x = r0.x * cb0[13].x + r0.y;
  r0.y = r3.x * 0.125 + 0.375;
  o1.xyz = saturate(r2.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r4.x = saturate(r4.x);
  r0.x = r4.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xz;
  o0.xyz = r1.xyz;
  o1.w = 0;
  o2.x = r3.y;
  return;
}