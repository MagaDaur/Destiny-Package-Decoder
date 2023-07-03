// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:35 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[3];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[125];
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
    r0.y = cb10[2].x + 0.25;
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
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.w = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r4.x = (uint)r0.w;
    r4.z = 2.32830644e-010 * r4.x;
    r2.z = 2.32830644e-010 * r3.x;
    r3.x = r3.x * 2.67755235e-010 + 1.85000002;
    r5.xy = float2(2.32830644e-010,1.21907789e-010) * r3.yy;
    r1.z = r3.z * 1.74622983e-010 + 0.649999976;
    r4.xy = float2(2.32830644e-010,2.32830644e-010) * r3.zw;
    r6.xyz = r3.www * float3(1.81947138e-010,2.29779398e-005,2.37518921e-010) + float3(0,-49673.3203,-0.0201360006);
    r7.xyzw = cmp(r3.wwww >= float4(0,2.16179866e+009,2.16180301e+009,4.2949673e+009));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r3.yzw = r7.xyz + r7.yzw;
    r3.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) * r3.yzw;
    r3.yzw = frac(r3.yzw);
    r3.yzw = r3.yzw * r6.xyz;
    r3.yz = r3.yz + r3.yz;
    r3.y = r3.y + r3.z;
    r3.y = saturate(r3.w * 2 + r3.y);
    r6.w = r3.y * 4.5 + -2.25;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r3.y = 1.46291812e-009 * r3.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = r0.w * r5.y;
    r0.w = 2.32830644e-010 * r0.w;
    sincos(r0.w, r7.x, r8.x);
    sincos(r3.y, r9.x, r10.x);
    r8.y = r9.x * r7.x;
    r8.z = r10.x * r7.x;
    r3.xyz = r8.xyz * r3.xxx;
    r5.yzw = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r7.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r5.yzw;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r7.w = -r0.w;
    r8.xyz = cb9[r0.z+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.z+32].wwww * r8.xyzw + r7.xyzw;
    r5.yzw = -cb9[r0.z+32].zxy * r7.yzx;
    r5.yzw = -cb9[r0.z+32].yzx * r7.zxy + -r5.yzw;
    r5.yzw = cb9[r0.z+32].www * r7.xyz + r5.yzw;
    r5.yzw = r7.www * -cb9[r0.z+32].xyz + r5.yzw;
    r7.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r7.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r7.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r8.w = -r0.w;
    r8.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r7.xyz;
    r7.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r7.xyzw = cb9[r0.y+32].wwww * r7.xyzw + r8.xyzw;
    r8.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r8.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r8.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r8.w = -r0.w;
    r9.xyz = cb9[r0.y+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.z+32].wwww * r9.xyzw + r8.xyzw;
    r9.xyz = -cb9[r0.z+32].zxy * r8.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r8.zxy + -r9.xyz;
    r8.xyz = cb9[r0.z+32].www * r8.xyz + r9.xyz;
    r0.yzw = r8.www * -cb9[r0.z+32].xyz + r8.xyz;
    r6.xyz = -r5.yzw + r0.yzw;
    r0.yzw = -r7.yzx * r3.zxy;
    r8.xyz = r3.yzx * -r7.zxy + -r0.yzw;
    r0.y = dot(r3.xyz, -r7.xyz);
    r8.w = -r0.y;
    r3.xyz = r7.www * r3.xyz;
    r3.w = 0;
    r3.xyzw = r8.xyzw + r3.xyzw;
    r0.yzw = r7.zxy * r3.yzx;
    r0.yzw = r7.yzx * r3.zxy + -r0.yzw;
    r0.yzw = r7.www * r3.xyz + r0.yzw;
    r0.yzw = r3.www * r7.xyz + r0.yzw;
    r3.xyz = cb0[124].xyz * float3(-0.100000001,-0.100000001,-0.100000001) + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r3.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.xxxx, r6.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.yyyy, r1.xyzw
    r2.w = r5.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.zzzz, r2.xyzw
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.wwww, r4.xyzw
  }
  return;
}