// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:33 2023
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
  float4 cb0[24];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r0.x = dot(r0.xyz, v0.xyz);
  r1.xyz = t3.Sample(s5_s, v3.xy).xyz;
  r0.y = r1.y + -r1.z;
  r0.y = cmp(r0.y < 0.00470588217);
  r0.y = r0.y ? r1.y : r1.z;
  r2.xy = ddx_coarse(r1.xy);
  r2.z = ddx_coarse(r0.y);
  r3.xy = ddy_coarse(r1.xy);
  r3.z = ddy_coarse(r0.y);
  r1.zw = r2.xx * r2.yz;
  r2.xy = r3.xx * r3.yz;
  r2.zw = cmp(abs(r2.xy) < abs(r1.zw));
  r1.zw = r2.zw ? r1.zw : r2.xy;
  r0.z = -0.5 + r1.x;
  r0.z = cmp(abs(r0.z) < 0.00470588217);
  r2.x = r1.x + r1.y;
  r2.x = -1 + r2.x;
  r2.x = cmp(abs(r2.x) < 0.00588235306);
  r1.zw = cmp(r1.zw < float2(0,0));
  r1.z = r1.z ? r2.x : 0;
  r2.x = 1 + -r1.y;
  r1.z = r1.z ? r2.x : r1.x;
  r2.x = r1.z + r0.y;
  r2.x = -1 + r2.x;
  r2.x = cmp(abs(r2.x) < 0.00588235306);
  r1.w = r1.w ? r2.x : 0;
  r2.x = 1 + -r0.y;
  r1.z = r1.w ? r2.x : r1.z;
  r0.z = r0.z ? r1.z : r1.x;
  r0.y = cmp(r0.y >= 0.5);
  if (r0.y != 0) {
    r1.xz = v3.zw * cb7[7].xy + cb7[7].zw;
    r0.y = t9.Sample(s1_s, r1.xz).z;
    r0.y = saturate(cb7[8].z + r0.y);
    r1.x = 4;
  } else {
    r1.y = cmp(r1.y >= 0.5);
    if (r1.y != 0) {
      r1.yz = v3.zw * cb7[4].xy + cb7[4].zw;
      r1.y = t7.Sample(s1_s, r1.yz).z;
      r0.y = saturate(cb7[5].z + r1.y);
      r1.x = 2;
    } else {
      r1.yz = v3.zw * cb7[1].xy + cb7[1].zw;
      r1.y = t5.Sample(s1_s, r1.yz).z;
      r0.y = saturate(cb7[2].z + r1.y);
      r1.x = 0;
    }
  }
  r0.z = cmp(r0.z >= 0.5);
  r1.y = (int)r1.x + 1;
  r0.z = r0.z ? r1.y : r1.x;
  r0.z = (int)r0.z * 9;
  r1.xy = saturate(cb7[r0.z+11].yw);
  r1.zw = saturate(cb7[r0.z+12].yz);
  r2.x = saturate(cb7[r0.z+17].w);
  r2.yzw = t0.Sample(s2_s, v3.xy).xyz;
  r3.xy = t1.Sample(s3_s, v3.xy).xy;
  r3.xy = r3.xy * cb0[23].xx + cb0[23].yy;
  r4.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r3.z = cmp(r4.w >= 0.156862751);
  r3.w = r3.z ? 1.000000 : 0;
  r5.xy = float2(-0.188235298,-0.156862751) + r4.wz;
  r5.xy = saturate(float2(1.231884,1.18604648) * r5.xy);
  r6.xy = saturate(float2(7.96875,7.96875) * r4.zw);
  r4.z = saturate(cb7[r0.z+15].y * r5.x + cb7[r0.z+15].x);
  r4.z = saturate(cb7[r0.z+15].w * r4.z + cb7[r0.z+15].z);
  r4.w = cb0[7].x + 128.5;
  r4.w = 0.00390625 * r4.w;
  r5.x = cmp(0.0500000007 >= r6.y);
  r4.w = r5.x ? r4.w : -1;
  r5.x = saturate(cb7[r0.z+13].y * r4.y + cb7[r0.z+13].x);
  r5.x = saturate(cb7[r0.z+13].w * r5.x + cb7[r0.z+13].z);
  r7.xyz = saturate(float3(4,4,4) * r2.yzw);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.yzw);
  r9.xyz = saturate(cb7[r0.z+9].xyz * r7.xyz + r8.xyz);
  r0.y = -1 + r0.y;
  r0.y = r1.x * r0.y;
  r7.xyz = saturate(cb7[r0.z+14].xyz * r7.xyz + r8.xyz);
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r4.zzz * r8.xyz + r7.xyz;
  r6.z = r4.y;
  r1.x = -r6.z + r5.x;
  r7.w = r4.z * r1.x + r4.y;
  r1.x = -r2.x + r1.y;
  r8.y = r4.z * r1.x + r2.x;
  r0.y = r4.z * r0.y + 1;
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[22].x + cb0[22].y);
  r9.xyzw = saturate(float4(4,4,4,4) * r7.xyzw);
  r7.xyzw = saturate(float4(-0.25,-0.25,-0.25,-0.25) + r7.xyzw);
  r7.xyzw = r0.xxxx * r9.xyzw + r7.xyzw;
  r0.x = cb7[r0.z+12].x + 128.5;
  r0.x = 0.00390625 * r0.x;
  r1.x = cmp(0.0500000007 >= r1.y);
  r0.x = r1.x ? r0.x : -1;
  r0.y = min(r7.w, r0.y);
  r1.x = cmp(9.99999975e-005 < r1.z);
  r1.y = -2 * r1.z;
  r1.z = r1.z * -2 + -0.200000003;
  r1.z = r1.z * r0.y;
  r1.y = r1.z * -5.00250101 + r1.y;
  r1.y = min(r1.y, r0.y);
  r8.x = r1.x ? r1.y : r0.y;
  r1.xyz = r7.xyz + -r2.yzw;
  r1.xyz = r3.www * r1.xyz + r2.yzw;
  r2.xy = r4.zz * r3.xy + -r3.xy;
  r2.xy = r3.ww * r2.xy + r3.xy;
  r3.xy = r8.xy + -r6.zy;
  r3.xy = r3.ww * r3.xy + r6.zy;
  r0.y = r3.w * r1.w;
  o0.w = r3.z ? r0.x : r4.w;
  r0.x = cmp(0 != cb7[r0.z+10].w);
  r5.xzw = r0.xxx ? cb7[r0.z+10].xyz : 0;
  r0.x = cb0[21].x * r5.y;
  r5.xyz = r0.xxx * r5.xzw;
  r5.xyz = r5.xyz * r3.www;
  r6.yzw = r5.xyz * r4.zzz;
  r4.yzw = r5.xyz * r4.zzz + r1.xyz;
  r0.x = max(r4.y, r4.z);
  r0.x = max(r0.x, r4.w);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r1.xyz = r1.xyz * r0.xxx + r6.yzw;
  r0.x = max(r1.x, r1.y);
  r0.x = max(r0.x, r1.z);
  r0.x = max(1, r0.x);
  r1.xyz = r1.xyz / r0.xxx;
  r0.x = max(r6.y, r6.z);
  r0.x = max(r0.x, r6.w);
  r0.z = dot(r2.xy, r2.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r2.z = sqrt(r0.z);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r4.yzw = v2.xyz * r2.yyy;
  r2.xyw = v1.xyz * r2.xxx + r4.yzw;
  r2.xyz = v0.xyz * r2.zzz + r2.xyw;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r0.z = cmp(0.000000 != cb0[9].x);
  if (r0.z != 0) {
    r3.zw = ddx_coarse(v3.xy);
    r0.z = dot(r3.zw, r3.zw);
    r0.z = sqrt(r0.z);
    r3.zw = ddy_coarse(v3.xy);
    r1.w = dot(r3.zw, r3.zw);
    r1.w = sqrt(r1.w);
    r0.z = max(r1.w, r0.z);
    r0.z = 1 / r0.z;
    r0.z = log2(r0.z);
    r1.w = floor(r0.z);
    r1.w = exp2(r1.w);
    r2.w = ceil(r0.z);
    r2.w = exp2(r2.w);
    r3.zw = v3.xy * r1.ww;
    r3.zw = floor(r3.zw);
    r1.w = dot(r3.zw, float2(17,0.100000001));
    r1.w = sin(r1.w);
    r1.w = 10000 * r1.w;
    r3.z = r3.w * 13 + r3.z;
    r3.z = sin(r3.z);
    r3.z = 0.100000001 + abs(r3.z);
    r1.w = r3.z * r1.w;
    r1.w = frac(r1.w);
    r3.zw = v3.xy * r2.ww;
    r3.zw = floor(r3.zw);
    r2.w = dot(r3.zw, float2(17,0.100000001));
    r2.w = sin(r2.w);
    r2.w = 10000 * r2.w;
    r3.z = r3.w * 13 + r3.z;
    r3.z = sin(r3.z);
    r3.z = 0.100000001 + abs(r3.z);
    r2.w = r3.z * r2.w;
    r2.w = frac(r2.w);
    r0.z = frac(r0.z);
    r2.w = r2.w + -r1.w;
    r1.w = r0.z * r2.w + r1.w;
    r2.w = 1 + -r0.z;
    r0.z = min(r2.w, r0.z);
    r2.w = r1.w * r1.w;
    r3.z = r0.z + r0.z;
    r3.w = 1 + -r0.z;
    r3.z = r3.z * r3.w;
    r2.w = r2.w / r3.z;
    r4.y = -r0.z * 0.5 + r1.w;
    r4.y = r4.y / r3.w;
    r4.z = 1 + -r1.w;
    r4.z = r4.z * r4.z;
    r3.z = r4.z / r3.z;
    r3.z = 1 + -r3.z;
    r3.w = cmp(r1.w < r3.w);
    r0.z = cmp(r1.w < r0.z);
    r0.z = r0.z ? r2.w : r4.y;
    r0.z = r3.w ? r0.z : r3.z;
    r1.w = cmp(0.5 >= cb0[8].x);
    r2.w = cb0[8].x + cb0[8].x;
    r2.w = r0.z * -r2.w + r2.w;
    r3.z = cb0[8].x * 2 + -2;
    r0.z = r0.z * r3.z + 1;
    r0.z = r1.w ? r2.w : r0.z;
  } else {
    r0.z = cb0[8].x;
  }
  r0.z = r6.x + -r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.z = saturate(cb0[19].x);
  r1.w = dot(v0.xyz, v0.xyz);
  r1.w = rsqrt(r1.w);
  r4.yzw = v0.xyz * r1.www;
  r1.w = dot(cb0[12].xyz, r4.yzw);
  r2.w = cb0[11].x + -cb0[10].x;
  r1.w = saturate(r1.w * r2.w + cb0[10].x);
  r2.w = -cb0[13].z + v4.z;
  r2.w = cb0[14].x * r2.w;
  r2.w = max(0, r2.w);
  r2.w = log2(r2.w);
  r2.w = cb0[15].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb0[16].x * r2.w);
  r1.w = r2.w * r1.w;
  r0.w = saturate(r0.w * cb0[17].x + cb0[17].y);
  r0.w = r1.w * r0.w;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = -cb0[18].x * r1.w;
  r1.w = exp2(r1.w);
  r0.w = r1.w * r0.w;
  o2.w = v0.w + r0.z;
  r0.x = r0.w * cb0[20].x + r0.x;
  r0.z = r3.x * 0.125 + 0.375;
  o1.xyz = saturate(r2.xyz * r0.zzz + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r4.x = saturate(r4.x);
  r0.x = r4.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xy;
  o0.xyz = r1.xyz;
  o1.w = 0;
  o2.x = r3.y;
  return;
}