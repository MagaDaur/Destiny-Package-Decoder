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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
    r1.w = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.w;
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
    r2.y = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.z = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.w = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r3.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.x = (uint)r0.z;
    r3.y = 2.32830644e-010 * r4.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.z = (uint)r0.z;
    r5.x = 2.32830644e-010 * r4.z;
    r0.w = r0.w * 2.32830644e-010 + r3.y;
    r4.z = 0.5 * r0.w;
    r6.xy = r0.ww * float2(0.411428511,-13.3842888) + float2(-0.196070999,65.2928772);
    r6.zw = r0.ww * float2(0.125,-25.1400146) + float2(0,12.7557182);
    r4.z = r4.z * r4.z;
    r4.zw = r6.xy * r4.zz + r6.zw;
    r6.xyz = cmp(r0.www >= float3(0,1.33333397,2));
    r6.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyw + r6.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r4.zw = r6.xy * r4.zw;
    r4.zw = float2(2,2) * r4.zw;
    r0.w = r4.z + r4.w;
    r0.w = r6.z * 2 + r0.w;
    r0.w = saturate(r6.w * 1 + r0.w);
    r0.w = r0.w * 14 + 6;
    r3.z = 2.32830644e-010 * r4.x;
    r4.xz = r4.xx * float2(4.65661287e-010,-9.76386957e-011) + float2(-3,1.41935503);
    r4.w = r3.z * r3.z;
    r4.z = r4.z * r4.w;
    r4.x = r4.x * r4.w + 1;
    r4.x = max(0, r4.x);
    r4.x = r4.x * 0.199999988 + 0.800000012;
    r0.w = r4.x * r0.w;
    r4.x = min(1, r4.z);
    r4.xzw = float3(0.261794984,2.32830644e-010,4.79356381e-011) * r4.xyy;
    r4.y = r4.y * -5.32949344e-011 + 1.023018;
    r6.x = r4.z * r4.z;
    r4.y = r4.y * r6.x + r4.w;
    r4.y = min(1, r4.y);
    r2.x = r4.y * 3.5 + 0.5;
    r4.y = cb10[0].x + 0.25;
    r4.y = (int)r4.y;
    r6.xy = cb0[4].xy + r3.xy;
    r6.xy = r6.xy * float2(18.9452477,6.99969196) + float2(3.25,0.133332998);
    r6.xy = floor(r6.xy);
    r4.w = dot(r6.xxxx, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r4.w = frac(r4.w);
    r4.w = r4.w * r4.w;
    r4.w = 251 * r4.w;
    r4.w = frac(r4.w);
    r4.w = r4.w * 0.5 + -0.25;
    r4.w = 3.1415925 * r4.w;
    sincos(r4.w, r6.x, r7.x);
    r8.xyz = float3(0,1,0) * r6.xxx;
    r4.w = dot(r6.yyyy, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r4.w = frac(r4.w);
    r4.w = r4.w * r4.w;
    r4.w = 251 * r4.w;
    r4.w = frac(r4.w);
    r4.w = r4.w * 0.5 + -0.5;
    r4.w = 3.1415925 * r4.w;
    sincos(r4.w, r6.x, r9.x);
    r6.xyz = float3(1,0,0) * r6.xxx;
    r7.yzw = -cb9[r4.y+32].zxy * cb9[r4.y+32].yzx;
    r7.yzw = -cb9[r4.y+32].yzx * cb9[r4.y+32].zxy + -r7.yzw;
    r4.w = dot(-cb9[r4.y+32].xyz, cb9[r4.y+32].xyz);
    r10.w = -r4.w;
    r10.xyz = cb9[r4.y+32].www * cb9[r4.y+32].xyz + r7.yzw;
    r11.xyzw = cb9[r4.y+32].xyzw * float4(-1,-1,-1,1);
    r10.xyzw = cb9[r4.y+32].wwww * r11.xyzw + r10.xyzw;
    r12.xyzw = r10.zxyy * r8.yzzy;
    r7.yzw = -r8.zzy * r10.yzx + r12.xyz;
    r12.w = -r12.w;
    r12.xyz = r7.xxx * r10.xyz + r7.yzw;
    r8.w = r7.x;
    r7.xyzw = r10.wwww * r8.xyzw + r12.xyzw;
    r8.xyz = cb9[r4.y+32].zxy * r7.yzx;
    r8.xyz = cb9[r4.y+32].yzx * r7.zxy + -r8.xyz;
    r4.w = dot(cb9[r4.y+32].xyz, r7.xyz);
    r10.w = -r4.w;
    r10.xyz = cb9[r4.y+32].www * r7.xyz + r8.xyz;
    r7.xyzw = r7.wwww * cb9[r4.y+32].xyzw + r10.xyzw;
    r8.xyz = -cb9[r4.y+32].zxy * r7.yzx;
    r8.xyz = -cb9[r4.y+32].yzx * r7.zxy + -r8.xyz;
    r4.w = dot(-cb9[r4.y+32].xyz, r7.xyz);
    r10.w = -r4.w;
    r10.xyz = cb9[r4.y+32].www * r7.xyz + r8.xyz;
    r7.xyzw = r7.wwww * r11.xyzw + r10.xyzw;
    r8.xyzw = r7.zxyx * r6.zzxx;
    r8.xyz = -r6.zxz * r7.yzx + r8.xyz;
    r10.w = -r8.w;
    r10.xyz = r9.xxx * r7.xyz + r8.xyz;
    r6.w = r9.x;
    r6.xyzw = r7.wwww * r6.xyzw + r10.xyzw;
    r7.xyz = cb9[r4.y+32].zxy * r6.yzx;
    r7.xyz = cb9[r4.y+32].yzx * r6.zxy + -r7.xyz;
    r4.w = dot(cb9[r4.y+32].xyz, r6.xyz);
    r8.w = -r4.w;
    r8.xyz = cb9[r4.y+32].www * r6.xyz + r7.xyz;
    r6.xyzw = r6.wwww * cb9[r4.y+32].xyzw + r8.xyzw;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.w = (uint)r0.z;
    r4.w = 1.46291812e-009 * r4.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = r0.z * r4.x;
    r0.z = 2.32830644e-010 * r0.z;
    sincos(r0.z, r4.x, r7.x);
    sincos(r4.w, r8.x, r9.x);
    r7.y = r8.x * r4.x;
    r7.z = r9.x * r4.x;
    r7.xyz = r7.xyz * r0.www;
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
    r9.xyz = -cb9[r0.y+32].zxy * r6.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r6.zxy + -r9.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r6.xyz);
    r10.w = -r0.z;
    r10.xyz = cb9[r0.y+32].www * r6.xyz + r9.xyz;
    r9.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = r6.wwww * r9.xyzw + r10.xyzw;
    r9.xyz = cb9[r0.y+32].yzx * cb9[r4.y+0].zxy;
    r9.xyz = cb9[r4.y+0].yzx * cb9[r0.y+32].zxy + -r9.xyz;
    r0.z = dot(cb9[r4.y+0].xyz, cb9[r0.y+32].xyz);
    r9.w = -r0.z;
    r10.xyz = cb9[r4.y+0].xyz;
    r10.w = 0;
    r9.xyzw = cb9[r0.y+32].wwww * r10.xyzw + r9.xyzw;
    r4.xyw = -cb9[r0.y+32].zxy * r9.yzx;
    r4.xyw = -cb9[r0.y+32].yzx * r9.zxy + -r4.xyw;
    r4.xyw = cb9[r0.y+32].www * r9.xyz + r4.xyw;
    r0.yzw = r9.www * -cb9[r0.y+32].xyz + r4.xyw;
    r8.xyz = -r8.xyz + r0.yzw;
    r0.yzw = r7.zxy * -r6.yzx;
    r9.xyz = r7.yzx * -r6.zxy + -r0.yzw;
    r0.y = dot(r7.xyz, -r6.xyz);
    r9.w = -r0.y;
    r7.xyz = r6.www * r7.xyz;
    r7.w = 0;
    r7.xyzw = r9.xyzw + r7.xyzw;
    r0.yzw = r7.yzx * r6.zxy;
    r0.yzw = r6.yzx * r7.zxy + -r0.yzw;
    r0.yzw = r6.www * r7.xyz + r0.yzw;
    r6.xyz = r7.www * r6.xyz + r0.yzw;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r6.w = 100000;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r6.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r8.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xxxx, r8.xyzw
    r1.xyz = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.zzzz, r2.xyzw
    r3.w = r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.wwww, r3.xyzw
    r0.y = (int)r0.x + 5;
    r5.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
  }
  return;
}