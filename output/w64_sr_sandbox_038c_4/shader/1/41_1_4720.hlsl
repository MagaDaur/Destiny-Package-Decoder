// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.xyzw = t0.Load(r0.x).xyzw;
  r1.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r2.xyz = cb0[0].xyz * r1.xyz;
  r3.xyz = max(cb0[0].xyz, float3(9.99999975e-005,9.99999975e-005,9.99999975e-005));
  r3.xyz = float3(1,1,1) / r3.xyz;
  r4.xyz = v1.xyz * r3.xyz;
  r5.xyz = v1.xyz * r3.xyz + -v1.xyz;
  r6.xyz = cb0[0].xyz * v2.xyz + -v2.xyz;
  r7.xyz = cb0[0].xyz * r1.xyz + -r1.xyz;
  r1.w = cb0[10].x * 3.14100003;
  sincos(r1.w, r8.x, r9.x);
  r1.w = dot(cb0[9].xyz, cb0[9].xyz);
  r1.w = rsqrt(r1.w);
  r8.yzw = cb0[9].xyz * r1.www;
  r8.xyz = r8.xxx * r8.yzw;
  r9.yzw = -r8.yzx * r2.zxy;
  r10.xyz = r2.yzx * -r8.zxy + -r9.yzw;
  r1.w = dot(r2.xyz, -r8.xyz);
  r10.w = -r1.w;
  r2.xyz = r9.xxx * r2.xyz;
  r2.w = 0;
  r2.xyzw = r10.xyzw + r2.xyzw;
  r9.yzw = r8.zxy * r2.yzx;
  r9.yzw = r8.yzx * r2.zxy + -r9.yzw;
  r2.xyz = r9.xxx * r2.xyz + r9.yzw;
  r2.xyz = r2.www * r8.xyz + r2.xyz;
  r9.yzw = -r8.yzx * r4.zxy;
  r10.xyz = r4.yzx * -r8.zxy + -r9.yzw;
  r1.w = dot(r4.xyz, -r8.xyz);
  r10.w = -r1.w;
  r4.xyz = r9.xxx * r4.xyz;
  r4.w = 0;
  r4.xyzw = r10.xyzw + r4.xyzw;
  r9.yzw = r8.zxy * r4.yzx;
  r9.yzw = r8.yzx * r4.zxy + -r9.yzw;
  r4.xyz = r9.xxx * r4.xyz + r9.yzw;
  r4.xyz = r4.www * r8.xyz + r4.xyz;
  r3.xyz = -v1.xyz * r3.xyz + r4.xyz;
  r9.yzw = v2.zxy * -r8.yzx;
  r10.xyz = v2.yzx * -r8.zxy + -r9.yzw;
  r1.w = dot(v2.xyz, -r8.xyz);
  r10.w = -r1.w;
  r11.xyz = v2.xyz;
  r11.w = 0;
  r10.xyzw = r9.xxxx * r11.xyzw + r10.xyzw;
  r9.yzw = r10.yzx * r8.zxy;
  r9.yzw = r8.yzx * r10.zxy + -r9.yzw;
  r9.xyz = r9.xxx * r10.xyz + r9.yzw;
  r8.xyz = r10.www * r8.xyz + r9.xyz;
  r8.xyz = -v2.xyz + r8.xyz;
  r9.xyz = -cb0[0].xyz * r1.xyz + r2.xyz;
  r1.w = r0.y * cb0[13].x + cb0[12].x;
  r1.w = 3.14100003 * r1.w;
  sincos(r1.w, r10.x, r12.x);
  r1.w = dot(cb0[11].xyz, cb0[11].xyz);
  r1.w = rsqrt(r1.w);
  r10.yzw = cb0[11].xyz * r1.www;
  r10.xyz = r10.xxx * r10.yzw;
  r12.yzw = -r10.yzx * r2.zxy;
  r13.xyz = r2.yzx * -r10.zxy + -r12.yzw;
  r1.w = dot(r2.xyz, -r10.xyz);
  r13.w = -r1.w;
  r14.xyz = r12.xxx * r2.xyz;
  r14.w = 0;
  r13.xyzw = r14.xyzw + r13.xyzw;
  r12.yzw = r13.yzx * r10.zxy;
  r12.yzw = r10.yzx * r13.zxy + -r12.yzw;
  r12.yzw = r12.xxx * r13.xyz + r12.yzw;
  r12.yzw = r13.www * r10.xyz + r12.yzw;
  r13.xyz = -r10.yzx * r4.zxy;
  r13.xyz = r4.yzx * -r10.zxy + -r13.xyz;
  r1.w = dot(r4.xyz, -r10.xyz);
  r13.w = -r1.w;
  r14.xyz = r12.xxx * r4.xyz;
  r14.w = 0;
  r13.xyzw = r14.xyzw + r13.xyzw;
  r14.xyz = r13.yzx * r10.zxy;
  r14.xyz = r10.yzx * r13.zxy + -r14.xyz;
  r13.xyz = r12.xxx * r13.xyz + r14.xyz;
  r13.xyz = r13.www * r10.xyz + r13.xyz;
  r4.xyz = r13.xyz + -r4.xyz;
  r14.xyz = v2.zxy * -r10.yzx;
  r14.xyz = v2.yzx * -r10.zxy + -r14.xyz;
  r1.w = dot(v2.xyz, -r10.xyz);
  r14.w = -r1.w;
  r14.xyzw = r12.xxxx * r11.xyzw + r14.xyzw;
  r15.xyz = r14.yzx * r10.zxy;
  r15.xyz = r10.yzx * r14.zxy + -r15.xyz;
  r14.xyz = r12.xxx * r14.xyz + r15.xyz;
  r10.xyz = r14.www * r10.xyz + r14.xyz;
  r10.xyz = -v2.xyz + r10.xyz;
  r2.xyz = r12.yzw + -r2.xyz;
  r1.w = r0.y * cb0[7].x + cb0[15].x;
  r1.w = 3.14100003 * r1.w;
  sincos(r1.w, r12.x, r14.x);
  r1.w = dot(cb0[14].xyz, cb0[14].xyz);
  r1.w = rsqrt(r1.w);
  r14.yzw = cb0[14].xyz * r1.www;
  r14.yzw = r14.yzw * r12.xxx;
  r15.xyz = -r14.zwy * r12.wyz;
  r15.xyz = r12.zwy * -r14.wyz + -r15.xyz;
  r1.w = dot(r12.yzw, -r14.yzw);
  r15.w = -r1.w;
  r16.xyz = r14.xxx * r12.yzw;
  r16.w = 0;
  r15.xyzw = r16.xyzw + r15.xyzw;
  r16.xyz = r15.yzx * r14.wyz;
  r16.xyz = r14.zwy * r15.zxy + -r16.xyz;
  r15.xyz = r14.xxx * r15.xyz + r16.xyz;
  r15.xyz = r15.www * r14.yzw + r15.xyz;
  r16.xyz = -r14.zwy * r13.zxy;
  r16.xyz = r13.yzx * -r14.wyz + -r16.xyz;
  r1.w = dot(r13.xyz, -r14.yzw);
  r16.w = -r1.w;
  r17.xyz = r14.xxx * r13.xyz;
  r17.w = 0;
  r16.xyzw = r17.xyzw + r16.xyzw;
  r17.xyz = r16.yzx * r14.wyz;
  r17.xyz = r14.zwy * r16.zxy + -r17.xyz;
  r16.xyz = r14.xxx * r16.xyz + r17.xyz;
  r16.xyz = r16.www * r14.yzw + r16.xyz;
  r13.xyz = r16.xyz + -r13.xyz;
  r16.xyz = v2.zxy * -r14.zwy;
  r16.xyz = v2.yzx * -r14.wyz + -r16.xyz;
  r1.w = dot(v2.xyz, -r14.yzw);
  r16.w = -r1.w;
  r11.xyzw = r14.xxxx * r11.xyzw + r16.xyzw;
  r16.xyz = r14.wyz * r11.yzx;
  r16.xyz = r14.zwy * r11.zxy + -r16.xyz;
  r11.xyz = r14.xxx * r11.xyz + r16.xyz;
  r11.xyz = r11.www * r14.yzw + r11.xyz;
  r11.xyz = -v2.xyz + r11.xyz;
  r12.xyz = r15.xyz + -r12.yzw;
  r4.xyz = r13.xyz + r4.xyz;
  r10.xyz = r11.xyz + r10.xyz;
  r2.xyz = r12.xyz + r2.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r4.xyz = r10.xyz + r8.xyz;
  r2.xyz = r9.xyz + r2.xyz;
  r3.xyz = r5.xyz + r3.xyz;
  r4.xyz = r6.xyz + r4.xyz;
  r2.xyz = r7.xyz + r2.xyz;
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
  r1.xyzw = cb12[1].xyzw * r5.yyyy;
  r1.xyzw = cb12[0].xyzw * r5.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r5.zzzz + r1.xyzw;
  r1.xyzw = cb12[14].xyzw + r1.xyzw;
  r2.xyz = v1.xyz + r3.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r3.x = dot(r8.xyz, r2.xyz);
  r3.y = dot(r9.xyz, r2.xyz);
  r3.z = dot(r10.xyz, r2.xyz);
  r2.xyz = v2.xyz + r4.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r4.x = dot(r8.xyz, r2.xyz);
  r4.y = dot(r9.xyz, r2.xyz);
  r4.z = dot(r10.xyz, r2.xyz);
  r2.xyz = r4.yzx * r3.zxy;
  r2.xyz = r3.yzx * r4.zxy + -r2.xyz;
  o2.xyz = v2.www * r2.xyz;
  r2.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
  r3.w = saturate(cb1[7].z * r3.z);
  o0.w = saturate(cb1[7].w + r3.w);
  r3.w = r2.w * cb0[1].y + cb0[1].w;
  r3.w = frac(r3.w);
  r3.w = cb0[2].z + r3.w;
  r3.w = saturate(cb0[2].y * abs(r3.w) + cb0[2].x);
  r3.w = r3.w * r0.x + cb0[3].x;
  r3.w = cb0[4].x * r3.w;
  r4.w = r2.w * cb0[5].y + cb0[5].w;
  r4.w = frac(r4.w);
  r4.w = cb0[6].z + r4.w;
  r4.w = saturate(cb0[6].y * abs(r4.w) + cb0[6].x);
  r4.w = r4.w * r0.y + cb0[7].x;
  r4.w = cb0[8].x * r4.w;
  r6.xyz = r4.www * r3.xyz;
  r6.xyz = r3.www * r3.xyz + r6.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  o4.xyz = cb12[7].xyz + r5.xyz;
  r5.xyzw = cb12[1].xyzw * r6.yyyy;
  r5.xyzw = cb12[0].xyzw * r6.xxxx + r5.xyzw;
  r5.xyzw = cb12[2].xyzw * r6.zzzz + r5.xyzw;
  o6.xyzw = r5.xyzw + r1.xyzw;
  o0.xyz = r3.xyz;
  o1.w = v0.z;
  o1.xyz = r4.xyz;
  o3.xyzw = r2.xyzw;
  o5.xyzw = r0.xyzw;
  return;
}