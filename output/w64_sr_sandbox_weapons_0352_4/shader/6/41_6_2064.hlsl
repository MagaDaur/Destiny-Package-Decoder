// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
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
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.z;
    r2.x = 2.32830644e-010 * r2.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.z;
    r2.yzw = float3(2.32830644e-010,2.32830644e-010,2.32830644e-010) * r3.xyz;
    r1.w = 2.32830644e-010 * r0.w;
    r3.zw = r0.ww * float2(-3.49245965e-009,4.65661277e-012) + float2(95,-0.00999999978);
    r1.z = r3.y * 6.98491931e-010 + 2;
    r3.y = cb10[0].x + 0.25;
    r3.y = (int)r3.y;
    r3.zw = float2(0.0174529999,3.1415925) * r3.zw;
    sincos(r3.w, r4.x, r5.x);
    r4.xyz = float3(0,1,0) * r4.xxx;
    r5.yzw = -cb9[r3.y+32].zxy * cb9[r3.y+32].yzx;
    r5.yzw = -cb9[r3.y+32].yzx * cb9[r3.y+32].zxy + -r5.yzw;
    r3.w = dot(-cb9[r3.y+32].xyz, cb9[r3.y+32].xyz);
    r6.w = -r3.w;
    r6.xyz = cb9[r3.y+32].www * cb9[r3.y+32].xyz + r5.yzw;
    r7.xyzw = cb9[r3.y+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = cb9[r3.y+32].wwww * r7.xyzw + r6.xyzw;
    r7.xyzw = r6.zxyy * r4.yzzy;
    r5.yzw = -r4.zzy * r6.yzx + r7.xyz;
    r7.w = -r7.w;
    r7.xyz = r5.xxx * r6.xyz + r5.yzw;
    r4.w = r5.x;
    r4.xyzw = r6.wwww * r4.xyzw + r7.xyzw;
    r5.xyz = cb9[r3.y+32].zxy * r4.yzx;
    r5.xyz = cb9[r3.y+32].yzx * r4.zxy + -r5.xyz;
    r3.w = dot(cb9[r3.y+32].xyz, r4.xyz);
    r6.w = -r3.w;
    r6.xyz = cb9[r3.y+32].www * r4.xyz + r5.xyz;
    r4.xyzw = r4.wwww * cb9[r3.y+32].xyzw + r6.xyzw;
    r5.xyz = r3.xxx * float3(2.32830644e-009,0,0) + float3(-5,0,0);
    r3.x = saturate(cb0[2].w);
    r3.w = 0.212766007 * r3.x;
    r5.w = r3.x * 1.01276505 + -0.225530997;
    r3.x = r3.x * r3.x;
    r3.x = saturate(r5.w * r3.x + r3.w);
    r5.xyz = r5.xyz * r3.xxx;
    r6.xyzw = -cb9[r3.y+32].zxyx * r5.zzxx;
    r7.xyz = -r5.zxz * -cb9[r3.y+32].yzx + r6.xyz;
    r7.w = -r6.w;
    r5.xyz = cb9[r3.y+32].www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r7.xyzw + r5.xyzw;
    r6.xyz = cb9[r3.y+32].zxy * r5.yzx;
    r6.xyz = cb9[r3.y+32].yzx * r5.zxy + -r6.xyz;
    r5.xyz = cb9[r3.y+32].www * r5.xyz + r6.xyz;
    r5.xyz = r5.www * cb9[r3.y+32].xyz + r5.xyz;
    r3.xyw = cb9[r3.y+0].xyz + r5.xyz;
    r5.xyz = r0.www * float3(7.50445747e-011,7.2853451e-010,1.33330472e-010) + float3(0,-1.132043,0.427350014);
    r6.xyzw = cmp(r0.wwww >= float4(0,1.73230208e+009,2.61993011e+009,4.2949673e+009));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r6.xyz = r6.xyz + r6.yzw;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r5.xyz = r6.xyz * r5.xyz;
    r5.xy = r5.xy + r5.xy;
    r0.w = r5.x + r5.y;
    r0.w = saturate(r5.z * 2 + r0.w);
    r5.w = r0.w * 6 + -3;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = 1.46291812e-009 * r0.z;
    sincos(r0.z, r6.x, r7.x);
    r6.y = cb0[3].z * r6.x;
    r6.z = cb0[3].z * r7.x;
    sincos(r3.z, r7.x, r8.x);
    r0.z = dot(r6.yz, r6.yz);
    r0.z = sqrt(r0.z);
    r0.z = max(9.99999975e-005, r0.z);
    r0.zw = r6.yz / r0.zz;
    r8.yz = r0.zw * r7.xx;
    r7.xyz = float3(11,11,11) * r8.xyz;
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
    r9.xyz = -cb9[r0.y+32].zxy * r4.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r4.zxy + -r9.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r4.xyz);
    r10.w = -r0.z;
    r10.xyz = cb9[r0.y+32].www * r4.xyz + r9.xyz;
    r9.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r4.xyzw = r4.wwww * r9.xyzw + r10.xyzw;
    r9.xyz = cb9[r0.y+32].yzx * r3.wxy;
    r9.xyz = r3.ywx * cb9[r0.y+32].zxy + -r9.xyz;
    r0.z = dot(r3.xyw, cb9[r0.y+32].xyz);
    r9.w = -r0.z;
    r3.xyz = cb9[r0.y+32].www * r3.xyw;
    r3.w = 0;
    r3.xyzw = r9.xyzw + r3.xyzw;
    r9.xyz = -cb9[r0.y+32].zxy * r3.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r3.zxy + -r9.xyz;
    r3.xyz = cb9[r0.y+32].www * r3.xyz + r9.xyz;
    r3.xyz = r3.www * -cb9[r0.y+32].xyz + r3.xyz;
    r3.xyz = -r8.xyz + r3.xyz;
    r6.xw = float2(0,0);
    r8.xyz = r6.zwy * -r4.yzx;
    r8.xyz = r6.yzw * -r4.zxy + -r8.xyz;
    r0.z = dot(r6.yz, -r4.yz);
    r8.w = -r0.z;
    r6.xyzw = r4.wwww * r6.xyzw + r8.xyzw;
    r8.xyz = r6.yzx * r4.zxy;
    r8.xyz = r4.yzx * r6.zxy + -r8.xyz;
    r6.xyz = r4.www * r6.xyz + r8.xyz;
    r6.xyz = r6.www * r4.xyz + r6.xyz;
    r3.xyz = r6.xyz + r3.xyz;
    r6.xyz = r7.zxy * -r4.yzx;
    r6.xyz = r7.yzx * -r4.zxy + -r6.xyz;
    r0.z = dot(r7.xyz, -r4.xyz);
    r6.w = -r0.z;
    r7.xyz = r4.www * r7.xyz;
    r7.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r7.xyz = r6.yzx * r4.zxy;
    r7.xyz = r4.yzx * r6.zxy + -r7.xyz;
    r6.xyz = r4.www * r6.xyz + r7.xyz;
    r4.xyz = r6.www * r4.xyz + r6.xyz;
    r6.xyz = -cb9[r0.y+32].yzx * r3.zxy;
    r6.xyz = r3.yzx * -cb9[r0.y+32].zxy + -r6.xyz;
    r0.z = dot(r3.xyz, -cb9[r0.y+32].xyz);
    r6.w = -r0.z;
    r7.xyz = cb9[r0.y+32].www * r3.xyz;
    r7.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r7.xyz = cb9[r0.y+32].zxy * r6.yzx;
    r7.xyz = cb9[r0.y+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.y+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * cb9[r0.y+32].xyz + r6.xyz;
    r0.yzw = cb9[r0.y+0].xyz + r6.xyz;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r5.y = sqrt(r0.y);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r4.w = 100000;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r4.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xxxx, r3.xyzw
    r5.xz = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.yyyy, r5.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.zzzz, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.wwww, r2.xyzw
  }
  return;
}