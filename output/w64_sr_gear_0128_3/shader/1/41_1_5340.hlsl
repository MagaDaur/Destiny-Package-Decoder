// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:42 2023
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb1 : register(b1)
{
  float4 cb1[24];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[14];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  uint v4 : SV_VERTEXID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD8,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 32767.0996 * v0.w;
  r0.x = (int)r0.x;
  r0.y = max((int)r0.x, (int)-r0.x);
  r0.z = cmp((int)r0.y >= 2048);
  r0.w = cmp((int)r0.x < 0);
  r1.x = (uint)v4.x << 1;
  r1.x = r0.w ? r1.x : v4.x;
  r0.y = (uint)r0.y << 3;
  r0.y = (int)r0.y + 0xffffc000;
  bitmask.y = ((~(-1 << 3)) << 0) & 0xffffffff;  r0.y = (((uint)r1.x << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.x = r0.z ? r1.x : r0.x;
  r1.x = (uint)r0.x << 1;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  if (r0.z != 0) {
    r1.zw = (uint2)r1.zw;
    r0.z = 0.00392156886 * r1.z;
    r2.x = cb1[r1.x+8].w;
    r2.y = cb1[r0.x+8].w;
    r1.z = (uint)r1.y << 1;
    bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)r1.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
    r2.z = dot(cb1[r1.z+8].xyzw, cb1[r1.x+8].xyzw);
    r2.z = cmp(r2.z >= 0);
    r2.z = r2.z ? 0.00392156886 : -0.00392156886;
    r1.w = r2.z * r1.w;
    r3.xyz = cb1[r1.z+8].xyz * r1.www;
    r4.xyz = cb1[r1.y+8].xyz * r1.www;
    r5.x = cb1[r1.z+8].w * r1.w;
    r5.y = cb1[r1.y+8].w * r1.w;
    r3.xyz = r0.zzz * cb1[r1.x+8].xyz + r3.xyz;
    r1.yzw = r0.zzz * cb1[r0.x+8].xyz + r4.xyz;
    r2.xy = r0.zz * r2.yx + r5.yx;
    if (r0.w != 0) {
      r0.y = (int)r0.y + 1;
      r4.xyzw = t1.Load(r0.y).xyzw;
      r0.yz = (uint2)r4.xy << int2(1,1);
      bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.z = (((uint)r4.x << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r4.y << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r0.w = dot(cb1[r0.y+8].xyzw, cb1[r1.x+8].xyzw);
      r4.xy = (uint2)r4.zw;
      r0.w = cmp(r0.w >= 0);
      r0.w = r0.w ? 0.00392156886 : -0.00392156886;
      r0.w = r4.x * r0.w;
      r5.x = cb1[r0.y+8].w * r0.w;
      r5.y = cb1[r2.z+8].w * r0.w;
      r4.xzw = r0.www * cb1[r0.y+8].xyz + r3.xyz;
      r6.xyz = r0.www * cb1[r2.z+8].xyz + r1.yzw;
      r0.yw = r5.xy + r2.yx;
      r2.z = dot(cb1[r0.z+8].xyzw, cb1[r1.x+8].xyzw);
      r2.z = cmp(r2.z >= 0);
      r2.z = r2.z ? 0.00392156886 : -0.00392156886;
      r2.z = r4.y * r2.z;
      r5.x = cb1[r0.z+8].w * r2.z;
      r5.y = cb1[r2.w+8].w * r2.z;
      r3.xyz = r2.zzz * cb1[r0.z+8].xyz + r4.xzw;
      r1.yzw = r2.zzz * cb1[r2.w+8].xyz + r6.xyz;
      r2.xy = r5.yx + r0.wy;
      r3.w = r2.y;
    } else {
      r3.w = r2.y;
    }
    r0.y = dot(r3.xyzw, r3.xyzw);
    r0.y = sqrt(r0.y);
    r4.xyz = r3.xyz / r0.yyy;
    r1.yzw = r1.yzw / r0.yyy;
    r2.y = r3.w;
    r0.yz = r2.xy / r0.yy;
    r4.w = r0.z;
  } else {
    r1.yzw = cb1[r0.x+8].xyz;
    r4.xyzw = cb1[r1.x+8].xyzw;
    r0.y = cb1[r0.x+8].w;
  }
  r2.xyzw = r4.xyzw + r4.xyzw;
  r0.xzw = v0.xyz * cb1[5].www + cb1[5].xyz;
  r3.xyz = r4.yzx * r0.xzw;
  r3.xyz = r4.xyz * r0.zwx + -r3.xyz;
  r3.xyz = r4.www * r0.wxz + r3.xyz;
  r5.xyz = -r2.zxy * r3.zxy + r0.xzw;
  r3.xyz = r2.yzx * r3.xyz + r5.xyz;
  r3.xyz = -r2.zxy * r1.zwy + r3.xyz;
  r3.xyz = r2.yzx * r1.wyz + r3.xyz;
  r1.xyz = r2.www * r1.yzw + r3.xyz;
  r0.xyz = -r0.yyy * r2.xyz + r1.xyz;
  r0.xyz = cb12[15].xyz + r0.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  r1.xyzw = cb12[14].xyzw + r1.xyzw;
  r0.xyz = cb12[7].xyz + r0.xyz;
  r2.w = dot(v1.xyz, v1.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v1.xyz * r2.www;
  r5.xyz = r4.yzx * r3.xyz;
  r5.xyz = r4.xyz * r3.yzx + -r5.xyz;
  r5.xyz = r4.www * r3.zxy + r5.xyz;
  r3.xyz = -r2.zxy * r5.zxy + r3.xyz;
  r3.xyz = r2.yzx * r5.xyz + r3.xyz;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = v2.xyz * r2.www;
  r6.xyz = r5.xyz * r4.yzx;
  r4.xyz = r4.xyz * r5.yzx + -r6.xyz;
  r4.xyz = r4.www * r5.zxy + r4.xyz;
  r5.xyz = -r2.zxy * r4.zxy + r5.xyz;
  r2.xyz = r2.yzx * r4.xyz + r5.xyz;
  r4.xyz = r3.zxy * r2.yzx;
  r4.xyz = r3.yzx * r2.zxy + -r4.xyz;
  o2.xyz = v2.www * r4.xyz;
  r4.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r2.w = saturate(cb1[7].z * r3.z);
  o0.w = saturate(cb1[7].w + r2.w);
  r2.w = min(asuint(cb1[4].w), (uint)v4.x);
  r5.xyzw = t0.Load(r2.w).xyzw;
  r2.w = 32767.0996 * v1.w;
  r2.w = (int)r2.w;
  r3.w = (uint)r2.w >> 3;
  r3.w = (int)r3.w & 4095;
  r2.w = (int)r2.w & 7;
  r2.w = (int)r2.w;
  o2.w = 0.100000001 + r2.w;
  r6.xyzw = t1.Load(r3.w).xyzw;
  r4.zw = (uint2)r6.yw << int2(8,8);
  r4.zw = (int2)r4.zw | (int2)r6.xz;
  r4.zw = f16tof32(r4.zw);
  o3.zw = r4.xy * r4.zw;
  r2.w = cb0[1].x * cb0[0].x;
  r2.w = r5.x * r2.w;
  r2.w = cb0[2].x * r2.w;
  r4.zw = -cb0[4].xy + r4.xy;
  r3.w = dot(r4.zw, r4.zw);
  r3.w = sqrt(r3.w);
  r3.w = cb0[3].x + r3.w;
  r3.w = cb0[5].w * r3.w + cb0[5].z;
  r4.z = round(r3.w);
  r3.w = -r4.z + r3.w;
  r4.z = abs(r3.w) * -16 + 8;
  r3.w = r4.z * r3.w;
  r4.z = abs(r3.w) * 0.224999994 + 0.774999976;
  r3.w = r4.z * r3.w;
  r3.w = cb0[5].x * r3.w + cb0[5].y;
  r4.zw = r4.xy * cb0[6].xy + cb0[6].zw;
  r4.z = t2.SampleLevel(s1_s, r4.zw, 0).x;
  r6.xy = r4.xy * cb0[7].xy + cb0[7].zw;
  r4.w = t3.SampleLevel(s1_s, r6.xy, 0).x;
  r4.w = r4.w * cb0[8].x + cb0[8].y;
  r6.xy = r4.xy * cb0[9].xy + cb0[9].zw;
  r6.x = t4.SampleLevel(s1_s, r6.xy, 0).x;
  r6.x = r6.x * cb0[10].x + cb0[10].y;
  r4.z = r4.w * r6.x + r4.z;
  r4.z = saturate(r4.z * cb0[11].x + cb0[11].y);
  r3.w = r4.z * cb0[12].x + r3.w;
  r4.z = saturate(r5.x * cb0[13].x + cb0[13].y);
  r6.z = r4.z * r3.w;
  r6.xy = float2(0,0);
  r6.xyz = r2.www * r3.xyz + r6.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r7.xyzw = cb12[1].xyzw * r6.yyyy;
  r7.xyzw = cb12[0].xyzw * r6.xxxx + r7.xyzw;
  r6.xyzw = cb12[2].xyzw * r6.zzzz + r7.xyzw;
  o6.xyzw = r6.xyzw + r1.xyzw;
  r1.xyz = cb12[10].xyz + -cb12[7].xyz;
  o4.xyz = r1.xyz + r0.xyz;
  o0.xyz = r3.xyz;
  o1.w = r0.w;
  o1.xyz = r2.xyz;
  o3.xy = r4.xy;
  o5.xyzw = r5.xyzw;
  return;
}