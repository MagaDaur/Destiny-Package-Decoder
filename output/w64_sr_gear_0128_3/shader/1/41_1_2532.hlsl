// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:50 2023
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
  float4 cb0[12];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.xyzw = t0.Load(r0.x).xyzw;
  r1.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r1.w = cb0[9].x * cb0[1].x;
  r2.x = cb0[11].x * cb0[8].x;
  r2.y = cb0[11].x * r1.w;
  r2.z = cb0[11].x * cb0[10].x;
  r1.w = -cb0[5].x + 1;
  r2.w = 1 + -r0.y;
  r2.w = -r2.w * cb0[6].x + 1;
  r1.w = r2.w * r1.w;
  r3.x = cb0[1].x * cb0[2].x + cb0[0].x;
  r3.y = cb0[3].x + cb0[0].y;
  r3.z = cb0[1].x * cb0[4].x + cb0[0].z;
  r1.w = 3.14100003 * r1.w;
  sincos(r1.w, r4.x, r5.x);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r3.xyz = r4.xxx * r3.xyz;
  r1.xyz = -r2.xyz + r1.xyz;
  r4.xyz = r1.zxy * -r3.yzx;
  r4.xyz = r1.yzx * -r3.zxy + -r4.xyz;
  r1.w = dot(r1.xyz, -r3.xyz);
  r4.w = -r1.w;
  r1.xyz = r5.xxx * r1.xyz;
  r1.w = 0;
  r1.xyzw = r4.xyzw + r1.xyzw;
  r4.xyz = r3.zxy * r1.yzx;
  r4.xyz = r3.yzx * r1.zxy + -r4.xyz;
  r1.xyz = r5.xxx * r1.xyz + r4.xyz;
  r1.xyz = r1.www * r3.xyz + r1.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = v1.zxy * -r3.yzx;
  r2.xyz = v1.yzx * -r3.zxy + -r2.xyz;
  r3.w = dot(v1.xyz, -r3.xyz);
  r2.w = -r3.w;
  r4.xyz = v1.xyz;
  r4.w = 0;
  r2.xyzw = r5.xxxx * r4.xyzw + r2.xyzw;
  r4.xyz = r3.zxy * r2.yzx;
  r4.xyz = r3.yzx * r2.zxy + -r4.xyz;
  r2.xyz = r5.xxx * r2.xyz + r4.xyz;
  r2.xyz = r2.www * r3.xyz + r2.xyz;
  r4.xyz = v2.zxy * -r3.yzx;
  r4.xyz = v2.yzx * -r3.zxy + -r4.xyz;
  r2.w = dot(v2.xyz, -r3.xyz);
  r4.w = -r2.w;
  r6.xyz = v2.xyz;
  r6.w = 0;
  r4.xyzw = r5.xxxx * r6.xyzw + r4.xyzw;
  r5.yzw = r4.yzx * r3.zxy;
  r5.yzw = r3.yzx * r4.zxy + -r5.yzw;
  r4.xyz = r5.xxx * r4.xyz + r5.yzw;
  r3.xyz = r4.www * r3.xyz + r4.xyz;
  r2.w = 32767.0996 * v0.w;
  r2.w = (int)r2.w;
  r3.w = max((int)r2.w, (int)-r2.w);
  r4.x = cmp((int)r3.w >= 2048);
  r4.y = cmp((int)r2.w < 0);
  r4.z = (uint)v4.x << 1;
  r4.z = r4.y ? r4.z : v4.x;
  r3.w = (uint)r3.w << 3;
  r3.w = (int)r3.w + 0xffffc000;
  bitmask.w = ((~(-1 << 3)) << 0) & 0xffffffff;  r3.w = (((uint)r4.z << 0) & bitmask.w) | ((uint)r3.w & ~bitmask.w);
  r5.xyzw = t1.Load(r3.w).xyzw;
  r2.w = r4.x ? r5.x : r2.w;
  r4.z = (int)r2.w * 3;
  r6.xy = mad(int2(3,3), (int2)r2.ww, int2(1,2));
  if (r4.x != 0) {
    r4.xw = (uint2)r5.zw;
    r4.xw = float2(0.00392156886,0.00392156886) * r4.xw;
    r7.x = cb1[r4.z+8].w;
    r7.y = cb1[r6.x+8].w;
    r7.z = cb1[r6.y+8].w;
    r2.w = (int)r5.y * 3;
    r5.xy = mad(int2(3,3), (int2)r5.yy, int2(1,2));
    r8.xyz = cb1[r2.w+8].xyz * r4.www;
    r9.x = cb1[r2.w+8].w * r4.w;
    r9.y = cb1[r5.x+8].w * r4.w;
    r9.z = cb1[r5.y+8].w * r4.w;
    r5.xzw = cb1[r5.x+8].xyz * r4.www;
    r10.xyz = cb1[r5.y+8].xyz * r4.www;
    r8.xyz = cb1[r4.z+8].xyz * r4.xxx + r8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r9.xyz;
    r5.xyz = cb1[r6.x+8].xyz * r4.xxx + r5.xzw;
    r9.xyz = cb1[r6.y+8].xyz * r4.xxx + r10.xyz;
    if (r4.y != 0) {
      r2.w = (int)r3.w + 1;
      r10.xyzw = t1.Load(r2.w).xyzw;
      r4.xy = (uint2)r10.zw;
      r4.xy = float2(0.00392156886,0.00392156886) * r4.xy;
      r6.zw = (int2)r10.xy * int2(3,3);
      r10.xyzw = mad(int4(3,3,3,3), (int4)r10.xxyy, int4(1,2,1,2));
      r11.x = cb1[r6.z+8].w * r4.x;
      r11.y = cb1[r10.x+8].w * r4.x;
      r11.z = cb1[r10.y+8].w * r4.x;
      r12.xyz = r4.xxx * cb1[r6.z+8].xyz + r8.xyz;
      r11.xyz = r11.xyz + r7.xyz;
      r13.xyz = r4.xxx * cb1[r10.x+8].xyz + r5.xyz;
      r14.xyz = r4.xxx * cb1[r10.y+8].xyz + r9.xyz;
      r15.x = cb1[r6.w+8].w * r4.y;
      r15.y = cb1[r10.z+8].w * r4.y;
      r15.z = cb1[r10.w+8].w * r4.y;
      r8.xyz = r4.yyy * cb1[r6.w+8].xyz + r12.xyz;
      r7.xyz = r15.xyz + r11.xyz;
      r5.xyz = r4.yyy * cb1[r10.z+8].xyz + r13.xyz;
      r9.xyz = r4.yyy * cb1[r10.w+8].xyz + r14.xyz;
    }
  } else {
    r8.xyz = cb1[r4.z+8].xyz;
    r7.x = cb1[r4.z+8].w;
    r7.y = cb1[r6.x+8].w;
    r7.z = cb1[r6.y+8].w;
    r5.xyz = cb1[r6.x+8].xyz;
    r9.xyz = cb1[r6.y+8].xyz;
  }
  r4.xyz = cb12[15].xyz + r7.xyz;
  r8.w = r4.x;
  r1.w = 1;
  r6.x = dot(r8.xyzw, r1.xyzw);
  r5.w = r4.y;
  r6.y = dot(r5.xyzw, r1.xyzw);
  r9.w = r4.z;
  r6.z = dot(r9.xyzw, r1.xyzw);
  r4.xyzw = cb12[1].xyzw * r6.yyyy;
  r4.xyzw = cb12[0].xyzw * r6.xxxx + r4.xyzw;
  r4.xyzw = cb12[2].xyzw * r6.zzzz + r4.xyzw;
  o6.xyzw = cb12[14].xyzw + r4.xyzw;
  r1.xyw = cb12[7].xyz + r6.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r4.x = dot(r8.xyz, r2.xyz);
  r4.y = dot(r5.xyz, r2.xyz);
  r4.z = dot(r9.xyz, r2.xyz);
  r2.x = dot(r3.xyz, r3.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = r3.xyz * r2.xxx;
  r3.x = dot(r8.xyz, r2.xyz);
  r3.y = dot(r5.xyz, r2.xyz);
  r3.z = dot(r9.xyz, r2.xyz);
  r2.xyz = r4.zxy * r3.yzx;
  r2.xyz = r4.yzx * r3.zxy + -r2.xyz;
  o2.xyz = v2.www * r2.xyz;
  r2.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r2.z = saturate(cb1[7].z * r4.z);
  o0.w = saturate(cb1[7].w + r2.z);
  r2.z = 32767.0996 * v1.w;
  r2.z = (int)r2.z;
  r2.w = (uint)r2.z >> 3;
  r2.zw = (int2)r2.zw & int2(7,4095);
  r2.z = (int)r2.z;
  o2.w = 0.100000001 + r2.z;
  r5.xyzw = t1.Load(r2.w).xyzw;
  r2.zw = (uint2)r5.yw << int2(8,8);
  r2.zw = (int2)r2.zw | (int2)r5.xz;
  r2.zw = f16tof32(r2.zw);
  o3.zw = r2.xy * r2.zw;
  r5.xyz = cb12[10].xyz + -cb12[7].xyz;
  o4.xyz = r5.xyz + r1.xyw;
  o0.xyz = r4.xyz;
  o1.w = r1.z;
  o1.xyz = r3.xyz;
  o3.xy = r2.xy;
  o5.xyzw = r0.xyzw;
  return;
}