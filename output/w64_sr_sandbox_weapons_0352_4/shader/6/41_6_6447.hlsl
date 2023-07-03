// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:23 2023
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
  float4 cb0[156];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
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
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.z = (int)r0.z + (int)r0.y;
    r0.w = (uint)vThreadID.x;
    r1.x = cb0[19].x + r0.w;
    r0.w = cb0[21].x + r1.x;
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
    r1.z = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r1.w = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r3.xy = float2(2.32830644e-010,2.32830644e-010) * r2.xy;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r3.w = 2.32830644e-010 * r0.w;
    r1.y = r2.x * -9.31322519e-011 + 1.39999998;
    r3.z = 2.32830644e-010 * r2.y;
    r2.xyz = r2.yyy * float3(9.31322588e-011,0,0) + float3(-0.400000006,0,0);
    r4.xyzw = -cb9[r0.y+32].zxyx * r2.zzxx;
    r5.xyz = -r2.zxz * -cb9[r0.y+32].yzx + r4.xyz;
    r5.w = -r4.w;
    r2.xyz = cb9[r0.y+32].www * r2.xyz;
    r2.w = 0;
    r2.xyzw = r5.xyzw + r2.xyzw;
    r4.xyz = cb9[r0.y+32].zxy * r2.yzx;
    r4.xyz = cb9[r0.y+32].yzx * r2.zxy + -r4.xyz;
    r2.xyz = cb9[r0.y+32].www * r2.xyz + r4.xyz;
    r2.xyz = r2.www * cb9[r0.y+32].xyz + r2.xyz;
    r2.xyz = cb9[r0.y+0].xyz + r2.xyz;
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
    r6.xyz = cb9[r0.z+32].yzx * r2.zxy;
    r6.xyz = r2.yzx * cb9[r0.z+32].zxy + -r6.xyz;
    r0.y = dot(r2.xyz, cb9[r0.z+32].xyz);
    r6.w = -r0.y;
    r2.xyz = cb9[r0.z+32].www * r2.xyz;
    r2.w = 0;
    r2.xyzw = r6.xyzw + r2.xyzw;
    r6.xyz = -cb9[r0.z+32].zxy * r2.yzx;
    r6.xyz = -cb9[r0.z+32].yzx * r2.zxy + -r6.xyz;
    r2.xyz = cb9[r0.z+32].www * r2.xyz + r6.xyz;
    r0.yzw = r2.www * -cb9[r0.z+32].xyz + r2.xyz;
    r2.xyz = -r4.xyz + r0.yzw;
    r4.xyzw = float4(0.100000001,0,0,0) * r5.wwww;
    r4.xyzw = r5.zzyx * float4(-0,0.100000001,-0.100000001,0.100000001) + r4.xyzw;
    r0.yzw = r5.zxy * r4.yzx;
    r0.yzw = r5.yzx * r4.zxy + -r0.yzw;
    r0.yzw = r5.www * r4.xyz + r0.yzw;
    r0.yzw = r4.www * r5.xyz + r0.yzw;
    r4.xyz = cb0[155].xyz * float3(-0.0375000015,-0.0375000015,-0.0375000015) + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r4.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xxxx, r2.xyzw
    r2.x = 0;
    r2.z = cb0[3].z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.yyyy, r2.xxzx
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.zzzz, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.wwww, r3.xyzw
  }
  return;
}