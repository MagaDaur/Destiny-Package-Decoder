// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
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
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.xy = t0.Load(r0.x).xy;
  r1.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r2.xyz = cb0[0].xyz * r1.xyz;
  r3.xyz = max(cb0[0].xyz, float3(9.99999975e-005,9.99999975e-005,9.99999975e-005));
  r3.xyz = float3(1,1,1) / r3.xyz;
  r4.xyz = v1.xyz * r3.xyz;
  r5.xyz = v1.xyz * r3.xyz + -v1.xyz;
  r6.xyz = cb0[0].xyz * r1.xyz + -r1.xyz;
  r0.z = cb0[10].x * 3.14100003;
  sincos(r0.z, r7.x, r8.x);
  r0.z = dot(cb0[9].xyz, cb0[9].xyz);
  r0.z = rsqrt(r0.z);
  r7.yzw = cb0[9].xyz * r0.zzz;
  r7.xyz = r7.xxx * r7.yzw;
  r8.yzw = -r7.yzx * r2.zxy;
  r9.xyz = r2.yzx * -r7.zxy + -r8.yzw;
  r0.z = dot(r2.xyz, -r7.xyz);
  r9.w = -r0.z;
  r2.xyz = r8.xxx * r2.xyz;
  r2.w = 0;
  r2.xyzw = r9.xyzw + r2.xyzw;
  r8.yzw = r7.zxy * r2.yzx;
  r8.yzw = r7.yzx * r2.zxy + -r8.yzw;
  r2.xyz = r8.xxx * r2.xyz + r8.yzw;
  r2.xyz = r2.www * r7.xyz + r2.xyz;
  r8.yzw = -r7.yzx * r4.zxy;
  r9.xyz = r4.yzx * -r7.zxy + -r8.yzw;
  r0.z = dot(r4.xyz, -r7.xyz);
  r9.w = -r0.z;
  r4.xyz = r8.xxx * r4.xyz;
  r4.w = 0;
  r4.xyzw = r9.xyzw + r4.xyzw;
  r8.yzw = r7.zxy * r4.yzx;
  r8.yzw = r7.yzx * r4.zxy + -r8.yzw;
  r4.xyz = r8.xxx * r4.xyz + r8.yzw;
  r4.xyz = r4.www * r7.xyz + r4.xyz;
  r3.xyz = -v1.xyz * r3.xyz + r4.xyz;
  r7.xyz = -cb0[0].xyz * r1.xyz + r2.xyz;
  r0.z = r0.y * cb0[13].x + cb0[12].x;
  r0.z = 3.14100003 * r0.z;
  sincos(r0.z, r8.x, r9.x);
  r0.z = dot(cb0[11].xyz, cb0[11].xyz);
  r0.z = rsqrt(r0.z);
  r8.yzw = cb0[11].xyz * r0.zzz;
  r8.xyz = r8.xxx * r8.yzw;
  r9.yzw = -r8.yzx * r2.zxy;
  r10.xyz = r2.yzx * -r8.zxy + -r9.yzw;
  r0.z = dot(r2.xyz, -r8.xyz);
  r10.w = -r0.z;
  r11.xyz = r9.xxx * r2.xyz;
  r11.w = 0;
  r10.xyzw = r11.xyzw + r10.xyzw;
  r9.yzw = r10.yzx * r8.zxy;
  r9.yzw = r8.yzx * r10.zxy + -r9.yzw;
  r9.yzw = r9.xxx * r10.xyz + r9.yzw;
  r9.yzw = r10.www * r8.xyz + r9.yzw;
  r10.xyz = -r8.yzx * r4.zxy;
  r10.xyz = r4.yzx * -r8.zxy + -r10.xyz;
  r0.z = dot(r4.xyz, -r8.xyz);
  r10.w = -r0.z;
  r11.xyz = r9.xxx * r4.xyz;
  r11.w = 0;
  r10.xyzw = r11.xyzw + r10.xyzw;
  r11.xyz = r10.yzx * r8.zxy;
  r11.xyz = r8.yzx * r10.zxy + -r11.xyz;
  r10.xyz = r9.xxx * r10.xyz + r11.xyz;
  r8.xyz = r10.www * r8.xyz + r10.xyz;
  r4.xyz = r8.xyz + -r4.xyz;
  r2.xyz = r9.yzw + -r2.xyz;
  r0.z = r0.y * cb0[7].x + cb0[15].x;
  r0.z = 3.14100003 * r0.z;
  sincos(r0.z, r9.x, r10.x);
  r0.z = dot(cb0[14].xyz, cb0[14].xyz);
  r0.z = rsqrt(r0.z);
  r10.yzw = cb0[14].xyz * r0.zzz;
  r10.yzw = r10.yzw * r9.xxx;
  r11.xyz = -r10.zwy * r9.wyz;
  r11.xyz = r9.zwy * -r10.wyz + -r11.xyz;
  r0.z = dot(r9.yzw, -r10.yzw);
  r11.w = -r0.z;
  r12.xyz = r10.xxx * r9.yzw;
  r12.w = 0;
  r11.xyzw = r12.xyzw + r11.xyzw;
  r12.xyz = r11.yzx * r10.wyz;
  r12.xyz = r10.zwy * r11.zxy + -r12.xyz;
  r11.xyz = r10.xxx * r11.xyz + r12.xyz;
  r11.xyz = r11.www * r10.yzw + r11.xyz;
  r12.xyz = -r10.zwy * r8.zxy;
  r12.xyz = r8.yzx * -r10.wyz + -r12.xyz;
  r0.z = dot(r8.xyz, -r10.yzw);
  r12.w = -r0.z;
  r13.xyz = r10.xxx * r8.xyz;
  r13.w = 0;
  r12.xyzw = r13.xyzw + r12.xyzw;
  r13.xyz = r12.yzx * r10.wyz;
  r13.xyz = r10.zwy * r12.zxy + -r13.xyz;
  r12.xyz = r10.xxx * r12.xyz + r13.xyz;
  r10.xyz = r12.www * r10.yzw + r12.xyz;
  r8.xyz = r10.xyz + -r8.xyz;
  r9.xyz = r11.xyz + -r9.yzw;
  r4.xyz = r8.xyz + r4.xyz;
  r2.xyz = r9.xyz + r2.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r2.xyz = r7.xyz + r2.xyz;
  r3.xyz = r5.xyz + r3.xyz;
  r2.xyz = r6.xyz + r2.xyz;
  r0.z = 32767.0996 * v0.w;
  r0.z = (int)r0.z;
  r0.w = max((int)r0.z, (int)-r0.z);
  r1.w = cmp((int)r0.w >= 2048);
  r2.w = cmp((int)r0.z < 0);
  r3.w = (uint)v4.x << 1;
  r3.w = r2.w ? r3.w : v4.x;
  r0.w = (uint)r0.w << 3;
  r0.w = (int)r0.w + 0xffffc000;
  bitmask.w = ((~(-1 << 3)) << 0) & 0xffffffff;  r0.w = (((uint)r3.w << 0) & bitmask.w) | ((uint)r0.w & ~bitmask.w);
  r4.xyzw = t1.Load(r0.w).xyzw;
  r0.z = r1.w ? r4.x : r0.z;
  r3.w = (int)r0.z * 3;
  r5.xy = mad(int2(3,3), (int2)r0.zz, int2(1,2));
  if (r1.w != 0) {
    r4.xz = (uint2)r4.zw;
    r4.xz = float2(0.00392156886,0.00392156886) * r4.xz;
    r6.x = cb1[r3.w+8].w;
    r6.y = cb1[r5.x+8].w;
    r6.z = cb1[r5.y+8].w;
    r0.z = (int)r4.y * 3;
    r4.yw = mad(int2(3,3), (int2)r4.yy, int2(1,2));
    r7.xyz = cb1[r0.z+8].xyz * r4.zzz;
    r8.x = cb1[r0.z+8].w * r4.z;
    r8.y = cb1[r4.y+8].w * r4.z;
    r8.z = cb1[r4.w+8].w * r4.z;
    r9.xyz = cb1[r4.y+8].xyz * r4.zzz;
    r4.yzw = cb1[r4.w+8].xyz * r4.zzz;
    r7.xyz = cb1[r3.w+8].xyz * r4.xxx + r7.xyz;
    r6.xyz = r6.xyz * r4.xxx + r8.xyz;
    r8.xyz = cb1[r5.x+8].xyz * r4.xxx + r9.xyz;
    r4.xyz = cb1[r5.y+8].xyz * r4.xxx + r4.yzw;
    if (r2.w != 0) {
      r0.z = (int)r0.w + 1;
      r9.xyzw = t1.Load(r0.z).xyzw;
      r0.zw = (uint2)r9.zw;
      r0.zw = float2(0.00392156886,0.00392156886) * r0.zw;
      r5.zw = (int2)r9.xy * int2(3,3);
      r9.xyzw = mad(int4(3,3,3,3), (int4)r9.xxyy, int4(1,2,1,2));
      r10.x = cb1[r5.z+8].w * r0.z;
      r10.y = cb1[r9.x+8].w * r0.z;
      r10.z = cb1[r9.y+8].w * r0.z;
      r11.xyz = r0.zzz * cb1[r5.z+8].xyz + r7.xyz;
      r10.xyz = r10.xyz + r6.xyz;
      r12.xyz = r0.zzz * cb1[r9.x+8].xyz + r8.xyz;
      r13.xyz = r0.zzz * cb1[r9.y+8].xyz + r4.xyz;
      r14.x = cb1[r5.w+8].w * r0.w;
      r14.y = cb1[r9.z+8].w * r0.w;
      r14.z = cb1[r9.w+8].w * r0.w;
      r7.xyz = r0.www * cb1[r5.w+8].xyz + r11.xyz;
      r6.xyz = r14.xyz + r10.xyz;
      r8.xyz = r0.www * cb1[r9.z+8].xyz + r12.xyz;
      r4.xyz = r0.www * cb1[r9.w+8].xyz + r13.xyz;
    }
  } else {
    r7.xyz = cb1[r3.w+8].xyz;
    r6.x = cb1[r3.w+8].w;
    r6.y = cb1[r5.x+8].w;
    r6.z = cb1[r5.y+8].w;
    r8.xyz = cb1[r5.x+8].xyz;
    r4.xyz = cb1[r5.y+8].xyz;
  }
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = cb12[15].xyz + r6.xyz;
  r7.w = r2.x;
  r1.w = 1;
  r5.x = dot(r7.xyzw, r1.xyzw);
  r8.w = r2.y;
  r5.y = dot(r8.xyzw, r1.xyzw);
  r4.w = r2.z;
  r5.z = dot(r4.xyzw, r1.xyzw);
  r1.xyzw = cb12[1].xyzw * r5.yyyy;
  r1.xyzw = cb12[0].xyzw * r5.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r5.zzzz + r1.xyzw;
  r1.xyzw = cb12[14].xyzw + r1.xyzw;
  r2.xyz = v1.xyz + r3.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r3.x = dot(r7.xyz, r2.xyz);
  r3.y = dot(r8.xyz, r2.xyz);
  r3.z = dot(r4.xyz, r2.xyz);
  r0.zw = v3.xy * cb1[6].xy + cb1[6].zw;
  r2.x = r0.w * cb0[1].y + cb0[1].w;
  r2.x = frac(r2.x);
  r2.x = cb0[2].z + r2.x;
  r2.x = saturate(cb0[2].y * abs(r2.x) + cb0[2].x);
  r0.x = r2.x * r0.x + cb0[3].x;
  r0.x = cb0[4].x * r0.x;
  r2.x = r0.w * cb0[5].y + cb0[5].w;
  r2.x = frac(r2.x);
  r2.x = cb0[6].z + r2.x;
  r2.x = saturate(cb0[6].y * abs(r2.x) + cb0[6].x);
  r0.y = r2.x * r0.y + cb0[7].x;
  r0.y = cb0[8].x * r0.y;
  r2.xyz = r0.yyy * r3.xyz;
  r2.xyz = r0.xxx * r3.xyz + r2.xyz;
  r3.xyz = r5.xyz + r2.xyz;
  o1.xyz = cb12[7].xyz + r3.xyz;
  r3.xyzw = cb12[1].xyzw * r2.yyyy;
  r3.xyzw = cb12[0].xyzw * r2.xxxx + r3.xyzw;
  r2.xyzw = cb12[2].xyzw * r2.zzzz + r3.xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.xyzw = t2.Load(float4(0,0,0,0)).xyzw;
  r0.xy = r1.xy / r1.ww;
  r1.xy = r2.xy * float2(2,2) + r2.zw;
  r0.x = r0.x * r2.z + r1.x;
  r2.x = -1 + r0.x;
  r0.x = -1 + r1.y;
  r2.y = r0.y * r2.w + -r0.x;
  o2.xy = r2.xy * r1.ww;
  o2.zw = r1.zw;
  o0.xy = r0.zw;
  return;
}