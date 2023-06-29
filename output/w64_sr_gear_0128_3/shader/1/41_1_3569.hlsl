// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:46 2023
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
  float4 cb0[16];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.xyz = t0.Load(r0.x).xyz;
  r1.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r0.w = cb0[13].x * cb0[3].x;
  r2.x = cb0[15].x * cb0[12].x;
  r2.y = cb0[15].x * r0.w;
  r2.z = cb0[15].x * cb0[14].x;
  r0.w = cb0[7].x * cb0[6].x;
  r1.w = -cb0[8].x + 1;
  r0.xy = float2(1,1) + -r0.yx;
  r0.x = -r0.x * cb0[9].x + 1;
  r2.w = 1 + -r1.w;
  r0.y = -r0.y * cb0[11].x + 1;
  r0.y = r2.w * r0.y;
  r0.x = r1.w * r0.x + r0.y;
  r0.x = r0.w * r0.z + r0.x;
  r0.y = -cb0[1].x + 1;
  r0.w = -cb0[2].x + 1;
  r1.w = cb0[4].x * cb0[3].x;
  r2.w = cb0[3].x * cb0[0].x;
  r3.x = cb0[0].x * r0.z + r1.w;
  r3.y = r0.y * r0.z + cb0[5].x;
  r3.z = r0.w * r0.z + r2.w;
  r0.x = 3.14100003 * r0.x;
  sincos(r0.x, r0.x, r4.x);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = r3.xyz * r0.yyy;
  r0.xyz = r0.xxx * r0.yzw;
  r1.xyz = -r2.xyz + r1.xyz;
  r3.xyz = r1.zxy * -r0.yzx;
  r3.xyz = r1.yzx * -r0.zxy + -r3.xyz;
  r0.w = dot(r1.xyz, -r0.xyz);
  r3.w = -r0.w;
  r1.xyz = r4.xxx * r1.xyz;
  r1.w = 0;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r3.xyz = r1.yzx * r0.zxy;
  r3.xyz = r0.yzx * r1.zxy + -r3.xyz;
  r1.xyz = r4.xxx * r1.xyz + r3.xyz;
  r0.xyz = r1.www * r0.xyz + r1.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r1.x = 32767.0996 * v0.w;
  r1.x = (int)r1.x;
  r1.y = max((int)r1.x, (int)-r1.x);
  r1.z = cmp((int)r1.y >= 2048);
  r1.w = cmp((int)r1.x < 0);
  r2.x = (uint)v4.x << 1;
  r2.x = r1.w ? r2.x : v4.x;
  r1.y = (uint)r1.y << 3;
  r1.y = (int)r1.y + 0xffffc000;
  bitmask.y = ((~(-1 << 3)) << 0) & 0xffffffff;  r1.y = (((uint)r2.x << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
  r2.xyzw = t1.Load(r1.y).xyzw;
  r1.x = r1.z ? r2.x : r1.x;
  r2.x = (int)r1.x * 3;
  r3.xy = mad(int2(3,3), (int2)r1.xx, int2(1,2));
  if (r1.z != 0) {
    r1.xz = (uint2)r2.zw;
    r1.xz = float2(0.00392156886,0.00392156886) * r1.xz;
    r4.x = cb1[r2.x+8].w;
    r4.y = cb1[r3.x+8].w;
    r4.z = cb1[r3.y+8].w;
    r2.z = (int)r2.y * 3;
    r2.yw = mad(int2(3,3), (int2)r2.yy, int2(1,2));
    r5.xyz = cb1[r2.z+8].xyz * r1.zzz;
    r6.x = cb1[r2.z+8].w * r1.z;
    r6.y = cb1[r2.y+8].w * r1.z;
    r6.z = cb1[r2.w+8].w * r1.z;
    r7.xyz = cb1[r2.y+8].xyz * r1.zzz;
    r2.yzw = cb1[r2.w+8].xyz * r1.zzz;
    r5.xyz = cb1[r2.x+8].xyz * r1.xxx + r5.xyz;
    r4.xyz = r4.xyz * r1.xxx + r6.xyz;
    r6.xyz = cb1[r3.x+8].xyz * r1.xxx + r7.xyz;
    r7.xyz = cb1[r3.y+8].xyz * r1.xxx + r2.yzw;
    if (r1.w != 0) {
      r1.x = (int)r1.y + 1;
      r1.xyzw = t1.Load(r1.x).xyzw;
      r1.zw = (uint2)r1.zw;
      r1.zw = float2(0.00392156886,0.00392156886) * r1.zw;
      r2.yz = (int2)r1.xy * int2(3,3);
      r8.xyzw = mad(int4(3,3,3,3), (int4)r1.xxyy, int4(1,2,1,2));
      r9.x = cb1[r2.y+8].w * r1.z;
      r9.y = cb1[r8.x+8].w * r1.z;
      r9.z = cb1[r8.y+8].w * r1.z;
      r10.xyz = r1.zzz * cb1[r2.y+8].xyz + r5.xyz;
      r9.xyz = r9.xyz + r4.xyz;
      r11.xyz = r1.zzz * cb1[r8.x+8].xyz + r6.xyz;
      r1.xyz = r1.zzz * cb1[r8.y+8].xyz + r7.xyz;
      r12.x = cb1[r2.z+8].w * r1.w;
      r12.y = cb1[r8.z+8].w * r1.w;
      r12.z = cb1[r8.w+8].w * r1.w;
      r5.xyz = r1.www * cb1[r2.z+8].xyz + r10.xyz;
      r4.xyz = r12.xyz + r9.xyz;
      r6.xyz = r1.www * cb1[r8.z+8].xyz + r11.xyz;
      r7.xyz = r1.www * cb1[r8.w+8].xyz + r1.xyz;
    }
  } else {
    r5.xyz = cb1[r2.x+8].xyz;
    r4.x = cb1[r2.x+8].w;
    r4.y = cb1[r3.x+8].w;
    r4.z = cb1[r3.y+8].w;
    r6.xyz = cb1[r3.x+8].xyz;
    r7.xyz = cb1[r3.y+8].xyz;
  }
  r1.xyz = cb12[15].xyz + r4.xyz;
  r5.w = r1.x;
  r0.w = 1;
  r1.x = dot(r5.xyzw, r0.xyzw);
  r6.w = r1.y;
  r1.y = dot(r6.xyzw, r0.xyzw);
  r7.w = r1.z;
  r0.x = dot(r7.xyzw, r0.xyzw);
  r2.xyzw = cb12[1].xyzw * r1.yyyy;
  r1.xyzw = cb12[0].xyzw * r1.xxxx + r2.xyzw;
  r0.xyzw = cb12[2].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb12[14].xyzw + r0.xyzw;
  r1.xyzw = t2.Load(float4(0,0,0,0)).xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xy = r1.xy * float2(2,2) + r1.zw;
  r0.x = r0.x * r1.z + r1.x;
  r2.x = -1 + r0.x;
  r0.x = -1 + r1.y;
  r2.y = r0.y * r1.w + -r0.x;
  o0.xy = r2.xy * r0.ww;
  o0.zw = r0.zw;
  return;
}