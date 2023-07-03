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
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r3.x = 2.32830644e-010 * r2.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r3.y = 2.32830644e-010 * r2.y;
    r2.yzw = r2.yyy * float3(5.29161194e-011,-4.12745171e-010,4.65661287e-010) + float3(0.545454979,1,-3);
    r4.x = r3.y * r3.y;
    r2.y = saturate(r2.y * r4.x + r2.z);
    r2.y = r2.y * 13.1999998 + 6.80000019;
    r1.w = 2.32830644e-010 * r2.x;
    r2.x = r2.x * 1.51339918e-008 + 15;
    r2.z = r2.w * r4.x + 1;
    r2.z = max(0, r2.z);
    r1.z = r2.z * 0.114999995 + 0.209999993;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.w;
    r2.xz = float2(0.0174529999,1.46291812e-009) * r2.xz;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = r0.w * r2.x;
    r0.w = 2.32830644e-010 * r0.w;
    sincos(r0.w, r2.x, r4.x);
    sincos(r2.z, r5.x, r6.x);
    r4.y = r5.x * r2.x;
    r4.z = r6.x * r2.x;
    r2.xyz = r4.xyz * r2.yyy;
    r4.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r4.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r4.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r4.w = -r0.w;
    r5.xyz = cb9[r0.z+0].xyz;
    r5.w = 0;
    r4.xyzw = cb9[r0.z+32].wwww * r5.xyzw + r4.xyzw;
    r5.xyz = -cb9[r0.z+32].zxy * r4.yzx;
    r5.xyz = -cb9[r0.z+32].yzx * r4.zxy + -r5.xyz;
    r4.xyz = cb9[r0.z+32].www * r4.xyz + r5.xyz;
    r4.xyz = r4.www * -cb9[r0.z+32].xyz + r4.xyz;
    r5.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r5.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r5.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r6.w = -r0.w;
    r6.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r5.xyz;
    r5.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r5.xyzw = cb9[r0.y+32].wwww * r5.xyzw + r6.xyzw;
    r6.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r6.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r6.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r6.w = -r0.w;
    r7.xyz = cb9[r0.y+0].xyz;
    r7.w = 0;
    r6.xyzw = cb9[r0.z+32].wwww * r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r0.z+32].zxy * r6.yzx;
    r7.xyz = -cb9[r0.z+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.z+32].www * r6.xyz + r7.xyz;
    r0.yzw = r6.www * -cb9[r0.z+32].xyz + r6.xyz;
    r4.xyz = -r4.xyz + r0.yzw;
    r0.yzw = -r5.yzx * r2.zxy;
    r6.xyz = r2.yzx * -r5.zxy + -r0.yzw;
    r0.y = dot(r2.xyz, -r5.xyz);
    r6.w = -r0.y;
    r2.xyz = r5.www * r2.xyz;
    r2.w = 0;
    r2.xyzw = r6.xyzw + r2.xyzw;
    r0.yzw = r5.zxy * r2.yzx;
    r0.yzw = r5.yzx * r2.zxy + -r0.yzw;
    r0.yzw = r5.www * r2.xyz + r0.yzw;
    r2.xyz = r2.www * r5.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r2.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
    r3.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r3.xyzw
  }
  return;
}