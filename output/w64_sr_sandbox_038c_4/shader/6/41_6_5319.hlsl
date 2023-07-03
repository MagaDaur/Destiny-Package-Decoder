// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:03 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[2].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = (int)cb0[23].x;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = cb10[1].x + 0.25;
    r0.w = cmp(cb0[23].x < cb0[24].x);
    r0.w = r0.w ? cb0[23].x : 0;
    r0.zw = (int2)r0.zw;
    r0.z = (int)r0.w + (int)r0.z;
    r0.w = (uint)vThreadID.x;
    r1.y = cb0[19].x + r0.w;
    r0.w = cb0[21].x + r1.y;
    r0.w = (uint)r0.w;
    r2.x = (int)r0.w ^ 61;
    r0.w = (uint)r0.w >> 16;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = (int)r0.w * 9;
    r2.x = (uint)r0.w >> 4;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = (int)r0.w * 0x27d4eb2d;
    r2.x = (uint)r0.w >> 15;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r1.w = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r2.x = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r2.y = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r2.z = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r2.w = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r1.z = r3.x * 4.65661294e-011 + 0.200000003;
    r4.xyz = float3(2.32830644e-010,2.32830644e-010,2.32830644e-010) * r3.xyz;
    r3.w = r3.y * 1.86264515e-009 + -4;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r5.x = (uint)r0.w;
    r5.x = r5.x * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r5.w = (uint)r0.w;
    r5.y = r5.w * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r5.z = r0.w * 4.65661287e-010 + -1;
    r0.w = dot(r5.xyz, r5.xyz);
    r0.w = rsqrt(r0.w);
    r5.xyz = r5.xyz * r0.www;
    r5.xyz = float3(0.200000003,0.200000003,0.200000003) * r5.xyz;
    r0.w = dot(r5.xyz, r5.xyz);
    r0.w = rsqrt(r0.w);
    r6.xyz = r5.xyz * r0.www;
    r6.xyz = float3(0.00100000005,0.00100000005,0.00100000005) * r6.xyz;
    r7.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r7.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r7.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r7.w = -r0.w;
    r8.xyz = cb9[r0.z+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.z+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.z+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.z+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.z+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * -cb9[r0.z+32].xyz + r7.xyz;
    r8.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r8.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r8.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r9.w = -r0.w;
    r9.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r8.xyz;
    r8.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r8.xyzw = cb9[r0.y+32].wwww * r8.xyzw + r9.xyzw;
    r9.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r9.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r9.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r9.w = -r0.w;
    r10.xyz = cb9[r0.y+0].xyz;
    r10.w = 0;
    r9.xyzw = cb9[r0.z+32].wwww * r10.xyzw + r9.xyzw;
    r10.xyz = -cb9[r0.z+32].zxy * r9.yzx;
    r10.xyz = -cb9[r0.z+32].yzx * r9.zxy + -r10.xyz;
    r9.xyz = cb9[r0.z+32].www * r9.xyz + r10.xyz;
    r0.yzw = r9.www * -cb9[r0.z+32].xyz + r9.xyz;
    r0.yzw = -r7.xyz + r0.yzw;
    r7.xyz = -r8.yzx * r5.zxy;
    r7.xyz = r5.yzx * -r8.zxy + -r7.xyz;
    r5.w = dot(r5.xyz, -r8.xyz);
    r7.w = -r5.w;
    r5.xyz = r8.www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r7.xyzw + r5.xyzw;
    r7.xyz = r8.zxy * r5.yzx;
    r7.xyz = r8.yzx * r5.zxy + -r7.xyz;
    r5.xyz = r8.www * r5.xyz + r7.xyz;
    r5.xyz = r5.www * r8.xyz + r5.xyz;
    r3.xyz = r5.xyz + r0.yzw;
    r0.yzw = -r8.yzx * r6.zxy;
    r5.xyz = r6.yzx * -r8.zxy + -r0.yzw;
    r0.y = dot(r6.xyz, -r8.xyz);
    r5.w = -r0.y;
    r6.xyz = r8.www * r6.xyz;
    r6.w = 0;
    r5.xyzw = r6.xyzw + r5.xyzw;
    r0.yzw = r8.zxy * r5.yzx;
    r0.yzw = r8.yzx * r5.zxy + -r0.yzw;
    r0.yzw = r8.www * r5.xyz + r0.yzw;
    r5.xyz = r5.www * r8.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
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