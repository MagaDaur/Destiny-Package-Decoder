// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

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
  float4 cb0[6];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.xyzw = t0.Load(r0.x).xyzw;
  r1.x = cb0[1].x * r0.x;
  r1.x = cb0[0].x * r1.x;
  r1.y = cb0[2].y * r0.x + cb0[2].x;
  r1.y = cb0[3].x + r1.y;
  r1.z = cb0[4].w * r1.y + cb0[4].z;
  r1.z = 0.25 + r1.z;
  r1.w = round(r1.z);
  r1.z = r1.z + -r1.w;
  r1.w = abs(r1.z) * -16 + 8;
  r1.z = r1.z * r1.w;
  r1.w = abs(r1.z) * 0.224999994 + 0.774999976;
  r1.z = r1.z * r1.w;
  r2.x = cb0[4].x * r1.z + cb0[4].y;
  r1.y = cb0[5].w * r1.y + cb0[5].z;
  r1.y = 0.25 + r1.y;
  r1.z = round(r1.y);
  r1.y = r1.y + -r1.z;
  r1.z = abs(r1.y) * -16 + 8;
  r1.y = r1.y * r1.z;
  r1.z = abs(r1.y) * 0.224999994 + 0.774999976;
  r1.y = r1.y * r1.z;
  r2.y = cb0[5].x * r1.y + cb0[5].y;
  r2.z = 0;
  r1.y = 32767.0996 * v0.w;
  r1.y = (int)r1.y;
  r1.z = max((int)r1.y, (int)-r1.y);
  r1.w = cmp((int)r1.z >= 2048);
  r2.w = cmp((int)r1.y < 0);
  r3.x = (uint)v4.x << 1;
  r3.x = r2.w ? r3.x : v4.x;
  r1.z = (uint)r1.z << 3;
  r1.z = (int)r1.z + 0xffffc000;
  bitmask.z = ((~(-1 << 3)) << 0) & 0xffffffff;  r1.z = (((uint)r3.x << 0) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
  r3.xyzw = t1.Load(r1.z).xyzw;
  r1.y = r1.w ? r3.x : r1.y;
  r3.x = (uint)r1.y << 1;
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)r1.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  if (r1.w != 0) {
    r3.zw = (uint2)r3.zw;
    r1.w = 0.00392156886 * r3.z;
    r4.x = cb1[r3.x+8].w;
    r4.y = cb1[r1.y+8].w;
    r3.z = (uint)r3.y << 1;
    bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.y = (((uint)r3.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
    r4.z = dot(cb1[r3.z+8].xyzw, cb1[r3.x+8].xyzw);
    r4.z = cmp(r4.z >= 0);
    r4.z = r4.z ? 0.00392156886 : -0.00392156886;
    r3.w = r4.z * r3.w;
    r5.xyz = cb1[r3.z+8].xyz * r3.www;
    r6.xyz = cb1[r3.y+8].xyz * r3.www;
    r7.x = cb1[r3.z+8].w * r3.w;
    r7.y = cb1[r3.y+8].w * r3.w;
    r5.xyz = r1.www * cb1[r3.x+8].xyz + r5.xyz;
    r3.yzw = r1.www * cb1[r1.y+8].xyz + r6.xyz;
    r4.xy = r1.ww * r4.yx + r7.yx;
    if (r2.w != 0) {
      r1.z = (int)r1.z + 1;
      r6.xyzw = t1.Load(r1.z).xyzw;
      r1.zw = (uint2)r6.xy << int2(1,1);
      bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.z = (((uint)r6.x << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r6.y << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r2.w = dot(cb1[r1.z+8].xyzw, cb1[r3.x+8].xyzw);
      r6.xy = (uint2)r6.zw;
      r2.w = cmp(r2.w >= 0);
      r2.w = r2.w ? 0.00392156886 : -0.00392156886;
      r2.w = r6.x * r2.w;
      r7.x = cb1[r1.z+8].w * r2.w;
      r7.y = cb1[r4.z+8].w * r2.w;
      r6.xzw = r2.www * cb1[r1.z+8].xyz + r5.xyz;
      r8.xyz = r2.www * cb1[r4.z+8].xyz + r3.yzw;
      r7.xy = r7.xy + r4.yx;
      r1.z = dot(cb1[r1.w+8].xyzw, cb1[r3.x+8].xyzw);
      r1.z = cmp(r1.z >= 0);
      r1.z = r1.z ? 0.00392156886 : -0.00392156886;
      r1.z = r6.y * r1.z;
      r9.x = cb1[r1.w+8].w * r1.z;
      r9.y = cb1[r4.w+8].w * r1.z;
      r5.xyz = r1.zzz * cb1[r1.w+8].xyz + r6.xzw;
      r3.yzw = r1.zzz * cb1[r4.w+8].xyz + r8.xyz;
      r4.xy = r9.yx + r7.yx;
      r5.w = r4.y;
    } else {
      r5.w = r4.y;
    }
    r1.z = dot(r5.xyzw, r5.xyzw);
    r1.z = sqrt(r1.z);
    r6.xyz = r5.xyz / r1.zzz;
    r3.yzw = r3.yzw / r1.zzz;
    r4.y = r5.w;
    r1.zw = r4.xy / r1.zz;
    r6.w = r1.w;
  } else {
    r3.yzw = cb1[r1.y+8].xyz;
    r6.xyzw = cb1[r3.x+8].xyzw;
    r1.z = cb1[r1.y+8].w;
  }
  r4.xyzw = r6.xyzw + r6.xyzw;
  r5.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r1.xyw = r1.xxx * r2.xyz + r5.xyz;
  r2.xyz = r6.yzx * r1.xyw;
  r2.xyz = r6.xyz * r1.ywx + -r2.xyz;
  r2.xyz = r6.www * r1.wxy + r2.xyz;
  r5.xyz = -r4.zxy * r2.zxy + r1.xyw;
  r2.xyz = r4.yzx * r2.xyz + r5.xyz;
  r2.xyz = -r4.zxy * r3.zwy + r2.xyz;
  r2.xyz = r4.yzx * r3.wyz + r2.xyz;
  r2.xyz = r4.www * r3.yzw + r2.xyz;
  r1.xyz = -r1.zzz * r4.xyz + r2.xyz;
  r1.xyz = cb12[15].xyz + r1.xyz;
  r2.xyzw = cb12[1].xyzw * r1.yyyy;
  r2.xyzw = cb12[0].xyzw * r1.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r1.zzzz + r2.xyzw;
  o6.xyzw = cb12[14].xyzw + r2.xyzw;
  o4.xyz = cb12[7].xyz + r1.xyz;
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v1.xyz * r1.xxx;
  r2.xyz = r6.yzx * r1.xyz;
  r2.xyz = r6.xyz * r1.yzx + -r2.xyz;
  r2.xyz = r6.www * r1.zxy + r2.xyz;
  r1.xyz = -r4.zxy * r2.zxy + r1.xyz;
  r1.xyz = r4.yzx * r2.xyz + r1.xyz;
  r2.x = dot(v2.xyz, v2.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v2.xyz * r2.xxx;
  r3.xyz = r6.yzx * r2.xyz;
  r3.xyz = r6.xyz * r2.yzx + -r3.xyz;
  r3.xyz = r6.www * r2.zxy + r3.xyz;
  r2.xyz = -r4.zxy * r3.zxy + r2.xyz;
  r2.xyz = r4.yzx * r3.xyz + r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r3.xyz = r1.yzx * r2.zxy + -r3.xyz;
  o2.xyz = v2.www * r3.xyz;
  r3.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r2.w = saturate(cb1[7].z * r1.z);
  o0.w = saturate(cb1[7].w + r2.w);
  r2.w = 32767.0996 * v1.w;
  r2.w = (int)r2.w;
  r3.z = (uint)r2.w >> 3;
  r3.z = (int)r3.z & 4095;
  r2.w = (int)r2.w & 7;
  r2.w = (int)r2.w;
  o2.w = 0.100000001 + r2.w;
  r4.xyzw = t1.Load(r3.z).xyzw;
  r3.zw = (uint2)r4.yw << int2(8,8);
  r3.zw = (int2)r3.zw | (int2)r4.xz;
  r3.zw = f16tof32(r3.zw);
  o3.zw = r3.xy * r3.zw;
  o0.xyz = r1.xyz;
  o1.w = r1.w;
  o1.xyz = r2.xyz;
  o3.xy = r3.xy;
  o5.xyzw = r0.xyzw;
  return;
}