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
  float4 cb0[9];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r2.yzw = r2.xxx * r3.xyz + r2.yzw;
  r2.yzw = r3.www * r1.xyz + r2.yzw;
  r2.yzw = cb0[4].xyz + r2.yzw;
  r3.xyz = v1.zxy * -r1.yzx;
  r3.xyz = v1.yzx * -r1.zxy + -r3.xyz;
  r0.w = dot(v1.xyz, -r1.xyz);
  r3.w = -r0.w;
  r4.xyz = v1.xyz;
  r4.w = 0;
  r3.xyzw = r2.xxxx * r4.xyzw + r3.xyzw;
  r4.xyz = r3.yzx * r1.zxy;
  r4.xyz = r1.yzx * r3.zxy + -r4.xyz;
  r3.xyz = r2.xxx * r3.xyz + r4.xyz;
  r3.xyz = r3.www * r1.xyz + r3.xyz;
  r4.xyz = -v1.xyz + r3.xyz;
  r5.xyz = v2.zxy * -r1.yzx;
  r5.xyz = v2.yzx * -r1.zxy + -r5.xyz;
  r0.w = dot(v2.xyz, -r1.xyz);
  r5.w = -r0.w;
  r6.xyz = v2.xyz;
  r6.w = 0;
  r5.xyzw = r2.xxxx * r6.xyzw + r5.xyzw;
  r7.xyz = r5.yzx * r1.zxy;
  r7.xyz = r1.yzx * r5.zxy + -r7.xyz;
  r5.xyz = r2.xxx * r5.xyz + r7.xyz;
  r1.xyz = r5.www * r1.xyz + r5.xyz;
  r1.xyz = -v2.xyz + r1.xyz;
  r5.xyz = r2.yzw + -r0.xyz;
  r0.w = cb0[6].x * 3.14100003;
  sincos(r0.w, r2.x, r7.x);
  r0.w = dot(cb0[5].xyz, cb0[5].xyz);
  r0.w = rsqrt(r0.w);
  r7.yzw = cb0[5].xyz * r0.www;
  r7.yzw = r7.yzw * r2.xxx;
  r8.xyz = -cb0[7].xyz + r2.yzw;
  r9.xyz = r8.zxy * -r7.zwy;
  r9.xyz = r8.yzx * -r7.wyz + -r9.xyz;
  r0.w = dot(r8.xyz, -r7.yzw);
  r9.w = -r0.w;
  r8.xyz = r8.xyz * r7.xxx;
  r8.w = 0;
  r8.xyzw = r9.xyzw + r8.xyzw;
  r9.xyz = r8.yzx * r7.wyz;
  r9.xyz = r7.zwy * r8.zxy + -r9.xyz;
  r8.xyz = r7.xxx * r8.xyz + r9.xyz;
  r8.xyz = r8.www * r7.yzw + r8.xyz;
  r8.xyz = cb0[7].xyz + r8.xyz;
  r9.xyz = -r7.zwy * r3.zxy;
  r9.xyz = r3.yzx * -r7.wyz + -r9.xyz;
  r0.w = dot(r3.xyz, -r7.yzw);
  r9.w = -r0.w;
  r10.xyz = r7.xxx * r3.xyz;
  r10.w = 0;
  r9.xyzw = r10.xyzw + r9.xyzw;
  r10.xyz = r9.yzx * r7.wyz;
  r10.xyz = r7.zwy * r9.zxy + -r10.xyz;
  r9.xyz = r7.xxx * r9.xyz + r10.xyz;
  r9.xyz = r9.www * r7.yzw + r9.xyz;
  r3.xyz = r9.xyz + -r3.xyz;
  r9.xyz = v2.zxy * -r7.zwy;
  r9.xyz = v2.yzx * -r7.wyz + -r9.xyz;
  r0.w = dot(v2.xyz, -r7.yzw);
  r9.w = -r0.w;
  r6.xyzw = r7.xxxx * r6.xyzw + r9.xyzw;
  r9.xyz = r7.wyz * r6.yzx;
  r9.xyz = r7.zwy * r6.zxy + -r9.xyz;
  r6.xyz = r7.xxx * r6.xyz + r9.xyz;
  r6.xyz = r6.www * r7.yzw + r6.xyz;
  r6.xyz = -v2.xyz + r6.xyz;
  r2.xyz = r8.xyz + -r2.yzw;
  r3.xyz = r4.xyz + r3.xyz;
  r1.xyz = r6.xyz + r1.xyz;
  r2.xyz = r5.xyz + r2.xyz;
  r2.xyz = -cb0[0].xyz + r2.xyz;
  r2.xyz = cb0[8].xxx * r2.xyz + cb0[0].xyz;
  r0.w = 32767.0996 * v0.w;
  r0.w = (int)r0.w;
  r1.w = max((int)r0.w, (int)-r0.w);
  r2.w = cmp((int)r1.w >= 2048);
  r3.w = cmp((int)r0.w < 0);
  r4.x = (uint)v4.x << 1;
  r4.x = r3.w ? r4.x : v4.x;
  r1.w = (uint)r1.w << 3;
  r1.w = (int)r1.w + 0xffffc000;
  bitmask.w = ((~(-1 << 3)) << 0) & 0xffffffff;  r1.w = (((uint)r4.x << 0) & bitmask.w) | ((uint)r1.w & ~bitmask.w);
  r4.xyzw = t1.Load(r1.w).xyzw;
  r0.w = r2.w ? r4.x : r0.w;
  r4.x = (int)r0.w * 3;
  r5.xy = mad(int2(3,3), (int2)r0.ww, int2(1,2));
  if (r2.w != 0) {
    r4.zw = (uint2)r4.zw;
    r4.zw = float2(0.00392156886,0.00392156886) * r4.zw;
    r6.x = cb1[r4.x+8].w;
    r6.y = cb1[r5.x+8].w;
    r6.z = cb1[r5.y+8].w;
    r0.w = (int)r4.y * 3;
    r5.zw = mad(int2(3,3), (int2)r4.yy, int2(1,2));
    r7.xyz = cb1[r0.w+8].xyz * r4.www;
    r8.x = cb1[r0.w+8].w * r4.w;
    r8.y = cb1[r5.z+8].w * r4.w;
    r8.z = cb1[r5.w+8].w * r4.w;
    r9.xyz = cb1[r5.z+8].xyz * r4.www;
    r10.xyz = cb1[r5.w+8].xyz * r4.www;
    r7.xyz = cb1[r4.x+8].xyz * r4.zzz + r7.xyz;
    r6.xyz = r6.xyz * r4.zzz + r8.xyz;
    r8.xyz = cb1[r5.x+8].xyz * r4.zzz + r9.xyz;
    r9.xyz = cb1[r5.y+8].xyz * r4.zzz + r10.xyz;
    if (r3.w != 0) {
      r0.w = (int)r1.w + 1;
      r10.xyzw = t1.Load(r0.w).xyzw;
      r4.yz = (uint2)r10.zw;
      r4.yz = float2(0.00392156886,0.00392156886) * r4.yz;
      r5.zw = (int2)r10.xy * int2(3,3);
      r10.xyzw = mad(int4(3,3,3,3), (int4)r10.xxyy, int4(1,2,1,2));
      r11.x = cb1[r5.z+8].w * r4.y;
      r11.y = cb1[r10.x+8].w * r4.y;
      r11.z = cb1[r10.y+8].w * r4.y;
      r12.xyz = r4.yyy * cb1[r5.z+8].xyz + r7.xyz;
      r11.xyz = r11.xyz + r6.xyz;
      r13.xyz = r4.yyy * cb1[r10.x+8].xyz + r8.xyz;
      r14.xyz = r4.yyy * cb1[r10.y+8].xyz + r9.xyz;
      r15.x = cb1[r5.w+8].w * r4.z;
      r15.y = cb1[r10.z+8].w * r4.z;
      r15.z = cb1[r10.w+8].w * r4.z;
      r7.xyz = r4.zzz * cb1[r5.w+8].xyz + r12.xyz;
      r6.xyz = r15.xyz + r11.xyz;
      r8.xyz = r4.zzz * cb1[r10.z+8].xyz + r13.xyz;
      r9.xyz = r4.zzz * cb1[r10.w+8].xyz + r14.xyz;
    }
  } else {
    r7.xyz = cb1[r4.x+8].xyz;
    r6.x = cb1[r4.x+8].w;
    r6.y = cb1[r5.x+8].w;
    r6.z = cb1[r5.y+8].w;
    r8.xyz = cb1[r5.x+8].xyz;
    r9.xyz = cb1[r5.y+8].xyz;
  }
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = cb12[15].xyz + r6.xyz;
  r7.w = r2.x;
  r0.w = 1;
  r4.x = dot(r7.xyzw, r0.xyzw);
  r8.w = r2.y;
  r4.y = dot(r8.xyzw, r0.xyzw);
  r9.w = r2.z;
  r4.z = dot(r9.xyzw, r0.xyzw);
  r2.xyzw = cb12[1].xyzw * r4.yyyy;
  r2.xyzw = cb12[0].xyzw * r4.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r4.zzzz + r2.xyzw;
  o5.xyzw = cb12[14].xyzw + r2.xyzw;
  o4.xyz = cb12[7].xyz + r4.xyz;
  r0.xyw = cb0[8].xxx * r3.xyz + v1.xyz;
  r1.w = dot(r0.xyw, r0.xyw);
  r1.w = rsqrt(r1.w);
  r0.xyw = r1.www * r0.xyw;
  r2.x = dot(r7.xyz, r0.xyw);
  r2.y = dot(r8.xyz, r0.xyw);
  r2.z = dot(r9.xyz, r0.xyw);
  r0.xyw = cb0[8].xxx * r1.xyz + v2.xyz;
  r1.x = dot(r0.xyw, r0.xyw);
  r1.x = rsqrt(r1.x);
  r0.xyw = r1.xxx * r0.xyw;
  r1.x = dot(r7.xyz, r0.xyw);
  r1.y = dot(r8.xyz, r0.xyw);
  r1.z = dot(r9.xyz, r0.xyw);
  r0.xyw = r2.zxy * r1.yzx;
  r0.xyw = r2.yzx * r1.zxy + -r0.xyw;
  o2.xyz = v2.www * r0.xyw;
  r0.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r0.w = saturate(cb1[7].z * r2.z);
  o0.w = saturate(cb1[7].w + r0.w);
  r0.w = 32767.0996 * v1.w;
  r0.w = (int)r0.w;
  r1.w = (uint)r0.w >> 3;
  r1.w = (int)r1.w & 4095;
  r0.w = (int)r0.w & 7;
  r0.w = (int)r0.w;
  o2.w = 0.100000001 + r0.w;
  r3.xyzw = t1.Load(r1.w).xyzw;
  r3.yw = (uint2)r3.yw << int2(8,8);
  r3.xy = (int2)r3.yw | (int2)r3.xz;
  r3.xy = f16tof32(r3.xy);
  o3.zw = r3.xy * r0.xy;
  o0.xyz = r2.xyz;
  o1.w = r0.z;
  o1.xyz = r1.xyz;
  o3.xy = r0.xy;
  return;
}