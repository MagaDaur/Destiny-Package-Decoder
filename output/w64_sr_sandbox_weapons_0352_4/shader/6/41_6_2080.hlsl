// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
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
    r1.x = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.x;
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
    r1.z = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r1.w = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.z;
    r4.x = 2.32830644e-010 * r3.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.w = (uint)r0.z;
    r2.y = 2.32830644e-010 * r0.w;
    r5.xy = r0.ww * float2(4.04922762e-010,5.35242961e-010) + float2(-0.73913002,-1.29885101);
    r5.zw = cmp(r0.ww >= float2(1.82536115e+009,2.42665651e+009));
    r5.zw = r5.zw ? float2(0.500000477,0.500000477) : float2(4.99999999e-007,4.99999999e-007);
    r5.xy = r5.zw * r5.xy;
    r5.xy = saturate(r5.xy * float2(2,2) + float2(9.99999997e-007,9.99999997e-007));
    r5.xy = r5.xy * float2(-2,-10) + float2(3,80);
    r0.w = 0.0174529999 * r5.y;
    r2.w = 2.32830644e-010 * r3.y;
    r1.y = r3.y * 1.16415322e-010 + 0.5;
    r3.y = cb10[0].x + 0.25;
    r3.y = (int)r3.y;
    r5.yzw = float3(2.32830644e-010,0,0) * r3.xxx;
    r3.x = saturate(cb0[2].z);
    r6.xy = r3.xx * float2(-1.01276505,-2.799999) + float2(2.81276393,1);
    r3.x = r3.x * r3.x;
    r3.x = saturate(r6.x * r3.x + r6.y);
    r6.xyz = r5.yzw * r3.xxx;
    r7.xyzw = -cb9[r3.y+32].zxyx * r6.zzxx;
    r8.xyz = -r6.zxz * -cb9[r3.y+32].yzx + r7.xyz;
    r8.w = -r7.w;
    r6.xyz = cb9[r3.y+32].www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r8.xyzw + r6.xyzw;
    r7.xyz = cb9[r3.y+32].zxy * r6.yzx;
    r7.xyz = cb9[r3.y+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r3.y+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * cb9[r3.y+32].xyz + r6.xyz;
    r6.xyz = cb9[r3.y+0].xyz + r6.xyz;
    r4.yz = float2(2.32830644e-010,2.32830644e-010) * r3.zw;
    r7.xyz = r3.zzz * float3(6.89867885e-011,8.38875303e-010,4.31863607e-011) + float3(0,-1.19039202,0.814516008);
    r8.xyzw = cmp(r3.zzzz >= float4(0,1.54618829e+009,2.51971558e+009,4.2949673e+009));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r3.xzw = r8.xyz + r8.yzw;
    r3.xzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r3.xzw;
    r3.xzw = float3(0.5,0.5,0.5) * r3.xzw;
    r3.xzw = frac(r3.xzw);
    r3.xzw = r3.xzw * r7.xyz;
    r3.xz = r3.xz + r3.xz;
    r3.x = r3.x + r3.z;
    r3.x = saturate(r3.w * 2 + r3.x);
    r7.z = r3.x * -0.200000003 + 0.100000001;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = 1.46291812e-009 * r0.z;
    sincos(r0.z, r3.x, r8.x);
    r9.y = cb0[3].y * r3.x;
    r9.z = cb0[3].y * r8.x;
    sincos(r0.w, r3.x, r8.x);
    r0.z = dot(r9.yz, r9.yz);
    r0.z = sqrt(r0.z);
    r0.z = max(9.99999975e-005, r0.z);
    r0.zw = r9.yz / r0.zz;
    r8.yz = r0.zw * r3.xx;
    r3.xzw = r8.xyz * r5.xxx;
    r5.xzw = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r8.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r5.xzw;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r8.w = -r0.z;
    r10.xyz = cb9[r0.y+0].xyz;
    r10.w = 0;
    r8.xyzw = cb9[r0.y+32].wwww * r10.xyzw + r8.xyzw;
    r5.xzw = -cb9[r0.y+32].zxy * r8.yzx;
    r5.xzw = -cb9[r0.y+32].yzx * r8.zxy + -r5.xzw;
    r5.xzw = cb9[r0.y+32].www * r8.xyz + r5.xzw;
    r5.xzw = r8.www * -cb9[r0.y+32].xyz + r5.xzw;
    r8.xyz = -cb9[r0.y+32].zxy * cb9[r3.y+32].yzx;
    r8.xyz = -cb9[r0.y+32].yzx * cb9[r3.y+32].zxy + -r8.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, cb9[r3.y+32].xyz);
    r10.w = -r0.z;
    r10.xyz = cb9[r0.y+32].www * cb9[r3.y+32].xyz + r8.xyz;
    r8.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r8.xyzw = cb9[r3.y+32].wwww * r8.xyzw + r10.xyzw;
    r10.xyz = cb9[r0.y+32].yzx * r6.zxy;
    r10.xyz = r6.yzx * cb9[r0.y+32].zxy + -r10.xyz;
    r0.z = dot(r6.xyz, cb9[r0.y+32].xyz);
    r10.w = -r0.z;
    r6.xyz = cb9[r0.y+32].www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r10.xyzw + r6.xyzw;
    r10.xyz = -cb9[r0.y+32].zxy * r6.yzx;
    r10.xyz = -cb9[r0.y+32].yzx * r6.zxy + -r10.xyz;
    r6.xyz = cb9[r0.y+32].www * r6.xyz + r10.xyz;
    r0.yzw = r6.www * -cb9[r0.y+32].xyz + r6.xyz;
    r0.yzw = -r5.xzw + r0.yzw;
    r9.xw = float2(0,0);
    r5.xzw = r9.zwy * -r8.yzx;
    r6.xyz = r9.yzw * -r8.zxy + -r5.xzw;
    r3.y = dot(r9.yz, -r8.yz);
    r6.w = -r3.y;
    r6.xyzw = r8.wwww * r9.xyzw + r6.xyzw;
    r5.xzw = r8.zxy * r6.yzx;
    r5.xzw = r8.yzx * r6.zxy + -r5.xzw;
    r5.xzw = r8.www * r6.xyz + r5.xzw;
    r5.xzw = r6.www * r8.xyz + r5.xzw;
    r6.xyz = r5.xzw + r0.yzw;
    r0.yzw = -r8.yzx * r3.wxz;
    r9.xyz = r3.zwx * -r8.zxy + -r0.yzw;
    r0.y = dot(r3.xzw, -r8.xyz);
    r9.w = -r0.y;
    r3.xyz = r8.www * r3.xzw;
    r3.w = 0;
    r3.xyzw = r9.xyzw + r3.xyzw;
    r0.yzw = r8.zxy * r3.yzx;
    r0.yzw = r8.yzx * r3.zxy + -r0.yzw;
    r0.yzw = r8.www * r3.xyz + r0.yzw;
    r3.xyz = r3.www * r8.xyz + r0.yzw;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r3.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.xxxx, r6.xyzw
    r7.xyw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.yyyy, r7.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.zzzz, r1.xyzw
    r2.z = r5.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.wwww, r2.xyzw
    r0.y = (int)r0.x + 5;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}