// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
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
  float4 cb0[32];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.xyzw = t0.Load(r0.x).xyzw;
  r1.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r1.w = cmp(0 < r0.y);
  r1.w = r1.w ? 1.000000 : 0;
  r2.xyz = -cb0[18].xyz + cb0[17].xyz;
  r2.xyz = r1.www * r2.xyz + cb0[18].xyz;
  r1.w = cb0[3].x * cb0[2].x;
  r1.w = cb0[1].x * r1.w;
  r2.w = max(cb0[5].x, cb0[4].x);
  r2.w = min(cb0[6].x, r2.w);
  r3.x = dot(cb0[7].xyz, cb0[7].xyz);
  r3.x = sqrt(r3.x);
  r2.w = r3.x * r2.w;
  r2.w = r2.w * cb0[8].x + -r1.w;
  r1.w = cb0[9].x * r2.w + r1.w;
  r1.w = cb0[10].x * cb0[11].x + r1.w;
  r1.w = max(cb0[12].x, r1.w);
  r1.w = min(cb0[13].x, r1.w);
  r2.w = cb0[14].x + -1;
  r2.w = cmp(abs(r2.w) < 9.99999975e-006);
  r2.w = r2.w ? 1.000000 : 0;
  r3.y = -cb0[14].x + r0.x;
  r2.w = r2.w * r3.y + cb0[14].x;
  r1.w = r2.w * r1.w;
  r1.w = cb0[15].x * r1.w;
  r1.w = cb0[16].x * r1.w;
  r1.w = 3.14100003 * r1.w;
  sincos(r1.w, r4.x, r5.x);
  r1.w = dot(cb0[0].xyz, cb0[0].xyz);
  r1.w = rsqrt(r1.w);
  r3.yzw = cb0[0].xyz * r1.www;
  r3.yzw = r4.xxx * r3.yzw;
  r4.xyz = -r2.xyz + r1.xyz;
  r5.yzw = r4.zxy * -r3.zwy;
  r6.xyz = r4.yzx * -r3.wyz + -r5.yzw;
  r1.w = dot(r4.xyz, -r3.yzw);
  r6.w = -r1.w;
  r4.xyz = r5.xxx * r4.xyz;
  r4.w = 0;
  r4.xyzw = r6.xyzw + r4.xyzw;
  r5.yzw = r4.yzx * r3.wyz;
  r5.yzw = r3.zwy * r4.zxy + -r5.yzw;
  r4.xyz = r5.xxx * r4.xyz + r5.yzw;
  r4.xyz = r4.www * r3.yzw + r4.xyz;
  r5.yzw = r4.xyz + r2.xyz;
  r6.xyz = v1.zxy * -r3.zwy;
  r6.xyz = v1.yzx * -r3.wyz + -r6.xyz;
  r1.w = dot(v1.xyz, -r3.yzw);
  r6.w = -r1.w;
  r7.xyz = v1.xyz;
  r7.w = 0;
  r6.xyzw = r5.xxxx * r7.xyzw + r6.xyzw;
  r7.xyz = r6.yzx * r3.wyz;
  r7.xyz = r3.zwy * r6.zxy + -r7.xyz;
  r6.xyz = r5.xxx * r6.xyz + r7.xyz;
  r6.xyz = r6.www * r3.yzw + r6.xyz;
  r7.xyz = -v1.xyz + r6.xyz;
  r8.xyz = v2.zxy * -r3.zwy;
  r8.xyz = v2.yzx * -r3.wyz + -r8.xyz;
  r1.w = dot(v2.xyz, -r3.yzw);
  r8.w = -r1.w;
  r9.xyz = v2.xyz;
  r9.w = 0;
  r8.xyzw = r5.xxxx * r9.xyzw + r8.xyzw;
  r10.xyz = r8.yzx * r3.wyz;
  r10.xyz = r3.zwy * r8.zxy + -r10.xyz;
  r8.xyz = r5.xxx * r8.xyz + r10.xyz;
  r3.yzw = r8.www * r3.yzw + r8.xyz;
  r3.yzw = -v2.xyz + r3.yzw;
  r8.xyz = r5.yzw + -r1.xyz;
  r1.w = cb0[22].x * cb0[21].x;
  r1.w = cb0[20].x * r1.w;
  r4.w = max(cb0[24].x, cb0[23].x);
  r4.w = min(cb0[25].x, r4.w);
  r3.x = r4.w * r3.x;
  r3.x = r3.x * cb0[26].x + -r1.w;
  r1.w = cb0[27].x * r3.x + r1.w;
  r1.w = max(cb0[28].x, r1.w);
  r1.w = min(cb0[29].x, r1.w);
  r1.w = r1.w * r2.w;
  r1.w = cb0[30].x * r1.w;
  r1.w = cb0[31].x * r1.w;
  r1.w = 3.14100003 * r1.w;
  sincos(r1.w, r3.x, r5.x);
  r1.w = dot(cb0[19].xyz, cb0[19].xyz);
  r1.w = rsqrt(r1.w);
  r10.xyz = cb0[19].xyz * r1.www;
  r10.xyz = r10.xyz * r3.xxx;
  r11.xyz = -r10.yzx * r4.zxy;
  r11.xyz = r4.yzx * -r10.zxy + -r11.xyz;
  r1.w = dot(r4.xyz, -r10.xyz);
  r11.w = -r1.w;
  r4.xyz = r5.xxx * r4.xyz;
  r4.w = 0;
  r4.xyzw = r11.xyzw + r4.xyzw;
  r11.xyz = r10.zxy * r4.yzx;
  r11.xyz = r10.yzx * r4.zxy + -r11.xyz;
  r4.xyz = r5.xxx * r4.xyz + r11.xyz;
  r4.xyz = r4.www * r10.xyz + r4.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r4.xyz = -r10.yzx * r6.zxy;
  r4.xyz = r6.yzx * -r10.zxy + -r4.xyz;
  r1.w = dot(r6.xyz, -r10.xyz);
  r4.w = -r1.w;
  r11.xyz = r5.xxx * r6.xyz;
  r11.w = 0;
  r4.xyzw = r11.xyzw + r4.xyzw;
  r11.xyz = r10.zxy * r4.yzx;
  r11.xyz = r10.yzx * r4.zxy + -r11.xyz;
  r4.xyz = r5.xxx * r4.xyz + r11.xyz;
  r4.xyz = r4.www * r10.xyz + r4.xyz;
  r4.xyz = r4.xyz + -r6.xyz;
  r6.xyz = v2.zxy * -r10.yzx;
  r6.xyz = v2.yzx * -r10.zxy + -r6.xyz;
  r1.w = dot(v2.xyz, -r10.xyz);
  r6.w = -r1.w;
  r6.xyzw = r5.xxxx * r9.xyzw + r6.xyzw;
  r9.xyz = r10.zxy * r6.yzx;
  r9.xyz = r10.yzx * r6.zxy + -r9.xyz;
  r6.xyz = r5.xxx * r6.xyz + r9.xyz;
  r6.xyz = r6.www * r10.xyz + r6.xyz;
  r6.xyz = -v2.xyz + r6.xyz;
  r2.xyz = r2.xyz + -r5.yzw;
  r4.xyz = r7.xyz + r4.xyz;
  r3.xyz = r6.xyz + r3.yzw;
  r2.xyz = r8.xyz + r2.xyz;
  r1.w = 32767.0996 * v0.w;
  r1.w = (int)r1.w;
  r2.w = max((int)r1.w, (int)-r1.w);
  r3.w = cmp((int)r2.w >= 2048);
  r4.w = cmp((int)r1.w < 0);
  r5.x = (uint)v4.x << 1;
  r5.x = r4.w ? r5.x : v4.x;
  r2.w = (uint)r2.w << 3;
  r2.w = (int)r2.w + 0xffffc000;
  bitmask.w = ((~(-1 << 3)) << 0) & 0xffffffff;  r2.w = (((uint)r5.x << 0) & bitmask.w) | ((uint)r2.w & ~bitmask.w);
  r5.xyzw = t1.Load(r2.w).xyzw;
  r1.w = r3.w ? r5.x : r1.w;
  r5.x = (int)r1.w * 3;
  r6.xy = mad(int2(3,3), (int2)r1.ww, int2(1,2));
  if (r3.w != 0) {
    r5.zw = (uint2)r5.zw;
    r5.zw = float2(0.00392156886,0.00392156886) * r5.zw;
    r7.x = cb1[r5.x+8].w;
    r7.y = cb1[r6.x+8].w;
    r7.z = cb1[r6.y+8].w;
    r1.w = (int)r5.y * 3;
    r6.zw = mad(int2(3,3), (int2)r5.yy, int2(1,2));
    r8.xyz = cb1[r1.w+8].xyz * r5.www;
    r9.x = cb1[r1.w+8].w * r5.w;
    r9.y = cb1[r6.z+8].w * r5.w;
    r9.z = cb1[r6.w+8].w * r5.w;
    r10.xyz = cb1[r6.z+8].xyz * r5.www;
    r11.xyz = cb1[r6.w+8].xyz * r5.www;
    r8.xyz = cb1[r5.x+8].xyz * r5.zzz + r8.xyz;
    r7.xyz = r7.xyz * r5.zzz + r9.xyz;
    r9.xyz = cb1[r6.x+8].xyz * r5.zzz + r10.xyz;
    r10.xyz = cb1[r6.y+8].xyz * r5.zzz + r11.xyz;
    if (r4.w != 0) {
      r1.w = (int)r2.w + 1;
      r11.xyzw = t1.Load(r1.w).xyzw;
      r5.yz = (uint2)r11.zw;
      r5.yz = float2(0.00392156886,0.00392156886) * r5.yz;
      r6.zw = (int2)r11.xy * int2(3,3);
      r11.xyzw = mad(int4(3,3,3,3), (int4)r11.xxyy, int4(1,2,1,2));
      r12.x = cb1[r6.z+8].w * r5.y;
      r12.y = cb1[r11.x+8].w * r5.y;
      r12.z = cb1[r11.y+8].w * r5.y;
      r13.xyz = r5.yyy * cb1[r6.z+8].xyz + r8.xyz;
      r12.xyz = r12.xyz + r7.xyz;
      r14.xyz = r5.yyy * cb1[r11.x+8].xyz + r9.xyz;
      r15.xyz = r5.yyy * cb1[r11.y+8].xyz + r10.xyz;
      r16.x = cb1[r6.w+8].w * r5.z;
      r16.y = cb1[r11.z+8].w * r5.z;
      r16.z = cb1[r11.w+8].w * r5.z;
      r8.xyz = r5.zzz * cb1[r6.w+8].xyz + r13.xyz;
      r7.xyz = r16.xyz + r12.xyz;
      r9.xyz = r5.zzz * cb1[r11.z+8].xyz + r14.xyz;
      r10.xyz = r5.zzz * cb1[r11.w+8].xyz + r15.xyz;
    }
  } else {
    r8.xyz = cb1[r5.x+8].xyz;
    r7.x = cb1[r5.x+8].w;
    r7.y = cb1[r6.x+8].w;
    r7.z = cb1[r6.y+8].w;
    r9.xyz = cb1[r6.x+8].xyz;
    r10.xyz = cb1[r6.y+8].xyz;
  }
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = cb12[15].xyz + r7.xyz;
  r8.w = r2.x;
  r1.w = 1;
  r5.x = dot(r8.xyzw, r1.xyzw);
  r9.w = r2.y;
  r5.y = dot(r9.xyzw, r1.xyzw);
  r10.w = r2.z;
  r5.z = dot(r10.xyzw, r1.xyzw);
  r2.xyzw = cb12[1].xyzw * r5.yyyy;
  r2.xyzw = cb12[0].xyzw * r5.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r5.zzzz + r2.xyzw;
  o6.xyzw = cb12[14].xyzw + r2.xyzw;
  o4.xyz = cb12[7].xyz + r5.xyz;
  r1.xyw = v1.xyz + r4.xyz;
  r2.x = dot(r1.xyw, r1.xyw);
  r2.x = rsqrt(r2.x);
  r1.xyw = r2.xxx * r1.xyw;
  r2.x = dot(r8.xyz, r1.xyw);
  r2.y = dot(r9.xyz, r1.xyw);
  r2.z = dot(r10.xyz, r1.xyw);
  r1.xyw = v2.xyz + r3.xyz;
  r2.w = dot(r1.xyw, r1.xyw);
  r2.w = rsqrt(r2.w);
  r1.xyw = r2.www * r1.xyw;
  r3.x = dot(r8.xyz, r1.xyw);
  r3.y = dot(r9.xyz, r1.xyw);
  r3.z = dot(r10.xyz, r1.xyw);
  r1.xyw = r3.yzx * r2.zxy;
  r1.xyw = r2.yzx * r3.zxy + -r1.xyw;
  o2.xyz = v2.www * r1.xyw;
  r1.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r1.w = saturate(cb1[7].z * r2.z);
  o0.w = saturate(cb1[7].w + r1.w);
  r1.w = 32767.0996 * v1.w;
  r1.w = (int)r1.w;
  r2.w = (uint)r1.w >> 3;
  r2.w = (int)r2.w & 4095;
  r1.w = (int)r1.w & 7;
  r1.w = (int)r1.w;
  o2.w = 0.100000001 + r1.w;
  r4.xyzw = t1.Load(r2.w).xyzw;
  r4.yw = (uint2)r4.yw << int2(8,8);
  r4.xy = (int2)r4.yw | (int2)r4.xz;
  r4.xy = f16tof32(r4.xy);
  o3.zw = r4.xy * r1.xy;
  o0.xyz = r2.xyz;
  o1.w = r1.z;
  o1.xyz = r3.xyz;
  o3.xy = r1.xy;
  o5.xyzw = r0.xyzw;
  return;
}