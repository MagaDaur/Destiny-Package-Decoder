// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:30 2023
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
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.w;
    r3.x = 2.32830644e-010 * r2.z;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.w;
    r3.y = 2.32830644e-010 * r2.z;
    r1.w = 2.32830644e-010 * r2.y;
    r2.y = r2.y * 1.0477379e-008 + 60;
    r2.yzw = float3(0.0174529999,2.32830644e-010,1.69903508e-010) * r2.yxx;
    r4.xy = r2.xx * float2(1.22236088e-009,1.86534135e-010) + float2(1.75,-0.530888021);
    r4.z = r2.z * r2.z;
    r2.w = r4.y * r4.z + r2.w;
    r2.w = max(0, r2.w);
    r1.y = r2.w * 0.325000018 + 0.474999994;
    r4.yzw = r2.xxx * float3(7.50445747e-011,7.2853451e-010,1.33330472e-010) + float3(0,-1.132043,0.427350014);
    r5.xyzw = cmp(r2.xxxx >= float4(0,1.73230208e+009,2.61993011e+009,4.2949673e+009));
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : 0;
    r5.xyz = r5.xyz + r5.yzw;
    r5.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = frac(r5.xyz);
    r4.yzw = r5.xyz * r4.yzw;
    r2.xw = r4.yz + r4.yz;
    r2.x = r2.x + r2.w;
    r2.x = saturate(r4.w * 2 + r2.x);
    r5.z = r2.x * 6 + -3;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r2.x = 1.46291812e-009 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = r0.w * r2.y;
    r0.w = 2.32830644e-010 * r0.w;
    sincos(r0.w, r6.x, r7.x);
    sincos(r2.x, r2.x, r8.x);
    r7.y = r2.x * r6.x;
    r7.z = r8.x * r6.x;
    r2.xyw = r7.xyz * r4.xxx;
    r4.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r4.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r4.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r4.w = -r0.w;
    r6.xyz = cb9[r0.z+0].xyz;
    r6.w = 0;
    r4.xyzw = cb9[r0.z+32].wwww * r6.xyzw + r4.xyzw;
    r6.xyz = -cb9[r0.z+32].zxy * r4.yzx;
    r6.xyz = -cb9[r0.z+32].yzx * r4.zxy + -r6.xyz;
    r4.xyz = cb9[r0.z+32].www * r4.xyz + r6.xyz;
    r4.xyz = r4.www * -cb9[r0.z+32].xyz + r4.xyz;
    r6.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r6.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r6.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r7.w = -r0.w;
    r7.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r6.xyz;
    r6.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = cb9[r0.y+32].wwww * r6.xyzw + r7.xyzw;
    r7.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r7.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r7.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r7.w = -r0.w;
    r8.xyz = cb9[r0.y+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.z+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.z+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.z+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.z+32].www * r7.xyz + r8.xyz;
    r0.yzw = r7.www * -cb9[r0.z+32].xyz + r7.xyz;
    r4.xyz = -r4.xyz + r0.yzw;
    r0.yzw = -r6.yzx * r2.wxy;
    r7.xyz = r2.ywx * -r6.zxy + -r0.yzw;
    r0.y = dot(r2.xyw, -r6.xyz);
    r7.w = -r0.y;
    r8.xyz = r6.www * r2.xyw;
    r8.w = 0;
    r7.xyzw = r8.xyzw + r7.xyzw;
    r0.yzw = r7.yzx * r6.zxy;
    r0.yzw = r6.yzx * r7.zxy + -r0.yzw;
    r0.yzw = r6.www * r7.xyz + r0.yzw;
    r6.xyz = r7.www * r6.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r6.w = 100000;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r6.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xxxx, r4.xyzw
    r5.xyw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.yyyy, r5.xyzw
    r1.z = r2.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.zzzz, r1.xyzw
    r3.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.wwww, r3.xyzw
  }
  return;
}