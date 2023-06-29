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
    r2.z = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r2.w = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r3.x = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r4.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.w;
    r3.yz = float2(2.32830644e-010,2.32830644e-010) * r4.xy;
    r5.xyz = r4.xxx * float3(8.69431541e-011,3.95156213e-010,1.16415322e-010) + float3(0,-0.697183013,0.75);
    r4.xzw = cmp(r4.xxx >= float3(0,2.26201754e+009,4.2949673e+009));
    r4.xzw = r4.xzw ? float3(1,1,1) : 0;
    r4.xz = r4.xz + r4.zw;
    r4.xz = float2(9.99999997e-007,9.99999997e-007) + r4.xz;
    r4.xz = float2(0.5,0.5) * r4.xz;
    r4.xz = frac(r4.xz);
    r4.xz = r4.xz * r5.xy;
    r4.xz = float2(2,2) * r4.xz;
    r4.x = r4.x + r4.z;
    r4.x = saturate(9.99999997e-007 + r4.x);
    r4.x = 0.5 * r4.x;
    r4.z = r4.y * 0.000229779413 + -493447.531;
    r5.xyw = cmp(r4.yyy >= float3(2.14748365e+009,2.147488e+009,4.2949673e+009));
    r5.xyw = r5.xyw ? float3(1,1,1) : 0;
    r4.yw = r5.xy + r5.yw;
    r4.yw = float2(9.99999997e-007,9.99999997e-007) + r4.yw;
    r4.yw = float2(0.5,0.5) * r4.yw;
    r6.yz = frac(r4.yw);
    r6.x = r6.y * r4.z;
    r4.yz = r6.xz + r6.xz;
    r4.y = saturate(r4.y + r4.z);
    r6.w = -0.5 + r4.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.w;
    r7.x = r4.y * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.w;
    r7.y = r4.y * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.w;
    r7.z = r4.y * 4.65661287e-010 + -1;
    r4.y = dot(r7.xyz, r7.xyz);
    r4.y = rsqrt(r4.y);
    r4.yzw = r7.xyz * r4.yyy;
    r4.yzw = float3(0.0500000007,0.150000006,0.100000001) * r4.yzw;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r5.x = (uint)r0.w;
    r5.x = 1.46291812e-009 * r5.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = 3.65729447e-010 * r0.w;
    sincos(r0.w, r7.x, r8.x);
    sincos(r5.x, r5.x, r9.x);
    r8.y = r5.x * r7.x;
    r8.z = r9.x * r7.x;
    r5.xyw = r8.xyz * r4.xxx;
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
    r7.xyz = -r8.yzx * r4.wyz;
    r7.xyz = r4.zwy * -r8.zxy + -r7.xyz;
    r4.x = dot(r4.yzw, -r8.xyz);
    r7.w = -r4.x;
    r4.xyz = r8.www * r4.yzw;
    r4.w = 0;
    r4.xyzw = r7.xyzw + r4.xyzw;
    r7.xyz = r8.zxy * r4.yzx;
    r7.xyz = r8.yzx * r4.zxy + -r7.xyz;
    r4.xyz = r8.www * r4.xyz + r7.xyz;
    r4.xyz = r4.www * r8.xyz + r4.xyz;
    r6.xyz = r4.xyz + r0.yzw;
    r0.yzw = -r8.yzx * r5.wxy;
    r4.xyz = r5.ywx * -r8.zxy + -r0.yzw;
    r0.y = dot(r5.xyw, -r8.xyz);
    r4.w = -r0.y;
    r7.xyz = r8.www * r5.xyw;
    r7.w = 0;
    r4.xyzw = r7.xyzw + r4.xyzw;
    r0.yzw = r8.zxy * r4.yzx;
    r0.yzw = r8.yzx * r4.zxy + -r0.yzw;
    r0.yzw = r8.www * r4.xyz + r0.yzw;
    r4.xyz = r4.www * r8.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r4.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xxxx, r6.xyzw
    r1.x = 0;
    r1.z = r5.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.zzzz, r2.xyzw
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.wwww, r3.xyzw
  }
  return;
}