// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
Texture2D<float4> t2 : register(t2);

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
  out float3 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.x = t0.Load(r0.x).x;
  r0.y = cb0[1].x * r0.x;
  r0.y = cb0[0].x * r0.y;
  r0.x = cb0[2].y * r0.x + cb0[2].x;
  r0.x = cb0[3].x + r0.x;
  r0.z = cb0[4].w * r0.x + cb0[4].z;
  r0.z = 0.25 + r0.z;
  r0.w = round(r0.z);
  r0.z = r0.z + -r0.w;
  r0.w = abs(r0.z) * -16 + 8;
  r0.z = r0.z * r0.w;
  r0.w = abs(r0.z) * 0.224999994 + 0.774999976;
  r0.z = r0.z * r0.w;
  r1.x = cb0[4].x * r0.z + cb0[4].y;
  r0.x = cb0[5].w * r0.x + cb0[5].z;
  r0.x = 0.25 + r0.x;
  r0.z = round(r0.x);
  r0.x = r0.x + -r0.z;
  r0.z = abs(r0.x) * -16 + 8;
  r0.x = r0.x * r0.z;
  r0.z = abs(r0.x) * 0.224999994 + 0.774999976;
  r0.x = r0.x * r0.z;
  r1.y = cb0[5].x * r0.x + cb0[5].y;
  r1.z = 0;
  r0.x = 32767.0996 * v0.w;
  r0.x = (int)r0.x;
  r0.z = max((int)r0.x, (int)-r0.x);
  r0.w = cmp((int)r0.z >= 2048);
  r1.w = cmp((int)r0.x < 0);
  r2.x = (uint)v4.x << 1;
  r2.x = r1.w ? r2.x : v4.x;
  r0.z = (uint)r0.z << 3;
  r0.z = (int)r0.z + 0xffffc000;
  bitmask.z = ((~(-1 << 3)) << 0) & 0xffffffff;  r0.z = (((uint)r2.x << 0) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
  r2.xyzw = t1.Load(r0.z).xyzw;
  r0.x = r0.w ? r2.x : r0.x;
  r2.x = (uint)r0.x << 1;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  if (r0.w != 0) {
    r2.zw = (uint2)r2.zw;
    r0.w = 0.00392156886 * r2.z;
    r3.x = cb1[r2.x+8].w;
    r3.y = cb1[r0.x+8].w;
    r2.z = (uint)r2.y << 1;
    bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.y = (((uint)r2.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
    r3.z = dot(cb1[r2.z+8].xyzw, cb1[r2.x+8].xyzw);
    r3.z = cmp(r3.z >= 0);
    r3.z = r3.z ? 0.00392156886 : -0.00392156886;
    r2.w = r3.z * r2.w;
    r4.xyz = cb1[r2.z+8].xyz * r2.www;
    r5.xyz = cb1[r2.y+8].xyz * r2.www;
    r6.x = cb1[r2.z+8].w * r2.w;
    r6.y = cb1[r2.y+8].w * r2.w;
    r4.xyz = r0.www * cb1[r2.x+8].xyz + r4.xyz;
    r2.yzw = r0.www * cb1[r0.x+8].xyz + r5.xyz;
    r3.xy = r0.ww * r3.yx + r6.yx;
    if (r1.w != 0) {
      r0.z = (int)r0.z + 1;
      r5.xyzw = t1.Load(r0.z).xyzw;
      r0.zw = (uint2)r5.xy << int2(1,1);
      bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.z = (((uint)r5.x << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.w = (((uint)r5.y << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r1.w = dot(cb1[r0.z+8].xyzw, cb1[r2.x+8].xyzw);
      r5.xy = (uint2)r5.zw;
      r1.w = cmp(r1.w >= 0);
      r1.w = r1.w ? 0.00392156886 : -0.00392156886;
      r1.w = r5.x * r1.w;
      r6.x = cb1[r0.z+8].w * r1.w;
      r6.y = cb1[r3.z+8].w * r1.w;
      r5.xzw = r1.www * cb1[r0.z+8].xyz + r4.xyz;
      r7.xyz = r1.www * cb1[r3.z+8].xyz + r2.yzw;
      r6.xy = r6.xy + r3.yx;
      r0.z = dot(cb1[r0.w+8].xyzw, cb1[r2.x+8].xyzw);
      r0.z = cmp(r0.z >= 0);
      r0.z = r0.z ? 0.00392156886 : -0.00392156886;
      r0.z = r5.y * r0.z;
      r8.x = cb1[r0.w+8].w * r0.z;
      r8.y = cb1[r3.w+8].w * r0.z;
      r4.xyz = r0.zzz * cb1[r0.w+8].xyz + r5.xzw;
      r2.yzw = r0.zzz * cb1[r3.w+8].xyz + r7.xyz;
      r3.xy = r8.yx + r6.yx;
      r4.w = r3.y;
    } else {
      r4.w = r3.y;
    }
    r0.z = dot(r4.xyzw, r4.xyzw);
    r0.z = sqrt(r0.z);
    r5.xyz = r4.xyz / r0.zzz;
    r2.yzw = r2.yzw / r0.zzz;
    r3.y = r4.w;
    r0.zw = r3.xy / r0.zz;
    r5.w = r0.w;
  } else {
    r2.yzw = cb1[r0.x+8].xyz;
    r5.xyzw = cb1[r2.x+8].xyzw;
    r0.z = cb1[r0.x+8].w;
  }
  r3.xyzw = r5.xyzw + r5.xyzw;
  r4.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r0.xyw = r0.yyy * r1.xyz + r4.xyz;
  r1.xyz = r5.yzx * r0.xyw;
  r1.xyz = r5.xyz * r0.ywx + -r1.xyz;
  r1.xyz = r5.www * r0.wxy + r1.xyz;
  r0.xyw = -r3.zxy * r1.zxy + r0.xyw;
  r0.xyw = r3.yzx * r1.xyz + r0.xyw;
  r0.xyw = -r3.zxy * r2.zwy + r0.xyw;
  r0.xyw = r3.yzx * r2.wyz + r0.xyw;
  r0.xyw = r3.www * r2.yzw + r0.xyw;
  r0.xyz = -r0.zzz * r3.xyz + r0.xyw;
  r0.xyz = cb12[15].xyz + r0.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb12[14].xyzw + r0.xyzw;
  o0.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r1.xyzw = t2.Load(float4(0,0,0,0)).xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xy = r1.xy * float2(2,2) + r1.zw;
  r0.x = r0.x * r1.z + r1.x;
  r2.x = -1 + r0.x;
  r0.x = -1 + r1.y;
  r2.y = r0.y * r1.w + -r0.x;
  o2.xy = r2.xy * r0.ww;
  o2.zw = r0.zw;
  return;
}