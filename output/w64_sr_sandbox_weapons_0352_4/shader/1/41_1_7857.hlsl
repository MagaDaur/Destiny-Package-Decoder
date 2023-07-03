// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:17 2023
Texture2D<float4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

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
  float4 cb0[3];
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
  out float3 o4 : TEXCOORD4,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[2].x < 9.99999997e-007);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o3.xyzw = float4(0,0,0,0);
    r0.xyzw = float4(0,0,0,0);
    o2.xyz = float3(0,0,0);
    o4.xyz = float3(10000,10000,-10000);
  } else {
    r1.x = 32767.0996 * v0.w;
    r1.y = 32767.0996 * v1.w;
    r1.xy = (int2)r1.xy;
    r1.z = max((int)r1.x, (int)-r1.x);
    r1.w = cmp((int)r1.z >= 2048);
    r2.x = cmp((int)r1.x < 0);
    r2.y = (uint)v4.x << 1;
    r2.y = r2.x ? r2.y : v4.x;
    r1.z = (uint)r1.z << 3;
    r1.z = (int)r1.z + 0xffffc000;
    bitmask.z = ((~(-1 << 3)) << 0) & 0xffffffff;  r1.z = (((uint)r2.y << 0) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
    r3.xyzw = t1.Load(r1.z).xyzw;
    r1.y = max(0, (int)r1.y);
    r2.y = (uint)r1.y << 5;
    r2.y = (int)r2.y & 1792;
    r2.y = (int)r2.y | (int)r3.x;
    r1.x = r1.w ? r2.y : r1.x;
    r2.y = (uint)r1.x << 1;
    bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
    if (r1.w != 0) {
      r1.w = (uint)r1.y << 2;
      r1.w = (int)r1.w & 1792;
      r1.w = (int)r1.w | (int)r3.y;
      r2.zw = (uint2)r3.zw;
      r2.z = 0.00392156886 * r2.z;
      r3.x = cb1[r2.y+8].w;
      r3.y = cb1[r1.x+8].w;
      r3.z = (uint)r1.w << 1;
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r1.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r3.w = dot(cb1[r3.z+8].xyzw, cb1[r2.y+8].xyzw);
      r3.w = cmp(r3.w >= 0);
      r3.w = r3.w ? 0.00392156886 : -0.00392156886;
      r2.w = r3.w * r2.w;
      r4.xyz = cb1[r3.z+8].xyz * r2.www;
      r5.xyz = cb1[r1.w+8].xyz * r2.www;
      r6.x = cb1[r3.z+8].w * r2.w;
      r6.y = cb1[r1.w+8].w * r2.w;
      r4.xyz = r2.zzz * cb1[r2.y+8].xyz + r4.xyz;
      r5.xyz = r2.zzz * cb1[r1.x+8].xyz + r5.xyz;
      r2.zw = r2.zz * r3.yx + r6.yx;
      if (r2.x != 0) {
        r1.z = (int)r1.z + 1;
        r3.xyzw = t1.Load(r1.z).xyzw;
        r1.yz = (uint2)r1.yy >> int2(1,4);
        r1.yz = (int2)r1.yz & int2(1792,1792);
        r1.yz = (int2)r1.yz | (int2)r3.xy;
        r3.xy = (uint2)r1.yz << int2(1,1);
        bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)r1.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
        bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.z = (((uint)r1.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
        r1.w = dot(cb1[r3.x+8].xyzw, cb1[r2.y+8].xyzw);
        r3.zw = (uint2)r3.zw;
        r1.w = cmp(r1.w >= 0);
        r1.w = r1.w ? 0.00392156886 : -0.00392156886;
        r1.w = r3.z * r1.w;
        r6.x = cb1[r3.x+8].w * r1.w;
        r6.y = cb1[r1.y+8].w * r1.w;
        r7.xyz = r1.www * cb1[r3.x+8].xyz + r4.xyz;
        r8.xyz = r1.www * cb1[r1.y+8].xyz + r5.xyz;
        r1.yw = r6.xy + r2.wz;
        r2.x = dot(cb1[r3.y+8].xyzw, cb1[r2.y+8].xyzw);
        r2.x = cmp(r2.x >= 0);
        r2.x = r2.x ? 0.00392156886 : -0.00392156886;
        r2.x = r3.w * r2.x;
        r6.x = cb1[r3.y+8].w * r2.x;
        r6.y = cb1[r1.z+8].w * r2.x;
        r4.xyz = r2.xxx * cb1[r3.y+8].xyz + r7.xyz;
        r5.xyz = r2.xxx * cb1[r1.z+8].xyz + r8.xyz;
        r2.zw = r6.yx + r1.wy;
        r4.w = r2.w;
      } else {
        r4.w = r2.w;
      }
      r1.y = dot(r4.xyzw, r4.xyzw);
      r1.y = sqrt(r1.y);
      r3.xyz = r4.xyz / r1.yyy;
      r4.xyz = r5.xyz / r1.yyy;
      r2.w = r4.w;
      r1.yz = r2.zw / r1.yy;
      r3.w = r1.z;
    } else {
      r4.xyz = cb1[r1.x+8].xyz;
      r3.xyzw = cb1[r2.y+8].xyzw;
      r1.y = cb1[r1.x+8].w;
    }
    r2.xyzw = r3.xyzw + r3.xyzw;
    r1.xzw = v0.xyz * cb1[5].www + cb1[5].xyz;
    r5.xyz = r3.yzx * r1.xzw;
    r5.xyz = r3.xyz * r1.zwx + -r5.xyz;
    r5.xyz = r3.www * r1.wxz + r5.xyz;
    r1.xzw = -r2.zxy * r5.zxy + r1.xzw;
    r1.xzw = r2.yzx * r5.xyz + r1.xzw;
    r1.xzw = -r2.zxy * r4.yzx + r1.xzw;
    r1.xzw = r2.yzx * r4.zxy + r1.xzw;
    r1.xzw = r2.www * r4.xyz + r1.xzw;
    r1.xyz = -r1.yyy * r2.xyz + r1.xzw;
    r1.xyz = cb12[15].xyz + r1.xyz;
    r4.xyzw = cb12[1].xyzw * r1.yyyy;
    r4.xyzw = cb12[0].xyzw * r1.xxxx + r4.xyzw;
    r4.xyzw = cb12[2].xyzw * r1.zzzz + r4.xyzw;
    r0.xyzw = cb12[14].xyzw + r4.xyzw;
    r1.w = dot(v1.xyz, v1.xyz);
    r1.w = rsqrt(r1.w);
    r4.xyz = v1.xyz * r1.www;
    r5.xyz = r4.xyz * r3.yzx;
    r5.xyz = r3.xyz * r4.yzx + -r5.xyz;
    r5.xyz = r3.www * r4.zxy + r5.xyz;
    r4.xyz = -r2.zxy * r5.zxy + r4.xyz;
    r4.xyz = r2.yzx * r5.xyz + r4.xyz;
    r1.w = dot(v2.xyz, v2.xyz);
    r1.w = rsqrt(r1.w);
    r5.xyz = v2.xyz * r1.www;
    r6.xyz = r5.xyz * r3.yzx;
    r3.xyz = r3.xyz * r5.yzx + -r6.xyz;
    r3.xyz = r3.www * r5.zxy + r3.xyz;
    r5.xyz = -r2.zxy * r3.zxy + r5.xyz;
    r2.xyz = r2.yzx * r3.xyz + r5.xyz;
    r3.xyz = r4.zxy * r2.yzx;
    r3.xyz = r4.yzx * r2.zxy + -r3.xyz;
    o2.xyz = v2.www * r3.xyz;
    o3.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
    o4.xyz = cb12[7].xyz + r1.xyz;
    o0.xyz = r4.xyz;
    o0.w = 1;
    o1.w = v0.z;
    o1.xyz = r2.xyz;
  }
  r1.xyzw = t2.Load(float4(0,0,0,0)).xyzw;
  r2.xy = r0.xy / r0.ww;
  r1.xy = r1.xy * float2(2,2) + r1.zw;
  r1.x = r2.x * r1.z + r1.x;
  r3.x = -1 + r1.x;
  r1.x = -1 + r1.y;
  r3.y = r2.y * r1.w + -r1.x;
  r0.xy = r3.xy * r0.ww;
  o5.xyzw = r0.xyzw;
  return;
}