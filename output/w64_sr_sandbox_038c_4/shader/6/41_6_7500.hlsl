// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:55 2023
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
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.z;
    r2.x = 2.32830644e-010 * r2.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r2.y = 2.32830644e-010 * r3.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r2.z = 2.32830644e-010 * r0.z;
    r3.x = cb10[0].x + 0.25;
    r3.x = (int)r3.x;
    r0.z = r0.z * 2.32830644e-010 + -0.5;
    r0.z = ceil(r0.z);
    r0.z = r0.z * 2 + -1;
    r0.z = cb0[2].z * r0.z;
    r4.xw = float2(1.25,0.850000024) * r0.zz;
    r4.y = 1;
    r0.z = dot(r4.xy, r4.xy);
    r0.z = rsqrt(r0.z);
    r3.yz = r4.xy * r0.zz;
    r1.w = 2.32830644e-010 * r0.w;
    r0.z = r0.w * 4.65661287e-010 + -1;
    r0.z = 0.200000003 * r0.z;
    r5.x = r3.y * r0.z;
    r0.w = cb0[2].z * cb0[2].z;
    r4.xy = float2(-0.239999995,-0.389999986) * r0.ww;
    r4.z = r3.z * r0.z + r4.y;
    r5.zw = float2(0.5,2.04999995);
    r3.yzw = r5.zxw + r4.xwz;
    r4.xyz = -cb9[r3.x+32].yzx * r3.wyz;
    r4.xyz = r3.zwy * -cb9[r3.x+32].zxy + -r4.xyz;
    r0.z = dot(r3.yzw, -cb9[r3.x+32].xyz);
    r4.w = -r0.z;
    r5.xyz = cb9[r3.x+32].www * r3.yzw;
    r5.w = 0;
    r4.xyzw = r5.xyzw + r4.xyzw;
    r3.yzw = cb9[r3.x+32].zxy * r4.yzx;
    r3.yzw = cb9[r3.x+32].yzx * r4.zxy + -r3.yzw;
    r3.yzw = cb9[r3.x+32].www * r4.xyz + r3.yzw;
    r3.yzw = r4.www * cb9[r3.x+32].xyz + r3.yzw;
    r3.xyz = cb9[r3.x+0].xyz + r3.yzw;
    r4.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r4.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r4.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r4.w = -r0.z;
    r5.xyz = cb9[r0.y+0].xyz;
    r5.w = 0;
    r4.xyzw = cb9[r0.y+32].wwww * r5.xyzw + r4.xyzw;
    r5.xyz = -cb9[r0.y+32].zxy * r4.yzx;
    r5.xyz = -cb9[r0.y+32].yzx * r4.zxy + -r5.xyz;
    r4.xyz = cb9[r0.y+32].www * r4.xyz + r5.xyz;
    r4.xyz = r4.www * -cb9[r0.y+32].xyz + r4.xyz;
    r5.xyz = cb9[r0.y+32].yzx * r3.zxy;
    r5.xyz = r3.yzx * cb9[r0.y+32].zxy + -r5.xyz;
    r0.z = dot(r3.xyz, cb9[r0.y+32].xyz);
    r5.w = -r0.z;
    r3.xyz = cb9[r0.y+32].www * r3.xyz;
    r3.w = 0;
    r3.xyzw = r5.xyzw + r3.xyzw;
    r5.xyz = -cb9[r0.y+32].zxy * r3.yzx;
    r5.xyz = -cb9[r0.y+32].yzx * r3.zxy + -r5.xyz;
    r3.xyz = cb9[r0.y+32].www * r3.xyz + r5.xyz;
    r0.yzw = r3.www * -cb9[r0.y+32].xyz + r3.xyz;
    r3.xyz = -r4.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, l(0,0,0,0)
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r3.xyzw
    r1.xz = float2(0,0.5);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}