// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:35 2023
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
  float4 cb0[147];
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
    r2.x = cb0[21].x + r1.y;
    r2.x = (uint)r2.x;
    r2.y = (int)r2.x ^ 61;
    r2.x = (uint)r2.x >> 16;
    r2.x = (int)r2.x ^ (int)r2.y;
    r2.x = (int)r2.x * 9;
    r2.y = (uint)r2.x >> 4;
    r2.x = (int)r2.y ^ (int)r2.x;
    r2.x = (int)r2.x * 0x27d4eb2d;
    r2.y = (uint)r2.x >> 15;
    r2.x = (int)r2.y ^ (int)r2.x;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r1.w = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r3.x = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r2.x;
    r3.yz = float2(2.32830644e-010,2.32830644e-010) * r2.yz;
    r1.z = r2.y * 1.39698392e-010 + 0.400000006;
    r0.w = 1 + r0.w;
    r0.w = r0.w / cb0[89].x;
    r2.y = 1 + -r0.w;
    r2.y = cb0[22].x * r2.y;
    r4.w = r2.y / r1.z;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r5.x = r2.y * 4.65661287e-010 + -1;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r5.y = r2.y * 4.65661287e-010 + -1;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r5.z = r2.y * 4.65661287e-010 + -1;
    r2.y = dot(r5.xyz, r5.xyz);
    r2.y = rsqrt(r2.y);
    r2.yzw = r5.xyz * r2.yyy;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r5.x = (uint)r2.x;
    r5.x = 1.46291812e-009 * r5.x;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r2.x;
    r2.xyzw = float4(8.1273259e-011,0.100000001,0.100000001,0.100000001) * r2.xyzw;
    sincos(r2.x, r2.x, r6.x);
    sincos(r5.x, r5.x, r7.x);
    r6.y = r5.x * r2.x;
    r6.z = r7.x * r2.x;
    r5.xyz = float3(15,15,15) * r6.xyz;
    r2.x = cmp(cb0[144].x < 0.5);
    r6.xyz = cb9[r0.y+0].xyz + -cb0[146].xyz;
    r6.xyz = r0.www * r6.xyz + cb0[146].xyz;
    r7.xyzw = cb9[r0.y+32].xyzw + -cb0[145].xyzw;
    r7.xyzw = r0.wwww * r7.xyzw + cb0[145].xyzw;
    r0.w = dot(r7.xyzw, r7.xyzw);
    r0.w = rsqrt(r0.w);
    r7.xyzw = r7.xyzw * r0.wwww;
    r7.xyzw = r2.xxxx ? cb9[r0.y+32].xyzw : r7.xyzw;
    r6.xyz = r2.xxx ? cb9[r0.y+0].xyz : r6.xyz;
    r8.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r8.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r8.xyz;
    r0.y = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r8.w = -r0.y;
    r9.xyz = cb9[r0.z+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.z+32].wwww * r9.xyzw + r8.xyzw;
    r9.xyz = -cb9[r0.z+32].zxy * r8.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r8.zxy + -r9.xyz;
    r8.xyz = cb9[r0.z+32].www * r8.xyz + r9.xyz;
    r8.xyz = r8.www * -cb9[r0.z+32].xyz + r8.xyz;
    r9.xyz = -cb9[r0.z+32].zxy * r7.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r7.zxy + -r9.xyz;
    r0.y = dot(-cb9[r0.z+32].xyz, r7.xyz);
    r10.w = -r0.y;
    r10.xyz = cb9[r0.z+32].www * r7.xyz + r9.xyz;
    r9.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r7.xyzw = r7.wwww * r9.xyzw + r10.xyzw;
    r9.xyz = cb9[r0.z+32].yzx * r6.zxy;
    r9.xyz = r6.yzx * cb9[r0.z+32].zxy + -r9.xyz;
    r0.y = dot(r6.xyz, cb9[r0.z+32].xyz);
    r9.w = -r0.y;
    r6.xyz = cb9[r0.z+32].www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r9.xyzw + r6.xyzw;
    r9.xyz = -cb9[r0.z+32].zxy * r6.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r6.zxy + -r9.xyz;
    r6.xyz = cb9[r0.z+32].www * r6.xyz + r9.xyz;
    r0.yzw = r6.www * -cb9[r0.z+32].xyz + r6.xyz;
    r0.yzw = -r8.xyz + r0.yzw;
    r6.xyz = -r7.yzx * r2.wyz;
    r6.xyz = r2.zwy * -r7.zxy + -r6.xyz;
    r2.x = dot(r2.yzw, -r7.xyz);
    r6.w = -r2.x;
    r2.xyz = r7.www * r2.yzw;
    r2.w = 0;
    r2.xyzw = r6.xyzw + r2.xyzw;
    r6.xyz = r7.zxy * r2.yzx;
    r6.xyz = r7.yzx * r2.zxy + -r6.xyz;
    r2.xyz = r7.www * r2.xyz + r6.xyz;
    r2.xyz = r2.www * r7.xyz + r2.xyz;
    r2.xyz = r2.xyz + r0.yzw;
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
    r0.yzw = r5.www * r7.xyz + r0.yzw;
    r4.xyz = cb0[140].xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r3.xyzw
  }
  return;
}