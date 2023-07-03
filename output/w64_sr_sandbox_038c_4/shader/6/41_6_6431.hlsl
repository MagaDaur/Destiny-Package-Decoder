// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:00 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[1].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = (uint)vThreadID.x;
    r1.y = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.y;
    r0.z = (uint)r0.z;
    r0.w = (int)r0.z ^ 61;
    r0.z = (uint)r0.z >> 16;
    r0.z = (int)r0.z ^ (int)r0.w;
    r0.z = (int)r0.z * 9;
    r0.w = (uint)r0.z >> 4;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = (int)r0.z * 0x27d4eb2d;
    r0.w = (uint)r0.z >> 15;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r1.w = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.y = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.z;
    r4.x = 2.32830644e-010 * r3.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.z;
    r4.y = 2.32830644e-010 * r3.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.z;
    r4.z = 2.32830644e-010 * r3.z;
    r2.zw = float2(2.32830644e-010,2.32830644e-010) * r3.xy;
    r3.y = r3.y * -4.63045213e-010 + 2.98876405;
    r3.z = r2.w * r2.w;
    r3.y = r3.y * r3.z;
    r3.y = min(1, r3.y);
    r1.z = r3.y * 0.400000036 + 0.800000012;
    r3.y = cb10[0].x + 0.25;
    r3.y = (int)r3.y;
    r3.z = round(r2.y);
    r0.w = r0.w * 2.32830644e-010 + -r3.z;
    r3.z = abs(r0.w) * -16 + 8;
    r0.w = r3.z * r0.w;
    r3.z = abs(r0.w) * 0.224999994 + 0.774999976;
    r0.w = r3.z * r0.w;
    r5.x = 0.100000001 * r0.w;
    r0.w = r3.x * 2.32830644e-010 + 0.25;
    r3.x = round(r0.w);
    r0.w = -r3.x + r0.w;
    r3.x = abs(r0.w) * -16 + 8;
    r0.w = r3.x * r0.w;
    r3.x = abs(r0.w) * 0.224999994 + 0.774999976;
    r0.w = r3.x * r0.w;
    r5.y = 0.300000012 * r0.w;
    r5.zw = float2(0,0);
    r3.xzw = float3(0,0.699999988,-0.200000003) + r5.wxy;
    r6.xyz = -cb9[r3.y+32].yzx * r3.xzw;
    r6.xyz = r3.wxz * -cb9[r3.y+32].zxy + -r6.xyz;
    r0.w = dot(r3.zw, -cb9[r3.y+32].xy);
    r6.w = -r0.w;
    r5.xyzw = float4(0.699999988,-0.200000003,0,0) + r5.xyzw;
    r5.xyzw = cb9[r3.y+32].wwww * r5.xyzw + r6.xyzw;
    r3.xzw = cb9[r3.y+32].zxy * r5.yzx;
    r3.xzw = cb9[r3.y+32].yzx * r5.zxy + -r3.xzw;
    r3.xzw = cb9[r3.y+32].www * r5.xyz + r3.xzw;
    r3.xzw = r5.www * cb9[r3.y+32].xyz + r3.xzw;
    r3.xzw = cb9[r3.y+0].xyz + r3.xzw;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r5.x = r0.w * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r5.y = r0.w * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r5.z = r0.z * 4.65661287e-010 + -1;
    r0.z = dot(r5.xyz, r5.xyz);
    r0.z = rsqrt(r0.z);
    r5.xyz = r5.xyz * r0.zzz;
    r5.xyz = float3(0.00499999989,0.00499999989,0.00499999989) * r5.xyz;
    r6.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r6.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r6.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r6.w = -r0.z;
    r7.xyz = cb9[r0.y+0].xyz;
    r7.w = 0;
    r6.xyzw = cb9[r0.y+32].wwww * r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r0.y+32].zxy * r6.yzx;
    r7.xyz = -cb9[r0.y+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.y+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * -cb9[r0.y+32].xyz + r6.xyz;
    r7.xyz = -cb9[r0.y+32].zxy * cb9[r3.y+32].yzx;
    r7.xyz = -cb9[r0.y+32].yzx * cb9[r3.y+32].zxy + -r7.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, cb9[r3.y+32].xyz);
    r8.w = -r0.z;
    r8.xyz = cb9[r0.y+32].www * cb9[r3.y+32].xyz + r7.xyz;
    r7.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r7.xyzw = cb9[r3.y+32].wwww * r7.xyzw + r8.xyzw;
    r8.xyz = cb9[r0.y+32].yzx * r3.wxz;
    r8.xyz = r3.zwx * cb9[r0.y+32].zxy + -r8.xyz;
    r0.z = dot(r3.xzw, cb9[r0.y+32].xyz);
    r8.w = -r0.z;
    r3.xyz = cb9[r0.y+32].www * r3.xzw;
    r3.w = 0;
    r3.xyzw = r8.xyzw + r3.xyzw;
    r8.xyz = -cb9[r0.y+32].zxy * r3.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r3.zxy + -r8.xyz;
    r3.xyz = cb9[r0.y+32].www * r3.xyz + r8.xyz;
    r0.yzw = r3.www * -cb9[r0.y+32].xyz + r3.xyz;
    r3.xyz = -r6.xyz + r0.yzw;
    r0.yzw = -r7.yzx * r5.zxy;
    r6.xyz = r5.yzx * -r7.zxy + -r0.yzw;
    r0.y = dot(r5.xyz, -r7.xyz);
    r6.w = -r0.y;
    r5.xyz = r7.www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r6.xyzw + r5.xyzw;
    r0.yzw = r7.zxy * r5.yzx;
    r0.yzw = r7.yzx * r5.zxy + -r0.yzw;
    r0.yzw = r7.www * r5.xyz + r0.yzw;
    r5.xyz = r5.www * r7.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r3.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r2.xyzw
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r4.xyzw
  }
  return;
}