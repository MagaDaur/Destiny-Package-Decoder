// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:54 2023
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
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r2.z = 2.32830644e-010 * r0.w;
    r0.w = r0.w * 2.32830699e-011 + 1.14999998;
    r4.xz = float2(2.32830644e-010,2.32830644e-010) * r3.yx;
    r3.y = r3.y * -4.63045213e-010 + 2.98876405;
    r3.z = r4.x * r4.x;
    r3.y = r3.y * r3.z;
    r3.y = min(1, r3.y);
    r1.z = r3.y * 1.20000005 + 1.20000005;
    r3.y = cb10[0].x + 0.25;
    r3.y = (int)r3.y;
    r5.xyz = -cb9[r3.y+32].zxy * cb9[r3.y+32].yzx;
    r5.xyz = -cb9[r3.y+32].yzx * cb9[r3.y+32].zxy + -r5.xyz;
    r3.z = dot(-cb9[r3.y+32].xyz, cb9[r3.y+32].xyz);
    r6.w = -r3.z;
    r6.xyz = cb9[r3.y+32].www * cb9[r3.y+32].xyz + r5.xyz;
    r5.xyzw = cb9[r3.y+32].xyzw * float4(-1,-1,-1,1);
    r5.xyzw = cb9[r3.y+32].wwww * r5.xyzw + r6.xyzw;
    r6.xyzw = float4(0.707106769,0,0,0.707106769) * r5.zxyy;
    r6.xyz = -r5.yzx * float3(0,0,0.707106769) + r6.xyz;
    r7.w = -r6.w;
    r7.xyz = r5.xyz * float3(0.707106829,0.707106829,0.707106829) + r6.xyz;
    r5.xyzw = r5.wwww * float4(0,0.707106769,0,0.707106829) + r7.xyzw;
    r6.xyz = cb9[r3.y+32].zxy * r5.yzx;
    r6.xyz = cb9[r3.y+32].yzx * r5.zxy + -r6.xyz;
    r3.z = dot(cb9[r3.y+32].xyz, r5.xyz);
    r7.w = -r3.z;
    r7.xyz = cb9[r3.y+32].www * r5.xyz + r6.xyz;
    r5.xyzw = r5.wwww * cb9[r3.y+32].xyzw + r7.xyzw;
    r6.xyz = r3.xxx * float3(0,0,1.97906053e-010) + float3(0.699999988,-0.100000001,0);
    r3.xzw = -cb9[r3.y+32].yzx * r6.zxy;
    r7.xyz = r6.yzx * -cb9[r3.y+32].zxy + -r3.xzw;
    r3.x = dot(r6.xyz, -cb9[r3.y+32].xyz);
    r7.w = -r3.x;
    r6.xyw = float3(0.699999988,-0.100000001,0);
    r6.xyzw = cb9[r3.y+32].wwww * r6.xyzw + r7.xyzw;
    r3.xzw = cb9[r3.y+32].zxy * r6.yzx;
    r3.xzw = cb9[r3.y+32].yzx * r6.zxy + -r3.xzw;
    r3.xzw = cb9[r3.y+32].www * r6.xyz + r3.xzw;
    r3.xzw = r6.www * cb9[r3.y+32].xyz + r3.xzw;
    r3.xyz = cb9[r3.y+0].xyz + r3.xzw;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.w = (uint)r0.z;
    r3.w = 1.46291812e-009 * r3.w;
    sincos(r3.w, r6.x, r7.x);
    r6.y = r6.x * r0.w;
    r6.z = r7.x * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r7.x = r0.w * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r7.y = r0.w * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r7.z = r0.z * 4.65661287e-010 + -1;
    r0.z = dot(r7.xyz, r7.xyz);
    r0.z = rsqrt(r0.z);
    r7.xyz = r7.xyz * r0.zzz;
    r7.xyz = float3(0.00499999989,0.00499999989,0.00499999989) * r7.xyz;
    r8.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r8.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r8.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r8.w = -r0.z;
    r9.xyz = cb9[r0.y+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.y+32].wwww * r9.xyzw + r8.xyzw;
    r9.xyz = -cb9[r0.y+32].zxy * r8.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r8.zxy + -r9.xyz;
    r8.xyz = cb9[r0.y+32].www * r8.xyz + r9.xyz;
    r8.xyz = r8.www * -cb9[r0.y+32].xyz + r8.xyz;
    r9.xyz = -cb9[r0.y+32].zxy * r5.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r5.zxy + -r9.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r5.xyz);
    r10.w = -r0.z;
    r10.xyz = cb9[r0.y+32].www * r5.xyz + r9.xyz;
    r9.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r5.xyzw = r5.wwww * r9.xyzw + r10.xyzw;
    r9.xyz = cb9[r0.y+32].yzx * r3.zxy;
    r9.xyz = r3.yzx * cb9[r0.y+32].zxy + -r9.xyz;
    r0.z = dot(r3.xyz, cb9[r0.y+32].xyz);
    r9.w = -r0.z;
    r3.xyz = cb9[r0.y+32].www * r3.xyz;
    r3.w = 0;
    r3.xyzw = r9.xyzw + r3.xyzw;
    r9.xyz = -cb9[r0.y+32].zxy * r3.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r3.zxy + -r9.xyz;
    r3.xyz = cb9[r0.y+32].www * r3.xyz + r9.xyz;
    r0.yzw = r3.www * -cb9[r0.y+32].xyz + r3.xyz;
    r0.yzw = -r8.xyz + r0.yzw;
    r6.xw = float2(0,0);
    r3.xyz = r6.zwy * -r5.yzx;
    r3.xyz = r6.yzw * -r5.zxy + -r3.xyz;
    r4.y = dot(r6.yz, -r5.yz);
    r3.w = -r4.y;
    r3.xyzw = r5.wwww * r6.xyzw + r3.xyzw;
    r6.xyz = r5.zxy * r3.yzx;
    r6.xyz = r5.yzx * r3.zxy + -r6.xyz;
    r3.xyz = r5.www * r3.xyz + r6.xyz;
    r3.xyz = r3.www * r5.xyz + r3.xyz;
    r3.xyz = r3.xyz + r0.yzw;
    r0.yzw = r7.zxy * -r5.yzx;
    r6.xyz = r7.yzx * -r5.zxy + -r0.yzw;
    r0.y = dot(r7.xyz, -r5.xyz);
    r6.w = -r0.y;
    r7.xyz = r5.www * r7.xyz;
    r7.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r0.yzw = r6.yzx * r5.zxy;
    r0.yzw = r5.yzx * r6.zxy + -r0.yzw;
    r0.yzw = r5.www * r6.xyz + r0.yzw;
    r5.xyz = r6.www * r5.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r3.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r2.xyzw
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r4.zxww
  }
  return;
}