// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:49 2023
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
  float4 cb0[35];
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
  r1.w = cmp(0 < r0.y);
  r1.w = r1.w ? 1.000000 : 0;
  r2.xyz = -cb0[22].xyz + cb0[21].xyz;
  r2.xyz = r1.www * r2.xyz + cb0[22].xyz;
  r2.w = cb0[3].x * cb0[2].x;
  r3.x = dot(cb0[4].xyz, cb0[4].xyz);
  r3.x = sqrt(r3.x);
  r3.y = cb0[7].x * cb0[6].x;
  r3.y = cb0[5].x * r3.y;
  r3.z = max(cb0[9].x, cb0[8].x);
  r3.z = min(cb0[10].x, r3.z);
  r3.z = r3.z * r3.x;
  r3.z = r3.z * cb0[11].x + -r3.y;
  r3.y = cb0[12].x * r3.z + r3.y;
  r2.w = r2.w * r3.x + r3.y;
  r2.w = cb0[13].x * cb0[14].x + r2.w;
  r2.w = max(cb0[15].x, r2.w);
  r2.w = min(cb0[16].x, r2.w);
  r3.y = cb0[18].x + -1;
  r3.y = cmp(abs(r3.y) < 9.99999975e-006);
  r3.y = r3.y ? 1.000000 : 0;
  r3.z = -cb0[17].x + r0.x;
  r3.y = r3.y * r3.z + cb0[17].x;
  r2.w = r3.y * r2.w;
  r2.w = cb0[19].x * r2.w;
  r2.w = cb0[20].x * r2.w;
  r4.xyz = -cb0[1].xyz + cb0[0].xyz;
  r4.xyz = r1.www * r4.xyz + cb0[1].xyz;
  r2.w = 3.14100003 * r2.w;
  sincos(r2.w, r5.x, r6.x);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r4.xyz = r5.xxx * r4.xyz;
  r5.xyz = -r2.xyz + r1.xyz;
  r6.yzw = r5.zxy * -r4.yzx;
  r7.xyz = r5.yzx * -r4.zxy + -r6.yzw;
  r2.w = dot(r5.xyz, -r4.xyz);
  r7.w = -r2.w;
  r5.xyz = r6.xxx * r5.xyz;
  r5.w = 0;
  r5.xyzw = r7.xyzw + r5.xyzw;
  r6.yzw = r5.yzx * r4.zxy;
  r6.yzw = r4.yzx * r5.zxy + -r6.yzw;
  r5.xyz = r6.xxx * r5.xyz + r6.yzw;
  r5.xyz = r5.www * r4.xyz + r5.xyz;
  r6.yzw = r5.xyz + r2.xyz;
  r7.xyz = v1.zxy * -r4.yzx;
  r7.xyz = v1.yzx * -r4.zxy + -r7.xyz;
  r2.w = dot(v1.xyz, -r4.xyz);
  r7.w = -r2.w;
  r8.xyz = v1.xyz;
  r8.w = 0;
  r7.xyzw = r6.xxxx * r8.xyzw + r7.xyzw;
  r8.xyz = r7.yzx * r4.zxy;
  r8.xyz = r4.yzx * r7.zxy + -r8.xyz;
  r7.xyz = r6.xxx * r7.xyz + r8.xyz;
  r7.xyz = r7.www * r4.xyz + r7.xyz;
  r8.xyz = -v1.xyz + r7.xyz;
  r9.xyz = v2.zxy * -r4.yzx;
  r9.xyz = v2.yzx * -r4.zxy + -r9.xyz;
  r2.w = dot(v2.xyz, -r4.xyz);
  r9.w = -r2.w;
  r10.xyz = v2.xyz;
  r10.w = 0;
  r9.xyzw = r6.xxxx * r10.xyzw + r9.xyzw;
  r11.xyz = r9.yzx * r4.zxy;
  r11.xyz = r4.yzx * r9.zxy + -r11.xyz;
  r9.xyz = r6.xxx * r9.xyz + r11.xyz;
  r4.xyz = r9.www * r4.xyz + r9.xyz;
  r4.xyz = -v2.xyz + r4.xyz;
  r9.xyz = r6.yzw + -r1.xyz;
  r2.w = cb0[25].x * cb0[24].x;
  r2.w = cb0[23].x * r2.w;
  r3.z = max(cb0[27].x, cb0[26].x);
  r3.z = min(cb0[28].x, r3.z);
  r3.x = r3.z * r3.x;
  r3.x = r3.x * cb0[29].x + -r2.w;
  r2.w = cb0[30].x * r3.x + r2.w;
  r2.w = max(cb0[31].x, r2.w);
  r2.w = min(cb0[32].x, r2.w);
  r2.w = r2.w * r3.y;
  r2.w = cb0[33].x * r2.w;
  r2.w = cb0[34].x * r2.w;
  r3.xyz = cb0[1].xyz + -cb0[0].xyz;
  r3.xyz = r1.www * r3.xyz + cb0[0].xyz;
  r1.w = 3.14100003 * r2.w;
  sincos(r1.w, r6.x, r11.x);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r3.xyz = r6.xxx * r3.xyz;
  r11.yzw = r5.zxy * -r3.yzx;
  r12.xyz = r5.yzx * -r3.zxy + -r11.yzw;
  r1.w = dot(r5.xyz, -r3.xyz);
  r12.w = -r1.w;
  r5.xyz = r11.xxx * r5.xyz;
  r5.w = 0;
  r5.xyzw = r12.xyzw + r5.xyzw;
  r11.yzw = r5.yzx * r3.zxy;
  r11.yzw = r3.yzx * r5.zxy + -r11.yzw;
  r5.xyz = r11.xxx * r5.xyz + r11.yzw;
  r5.xyz = r5.www * r3.xyz + r5.xyz;
  r2.xyz = r5.xyz + r2.xyz;
  r5.xyz = r7.zxy * -r3.yzx;
  r5.xyz = r7.yzx * -r3.zxy + -r5.xyz;
  r1.w = dot(r7.xyz, -r3.xyz);
  r5.w = -r1.w;
  r12.xyz = r11.xxx * r7.xyz;
  r12.w = 0;
  r5.xyzw = r12.xyzw + r5.xyzw;
  r11.yzw = r5.yzx * r3.zxy;
  r11.yzw = r3.yzx * r5.zxy + -r11.yzw;
  r5.xyz = r11.xxx * r5.xyz + r11.yzw;
  r5.xyz = r5.www * r3.xyz + r5.xyz;
  r5.xyz = r5.xyz + -r7.xyz;
  r7.xyz = v2.zxy * -r3.yzx;
  r7.xyz = v2.yzx * -r3.zxy + -r7.xyz;
  r1.w = dot(v2.xyz, -r3.xyz);
  r7.w = -r1.w;
  r7.xyzw = r11.xxxx * r10.xyzw + r7.xyzw;
  r10.xyz = r7.yzx * r3.zxy;
  r10.xyz = r3.yzx * r7.zxy + -r10.xyz;
  r7.xyz = r11.xxx * r7.xyz + r10.xyz;
  r3.xyz = r7.www * r3.xyz + r7.xyz;
  r3.xyz = -v2.xyz + r3.xyz;
  r2.xyz = r2.xyz + -r6.yzw;
  r5.xyz = r8.xyz + r5.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r2.xyz = r9.xyz + r2.xyz;
  r1.w = 32767.0996 * v0.w;
  r1.w = (int)r1.w;
  r2.w = max((int)r1.w, (int)-r1.w);
  r3.w = cmp((int)r2.w >= 2048);
  r4.x = cmp((int)r1.w < 0);
  r4.y = (uint)v4.x << 1;
  r4.y = r4.x ? r4.y : v4.x;
  r2.w = (uint)r2.w << 3;
  r2.w = (int)r2.w + 0xffffc000;
  bitmask.w = ((~(-1 << 3)) << 0) & 0xffffffff;  r2.w = (((uint)r4.y << 0) & bitmask.w) | ((uint)r2.w & ~bitmask.w);
  r6.xyzw = t1.Load(r2.w).xyzw;
  r1.w = r3.w ? r6.x : r1.w;
  r4.y = (int)r1.w * 3;
  r4.zw = mad(int2(3,3), (int2)r1.ww, int2(1,2));
  if (r3.w != 0) {
    r6.xz = (uint2)r6.zw;
    r6.xz = float2(0.00392156886,0.00392156886) * r6.xz;
    r7.x = cb1[r4.y+8].w;
    r7.y = cb1[r4.z+8].w;
    r7.z = cb1[r4.w+8].w;
    r1.w = (int)r6.y * 3;
    r6.yw = mad(int2(3,3), (int2)r6.yy, int2(1,2));
    r8.xyz = cb1[r1.w+8].xyz * r6.zzz;
    r9.x = cb1[r1.w+8].w * r6.z;
    r9.y = cb1[r6.y+8].w * r6.z;
    r9.z = cb1[r6.w+8].w * r6.z;
    r10.xyz = cb1[r6.y+8].xyz * r6.zzz;
    r6.yzw = cb1[r6.w+8].xyz * r6.zzz;
    r8.xyz = cb1[r4.y+8].xyz * r6.xxx + r8.xyz;
    r7.xyz = r7.xyz * r6.xxx + r9.xyz;
    r9.xyz = cb1[r4.z+8].xyz * r6.xxx + r10.xyz;
    r6.xyz = cb1[r4.w+8].xyz * r6.xxx + r6.yzw;
    if (r4.x != 0) {
      r1.w = (int)r2.w + 1;
      r10.xyzw = t1.Load(r1.w).xyzw;
      r10.zw = (uint2)r10.zw;
      r10.zw = float2(0.00392156886,0.00392156886) * r10.zw;
      r11.xy = (int2)r10.xy * int2(3,3);
      r12.xyzw = mad(int4(3,3,3,3), (int4)r10.xxyy, int4(1,2,1,2));
      r13.x = cb1[r11.x+8].w * r10.z;
      r13.y = cb1[r12.x+8].w * r10.z;
      r13.z = cb1[r12.y+8].w * r10.z;
      r11.xzw = r10.zzz * cb1[r11.x+8].xyz + r8.xyz;
      r13.xyz = r13.xyz + r7.xyz;
      r14.xyz = r10.zzz * cb1[r12.x+8].xyz + r9.xyz;
      r10.xyz = r10.zzz * cb1[r12.y+8].xyz + r6.xyz;
      r15.x = cb1[r11.y+8].w * r10.w;
      r15.y = cb1[r12.z+8].w * r10.w;
      r15.z = cb1[r12.w+8].w * r10.w;
      r8.xyz = r10.www * cb1[r11.y+8].xyz + r11.xzw;
      r7.xyz = r15.xyz + r13.xyz;
      r9.xyz = r10.www * cb1[r12.z+8].xyz + r14.xyz;
      r6.xyz = r10.www * cb1[r12.w+8].xyz + r10.xyz;
    }
  } else {
    r8.xyz = cb1[r4.y+8].xyz;
    r7.x = cb1[r4.y+8].w;
    r7.y = cb1[r4.z+8].w;
    r7.z = cb1[r4.w+8].w;
    r9.xyz = cb1[r4.z+8].xyz;
    r6.xyz = cb1[r4.w+8].xyz;
  }
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = cb12[15].xyz + r7.xyz;
  r8.w = r2.x;
  r1.w = 1;
  r4.x = dot(r8.xyzw, r1.xyzw);
  r9.w = r2.y;
  r4.y = dot(r9.xyzw, r1.xyzw);
  r6.w = r2.z;
  r4.z = dot(r6.xyzw, r1.xyzw);
  r2.xyzw = cb12[1].xyzw * r4.yyyy;
  r2.xyzw = cb12[0].xyzw * r4.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r4.zzzz + r2.xyzw;
  o6.xyzw = cb12[14].xyzw + r2.xyzw;
  o4.xyz = cb12[7].xyz + r4.xyz;
  r1.xyw = v1.xyz + r5.xyz;
  r2.x = dot(r1.xyw, r1.xyw);
  r2.x = rsqrt(r2.x);
  r1.xyw = r2.xxx * r1.xyw;
  r2.x = dot(r8.xyz, r1.xyw);
  r2.y = dot(r9.xyz, r1.xyw);
  r2.z = dot(r6.xyz, r1.xyw);
  r1.xyw = v2.xyz + r3.xyz;
  r2.w = dot(r1.xyw, r1.xyw);
  r2.w = rsqrt(r2.w);
  r1.xyw = r2.www * r1.xyw;
  r3.x = dot(r8.xyz, r1.xyw);
  r3.y = dot(r9.xyz, r1.xyw);
  r3.z = dot(r6.xyz, r1.xyw);
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