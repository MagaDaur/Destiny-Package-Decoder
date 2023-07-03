// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:35 2023
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
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r2.w = 2.32830644e-010 * r3.x;
    r2.z = 2.32830644e-010 * r0.w;
    r3.xyz = r0.www * float3(-7.27595761e-011,2.01212241e-011,4.65661287e-010) + float3(1.3125,-1.08642006,-3);
    r0.w = r2.z * r2.z;
    r3.x = r3.x * r0.w;
    r3.x = min(1, r3.x);
    r3.x = r3.x * 9.75 + 2.25;
    r3.yz = r3.yz * r0.ww + float2(1,1);
    r3.yz = max(float2(0,0), r3.yz);
    r1.xz = r3.yz * float2(85,0.149999991) + float2(5,0.200000003);
    r0.w = 0.0174529999 * r1.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r3.y = 1.46291812e-009 * r3.y;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = r0.z * r0.w;
    r0.z = 2.32830644e-010 * r0.z;
    sincos(r0.z, r4.x, r5.x);
    sincos(r3.y, r6.x, r7.x);
    r5.y = r6.x * r4.x;
    r5.z = r7.x * r4.x;
    r3.xyz = r5.xyz * r3.xxx;
    r4.xyz = -cb9[r0.y+32].zxy * cb9[r0.y+32].yzx;
    r4.xyz = -cb9[r0.y+32].yzx * cb9[r0.y+32].zxy + -r4.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, cb9[r0.y+32].xyz);
    r5.w = -r0.z;
    r5.xyz = cb9[r0.y+32].www * cb9[r0.y+32].xyz + r4.xyz;
    r4.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r4.xyzw = cb9[r0.y+32].wwww * r4.xyzw + r5.xyzw;
    r0.yzw = -r4.yzx * r3.zxy;
    r5.xyz = r3.yzx * -r4.zxy + -r0.yzw;
    r0.y = dot(r3.xyz, -r4.xyz);
    r5.w = -r0.y;
    r3.xyz = r4.www * r3.xyz;
    r3.w = 0;
    r3.xyzw = r5.xyzw + r3.xyzw;
    r0.yzw = r4.zxy * r3.yzx;
    r0.yzw = r4.yzx * r3.zxy + -r0.yzw;
    r0.yzw = r4.www * r3.xyz + r0.yzw;
    r3.xyz = r3.www * r4.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, l(0,0,0,0)
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}