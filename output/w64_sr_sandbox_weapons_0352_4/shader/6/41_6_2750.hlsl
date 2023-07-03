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
    r1.z = cb0[19].x + r0.w;
    r0.w = cb0[21].x + r1.z;
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
    r2.x = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r2.yz = float2(2.32830644e-010,2.32830644e-010) * r3.xy;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r2.w = 2.32830644e-010 * r3.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r4.x = 2.32830644e-010 * r3.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r4.y = 2.32830644e-010 * r3.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r4.z = 2.32830644e-010 * r3.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r4.w = 2.32830644e-010 * r3.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r5.xy = float2(2.32830644e-010,2.32830644e-010) * r3.yz;
    r6.xyz = r3.yyy * float3(5.57200987e-011,5.35510247e-010,1.36116407e-009) + float3(0,-1.60733294,-4.84615517);
    r7.xyzw = cmp(r3.yyyy >= float4(0,3.35007437e+009,3.92273536e+009,4.2949673e+009));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xyz = r7.xyz * r6.xyz;
    r3.zw = r6.xy + r6.xy;
    r3.z = r3.z + r3.w;
    r3.z = saturate(r6.z * 2 + r3.z);
    r3.z = r3.z * 17 + 3;
    r3.w = saturate(cb0[4].w);
    r6.xyz = r3.www * float3(-4.76190519,-1.59806204,-3.58139491) + float3(1,4.17945814,1);
    r6.w = cmp(r3.w >= 0.209999993);
    r6.w = r6.w ? 4.76837158e-007 : 0.500000477;
    r6.x = saturate(dot(r6.ww, r6.xx));
    r3.z = r6.x * r3.z;
    r3.w = r3.w * r3.w;
    r3.w = saturate(r6.y * r3.w + r6.z);
    r3.w = r3.w * r2.y;
    r1.w = r3.y * 1.16415322e-010 + 0.5;
    r6.xyz = r3.xxx * float3(7.50445747e-011,7.2853451e-010,1.33330472e-010) + float3(0,-1.132043,0.427350014);
    r7.xyzw = cmp(r3.xxxx >= float4(0,1.73230208e+009,2.61993011e+009,4.2949673e+009));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xyz = r7.xyz * r6.xyz;
    r3.xy = r6.xy + r6.xy;
    r3.x = r3.x + r3.y;
    r3.x = saturate(r6.z * 2 + r3.x);
    r1.x = r3.x * 6 + -3;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r6.x = r3.x * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r6.y = r3.x * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r6.z = r0.w * 4.65661287e-010 + -1;
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = rsqrt(r0.w);
    r6.xyz = r6.xyz * r0.www;
    r0.w = max(0.00100000005, r3.w);
    r3.xyw = r6.xyz * r0.www;
    r0.w = dot(r3.xyw, r3.xyw);
    r0.w = rsqrt(r0.w);
    r6.xyz = r3.xyw * r0.www;
    r6.xyz = r6.xyz * r3.zzz;
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
    r7.xyz = -r8.yzx * r3.wxy;
    r7.xyz = r3.ywx * -r8.zxy + -r7.xyz;
    r3.z = dot(r3.xyw, -r8.xyz);
    r7.w = -r3.z;
    r3.xyz = r8.www * r3.xyw;
    r3.w = 0;
    r3.xyzw = r7.xyzw + r3.xyzw;
    r7.xyz = r8.zxy * r3.yzx;
    r7.xyz = r8.yzx * r3.zxy + -r7.xyz;
    r3.xyz = r8.www * r3.xyz + r7.xyz;
    r3.xyz = r3.www * r8.xyz + r3.xyz;
    r3.xyz = r3.xyz + r0.yzw;
    r0.yzw = -r8.yzx * r6.zxy;
    r7.xyz = r6.yzx * -r8.zxy + -r0.yzw;
    r0.y = dot(r6.xyz, -r8.xyz);
    r7.w = -r0.y;
    r6.xyz = r8.www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r0.yzw = r8.zxy * r6.yzx;
    r0.yzw = r8.yzx * r6.zxy + -r0.yzw;
    r0.yzw = r8.www * r6.xyz + r0.yzw;
    r6.xyz = r6.www * r8.xyz + r0.yzw;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r6.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xxxx, r3.xyzw
    r1.y = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.zzzz, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.wwww, r4.xyzw
    r0.y = (int)r0.x + 5;
    r5.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
  }
  return;
}