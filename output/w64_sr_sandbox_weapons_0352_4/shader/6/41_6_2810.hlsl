// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:38 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[1];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[0].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = (int)cb0[23].x;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = (uint)vThreadID.x;
    r1.z = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.z;
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
    r2.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.y = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.z = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r3.x = 2.32830644e-010 * r3.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.x = (uint)r0.z;
    r3.y = 2.32830644e-010 * r4.x;
    r2.w = 2.32830644e-010 * r0.w;
    r1.w = r0.w * 6.98491959e-011 + 0.200000003;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r4.x = r0.w * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r4.y = r0.w * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r4.z = r0.z * 4.65661287e-010 + -1;
    r0.z = dot(r4.xyz, r4.xyz);
    r0.z = rsqrt(r0.z);
    r4.xyz = r4.xyz * r0.zzz;
    r4.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r4.xyz;
    r0.z = dot(r4.xyz, r4.xyz);
    r0.z = rsqrt(r0.z);
    r5.xyz = r4.xyz * r0.zzz;
    r5.xyz = float3(5,5,5) * r5.xyz;
    r6.xyz = -cb9[r0.y+32].zxy * cb9[r0.y+32].yzx;
    r6.xyz = -cb9[r0.y+32].yzx * cb9[r0.y+32].zxy + -r6.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, cb9[r0.y+32].xyz);
    r7.w = -r0.z;
    r7.xyz = cb9[r0.y+32].www * cb9[r0.y+32].xyz + r6.xyz;
    r6.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = cb9[r0.y+32].wwww * r6.xyzw + r7.xyzw;
    r0.yzw = -r6.yzx * r4.zxy;
    r7.xyz = r4.yzx * -r6.zxy + -r0.yzw;
    r0.y = dot(r4.xyz, -r6.xyz);
    r7.w = -r0.y;
    r4.xyz = r6.www * r4.xyz;
    r4.w = 0;
    r4.xyzw = r7.xyzw + r4.xyzw;
    r0.yzw = r6.zxy * r4.yzx;
    r0.yzw = r6.yzx * r4.zxy + -r0.yzw;
    r0.yzw = r6.www * r4.xyz + r0.yzw;
    r4.xyz = r4.www * r6.xyz + r0.yzw;
    r0.yzw = -r6.yzx * r5.zxy;
    r7.xyz = r5.yzx * -r6.zxy + -r0.yzw;
    r0.y = dot(r5.xyz, -r6.xyz);
    r7.w = -r0.y;
    r5.xyz = r6.www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r7.xyzw + r5.xyzw;
    r0.yzw = r6.zxy * r5.yzx;
    r0.yzw = r6.yzx * r5.zxy + -r0.yzw;
    r0.yzw = r6.www * r5.xyz + r0.yzw;
    r5.xyz = r5.www * r6.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r5.w = cb0[3].z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r4.xyzw
    r1.xy = float2(2,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r2.xyzw
    r3.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r3.xyzw
  }
  return;
}