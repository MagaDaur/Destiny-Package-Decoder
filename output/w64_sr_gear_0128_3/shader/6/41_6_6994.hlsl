// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
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
  float4 cb0[162];
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
    r0.y = cb10[1].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = (int)cb0[23].x;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = cb10[0].x + 0.25;
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
    r3.z = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r3.w = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r4.x = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r4.y = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r2.yz = float2(2.32830644e-010,1.16415324e-011) * r2.yy;
    r0.w = 1 + r0.w;
    r0.w = r0.w / cb0[89].x;
    r2.w = 1 + -r0.w;
    r2.w = cb0[22].x * r2.w;
    r5.w = 0.200000003 * r2.w;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.w = (uint)r2.x;
    r6.x = r2.w * 4.65661287e-010 + -1;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.w = (uint)r2.x;
    r6.y = r2.w * 4.65661287e-010 + -1;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r2.x;
    r6.z = r2.x * 4.65661287e-010 + -1;
    r2.x = dot(r6.xyz, r6.xyz);
    r2.x = rsqrt(r2.x);
    r6.xyz = r6.xyz * r2.xxx;
    r2.x = max(0.00100000005, r2.z);
    r2.xzw = r6.xyz * r2.xxx;
    r6.x = cmp(cb0[159].x < 0.5);
    r6.yzw = cb9[r0.y+0].xyz + -cb0[161].xyz;
    r6.yzw = r0.www * r6.yzw + cb0[161].xyz;
    r7.xyzw = cb9[r0.y+32].xyzw + -cb0[160].xyzw;
    r7.xyzw = r0.wwww * r7.xyzw + cb0[160].xyzw;
    r0.w = dot(r7.xyzw, r7.xyzw);
    r0.w = rsqrt(r0.w);
    r7.xyzw = r7.xyzw * r0.wwww;
    r7.xyzw = r6.xxxx ? cb9[r0.y+32].xyzw : r7.xyzw;
    r6.xyz = r6.xxx ? cb9[r0.y+0].xyz : r6.yzw;
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
    r6.xyz = -r7.yzx * r2.wxz;
    r6.xyz = r2.zwx * -r7.zxy + -r6.xyz;
    r8.x = dot(r2.xzw, -r7.xyz);
    r6.w = -r8.x;
    r8.xyz = r7.www * r2.xzw;
    r8.w = 0;
    r6.xyzw = r8.xyzw + r6.xyzw;
    r2.xzw = r7.zxy * r6.yzx;
    r2.xzw = r7.yzx * r6.zxy + -r2.xzw;
    r2.xzw = r7.www * r6.xyz + r2.xzw;
    r2.xzw = r6.www * r7.xyz + r2.xzw;
    r6.xyz = r2.xzw + r0.yzw;
    r8.xyzw = float4(0.100000001,0,0,0) * r7.wwww;
    r8.xyzw = r7.zzyx * float4(-0,0.100000001,-0.100000001,0.100000001) + r8.xyzw;
    r0.yzw = r8.yzx * r7.zxy;
    r0.yzw = r7.yzx * r8.zxy + -r0.yzw;
    r0.yzw = r7.www * r8.xyz + r0.yzw;
    r5.xyz = r8.www * r7.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r6.xyzw
    r1.xzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r1.xyzw
    r3.xy = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r3.xyzw
    r4.z = r2.y;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r4.xyzw
  }
  return;
}