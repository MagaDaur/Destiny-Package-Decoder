// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:53 2023
Buffer<uint4> t1 : register(t1);

cbuffer cb1 : register(b1)
{
  float4 cb1[24];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  uint v4 : SV_VERTEXID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r0.xzw = -r2.zxy * r3.zxy + r0.xzw;
  r0.xzw = r2.yzx * r3.xyz + r0.xzw;
  r0.xzw = -r2.zxy * r1.zwy + r0.xzw;
  r0.xzw = r2.yzx * r1.wyz + r0.xzw;
  r0.xzw = r2.www * r1.yzw + r0.xzw;
  r0.xyz = -r0.yyy * r2.xyz + r0.xzw;
  r0.xyz = cb12[15].xyz + r0.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb12[14].xyzw + r0.xyzw;
  return;
}