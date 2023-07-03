// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:24 2023
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
  float4 cb0[157];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
    r1.x = cb0[19].x + r0.w;
    r2.x = cb0[21].x + r1.x;
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
    r1.z = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r1.w = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r3.x = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r3.y = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r2.x;
    r3.w = 2.32830644e-010 * r2.z;
    r2.zw = float2(2.32830644e-010,8.21754817e-011) * r2.yy;
    r4.xy = r2.yy * float2(6.99213673e-011,-2.32830644e-010) + float2(0.346749008,1);
    r4.z = r2.z * r2.z;
    r2.w = r4.x * r4.z + r2.w;
    r2.w = r2.w * 10.25 + 1.75;
    r4.x = r4.y * 25 + 5;
    r4.x = 0.0174529999 * r4.x;
    r1.y = r2.y * 1.04773787e-010 + 0.550000012;
    r0.w = 1 + r0.w;
    r0.w = r0.w / cb0[89].x;
    r2.y = 1 + -r0.w;
    r2.y = cb0[22].x * r2.y;
    r5.w = r2.y / r1.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r2.x;
    r2.x = r2.x * r4.x;
    r2.xy = float2(2.32830644e-010,1.46291812e-009) * r2.xy;
    sincos(r2.x, r2.x, r4.x);
    sincos(r2.y, r6.x, r7.x);
    r4.y = r6.x * r2.x;
    r4.z = r7.x * r2.x;
    r2.xyw = r4.xyz * r2.www;
    r4.x = cmp(cb0[154].x < 0.5);
    r4.yzw = cb9[r0.y+0].xyz + -cb0[156].xyz;
    r4.yzw = r0.www * r4.yzw + cb0[156].xyz;
    r6.xyzw = cb9[r0.y+32].xyzw + -cb0[155].xyzw;
    r6.xyzw = r0.wwww * r6.xyzw + cb0[155].xyzw;
    r0.w = dot(r6.xyzw, r6.xyzw);
    r0.w = rsqrt(r0.w);
    r6.xyzw = r6.xyzw * r0.wwww;
    r6.xyzw = r4.xxxx ? cb9[r0.y+32].xyzw : r6.xyzw;
    r4.xyz = r4.xxx ? cb9[r0.y+0].xyz : r4.yzw;
    r7.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r7.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r7.xyz;
    r0.y = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r7.w = -r0.y;
    r8.xyz = cb9[r0.z+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.z+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.z+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.z+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.z+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * -cb9[r0.z+32].xyz + r7.xyz;
    r8.xyz = -cb9[r0.z+32].zxy * r6.yzx;
    r8.xyz = -cb9[r0.z+32].yzx * r6.zxy + -r8.xyz;
    r0.y = dot(-cb9[r0.z+32].xyz, r6.xyz);
    r9.w = -r0.y;
    r9.xyz = cb9[r0.z+32].www * r6.xyz + r8.xyz;
    r8.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = r6.wwww * r8.xyzw + r9.xyzw;
    r8.xyz = cb9[r0.z+32].yzx * r4.zxy;
    r8.xyz = r4.yzx * cb9[r0.z+32].zxy + -r8.xyz;
    r0.y = dot(r4.xyz, cb9[r0.z+32].xyz);
    r8.w = -r0.y;
    r4.xyz = cb9[r0.z+32].www * r4.xyz;
    r4.w = 0;
    r4.xyzw = r8.xyzw + r4.xyzw;
    r8.xyz = -cb9[r0.z+32].zxy * r4.yzx;
    r8.xyz = -cb9[r0.z+32].yzx * r4.zxy + -r8.xyz;
    r4.xyz = cb9[r0.z+32].www * r4.xyz + r8.xyz;
    r0.yzw = r4.www * -cb9[r0.z+32].xyz + r4.xyz;
    r5.xyz = -r7.xyz + r0.yzw;
    r0.yzw = -r6.yzx * r2.wxy;
    r4.xyz = r2.ywx * -r6.zxy + -r0.yzw;
    r0.y = dot(r2.xyw, -r6.xyz);
    r4.w = -r0.y;
    r7.xyz = r6.www * r2.xyw;
    r7.w = 0;
    r4.xyzw = r7.xyzw + r4.xyzw;
    r0.yzw = r6.zxy * r4.yzx;
    r0.yzw = r6.yzx * r4.zxy + -r0.yzw;
    r0.yzw = r6.www * r4.xyz + r0.yzw;
    r0.yzw = r4.www * r6.xyz + r0.yzw;
    r4.xyz = cb0[153].xyz * float3(-0.0399999991,-0.0399999991,-0.0399999991) + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r4.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xxxx, r5.xyzw
    r5.x = 0;
    r5.z = cb0[4].z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.yyyy, r5.xxzx
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.zzzz, r1.xyzw
    r3.z = r2.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.wwww, r3.xyzw
  }
  return;
}