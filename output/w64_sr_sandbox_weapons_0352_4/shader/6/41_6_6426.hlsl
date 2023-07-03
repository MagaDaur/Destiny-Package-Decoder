// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:23 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[131];
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
    r1.z = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.z;
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
    r2.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.y = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.z = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r3.x = 2.32830644e-010 * r3.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.z = (uint)r0.z;
    r3.yzw = float3(2.32830644e-010,2.32830644e-010,2.32830644e-010) * r4.xyz;
    r5.xyzw = r4.xxxx * float4(5.57200987e-011,5.35510247e-010,1.36116407e-009,2.32830644e-010) + float4(0,-1.60733294,-4.84615517,1);
    r6.xyzw = cmp(r4.xxxx >= float4(0,3.35007437e+009,3.92273536e+009,4.2949673e+009));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r4.xzw = r6.xyz + r6.yzw;
    r4.xzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r4.xzw;
    r4.xzw = float3(0.5,0.5,0.5) * r4.xzw;
    r4.xzw = frac(r4.xzw);
    r4.xzw = r4.xzw * r5.xyz;
    r4.xz = r4.xz + r4.xz;
    r4.x = r4.x + r4.z;
    r4.x = saturate(r4.w * 2 + r4.x);
    r4.x = r4.x * 0.400000006 + 0.100000001;
    r4.z = cb10[0].x + 0.25;
    r4.z = (int)r4.z;
    r5.xyz = r4.yyy * float3(9.31322588e-011,0,0) + float3(-0.400000006,0,0);
    r6.xyzw = -cb9[r4.z+32].zxyx * r5.zzxx;
    r7.xyz = -r5.zxz * -cb9[r4.z+32].yzx + r6.xyz;
    r7.w = -r6.w;
    r6.xyz = cb9[r4.z+32].www * r5.xyz;
    r6.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r5.xyz = cb9[r4.z+32].zxy * r6.yzx;
    r5.xyz = cb9[r4.z+32].yzx * r6.zxy + -r5.xyz;
    r5.xyz = cb9[r4.z+32].www * r6.xyz + r5.xyz;
    r5.xyz = r6.www * cb9[r4.z+32].xyz + r5.xyz;
    r5.xyz = cb9[r4.z+0].xyz + r5.xyz;
    r2.w = 2.32830644e-010 * r0.w;
    r6.xyz = r0.www * float3(7.50445747e-011,7.2853451e-010,1.33330472e-010) + float3(0,-1.132043,0.427350014);
    r7.xyzw = cmp(r0.wwww >= float4(0,1.73230208e+009,2.61993011e+009,4.2949673e+009));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xyz = r7.xyz * r6.xyz;
    r4.yw = r6.xy + r6.xy;
    r0.w = r4.y + r4.w;
    r0.w = saturate(r6.z * 2 + r0.w);
    r1.x = r0.w * 10 + -5;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r6.x = r0.w * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r6.y = r0.w * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r6.z = r0.z * 4.65661287e-010 + -1;
    r0.z = dot(r6.xyz, r6.xyz);
    r0.z = rsqrt(r0.z);
    r6.xyz = r6.xyz * r0.zzz;
    r6.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r6.xyz;
    r0.z = dot(r6.xyz, r6.xyz);
    r0.z = rsqrt(r0.z);
    r7.xyz = r6.xyz * r0.zzz;
    r4.xyw = r7.xyz * r4.xxx;
    r7.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r7.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r7.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r7.w = -r0.z;
    r8.xyz = cb9[r0.y+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.y+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.y+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.y+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * -cb9[r0.y+32].xyz + r7.xyz;
    r8.xyz = -cb9[r0.y+32].zxy * cb9[r4.z+32].yzx;
    r8.xyz = -cb9[r0.y+32].yzx * cb9[r4.z+32].zxy + -r8.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, cb9[r4.z+32].xyz);
    r9.w = -r0.z;
    r9.xyz = cb9[r0.y+32].www * cb9[r4.z+32].xyz + r8.xyz;
    r8.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r8.xyzw = cb9[r4.z+32].wwww * r8.xyzw + r9.xyzw;
    r9.xyz = cb9[r0.y+32].yzx * r5.zxy;
    r9.xyz = r5.yzx * cb9[r0.y+32].zxy + -r9.xyz;
    r0.z = dot(r5.xyz, cb9[r0.y+32].xyz);
    r9.w = -r0.z;
    r10.xyz = cb9[r0.y+32].www * r5.xyz;
    r10.w = 0;
    r9.xyzw = r10.xyzw + r9.xyzw;
    r5.xyz = -cb9[r0.y+32].zxy * r9.yzx;
    r5.xyz = -cb9[r0.y+32].yzx * r9.zxy + -r5.xyz;
    r5.xyz = cb9[r0.y+32].www * r9.xyz + r5.xyz;
    r5.xyz = r9.www * -cb9[r0.y+32].xyz + r5.xyz;
    r5.xyz = -r7.xyz + r5.xyz;
    r7.xyz = -r8.yzx * r6.zxy;
    r7.xyz = r6.yzx * -r8.zxy + -r7.xyz;
    r0.z = dot(r6.xyz, -r8.xyz);
    r7.w = -r0.z;
    r6.xyz = r8.www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r7.xyz = r8.zxy * r6.yzx;
    r7.xyz = r8.yzx * r6.zxy + -r7.xyz;
    r6.xyz = r8.www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * r8.xyz + r6.xyz;
    r6.xyz = r6.xyz + r5.xyz;
    r5.xyz = -r8.yzx * r4.wxy;
    r7.xyz = r4.ywx * -r8.zxy + -r5.xyz;
    r0.z = dot(r4.xyw, -r8.xyz);
    r7.w = -r0.z;
    r4.xyz = r8.www * r4.xyw;
    r4.w = 0;
    r4.xyzw = r7.xyzw + r4.xyzw;
    r5.xyz = r8.zxy * r4.yzx;
    r5.xyz = r8.yzx * r4.zxy + -r5.xyz;
    r4.xyz = r8.www * r4.xyz + r5.xyz;
    r4.xyz = r4.www * r8.xyz + r4.xyz;
    r4.xyz = cb0[130].xyz * float3(-0.0375000015,-0.0375000015,-0.0375000015) + r4.xyz;
    r5.xyz = -cb9[r0.y+32].yzx * r6.zxy;
    r7.xyz = r6.yzx * -cb9[r0.y+32].zxy + -r5.xyz;
    r0.z = dot(r6.xyz, -cb9[r0.y+32].xyz);
    r7.w = -r0.z;
    r8.xyz = cb9[r0.y+32].www * r6.xyz;
    r8.w = 0;
    r7.xyzw = r8.xyzw + r7.xyzw;
    r5.xyz = cb9[r0.y+32].zxy * r7.yzx;
    r5.xyz = cb9[r0.y+32].yzx * r7.zxy + -r5.xyz;
    r5.xyz = cb9[r0.y+32].www * r7.xyz + r5.xyz;
    r5.xyz = r7.www * cb9[r0.y+32].xyz + r5.xyz;
    r0.yzw = cb9[r0.y+0].xyz + r5.xyz;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r4.w = sqrt(r0.y);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r4.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xxxx, r6.xyzw
    r1.y = 0;
    r1.w = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.zzzz, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.wwww, r3.xyzw
  }
  return;
}