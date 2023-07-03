// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
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
    r2.x = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r2.yzw = float3(2.32830644e-010,8.94153973e-010,2.32830644e-010) * r3.xxz;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r4.x = 2.32830644e-010 * r3.z;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.w = (uint)r0.w;
    r4.yz = float2(2.32830644e-010,2.32830644e-010) * r3.zw;
    r3.xw = r3.xx * float2(4.28492658e-010,2.09547588e-011) + float2(-4.68072414,0.00999999978);
    r5.x = r2.y * r2.y;
    r3.x = saturate(r3.x * r5.x + r2.z);
    r5.x = 1 + r3.x;
    r2.z = 2.32830644e-010 * r3.y;
    r1.y = r3.y * 1.16415322e-010 + 1.5;
    r6.xyz = r3.zzz * float3(6.89867885e-011,8.38875303e-010,4.31863607e-011) + float3(0,-1.19039202,0.814516008);
    r7.xyzw = cmp(r3.zzzz >= float4(0,1.54618829e+009,2.51971558e+009,4.2949673e+009));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r3.xyz = r7.xyz + r7.yzw;
    r3.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) * r3.xyz;
    r3.xyz = frac(r3.xyz);
    r3.xyz = r3.xyz * r6.xyz;
    r3.xy = r3.xy + r3.xy;
    r3.x = r3.x + r3.y;
    r3.x = saturate(r3.z * 2 + r3.x);
    r6.z = r3.x * -0.5 + 0.25;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = 1.46291812e-009 * r0.w;
    sincos(r0.w, r3.x, r7.x);
    r5.y = r3.x * r3.w;
    r5.z = r7.x * r3.w;
    r0.w = dot(r5.yz, r5.yz);
    r0.w = rsqrt(r0.w);
    r3.xyz = r5.xyz * r0.www;
    r5.w = 0;
    r3.xyz = r3.xyz * r5.wxx;
    r7.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r7.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r7.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r7.w = -r0.w;
    r8.xyz = cb9[r0.z+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.z+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.z+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.z+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.z+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * -cb9[r0.z+32].xyz + r7.xyz;
    r8.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r8.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r8.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r9.w = -r0.w;
    r9.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r8.xyz;
    r8.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r8.xyzw = cb9[r0.y+32].wwww * r8.xyzw + r9.xyzw;
    r9.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r9.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r9.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r9.w = -r0.w;
    r10.xyz = cb9[r0.y+0].xyz;
    r10.w = 0;
    r9.xyzw = cb9[r0.z+32].wwww * r10.xyzw + r9.xyzw;
    r10.xyz = -cb9[r0.z+32].zxy * r9.yzx;
    r10.xyz = -cb9[r0.z+32].yzx * r9.zxy + -r10.xyz;
    r9.xyz = cb9[r0.z+32].www * r9.xyz + r10.xyz;
    r0.yzw = r9.www * -cb9[r0.z+32].xyz + r9.xyz;
    r0.yzw = -r7.xyz + r0.yzw;
    r7.xyz = -r8.yzx * r5.zwy;
    r7.xyz = r5.yzw * -r8.zxy + -r7.xyz;
    r3.w = dot(r5.yz, -r8.yz);
    r7.w = -r3.w;
    r5.xyzw = r8.wwww * r5.wyzw + r7.xyzw;
    r7.xyz = r8.zxy * r5.yzx;
    r7.xyz = r8.yzx * r5.zxy + -r7.xyz;
    r5.xyz = r8.www * r5.xyz + r7.xyz;
    r5.xyz = r5.www * r8.xyz + r5.xyz;
    r5.xyz = r5.xyz + r0.yzw;
    r0.yzw = -r8.yzx * r3.zxy;
    r7.xyz = r3.yzx * -r8.zxy + -r0.yzw;
    r0.y = dot(r3.yz, -r8.yz);
    r7.w = -r0.y;
    r3.xyz = r8.www * r3.xyz;
    r3.w = 0;
    r3.xyzw = r7.xyzw + r3.xyzw;
    r0.yzw = r8.zxy * r3.yzx;
    r0.yzw = r8.yzx * r3.zxy + -r0.yzw;
    r0.yzw = r8.www * r3.xyz + r0.yzw;
    r3.xyz = r3.www * r8.xyz + r0.yzw;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r3.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.xxxx, r5.xyzw
    r6.xyw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.yyyy, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.zzzz, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.wwww, r2.xyzw
    r0.y = (int)r0.x + 5;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}