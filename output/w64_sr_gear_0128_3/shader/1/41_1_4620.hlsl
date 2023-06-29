// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:44 2023
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
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r0.w = cb0[3].x * 3.14100003;
  sincos(r0.w, r1.x, r2.x);
  r0.w = dot(cb0[2].xyz, cb0[2].xyz);
  r0.w = rsqrt(r0.w);
  r1.yzw = cb0[2].xyz * r0.www;
  r1.xyz = r1.xxx * r1.yzw;
  r2.yzw = -cb0[4].xyz + r0.xyz;
  r3.xyz = r2.wyz * -r1.yzx;
  r3.xyz = r2.zwy * -r1.zxy + -r3.xyz;
  r0.w = dot(r2.yzw, -r1.xyz);
  r3.w = -r0.w;
  r4.xyz = r2.xxx * r2.yzw;
  r4.w = 0;
  r3.xyzw = r4.xyzw + r3.xyzw;
  r2.yzw = r3.yzx * r1.zxy;
  r2.yzw = r1.yzx * r3.zxy + -r2.yzw;
  r2.xyz = r2.xxx * r3.xyz + r2.yzw;
  r1.xyz = r3.www * r1.xyz + r2.xyz;
  r1.xyz = cb0[4].xyz + r1.xyz;
  r1.xyz = r1.xyz + -r0.xyz;
  r1.xyz = -cb0[0].xyz + r1.xyz;
  r1.xyz = cb0[5].xxx * r1.xyz + cb0[0].xyz;
  r0.w = 32767.0996 * v0.w;
  r0.w = (int)r0.w;
  r1.w = max((int)r0.w, (int)-r0.w);
  r2.x = cmp((int)r1.w >= 2048);
  r2.y = cmp((int)r0.w < 0);
  r2.z = (uint)v4.x << 1;
  r2.z = r2.y ? r2.z : v4.x;
  r1.w = (uint)r1.w << 3;
  r1.w = (int)r1.w + 0xffffc000;
  bitmask.w = ((~(-1 << 3)) << 0) & 0xffffffff;  r1.w = (((uint)r2.z << 0) & bitmask.w) | ((uint)r1.w & ~bitmask.w);
  r3.xyzw = t1.Load(r1.w).xyzw;
  r0.w = r2.x ? r3.x : r0.w;
  r2.z = (int)r0.w * 3;
  r4.xy = mad(int2(3,3), (int2)r0.ww, int2(1,2));
  if (r2.x != 0) {
    r2.xw = (uint2)r3.zw;
    r2.xw = float2(0.00392156886,0.00392156886) * r2.xw;
    r5.x = cb1[r2.z+8].w;
    r5.y = cb1[r4.x+8].w;
    r5.z = cb1[r4.y+8].w;
    r0.w = (int)r3.y * 3;
    r3.xy = mad(int2(3,3), (int2)r3.yy, int2(1,2));
    r6.xyz = cb1[r0.w+8].xyz * r2.www;
    r7.x = cb1[r0.w+8].w * r2.w;
    r7.y = cb1[r3.x+8].w * r2.w;
    r7.z = cb1[r3.y+8].w * r2.w;
    r3.xzw = cb1[r3.x+8].xyz * r2.www;
    r8.xyz = cb1[r3.y+8].xyz * r2.www;
    r6.xyz = cb1[r2.z+8].xyz * r2.xxx + r6.xyz;
    r5.xyz = r5.xyz * r2.xxx + r7.xyz;
    r3.xyz = cb1[r4.x+8].xyz * r2.xxx + r3.xzw;
    r7.xyz = cb1[r4.y+8].xyz * r2.xxx + r8.xyz;
    if (r2.y != 0) {
      r0.w = (int)r1.w + 1;
      r8.xyzw = t1.Load(r0.w).xyzw;
      r2.xy = (uint2)r8.zw;
      r2.xy = float2(0.00392156886,0.00392156886) * r2.xy;
      r4.zw = (int2)r8.xy * int2(3,3);
      r8.xyzw = mad(int4(3,3,3,3), (int4)r8.xxyy, int4(1,2,1,2));
      r9.x = cb1[r4.z+8].w * r2.x;
      r9.y = cb1[r8.x+8].w * r2.x;
      r9.z = cb1[r8.y+8].w * r2.x;
      r10.xyz = r2.xxx * cb1[r4.z+8].xyz + r6.xyz;
      r9.xyz = r9.xyz + r5.xyz;
      r11.xyz = r2.xxx * cb1[r8.x+8].xyz + r3.xyz;
      r12.xyz = r2.xxx * cb1[r8.y+8].xyz + r7.xyz;
      r13.x = cb1[r4.w+8].w * r2.y;
      r13.y = cb1[r8.z+8].w * r2.y;
      r13.z = cb1[r8.w+8].w * r2.y;
      r6.xyz = r2.yyy * cb1[r4.w+8].xyz + r10.xyz;
      r5.xyz = r13.xyz + r9.xyz;
      r3.xyz = r2.yyy * cb1[r8.z+8].xyz + r11.xyz;
      r7.xyz = r2.yyy * cb1[r8.w+8].xyz + r12.xyz;
    }
  } else {
    r6.xyz = cb1[r2.z+8].xyz;
    r5.x = cb1[r2.z+8].w;
    r5.y = cb1[r4.x+8].w;
    r5.z = cb1[r4.y+8].w;
    r3.xyz = cb1[r4.x+8].xyz;
    r7.xyz = cb1[r4.y+8].xyz;
  }
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = cb12[15].xyz + r5.xyz;
  r6.w = r1.x;
  r0.w = 1;
  r1.x = dot(r6.xyzw, r0.xyzw);
  r3.w = r1.y;
  r1.y = dot(r3.xyzw, r0.xyzw);
  r7.w = r1.z;
  r0.x = dot(r7.xyzw, r0.xyzw);
  r2.xyzw = cb12[1].xyzw * r1.yyyy;
  r1.xyzw = cb12[0].xyzw * r1.xxxx + r2.xyzw;
  r0.xyzw = cb12[2].xyzw * r0.xxxx + r1.xyzw;
  o0.xyzw = cb12[14].xyzw + r0.xyzw;
  return;
}