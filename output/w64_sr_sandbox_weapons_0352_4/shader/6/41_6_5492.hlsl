// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:27 2023
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
  float4 r0,r1,r2,r3,r4,r5;
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
    r0.z = (int)r0.z + (int)r0.y;
    r0.w = (uint)vThreadID.x;
    r1.z = cb0[19].x + r0.w;
    r0.w = cb0[21].x + r1.z;
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
    r2.x = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r2.w = 2.32830644e-010 * r0.w;
    r2.yz = float2(2.32830644e-010,2.32830644e-010) * r3.xy;
    r1.w = r3.x * 1.16415384e-012 + 0.0399999991;
    r3.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r3.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r3.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r3.w = -r0.w;
    r4.xyz = cb9[r0.z+0].xyz;
    r4.w = 0;
    r3.xyzw = cb9[r0.z+32].wwww * r4.xyzw + r3.xyzw;
    r4.xyz = -cb9[r0.z+32].zxy * r3.yzx;
    r4.xyz = -cb9[r0.z+32].yzx * r3.zxy + -r4.xyz;
    r3.xyz = cb9[r0.z+32].www * r3.xyz + r4.xyz;
    r3.xyz = r3.www * -cb9[r0.z+32].xyz + r3.xyz;
    r4.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r4.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r4.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r4.w = -r0.w;
    r5.xyz = cb9[r0.y+0].xyz;
    r5.w = 0;
    r4.xyzw = cb9[r0.z+32].wwww * r5.xyzw + r4.xyzw;
    r5.xyz = -cb9[r0.z+32].zxy * r4.yzx;
    r5.xyz = -cb9[r0.z+32].yzx * r4.zxy + -r5.xyz;
    r4.xyz = cb9[r0.z+32].www * r4.xyz + r5.xyz;
    r0.yzw = r4.www * -cb9[r0.z+32].xyz + r4.xyz;
    r3.xyz = -r3.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, l(0,0,0,0)
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r3.xyzw
    r1.xy = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}