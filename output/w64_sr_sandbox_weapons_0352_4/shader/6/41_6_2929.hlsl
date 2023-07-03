// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:38 2023
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
    r1.w = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r2.x = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r2.y = 2.32830644e-010 * r3.x;
    r3.yzw = r3.xxx * float3(5.29161194e-011,-4.12745171e-010,2.01212241e-011) + float3(0.545454979,1,-1.08642006);
    r4.x = r2.y * r2.y;
    r3.y = saturate(r3.y * r4.x + r3.z);
    r3.y = r3.y * 13.1999998 + 6.80000019;
    r3.z = r3.w * r4.x + 1;
    r3.z = max(0, r3.z);
    r3.z = r3.z * 75 + 5;
    r3.x = r3.x * 4.65661287e-010 + -3;
    r3.x = r3.x * r4.x + 1;
    r3.x = max(0, r3.x);
    r1.z = r3.x * 0.114999995 + 0.209999993;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r3.xz = float2(1.46291812e-009,0.0174529999) * r3.xz;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = r0.w * r3.z;
    r0.w = 2.32830644e-010 * r0.w;
    sincos(r0.w, r4.x, r5.x);
    sincos(r3.x, r3.x, r6.x);
    r5.y = r3.x * r4.x;
    r5.z = r6.x * r4.x;
    r3.xyz = r5.xyz * r3.yyy;
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
    r0.yzw = -r5.yzx * r3.zxy;
    r6.xyz = r3.yzx * -r5.zxy + -r0.yzw;
    r0.y = dot(r3.xyz, -r5.xyz);
    r6.w = -r0.y;
    r3.xyz = r5.www * r3.xyz;
    r3.w = 0;
    r3.xyzw = r6.xyzw + r3.xyzw;
    r0.yzw = r5.zxy * r3.yzx;
    r0.yzw = r5.yzx * r3.zxy + -r0.yzw;
    r0.yzw = r5.www * r3.xyz + r0.yzw;
    r3.xyz = r3.www * r5.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
    r2.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}